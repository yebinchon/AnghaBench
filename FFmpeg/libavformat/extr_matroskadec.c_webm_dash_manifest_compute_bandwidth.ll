; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_matroskadec.c_webm_dash_manifest_compute_bandwidth.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_matroskadec.c_webm_dash_manifest_compute_bandwidth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_13__**, %struct.TYPE_11__* }
%struct.TYPE_13__ = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, i32)* @webm_dash_manifest_compute_bandwidth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @webm_dash_manifest_compute_bandwidth(%struct.TYPE_14__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca double, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca double, align 8
  %13 = alloca i32, align 4
  %14 = alloca double, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  %20 = alloca double, align 8
  %21 = alloca %struct.TYPE_12__, align 4
  %22 = alloca %struct.TYPE_12__, align 4
  %23 = alloca %struct.TYPE_12__, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca double, align 8
  %27 = alloca double, align 8
  %28 = alloca double, align 8
  %29 = alloca double, align 8
  %30 = alloca double, align 8
  %31 = alloca i32, align 4
  %32 = alloca double, align 8
  %33 = alloca double, align 8
  %34 = alloca double, align 8
  %35 = alloca i32, align 4
  %36 = alloca %struct.TYPE_12__, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %4, align 8
  store i32 %1, i32* %5, align 4
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %38, align 8
  store %struct.TYPE_11__* %39, %struct.TYPE_11__** %6, align 8
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %42, i64 0
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %43, align 8
  store %struct.TYPE_13__* %44, %struct.TYPE_13__** %7, align 8
  store double 0.000000e+00, double* %8, align 8
  store i32 0, i32* %9, align 4
  br label %45

45:                                               ; preds = %254, %2
  %46 = load i32, i32* %9, align 4
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp slt i32 %46, %49
  br i1 %50, label %51, label %257

51:                                               ; preds = %45
  store i32 1000000000, i32* %10, align 4
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 1
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %53, align 8
  %55 = load i32, i32* %9, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = mul nsw i32 %59, %62
  store i32 %63, i32* %11, align 4
  store double 1.000000e+09, double* %12, align 8
  %64 = load i32, i32* %11, align 4
  %65 = load i32, i32* %10, align 4
  %66 = add nsw i32 %64, %65
  store i32 %66, i32* %13, align 4
  store double 0.000000e+00, double* %14, align 8
  %67 = load i32, i32* %10, align 4
  store i32 %67, i32* %15, align 4
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %69 = load i32, i32* %11, align 4
  %70 = load i32, i32* %5, align 4
  %71 = call { i64, i64 } @get_cue_desc(%struct.TYPE_14__* %68, i32 %69, i32 %70)
  %72 = bitcast %struct.TYPE_12__* %21 to { i64, i64 }*
  %73 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %72, i32 0, i32 0
  %74 = extractvalue { i64, i64 } %71, 0
  store i64 %74, i64* %73, align 4
  %75 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %72, i32 0, i32 1
  %76 = extractvalue { i64, i64 } %71, 1
  store i64 %76, i64* %75, align 4
  %77 = bitcast %struct.TYPE_12__* %22 to i8*
  %78 = bitcast %struct.TYPE_12__* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %77, i8* align 4 %78, i64 16, i1 false)
  br label %79

79:                                               ; preds = %90, %51
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = icmp ne i32 %81, -1
  br i1 %82, label %83, label %88

83:                                               ; preds = %79
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* %13, align 4
  %87 = icmp slt i32 %85, %86
  br label %88

88:                                               ; preds = %83, %79
  %89 = phi i1 [ false, %79 ], [ %87, %83 ]
  br i1 %89, label %90, label %118

