; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers_font_renderer/extr_....depsstbstb_truetype.h_stbtt__rasterize_sorted_edges.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers_font_renderer/extr_....depsstbstb_truetype.h_stbtt__rasterize_sorted_edges.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i32, i8*, i32 }
%struct.TYPE_15__ = type { float }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_17__ = type { float, %struct.TYPE_17__*, i64, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_16__*, %struct.TYPE_15__*, i32, i32, i32, i32, i8*)* @stbtt__rasterize_sorted_edges to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stbtt__rasterize_sorted_edges(%struct.TYPE_16__* %0, %struct.TYPE_15__* %1, i32 %2, i32 %3, i32 %4, i32 %5, i8* %6) #0 {
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca %struct.TYPE_14__, align 4
  %16 = alloca %struct.TYPE_17__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca [129 x float], align 16
  %21 = alloca float*, align 8
  %22 = alloca float*, align 8
  %23 = alloca float, align 4
  %24 = alloca float, align 4
  %25 = alloca %struct.TYPE_17__**, align 8
  %26 = alloca %struct.TYPE_17__*, align 8
  %27 = alloca %struct.TYPE_17__*, align 8
  %28 = alloca float, align 4
  %29 = alloca float, align 4
  %30 = alloca i32, align 4
  %31 = alloca %struct.TYPE_17__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %8, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i8* %6, i8** %14, align 8
  %32 = bitcast %struct.TYPE_14__* %15 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %32, i8 0, i64 4, i1 false)
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %16, align 8
  store i32 0, i32* %18, align 4
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp sgt i32 %35, 64
  br i1 %36, label %37, label %48

37:                                               ; preds = %7
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = mul nsw i32 %40, 2
  %42 = add nsw i32 %41, 1
  %43 = sext i32 %42 to i64
  %44 = mul i64 %43, 4
  %45 = trunc i64 %44 to i32
  %46 = call i64 @malloc(i32 %45)
  %47 = inttoptr i64 %46 to float*
  store float* %47, float** %21, align 8
  br label %50

48:                                               ; preds = %7
  %49 = getelementptr inbounds [129 x float], [129 x float]* %20, i64 0, i64 0
  store float* %49, float** %21, align 8
  br label %50

50:                                               ; preds = %48, %37
  %51 = load float*, float** %21, align 8
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds float, float* %51, i64 %55
  store float* %56, float** %22, align 8
  %57 = load i32, i32* %13, align 4
  store i32 %57, i32* %17, align 4
  %58 = load i32, i32* %13, align 4
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = add nsw i32 %58, %61
  %63 = sitofp i32 %62 to float
  %64 = fadd float %63, 1.000000e+00
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %66 = load i32, i32* %10, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %68, i32 0, i32 0
  store float %64, float* %69, align 4
  br label %70

70:                                               ; preds = %239, %50
  %71 = load i32, i32* %18, align 4
  %72 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = icmp slt i32 %71, %74
  br i1 %75, label %76, label %244

76:                                               ; preds = %70
  %77 = load i32, i32* %17, align 4
  %78 = sitofp i32 %77 to float
  %79 = fadd float %78, 0.000000e+00
  store float %79, float* %23, align 4
  %80 = load i32, i32* %17, align 4
  %81 = sitofp i32 %80 to float
  %82 = fadd float %81, 1.000000e+00
  store float %82, float* %24, align 4
  store %struct.TYPE_17__** %16, %struct.TYPE_17__*** %25, align 8
  %83 = load float*, float** %21, align 8
  %84 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = sext i32 %86 to i64
  %88 = mul i64 %87, 4
  %89 = trunc i64 %88 to i32
  %90 = call i32 @memset(float* %83, i32 0, i32 %89)
  %91 = load float*, float** %22, align 8
  %92 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %93 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = add nsw i32 %94, 1
  %96 = sext i32 %95 to i64
  %97 = mul i64 %96, 4
  %98 = trunc i64 %97 to i32
  %99 = call i32 @memset(float* %91, i32 0, i32 %98)
  br label %100

100:                                              ; preds = %129, %76
  %101 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %25, align 8
  %102 = load %struct.TYPE_17__*, %struct.TYPE_17__** %101, align 8
  %103 = icmp ne %struct.TYPE_17__* %102, null
  br i1 %103, label %104, label %130

104:                                              ; preds = %100
  %105 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %25, align 8
  %106 = load %struct.TYPE_17__*, %struct.TYPE_17__** %105, align 8
  store %struct.TYPE_17__* %106, %struct.TYPE_17__** %26, align 8
  %107 = load %struct.TYPE_17__*, %struct.TYPE_17__** %26, align 8
  %108 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %107, i32 0, i32 0
  %109 = load float, float* %108, align 8
  %110 = load float, float* %23, align 4
  %111 = fcmp ole float %109, %110
  br i1 %111, label %112, label %125

