; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_gx2_gfx.c_wiiu_init_frame_textures.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_gx2_gfx.c_wiiu_init_frame_textures.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { %struct.TYPE_25__*, %struct.TYPE_23__, %struct.TYPE_24__*, %struct.TYPE_21__, %struct.TYPE_18__, i64 }
%struct.TYPE_25__ = type { i32, %struct.TYPE_18__, %struct.TYPE_18__ }
%struct.TYPE_23__ = type { i32, i32 }
%struct.TYPE_24__ = type { i32, %struct.video_shader_pass* }
%struct.video_shader_pass = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i32, i32, i32, i32, i32, i32, i64, i64 }
%struct.TYPE_21__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i32, i32 }
%struct.TYPE_18__ = type { i32, %struct.TYPE_19__, i8* }
%struct.TYPE_19__ = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_18__*, i32, i8*, i8*, i32 }

@GX2_SURFACE_DIM_TEXTURE_2D = common dso_local global i8* null, align 8
@GX2_TILE_MODE_LINEAR_ALIGNED = common dso_local global i32 0, align 4
@GX2_SURFACE_FORMAT_UNORM_R8_G8_B8_A8 = common dso_local global i8* null, align 8
@_G = common dso_local global i32 0, align 4
@_B = common dso_local global i32 0, align 4
@_A = common dso_local global i32 0, align 4
@_1 = common dso_local global i32 0, align 4
@GX2_SURFACE_FORMAT_UNORM_R5_G6_B5 = common dso_local global i8* null, align 8
@_R = common dso_local global i32 0, align 4
@GX2_INVALIDATE_MODE_CPU_TEXTURE = common dso_local global i32 0, align 4
@GX2_SURFACE_FORMAT_FLOAT_R32_G32_B32_A32 = common dso_local global i8* null, align 8
@GX2_SURFACE_FORMAT_SRGB_R8_G8_B8_A8 = common dso_local global i8* null, align 8
@GX2_SURFACE_USE_TEXTURE = common dso_local global i32 0, align 4
@GX2_SURFACE_USE_COLOR_BUFFER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [65 x i8] c"failed to allocate Render target memory from MEM1. trying MEM2.\0A\00", align 1
@.str.1 = private unnamed_addr constant [75 x i8] c"failed to allocate Render target memory from MEM2. falling back to stock.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_26__*, i32, i32)* @wiiu_init_frame_textures to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wiiu_init_frame_textures(%struct.TYPE_26__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_26__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.video_shader_pass*, align 8
  store %struct.TYPE_26__* %0, %struct.TYPE_26__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %10, i32 0, i32 4
  %12 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %12, i32 0, i32 6
  %14 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %15 = call i32 @MEM2_free(%struct.TYPE_18__* %14)
  %16 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %16, i32 0, i32 2
  %18 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %19 = icmp ne %struct.TYPE_24__* %18, null
  br i1 %19, label %20, label %77

20:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  br label %21

21:                                               ; preds = %73, %20
  %22 = load i32, i32* %8, align 4
  %23 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %23, i32 0, i32 2
  %25 = load %struct.TYPE_24__*, %struct.TYPE_24__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp ult i32 %22, %27
  br i1 %28, label %29, label %76

29:                                               ; preds = %21
  %30 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_25__*, %struct.TYPE_25__** %31, align 8
  %33 = load i32, i32* %8, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %51

39:                                               ; preds = %29
  %40 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_25__*, %struct.TYPE_25__** %41, align 8
  %43 = load i32, i32* %8, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %47, i32 0, i32 6
  %49 = load %struct.TYPE_18__*, %struct.TYPE_18__** %48, align 8
  %50 = call i32 @MEM1_free(%struct.TYPE_18__* %49)
  br label %63

51:                                               ; preds = %29
  %52 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_25__*, %struct.TYPE_25__** %53, align 8
  %55 = load i32, i32* %8, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %59, i32 0, i32 6
  %61 = load %struct.TYPE_18__*, %struct.TYPE_18__** %60, align 8
  %62 = call i32 @MEM2_free(%struct.TYPE_18__* %61)
  br label %63

63:                                               ; preds = %51, %39
  %64 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_25__*, %struct.TYPE_25__** %65, align 8
  %67 = load i32, i32* %8, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %71, i32 0, i32 6
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %72, align 8
  br label %73

