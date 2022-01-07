; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/drivers_display/extr_menu_display_ctr.c_menu_display_ctr_draw.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/drivers_display/extr_menu_display_ctr.c_menu_display_ctr_draw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i64, i64, i64, i64, %struct.TYPE_13__*, i64 }
%struct.TYPE_13__ = type { float* }
%struct.TYPE_16__ = type { i64 }
%struct.ctr_texture = type { i32, i32, %struct.TYPE_19__*, i32, i32 }
%struct.TYPE_19__ = type { i32, i32, i64, i64, i64, i64, i64, i64 }
%struct.TYPE_18__ = type { i64, %struct.TYPE_15__, %struct.TYPE_12__ }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_19__*, %struct.TYPE_19__* }
%struct.TYPE_12__ = type { i32, i32, i32 }

@CTR_TOP_FRAMEBUFFER_WIDTH = common dso_local global i32 0, align 4
@CTR_TOP_FRAMEBUFFER_HEIGHT = common dso_local global i32 0, align 4
@GPU_SHORT = common dso_local global i32 0, align 4
@GPU_TEXTURE0 = common dso_local global i32 0, align 4
@GPU_CONSTANT = common dso_local global i32 0, align 4
@GPU_MODULATE = common dso_local global i32 0, align 4
@GPU_TEXUNIT0 = common dso_local global i32 0, align 4
@GPU_LINEAR = common dso_local global i32 0, align 4
@GPU_CLAMP_TO_EDGE = common dso_local global i32 0, align 4
@GPU_RGBA8 = common dso_local global i32 0, align 4
@CTR_VIDEO_MODE_2D_800x240 = common dso_local global i64 0, align 8
@GPU_GEOMETRY_PRIM = common dso_local global i32 0, align 4
@CTR_VIDEO_MODE_3D = common dso_local global i64 0, align 8
@GPU_REPLACE = common dso_local global i32 0, align 4
@GPU_TEVOP_RGB_SRC_COLOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_17__*, %struct.TYPE_16__*)* @menu_display_ctr_draw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @menu_display_ctr_draw(%struct.TYPE_17__* %0, %struct.TYPE_16__* %1) #0 {
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca %struct.ctr_texture*, align 8
  %6 = alloca float*, align 8
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_19__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %3, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %4, align 8
  store %struct.ctr_texture* null, %struct.ctr_texture** %5, align 8
  store float* null, float** %6, align 8
  %14 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %17, %struct.TYPE_18__** %7, align 8
  %18 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %19 = icmp ne %struct.TYPE_18__* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %22 = icmp ne %struct.TYPE_17__* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %20, %2
  br label %245

24:                                               ; preds = %20
  %25 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %25, i32 0, i32 5
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to %struct.ctr_texture*
  store %struct.ctr_texture* %28, %struct.ctr_texture** %5, align 8
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %29, i32 0, i32 4
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 0
  %33 = load float*, float** %32, align 8
  store float* %33, float** %6, align 8
  %34 = load %struct.ctr_texture*, %struct.ctr_texture** %5, align 8
  %35 = icmp ne %struct.ctr_texture* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %24
  br label %245

37:                                               ; preds = %24
  %38 = load i32, i32* @CTR_TOP_FRAMEBUFFER_WIDTH, align 4
  %39 = load i32, i32* @CTR_TOP_FRAMEBUFFER_HEIGHT, align 4
  %40 = load %struct.ctr_texture*, %struct.ctr_texture** %5, align 8
  %41 = getelementptr inbounds %struct.ctr_texture, %struct.ctr_texture* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.ctr_texture*, %struct.ctr_texture** %5, align 8
  %44 = getelementptr inbounds %struct.ctr_texture, %struct.ctr_texture* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @ctr_set_scale_vector(i32* %8, i32 %38, i32 %39, i32 %42, i32 %45)
  %47 = bitcast i32* %8 to float*
  %48 = call i32 @ctrGuSetVertexShaderFloatUniform(i32 0, float* %47, i32 1)
  %49 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = sub nsw i32 %56, %60
  %62 = sub nsw i32 %52, %61
  %63 = icmp slt i32 %62, 1
  br i1 %63, label %64, label %72

