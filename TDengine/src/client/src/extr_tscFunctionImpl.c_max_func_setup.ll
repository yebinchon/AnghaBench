; ModuleID = '/home/carl/AnghaBench/TDengine/src/client/src/extr_tscFunctionImpl.c_max_func_setup.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/client/src/extr_tscFunctionImpl.c_max_func_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64 }

@type = common dso_local global i32 0, align 4
@INT32_MIN = common dso_local global i32 0, align 4
@FLT_MIN = common dso_local global float 0.000000e+00, align 4
@DBL_MIN = common dso_local global double 0.000000e+00, align 8
@INT64_MIN = common dso_local global i32 0, align 4
@INT16_MIN = common dso_local global i32 0, align 4
@INT8_MIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"illegal data type:%d in min/max query\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*)* @max_func_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max_func_setup(%struct.TYPE_4__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  %4 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %5 = call i32 @function_setup(%struct.TYPE_4__* %4)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %55

8:                                                ; preds = %1
  %9 = call i32 (...) @GET_TRUE_DATA_TYPE()
  %10 = load i32, i32* @type, align 4
  switch i32 %10, label %49 [
    i32 130, label %11
    i32 131, label %17
    i32 132, label %24
    i32 133, label %31
    i32 129, label %37
    i32 128, label %43
  ]

11:                                               ; preds = %8
  %12 = load i32, i32* @INT32_MIN, align 4
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to i32*
  store i32 %12, i32* %16, align 4
  br label %54

17:                                               ; preds = %8
  %18 = load float, float* @FLT_MIN, align 4
  %19 = fneg float %18
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to float*
  store float %19, float* %23, align 4
  br label %54

24:                                               ; preds = %8
  %25 = load double, double* @DBL_MIN, align 8
  %26 = fneg double %25
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to double*
  store double %26, double* %30, align 8
  br label %54

31:                                               ; preds = %8
  %32 = load i32, i32* @INT64_MIN, align 4
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = inttoptr i64 %35 to i32*
  store i32 %32, i32* %36, align 4
  br label %54

37:                                               ; preds = %8
  %38 = load i32, i32* @INT16_MIN, align 4
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = inttoptr i64 %41 to i32*
  store i32 %38, i32* %42, align 4
  br label %54

43:                                               ; preds = %8
  %44 = load i32, i32* @INT8_MIN, align 4
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = inttoptr i64 %47 to i32*
  store i32 %44, i32* %48, align 4
  br label %54

49:                                               ; preds = %8
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @pError(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %52)
  br label %54

54:                                               ; preds = %49, %43, %37, %31, %24, %17, %11
  store i32 1, i32* %2, align 4
  br label %55

55:                                               ; preds = %54, %7
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i32 @function_setup(%struct.TYPE_4__*) #1

declare dso_local i32 @GET_TRUE_DATA_TYPE(...) #1

declare dso_local i32 @pError(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
