; ModuleID = '/home/carl/AnghaBench/esp-idf/components/unity/extr_unity_runner.c_print_test_menu.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/unity/extr_unity_runner.c_print_test_menu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i8*, i32, i8**, %struct.TYPE_3__* }

@.str = private unnamed_addr constant [39 x i8] c"Here's the test menu, pick your combo:\00", align 1
@s_unity_tests_first = common dso_local global %struct.TYPE_3__* null, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"\22 \00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"Enter test for running.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @print_test_menu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @print_test_menu() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %4 = call i32 (...) @UNITY_PRINT_EOL()
  %5 = call i32 (...) @UNITY_PRINT_EOL()
  %6 = call i32 @UnityPrint(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %7 = call i32 (...) @UNITY_PRINT_EOL()
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** @s_unity_tests_first, align 8
  store %struct.TYPE_3__* %8, %struct.TYPE_3__** %2, align 8
  br label %9

9:                                                ; preds = %65, %0
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %11 = icmp ne %struct.TYPE_3__* %10, null
  br i1 %11, label %12, label %71

12:                                               ; preds = %9
  %13 = call i32 @UnityPrint(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %14 = load i32, i32* %1, align 4
  %15 = add nsw i32 %14, 1
  %16 = call i32 @UnityPrintNumber(i32 %15)
  %17 = call i32 @UnityPrint(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %18 = call i32 (...) @UNITY_PRINT_TAB()
  %19 = call i32 @UnityPrint(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = call i32 @UnityPrint(i8* %22)
  %24 = call i32 @UnityPrint(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = load i8*, i8** %26, align 8
  %28 = call i32 @UnityPrint(i8* %27)
  %29 = call i32 (...) @UNITY_PRINT_EOL()
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = icmp sgt i32 %32, 1
  br i1 %33, label %34, label %64

34:                                               ; preds = %12
  store i32 0, i32* %3, align 4
  br label %35

35:                                               ; preds = %60, %34
  %36 = load i32, i32* %3, align 4
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = icmp slt i32 %36, %39
  br i1 %40, label %41, label %63

41:                                               ; preds = %35
  %42 = call i32 (...) @UNITY_PRINT_TAB()
  %43 = call i32 @UnityPrint(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %44 = load i32, i32* %3, align 4
  %45 = add nsw i32 %44, 1
  %46 = call i32 @UnityPrintNumber(i32 %45)
  %47 = call i32 @UnityPrint(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %48 = call i32 (...) @UNITY_PRINT_TAB()
  %49 = call i32 @UnityPrint(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 3
  %52 = load i8**, i8*** %51, align 8
  %53 = load i32, i32* %3, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8*, i8** %52, i64 %54
  %56 = load i8*, i8** %55, align 8
  %57 = call i32 @UnityPrint(i8* %56)
  %58 = call i32 @UnityPrint(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %59 = call i32 (...) @UNITY_PRINT_EOL()
  br label %60

60:                                               ; preds = %41
  %61 = load i32, i32* %3, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %3, align 4
  br label %35

63:                                               ; preds = %35
  br label %64

64:                                               ; preds = %63, %12
  br label %65

65:                                               ; preds = %64
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 4
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %67, align 8
  store %struct.TYPE_3__* %68, %struct.TYPE_3__** %2, align 8
  %69 = load i32, i32* %1, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %1, align 4
  br label %9

71:                                               ; preds = %9
  %72 = call i32 (...) @UNITY_PRINT_EOL()
  %73 = call i32 @UnityPrint(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  %74 = call i32 (...) @UNITY_PRINT_EOL()
  %75 = call i32 (...) @UNITY_OUTPUT_FLUSH()
  %76 = load i32, i32* %1, align 4
  ret i32 %76
}

declare dso_local i32 @UNITY_PRINT_EOL(...) #1

declare dso_local i32 @UnityPrint(i8*) #1

declare dso_local i32 @UnityPrintNumber(i32) #1

declare dso_local i32 @UNITY_PRINT_TAB(...) #1

declare dso_local i32 @UNITY_OUTPUT_FLUSH(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