73:                                               ; preds = %63
  %74 = load i32, i32* %8, align 4
  %75 = add i32 %74, 1
  store i32 %75, i32* %8, align 4
  br label %21

76:                                               ; preds = %21
  br label %77

77:                                               ; preds = %76, %3
  %78 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %78, i32 0, i32 4
  %80 = call i32 @memset(%struct.TYPE_18__* %79, i32 0, i32 4)
  %81 = load i32, i32* %6, align 4
  %82 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %82, i32 0, i32 4
  %84 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %84, i32 0, i32 0
  store i32 %81, i32* %85, align 8
  %86 = load i32, i32* %7, align 4
  %87 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %87, i32 0, i32 4
  %89 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %89, i32 0, i32 1
  store i32 %86, i32* %90, align 4
  %91 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %91, i32 0, i32 4
  %93 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %93, i32 0, i32 2
  store i32 1, i32* %94, align 8
  %95 = load i8*, i8** @GX2_SURFACE_DIM_TEXTURE_2D, align 8
  %96 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %96, i32 0, i32 4
  %98 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %98, i32 0, i32 9
  store i8* %95, i8** %99, align 8
  %100 = load i32, i32* @GX2_TILE_MODE_LINEAR_ALIGNED, align 4
  %101 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %101, i32 0, i32 4
  %103 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %103, i32 0, i32 10
  store i32 %100, i32* %104, align 8
  %105 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %105, i32 0, i32 4
  %107 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %106, i32 0, i32 0
  store i32 1, i32* %107, align 8
  %108 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %108, i32 0, i32 5
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %126

112:                                              ; preds = %77
  %113 = load i8*, i8** @GX2_SURFACE_FORMAT_UNORM_R8_G8_B8_A8, align 8
  %114 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %114, i32 0, i32 4
  %116 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %116, i32 0, i32 8
  store i8* %113, i8** %117, align 8
  %118 = load i32, i32* @_G, align 4
  %119 = load i32, i32* @_B, align 4
  %120 = load i32, i32* @_A, align 4
  %121 = load i32, i32* @_1, align 4
  %122 = call i8* @GX2_COMP_SEL(i32 %118, i32 %119, i32 %120, i32 %121)
  %123 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %123, i32 0, i32 4
  %125 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %124, i32 0, i32 2
  store i8* %122, i8** %125, align 8
  br label %140

126:                                              ; preds = %77
  %127 = load i8*, i8** @GX2_SURFACE_FORMAT_UNORM_R5_G6_B5, align 8
  %128 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %128, i32 0, i32 4
  %130 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %130, i32 0, i32 8
  store i8* %127, i8** %131, align 8
  %132 = load i32, i32* @_B, align 4
  %133 = load i32, i32* @_G, align 4
  %134 = load i32, i32* @_R, align 4
  %135 = load i32, i32* @_1, align 4
  %136 = call i8* @GX2_COMP_SEL(i32 %132, i32 %133, i32 %134, i32 %135)
  %137 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %137, i32 0, i32 4
  %139 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %138, i32 0, i32 2
  store i8* %136, i8** %139, align 8
  br label %140

140:                                              ; preds = %126, %112
  %141 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %142 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %141, i32 0, i32 4
  %143 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %142, i32 0, i32 1
  %144 = call i32 @GX2CalcSurfaceSizeAndAlignment(%struct.TYPE_19__* %143)
  %145 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %146 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %145, i32 0, i32 4
  %147 = call i32 @GX2InitTextureRegs(%struct.TYPE_18__* %146)
  %148 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %149 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %148, i32 0, i32 4
  %150 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %150, i32 0, i32 3
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %154 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %153, i32 0, i32 4
  %155 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %154, i32 0, i32 1
  %156 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %155, i32 0, i32 7
  %157 = load i32, i32* %156, align 8
  %158 = call i8* @MEM2_alloc(i32 %152, i32 %157)
  %159 = bitcast i8* %158 to %struct.TYPE_18__*
  %160 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %161 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %160, i32 0, i32 4
  %162 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %161, i32 0, i32 1
  %163 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %162, i32 0, i32 6
  store %struct.TYPE_18__* %159, %struct.TYPE_18__** %163, align 8
  %164 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %165 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %164, i32 0, i32 4
  %166 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %165, i32 0, i32 1
  %167 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %166, i32 0, i32 6
  %168 = load %struct.TYPE_18__*, %struct.TYPE_18__** %167, align 8
  %169 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %170 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %169, i32 0, i32 4
  %171 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %170, i32 0, i32 1
  %172 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %171, i32 0, i32 3
  %173 = load i32, i32* %172, align 4
  %174 = call i32 @memset(%struct.TYPE_18__* %168, i32 0, i32 %173)
  %175 = load i32, i32* @GX2_INVALIDATE_MODE_CPU_TEXTURE, align 4
  %176 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %177 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %176, i32 0, i32 4
  %178 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %177, i32 0, i32 1
  %179 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %178, i32 0, i32 6
  %180 = load %struct.TYPE_18__*, %struct.TYPE_18__** %179, align 8
  %181 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %182 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %181, i32 0, i32 4
  %183 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %182, i32 0, i32 1
  %184 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %183, i32 0, i32 3
  %185 = load i32, i32* %184, align 4
  %186 = call i32 @GX2Invalidate(i32 %175, %struct.TYPE_18__* %180, i32 %185)
  %187 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %188 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %187, i32 0, i32 2
  %189 = load %struct.TYPE_24__*, %struct.TYPE_24__** %188, align 8
  %190 = icmp ne %struct.TYPE_24__* %189, null
  br i1 %190, label %191, label %620