64:                                               ; preds = %37
  %65 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 1
  store i32 %68, i32* %71, align 4
  br label %72

72:                                               ; preds = %64, %37
  %73 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %75, align 4
  %78 = sext i32 %76 to i64
  %79 = inttoptr i64 %78 to %struct.TYPE_19__*
  store %struct.TYPE_19__* %79, %struct.TYPE_19__** %9, align 8
  %80 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %80, i32 0, i32 3
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %84 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %83, i32 0, i32 6
  store i64 %82, i64* %84, align 8
  %85 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = sub nsw i64 240, %87
  %89 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = sub nsw i64 %88, %91
  %93 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %94 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %93, i32 0, i32 4
  store i64 %92, i64* %94, align 8
  %95 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %96 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %95, i32 0, i32 6
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = add nsw i64 %97, %100
  %102 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %103 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %102, i32 0, i32 7
  store i64 %101, i64* %103, align 8
  %104 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %105 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %104, i32 0, i32 4
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = add nsw i64 %106, %109
  %111 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %112 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %111, i32 0, i32 5
  store i64 %110, i64* %112, align 8
  %113 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %114 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %113, i32 0, i32 3
  store i64 0, i64* %114, align 8
  %115 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %116 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %115, i32 0, i32 2
  store i64 0, i64* %116, align 8
  %117 = load %struct.ctr_texture*, %struct.ctr_texture** %5, align 8
  %118 = getelementptr inbounds %struct.ctr_texture, %struct.ctr_texture* %117, i32 0, i32 4
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %121 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %120, i32 0, i32 1
  store i32 %119, i32* %121, align 4
  %122 = load %struct.ctr_texture*, %struct.ctr_texture** %5, align 8
  %123 = getelementptr inbounds %struct.ctr_texture, %struct.ctr_texture* %122, i32 0, i32 3
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %126 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %125, i32 0, i32 0
  store i32 %124, i32* %126, align 8
  %127 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %128 = call i32 @VIRT_TO_PHYS(%struct.TYPE_19__* %127)
  %129 = load i32, i32* @GPU_SHORT, align 4
  %130 = call i32 @CTRGU_ATTRIBFMT(i32 %129, i32 4)
  %131 = shl i32 %130, 0
  %132 = load i32, i32* @GPU_SHORT, align 4
  %133 = call i32 @CTRGU_ATTRIBFMT(i32 %132, i32 4)
  %134 = shl i32 %133, 4
  %135 = or i32 %131, %134
  %136 = call i32 @ctrGuSetAttributeBuffers(i32 2, i32 %128, i32 %135, i32 56)
  %137 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %138 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %137, i32 0, i32 4
  %139 = load %struct.TYPE_13__*, %struct.TYPE_13__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %139, i32 0, i32 0
  %141 = load float*, float** %140, align 8
  store float* %141, float** %6, align 8
  %142 = load float*, float** %6, align 8
  %143 = getelementptr inbounds float, float* %142, i32 1
  store float* %143, float** %6, align 8
  %144 = load float, float* %142, align 4
  %145 = fmul float %144, 2.550000e+02
  %146 = fptosi float %145 to i32
  store i32 %146, i32* %10, align 4
  %147 = load float*, float** %6, align 8
  %148 = getelementptr inbounds float, float* %147, i32 1
  store float* %148, float** %6, align 8
  %149 = load float, float* %147, align 4
  %150 = fmul float %149, 2.550000e+02
  %151 = fptosi float %150 to i32
  store i32 %151, i32* %11, align 4
  %152 = load float*, float** %6, align 8
  %153 = getelementptr inbounds float, float* %152, i32 1
  store float* %153, float** %6, align 8
  %154 = load float, float* %152, align 4
  %155 = fmul float %154, 2.550000e+02
  %156 = fptosi float %155 to i32
  store i32 %156, i32* %12, align 4
  %157 = load float*, float** %6, align 8
  %158 = getelementptr inbounds float, float* %157, i32 1
  store float* %158, float** %6, align 8
  %159 = load float, float* %157, align 4
  %160 = fmul float %159, 2.550000e+02
  %161 = fptosi float %160 to i32
  store i32 %161, i32* %13, align 4
  %162 = load i32, i32* @GPU_TEXTURE0, align 4
  %163 = load i32, i32* @GPU_CONSTANT, align 4
  %164 = call i32 @GPU_TEVSOURCES(i32 %162, i32 %163, i32 0)
  %165 = load i32, i32* @GPU_TEXTURE0, align 4
  %166 = load i32, i32* @GPU_CONSTANT, align 4
  %167 = call i32 @GPU_TEVSOURCES(i32 %165, i32 %166, i32 0)
  %168 = load i32, i32* @GPU_MODULATE, align 4
  %169 = load i32, i32* @GPU_MODULATE, align 4
  %170 = load i32, i32* %10, align 4
  %171 = load i32, i32* %11, align 4
  %172 = load i32, i32* %12, align 4
  %173 = load i32, i32* %13, align 4
  %174 = call i32 @COLOR_ABGR(i32 %170, i32 %171, i32 %172, i32 %173)
  %175 = call i32 @GPU_SetTexEnv(i32 0, i32 %164, i32 %167, i32 0, i32 0, i32 %168, i32 %169, i32 %174)
  %176 = load i32, i32* @GPU_TEXUNIT0, align 4
  %177 = load %struct.ctr_texture*, %struct.ctr_texture** %5, align 8
  %178 = getelementptr inbounds %struct.ctr_texture, %struct.ctr_texture* %177, i32 0, i32 2
  %179 = load %struct.TYPE_19__*, %struct.TYPE_19__** %178, align 8
  %180 = call i32 @VIRT_TO_PHYS(%struct.TYPE_19__* %179)
  %181 = load %struct.ctr_texture*, %struct.ctr_texture** %5, align 8
  %182 = getelementptr inbounds %struct.ctr_texture, %struct.ctr_texture* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = load %struct.ctr_texture*, %struct.ctr_texture** %5, align 8
  %185 = getelementptr inbounds %struct.ctr_texture, %struct.ctr_texture* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = load i32, i32* @GPU_LINEAR, align 4
  %188 = call i32 @GPU_TEXTURE_MAG_FILTER(i32 %187)
  %189 = load i32, i32* @GPU_LINEAR, align 4
  %190 = call i32 @GPU_TEXTURE_MIN_FILTER(i32 %189)
  %191 = or i32 %188, %190
  %192 = load i32, i32* @GPU_CLAMP_TO_EDGE, align 4
  %193 = call i32 @GPU_TEXTURE_WRAP_S(i32 %192)
  %194 = or i32 %191, %193
  %195 = load i32, i32* @GPU_CLAMP_TO_EDGE, align 4
  %196 = call i32 @GPU_TEXTURE_WRAP_T(i32 %195)
  %197 = or i32 %194, %196
  %198 = load i32, i32* @GPU_RGBA8, align 4
  %199 = call i32 @ctrGuSetTexture(i32 %176, i32 %180, i32 %183, i32 %186, i32 %197, i32 %198)
  %200 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %201 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %200, i32 0, i32 1
  %202 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %202, i32 0, i32 1
  %204 = load %struct.TYPE_19__*, %struct.TYPE_19__** %203, align 8
  %205 = call i32 @VIRT_TO_PHYS(%struct.TYPE_19__* %204)
  %206 = load i32, i32* @CTR_TOP_FRAMEBUFFER_HEIGHT, align 4
  %207 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %208 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %207, i32 0, i32 0
  %209 = load i64, i64* %208, align 8
  %210 = load i64, i64* @CTR_VIDEO_MODE_2D_800x240, align 8
  %211 = icmp eq i64 %209, %210
  br i1 %211, label %212, label %215

