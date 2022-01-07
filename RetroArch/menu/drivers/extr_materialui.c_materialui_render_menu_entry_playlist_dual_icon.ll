; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/drivers/extr_materialui.c_materialui_render_menu_entry_playlist_dual_icon.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/drivers/extr_materialui.c_materialui_render_menu_entry_playlist_dual_icon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i32, float, i32, %struct.TYPE_15__, i32, %struct.TYPE_14__, i64, i64, i64, %struct.TYPE_19__, %struct.TYPE_18__, i64, i64, i64 }
%struct.TYPE_15__ = type { i32, i32, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i64, i32 }
%struct.TYPE_19__ = type { i32, i8*, i64, i8* }
%struct.TYPE_18__ = type { i32, i32, i8*, i8*, i32, i32 }
%struct.TYPE_16__ = type { float, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i32 }

@TEXT_ALIGN_LEFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_17__*, i32*, %struct.TYPE_16__*, i32*, i32, i32, i32, i32, i32, i32)* @materialui_render_menu_entry_playlist_dual_icon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @materialui_render_menu_entry_playlist_dual_icon(%struct.TYPE_17__* %0, i32* %1, %struct.TYPE_16__* %2, i32* %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9) #0 {
  %11 = alloca %struct.TYPE_17__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_16__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  %23 = alloca float, align 4
  %24 = alloca float, align 4
  %25 = alloca float, align 4
  %26 = alloca float, align 4
  %27 = alloca i32, align 4
  %28 = alloca [255 x i8], align 16
  %29 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %11, align 8
  store i32* %1, i32** %12, align 8
  store %struct.TYPE_16__* %2, %struct.TYPE_16__** %13, align 8
  store i32* %3, i32** %14, align 8
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  store i32 %9, i32* %20, align 4
  store i8* null, i8** %21, align 8
  %30 = load i32, i32* %18, align 4
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %32 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = mul nsw i32 %33, 2
  %35 = sub nsw i32 %30, %34
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %37 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = mul nsw i32 %38, 2
  %40 = sub nsw i32 %35, %39
  %41 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %42 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %41, i32 0, i32 14
  %43 = load i64, i64* %42, align 8
  %44 = trunc i64 %43 to i32
  %45 = sub nsw i32 %40, %44
  store i32 %45, i32* %22, align 4
  %46 = load i32, i32* %17, align 4
  %47 = uitofp i32 %46 to float
  %48 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %49 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %48, i32 0, i32 2
  %50 = load float, float* %49, align 8
  %51 = fsub float %47, %50
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %53 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %52, i32 0, i32 0
  %54 = load float, float* %53, align 4
  %55 = fadd float %51, %54
  store float %55, float* %23, align 4
  %56 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %57 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %56, i32 0, i32 12
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %73

60:                                               ; preds = %10
  %61 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %62 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %61, i32 0, i32 6
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %67 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %66, i32 0, i32 11
  %68 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %67, i32 0, i32 5
  store i32 %65, i32* %68, align 4
  %69 = load i32, i32* %15, align 4
  %70 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %71 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %70, i32 0, i32 11
  %72 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %71, i32 0, i32 0
  store i32 %69, i32* %72, align 8
  br label %78

73:                                               ; preds = %10
  %74 = load i32, i32* %15, align 4
  %75 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %76 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %75, i32 0, i32 10
  %77 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %76, i32 0, i32 0
  store i32 %74, i32* %77, align 8
  br label %78