191:                                              ; preds = %140
  store i32 0, i32* %8, align 4
  br label %192

192:                                              ; preds = %616, %191
  %193 = load i32, i32* %8, align 4
  %194 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %195 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %194, i32 0, i32 2
  %196 = load %struct.TYPE_24__*, %struct.TYPE_24__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = icmp ult i32 %193, %198
  br i1 %199, label %200, label %619

200:                                              ; preds = %192
  %201 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %202 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %201, i32 0, i32 2
  %203 = load %struct.TYPE_24__*, %struct.TYPE_24__** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %203, i32 0, i32 1
  %205 = load %struct.video_shader_pass*, %struct.video_shader_pass** %204, align 8
  %206 = load i32, i32* %8, align 4
  %207 = zext i32 %206 to i64
  %208 = getelementptr inbounds %struct.video_shader_pass, %struct.video_shader_pass* %205, i64 %207
  store %struct.video_shader_pass* %208, %struct.video_shader_pass** %9, align 8
  %209 = load %struct.video_shader_pass*, %struct.video_shader_pass** %9, align 8
  %210 = getelementptr inbounds %struct.video_shader_pass, %struct.video_shader_pass* %209, i32 0, i32 0
  %211 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 8
  switch i32 %212, label %235 [
    i32 129, label %213
    i32 128, label %220
    i32 130, label %230
  ]

213:                                              ; preds = %200
  %214 = load %struct.video_shader_pass*, %struct.video_shader_pass** %9, align 8
  %215 = getelementptr inbounds %struct.video_shader_pass, %struct.video_shader_pass* %214, i32 0, i32 0
  %216 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %215, i32 0, i32 1
  %217 = load i32, i32* %216, align 4
  %218 = load i32, i32* %6, align 4
  %219 = mul i32 %218, %217
  store i32 %219, i32* %6, align 4
  br label %236

220:                                              ; preds = %200
  %221 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %222 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %221, i32 0, i32 1
  %223 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 8
  %225 = load %struct.video_shader_pass*, %struct.video_shader_pass** %9, align 8
  %226 = getelementptr inbounds %struct.video_shader_pass, %struct.video_shader_pass* %225, i32 0, i32 0
  %227 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %226, i32 0, i32 1
  %228 = load i32, i32* %227, align 4
  %229 = mul i32 %224, %228
  store i32 %229, i32* %6, align 4
  br label %236

230:                                              ; preds = %200
  %231 = load %struct.video_shader_pass*, %struct.video_shader_pass** %9, align 8
  %232 = getelementptr inbounds %struct.video_shader_pass, %struct.video_shader_pass* %231, i32 0, i32 0
  %233 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %232, i32 0, i32 2
  %234 = load i32, i32* %233, align 8
  store i32 %234, i32* %6, align 4
  br label %236

235:                                              ; preds = %200
  br label %236

236:                                              ; preds = %235, %230, %220, %213
  %237 = load %struct.video_shader_pass*, %struct.video_shader_pass** %9, align 8
  %238 = getelementptr inbounds %struct.video_shader_pass, %struct.video_shader_pass* %237, i32 0, i32 0
  %239 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %238, i32 0, i32 3
  %240 = load i32, i32* %239, align 4
  switch i32 %240, label %263 [
    i32 129, label %241
    i32 128, label %248
    i32 130, label %258
  ]

