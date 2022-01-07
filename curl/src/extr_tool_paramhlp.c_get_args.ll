; ModuleID = '/home/carl/AnghaBench/curl/src/extr_tool_paramhlp.c_get_args.c'
source_filename = "/home/carl/AnghaBench/curl/src/extr_tool_paramhlp.c_get_args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.OperationConfig = type { %struct.TYPE_2__*, i64, i32, i32, i32, i64 }
%struct.TYPE_2__ = type { i32 }

@CURLE_OK = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"host\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"proxy\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"out of memory\0A\00", align 1
@CURLE_OUT_OF_MEMORY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @get_args(%struct.OperationConfig* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.OperationConfig*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.OperationConfig* %0, %struct.OperationConfig** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load i64, i64* @CURLE_OK, align 8
  store i64 %8, i64* %6, align 8
  %9 = load %struct.OperationConfig*, %struct.OperationConfig** %4, align 8
  %10 = getelementptr inbounds %struct.OperationConfig, %struct.OperationConfig* %9, i32 0, i32 5
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @FALSE, align 4
  br label %17

15:                                               ; preds = %2
  %16 = load i32, i32* @TRUE, align 4
  br label %17

17:                                               ; preds = %15, %13
  %18 = phi i32 [ %14, %13 ], [ %16, %15 ]
  store i32 %18, i32* %7, align 4
  %19 = load %struct.OperationConfig*, %struct.OperationConfig** %4, align 8
  %20 = getelementptr inbounds %struct.OperationConfig, %struct.OperationConfig* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %39

23:                                               ; preds = %17
  %24 = load %struct.OperationConfig*, %struct.OperationConfig** %4, align 8
  %25 = getelementptr inbounds %struct.OperationConfig, %struct.OperationConfig* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %39, label %28

28:                                               ; preds = %23
  %29 = load i64, i64* %5, align 8
  %30 = load i32, i32* %7, align 4
  %31 = load %struct.OperationConfig*, %struct.OperationConfig** %4, align 8
  %32 = getelementptr inbounds %struct.OperationConfig, %struct.OperationConfig* %31, i32 0, i32 3
  %33 = call i64 @checkpasswd(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i64 %29, i32 %30, i32* %32)
  store i64 %33, i64* %6, align 8
  %34 = load i64, i64* %6, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %28
  %37 = load i64, i64* %6, align 8
  store i64 %37, i64* %3, align 8
  br label %79

38:                                               ; preds = %28
  br label %39

39:                                               ; preds = %38, %23, %17
  %40 = load %struct.OperationConfig*, %struct.OperationConfig** %4, align 8
  %41 = getelementptr inbounds %struct.OperationConfig, %struct.OperationConfig* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %55

44:                                               ; preds = %39
  %45 = load i64, i64* %5, align 8
  %46 = load i32, i32* %7, align 4
  %47 = load %struct.OperationConfig*, %struct.OperationConfig** %4, align 8
  %48 = getelementptr inbounds %struct.OperationConfig, %struct.OperationConfig* %47, i32 0, i32 2
  %49 = call i64 @checkpasswd(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i64 %45, i32 %46, i32* %48)
  store i64 %49, i64* %6, align 8
  %50 = load i64, i64* %6, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %44
  %53 = load i64, i64* %6, align 8
  store i64 %53, i64* %3, align 8
  br label %79

54:                                               ; preds = %44
  br label %55

55:                                               ; preds = %54, %39
  %56 = load %struct.OperationConfig*, %struct.OperationConfig** %4, align 8
  %57 = getelementptr inbounds %struct.OperationConfig, %struct.OperationConfig* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %77, label %60

60:                                               ; preds = %55
  %61 = call i64 (...) @my_useragent()
  %62 = load %struct.OperationConfig*, %struct.OperationConfig** %4, align 8
  %63 = getelementptr inbounds %struct.OperationConfig, %struct.OperationConfig* %62, i32 0, i32 1
  store i64 %61, i64* %63, align 8
  %64 = load %struct.OperationConfig*, %struct.OperationConfig** %4, align 8
  %65 = getelementptr inbounds %struct.OperationConfig, %struct.OperationConfig* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %76, label %68

68:                                               ; preds = %60
  %69 = load %struct.OperationConfig*, %struct.OperationConfig** %4, align 8
  %70 = getelementptr inbounds %struct.OperationConfig, %struct.OperationConfig* %69, i32 0, i32 0
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @helpf(i32 %73, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %75 = load i64, i64* @CURLE_OUT_OF_MEMORY, align 8
  store i64 %75, i64* %6, align 8
  br label %76

76:                                               ; preds = %68, %60
  br label %77

77:                                               ; preds = %76, %55
  %78 = load i64, i64* %6, align 8
  store i64 %78, i64* %3, align 8
  br label %79

79:                                               ; preds = %77, %52, %36
  %80 = load i64, i64* %3, align 8
  ret i64 %80
}

declare dso_local i64 @checkpasswd(i8*, i64, i32, i32*) #1

declare dso_local i64 @my_useragent(...) #1

declare dso_local i32 @helpf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