78:                                               ; preds = %73, %60
  %79 = load i32*, i32** %14, align 8
  %80 = call i32 @menu_entry_get_rich_label(i32* %79, i8** %21)
  %81 = load float, float* %23, align 4
  %82 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %83 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %82, i32 0, i32 7
  %84 = load i64, i64* %83, align 8
  %85 = sitofp i64 %84 to float
  %86 = fdiv float %85, 1.000000e+01
  %87 = fadd float %81, %86
  store float %87, float* %24, align 4
  %88 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %89 = load i32*, i32** %12, align 8
  %90 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %91 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 1
  %93 = load i32, i32* %20, align 4
  %94 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %95 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = add nsw i32 %93, %96
  %98 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %99 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = add nsw i32 %97, %100
  %102 = sitofp i32 %101 to float
  %103 = load float, float* %24, align 4
  %104 = load i32, i32* %18, align 4
  %105 = load i32, i32* %19, align 4
  %106 = call i32 @materialui_draw_thumbnail(%struct.TYPE_17__* %88, i32* %89, i32* %92, float %102, float %103, i32 %104, i32 %105, float 1.000000e+00)
  %107 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %108 = load i32*, i32** %12, align 8
  %109 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %110 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %110, i32 0, i32 0
  %112 = load i32, i32* %20, align 4
  %113 = load i32, i32* %18, align 4
  %114 = add nsw i32 %112, %113
  %115 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %116 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = sub nsw i32 %114, %117
  %119 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %120 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = sub nsw i32 %118, %121
  %123 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %124 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %123, i32 0, i32 14
  %125 = load i64, i64* %124, align 8
  %126 = trunc i64 %125 to i32
  %127 = sub nsw i32 %122, %126
  %128 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %129 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %128, i32 0, i32 13
  %130 = load i64, i64* %129, align 8
  %131 = trunc i64 %130 to i32
  %132 = sub nsw i32 %127, %131
  %133 = sitofp i32 %132 to float
  %134 = load float, float* %24, align 4
  %135 = load i32, i32* %18, align 4
  %136 = load i32, i32* %19, align 4
  %137 = call i32 @materialui_draw_thumbnail(%struct.TYPE_17__* %107, i32* %108, i32* %111, float %133, float %134, i32 %135, i32 %136, float 1.000000e+00)
  %138 = load i8*, i8** %21, align 8
  %139 = call i32 @string_is_empty(i8* %138)
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %291, label %141

141:                                              ; preds = %78
  store float 0.000000e+00, float* %25, align 4
  %142 = load float, float* %24, align 4
  %143 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %144 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %143, i32 0, i32 8
  %145 = load i64, i64* %144, align 8
  %146 = sitofp i64 %145 to float
  %147 = fadd float %142, %146
  %148 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %149 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %148, i32 0, i32 7
  %150 = load i64, i64* %149, align 8
  %151 = sitofp i64 %150 to float
  %152 = fdiv float %151, 1.000000e+01
  %153 = fadd float %147, %152
  %154 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %155 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %154, i32 0, i32 6
  %156 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %156, i32 0, i32 1
  %158 = load i64, i64* %157, align 8
  %159 = sitofp i64 %158 to float
  %160 = fmul float 9.000000e+00, %159
  %161 = fdiv float %160, 2.000000e+01
  %162 = fadd float %153, %161
  store float %162, float* %26, align 4
  %163 = load i32, i32* %20, align 4
  %164 = icmp ne i32 %163, 0
  %165 = zext i1 %164 to i32
  store i32 %165, i32* %27, align 4
  %166 = getelementptr inbounds [255 x i8], [255 x i8]* %28, i64 0, i64 0
  store i8 0, i8* %166, align 16
  %167 = load i32, i32* %22, align 4
  %168 = icmp sgt i32 %167, 0
  br i1 %168, label %169, label %290

169:                                              ; preds = %141
  %170 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %171 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %170, i32 0, i32 12
  %172 = load i64, i64* %171, align 8
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %203

