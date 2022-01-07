; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers_renderchain/extr_d3d9_hlsl_renderchain.c_hlsl_d3d9_renderchain_render.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers_renderchain/extr_d3d9_hlsl_renderchain.c_hlsl_d3d9_renderchain_render.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i64 }
%struct.shader_pass = type { %struct.TYPE_16__, i32, i32, i32 }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_18__ = type { %struct.TYPE_15__, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_20__*, i32, i32, %struct.TYPE_17__*, i32 }
%struct.TYPE_20__ = type { i32, i32, float, float, i32 }
%struct.TYPE_17__ = type { i32, i32* }

@D3DCLEAR_TARGET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_19__*, i32*, i8*, i32, i32, i32, i32)* @hlsl_d3d9_renderchain_render to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hlsl_d3d9_renderchain_render(%struct.TYPE_19__* %0, i32* %1, i8* %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.TYPE_19__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.shader_pass*, align 8
  %23 = alloca %struct.shader_pass*, align 8
  %24 = alloca %struct.TYPE_18__*, align 8
  %25 = alloca %struct.TYPE_20__, align 4
  %26 = alloca %struct.shader_pass*, align 8
  %27 = alloca %struct.shader_pass*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %8, align 8
  store i32* %1, i32** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  store %struct.shader_pass* null, %struct.shader_pass** %22, align 8
  store %struct.shader_pass* null, %struct.shader_pass** %23, align 8
  %28 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = inttoptr i64 %30 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %31, %struct.TYPE_18__** %24, align 8
  %32 = load %struct.TYPE_18__*, %struct.TYPE_18__** %24, align 8
  %33 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %32, i32 0, i32 0
  %34 = call i32 @d3d9_renderchain_start_render(%struct.TYPE_15__* %33)
  %35 = load i32, i32* %11, align 4
  store i32 %35, i32* %18, align 4
  %36 = load i32, i32* %12, align 4
  store i32 %36, i32* %19, align 4
  %37 = load %struct.TYPE_18__*, %struct.TYPE_18__** %24, align 8
  %38 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i32 0, i32 3
  %40 = load %struct.TYPE_17__*, %struct.TYPE_17__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  %44 = bitcast i32* %43 to %struct.shader_pass*
  store %struct.shader_pass* %44, %struct.shader_pass** %23, align 8
  %45 = load %struct.shader_pass*, %struct.shader_pass** %23, align 8
  %46 = getelementptr inbounds %struct.shader_pass, %struct.shader_pass* %45, i32 0, i32 0
  %47 = load i32, i32* %18, align 4
  %48 = load i32, i32* %19, align 4
  %49 = load %struct.TYPE_18__*, %struct.TYPE_18__** %24, align 8
  %50 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_20__*, %struct.TYPE_20__** %51, align 8
  %53 = call i32 @d3d9_convert_geometry(%struct.TYPE_16__* %46, i32* %20, i32* %21, i32 %47, i32 %48, %struct.TYPE_20__* %52)
  %54 = load %struct.shader_pass*, %struct.shader_pass** %23, align 8
  %55 = getelementptr inbounds %struct.shader_pass, %struct.shader_pass* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i8*, i8** %10, align 8
  %58 = load %struct.shader_pass*, %struct.shader_pass** %23, align 8
  %59 = getelementptr inbounds %struct.shader_pass, %struct.shader_pass* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.shader_pass*, %struct.shader_pass** %23, align 8
  %63 = getelementptr inbounds %struct.shader_pass, %struct.shader_pass* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %11, align 4
  %67 = load i32, i32* %12, align 4
  %68 = load %struct.shader_pass*, %struct.shader_pass** %23, align 8
  %69 = getelementptr inbounds %struct.shader_pass, %struct.shader_pass* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.shader_pass*, %struct.shader_pass** %23, align 8
  %72 = getelementptr inbounds %struct.shader_pass, %struct.shader_pass* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %13, align 4
  %75 = load %struct.TYPE_18__*, %struct.TYPE_18__** %24, align 8
  %76 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @d3d9_renderchain_blit_to_texture(i32 %56, i8* %57, i32 %61, i32 %65, i32 %66, i32 %67, i32 %70, i32 %73, i32 %74, i32 %78)
  %80 = load %struct.TYPE_18__*, %struct.TYPE_18__** %24, align 8
  %81 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = bitcast i32* %15 to i8**
  %85 = call i32 @d3d9_device_get_render_target(i32 %83, i32 0, i8** %84)
  store i32 0, i32* %17, align 4
  br label %86

86:                                               ; preds = %194, %7
  %87 = load i32, i32* %17, align 4
  %88 = load %struct.TYPE_18__*, %struct.TYPE_18__** %24, align 8
  %89 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %89, i32 0, i32 3
  %91 = load %struct.TYPE_17__*, %struct.TYPE_17__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = sub nsw i32 %93, 1
  %95 = icmp ult i32 %87, %94
  br i1 %95, label %96, label %197

96:                                               ; preds = %86
  %97 = bitcast %struct.TYPE_20__* %25 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %97, i8 0, i64 20, i1 false)
  %98 = load %struct.TYPE_18__*, %struct.TYPE_18__** %24, align 8
  %99 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %99, i32 0, i32 3
  %101 = load %struct.TYPE_17__*, %struct.TYPE_17__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %101, i32 0, i32 1
  %103 = load i32*, i32** %102, align 8
  %104 = load i32, i32* %17, align 4
  %105 = zext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  %107 = bitcast i32* %106 to %struct.shader_pass*
  store %struct.shader_pass* %107, %struct.shader_pass** %26, align 8
  %108 = load %struct.TYPE_18__*, %struct.TYPE_18__** %24, align 8
  %109 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %109, i32 0, i32 3
  %111 = load %struct.TYPE_17__*, %struct.TYPE_17__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %111, i32 0, i32 1
  %113 = load i32*, i32** %112, align 8
  %114 = load i32, i32* %17, align 4
  %115 = add i32 %114, 1
  %116 = zext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %113, i64 %116
  %118 = bitcast i32* %117 to %struct.shader_pass*
  store %struct.shader_pass* %118, %struct.shader_pass** %27, align 8
  %119 = load %struct.shader_pass*, %struct.shader_pass** %27, align 8
  %120 = getelementptr inbounds %struct.shader_pass, %struct.shader_pass* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = bitcast i32* %16 to i8**
  %123 = call i32 @d3d9_texture_get_surface_level(i32 %121, i32 0, i8** %122)
  %124 = load %struct.TYPE_18__*, %struct.TYPE_18__** %24, align 8
  %125 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* %16, align 4
  %129 = call i32 @d3d9_device_set_render_target(i32 %127, i32 0, i32 %128)
  %130 = load %struct.shader_pass*, %struct.shader_pass** %26, align 8
  %131 = getelementptr inbounds %struct.shader_pass, %struct.shader_pass* %130, i32 0, i32 0
  %132 = load i32, i32* %18, align 4
  %133 = load i32, i32* %19, align 4
  %134 = load %struct.TYPE_18__*, %struct.TYPE_18__** %24, align 8
  %135 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %135, i32 0, i32 0
  %137 = load %struct.TYPE_20__*, %struct.TYPE_20__** %136, align 8
  %138 = call i32 @d3d9_convert_geometry(%struct.TYPE_16__* %131, i32* %20, i32* %21, i32 %132, i32 %133, %struct.TYPE_20__* %137)
  %139 = load %struct.shader_pass*, %struct.shader_pass** %27, align 8
  %140 = getelementptr inbounds %struct.shader_pass, %struct.shader_pass* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %25, i32 0, i32 0
  store i32 %142, i32* %143, align 4
  %144 = load %struct.shader_pass*, %struct.shader_pass** %27, align 8
  %145 = getelementptr inbounds %struct.shader_pass, %struct.shader_pass* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %25, i32 0, i32 1
  store i32 %147, i32* %148, align 4
  %149 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %25, i32 0, i32 2
  store float 0.000000e+00, float* %149, align 4
  %150 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %25, i32 0, i32 3
  store float 1.000000e+00, float* %150, align 4
  %151 = load %struct.TYPE_18__*, %struct.TYPE_18__** %24, align 8
  %152 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 8
  %155 = call i32 @d3d9_set_viewports(i32 %154, %struct.TYPE_20__* %25)
  %156 = load %struct.TYPE_18__*, %struct.TYPE_18__** %24, align 8
  %157 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 8
  %160 = load i32, i32* @D3DCLEAR_TARGET, align 4
  %161 = call i32 @d3d9_clear(i32 %159, i32 0, i32 0, i32 %160, i32 0, i32 1, i32 0)
  %162 = load i32, i32* %20, align 4
  %163 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %25, i32 0, i32 0
  store i32 %162, i32* %163, align 4
  %164 = load i32, i32* %21, align 4
  %165 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %25, i32 0, i32 1
  store i32 %164, i32* %165, align 4
  %166 = load %struct.TYPE_18__*, %struct.TYPE_18__** %24, align 8
  %167 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 8
  %170 = call i32 @d3d9_set_viewports(i32 %169, %struct.TYPE_20__* %25)
  %171 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %172 = load %struct.TYPE_18__*, %struct.TYPE_18__** %24, align 8
  %173 = load %struct.shader_pass*, %struct.shader_pass** %26, align 8
  %174 = load i32, i32* %18, align 4
  %175 = load i32, i32* %19, align 4
  %176 = load i32, i32* %20, align 4
  %177 = load i32, i32* %21, align 4
  %178 = load i32, i32* %20, align 4
  %179 = load i32, i32* %21, align 4
  %180 = load %struct.TYPE_18__*, %struct.TYPE_18__** %24, align 8
  %181 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %181, i32 0, i32 2
  %183 = load i32, i32* %182, align 4
  %184 = call i32 @hlsl_d3d9_renderchain_set_vertices(%struct.TYPE_19__* %171, %struct.TYPE_18__* %172, %struct.shader_pass* %173, i32 %174, i32 %175, i32 %176, i32 %177, i32 %178, i32 %179, i32 %183, i32 0)
  %185 = load %struct.TYPE_18__*, %struct.TYPE_18__** %24, align 8
  %186 = load %struct.shader_pass*, %struct.shader_pass** %26, align 8
  %187 = load i32, i32* %17, align 4
  %188 = add i32 %187, 1
  %189 = call i32 @hlsl_d3d9_renderchain_render_pass(%struct.TYPE_18__* %185, %struct.shader_pass* %186, i32 %188)
  %190 = load i32, i32* %20, align 4
  store i32 %190, i32* %18, align 4
  %191 = load i32, i32* %21, align 4
  store i32 %191, i32* %19, align 4
  %192 = load i32, i32* %16, align 4
  %193 = call i32 @d3d9_surface_free(i32 %192)
  br label %194