112:                                              ; preds = %104
  %113 = load %struct.TYPE_17__*, %struct.TYPE_17__** %26, align 8
  %114 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %113, i32 0, i32 1
  %115 = load %struct.TYPE_17__*, %struct.TYPE_17__** %114, align 8
  %116 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %25, align 8
  store %struct.TYPE_17__* %115, %struct.TYPE_17__** %116, align 8
  %117 = load %struct.TYPE_17__*, %struct.TYPE_17__** %26, align 8
  %118 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %117, i32 0, i32 4
  %119 = load i64, i64* %118, align 8
  %120 = call i32 @retro_assert(i64 %119)
  %121 = load %struct.TYPE_17__*, %struct.TYPE_17__** %26, align 8
  %122 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %121, i32 0, i32 4
  store i64 0, i64* %122, align 8
  %123 = load %struct.TYPE_17__*, %struct.TYPE_17__** %26, align 8
  %124 = call i32 @stbtt__hheap_free(%struct.TYPE_14__* %15, %struct.TYPE_17__* %123)
  br label %129

125:                                              ; preds = %104
  %126 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %25, align 8
  %127 = load %struct.TYPE_17__*, %struct.TYPE_17__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %127, i32 0, i32 1
  store %struct.TYPE_17__** %128, %struct.TYPE_17__*** %25, align 8
  br label %129

129:                                              ; preds = %125, %112
  br label %100

130:                                              ; preds = %100
  br label %131

131:                                              ; preds = %137, %130
  %132 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %133 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %132, i32 0, i32 0
  %134 = load float, float* %133, align 4
  %135 = load float, float* %24, align 4
  %136 = fcmp ole float %134, %135
  br i1 %136, label %137, label %156

137:                                              ; preds = %131
  %138 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %139 = load i32, i32* %12, align 4
  %140 = load float, float* %23, align 4
  %141 = load i8*, i8** %14, align 8
  %142 = call %struct.TYPE_17__* @stbtt__new_active(%struct.TYPE_14__* %15, %struct.TYPE_15__* %138, i32 %139, float %140, i8* %141)
  store %struct.TYPE_17__* %142, %struct.TYPE_17__** %27, align 8
  %143 = load %struct.TYPE_17__*, %struct.TYPE_17__** %27, align 8
  %144 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %143, i32 0, i32 0
  %145 = load float, float* %144, align 8
  %146 = load float, float* %23, align 4
  %147 = fcmp oge float %145, %146
  %148 = zext i1 %147 to i32
  %149 = call i32 @assert(i32 %148)
  %150 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %151 = load %struct.TYPE_17__*, %struct.TYPE_17__** %27, align 8
  %152 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %151, i32 0, i32 1
  store %struct.TYPE_17__* %150, %struct.TYPE_17__** %152, align 8
  %153 = load %struct.TYPE_17__*, %struct.TYPE_17__** %27, align 8
  store %struct.TYPE_17__* %153, %struct.TYPE_17__** %16, align 8
  %154 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %155 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %154, i32 1
  store %struct.TYPE_15__* %155, %struct.TYPE_15__** %9, align 8
  br label %131

156:                                              ; preds = %131
  %157 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %158 = icmp ne %struct.TYPE_17__* %157, null
  br i1 %158, label %159, label %169

159:                                              ; preds = %156
  %160 = load float*, float** %21, align 8
  %161 = load float*, float** %22, align 8
  %162 = getelementptr inbounds float, float* %161, i64 1
  %163 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %164 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %167 = load float, float* %23, align 4
  %168 = call i32 @stbtt__fill_active_edges_new(float* %160, float* %162, i32 %165, %struct.TYPE_17__* %166, float %167)
  br label %169

169:                                              ; preds = %159, %156
  store float 0.000000e+00, float* %28, align 4
  store i32 0, i32* %19, align 4
  br label %170

170:                                              ; preds = %216, %169
  %171 = load i32, i32* %19, align 4
  %172 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %173 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = icmp slt i32 %171, %174
  br i1 %175, label %176, label %219