241:                                              ; preds = %236
  %242 = load %struct.video_shader_pass*, %struct.video_shader_pass** %9, align 8
  %243 = getelementptr inbounds %struct.video_shader_pass, %struct.video_shader_pass* %242, i32 0, i32 0
  %244 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %243, i32 0, i32 4
  %245 = load i32, i32* %244, align 8
  %246 = load i32, i32* %7, align 4
  %247 = mul i32 %246, %245
  store i32 %247, i32* %7, align 4
  br label %264

248:                                              ; preds = %236
  %249 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %250 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %249, i32 0, i32 1
  %251 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %250, i32 0, i32 1
  %252 = load i32, i32* %251, align 4
  %253 = load %struct.video_shader_pass*, %struct.video_shader_pass** %9, align 8
  %254 = getelementptr inbounds %struct.video_shader_pass, %struct.video_shader_pass* %253, i32 0, i32 0
  %255 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %254, i32 0, i32 4
  %256 = load i32, i32* %255, align 8
  %257 = mul i32 %252, %256
  store i32 %257, i32* %7, align 4
  br label %264

258:                                              ; preds = %236
  %259 = load %struct.video_shader_pass*, %struct.video_shader_pass** %9, align 8
  %260 = getelementptr inbounds %struct.video_shader_pass, %struct.video_shader_pass* %259, i32 0, i32 0
  %261 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %260, i32 0, i32 5
  %262 = load i32, i32* %261, align 4
  store i32 %262, i32* %7, align 4
  br label %264

263:                                              ; preds = %236
  br label %264

264:                                              ; preds = %263, %258, %248, %241
  %265 = load i32, i32* %6, align 4
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %273, label %267

267:                                              ; preds = %264
  %268 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %269 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %268, i32 0, i32 3
  %270 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %269, i32 0, i32 0
  %271 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 8
  store i32 %272, i32* %6, align 4
  br label %273

273:                                              ; preds = %267, %264
  %274 = load i32, i32* %7, align 4
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %282, label %276

276:                                              ; preds = %273
  %277 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %278 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %277, i32 0, i32 3
  %279 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %278, i32 0, i32 0
  %280 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %279, i32 0, i32 1
  %281 = load i32, i32* %280, align 4
  store i32 %281, i32* %7, align 4
  br label %282

282:                                              ; preds = %276, %273
  %283 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %284 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %283, i32 0, i32 0
  %285 = load %struct.TYPE_25__*, %struct.TYPE_25__** %284, align 8
  %286 = load i32, i32* %8, align 4
  %287 = zext i32 %286 to i64
  %288 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %285, i64 %287
  %289 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %288, i32 0, i32 2
  %290 = call i32 @memset(%struct.TYPE_18__* %289, i32 0, i32 80)
  %291 = load i8*, i8** @GX2_SURFACE_DIM_TEXTURE_2D, align 8
  %292 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %293 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %292, i32 0, i32 0
  %294 = load %struct.TYPE_25__*, %struct.TYPE_25__** %293, align 8
  %295 = load i32, i32* %8, align 4
  %296 = zext i32 %295 to i64
  %297 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %294, i64 %296
  %298 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %297, i32 0, i32 2
  %299 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %298, i32 0, i32 1
  %300 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %299, i32 0, i32 9
  store i8* %291, i8** %300, align 8
  %301 = load i32, i32* %6, align 4
  %302 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %303 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %302, i32 0, i32 0
  %304 = load %struct.TYPE_25__*, %struct.TYPE_25__** %303, align 8
  %305 = load i32, i32* %8, align 4
  %306 = zext i32 %305 to i64
  %307 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %304, i64 %306
  %308 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %307, i32 0, i32 2
  %309 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %308, i32 0, i32 1
  %310 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %309, i32 0, i32 0
  store i32 %301, i32* %310, align 8
  %311 = load i32, i32* %7, align 4
  %312 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %313 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %312, i32 0, i32 0
  %314 = load %struct.TYPE_25__*, %struct.TYPE_25__** %313, align 8
  %315 = load i32, i32* %8, align 4
  %316 = zext i32 %315 to i64
  %317 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %314, i64 %316
  %318 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %317, i32 0, i32 2
  %319 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %318, i32 0, i32 1
  %320 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %319, i32 0, i32 1
  store i32 %311, i32* %320, align 4
  %321 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %322 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %321, i32 0, i32 0
  %323 = load %struct.TYPE_25__*, %struct.TYPE_25__** %322, align 8
  %324 = load i32, i32* %8, align 4
  %325 = zext i32 %324 to i64
  %326 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %323, i64 %325
  %327 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %326, i32 0, i32 2
  %328 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %327, i32 0, i32 1
  %329 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %328, i32 0, i32 2
  store i32 1, i32* %329, align 8
  %330 = load %struct.video_shader_pass*, %struct.video_shader_pass** %9, align 8
  %331 = getelementptr inbounds %struct.video_shader_pass, %struct.video_shader_pass* %330, i32 0, i32 0
  %332 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %331, i32 0, i32 7
  %333 = load i64, i64* %332, align 8
  %334 = icmp ne i64 %333, 0
  br i1 %334, label %335, label %337

