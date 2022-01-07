; ModuleID = '/home/carl/AnghaBench/TDengine/src/client/src/extr_tscFunctionImpl.c_apercentile_function.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/client/src/extr_tscFunctionImpl.c_apercentile_function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, i64, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_13__ = type { i32 }

@DATA_SET_FLAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*)* @apercentile_function to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @apercentile_function(%struct.TYPE_12__* %0) #0 {
  %2 = alloca %struct.TYPE_12__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca double, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %2, align 8
  store i64 0, i64* %3, align 8
  %9 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %10 = call %struct.TYPE_11__* @GET_RES_INFO(%struct.TYPE_12__* %9)
  store %struct.TYPE_11__* %10, %struct.TYPE_11__** %4, align 8
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %12 = call %struct.TYPE_13__* @getAPerctInfo(%struct.TYPE_12__* %11)
  store %struct.TYPE_13__* %12, %struct.TYPE_13__** %5, align 8
  store i64 0, i64* %6, align 8
  br label %13

13:                                               ; preds = %64, %1
  %14 = load i64, i64* %6, align 8
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp slt i64 %14, %17
  br i1 %18, label %19, label %67

19:                                               ; preds = %13
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %21 = load i64, i64* %6, align 8
  %22 = call i8* @GET_INPUT_CHAR_INDEX(%struct.TYPE_12__* %20, i64 %21)
  store i8* %22, i8** %7, align 8
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %19
  %28 = load i8*, i8** %7, align 8
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = call i64 @isNull(i8* %28, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  br label %64

35:                                               ; preds = %27, %19
  %36 = load i64, i64* %3, align 8
  %37 = add nsw i64 %36, 1
  store i64 %37, i64* %3, align 8
  store double 0.000000e+00, double* %8, align 8
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  switch i32 %40, label %56 [
    i32 128, label %41
    i32 129, label %44
    i32 132, label %47
    i32 130, label %50
    i32 131, label %53
  ]

41:                                               ; preds = %35
  %42 = load i8*, i8** %7, align 8
  %43 = call double @GET_INT8_VAL(i8* %42)
  store double %43, double* %8, align 8
  br label %59

44:                                               ; preds = %35
  %45 = load i8*, i8** %7, align 8
  %46 = call double @GET_INT16_VAL(i8* %45)
  store double %46, double* %8, align 8
  br label %59

47:                                               ; preds = %35
  %48 = load i8*, i8** %7, align 8
  %49 = call double @GET_INT64_VAL(i8* %48)
  store double %49, double* %8, align 8
  br label %59

50:                                               ; preds = %35
  %51 = load i8*, i8** %7, align 8
  %52 = call double @GET_FLOAT_VAL(i8* %51)
  store double %52, double* %8, align 8
  br label %59

53:                                               ; preds = %35
  %54 = load i8*, i8** %7, align 8
  %55 = call double @GET_DOUBLE_VAL(i8* %54)
  store double %55, double* %8, align 8
  br label %59

56:                                               ; preds = %35
  %57 = load i8*, i8** %7, align 8
  %58 = call double @GET_INT32_VAL(i8* %57)
  store double %58, double* %8, align 8
  br label %59

59:                                               ; preds = %56, %53, %50, %47, %44, %41
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 0
  %62 = load double, double* %8, align 8
  %63 = call i32 @tHistogramAdd(i32* %61, double %62)
  br label %64

64:                                               ; preds = %59, %34
  %65 = load i64, i64* %6, align 8
  %66 = add nsw i64 %65, 1
  store i64 %66, i64* %6, align 8
  br label %13

67:                                               ; preds = %13
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %80, label %72

72:                                               ; preds = %67
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* %3, align 8
  %77 = icmp eq i64 %75, %76
  %78 = zext i1 %77 to i32
  %79 = call i32 @assert(i32 %78)
  br label %80

80:                                               ; preds = %72, %67
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %82 = load i64, i64* %3, align 8
  %83 = call i32 @SET_VAL(%struct.TYPE_12__* %81, i64 %82, i32 1)
  %84 = load i64, i64* %3, align 8
  %85 = icmp sgt i64 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %80
  %87 = load i32, i32* @DATA_SET_FLAG, align 4
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 4
  br label %90

90:                                               ; preds = %86, %80
  ret void
}

declare dso_local %struct.TYPE_11__* @GET_RES_INFO(%struct.TYPE_12__*) #1

declare dso_local %struct.TYPE_13__* @getAPerctInfo(%struct.TYPE_12__*) #1

declare dso_local i8* @GET_INPUT_CHAR_INDEX(%struct.TYPE_12__*, i64) #1

declare dso_local i64 @isNull(i8*, i32) #1

declare dso_local double @GET_INT8_VAL(i8*) #1

declare dso_local double @GET_INT16_VAL(i8*) #1

declare dso_local double @GET_INT64_VAL(i8*) #1

declare dso_local double @GET_FLOAT_VAL(i8*) #1

declare dso_local double @GET_DOUBLE_VAL(i8*) #1

declare dso_local double @GET_INT32_VAL(i8*) #1

declare dso_local i32 @tHistogramAdd(i32*, double) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @SET_VAL(%struct.TYPE_12__*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