90:                                               ; preds = %88
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 3
  %94 = load i32, i32* %93, align 4
  %95 = sub nsw i32 %92, %94
  %96 = sitofp i32 %95 to double
  %97 = load double, double* %14, align 8
  %98 = fadd double %97, %96
  store double %98, double* %14, align 8
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = sub nsw i32 %100, %102
  %104 = load i32, i32* %15, align 4
  %105 = sub nsw i32 %104, %103
  store i32 %105, i32* %15, align 4
  %106 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* %5, align 4
  %110 = call { i64, i64 } @get_cue_desc(%struct.TYPE_14__* %106, i32 %108, i32 %109)
  %111 = bitcast %struct.TYPE_12__* %23 to { i64, i64 }*
  %112 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %111, i32 0, i32 0
  %113 = extractvalue { i64, i64 } %110, 0
  store i64 %113, i64* %112, align 4
  %114 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %111, i32 0, i32 1
  %115 = extractvalue { i64, i64 } %110, 1
  store i64 %115, i64* %114, align 4
  %116 = bitcast %struct.TYPE_12__* %22 to i8*
  %117 = bitcast %struct.TYPE_12__* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %116, i8* align 4 %117, i64 16, i1 false)
  br label %79

118:                                              ; preds = %88
  %119 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = icmp eq i32 %120, -1
  br i1 %121, label %122, label %134

122:                                              ; preds = %118
  %123 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %127 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = mul nsw i32 %125, %128
  %130 = load i32, i32* %13, align 4
  %131 = icmp sge i32 %129, %130
  br i1 %131, label %132, label %133

132:                                              ; preds = %122
  store i32 -1, i32* %3, align 4
  br label %260

133:                                              ; preds = %122
  store double 0.000000e+00, double* %20, align 8
  br label %247

134:                                              ; preds = %118
  %135 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 2
  %136 = load i32, i32* %135, align 4
  %137 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 3
  %138 = load i32, i32* %137, align 4
  %139 = sub nsw i32 %136, %138
  store i32 %139, i32* %16, align 4
  %140 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = sub nsw i32 %141, %143
  store i32 %144, i32* %17, align 4
  %145 = load i32, i32* %17, align 4
  %146 = sitofp i32 %145 to double
  %147 = load double, double* %12, align 8
  %148 = fdiv double %146, %147
  store double %148, double* %18, align 8
  %149 = load i32, i32* %16, align 4
  %150 = sitofp i32 %149 to double
  %151 = load i32, i32* %15, align 4
  %152 = sitofp i32 %151 to double
  %153 = load double, double* %12, align 8
  %154 = fdiv double %152, %153
  %155 = load double, double* %18, align 8
  %156 = fdiv double %154, %155
  %157 = fmul double %150, %156
  %158 = load double, double* %14, align 8
  %159 = fadd double %158, %157
  store double %159, double* %14, align 8
  %160 = load i32, i32* %10, align 4
  %161 = sitofp i32 %160 to double
  %162 = load double, double* %12, align 8
  %163 = fdiv double %161, %162
  store double %163, double* %19, align 8
  store double 0.000000e+00, double* %20, align 8
  br label %164

164:                                              ; preds = %242, %134
  %165 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 2
  %166 = load i32, i32* %165, align 4
  %167 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 3
  %168 = load i32, i32* %167, align 4
  %169 = sub nsw i32 %166, %168
  store i32 %169, i32* %24, align 4
  %170 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = sub nsw i32 %171, %173
  store i32 %174, i32* %25, align 4
  %175 = load i32, i32* %25, align 4
  %176 = sitofp i32 %175 to double
  %177 = load double, double* %12, align 8
  %178 = fdiv double %176, %177
  store double %178, double* %26, align 8
  %179 = load i32, i32* %24, align 4
  %180 = mul nsw i32 %179, 8
  %181 = sitofp i32 %180 to double
  %182 = load double, double* %26, align 8
  %183 = fdiv double %181, %182
  store double %183, double* %27, align 8
  %184 = load i32, i32* %24, align 4
  %185 = sitofp i32 %184 to double
  %186 = load double, double* %14, align 8
  %187 = fsub double %185, %186
  %188 = load i32, i32* %24, align 4
  %189 = sitofp i32 %188 to double
  %190 = fdiv double %187, %189
  store double %190, double* %28, align 8
  %191 = load double, double* %27, align 8
  %192 = load double, double* %28, align 8
  %193 = fmul double %191, %192
  store double %193, double* %29, align 8
  %194 = load double, double* %19, align 8
  %195 = load double, double* %26, align 8
  %196 = fcmp olt double %194, %195
  br i1 %196, label %197, label %229

