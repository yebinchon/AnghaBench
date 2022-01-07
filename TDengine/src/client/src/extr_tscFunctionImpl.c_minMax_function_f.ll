; ModuleID = '/home/carl/AnghaBench/TDengine/src/client/src/extr_tscFunctionImpl.c_minMax_function_f.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/client/src/extr_tscFunctionImpl.c_minMax_function_f.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, double*, i32* }
%struct.TYPE_8__ = type { i32 }

@TSDB_DATA_TYPE_TINYINT = common dso_local global i64 0, align 8
@TSDB_DATA_TYPE_SMALLINT = common dso_local global i64 0, align 8
@TSDB_DATA_TYPE_INT = common dso_local global i64 0, align 8
@TSDB_DATA_TYPE_BIGINT = common dso_local global i64 0, align 8
@TSDB_DATA_TYPE_FLOAT = common dso_local global i64 0, align 8
@TSDB_DATA_TYPE_DOUBLE = common dso_local global i64 0, align 8
@DATA_SET_FLAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, i64, i64)* @minMax_function_f to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @minMax_function_f(%struct.TYPE_7__* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca double*, align 8
  %11 = alloca double, align 8
  %12 = alloca double*, align 8
  %13 = alloca double, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i64, align 8
  %16 = alloca double*, align 8
  %17 = alloca double, align 8
  %18 = alloca float*, align 8
  %19 = alloca float, align 4
  %20 = alloca double*, align 8
  %21 = alloca double, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %23 = load i64, i64* %5, align 8
  %24 = call i8* @GET_INPUT_CHAR_INDEX(%struct.TYPE_7__* %22, i64 %23)
  store i8* %24, i8** %7, align 8
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 2
  %27 = load i32*, i32** %26, align 8
  %28 = load i64, i64* %5, align 8
  %29 = getelementptr inbounds i32, i32* %27, i64 %28
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %8, align 4
  store i64 0, i64* %9, align 8
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @TSDB_DATA_TYPE_TINYINT, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %50

36:                                               ; preds = %3
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 1
  %39 = load double*, double** %38, align 8
  store double* %39, double** %10, align 8
  %40 = load i8*, i8** %7, align 8
  %41 = call double @GET_INT8_VAL(i8* %40)
  store double %41, double* %11, align 8
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %43 = load double*, double** %10, align 8
  %44 = load double, double* %43, align 8
  %45 = load double, double* %11, align 8
  %46 = load i64, i64* %9, align 8
  %47 = load i64, i64* %6, align 8
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @UPDATE_DATA(%struct.TYPE_7__* %42, double %44, double %45, i64 %46, i64 %47, i32 %48)
  br label %161

50:                                               ; preds = %3
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @TSDB_DATA_TYPE_SMALLINT, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %70

56:                                               ; preds = %50
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 1
  %59 = load double*, double** %58, align 8
  store double* %59, double** %12, align 8
  %60 = load i8*, i8** %7, align 8
  %61 = call double @GET_INT16_VAL(i8* %60)
  store double %61, double* %13, align 8
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %63 = load double*, double** %12, align 8
  %64 = load double, double* %63, align 8
  %65 = load double, double* %13, align 8
  %66 = load i64, i64* %9, align 8
  %67 = load i64, i64* %6, align 8
  %68 = load i32, i32* %8, align 4
  %69 = call i32 @UPDATE_DATA(%struct.TYPE_7__* %62, double %64, double %65, i64 %66, i64 %67, i32 %68)
  br label %160

70:                                               ; preds = %50
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @TSDB_DATA_TYPE_INT, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %93

76:                                               ; preds = %70
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 1
  %79 = load double*, double** %78, align 8
  %80 = bitcast double* %79 to i64*
  store i64* %80, i64** %14, align 8
  %81 = load i8*, i8** %7, align 8
  %82 = call i64 @GET_INT32_VAL(i8* %81)
  store i64 %82, i64* %15, align 8
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %84 = load i64*, i64** %14, align 8
  %85 = load i64, i64* %84, align 8
  %86 = uitofp i64 %85 to double
  %87 = load i64, i64* %15, align 8
  %88 = uitofp i64 %87 to double
  %89 = load i64, i64* %9, align 8
  %90 = load i64, i64* %6, align 8
  %91 = load i32, i32* %8, align 4
  %92 = call i32 @UPDATE_DATA(%struct.TYPE_7__* %83, double %86, double %88, i64 %89, i64 %90, i32 %91)
  br label %159

93:                                               ; preds = %70
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @TSDB_DATA_TYPE_BIGINT, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %113

99:                                               ; preds = %93
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 1
  %102 = load double*, double** %101, align 8
  store double* %102, double** %16, align 8
  %103 = load i8*, i8** %7, align 8
  %104 = call double @GET_INT64_VAL(i8* %103)
  store double %104, double* %17, align 8
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %106 = load double*, double** %16, align 8
  %107 = load double, double* %106, align 8
  %108 = load double, double* %17, align 8
  %109 = load i64, i64* %9, align 8
  %110 = load i64, i64* %6, align 8
  %111 = load i32, i32* %8, align 4
  %112 = call i32 @UPDATE_DATA(%struct.TYPE_7__* %105, double %107, double %108, i64 %109, i64 %110, i32 %111)
  br label %158

113:                                              ; preds = %93
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @TSDB_DATA_TYPE_FLOAT, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %119, label %136

119:                                              ; preds = %113
  %120 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 1
  %122 = load double*, double** %121, align 8
  %123 = bitcast double* %122 to float*
  store float* %123, float** %18, align 8
  %124 = load i8*, i8** %7, align 8
  %125 = call float @GET_FLOAT_VAL(i8* %124)
  store float %125, float* %19, align 4
  %126 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %127 = load float*, float** %18, align 8
  %128 = load float, float* %127, align 4
  %129 = fpext float %128 to double
  %130 = load float, float* %19, align 4
  %131 = fpext float %130 to double
  %132 = load i64, i64* %9, align 8
  %133 = load i64, i64* %6, align 8
  %134 = load i32, i32* %8, align 4
  %135 = call i32 @UPDATE_DATA(%struct.TYPE_7__* %126, double %129, double %131, i64 %132, i64 %133, i32 %134)
  br label %157

136:                                              ; preds = %113
  %137 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* @TSDB_DATA_TYPE_DOUBLE, align 8
  %141 = icmp eq i64 %139, %140
  br i1 %141, label %142, label %156

142:                                              ; preds = %136
  %143 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i32 0, i32 1
  %145 = load double*, double** %144, align 8
  store double* %145, double** %20, align 8
  %146 = load i8*, i8** %7, align 8
  %147 = call double @GET_DOUBLE_VAL(i8* %146)
  store double %147, double* %21, align 8
  %148 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %149 = load double*, double** %20, align 8
  %150 = load double, double* %149, align 8
  %151 = load double, double* %21, align 8
  %152 = load i64, i64* %9, align 8
  %153 = load i64, i64* %6, align 8
  %154 = load i32, i32* %8, align 4
  %155 = call i32 @UPDATE_DATA(%struct.TYPE_7__* %148, double %150, double %151, i64 %152, i64 %153, i32 %154)
  br label %156

156:                                              ; preds = %142, %136
  br label %157

157:                                              ; preds = %156, %119
  br label %158

158:                                              ; preds = %157, %99
  br label %159

159:                                              ; preds = %158, %76
  br label %160

160:                                              ; preds = %159, %56
  br label %161

161:                                              ; preds = %160, %36
  %162 = load i32, i32* @DATA_SET_FLAG, align 4
  %163 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %164 = call %struct.TYPE_8__* @GET_RES_INFO(%struct.TYPE_7__* %163)
  %165 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %164, i32 0, i32 0
  store i32 %162, i32* %165, align 4
  ret void
}

declare dso_local i8* @GET_INPUT_CHAR_INDEX(%struct.TYPE_7__*, i64) #1

declare dso_local double @GET_INT8_VAL(i8*) #1

declare dso_local i32 @UPDATE_DATA(%struct.TYPE_7__*, double, double, i64, i64, i32) #1

declare dso_local double @GET_INT16_VAL(i8*) #1

declare dso_local i64 @GET_INT32_VAL(i8*) #1

declare dso_local double @GET_INT64_VAL(i8*) #1

declare dso_local float @GET_FLOAT_VAL(i8*) #1

declare dso_local double @GET_DOUBLE_VAL(i8*) #1

declare dso_local %struct.TYPE_8__* @GET_RES_INFO(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
