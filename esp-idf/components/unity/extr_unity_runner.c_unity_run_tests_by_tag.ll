; ModuleID = '/home/carl/AnghaBench/esp-idf/components/unity/extr_unity_runner.c_unity_run_tests_by_tag.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/unity/extr_unity_runner.c_unity_run_tests_by_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_4__* }

@.str = private unnamed_addr constant [15 x i8] c"Running tests \00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"NOT \00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"matching '\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"'...\00", align 1
@s_unity_tests_first = common dso_local global %struct.TYPE_4__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @unity_run_tests_by_tag(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = call i32 @UnityPrint(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = call i32 @UnityPrint(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  br label %11

11:                                               ; preds = %9, %2
  %12 = call i32 @UnityPrint(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %13 = load i8*, i8** %3, align 8
  %14 = call i32 @UnityPrint(i8* %13)
  %15 = call i32 @UnityPrint(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %16 = call i32 (...) @UNITY_PRINT_EOL()
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** @s_unity_tests_first, align 8
  store %struct.TYPE_4__* %17, %struct.TYPE_4__** %5, align 8
  br label %18

18:                                               ; preds = %38, %11
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %20 = icmp ne %struct.TYPE_4__* %19, null
  br i1 %20, label %21, label %42

21:                                               ; preds = %18
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i8*, i8** %3, align 8
  %26 = call i32* @strstr(i32 %24, i8* %25)
  %27 = icmp ne i32* %26, null
  %28 = zext i1 %27 to i32
  %29 = load i32, i32* %4, align 4
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = icmp eq i32 %28, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %21
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %36 = call i32 @unity_run_single_test(%struct.TYPE_4__* %35)
  br label %37

37:                                               ; preds = %34, %21
  br label %38

38:                                               ; preds = %37
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  store %struct.TYPE_4__* %41, %struct.TYPE_4__** %5, align 8
  br label %18

42:                                               ; preds = %18
  ret void
}

declare dso_local i32 @UnityPrint(i8*) #1

declare dso_local i32 @UNITY_PRINT_EOL(...) #1

declare dso_local i32* @strstr(i32, i8*) #1

declare dso_local i32 @unity_run_single_test(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