174:                                              ; preds = %169
  %175 = load i32, i32* %22, align 4
  %176 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %177 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %176, i32 0, i32 11
  %178 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %177, i32 0, i32 1
  store i32 %175, i32* %178, align 4
  %179 = load i8*, i8** %21, align 8
  %180 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %181 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %180, i32 0, i32 11
  %182 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %181, i32 0, i32 2
  store i8* %179, i8** %182, align 8
  %183 = getelementptr inbounds [255 x i8], [255 x i8]* %28, i64 0, i64 0
  %184 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %185 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %184, i32 0, i32 11
  %186 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %185, i32 0, i32 3
  store i8* %183, i8** %186, align 8
  %187 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %188 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %187, i32 0, i32 11
  %189 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %188, i32 0, i32 4
  store i32 255, i32* %189, align 8
  %190 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %191 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %190, i32 0, i32 11
  %192 = call i32 @menu_animation_ticker_smooth(%struct.TYPE_18__* %191)
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %202, label %194

194:                                              ; preds = %174
  %195 = load i32, i32* %22, align 4
  %196 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %197 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %196, i32 0, i32 3
  %198 = load i32, i32* %197, align 4
  %199 = sub nsw i32 %195, %198
  %200 = sitofp i32 %199 to float
  %201 = fdiv float %200, 2.000000e+00
  store float %201, float* %25, align 4
  br label %202

202:                                              ; preds = %194, %174
  br label %242

203:                                              ; preds = %169
  %204 = getelementptr inbounds [255 x i8], [255 x i8]* %28, i64 0, i64 0
  %205 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %206 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %205, i32 0, i32 10
  %207 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %206, i32 0, i32 1
  store i8* %204, i8** %207, align 8
  %208 = load i32, i32* %22, align 4
  %209 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %210 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %209, i32 0, i32 6
  %211 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %210, i32 0, i32 0
  %212 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = sdiv i32 %208, %213
  %215 = sext i32 %214 to i64
  %216 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %217 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %216, i32 0, i32 10
  %218 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %217, i32 0, i32 2
  store i64 %215, i64* %218, align 8
  %219 = load i8*, i8** %21, align 8
  %220 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %221 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %220, i32 0, i32 10
  %222 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %221, i32 0, i32 3
  store i8* %219, i8** %222, align 8
  %223 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %224 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %223, i32 0, i32 10
  %225 = call i32 @menu_animation_ticker(%struct.TYPE_19__* %224)
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %241, label %227

227:                                              ; preds = %203
  %228 = getelementptr inbounds [255 x i8], [255 x i8]* %28, i64 0, i64 0
  %229 = call i32 @utf8len(i8* %228)
  %230 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %231 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %230, i32 0, i32 6
  %232 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %231, i32 0, i32 0
  %233 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 8
  %235 = mul nsw i32 %229, %234
  store i32 %235, i32* %29, align 4
  %236 = load i32, i32* %22, align 4
  %237 = load i32, i32* %29, align 4
  %238 = sub nsw i32 %236, %237
  %239 = sitofp i32 %238 to float
  %240 = fdiv float %239, 2.000000e+00
  store float %240, float* %25, align 4
  br label %241

241:                                              ; preds = %227, %203
  br label %242

242:                                              ; preds = %241, %202
  %243 = load i32, i32* %20, align 4
  %244 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %245 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %244, i32 0, i32 9
  %246 = load i64, i64* %245, align 8
  %247 = trunc i64 %246 to i32
  %248 = add nsw i32 %243, %247
  %249 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %250 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 8
  %252 = add nsw i32 %248, %251
  %253 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %254 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %253, i32 0, i32 1
  %255 = load i32, i32* %254, align 4
  %256 = add nsw i32 %252, %255
  %257 = sitofp i32 %256 to float
  %258 = load float, float* %25, align 4
  %259 = fadd float %258, %257
  store float %259, float* %25, align 4
  %260 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %261 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %260, i32 0, i32 6
  %262 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %261, i32 0, i32 0
  %263 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %262, i32 0, i32 2
  %264 = load i32, i32* %263, align 8
  %265 = getelementptr inbounds [255 x i8], [255 x i8]* %28, i64 0, i64 0
  %266 = load float, float* %25, align 4
  %267 = load float, float* %26, align 4
  %268 = load i32, i32* %18, align 4
  %269 = load i32, i32* %19, align 4
  %270 = load i32, i32* %15, align 4
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %275, label %272