197:                                              ; preds = %164
  %198 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %199 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 4
  %201 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %202 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  %204 = mul nsw i32 %200, %203
  %205 = sitofp i32 %204 to double
  %206 = load double, double* %12, align 8
  %207 = fdiv double %205, %206
  store double %207, double* %30, align 8
  %208 = load double, double* %29, align 8
  %209 = fptosi double %208 to i32
  %210 = add nsw i32 %209, 1
  store i32 %210, i32* %31, align 4
  store double 0.000000e+00, double* %32, align 8
  %211 = load double, double* %19, align 8
  store double %211, double* %33, align 8
  store double 0.000000e+00, double* %34, align 8
  %212 = load i32, i32* %13, align 4
  %213 = load double, double* %30, align 8
  %214 = load i32, i32* %31, align 4
  %215 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %216 = load i32, i32* %5, align 4
  %217 = call i32 @buffer_size_after_time_downloaded(i32 %212, double %213, i32 %214, double 0.000000e+00, double* %33, double* %34, %struct.TYPE_14__* %215, i32 %216)
  store i32 %217, i32* %35, align 4
  %218 = load i32, i32* %35, align 4
  %219 = icmp slt i32 %218, 0
  br i1 %219, label %220, label %221

220:                                              ; preds = %197
  store i32 -1, i32* %3, align 4
  br label %260

221:                                              ; preds = %197
  %222 = load i32, i32* %35, align 4
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %224, label %227

224:                                              ; preds = %221
  %225 = load i32, i32* %31, align 4
  %226 = sitofp i32 %225 to double
  store double %226, double* %20, align 8
  br label %246

227:                                              ; preds = %221
  br label %228

228:                                              ; preds = %227
  br label %229

229:                                              ; preds = %228, %164
  %230 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %231 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 1
  %232 = load i32, i32* %231, align 4
  %233 = load i32, i32* %5, align 4
  %234 = call { i64, i64 } @get_cue_desc(%struct.TYPE_14__* %230, i32 %232, i32 %233)
  %235 = bitcast %struct.TYPE_12__* %36 to { i64, i64 }*
  %236 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %235, i32 0, i32 0
  %237 = extractvalue { i64, i64 } %234, 0
  store i64 %237, i64* %236, align 4
  %238 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %235, i32 0, i32 1
  %239 = extractvalue { i64, i64 } %234, 1
  store i64 %239, i64* %238, align 4
  %240 = bitcast %struct.TYPE_12__* %22 to i8*
  %241 = bitcast %struct.TYPE_12__* %36 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %240, i8* align 4 %241, i64 16, i1 false)
  br label %242

242:                                              ; preds = %229
  %243 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 0
  %244 = load i32, i32* %243, align 4
  %245 = icmp ne i32 %244, -1
  br i1 %245, label %164, label %246

246:                                              ; preds = %242, %224
  br label %247

247:                                              ; preds = %246, %133
  %248 = load double, double* %8, align 8
  %249 = load double, double* %20, align 8
  %250 = fcmp olt double %248, %249
  br i1 %250, label %251, label %253

251:                                              ; preds = %247
  %252 = load double, double* %20, align 8
  store double %252, double* %8, align 8
  br label %253

253:                                              ; preds = %251, %247
  br label %254

254:                                              ; preds = %253
  %255 = load i32, i32* %9, align 4
  %256 = add nsw i32 %255, 1
  store i32 %256, i32* %9, align 4
  br label %45

257:                                              ; preds = %45
  %258 = load double, double* %8, align 8
  %259 = fptosi double %258 to i32
  store i32 %259, i32* %3, align 4
  br label %260

260:                                              ; preds = %257, %220, %132
  %261 = load i32, i32* %3, align 4
  ret i32 %261
}

declare dso_local { i64, i64 } @get_cue_desc(%struct.TYPE_14__*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @buffer_size_after_time_downloaded(i32, double, i32, double, double*, double*, %struct.TYPE_14__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