335:                                              ; preds = %282
  %336 = load i8*, i8** @GX2_SURFACE_FORMAT_FLOAT_R32_G32_B32_A32, align 8
  br label %349

337:                                              ; preds = %282
  %338 = load %struct.video_shader_pass*, %struct.video_shader_pass** %9, align 8
  %339 = getelementptr inbounds %struct.video_shader_pass, %struct.video_shader_pass* %338, i32 0, i32 0
  %340 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %339, i32 0, i32 6
  %341 = load i64, i64* %340, align 8
  %342 = icmp ne i64 %341, 0
  br i1 %342, label %343, label %345

343:                                              ; preds = %337
  %344 = load i8*, i8** @GX2_SURFACE_FORMAT_SRGB_R8_G8_B8_A8, align 8
  br label %347

345:                                              ; preds = %337
  %346 = load i8*, i8** @GX2_SURFACE_FORMAT_UNORM_R8_G8_B8_A8, align 8
  br label %347

347:                                              ; preds = %345, %343
  %348 = phi i8* [ %344, %343 ], [ %346, %345 ]
  br label %349

349:                                              ; preds = %347, %335
  %350 = phi i8* [ %336, %335 ], [ %348, %347 ]
  %351 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %352 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %351, i32 0, i32 0
  %353 = load %struct.TYPE_25__*, %struct.TYPE_25__** %352, align 8
  %354 = load i32, i32* %8, align 4
  %355 = zext i32 %354 to i64
  %356 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %353, i64 %355
  %357 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %356, i32 0, i32 2
  %358 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %357, i32 0, i32 1
  %359 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %358, i32 0, i32 8
  store i8* %350, i8** %359, align 8
  %360 = load i32, i32* @GX2_SURFACE_USE_TEXTURE, align 4
  %361 = load i32, i32* @GX2_SURFACE_USE_COLOR_BUFFER, align 4
  %362 = or i32 %360, %361
  %363 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %364 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %363, i32 0, i32 0
  %365 = load %struct.TYPE_25__*, %struct.TYPE_25__** %364, align 8
  %366 = load i32, i32* %8, align 4
  %367 = zext i32 %366 to i64
  %368 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %365, i64 %367
  %369 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %368, i32 0, i32 2
  %370 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %369, i32 0, i32 1
  %371 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %370, i32 0, i32 5
  store i32 %362, i32* %371, align 4
  %372 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %373 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %372, i32 0, i32 0
  %374 = load %struct.TYPE_25__*, %struct.TYPE_25__** %373, align 8
  %375 = load i32, i32* %8, align 4
  %376 = zext i32 %375 to i64
  %377 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %374, i64 %376
  %378 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %377, i32 0, i32 2
  %379 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %378, i32 0, i32 0
  store i32 1, i32* %379, align 8
  %380 = load i32, i32* @_R, align 4
  %381 = load i32, i32* @_G, align 4
  %382 = load i32, i32* @_B, align 4
  %383 = load i32, i32* @_A, align 4
  %384 = call i8* @GX2_COMP_SEL(i32 %380, i32 %381, i32 %382, i32 %383)
  %385 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %386 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %385, i32 0, i32 0
  %387 = load %struct.TYPE_25__*, %struct.TYPE_25__** %386, align 8
  %388 = load i32, i32* %8, align 4
  %389 = zext i32 %388 to i64
  %390 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %387, i64 %389
  %391 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %390, i32 0, i32 2
  %392 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %391, i32 0, i32 2
  store i8* %384, i8** %392, align 8
  %393 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %394 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %393, i32 0, i32 0
  %395 = load %struct.TYPE_25__*, %struct.TYPE_25__** %394, align 8
  %396 = load i32, i32* %8, align 4
  %397 = zext i32 %396 to i64
  %398 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %395, i64 %397
  %399 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %398, i32 0, i32 2
  %400 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %399, i32 0, i32 1
  %401 = call i32 @GX2CalcSurfaceSizeAndAlignment(%struct.TYPE_19__* %400)
  %402 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %403 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %402, i32 0, i32 0
  %404 = load %struct.TYPE_25__*, %struct.TYPE_25__** %403, align 8
  %405 = load i32, i32* %8, align 4
  %406 = zext i32 %405 to i64
  %407 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %404, i64 %406
  %408 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %407, i32 0, i32 2
  %409 = call i32 @GX2InitTextureRegs(%struct.TYPE_18__* %408)
  %410 = load i32, i32* %8, align 4
  %411 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %412 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %411, i32 0, i32 2
  %413 = load %struct.TYPE_24__*, %struct.TYPE_24__** %412, align 8
  %414 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %413, i32 0, i32 0
  %415 = load i32, i32* %414, align 8
  %416 = sub i32 %415, 1
  %417 = icmp ne i32 %410, %416
  br i1 %417, label %432, label %418

