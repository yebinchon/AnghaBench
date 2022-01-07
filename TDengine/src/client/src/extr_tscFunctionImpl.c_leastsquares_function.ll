; ModuleID = '/home/carl/AnghaBench/TDengine/src/client/src/extr_tscFunctionImpl.c_leastsquares_function.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/client/src/extr_tscFunctionImpl.c_leastsquares_function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i64, %struct.TYPE_11__*, i32 }
%struct.TYPE_11__ = type { double }
%struct.TYPE_12__ = type { i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { double**, double, i64 }

@DATA_SET_FLAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_13__*)* @leastsquares_function to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @leastsquares_function(%struct.TYPE_13__* %0) #0 {
  %2 = alloca %struct.TYPE_13__*, align 8
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca [3 x double]*, align 8
  %6 = alloca double, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca float*, align 8
  %12 = alloca double*, align 8
  %13 = alloca float*, align 8
  %14 = alloca float*, align 8
  %15 = alloca float*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %2, align 8
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %17 = call %struct.TYPE_12__* @GET_RES_INFO(%struct.TYPE_13__* %16)
  store %struct.TYPE_12__* %17, %struct.TYPE_12__** %3, align 8
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  store %struct.TYPE_14__* %20, %struct.TYPE_14__** %4, align 8
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 0
  %23 = load double**, double*** %22, align 8
  %24 = bitcast double** %23 to [3 x double]*
  store [3 x double]* %24, [3 x double]** %5, align 8
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 1
  %27 = load double, double* %26, align 8
  store double %27, double* %6, align 8
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %29 = call i8* @GET_INPUT_CHAR(%struct.TYPE_13__* %28)
  store i8* %29, i8** %7, align 8
  store i64 0, i64* %8, align 8
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  switch i32 %32, label %201 [
    i32 130, label %33
    i32 133, label %106
    i32 132, label %125
    i32 131, label %144
    i32 129, label %163
    i32 128, label %182
  ]

33:                                               ; preds = %1
  %34 = load i8*, i8** %7, align 8
  %35 = bitcast i8* %34 to i64*
  store i64* %35, i64** %9, align 8
  store i64 0, i64* %10, align 8
  br label %36

36:                                               ; preds = %102, %33
  %37 = load i64, i64* %10, align 8
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp ult i64 %37, %40
  br i1 %41, label %42, label %105

