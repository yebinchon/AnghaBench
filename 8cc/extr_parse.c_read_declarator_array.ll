; ModuleID = '/home/carl/AnghaBench/8cc/extr_parse.c_read_declarator_array.c'
source_filename = "/home/carl/AnghaBench/8cc/extr_parse.c_read_declarator_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64 }

@KIND_FUNC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"array of functions\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_8__* (%struct.TYPE_8__*)* @read_declarator_array to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_8__* @read_declarator_array(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %6 = call i64 @next_token(i8 signext 93)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 -1, i32* %3, align 4
  br label %12

9:                                                ; preds = %1
  %10 = call i32 (...) @read_intexpr()
  store i32 %10, i32* %3, align 4
  %11 = call i32 @expect(i8 signext 93)
  br label %12

12:                                               ; preds = %9, %8
  %13 = call i32* (...) @peek()
  store i32* %13, i32** %4, align 8
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %15 = call %struct.TYPE_8__* @read_declarator_tail(%struct.TYPE_8__* %14, i32* null)
  store %struct.TYPE_8__* %15, %struct.TYPE_8__** %5, align 8
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @KIND_FUNC, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %12
  %22 = load i32*, i32** %4, align 8
  %23 = call i32 @errort(i32* %22, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %24

24:                                               ; preds = %21, %12
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %26 = load i32, i32* %3, align 4
  %27 = call %struct.TYPE_8__* @make_array_type(%struct.TYPE_8__* %25, i32 %26)
  ret %struct.TYPE_8__* %27
}

declare dso_local i64 @next_token(i8 signext) #1

declare dso_local i32 @read_intexpr(...) #1

declare dso_local i32 @expect(i8 signext) #1

declare dso_local i32* @peek(...) #1

declare dso_local %struct.TYPE_8__* @read_declarator_tail(%struct.TYPE_8__*, i32*) #1

declare dso_local i32 @errort(i32*, i8*) #1

declare dso_local %struct.TYPE_8__* @make_array_type(%struct.TYPE_8__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