418:                                              ; preds = %349
  %419 = load i32, i32* %6, align 4
  %420 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %421 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %420, i32 0, i32 1
  %422 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %421, i32 0, i32 0
  %423 = load i32, i32* %422, align 8
  %424 = icmp ne i32 %419, %423
  br i1 %424, label %432, label %425

425:                                              ; preds = %418
  %426 = load i32, i32* %7, align 4
  %427 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %428 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %427, i32 0, i32 1
  %429 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %428, i32 0, i32 1
  %430 = load i32, i32* %429, align 4
  %431 = icmp ne i32 %426, %430
  br i1 %431, label %432, label %581

432:                                              ; preds = %425, %418, %349
  %433 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %434 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %433, i32 0, i32 0
  %435 = load %struct.TYPE_25__*, %struct.TYPE_25__** %434, align 8
  %436 = load i32, i32* %8, align 4
  %437 = zext i32 %436 to i64
  %438 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %435, i64 %437
  %439 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %438, i32 0, i32 0
  store i32 1, i32* %439, align 8
  %440 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %441 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %440, i32 0, i32 0
  %442 = load %struct.TYPE_25__*, %struct.TYPE_25__** %441, align 8
  %443 = load i32, i32* %8, align 4
  %444 = zext i32 %443 to i64
  %445 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %442, i64 %444
  %446 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %445, i32 0, i32 2
  %447 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %446, i32 0, i32 1
  %448 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %447, i32 0, i32 3
  %449 = load i32, i32* %448, align 4
  %450 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %451 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %450, i32 0, i32 0
  %452 = load %struct.TYPE_25__*, %struct.TYPE_25__** %451, align 8
  %453 = load i32, i32* %8, align 4
  %454 = zext i32 %453 to i64
  %455 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %452, i64 %454
  %456 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %455, i32 0, i32 2
  %457 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %456, i32 0, i32 1
  %458 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %457, i32 0, i32 7
  %459 = load i32, i32* %458, align 8
  %460 = call %struct.TYPE_18__* @MEM1_alloc(i32 %449, i32 %459)
  %461 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %462 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %461, i32 0, i32 0
  %463 = load %struct.TYPE_25__*, %struct.TYPE_25__** %462, align 8
  %464 = load i32, i32* %8, align 4
  %465 = zext i32 %464 to i64
  %466 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %463, i64 %465
  %467 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %466, i32 0, i32 2
  %468 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %467, i32 0, i32 1
  %469 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %468, i32 0, i32 6
  store %struct.TYPE_18__* %460, %struct.TYPE_18__** %469, align 8
  %470 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %471 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %470, i32 0, i32 0
  %472 = load %struct.TYPE_25__*, %struct.TYPE_25__** %471, align 8
  %473 = load i32, i32* %8, align 4
  %474 = zext i32 %473 to i64
  %475 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %472, i64 %474
  %476 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %475, i32 0, i32 2
  %477 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %476, i32 0, i32 1
  %478 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %477, i32 0, i32 6
  %479 = load %struct.TYPE_18__*, %struct.TYPE_18__** %478, align 8
  %480 = icmp ne %struct.TYPE_18__* %479, null
  br i1 %480, label %537, label %481