176:                                              ; preds = %170
  %177 = load float*, float** %22, align 8
  %178 = load i32, i32* %19, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds float, float* %177, i64 %179
  %181 = load float, float* %180, align 4
  %182 = load float, float* %28, align 4
  %183 = fadd float %182, %181
  store float %183, float* %28, align 4
  %184 = load float*, float** %21, align 8
  %185 = load i32, i32* %19, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds float, float* %184, i64 %186
  %188 = load float, float* %187, align 4
  %189 = load float, float* %28, align 4
  %190 = fadd float %188, %189
  store float %190, float* %29, align 4
  %191 = load float, float* %29, align 4
  %192 = call i64 @fabs(float %191)
  %193 = sitofp i64 %192 to float
  %194 = fmul float %193, 2.550000e+02
  %195 = fadd float %194, 5.000000e-01
  store float %195, float* %29, align 4
  %196 = load float, float* %29, align 4
  %197 = fptosi float %196 to i32
  store i32 %197, i32* %30, align 4
  %198 = load i32, i32* %30, align 4
  %199 = icmp sgt i32 %198, 255
  br i1 %199, label %200, label %201

200:                                              ; preds = %176
  store i32 255, i32* %30, align 4
  br label %201

201:                                              ; preds = %200, %176
  %202 = load i32, i32* %30, align 4
  %203 = trunc i32 %202 to i8
  %204 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %205 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %204, i32 0, i32 2
  %206 = load i8*, i8** %205, align 8
  %207 = load i32, i32* %18, align 4
  %208 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %209 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %208, i32 0, i32 3
  %210 = load i32, i32* %209, align 8
  %211 = mul nsw i32 %207, %210
  %212 = load i32, i32* %19, align 4
  %213 = add nsw i32 %211, %212
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds i8, i8* %206, i64 %214
  store i8 %203, i8* %215, align 1
  br label %216

216:                                              ; preds = %201
  %217 = load i32, i32* %19, align 4
  %218 = add nsw i32 %217, 1
  store i32 %218, i32* %19, align 4
  br label %170

219:                                              ; preds = %170
  store %struct.TYPE_17__** %16, %struct.TYPE_17__*** %25, align 8
  br label %220

220:                                              ; preds = %224, %219
  %221 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %25, align 8
  %222 = load %struct.TYPE_17__*, %struct.TYPE_17__** %221, align 8
  %223 = icmp ne %struct.TYPE_17__* %222, null
  br i1 %223, label %224, label %239

224:                                              ; preds = %220
  %225 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %25, align 8
  %226 = load %struct.TYPE_17__*, %struct.TYPE_17__** %225, align 8
  store %struct.TYPE_17__* %226, %struct.TYPE_17__** %31, align 8
  %227 = load %struct.TYPE_17__*, %struct.TYPE_17__** %31, align 8
  %228 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %227, i32 0, i32 2
  %229 = load i64, i64* %228, align 8
  %230 = load %struct.TYPE_17__*, %struct.TYPE_17__** %31, align 8
  %231 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %230, i32 0, i32 3
  %232 = load i32, i32* %231, align 8
  %233 = sext i32 %232 to i64
  %234 = add nsw i64 %233, %229
  %235 = trunc i64 %234 to i32
  store i32 %235, i32* %231, align 8
  %236 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %25, align 8
  %237 = load %struct.TYPE_17__*, %struct.TYPE_17__** %236, align 8
  %238 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %237, i32 0, i32 1
  store %struct.TYPE_17__** %238, %struct.TYPE_17__*** %25, align 8
  br label %220

239:                                              ; preds = %220
  %240 = load i32, i32* %17, align 4
  %241 = add nsw i32 %240, 1
  store i32 %241, i32* %17, align 4
  %242 = load i32, i32* %18, align 4
  %243 = add nsw i32 %242, 1
  store i32 %243, i32* %18, align 4
  br label %70

244:                                              ; preds = %70
  %245 = load i8*, i8** %14, align 8
  %246 = call i32 @stbtt__hheap_cleanup(%struct.TYPE_14__* %15, i8* %245)
  %247 = load float*, float** %21, align 8
  %248 = getelementptr inbounds [129 x float], [129 x float]* %20, i64 0, i64 0
  %249 = icmp ne float* %247, %248
  br i1 %249, label %250, label %253

250:                                              ; preds = %244
  %251 = load float*, float** %21, align 8
  %252 = call i32 @free(float* %251)
  br label %253

253:                                              ; preds = %250, %244
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @malloc(i32) #2

declare dso_local i32 @memset(float*, i32, i32) #2

declare dso_local i32 @retro_assert(i64) #2

declare dso_local i32 @stbtt__hheap_free(%struct.TYPE_14__*, %struct.TYPE_17__*) #2

declare dso_local %struct.TYPE_17__* @stbtt__new_active(%struct.TYPE_14__*, %struct.TYPE_15__*, i32, float, i8*) #2

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @stbtt__fill_active_edges_new(float*, float*, i32, %struct.TYPE_17__*, float) #2

declare dso_local i64 @fabs(float) #2

declare dso_local i32 @stbtt__hheap_cleanup(%struct.TYPE_14__*, i8*) #2

declare dso_local i32 @free(float*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