212:                                              ; preds = %72
  %213 = load i32, i32* @CTR_TOP_FRAMEBUFFER_WIDTH, align 4
  %214 = mul nsw i32 %213, 2
  br label %217

215:                                              ; preds = %72
  %216 = load i32, i32* @CTR_TOP_FRAMEBUFFER_WIDTH, align 4
  br label %217

217:                                              ; preds = %215, %212
  %218 = phi i32 [ %214, %212 ], [ %216, %215 ]
  %219 = call i32 @GPU_SetViewport(i32* null, i32 %205, i32 0, i32 0, i32 %206, i32 %218)
  %220 = load i32, i32* @GPU_GEOMETRY_PRIM, align 4
  %221 = call i32 @GPU_DrawArray(i32 %220, i32 0, i32 1)
  %222 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %223 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %222, i32 0, i32 0
  %224 = load i64, i64* %223, align 8
  %225 = load i64, i64* @CTR_VIDEO_MODE_3D, align 8
  %226 = icmp eq i64 %224, %225
  br i1 %226, label %227, label %239

227:                                              ; preds = %217
  %228 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %229 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %228, i32 0, i32 1
  %230 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %229, i32 0, i32 0
  %231 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %230, i32 0, i32 0
  %232 = load %struct.TYPE_19__*, %struct.TYPE_19__** %231, align 8
  %233 = call i32 @VIRT_TO_PHYS(%struct.TYPE_19__* %232)
  %234 = load i32, i32* @CTR_TOP_FRAMEBUFFER_HEIGHT, align 4
  %235 = load i32, i32* @CTR_TOP_FRAMEBUFFER_WIDTH, align 4
  %236 = call i32 @GPU_SetViewport(i32* null, i32 %233, i32 0, i32 0, i32 %234, i32 %235)
  %237 = load i32, i32* @GPU_GEOMETRY_PRIM, align 4
  %238 = call i32 @GPU_DrawArray(i32 %237, i32 0, i32 1)
  br label %239