481:                                              ; preds = %432
  %482 = call i32 @printf(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0))
  %483 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %484 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %483, i32 0, i32 0
  %485 = load %struct.TYPE_25__*, %struct.TYPE_25__** %484, align 8
  %486 = load i32, i32* %8, align 4
  %487 = zext i32 %486 to i64
  %488 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %485, i64 %487
  %489 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %488, i32 0, i32 0
  store i32 0, i32* %489, align 8
  %490 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %491 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %490, i32 0, i32 0
  %492 = load %struct.TYPE_25__*, %struct.TYPE_25__** %491, align 8
  %493 = load i32, i32* %8, align 4
  %494 = zext i32 %493 to i64
  %495 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %492, i64 %494
  %496 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %495, i32 0, i32 2
  %497 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %496, i32 0, i32 1
  %498 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %497, i32 0, i32 3
  %499 = load i32, i32* %498, align 4
  %500 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %501 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %500, i32 0, i32 0
  %502 = load %struct.TYPE_25__*, %struct.TYPE_25__** %501, align 8
  %503 = load i32, i32* %8, align 4
  %504 = zext i32 %503 to i64
  %505 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %502, i64 %504
  %506 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %505, i32 0, i32 2
  %507 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %506, i32 0, i32 1
  %508 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %507, i32 0, i32 7
  %509 = load i32, i32* %508, align 8
  %510 = call i8* @MEM2_alloc(i32 %499, i32 %509)
  %511 = bitcast i8* %510 to %struct.TYPE_18__*
  %512 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %513 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %512, i32 0, i32 0
  %514 = load %struct.TYPE_25__*, %struct.TYPE_25__** %513, align 8
  %515 = load i32, i32* %8, align 4
  %516 = zext i32 %515 to i64
  %517 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %514, i64 %516
  %518 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %517, i32 0, i32 2
  %519 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %518, i32 0, i32 1
  %520 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %519, i32 0, i32 6
  store %struct.TYPE_18__* %511, %struct.TYPE_18__** %520, align 8
  %521 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %522 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %521, i32 0, i32 0
  %523 = load %struct.TYPE_25__*, %struct.TYPE_25__** %522, align 8
  %524 = load i32, i32* %8, align 4
  %525 = zext i32 %524 to i64
  %526 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %523, i64 %525
  %527 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %526, i32 0, i32 2
  %528 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %527, i32 0, i32 1
  %529 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %528, i32 0, i32 6
  %530 = load %struct.TYPE_18__*, %struct.TYPE_18__** %529, align 8
  %531 = icmp ne %struct.TYPE_18__* %530, null
  br i1 %531, label %536, label %532

532:                                              ; preds = %481
  %533 = call i32 @printf(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.1, i64 0, i64 0))
  %534 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %535 = call i32 @wiiu_free_shader_preset(%struct.TYPE_26__* %534)
  store i32 0, i32* %4, align 4
  br label %621

536:                                              ; preds = %481
  br label %537

