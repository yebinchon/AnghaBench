; ModuleID = '/home/carl/AnghaBench/8cc/extr_parse.c_read_decl_or_stmt.c'
source_filename = "/home/carl/AnghaBench/8cc/extr_parse.c_read_decl_or_stmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }

@TEOF = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"premature end of input\00", align 1
@KSTATIC_ASSERT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @read_decl_or_stmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_decl_or_stmt(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %5 = call %struct.TYPE_4__* (...) @peek()
  store %struct.TYPE_4__* %5, %struct.TYPE_4__** %3, align 8
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @TEOF, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = call i32 @error(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %13

13:                                               ; preds = %11, %1
  %14 = call i32 (...) @mark_location()
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %16 = call i64 @is_type(%struct.TYPE_4__* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %13
  %19 = load i32*, i32** %2, align 8
  %20 = call i32 @read_decl(i32* %19, i32 0)
  br label %37

21:                                               ; preds = %13
  %22 = load i32, i32* @KSTATIC_ASSERT, align 4
  %23 = call i64 @next_token(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = call i32 (...) @read_static_assert()
  br label %36

27:                                               ; preds = %21
  %28 = call i32* (...) @read_stmt()
  store i32* %28, i32** %4, align 8
  %29 = load i32*, i32** %4, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %35

31:                                               ; preds = %27
  %32 = load i32*, i32** %2, align 8
  %33 = load i32*, i32** %4, align 8
  %34 = call i32 @vec_push(i32* %32, i32* %33)
  br label %35

35:                                               ; preds = %31, %27
  br label %36

36:                                               ; preds = %35, %25
  br label %37

37:                                               ; preds = %36, %18
  ret void
}

declare dso_local %struct.TYPE_4__* @peek(...) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i32 @mark_location(...) #1

declare dso_local i64 @is_type(%struct.TYPE_4__*) #1

declare dso_local i32 @read_decl(i32*, i32) #1

declare dso_local i64 @next_token(i32) #1

declare dso_local i32 @read_static_assert(...) #1

declare dso_local i32* @read_stmt(...) #1

declare dso_local i32 @vec_push(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
