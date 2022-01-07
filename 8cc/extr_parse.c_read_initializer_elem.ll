; ModuleID = '/home/carl/AnghaBench/8cc/extr_parse.c_read_initializer_elem.c'
source_filename = "/home/carl/AnghaBench/8cc/extr_parse.c_read_initializer_elem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64 }
%struct.TYPE_10__ = type { i32 }

@KIND_ARRAY = common dso_local global i64 0, align 8
@KIND_STRUCT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_9__*, i32, i32)* @read_initializer_elem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_initializer_elem(i32* %0, %struct.TYPE_9__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_10__*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = call i64 @next_token(i8 signext 61)
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @KIND_ARRAY, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %22, label %16

16:                                               ; preds = %4
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @KIND_STRUCT, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %28

22:                                               ; preds = %16, %4
  %23 = load i32*, i32** %5, align 8
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @read_initializer_list(i32* %23, %struct.TYPE_9__* %24, i32 %25, i32 %26)
  br label %51

28:                                               ; preds = %16
  %29 = call i64 @next_token(i8 signext 123)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %28
  %32 = load i32*, i32** %5, align 8
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %34 = load i32, i32* %7, align 4
  call void @read_initializer_elem(i32* %32, %struct.TYPE_9__* %33, i32 %34, i32 1)
  %35 = call i32 @expect(i8 signext 125)
  br label %50

36:                                               ; preds = %28
  %37 = call i32 (...) @read_assignment_expr()
  %38 = call %struct.TYPE_10__* @conv(i32 %37)
  store %struct.TYPE_10__* %38, %struct.TYPE_10__** %9, align 8
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @ensure_assignable(%struct.TYPE_9__* %39, i32 %42)
  %44 = load i32*, i32** %5, align 8
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @ast_init(%struct.TYPE_10__* %45, %struct.TYPE_9__* %46, i32 %47)
  %49 = call i32 @vec_push(i32* %44, i32 %48)
  br label %50

50:                                               ; preds = %36, %31
  br label %51

51:                                               ; preds = %50, %22
  ret void
}

declare dso_local i64 @next_token(i8 signext) #1

declare dso_local i32 @read_initializer_list(i32*, %struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @expect(i8 signext) #1

declare dso_local %struct.TYPE_10__* @conv(i32) #1

declare dso_local i32 @read_assignment_expr(...) #1

declare dso_local i32 @ensure_assignable(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @vec_push(i32*, i32) #1

declare dso_local i32 @ast_init(%struct.TYPE_10__*, %struct.TYPE_9__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
