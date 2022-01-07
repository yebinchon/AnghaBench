; ModuleID = '/home/carl/AnghaBench/TDengine/src/client/src/extr_tscFunctionImpl.c_apercentile_function_f.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/client/src/extr_tscFunctionImpl.c_apercentile_function_f.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i64 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_13__ = type { i32 }

@DATA_SET_FLAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*, i32)* @apercentile_function_f to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @apercentile_function_f(%struct.TYPE_12__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca double, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call i8* @GET_INPUT_CHAR_INDEX(%struct.TYPE_12__* %9, i32 %10)
  store i8* %11, i8** %5, align 8
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %2
  %17 = load i8*, i8** %5, align 8
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i64 @isNull(i8* %17, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %16
  br label %60

24:                                               ; preds = %16, %2
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %26 = call %struct.TYPE_11__* @GET_RES_INFO(%struct.TYPE_12__* %25)
  store %struct.TYPE_11__* %26, %struct.TYPE_11__** %6, align 8
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %28 = call %struct.TYPE_13__* @getAPerctInfo(%struct.TYPE_12__* %27)
  store %struct.TYPE_13__* %28, %struct.TYPE_13__** %7, align 8
  store double 0.000000e+00, double* %8, align 8
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  switch i32 %31, label %47 [
    i32 128, label %32
    i32 129, label %35
    i32 132, label %38
    i32 130, label %41
    i32 131, label %44
  ]

32:                                               ; preds = %24
  %33 = load i8*, i8** %5, align 8
  %34 = call double @GET_INT8_VAL(i8* %33)
  store double %34, double* %8, align 8
  br label %50

35:                                               ; preds = %24
  %36 = load i8*, i8** %5, align 8
  %37 = call double @GET_INT16_VAL(i8* %36)
  store double %37, double* %8, align 8
  br label %50

38:                                               ; preds = %24
  %39 = load i8*, i8** %5, align 8
  %40 = call double @GET_INT64_VAL(i8* %39)
  store double %40, double* %8, align 8
  br label %50

41:                                               ; preds = %24
  %42 = load i8*, i8** %5, align 8
  %43 = call double @GET_FLOAT_VAL(i8* %42)
  store double %43, double* %8, align 8
  br label %50

44:                                               ; preds = %24
  %45 = load i8*, i8** %5, align 8
  %46 = call double @GET_DOUBLE_VAL(i8* %45)
  store double %46, double* %8, align 8
  br label %50

47:                                               ; preds = %24
  %48 = load i8*, i8** %5, align 8
  %49 = call double @GET_INT32_VAL(i8* %48)
  store double %49, double* %8, align 8
  br label %50

50:                                               ; preds = %47, %44, %41, %38, %35, %32
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 0
  %53 = load double, double* %8, align 8
  %54 = call i32 @tHistogramAdd(i32* %52, double %53)
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %56 = call i32 @SET_VAL(%struct.TYPE_12__* %55, i32 1, i32 1)
  %57 = load i32, i32* @DATA_SET_FLAG, align 4
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 4
  br label %60

60:                                               ; preds = %50, %23
  ret void
}

declare dso_local i8* @GET_INPUT_CHAR_INDEX(%struct.TYPE_12__*, i32) #1

declare dso_local i64 @isNull(i8*, i32) #1

declare dso_local %struct.TYPE_11__* @GET_RES_INFO(%struct.TYPE_12__*) #1

declare dso_local %struct.TYPE_13__* @getAPerctInfo(%struct.TYPE_12__*) #1

declare dso_local double @GET_INT8_VAL(i8*) #1

declare dso_local double @GET_INT16_VAL(i8*) #1

declare dso_local double @GET_INT64_VAL(i8*) #1

declare dso_local double @GET_FLOAT_VAL(i8*) #1

declare dso_local double @GET_DOUBLE_VAL(i8*) #1

declare dso_local double @GET_INT32_VAL(i8*) #1

declare dso_local i32 @tHistogramAdd(i32*, double) #1

declare dso_local i32 @SET_VAL(%struct.TYPE_12__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
