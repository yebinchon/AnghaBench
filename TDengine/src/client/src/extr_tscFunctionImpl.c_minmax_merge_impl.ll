; ModuleID = '/home/carl/AnghaBench/TDengine/src/client/src/extr_tscFunctionImpl.c_minmax_merge_impl.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/client/src/extr_tscFunctionImpl.c_minmax_merge_impl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 (%struct.TYPE_13__*)* }
%struct.TYPE_13__ = type { i64, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64, %struct.TYPE_13__** }
%struct.TYPE_12__ = type { i32 }

@DATA_SET_FLAG = common dso_local global i8 0, align 1
@type = common dso_local global i32 0, align 4
@aAggs = common dso_local global %struct.TYPE_14__* null, align 8
@TSDB_FUNC_TAG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_13__*, i64, i8*, i32)* @minmax_merge_impl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @minmax_merge_impl(%struct.TYPE_13__* %0, i64 %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.TYPE_13__*, align 8
  %18 = alloca float, align 4
  %19 = alloca double, align 8
  %20 = alloca double, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  store i64 0, i64* %9, align 8
  %21 = call i32 (...) @GET_TRUE_DATA_TYPE()
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %23 = call %struct.TYPE_12__* @GET_RES_INFO(%struct.TYPE_13__* %22)
  store %struct.TYPE_12__* %23, %struct.TYPE_12__** %10, align 8
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @assert(i32 %26)
  store i64 0, i64* %11, align 8
  br label %28

28:                                               ; preds = %153, %4
  %29 = load i64, i64* %11, align 8
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp slt i64 %29, %32
  br i1 %33, label %34, label %156

34:                                               ; preds = %28
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %36 = load i64, i64* %11, align 8
  %37 = call i8* @GET_INPUT_CHAR_INDEX(%struct.TYPE_13__* %35, i64 %36)
  store i8* %37, i8** %12, align 8
  %38 = load i8*, i8** %12, align 8
  %39 = load i64, i64* %6, align 8
  %40 = getelementptr inbounds i8, i8* %38, i64 %39
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = load i8, i8* @DATA_SET_FLAG, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp ne i32 %42, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %34
  br label %153

47:                                               ; preds = %34
  %48 = load i32, i32* @type, align 4
  switch i32 %48, label %151 [
    i32 128, label %49
    i32 129, label %60
    i32 130, label %71
    i32 131, label %116
    i32 132, label %129
    i32 133, label %140
  ]

49:                                               ; preds = %47
  %50 = load i8*, i8** %12, align 8
  %51 = call double @GET_INT8_VAL(i8* %50)
  store double %51, double* %13, align 8
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %53 = load i8*, i8** %7, align 8
  %54 = bitcast i8* %53 to double*
  %55 = load double, double* %54, align 8
  %56 = load double, double* %13, align 8
  %57 = load i64, i64* %9, align 8
  %58 = load i32, i32* %8, align 4
  %59 = call i32 @DUPATE_DATA_WITHOUT_TS(%struct.TYPE_13__* %52, double %55, double %56, i64 %57, i32 %58)
  br label %152

60:                                               ; preds = %47
  %61 = load i8*, i8** %12, align 8
  %62 = call double @GET_INT16_VAL(i8* %61)
  store double %62, double* %14, align 8
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %64 = load i8*, i8** %7, align 8
  %65 = bitcast i8* %64 to double*
  %66 = load double, double* %65, align 8
  %67 = load double, double* %14, align 8
  %68 = load i64, i64* %9, align 8
  %69 = load i32, i32* %8, align 4
  %70 = call i32 @DUPATE_DATA_WITHOUT_TS(%struct.TYPE_13__* %63, double %66, double %67, i64 %68, i32 %69)
  br label %152

71:                                               ; preds = %47
  %72 = load i8*, i8** %12, align 8
  %73 = call i64 @GET_INT32_VAL(i8* %72)
  store i64 %73, i64* %15, align 8
  %74 = load i8*, i8** %7, align 8
  %75 = bitcast i8* %74 to i64*
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* %15, align 8
  %78 = icmp slt i64 %76, %77
  %79 = zext i1 %78 to i32
  %80 = load i32, i32* %8, align 4
  %81 = xor i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %115

83:                                               ; preds = %71
  %84 = load i64, i64* %15, align 8
  %85 = load i8*, i8** %7, align 8
  %86 = bitcast i8* %85 to i64*
  store i64 %84, i64* %86, align 8
  store i64 0, i64* %16, align 8
  br label %87

87:                                               ; preds = %109, %83
  %88 = load i64, i64* %16, align 8
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = icmp slt i64 %88, %92
  br i1 %93, label %94, label %112

94:                                               ; preds = %87
  %95 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 1
  %98 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %97, align 8
  %99 = load i64, i64* %16, align 8
  %100 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %98, i64 %99
  %101 = load %struct.TYPE_13__*, %struct.TYPE_13__** %100, align 8
  store %struct.TYPE_13__* %101, %struct.TYPE_13__** %17, align 8
  %102 = load %struct.TYPE_14__*, %struct.TYPE_14__** @aAggs, align 8
  %103 = load i64, i64* @TSDB_FUNC_TAG, align 8
  %104 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %102, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %104, i32 0, i32 0
  %106 = load i32 (%struct.TYPE_13__*)*, i32 (%struct.TYPE_13__*)** %105, align 8
  %107 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %108 = call i32 %106(%struct.TYPE_13__* %107)
  br label %109

109:                                              ; preds = %94
  %110 = load i64, i64* %16, align 8
  %111 = add nsw i64 %110, 1
  store i64 %111, i64* %16, align 8
  br label %87

112:                                              ; preds = %87
  %113 = load i64, i64* %9, align 8
  %114 = add nsw i64 %113, 1
  store i64 %114, i64* %9, align 8
  br label %115

115:                                              ; preds = %112, %71
  br label %152

116:                                              ; preds = %47
  %117 = load i8*, i8** %12, align 8
  %118 = call float @GET_FLOAT_VAL(i8* %117)
  store float %118, float* %18, align 4
  %119 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %120 = load i8*, i8** %7, align 8
  %121 = bitcast i8* %120 to float*
  %122 = load float, float* %121, align 4
  %123 = fpext float %122 to double
  %124 = load float, float* %18, align 4
  %125 = fpext float %124 to double
  %126 = load i64, i64* %9, align 8
  %127 = load i32, i32* %8, align 4
  %128 = call i32 @DUPATE_DATA_WITHOUT_TS(%struct.TYPE_13__* %119, double %123, double %125, i64 %126, i32 %127)
  br label %152

129:                                              ; preds = %47
  %130 = load i8*, i8** %12, align 8
  %131 = call double @GET_DOUBLE_VAL(i8* %130)
  store double %131, double* %19, align 8
  %132 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %133 = load i8*, i8** %7, align 8
  %134 = bitcast i8* %133 to double*
  %135 = load double, double* %134, align 8
  %136 = load double, double* %19, align 8
  %137 = load i64, i64* %9, align 8
  %138 = load i32, i32* %8, align 4
  %139 = call i32 @DUPATE_DATA_WITHOUT_TS(%struct.TYPE_13__* %132, double %135, double %136, i64 %137, i32 %138)
  br label %152

140:                                              ; preds = %47
  %141 = load i8*, i8** %12, align 8
  %142 = call double @GET_INT64_VAL(i8* %141)
  store double %142, double* %20, align 8
  %143 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %144 = load i8*, i8** %7, align 8
  %145 = bitcast i8* %144 to double*
  %146 = load double, double* %145, align 8
  %147 = load double, double* %20, align 8
  %148 = load i64, i64* %9, align 8
  %149 = load i32, i32* %8, align 4
  %150 = call i32 @DUPATE_DATA_WITHOUT_TS(%struct.TYPE_13__* %143, double %146, double %147, i64 %148, i32 %149)
  br label %152

151:                                              ; preds = %47
  br label %152

152:                                              ; preds = %151, %140, %129, %116, %115, %60, %49
  br label %153

153:                                              ; preds = %152, %46
  %154 = load i64, i64* %11, align 8
  %155 = add nsw i64 %154, 1
  store i64 %155, i64* %11, align 8
  br label %28

156:                                              ; preds = %28
  %157 = load i64, i64* %9, align 8
  ret i64 %157
}

declare dso_local i32 @GET_TRUE_DATA_TYPE(...) #1

declare dso_local %struct.TYPE_12__* @GET_RES_INFO(%struct.TYPE_13__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i8* @GET_INPUT_CHAR_INDEX(%struct.TYPE_13__*, i64) #1

declare dso_local double @GET_INT8_VAL(i8*) #1

declare dso_local i32 @DUPATE_DATA_WITHOUT_TS(%struct.TYPE_13__*, double, double, i64, i32) #1

declare dso_local double @GET_INT16_VAL(i8*) #1

declare dso_local i64 @GET_INT32_VAL(i8*) #1

declare dso_local float @GET_FLOAT_VAL(i8*) #1

declare dso_local double @GET_DOUBLE_VAL(i8*) #1

declare dso_local double @GET_INT64_VAL(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
