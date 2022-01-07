; ModuleID = '/home/carl/AnghaBench/ccv/bin/extr_siftmatch.c_main.c'
source_filename = "/home/carl/AnghaBench/ccv/bin/extr_siftmatch.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_17__ = type { i32, i32, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { float* }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_16__ = type { double, double }

@CCV_IO_GRAY = common dso_local global i32 0, align 4
@CCV_IO_ANY_FILE = common dso_local global i32 0, align 4
@__const.main.params = private unnamed_addr constant %struct.TYPE_15__ { i32 3, i32 6, i32 1, i32 10, i32 0, i32 0 }, align 4
@.str = private unnamed_addr constant [16 x i8] c"%f %f => %f %f\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"%dx%d on %dx%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"%d keypoints out of %d are matched\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"elpased time : %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_15__, align 8
  %10 = alloca %struct.TYPE_18__*, align 8
  %11 = alloca %struct.TYPE_17__*, align 8
  %12 = alloca %struct.TYPE_18__*, align 8
  %13 = alloca %struct.TYPE_17__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca float*, align 8
  %19 = alloca i32, align 4
  %20 = alloca double, align 8
  %21 = alloca double, align 8
  %22 = alloca float*, align 8
  %23 = alloca double, align 8
  %24 = alloca %struct.TYPE_16__*, align 8
  %25 = alloca %struct.TYPE_16__*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %26 = load i32, i32* %4, align 4
  %27 = icmp eq i32 %26, 3
  %28 = zext i1 %27 to i32
  %29 = call i32 @assert(i32 %28)
  %30 = call i32 (...) @ccv_enable_default_cache()
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %6, align 8
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %7, align 8
  %31 = load i8**, i8*** %5, align 8
  %32 = getelementptr inbounds i8*, i8** %31, i64 1
  %33 = load i8*, i8** %32, align 8
  %34 = load i32, i32* @CCV_IO_GRAY, align 4
  %35 = load i32, i32* @CCV_IO_ANY_FILE, align 4
  %36 = or i32 %34, %35
  %37 = call i32 @ccv_read(i8* %33, %struct.TYPE_17__** %6, i32 %36)
  %38 = load i8**, i8*** %5, align 8
  %39 = getelementptr inbounds i8*, i8** %38, i64 2
  %40 = load i8*, i8** %39, align 8
  %41 = load i32, i32* @CCV_IO_GRAY, align 4
  %42 = load i32, i32* @CCV_IO_ANY_FILE, align 4
  %43 = or i32 %41, %42
  %44 = call i32 @ccv_read(i8* %40, %struct.TYPE_17__** %7, i32 %43)
  %45 = call i32 (...) @get_current_time()
  store i32 %45, i32* %8, align 4
  %46 = bitcast %struct.TYPE_15__* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %46, i8* align 4 bitcast (%struct.TYPE_15__* @__const.main.params to i8*), i64 24, i1 false)
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %10, align 8
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %11, align 8
  %47 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %48 = call i32 @ccv_sift(%struct.TYPE_17__* %47, %struct.TYPE_18__** %10, %struct.TYPE_17__** %11, i32 0, %struct.TYPE_15__* byval(%struct.TYPE_15__) align 8 %9)
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %12, align 8
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %13, align 8
  %49 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %50 = call i32 @ccv_sift(%struct.TYPE_17__* %49, %struct.TYPE_18__** %12, %struct.TYPE_17__** %13, i32 0, %struct.TYPE_15__* byval(%struct.TYPE_15__) align 8 %9)
  %51 = call i32 (...) @get_current_time()
  %52 = load i32, i32* %8, align 4
  %53 = sub i32 %51, %52
  store i32 %53, i32* %8, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %14, align 4
  br label %54

54:                                               ; preds = %172, %2
  %55 = load i32, i32* %14, align 4
  %56 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %57 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = icmp slt i32 %55, %58
  br i1 %59, label %60, label %175

60:                                               ; preds = %54
  %61 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %62 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 0
  %64 = load float*, float** %63, align 8
  %65 = load i32, i32* %14, align 4
  %66 = mul nsw i32 %65, 128
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds float, float* %64, i64 %67
  store float* %68, float** %18, align 8
  store i32 -1, i32* %19, align 4
  store double 1.000000e+06, double* %20, align 8
  store double 1.000000e+06, double* %21, align 8
  store i32 0, i32* %15, align 4
  br label %69

69:                                               ; preds = %138, %60
  %70 = load i32, i32* %15, align 4
  %71 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %72 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = icmp slt i32 %70, %73
  br i1 %74, label %75, label %141

75:                                               ; preds = %69
  %76 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %77 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i32 0, i32 0
  %79 = load float*, float** %78, align 8
  %80 = load i32, i32* %15, align 4
  %81 = mul nsw i32 %80, 128
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds float, float* %79, i64 %82
  store float* %83, float** %22, align 8
  store double 0.000000e+00, double* %23, align 8
  store i32 0, i32* %16, align 4
  br label %84

84:                                               ; preds = %119, %75
  %85 = load i32, i32* %16, align 4
  %86 = icmp slt i32 %85, 128
  br i1 %86, label %87, label %122

