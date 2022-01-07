; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_gx2_gfx.c_wiiu_gfx_set_shader.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_gx2_gfx.c_wiiu_gfx_set_shader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_29__ = type { %struct.TYPE_20__*, %struct.TYPE_18__*, %struct.TYPE_28__* }
%struct.TYPE_20__ = type { i32, %struct.TYPE_21__, i32 }
%struct.TYPE_21__ = type { i32, i32, i32, i32, i32, i8*, i32, i32, i32, i32 }
%struct.TYPE_18__ = type { i32, i32, %struct.TYPE_24__*, %struct.video_shader_pass* }
%struct.TYPE_24__ = type { i32 }
%struct.video_shader_pass = type { %struct.TYPE_25__ }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_28__ = type { %struct.TYPE_19__*, i8**, i8** }
%struct.TYPE_19__ = type { %struct.TYPE_23__*, %struct.TYPE_27__* }
%struct.TYPE_23__ = type { i32, %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_27__ = type { i32, %struct.TYPE_26__* }
%struct.TYPE_26__ = type { i32 }
%struct.texture_image = type { i32, i32, i64 }

@RARCH_SHADER_SLANG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"[GX2] Only Slang shaders are supported. Falling back to stock.\0A\00", align 1
@PATH_MAX_LENGTH = common dso_local global i32 0, align 4
@GX2_UNIFORM_BLOCK_ALIGNMENT = common dso_local global i32 0, align 4
@GX2_INVALIDATE_MODE_CPU_UNIFORM_BLOCK = common dso_local global i32 0, align 4
@GX2_SURFACE_DIM_TEXTURE_2D = common dso_local global i32 0, align 4
@GX2_TILE_MODE_LINEAR_ALIGNED = common dso_local global i32 0, align 4
@GX2_SURFACE_FORMAT_UNORM_R8_G8_B8_A8 = common dso_local global i32 0, align 4
@_G = common dso_local global i32 0, align 4
@_B = common dso_local global i32 0, align 4
@_A = common dso_local global i32 0, align 4
@_R = common dso_local global i32 0, align 4
@GX2_INVALIDATE_MODE_CPU_TEXTURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8*)* @wiiu_gfx_set_shader to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wiiu_gfx_set_shader(i8* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_29__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.video_shader_pass*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.texture_image, align 8
  %19 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32* null, i32** %9, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = bitcast i8* %20 to %struct.TYPE_29__*
  store %struct.TYPE_29__* %21, %struct.TYPE_29__** %10, align 8
  %22 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %23 = icmp ne %struct.TYPE_29__* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %629

25:                                               ; preds = %3
  %26 = call i32 (...) @GX2DrawDone()
  %27 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %28 = call i32 @wiiu_free_shader_preset(%struct.TYPE_29__* %27)
  %29 = load i8*, i8** %7, align 8
  %30 = call i64 @string_is_empty(i8* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %25
  store i32 1, i32* %4, align 4
  br label %629

33:                                               ; preds = %25
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @RARCH_SHADER_SLANG, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = call i32 @RARCH_WARN(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %629

39:                                               ; preds = %33
  %40 = load i8*, i8** %7, align 8
  %41 = call i32* @video_shader_read_preset(i8* %40)
  store i32* %41, i32** %9, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %39
  store i32 0, i32* %4, align 4
  br label %629

44:                                               ; preds = %39
  %45 = call %struct.TYPE_18__* @calloc(i32 1, i32 24)
  %46 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %47 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %46, i32 0, i32 1
  store %struct.TYPE_18__* %45, %struct.TYPE_18__** %47, align 8
  %48 = load i32*, i32** %9, align 8
  %49 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %49, i32 0, i32 1
  %51 = load %struct.TYPE_18__*, %struct.TYPE_18__** %50, align 8
  %52 = call i32 @video_shader_read_conf_preset(i32* %48, %struct.TYPE_18__* %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %61, label %54

54:                                               ; preds = %44
  %55 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %55, i32 0, i32 1
  %57 = load %struct.TYPE_18__*, %struct.TYPE_18__** %56, align 8
  %58 = call i32 @free(%struct.TYPE_18__* %57)
  %59 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %59, i32 0, i32 1
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %60, align 8
  store i32 0, i32* %4, align 4
  br label %629

61:                                               ; preds = %44
  store i32 0, i32* %8, align 4
  br label %62

62:                                               ; preds = %86, %61
  %63 = load i32, i32* %8, align 4
  %64 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %65 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %64, i32 0, i32 1
  %66 = load %struct.TYPE_18__*, %struct.TYPE_18__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp ult i32 %63, %68
  br i1 %69, label %70, label %89

70:                                               ; preds = %62
  %71 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %72 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %71, i32 0, i32 1
  %73 = load %struct.TYPE_18__*, %struct.TYPE_18__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %73, i32 0, i32 3
  %75 = load %struct.video_shader_pass*, %struct.video_shader_pass** %74, align 8
  %76 = load i32, i32* %8, align 4
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds %struct.video_shader_pass, %struct.video_shader_pass* %75, i64 %77
  %79 = getelementptr inbounds %struct.video_shader_pass, %struct.video_shader_pass* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %83 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %82, i32 0, i32 1
  %84 = load %struct.TYPE_18__*, %struct.TYPE_18__** %83, align 8
  %85 = call i32 @slang_preprocess_parse_parameters(i32 %81, %struct.TYPE_18__* %84)
  br label %86

86:                                               ; preds = %70
  %87 = load i32, i32* %8, align 4
  %88 = add i32 %87, 1
  store i32 %88, i32* %8, align 4
  br label %62

89:                                               ; preds = %62
  %90 = load i32*, i32** %9, align 8
  %91 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %92 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %91, i32 0, i32 1
  %93 = load %struct.TYPE_18__*, %struct.TYPE_18__** %92, align 8
  %94 = call i32 @video_shader_resolve_current_parameters(i32* %90, %struct.TYPE_18__* %93)
  %95 = load i32*, i32** %9, align 8
  %96 = call i32 @config_file_free(i32* %95)
  store i32 0, i32* %8, align 4
  br label %97

97:                                               ; preds = %399, %89
  %98 = load i32, i32* %8, align 4
  %99 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %100 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %99, i32 0, i32 1
  %101 = load %struct.TYPE_18__*, %struct.TYPE_18__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = icmp ult i32 %98, %103
  br i1 %104, label %105, label %402

105:                                              ; preds = %97
  %106 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %107 = zext i32 %106 to i64
  %108 = call i8* @llvm.stacksave()
  store i8* %108, i8** %11, align 8
  %109 = alloca i8, i64 %107, align 16
  store i64 %107, i64* %12, align 8
  %110 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %111 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %110, i32 0, i32 1
  %112 = load %struct.TYPE_18__*, %struct.TYPE_18__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %112, i32 0, i32 3
  %114 = load %struct.video_shader_pass*, %struct.video_shader_pass** %113, align 8
  %115 = load i32, i32* %8, align 4
  %116 = zext i32 %115 to i64
  %117 = getelementptr inbounds %struct.video_shader_pass, %struct.video_shader_pass* %114, i64 %116
  store %struct.video_shader_pass* %117, %struct.video_shader_pass** %13, align 8
  %118 = load %struct.video_shader_pass*, %struct.video_shader_pass** %13, align 8
  %119 = getelementptr inbounds %struct.video_shader_pass, %struct.video_shader_pass* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %123 = call i32 @strncpy(i8* %109, i32 %121, i32 %122)
  %124 = call i8* @strrchr(i8* %109, i8 signext 46)
  store i8* %124, i8** %14, align 8
  %125 = load i8*, i8** %14, align 8
  %126 = icmp ne i8* %125, null
  br i1 %126, label %131, label %127

127:                                              ; preds = %105
  %128 = call i32 @strlen(i8* %109)
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i8, i8* %109, i64 %129
  store i8* %130, i8** %14, align 8
  br label %131

131:                                              ; preds = %127, %105
  %132 = load i8*, i8** %14, align 8
  %133 = getelementptr inbounds i8, i8* %132, i32 1
  store i8* %133, i8** %14, align 8
  store i8 46, i8* %132, align 1
  %134 = load i8*, i8** %14, align 8
  %135 = getelementptr inbounds i8, i8* %134, i32 1
  store i8* %135, i8** %14, align 8
  store i8 103, i8* %134, align 1
  %136 = load i8*, i8** %14, align 8
  %137 = getelementptr inbounds i8, i8* %136, i32 1
  store i8* %137, i8** %14, align 8
  store i8 115, i8* %136, align 1
  %138 = load i8*, i8** %14, align 8
  %139 = getelementptr inbounds i8, i8* %138, i32 1
  store i8* %139, i8** %14, align 8
  store i8 104, i8* %138, align 1
  %140 = load i8*, i8** %14, align 8
  %141 = getelementptr inbounds i8, i8* %140, i32 1
  store i8* %141, i8** %14, align 8
  store i8 0, i8* %140, align 1
  %142 = call %struct.TYPE_19__* @gfd_open(i8* %109)
  %143 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %144 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %143, i32 0, i32 2
  %145 = load %struct.TYPE_28__*, %struct.TYPE_28__** %144, align 8
  %146 = load i32, i32* %8, align 4
  %147 = zext i32 %146 to i64
  %148 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %145, i64 %147
  %149 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %148, i32 0, i32 0
  store %struct.TYPE_19__* %142, %struct.TYPE_19__** %149, align 8
  %150 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %151 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %150, i32 0, i32 2
  %152 = load %struct.TYPE_28__*, %struct.TYPE_28__** %151, align 8
  %153 = load i32, i32* %8, align 4
  %154 = zext i32 %153 to i64
  %155 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %152, i64 %154
  %156 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %155, i32 0, i32 0
  %157 = load %struct.TYPE_19__*, %struct.TYPE_19__** %156, align 8
  %158 = icmp ne %struct.TYPE_19__* %157, null
  br i1 %158, label %162, label %159

159:                                              ; preds = %131
  %160 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %161 = call i32 @wiiu_free_shader_preset(%struct.TYPE_29__* %160)
  store i32 0, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %395

162:                                              ; preds = %131
  store i32 0, i32* %16, align 4
  br label %163

163:                                              ; preds = %275, %162
  %164 = load i32, i32* %16, align 4
  %165 = icmp slt i32 %164, 2
  br i1 %165, label %166, label %181

166:                                              ; preds = %163
  %167 = load i32, i32* %16, align 4
  %168 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %169 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %168, i32 0, i32 2
  %170 = load %struct.TYPE_28__*, %struct.TYPE_28__** %169, align 8
  %171 = load i32, i32* %8, align 4
  %172 = zext i32 %171 to i64
  %173 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %170, i64 %172
  %174 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %173, i32 0, i32 0
  %175 = load %struct.TYPE_19__*, %struct.TYPE_19__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %175, i32 0, i32 1
  %177 = load %struct.TYPE_27__*, %struct.TYPE_27__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = icmp slt i32 %167, %179
  br label %181

181:                                              ; preds = %166, %163
  %182 = phi i1 [ false, %163 ], [ %180, %166 ]
  br i1 %182, label %183, label %278

183:                                              ; preds = %181
  %184 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %185 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %184, i32 0, i32 2
  %186 = load %struct.TYPE_28__*, %struct.TYPE_28__** %185, align 8
  %187 = load i32, i32* %8, align 4
  %188 = zext i32 %187 to i64
  %189 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %186, i64 %188
  %190 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %189, i32 0, i32 0
  %191 = load %struct.TYPE_19__*, %struct.TYPE_19__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %191, i32 0, i32 1
  %193 = load %struct.TYPE_27__*, %struct.TYPE_27__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %193, i32 0, i32 1
  %195 = load %struct.TYPE_26__*, %struct.TYPE_26__** %194, align 8
  %196 = load i32, i32* %16, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %195, i64 %197
  %199 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = load i32, i32* @GX2_UNIFORM_BLOCK_ALIGNMENT, align 4
  %202 = call i8* @MEM2_alloc(i32 %200, i32 %201)
  %203 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %204 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %203, i32 0, i32 2
  %205 = load %struct.TYPE_28__*, %struct.TYPE_28__** %204, align 8
  %206 = load i32, i32* %8, align 4
  %207 = zext i32 %206 to i64
  %208 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %205, i64 %207
  %209 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %208, i32 0, i32 2
  %210 = load i8**, i8*** %209, align 8
  %211 = load i32, i32* %16, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds i8*, i8** %210, i64 %212
  store i8* %202, i8** %213, align 8
  %214 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %215 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %214, i32 0, i32 2
  %216 = load %struct.TYPE_28__*, %struct.TYPE_28__** %215, align 8
  %217 = load i32, i32* %8, align 4
  %218 = zext i32 %217 to i64
  %219 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %216, i64 %218
  %220 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %219, i32 0, i32 2
  %221 = load i8**, i8*** %220, align 8
  %222 = load i32, i32* %16, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds i8*, i8** %221, i64 %223
  %225 = load i8*, i8** %224, align 8
  %226 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %227 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %226, i32 0, i32 2
  %228 = load %struct.TYPE_28__*, %struct.TYPE_28__** %227, align 8
  %229 = load i32, i32* %8, align 4
  %230 = zext i32 %229 to i64
  %231 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %228, i64 %230
  %232 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %231, i32 0, i32 0
  %233 = load %struct.TYPE_19__*, %struct.TYPE_19__** %232, align 8
  %234 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %233, i32 0, i32 1
  %235 = load %struct.TYPE_27__*, %struct.TYPE_27__** %234, align 8
  %236 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %235, i32 0, i32 1
  %237 = load %struct.TYPE_26__*, %struct.TYPE_26__** %236, align 8
  %238 = load i32, i32* %16, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %237, i64 %239
  %241 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 4
  %243 = call i32 @memset(i8* %225, i32 0, i32 %242)
  %244 = load i32, i32* @GX2_INVALIDATE_MODE_CPU_UNIFORM_BLOCK, align 4
  %245 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %246 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %245, i32 0, i32 2
  %247 = load %struct.TYPE_28__*, %struct.TYPE_28__** %246, align 8
  %248 = load i32, i32* %8, align 4
  %249 = zext i32 %248 to i64
  %250 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %247, i64 %249
  %251 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %250, i32 0, i32 2
  %252 = load i8**, i8*** %251, align 8
  %253 = load i32, i32* %16, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds i8*, i8** %252, i64 %254
  %256 = load i8*, i8** %255, align 8
  %257 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %258 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %257, i32 0, i32 2
  %259 = load %struct.TYPE_28__*, %struct.TYPE_28__** %258, align 8
  %260 = load i32, i32* %8, align 4
  %261 = zext i32 %260 to i64
  %262 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %259, i64 %261
  %263 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %262, i32 0, i32 0
  %264 = load %struct.TYPE_19__*, %struct.TYPE_19__** %263, align 8
  %265 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %264, i32 0, i32 1
  %266 = load %struct.TYPE_27__*, %struct.TYPE_27__** %265, align 8
  %267 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %266, i32 0, i32 1
  %268 = load %struct.TYPE_26__*, %struct.TYPE_26__** %267, align 8
  %269 = load i32, i32* %16, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %268, i64 %270
  %272 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %271, i32 0, i32 0
  %273 = load i32, i32* %272, align 4
  %274 = call i32 @GX2Invalidate(i32 %244, i8* %256, i32 %273)
  br label %275

275:                                              ; preds = %183
  %276 = load i32, i32* %16, align 4
  %277 = add nsw i32 %276, 1
  store i32 %277, i32* %16, align 4
  br label %163

278:                                              ; preds = %181
  store i32 0, i32* %17, align 4
  br label %279

279:                                              ; preds = %391, %278
  %280 = load i32, i32* %17, align 4
  %281 = icmp slt i32 %280, 2
  br i1 %281, label %282, label %297

282:                                              ; preds = %279
  %283 = load i32, i32* %17, align 4
  %284 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %285 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %284, i32 0, i32 2
  %286 = load %struct.TYPE_28__*, %struct.TYPE_28__** %285, align 8
  %287 = load i32, i32* %8, align 4
  %288 = zext i32 %287 to i64
  %289 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %286, i64 %288
  %290 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %289, i32 0, i32 0
  %291 = load %struct.TYPE_19__*, %struct.TYPE_19__** %290, align 8
  %292 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %291, i32 0, i32 0
  %293 = load %struct.TYPE_23__*, %struct.TYPE_23__** %292, align 8
  %294 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %293, i32 0, i32 0
  %295 = load i32, i32* %294, align 8
  %296 = icmp slt i32 %283, %295
  br label %297

297:                                              ; preds = %282, %279
  %298 = phi i1 [ false, %279 ], [ %296, %282 ]
  br i1 %298, label %299, label %394

299:                                              ; preds = %297
  %300 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %301 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %300, i32 0, i32 2
  %302 = load %struct.TYPE_28__*, %struct.TYPE_28__** %301, align 8
  %303 = load i32, i32* %8, align 4
  %304 = zext i32 %303 to i64
  %305 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %302, i64 %304
  %306 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %305, i32 0, i32 0
  %307 = load %struct.TYPE_19__*, %struct.TYPE_19__** %306, align 8
  %308 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %307, i32 0, i32 0
  %309 = load %struct.TYPE_23__*, %struct.TYPE_23__** %308, align 8
  %310 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %309, i32 0, i32 1
  %311 = load %struct.TYPE_22__*, %struct.TYPE_22__** %310, align 8
  %312 = load i32, i32* %17, align 4
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %311, i64 %313
  %315 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %314, i32 0, i32 0
  %316 = load i32, i32* %315, align 4
  %317 = load i32, i32* @GX2_UNIFORM_BLOCK_ALIGNMENT, align 4
  %318 = call i8* @MEM2_alloc(i32 %316, i32 %317)
  %319 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %320 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %319, i32 0, i32 2
  %321 = load %struct.TYPE_28__*, %struct.TYPE_28__** %320, align 8
  %322 = load i32, i32* %8, align 4
  %323 = zext i32 %322 to i64
  %324 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %321, i64 %323
  %325 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %324, i32 0, i32 1
  %326 = load i8**, i8*** %325, align 8
  %327 = load i32, i32* %17, align 4
  %328 = sext i32 %327 to i64
  %329 = getelementptr inbounds i8*, i8** %326, i64 %328
  store i8* %318, i8** %329, align 8
  %330 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %331 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %330, i32 0, i32 2
  %332 = load %struct.TYPE_28__*, %struct.TYPE_28__** %331, align 8
  %333 = load i32, i32* %8, align 4
  %334 = zext i32 %333 to i64
  %335 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %332, i64 %334
  %336 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %335, i32 0, i32 1
  %337 = load i8**, i8*** %336, align 8
  %338 = load i32, i32* %17, align 4
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds i8*, i8** %337, i64 %339
  %341 = load i8*, i8** %340, align 8
  %342 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %343 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %342, i32 0, i32 2
  %344 = load %struct.TYPE_28__*, %struct.TYPE_28__** %343, align 8
  %345 = load i32, i32* %8, align 4
  %346 = zext i32 %345 to i64
  %347 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %344, i64 %346
  %348 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %347, i32 0, i32 0
  %349 = load %struct.TYPE_19__*, %struct.TYPE_19__** %348, align 8
  %350 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %349, i32 0, i32 0
  %351 = load %struct.TYPE_23__*, %struct.TYPE_23__** %350, align 8
  %352 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %351, i32 0, i32 1
  %353 = load %struct.TYPE_22__*, %struct.TYPE_22__** %352, align 8
  %354 = load i32, i32* %17, align 4
  %355 = sext i32 %354 to i64
  %356 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %353, i64 %355
  %357 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %356, i32 0, i32 0
  %358 = load i32, i32* %357, align 4
  %359 = call i32 @memset(i8* %341, i32 0, i32 %358)
  %360 = load i32, i32* @GX2_INVALIDATE_MODE_CPU_UNIFORM_BLOCK, align 4
  %361 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %362 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %361, i32 0, i32 2
  %363 = load %struct.TYPE_28__*, %struct.TYPE_28__** %362, align 8
  %364 = load i32, i32* %8, align 4
  %365 = zext i32 %364 to i64
  %366 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %363, i64 %365
  %367 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %366, i32 0, i32 1
  %368 = load i8**, i8*** %367, align 8
  %369 = load i32, i32* %17, align 4
  %370 = sext i32 %369 to i64
  %371 = getelementptr inbounds i8*, i8** %368, i64 %370
  %372 = load i8*, i8** %371, align 8
  %373 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %374 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %373, i32 0, i32 2
  %375 = load %struct.TYPE_28__*, %struct.TYPE_28__** %374, align 8
  %376 = load i32, i32* %8, align 4
  %377 = zext i32 %376 to i64
  %378 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %375, i64 %377
  %379 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %378, i32 0, i32 0
  %380 = load %struct.TYPE_19__*, %struct.TYPE_19__** %379, align 8
  %381 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %380, i32 0, i32 0
  %382 = load %struct.TYPE_23__*, %struct.TYPE_23__** %381, align 8
  %383 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %382, i32 0, i32 1
  %384 = load %struct.TYPE_22__*, %struct.TYPE_22__** %383, align 8
  %385 = load i32, i32* %17, align 4
  %386 = sext i32 %385 to i64
  %387 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %384, i64 %386
  %388 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %387, i32 0, i32 0
  %389 = load i32, i32* %388, align 4
  %390 = call i32 @GX2Invalidate(i32 %360, i8* %372, i32 %389)
  br label %391

391:                                              ; preds = %299
  %392 = load i32, i32* %17, align 4
  %393 = add nsw i32 %392, 1
  store i32 %393, i32* %17, align 4
  br label %279

394:                                              ; preds = %297
  store i32 0, i32* %15, align 4
  br label %395

395:                                              ; preds = %394, %159
  %396 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %396)
  %397 = load i32, i32* %15, align 4
  switch i32 %397, label %631 [
    i32 0, label %398
    i32 1, label %629
  ]

398:                                              ; preds = %395
  br label %399

399:                                              ; preds = %398
  %400 = load i32, i32* %8, align 4
  %401 = add i32 %400, 1
  store i32 %401, i32* %8, align 4
  br label %97

402:                                              ; preds = %97
  store i32 0, i32* %8, align 4
  br label %403

403:                                              ; preds = %625, %402
  %404 = load i32, i32* %8, align 4
  %405 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %406 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %405, i32 0, i32 1
  %407 = load %struct.TYPE_18__*, %struct.TYPE_18__** %406, align 8
  %408 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %407, i32 0, i32 1
  %409 = load i32, i32* %408, align 4
  %410 = icmp ult i32 %404, %409
  br i1 %410, label %411, label %628

411:                                              ; preds = %403
  %412 = bitcast %struct.texture_image* %18 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %412, i8 0, i64 16, i1 false)
  %413 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %414 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %413, i32 0, i32 1
  %415 = load %struct.TYPE_18__*, %struct.TYPE_18__** %414, align 8
  %416 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %415, i32 0, i32 2
  %417 = load %struct.TYPE_24__*, %struct.TYPE_24__** %416, align 8
  %418 = load i32, i32* %8, align 4
  %419 = zext i32 %418 to i64
  %420 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %417, i64 %419
  %421 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %420, i32 0, i32 0
  %422 = load i32, i32* %421, align 4
  %423 = call i64 @image_texture_load(%struct.texture_image* %18, i32 %422)
  %424 = icmp ne i64 %423, 0
  br i1 %424, label %425, label %624

425:                                              ; preds = %411
  %426 = getelementptr inbounds %struct.texture_image, %struct.texture_image* %18, i32 0, i32 0
  %427 = load i32, i32* %426, align 8
  %428 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %429 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %428, i32 0, i32 0
  %430 = load %struct.TYPE_20__*, %struct.TYPE_20__** %429, align 8
  %431 = load i32, i32* %8, align 4
  %432 = zext i32 %431 to i64
  %433 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %430, i64 %432
  %434 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %433, i32 0, i32 1
  %435 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %434, i32 0, i32 0
  store i32 %427, i32* %435, align 8
  %436 = getelementptr inbounds %struct.texture_image, %struct.texture_image* %18, i32 0, i32 1
  %437 = load i32, i32* %436, align 4
  %438 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %439 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %438, i32 0, i32 0
  %440 = load %struct.TYPE_20__*, %struct.TYPE_20__** %439, align 8
  %441 = load i32, i32* %8, align 4
  %442 = zext i32 %441 to i64
  %443 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %440, i64 %442
  %444 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %443, i32 0, i32 1
  %445 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %444, i32 0, i32 1
  store i32 %437, i32* %445, align 4
  %446 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %447 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %446, i32 0, i32 0
  %448 = load %struct.TYPE_20__*, %struct.TYPE_20__** %447, align 8
  %449 = load i32, i32* %8, align 4
  %450 = zext i32 %449 to i64
  %451 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %448, i64 %450
  %452 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %451, i32 0, i32 1
  %453 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %452, i32 0, i32 2
  store i32 1, i32* %453, align 8
  %454 = load i32, i32* @GX2_SURFACE_DIM_TEXTURE_2D, align 4
  %455 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %456 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %455, i32 0, i32 0
  %457 = load %struct.TYPE_20__*, %struct.TYPE_20__** %456, align 8
  %458 = load i32, i32* %8, align 4
  %459 = zext i32 %458 to i64
  %460 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %457, i64 %459
  %461 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %460, i32 0, i32 1
  %462 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %461, i32 0, i32 9
  store i32 %454, i32* %462, align 4
  %463 = load i32, i32* @GX2_TILE_MODE_LINEAR_ALIGNED, align 4
  %464 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %465 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %464, i32 0, i32 0
  %466 = load %struct.TYPE_20__*, %struct.TYPE_20__** %465, align 8
  %467 = load i32, i32* %8, align 4
  %468 = zext i32 %467 to i64
  %469 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %466, i64 %468
  %470 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %469, i32 0, i32 1
  %471 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %470, i32 0, i32 8
  store i32 %463, i32* %471, align 8
  %472 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %473 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %472, i32 0, i32 0
  %474 = load %struct.TYPE_20__*, %struct.TYPE_20__** %473, align 8
  %475 = load i32, i32* %8, align 4
  %476 = zext i32 %475 to i64
  %477 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %474, i64 %476
  %478 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %477, i32 0, i32 0
  store i32 1, i32* %478, align 8
  %479 = load i32, i32* @GX2_SURFACE_FORMAT_UNORM_R8_G8_B8_A8, align 4
  %480 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %481 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %480, i32 0, i32 0
  %482 = load %struct.TYPE_20__*, %struct.TYPE_20__** %481, align 8
  %483 = load i32, i32* %8, align 4
  %484 = zext i32 %483 to i64
  %485 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %482, i64 %484
  %486 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %485, i32 0, i32 1
  %487 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %486, i32 0, i32 7
  store i32 %479, i32* %487, align 4
  %488 = load i32, i32* @_G, align 4
  %489 = load i32, i32* @_B, align 4
  %490 = load i32, i32* @_A, align 4
  %491 = load i32, i32* @_R, align 4
  %492 = call i32 @GX2_COMP_SEL(i32 %488, i32 %489, i32 %490, i32 %491)
  %493 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %494 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %493, i32 0, i32 0
  %495 = load %struct.TYPE_20__*, %struct.TYPE_20__** %494, align 8
  %496 = load i32, i32* %8, align 4
  %497 = zext i32 %496 to i64
  %498 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %495, i64 %497
  %499 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %498, i32 0, i32 2
  store i32 %492, i32* %499, align 8
  %500 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %501 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %500, i32 0, i32 0
  %502 = load %struct.TYPE_20__*, %struct.TYPE_20__** %501, align 8
  %503 = load i32, i32* %8, align 4
  %504 = zext i32 %503 to i64
  %505 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %502, i64 %504
  %506 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %505, i32 0, i32 1
  %507 = call i32 @GX2CalcSurfaceSizeAndAlignment(%struct.TYPE_21__* %506)
  %508 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %509 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %508, i32 0, i32 0
  %510 = load %struct.TYPE_20__*, %struct.TYPE_20__** %509, align 8
  %511 = load i32, i32* %8, align 4
  %512 = zext i32 %511 to i64
  %513 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %510, i64 %512
  %514 = call i32 @GX2InitTextureRegs(%struct.TYPE_20__* %513)
  %515 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %516 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %515, i32 0, i32 0
  %517 = load %struct.TYPE_20__*, %struct.TYPE_20__** %516, align 8
  %518 = load i32, i32* %8, align 4
  %519 = zext i32 %518 to i64
  %520 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %517, i64 %519
  %521 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %520, i32 0, i32 1
  %522 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %521, i32 0, i32 4
  %523 = load i32, i32* %522, align 8
  %524 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %525 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %524, i32 0, i32 0
  %526 = load %struct.TYPE_20__*, %struct.TYPE_20__** %525, align 8
  %527 = load i32, i32* %8, align 4
  %528 = zext i32 %527 to i64
  %529 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %526, i64 %528
  %530 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %529, i32 0, i32 1
  %531 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %530, i32 0, i32 6
  %532 = load i32, i32* %531, align 8
  %533 = call i8* @MEM2_alloc(i32 %523, i32 %532)
  %534 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %535 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %534, i32 0, i32 0
  %536 = load %struct.TYPE_20__*, %struct.TYPE_20__** %535, align 8
  %537 = load i32, i32* %8, align 4
  %538 = zext i32 %537 to i64
  %539 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %536, i64 %538
  %540 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %539, i32 0, i32 1
  %541 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %540, i32 0, i32 5
  store i8* %533, i8** %541, align 8
  store i32 0, i32* %19, align 4
  br label %542

542:                                              ; preds = %599, %425
  %543 = load i32, i32* %19, align 4
  %544 = getelementptr inbounds %struct.texture_image, %struct.texture_image* %18, i32 0, i32 1
  %545 = load i32, i32* %544, align 4
  %546 = icmp slt i32 %543, %545
  br i1 %546, label %547, label %559

547:                                              ; preds = %542
  %548 = load i32, i32* %19, align 4
  %549 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %550 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %549, i32 0, i32 0
  %551 = load %struct.TYPE_20__*, %struct.TYPE_20__** %550, align 8
  %552 = load i32, i32* %8, align 4
  %553 = zext i32 %552 to i64
  %554 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %551, i64 %553
  %555 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %554, i32 0, i32 1
  %556 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %555, i32 0, i32 1
  %557 = load i32, i32* %556, align 4
  %558 = icmp slt i32 %548, %557
  br label %559

559:                                              ; preds = %547, %542
  %560 = phi i1 [ false, %542 ], [ %558, %547 ]
  br i1 %560, label %561, label %602

561:                                              ; preds = %559
  %562 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %563 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %562, i32 0, i32 0
  %564 = load %struct.TYPE_20__*, %struct.TYPE_20__** %563, align 8
  %565 = load i32, i32* %8, align 4
  %566 = zext i32 %565 to i64
  %567 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %564, i64 %566
  %568 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %567, i32 0, i32 1
  %569 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %568, i32 0, i32 5
  %570 = load i8*, i8** %569, align 8
  %571 = bitcast i8* %570 to i32*
  %572 = load i32, i32* %19, align 4
  %573 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %574 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %573, i32 0, i32 0
  %575 = load %struct.TYPE_20__*, %struct.TYPE_20__** %574, align 8
  %576 = load i32, i32* %8, align 4
  %577 = zext i32 %576 to i64
  %578 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %575, i64 %577
  %579 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %578, i32 0, i32 1
  %580 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %579, i32 0, i32 3
  %581 = load i32, i32* %580, align 4
  %582 = mul nsw i32 %572, %581
  %583 = sext i32 %582 to i64
  %584 = getelementptr inbounds i32, i32* %571, i64 %583
  %585 = getelementptr inbounds %struct.texture_image, %struct.texture_image* %18, i32 0, i32 2
  %586 = load i64, i64* %585, align 8
  %587 = load i32, i32* %19, align 4
  %588 = getelementptr inbounds %struct.texture_image, %struct.texture_image* %18, i32 0, i32 0
  %589 = load i32, i32* %588, align 8
  %590 = mul nsw i32 %587, %589
  %591 = sext i32 %590 to i64
  %592 = add nsw i64 %586, %591
  %593 = getelementptr inbounds %struct.texture_image, %struct.texture_image* %18, i32 0, i32 0
  %594 = load i32, i32* %593, align 8
  %595 = sext i32 %594 to i64
  %596 = mul i64 %595, 8
  %597 = trunc i64 %596 to i32
  %598 = call i32 @memcpy(i32* %584, i64 %592, i32 %597)
  br label %599

599:                                              ; preds = %561
  %600 = load i32, i32* %19, align 4
  %601 = add nsw i32 %600, 1
  store i32 %601, i32* %19, align 4
  br label %542

602:                                              ; preds = %559
  %603 = load i32, i32* @GX2_INVALIDATE_MODE_CPU_TEXTURE, align 4
  %604 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %605 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %604, i32 0, i32 0
  %606 = load %struct.TYPE_20__*, %struct.TYPE_20__** %605, align 8
  %607 = load i32, i32* %8, align 4
  %608 = zext i32 %607 to i64
  %609 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %606, i64 %608
  %610 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %609, i32 0, i32 1
  %611 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %610, i32 0, i32 5
  %612 = load i8*, i8** %611, align 8
  %613 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %614 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %613, i32 0, i32 0
  %615 = load %struct.TYPE_20__*, %struct.TYPE_20__** %614, align 8
  %616 = load i32, i32* %8, align 4
  %617 = zext i32 %616 to i64
  %618 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %615, i64 %617
  %619 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %618, i32 0, i32 1
  %620 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %619, i32 0, i32 4
  %621 = load i32, i32* %620, align 8
  %622 = call i32 @GX2Invalidate(i32 %603, i8* %612, i32 %621)
  %623 = call i32 @image_texture_free(%struct.texture_image* %18)
  br label %624

624:                                              ; preds = %602, %411
  br label %625

625:                                              ; preds = %624
  %626 = load i32, i32* %8, align 4
  %627 = add i32 %626, 1
  store i32 %627, i32* %8, align 4
  br label %403

628:                                              ; preds = %403
  store i32 1, i32* %4, align 4
  br label %629

629:                                              ; preds = %628, %395, %54, %43, %37, %32, %24
  %630 = load i32, i32* %4, align 4
  ret i32 %630

631:                                              ; preds = %395
  unreachable
}

declare dso_local i32 @GX2DrawDone(...) #1

declare dso_local i32 @wiiu_free_shader_preset(%struct.TYPE_29__*) #1

declare dso_local i64 @string_is_empty(i8*) #1

declare dso_local i32 @RARCH_WARN(i8*) #1

declare dso_local i32* @video_shader_read_preset(i8*) #1

declare dso_local %struct.TYPE_18__* @calloc(i32, i32) #1

declare dso_local i32 @video_shader_read_conf_preset(i32*, %struct.TYPE_18__*) #1

declare dso_local i32 @free(%struct.TYPE_18__*) #1

declare dso_local i32 @slang_preprocess_parse_parameters(i32, %struct.TYPE_18__*) #1

declare dso_local i32 @video_shader_resolve_current_parameters(i32*, %struct.TYPE_18__*) #1

declare dso_local i32 @config_file_free(i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @strncpy(i8*, i32, i32) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local %struct.TYPE_19__* @gfd_open(i8*) #1

declare dso_local i8* @MEM2_alloc(i32, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @GX2Invalidate(i32, i8*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

declare dso_local i64 @image_texture_load(%struct.texture_image*, i32) #1

declare dso_local i32 @GX2_COMP_SEL(i32, i32, i32, i32) #1

declare dso_local i32 @GX2CalcSurfaceSizeAndAlignment(%struct.TYPE_21__*) #1

declare dso_local i32 @GX2InitTextureRegs(%struct.TYPE_20__*) #1

declare dso_local i32 @memcpy(i32*, i64, i32) #1

declare dso_local i32 @image_texture_free(%struct.texture_image*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
