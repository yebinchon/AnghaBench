; ModuleID = '/home/carl/AnghaBench/esp-idf/components/unity/extr_unity_runner.c_unity_run_single_test.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/unity/extr_unity_runner.c_unity_run_single_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i8*, i32, i32, i32*, i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"Running \00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"...\00", align 1
@Unity = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"[leaks\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"[multi_device]\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"Enter next test, or 'enter' to see menu\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*)* @unity_run_single_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unity_run_single_test(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %6 = call i32 @UnityPrint(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = load i8*, i8** %8, align 8
  %10 = call i32 @UnityPrint(i8* %9)
  %11 = call i32 @UnityPrint(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %12 = call i32 (...) @UNITY_PRINT_EOL()
  %13 = call i32 (...) @UNITY_OUTPUT_FLUSH()
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 5
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @Unity, i32 0, i32 1), align 4
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @Unity, i32 0, i32 0), align 4
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @Unity, i32 0, i32 0), align 4
  %21 = call i32* @strstr(i32 %20, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %22 = icmp ne i32* %21, null
  %23 = zext i1 %22 to i32
  store i32 %23, i32* %3, align 4
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @Unity, i32 0, i32 0), align 4
  %25 = call i32* @strstr(i32 %24, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  %26 = icmp ne i32* %25, null
  %27 = zext i1 %26 to i32
  store i32 %27, i32* %4, align 4
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = icmp eq i32 %30, 1
  br i1 %31, label %32, label %45

32:                                               ; preds = %1
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 3
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @unity_default_test_run(i32 %37, i8* %40, i32 %43)
  br label %64

45:                                               ; preds = %1
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %47 = call i32 @multiple_function_option(%struct.TYPE_5__* %46)
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* %3, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %63

50:                                               ; preds = %45
  %51 = load i32, i32* %4, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %63

53:                                               ; preds = %50
  %54 = load i32, i32* %5, align 4
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = sub nsw i32 %57, 1
  %59 = icmp ne i32 %54, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %53
  %61 = call i32 (...) @esp_restart()
  br label %62

62:                                               ; preds = %60, %53
  br label %63

63:                                               ; preds = %62, %50, %45
  br label %64

64:                                               ; preds = %63, %32
  %65 = load i32, i32* %3, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %64
  %68 = call i32 (...) @UNITY_END()
  %69 = call i32 @UnityPrint(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0))
  %70 = call i32 (...) @UNITY_PRINT_EOL()
  %71 = call i32 (...) @UNITY_OUTPUT_FLUSH()
  %72 = call i32 (...) @esp_restart()
  br label %73

73:                                               ; preds = %67, %64
  ret void
}

declare dso_local i32 @UnityPrint(i8*) #1

declare dso_local i32 @UNITY_PRINT_EOL(...) #1

declare dso_local i32 @UNITY_OUTPUT_FLUSH(...) #1

declare dso_local i32* @strstr(i32, i8*) #1

declare dso_local i32 @unity_default_test_run(i32, i8*, i32) #1

declare dso_local i32 @multiple_function_option(%struct.TYPE_5__*) #1

declare dso_local i32 @esp_restart(...) #1

declare dso_local i32 @UNITY_END(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