537:                                              ; preds = %536, %432
  %538 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %539 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %538, i32 0, i32 0
  %540 = load %struct.TYPE_25__*, %struct.TYPE_25__** %539, align 8
  %541 = load i32, i32* %8, align 4
  %542 = zext i32 %541 to i64
  %543 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %540, i64 %542
  %544 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %543, i32 0, i32 2
  %545 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %544, i32 0, i32 1
  %546 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %545, i32 0, i32 6
  %547 = load %struct.TYPE_18__*, %struct.TYPE_18__** %546, align 8
  %548 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %549 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %548, i32 0, i32 0
  %550 = load %struct.TYPE_25__*, %struct.TYPE_25__** %549, align 8
  %551 = load i32, i32* %8, align 4
  %552 = zext i32 %551 to i64
  %553 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %550, i64 %552
  %554 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %553, i32 0, i32 2
  %555 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %554, i32 0, i32 1
  %556 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %555, i32 0, i32 3
  %557 = load i32, i32* %556, align 4
  %558 = call i32 @memset(%struct.TYPE_18__* %547, i32 0, i32 %557)
  %559 = load i32, i32* @GX2_INVALIDATE_MODE_CPU_TEXTURE, align 4
  %560 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %561 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %560, i32 0, i32 0
  %562 = load %struct.TYPE_25__*, %struct.TYPE_25__** %561, align 8
  %563 = load i32, i32* %8, align 4
  %564 = zext i32 %563 to i64
  %565 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %562, i64 %564
  %566 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %565, i32 0, i32 2
  %567 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %566, i32 0, i32 1
  %568 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %567, i32 0, i32 6
  %569 = load %struct.TYPE_18__*, %struct.TYPE_18__** %568, align 8
  %570 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %571 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %570, i32 0, i32 0
  %572 = load %struct.TYPE_25__*, %struct.TYPE_25__** %571, align 8
  %573 = load i32, i32* %8, align 4
  %574 = zext i32 %573 to i64
  %575 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %572, i64 %574
  %576 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %575, i32 0, i32 2
  %577 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %576, i32 0, i32 1
  %578 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %577, i32 0, i32 3
  %579 = load i32, i32* %578, align 4
  %580 = call i32 @GX2Invalidate(i32 %559, %struct.TYPE_18__* %569, i32 %579)
  br label %581

581:                                              ; preds = %537, %425
  %582 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %583 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %582, i32 0, i32 0
  %584 = load %struct.TYPE_25__*, %struct.TYPE_25__** %583, align 8
  %585 = load i32, i32* %8, align 4
  %586 = zext i32 %585 to i64
  %587 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %584, i64 %586
  %588 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %587, i32 0, i32 1
  %589 = call i32 @memset(%struct.TYPE_18__* %588, i32 0, i32 80)
  %590 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %591 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %590, i32 0, i32 0
  %592 = load %struct.TYPE_25__*, %struct.TYPE_25__** %591, align 8
  %593 = load i32, i32* %8, align 4
  %594 = zext i32 %593 to i64
  %595 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %592, i64 %594
  %596 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %595, i32 0, i32 1
  %597 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %596, i32 0, i32 1
  %598 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %599 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %598, i32 0, i32 0
  %600 = load %struct.TYPE_25__*, %struct.TYPE_25__** %599, align 8
  %601 = load i32, i32* %8, align 4
  %602 = zext i32 %601 to i64
  %603 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %600, i64 %602
  %604 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %603, i32 0, i32 2
  %605 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %604, i32 0, i32 1
  %606 = bitcast %struct.TYPE_19__* %597 to i8*
  %607 = bitcast %struct.TYPE_19__* %605 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %606, i8* align 8 %607, i64 64, i1 false)
  %608 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %609 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %608, i32 0, i32 0
  %610 = load %struct.TYPE_25__*, %struct.TYPE_25__** %609, align 8
  %611 = load i32, i32* %8, align 4
  %612 = zext i32 %611 to i64
  %613 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %610, i64 %612
  %614 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %613, i32 0, i32 1
  %615 = call i32 @GX2InitColorBufferRegs(%struct.TYPE_18__* %614)
  br label %616

616:                                              ; preds = %581
  %617 = load i32, i32* %8, align 4
  %618 = add i32 %617, 1
  store i32 %618, i32* %8, align 4
  br label %192

619:                                              ; preds = %192
  br label %620

620:                                              ; preds = %619, %140
  store i32 1, i32* %4, align 4
  br label %621

621:                                              ; preds = %620, %532
  %622 = load i32, i32* %4, align 4
  ret i32 %622
}

declare dso_local i32 @MEM2_free(%struct.TYPE_18__*) #1

declare dso_local i32 @MEM1_free(%struct.TYPE_18__*) #1

declare dso_local i32 @memset(%struct.TYPE_18__*, i32, i32) #1

declare dso_local i8* @GX2_COMP_SEL(i32, i32, i32, i32) #1

declare dso_local i32 @GX2CalcSurfaceSizeAndAlignment(%struct.TYPE_19__*) #1

declare dso_local i32 @GX2InitTextureRegs(%struct.TYPE_18__*) #1

declare dso_local i8* @MEM2_alloc(i32, i32) #1

declare dso_local i32 @GX2Invalidate(i32, %struct.TYPE_18__*, i32) #1

declare dso_local %struct.TYPE_18__* @MEM1_alloc(i32, i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @wiiu_free_shader_preset(%struct.TYPE_26__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @GX2InitColorBufferRegs(%struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