87:                                               ; preds = %84
  %88 = load float*, float** %18, align 8
  %89 = load i32, i32* %16, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds float, float* %88, i64 %90
  %92 = load float, float* %91, align 4
  %93 = load float*, float** %22, align 8
  %94 = load i32, i32* %16, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds float, float* %93, i64 %95
  %97 = load float, float* %96, align 4
  %98 = fsub float %92, %97
  %99 = load float*, float** %18, align 8
  %100 = load i32, i32* %16, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds float, float* %99, i64 %101
  %103 = load float, float* %102, align 4
  %104 = load float*, float** %22, align 8
  %105 = load i32, i32* %16, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds float, float* %104, i64 %106
  %108 = load float, float* %107, align 4
  %109 = fsub float %103, %108
  %110 = fmul float %98, %109
  %111 = fpext float %110 to double
  %112 = load double, double* %23, align 8
  %113 = fadd double %112, %111
  store double %113, double* %23, align 8
  %114 = load double, double* %23, align 8
  %115 = load double, double* %21, align 8
  %116 = fcmp ogt double %114, %115
  br i1 %116, label %117, label %118

117:                                              ; preds = %87
  br label %122

118:                                              ; preds = %87
  br label %119

119:                                              ; preds = %118
  %120 = load i32, i32* %16, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %16, align 4
  br label %84

122:                                              ; preds = %117, %84
  %123 = load double, double* %23, align 8
  %124 = load double, double* %20, align 8
  %125 = fcmp olt double %123, %124
  br i1 %125, label %126, label %130

126:                                              ; preds = %122
  %127 = load double, double* %20, align 8
  store double %127, double* %21, align 8
  %128 = load double, double* %23, align 8
  store double %128, double* %20, align 8
  %129 = load i32, i32* %15, align 4
  store i32 %129, i32* %19, align 4
  br label %137

130:                                              ; preds = %122
  %131 = load double, double* %23, align 8
  %132 = load double, double* %21, align 8
  %133 = fcmp olt double %131, %132
  br i1 %133, label %134, label %136

134:                                              ; preds = %130
  %135 = load double, double* %23, align 8
  store double %135, double* %21, align 8
  br label %136

136:                                              ; preds = %134, %130
  br label %137

137:                                              ; preds = %136, %126
  br label %138

138:                                              ; preds = %137
  %139 = load i32, i32* %15, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %15, align 4
  br label %69

141:                                              ; preds = %69
  %142 = load double, double* %20, align 8
  %143 = load double, double* %21, align 8
  %144 = fmul double %143, 3.600000e-01
  %145 = fcmp olt double %142, %144
  br i1 %145, label %146, label %171

146:                                              ; preds = %141
  %147 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %148 = load i32, i32* %14, align 4
  %149 = call i64 @ccv_array_get(%struct.TYPE_18__* %147, i32 %148)
  %150 = inttoptr i64 %149 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %150, %struct.TYPE_16__** %24, align 8
  %151 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %152 = load i32, i32* %19, align 4
  %153 = call i64 @ccv_array_get(%struct.TYPE_18__* %151, i32 %152)
  %154 = inttoptr i64 %153 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %154, %struct.TYPE_16__** %25, align 8
  %155 = load %struct.TYPE_16__*, %struct.TYPE_16__** %24, align 8
  %156 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %155, i32 0, i32 0
  %157 = load double, double* %156, align 8
  %158 = fptoui double %157 to i32
  %159 = load %struct.TYPE_16__*, %struct.TYPE_16__** %24, align 8
  %160 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %159, i32 0, i32 1
  %161 = load double, double* %160, align 8
  %162 = load %struct.TYPE_16__*, %struct.TYPE_16__** %25, align 8
  %163 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %162, i32 0, i32 0
  %164 = load double, double* %163, align 8
  %165 = load %struct.TYPE_16__*, %struct.TYPE_16__** %25, align 8
  %166 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %165, i32 0, i32 1
  %167 = load double, double* %166, align 8
  %168 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %158, double %161, double %164, double %167)
  %169 = load i32, i32* %17, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %17, align 4
  br label %171

171:                                              ; preds = %146, %141
  br label %172

172:                                              ; preds = %171
  %173 = load i32, i32* %14, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %14, align 4
  br label %54

175:                                              ; preds = %54
  %176 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %177 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %180 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %183 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %186 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 4
  %188 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %178, i32 %181, i32 %184, i32 %187)
  %189 = load i32, i32* %17, align 4
  %190 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %191 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  %193 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %189, i32 %192)
  %194 = load i32, i32* %8, align 4
  %195 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %194)
  %196 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %197 = call i32 @ccv_array_free(%struct.TYPE_18__* %196)
  %198 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %199 = call i32 @ccv_array_free(%struct.TYPE_18__* %198)
  %200 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %201 = call i32 @ccv_matrix_free(%struct.TYPE_17__* %200)
  %202 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %203 = call i32 @ccv_matrix_free(%struct.TYPE_17__* %202)
  %204 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %205 = call i32 @ccv_matrix_free(%struct.TYPE_17__* %204)
  %206 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %207 = call i32 @ccv_matrix_free(%struct.TYPE_17__* %206)
  %208 = call i32 (...) @ccv_disable_cache()
  ret i32 0
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ccv_enable_default_cache(...) #1

declare dso_local i32 @ccv_read(i8*, %struct.TYPE_17__**, i32) #1

declare dso_local i32 @get_current_time(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ccv_sift(%struct.TYPE_17__*, %struct.TYPE_18__**, %struct.TYPE_17__**, i32, %struct.TYPE_15__* byval(%struct.TYPE_15__) align 8) #1

declare dso_local i64 @ccv_array_get(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @printf(i8*, i32, ...) #1

declare dso_local i32 @ccv_array_free(%struct.TYPE_18__*) #1

declare dso_local i32 @ccv_matrix_free(%struct.TYPE_17__*) #1

declare dso_local i32 @ccv_disable_cache(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