239:                                              ; preds = %227, %217
  %240 = load i32, i32* @GPU_TEXTURE0, align 4
  %241 = load i32, i32* @GPU_TEXTURE0, align 4
  %242 = load i32, i32* @GPU_REPLACE, align 4
  %243 = load i32, i32* @GPU_REPLACE, align 4
  %244 = call i32 @GPU_SetTexEnv(i32 0, i32 %240, i32 %241, i32 0, i32 0, i32 %242, i32 %243, i32 0)
  br label %245

245:                                              ; preds = %239, %36, %23
  ret void
}

declare dso_local i32 @ctr_set_scale_vector(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @ctrGuSetVertexShaderFloatUniform(i32, float*, i32) #1

declare dso_local i32 @ctrGuSetAttributeBuffers(i32, i32, i32, i32) #1

declare dso_local i32 @VIRT_TO_PHYS(%struct.TYPE_19__*) #1

declare dso_local i32 @CTRGU_ATTRIBFMT(i32, i32) #1

declare dso_local i32 @GPU_SetTexEnv(i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @GPU_TEVSOURCES(i32, i32, i32) #1

declare dso_local i32 @COLOR_ABGR(i32, i32, i32, i32) #1

declare dso_local i32 @ctrGuSetTexture(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @GPU_TEXTURE_MAG_FILTER(i32) #1

declare dso_local i32 @GPU_TEXTURE_MIN_FILTER(i32) #1

declare dso_local i32 @GPU_TEXTURE_WRAP_S(i32) #1

declare dso_local i32 @GPU_TEXTURE_WRAP_T(i32) #1

declare dso_local i32 @GPU_SetViewport(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @GPU_DrawArray(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