42:                                               ; preds = %36
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 8
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %42
  %48 = load i64*, i64** %9, align 8
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @isNull(i64* %48, i32 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %47
  br label %102

55:                                               ; preds = %47, %42
  %56 = load double, double* %6, align 8
  %57 = load double, double* %6, align 8
  %58 = fmul double %56, %57
  %59 = load [3 x double]*, [3 x double]** %5, align 8
  %60 = getelementptr inbounds [3 x double], [3 x double]* %59, i64 0
  %61 = getelementptr inbounds [3 x double], [3 x double]* %60, i64 0, i64 0
  %62 = load double, double* %61, align 8
  %63 = fadd double %62, %58
  store double %63, double* %61, align 8
  %64 = load double, double* %6, align 8
  %65 = load [3 x double]*, [3 x double]** %5, align 8
  %66 = getelementptr inbounds [3 x double], [3 x double]* %65, i64 0
  %67 = getelementptr inbounds [3 x double], [3 x double]* %66, i64 0, i64 1
  %68 = load double, double* %67, align 8
  %69 = fadd double %68, %64
  store double %69, double* %67, align 8
  %70 = load double, double* %6, align 8
  %71 = load i64*, i64** %9, align 8
  %72 = load i64, i64* %10, align 8
  %73 = getelementptr inbounds i64, i64* %71, i64 %72
  %74 = load i64, i64* %73, align 8
  %75 = uitofp i64 %74 to double
  %76 = fmul double %70, %75
  %77 = load [3 x double]*, [3 x double]** %5, align 8
  %78 = getelementptr inbounds [3 x double], [3 x double]* %77, i64 0
  %79 = getelementptr inbounds [3 x double], [3 x double]* %78, i64 0, i64 2
  %80 = load double, double* %79, align 8
  %81 = fadd double %80, %76
  store double %81, double* %79, align 8
  %82 = load i64*, i64** %9, align 8
  %83 = load i64, i64* %10, align 8
  %84 = getelementptr inbounds i64, i64* %82, i64 %83
  %85 = load i64, i64* %84, align 8
  %86 = uitofp i64 %85 to double
  %87 = load [3 x double]*, [3 x double]** %5, align 8
  %88 = getelementptr inbounds [3 x double], [3 x double]* %87, i64 1
  %89 = getelementptr inbounds [3 x double], [3 x double]* %88, i64 0, i64 2
  %90 = load double, double* %89, align 8
  %91 = fadd double %90, %86
  store double %91, double* %89, align 8
  %92 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i32 0, i32 2
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i64 1
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 0
  %97 = load double, double* %96, align 8
  %98 = load double, double* %6, align 8
  %99 = fadd double %98, %97
  store double %99, double* %6, align 8
  %100 = load i64, i64* %8, align 8
  %101 = add i64 %100, 1
  store i64 %101, i64* %8, align 8
  br label %102

102:                                              ; preds = %55, %54
  %103 = load i64, i64* %10, align 8
  %104 = add i64 %103, 1
  store i64 %104, i64* %10, align 8
  br label %36

105:                                              ; preds = %36
  br label %201

106:                                              ; preds = %1
  %107 = load i8*, i8** %7, align 8
  %108 = bitcast i8* %107 to float*
  store float* %108, float** %11, align 8
  %109 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %110 = load [3 x double]*, [3 x double]** %5, align 8
  %111 = bitcast [3 x double]* %110 to double**
  %112 = load double, double* %6, align 8
  %113 = load float*, float** %11, align 8
  %114 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %115 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load i64, i64* %8, align 8
  %118 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %119 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %118, i32 0, i32 2
  %120 = load %struct.TYPE_11__*, %struct.TYPE_11__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i64 1
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i32 0, i32 0
  %123 = load double, double* %122, align 8
  %124 = call i32 (%struct.TYPE_13__*, double**, double, ...) @LEASTSQR_CAL_LOOP(%struct.TYPE_13__* %109, double** %111, double %112, float* %113, i32 %116, i64 %117, double %123)
  br label %201

125:                                              ; preds = %1
  %126 = load i8*, i8** %7, align 8
  %127 = bitcast i8* %126 to double*
  store double* %127, double** %12, align 8
  %128 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %129 = load [3 x double]*, [3 x double]** %5, align 8
  %130 = bitcast [3 x double]* %129 to double**
  %131 = load double, double* %6, align 8
  %132 = load double*, double** %12, align 8
  %133 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %134 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = load i64, i64* %8, align 8
  %137 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %138 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %137, i32 0, i32 2
  %139 = load %struct.TYPE_11__*, %struct.TYPE_11__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %139, i64 1
  %141 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %140, i32 0, i32 0
  %142 = load double, double* %141, align 8
  %143 = call i32 (%struct.TYPE_13__*, double**, double, ...) @LEASTSQR_CAL_LOOP(%struct.TYPE_13__* %128, double** %130, double %131, double* %132, i32 %135, i64 %136, double %142)
  br label %201

144:                                              ; preds = %1
  %145 = load i8*, i8** %7, align 8
  %146 = bitcast i8* %145 to float*
  store float* %146, float** %13, align 8
  %147 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %148 = load [3 x double]*, [3 x double]** %5, align 8
  %149 = bitcast [3 x double]* %148 to double**
  %150 = load double, double* %6, align 8
  %151 = load float*, float** %13, align 8
  %152 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %153 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = load i64, i64* %8, align 8
  %156 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %157 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %156, i32 0, i32 2
  %158 = load %struct.TYPE_11__*, %struct.TYPE_11__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %158, i64 1
  %160 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %159, i32 0, i32 0
  %161 = load double, double* %160, align 8
  %162 = call i32 (%struct.TYPE_13__*, double**, double, ...) @LEASTSQR_CAL_LOOP(%struct.TYPE_13__* %147, double** %149, double %150, float* %151, i32 %154, i64 %155, double %161)
  br label %201

163:                                              ; preds = %1
  %164 = load i8*, i8** %7, align 8
  %165 = bitcast i8* %164 to float*
  store float* %165, float** %14, align 8
  %166 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %167 = load [3 x double]*, [3 x double]** %5, align 8
  %168 = bitcast [3 x double]* %167 to double**
  %169 = load double, double* %6, align 8
  %170 = load float*, float** %14, align 8
  %171 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %172 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = load i64, i64* %8, align 8
  %175 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %176 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %175, i32 0, i32 2
  %177 = load %struct.TYPE_11__*, %struct.TYPE_11__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %177, i64 1
  %179 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %178, i32 0, i32 0
  %180 = load double, double* %179, align 8
  %181 = call i32 (%struct.TYPE_13__*, double**, double, ...) @LEASTSQR_CAL_LOOP(%struct.TYPE_13__* %166, double** %168, double %169, float* %170, i32 %173, i64 %174, double %180)
  br label %201

182:                                              ; preds = %1
  %183 = load i8*, i8** %7, align 8
  %184 = bitcast i8* %183 to float*
  store float* %184, float** %15, align 8
  %185 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %186 = load [3 x double]*, [3 x double]** %5, align 8
  %187 = bitcast [3 x double]* %186 to double**
  %188 = load double, double* %6, align 8
  %189 = load float*, float** %15, align 8
  %190 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %191 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = load i64, i64* %8, align 8
  %194 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %195 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %194, i32 0, i32 2
  %196 = load %struct.TYPE_11__*, %struct.TYPE_11__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %196, i64 1
  %198 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %197, i32 0, i32 0
  %199 = load double, double* %198, align 8
  %200 = call i32 (%struct.TYPE_13__*, double**, double, ...) @LEASTSQR_CAL_LOOP(%struct.TYPE_13__* %185, double** %187, double %188, float* %189, i32 %192, i64 %193, double %199)
  br label %201

201:                                              ; preds = %1, %182, %163, %144, %125, %106, %105
  %202 = load double, double* %6, align 8
  %203 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %204 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %203, i32 0, i32 1
  store double %202, double* %204, align 8
  %205 = load i64, i64* %8, align 8
  %206 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %207 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %206, i32 0, i32 2
  %208 = load i64, i64* %207, align 8
  %209 = add i64 %208, %205
  store i64 %209, i64* %207, align 8
  %210 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %211 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %210, i32 0, i32 2
  %212 = load i64, i64* %211, align 8
  %213 = icmp ugt i64 %212, 0
  br i1 %213, label %214, label %218

214:                                              ; preds = %201
  %215 = load i32, i32* @DATA_SET_FLAG, align 4
  %216 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %217 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %216, i32 0, i32 0
  store i32 %215, i32* %217, align 8
  br label %218

218:                                              ; preds = %214, %201
  %219 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %220 = load i64, i64* %8, align 8
  %221 = call i32 @SET_VAL(%struct.TYPE_13__* %219, i64 %220, i32 1)
  ret void
}

declare dso_local %struct.TYPE_12__* @GET_RES_INFO(%struct.TYPE_13__*) #1

declare dso_local i8* @GET_INPUT_CHAR(%struct.TYPE_13__*) #1

declare dso_local i32 @isNull(i64*, i32) #1

declare dso_local i32 @LEASTSQR_CAL_LOOP(%struct.TYPE_13__*, double**, double, ...) #1

declare dso_local i32 @SET_VAL(%struct.TYPE_13__*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
