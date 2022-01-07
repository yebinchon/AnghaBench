; ModuleID = '/home/carl/AnghaBench/TDengine/src/client/src/extr_tscFunctionImpl.c_leastsquares_function_f.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/client/src/extr_tscFunctionImpl.c_leastsquares_function_f.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, %struct.TYPE_10__*, i64 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { double**, i64, i32 }

@.str = private unnamed_addr constant [43 x i8] c"error data type in leastsquare function:%d\00", align 1
@DATA_SET_FLAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*, double)* @leastsquares_function_f to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @leastsquares_function_f(%struct.TYPE_12__* %0, double %1) #0 {
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca double, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca [3 x double]*, align 8
  %9 = alloca double*, align 8
  %10 = alloca double*, align 8
  %11 = alloca double*, align 8
  %12 = alloca double*, align 8
  %13 = alloca float*, align 8
  %14 = alloca double*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  store double %1, double* %4, align 8
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %16 = load double, double* %4, align 8
  %17 = call i8* @GET_INPUT_CHAR_INDEX(%struct.TYPE_12__* %15, double %16)
  store i8* %17, i8** %5, align 8
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %2
  %23 = load i8*, i8** %5, align 8
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i64 @isNull(i8* %23, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %22
  br label %165

30:                                               ; preds = %22, %2
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %32 = call %struct.TYPE_11__* @GET_RES_INFO(%struct.TYPE_12__* %31)
  store %struct.TYPE_11__* %32, %struct.TYPE_11__** %6, align 8
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %34, align 8
  store %struct.TYPE_13__* %35, %struct.TYPE_13__** %7, align 8
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 0
  %38 = load double**, double*** %37, align 8
  %39 = bitcast double** %38 to [3 x double]*
  store [3 x double]* %39, [3 x double]** %8, align 8
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  switch i32 %42, label %145 [
    i32 130, label %43
    i32 128, label %60
    i32 129, label %77
    i32 133, label %94
    i32 131, label %111
    i32 132, label %128
  ]

43:                                               ; preds = %30
  %44 = load i8*, i8** %5, align 8
  %45 = bitcast i8* %44 to double*
  store double* %45, double** %9, align 8
  %46 = load [3 x double]*, [3 x double]** %8, align 8
  %47 = bitcast [3 x double]* %46 to double**
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = load double*, double** %9, align 8
  %52 = load double, double* %4, align 8
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 1
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i64 1
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 (double**, i32, ...) @LEASTSQR_CAL(double** %47, i32 %50, double* %51, double %52, i32 %58)
  br label %150

60:                                               ; preds = %30
  %61 = load i8*, i8** %5, align 8
  %62 = bitcast i8* %61 to double*
  store double* %62, double** %10, align 8
  %63 = load [3 x double]*, [3 x double]** %8, align 8
  %64 = bitcast [3 x double]* %63 to double**
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = load double*, double** %10, align 8
  %69 = load double, double* %4, align 8
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 1
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i64 1
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 (double**, i32, ...) @LEASTSQR_CAL(double** %64, i32 %67, double* %68, double %69, i32 %75)
  br label %150

77:                                               ; preds = %30
  %78 = load i8*, i8** %5, align 8
  %79 = bitcast i8* %78 to double*
  store double* %79, double** %11, align 8
  %80 = load [3 x double]*, [3 x double]** %8, align 8
  %81 = bitcast [3 x double]* %80 to double**
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = load double*, double** %11, align 8
  %86 = load double, double* %4, align 8
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 1
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i64 1
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 (double**, i32, ...) @LEASTSQR_CAL(double** %81, i32 %84, double* %85, double %86, i32 %92)
  br label %150

94:                                               ; preds = %30
  %95 = load i8*, i8** %5, align 8
  %96 = bitcast i8* %95 to double*
  store double* %96, double** %12, align 8
  %97 = load [3 x double]*, [3 x double]** %8, align 8
  %98 = bitcast [3 x double]* %97 to double**
  %99 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %100 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = load double*, double** %12, align 8
  %103 = load double, double* %4, align 8
  %104 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i32 0, i32 1
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i64 1
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = call i32 (double**, i32, ...) @LEASTSQR_CAL(double** %98, i32 %101, double* %102, double %103, i32 %109)
  br label %150

111:                                              ; preds = %30
  %112 = load i8*, i8** %5, align 8
  %113 = bitcast i8* %112 to float*
  store float* %113, float** %13, align 8
  %114 = load [3 x double]*, [3 x double]** %8, align 8
  %115 = bitcast [3 x double]* %114 to double**
  %116 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %117 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = load float*, float** %13, align 8
  %120 = load double, double* %4, align 8
  %121 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i32 0, i32 1
  %123 = load %struct.TYPE_10__*, %struct.TYPE_10__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %123, i64 1
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = call i32 (double**, i32, ...) @LEASTSQR_CAL(double** %115, i32 %118, float* %119, double %120, i32 %126)
  br label %150

128:                                              ; preds = %30
  %129 = load i8*, i8** %5, align 8
  %130 = bitcast i8* %129 to double*
  store double* %130, double** %14, align 8
  %131 = load [3 x double]*, [3 x double]** %8, align 8
  %132 = bitcast [3 x double]* %131 to double**
  %133 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %134 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 8
  %136 = load double*, double** %14, align 8
  %137 = load double, double* %4, align 8
  %138 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %139 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %138, i32 0, i32 1
  %140 = load %struct.TYPE_10__*, %struct.TYPE_10__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i64 1
  %142 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = call i32 (double**, i32, ...) @LEASTSQR_CAL(double** %132, i32 %135, double* %136, double %137, i32 %143)
  br label %150

145:                                              ; preds = %30
  %146 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %147 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = call i32 @pError(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %148)
  br label %150

150:                                              ; preds = %145, %128, %111, %94, %77, %60, %43
  %151 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %152 = call i32 @SET_VAL(%struct.TYPE_12__* %151, i32 1, i32 1)
  %153 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %154 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %153, i32 0, i32 1
  %155 = load i64, i64* %154, align 8
  %156 = add nsw i64 %155, 1
  store i64 %156, i64* %154, align 8
  %157 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %158 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %157, i32 0, i32 1
  %159 = load i64, i64* %158, align 8
  %160 = icmp sgt i64 %159, 0
  br i1 %160, label %161, label %165

161:                                              ; preds = %150
  %162 = load i32, i32* @DATA_SET_FLAG, align 4
  %163 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %164 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %163, i32 0, i32 0
  store i32 %162, i32* %164, align 8
  br label %165

165:                                              ; preds = %29, %161, %150
  ret void
}

declare dso_local i8* @GET_INPUT_CHAR_INDEX(%struct.TYPE_12__*, double) #1

declare dso_local i64 @isNull(i8*, i32) #1

declare dso_local %struct.TYPE_11__* @GET_RES_INFO(%struct.TYPE_12__*) #1

declare dso_local i32 @LEASTSQR_CAL(double**, i32, ...) #1

declare dso_local i32 @pError(i8*, i32) #1

declare dso_local i32 @SET_VAL(%struct.TYPE_12__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