272:                                              ; preds = %242
  %273 = load i32, i32* %16, align 4
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %275, label %280

275:                                              ; preds = %272, %242
  %276 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %277 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %276, i32 0, i32 4
  %278 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %277, i32 0, i32 2
  %279 = load i32, i32* %278, align 8
  br label %285

280:                                              ; preds = %272
  %281 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %282 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %281, i32 0, i32 4
  %283 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %282, i32 0, i32 1
  %284 = load i32, i32* %283, align 4
  br label %285

285:                                              ; preds = %280, %275
  %286 = phi i32 [ %279, %275 ], [ %284, %280 ]
  %287 = load i32, i32* @TEXT_ALIGN_LEFT, align 4
  %288 = load i32, i32* %27, align 4
  %289 = call i32 @menu_display_draw_text(i32 %264, i8* %265, float %266, float %267, i32 %268, i32 %269, i32 %286, i32 %287, float 1.000000e+00, i32 0, i32 0, i32 %288)
  br label %290

290:                                              ; preds = %285, %141
  br label %291

291:                                              ; preds = %290, %78
  %292 = load i32, i32* %22, align 4
  %293 = icmp sgt i32 %292, 0
  br i1 %293, label %294, label %336

294:                                              ; preds = %291
  %295 = load i32*, i32** %12, align 8
  %296 = load i32, i32* %20, align 4
  %297 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %298 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %297, i32 0, i32 0
  %299 = load i32, i32* %298, align 8
  %300 = add nsw i32 %296, %299
  %301 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %302 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %301, i32 0, i32 1
  %303 = load i32, i32* %302, align 4
  %304 = add nsw i32 %300, %303
  %305 = sitofp i32 %304 to float
  %306 = load float, float* %24, align 4
  %307 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %308 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %307, i32 0, i32 8
  %309 = load i64, i64* %308, align 8
  %310 = sitofp i64 %309 to float
  %311 = fadd float %306, %310
  %312 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %313 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %312, i32 0, i32 7
  %314 = load i64, i64* %313, align 8
  %315 = sitofp i64 %314 to float
  %316 = fdiv float %315, 1.000000e+01
  %317 = fadd float %311, %316
  %318 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %319 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %318, i32 0, i32 6
  %320 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %319, i32 0, i32 0
  %321 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %320, i32 0, i32 1
  %322 = load i64, i64* %321, align 8
  %323 = sitofp i64 %322 to float
  %324 = fadd float %317, %323
  %325 = load i32, i32* %22, align 4
  %326 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %327 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %326, i32 0, i32 5
  %328 = load i32, i32* %327, align 4
  %329 = load i32, i32* %18, align 4
  %330 = load i32, i32* %19, align 4
  %331 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %332 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %331, i32 0, i32 4
  %333 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %332, i32 0, i32 0
  %334 = load i32, i32* %333, align 8
  %335 = call i32 @menu_display_draw_quad(i32* %295, float %305, float %324, i32 %325, i32 %328, i32 %329, i32 %330, i32 %334)
  br label %336

336:                                              ; preds = %294, %291
  ret void
}

declare dso_local i32 @menu_entry_get_rich_label(i32*, i8**) #1

declare dso_local i32 @materialui_draw_thumbnail(%struct.TYPE_17__*, i32*, i32*, float, float, i32, i32, float) #1

declare dso_local i32 @string_is_empty(i8*) #1

declare dso_local i32 @menu_animation_ticker_smooth(%struct.TYPE_18__*) #1

declare dso_local i32 @menu_animation_ticker(%struct.TYPE_19__*) #1

declare dso_local i32 @utf8len(i8*) #1

declare dso_local i32 @menu_display_draw_text(i32, i8*, float, float, i32, i32, i32, i32, float, i32, i32, i32) #1

declare dso_local i32 @menu_display_draw_quad(i32*, float, float, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