194:                                              ; preds = %96
  %195 = load i32, i32* %17, align 4
  %196 = add i32 %195, 1
  store i32 %196, i32* %17, align 4
  br label %86

197:                                              ; preds = %86
  %198 = load %struct.TYPE_18__*, %struct.TYPE_18__** %24, align 8
  %199 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 8
  %202 = load i32, i32* %15, align 4
  %203 = call i32 @d3d9_device_set_render_target(i32 %201, i32 0, i32 %202)
  %204 = load %struct.TYPE_18__*, %struct.TYPE_18__** %24, align 8
  %205 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %205, i32 0, i32 3
  %207 = load %struct.TYPE_17__*, %struct.TYPE_17__** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %207, i32 0, i32 1
  %209 = load i32*, i32** %208, align 8
  %210 = load %struct.TYPE_18__*, %struct.TYPE_18__** %24, align 8
  %211 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %210, i32 0, i32 0
  %212 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %211, i32 0, i32 3
  %213 = load %struct.TYPE_17__*, %struct.TYPE_17__** %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  %216 = sub nsw i32 %215, 1
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i32, i32* %209, i64 %217
  %219 = bitcast i32* %218 to %struct.shader_pass*
  store %struct.shader_pass* %219, %struct.shader_pass** %22, align 8
  %220 = load %struct.shader_pass*, %struct.shader_pass** %22, align 8
  %221 = getelementptr inbounds %struct.shader_pass, %struct.shader_pass* %220, i32 0, i32 0
  %222 = load i32, i32* %18, align 4
  %223 = load i32, i32* %19, align 4
  %224 = load %struct.TYPE_18__*, %struct.TYPE_18__** %24, align 8
  %225 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %224, i32 0, i32 0
  %226 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %225, i32 0, i32 0
  %227 = load %struct.TYPE_20__*, %struct.TYPE_20__** %226, align 8
  %228 = call i32 @d3d9_convert_geometry(%struct.TYPE_16__* %221, i32* %20, i32* %21, i32 %222, i32 %223, %struct.TYPE_20__* %227)
  %229 = load %struct.TYPE_18__*, %struct.TYPE_18__** %24, align 8
  %230 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %229, i32 0, i32 0
  %231 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %230, i32 0, i32 1
  %232 = load i32, i32* %231, align 8
  %233 = load %struct.TYPE_18__*, %struct.TYPE_18__** %24, align 8
  %234 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %233, i32 0, i32 0
  %235 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %234, i32 0, i32 0
  %236 = load %struct.TYPE_20__*, %struct.TYPE_20__** %235, align 8
  %237 = call i32 @d3d9_set_viewports(i32 %232, %struct.TYPE_20__* %236)
  %238 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %239 = load %struct.TYPE_18__*, %struct.TYPE_18__** %24, align 8
  %240 = load %struct.shader_pass*, %struct.shader_pass** %22, align 8
  %241 = load i32, i32* %18, align 4
  %242 = load i32, i32* %19, align 4
  %243 = load i32, i32* %20, align 4
  %244 = load i32, i32* %21, align 4
  %245 = load %struct.TYPE_18__*, %struct.TYPE_18__** %24, align 8
  %246 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %245, i32 0, i32 0
  %247 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %246, i32 0, i32 0
  %248 = load %struct.TYPE_20__*, %struct.TYPE_20__** %247, align 8
  %249 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 4
  %251 = load %struct.TYPE_18__*, %struct.TYPE_18__** %24, align 8
  %252 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %251, i32 0, i32 0
  %253 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %252, i32 0, i32 0
  %254 = load %struct.TYPE_20__*, %struct.TYPE_20__** %253, align 8
  %255 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %254, i32 0, i32 1
  %256 = load i32, i32* %255, align 4
  %257 = load %struct.TYPE_18__*, %struct.TYPE_18__** %24, align 8
  %258 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %257, i32 0, i32 0
  %259 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %258, i32 0, i32 2
  %260 = load i32, i32* %259, align 4
  %261 = load i32, i32* %14, align 4
  %262 = call i32 @hlsl_d3d9_renderchain_set_vertices(%struct.TYPE_19__* %238, %struct.TYPE_18__* %239, %struct.shader_pass* %240, i32 %241, i32 %242, i32 %243, i32 %244, i32 %250, i32 %256, i32 %260, i32 %261)
  %263 = load %struct.TYPE_18__*, %struct.TYPE_18__** %24, align 8
  %264 = load %struct.shader_pass*, %struct.shader_pass** %22, align 8
  %265 = load %struct.TYPE_18__*, %struct.TYPE_18__** %24, align 8
  %266 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %265, i32 0, i32 0
  %267 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %266, i32 0, i32 3
  %268 = load %struct.TYPE_17__*, %struct.TYPE_17__** %267, align 8
  %269 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %268, i32 0, i32 0
  %270 = load i32, i32* %269, align 8
  %271 = call i32 @hlsl_d3d9_renderchain_render_pass(%struct.TYPE_18__* %263, %struct.shader_pass* %264, i32 %270)
  %272 = load %struct.TYPE_18__*, %struct.TYPE_18__** %24, align 8
  %273 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %272, i32 0, i32 0
  %274 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %273, i32 0, i32 2
  %275 = load i32, i32* %274, align 4
  %276 = add nsw i32 %275, 1
  store i32 %276, i32* %274, align 4
  %277 = load i32, i32* %15, align 4
  %278 = call i32 @d3d9_surface_free(i32 %277)
  %279 = load %struct.TYPE_18__*, %struct.TYPE_18__** %24, align 8
  %280 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %279, i32 0, i32 0
  %281 = call i32 @d3d9_renderchain_end_render(%struct.TYPE_15__* %280)
  %282 = load %struct.TYPE_18__*, %struct.TYPE_18__** %24, align 8
  %283 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %282, i32 0, i32 1
  %284 = load %struct.TYPE_18__*, %struct.TYPE_18__** %24, align 8
  %285 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %284, i32 0, i32 0
  %286 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %285, i32 0, i32 1
  %287 = load i32, i32* %286, align 8
  %288 = call i32 @d3d9_hlsl_bind_program(i32* %283, i32 %287)
  %289 = load %struct.TYPE_18__*, %struct.TYPE_18__** %24, align 8
  %290 = load %struct.TYPE_18__*, %struct.TYPE_18__** %24, align 8
  %291 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %290, i32 0, i32 1
  %292 = load %struct.TYPE_18__*, %struct.TYPE_18__** %24, align 8
  %293 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %292, i32 0, i32 0
  %294 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %293, i32 0, i32 0
  %295 = load %struct.TYPE_20__*, %struct.TYPE_20__** %294, align 8
  %296 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %295, i32 0, i32 0
  %297 = load i32, i32* %296, align 4
  %298 = load %struct.TYPE_18__*, %struct.TYPE_18__** %24, align 8
  %299 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %298, i32 0, i32 0
  %300 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %299, i32 0, i32 0
  %301 = load %struct.TYPE_20__*, %struct.TYPE_20__** %300, align 8
  %302 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %301, i32 0, i32 1
  %303 = load i32, i32* %302, align 4
  %304 = call i32 @hlsl_d3d9_renderchain_calc_and_set_shader_mvp(%struct.TYPE_18__* %289, i32* %291, i32 %297, i32 %303, i32 0)
  ret i32 1
}

declare dso_local i32 @d3d9_renderchain_start_render(%struct.TYPE_15__*) #1

declare dso_local i32 @d3d9_convert_geometry(%struct.TYPE_16__*, i32*, i32*, i32, i32, %struct.TYPE_20__*) #1

declare dso_local i32 @d3d9_renderchain_blit_to_texture(i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @d3d9_device_get_render_target(i32, i32, i8**) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @d3d9_texture_get_surface_level(i32, i32, i8**) #1

declare dso_local i32 @d3d9_device_set_render_target(i32, i32, i32) #1

declare dso_local i32 @d3d9_set_viewports(i32, %struct.TYPE_20__*) #1

declare dso_local i32 @d3d9_clear(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @hlsl_d3d9_renderchain_set_vertices(%struct.TYPE_19__*, %struct.TYPE_18__*, %struct.shader_pass*, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @hlsl_d3d9_renderchain_render_pass(%struct.TYPE_18__*, %struct.shader_pass*, i32) #1

declare dso_local i32 @d3d9_surface_free(i32) #1

declare dso_local i32 @d3d9_renderchain_end_render(%struct.TYPE_15__*) #1

declare dso_local i32 @d3d9_hlsl_bind_program(i32*, i32) #1

declare dso_local i32 @hlsl_d3d9_renderchain_calc_and_set_shader_mvp(%struct.TYPE_18__*, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
