; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/extr_video_shader_parse.c_video_shader_write_conf_preset.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/extr_video_shader_parse.c_video_shader_write_conf_preset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.video_shader = type { i64, i64, i32, i32, %struct.TYPE_6__*, %struct.TYPE_5__*, %struct.video_shader_pass* }
%struct.TYPE_6__ = type { i8*, i8*, i64, i32, i32 }
%struct.TYPE_5__ = type { i8*, i32 }
%struct.video_shader_pass = type { i64, i64, i32, i8*, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8* }

@PATH_MAX_LENGTH = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"shaders\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"feedback_pass\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"shader%u\00", align 1
@RARCH_FILTER_UNSPEC = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [16 x i8] c"filter_linear%u\00", align 1
@RARCH_FILTER_LINEAR = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [12 x i8] c"wrap_mode%u\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"frame_count_mod%u\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"mipmap_input%u\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"alias%u\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c";\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"parameters\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"textures\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"_linear\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"_wrap_mode\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"_mipmap\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @video_shader_write_conf_preset(i32* %0, %struct.video_shader* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.video_shader*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [64 x i8], align 16
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.video_shader_pass*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca [128 x i8], align 16
  %19 = alloca [128 x i8], align 16
  %20 = alloca [128 x i8], align 16
  store i32* %0, i32** %4, align 8
  store %struct.video_shader* %1, %struct.video_shader** %5, align 8
  store i8* %2, i8** %6, align 8
  %21 = load i64, i64* @PATH_MAX_LENGTH, align 8
  store i64 %21, i64* %9, align 8
  %22 = load i64, i64* %9, align 8
  %23 = mul i64 3, %22
  %24 = call i64 @malloc(i64 %23)
  %25 = inttoptr i64 %24 to i8*
  store i8* %25, i8** %10, align 8
  %26 = load i8*, i8** %10, align 8
  %27 = load i64, i64* %9, align 8
  %28 = getelementptr inbounds i8, i8* %26, i64 %27
  store i8* %28, i8** %11, align 8
  %29 = load i8*, i8** %10, align 8
  %30 = load i64, i64* %9, align 8
  %31 = mul i64 2, %30
  %32 = getelementptr inbounds i8, i8* %29, i64 %31
  store i8* %32, i8** %12, align 8
  %33 = load i8*, i8** %10, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %3
  br label %483

36:                                               ; preds = %3
  %37 = load i32*, i32** %4, align 8
  %38 = load %struct.video_shader*, %struct.video_shader** %5, align 8
  %39 = getelementptr inbounds %struct.video_shader, %struct.video_shader* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @config_set_int(i32* %37, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i64 %40)
  %42 = load %struct.video_shader*, %struct.video_shader** %5, align 8
  %43 = getelementptr inbounds %struct.video_shader, %struct.video_shader* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp sge i64 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %36
  %47 = load i32*, i32** %4, align 8
  %48 = load %struct.video_shader*, %struct.video_shader** %5, align 8
  %49 = getelementptr inbounds %struct.video_shader, %struct.video_shader* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @config_set_int(i32* %47, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i64 %50)
  br label %52

52:                                               ; preds = %46, %36
  %53 = load i8*, i8** %6, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %55, label %66

55:                                               ; preds = %52
  %56 = load i8*, i8** %12, align 8
  %57 = load i8*, i8** %6, align 8
  %58 = load i64, i64* %9, align 8
  %59 = trunc i64 %58 to i32
  %60 = call i32 @strlcpy(i8* %56, i8* %57, i32 %59)
  %61 = load i8*, i8** %12, align 8
  %62 = load i64, i64* %9, align 8
  %63 = call i32 @path_resolve_realpath(i8* %61, i64 %62, i32 0)
  %64 = load i8*, i8** %12, align 8
  %65 = call i32 @path_basedir(i8* %64)
  br label %66

66:                                               ; preds = %55, %52
  store i32 0, i32* %7, align 4
  br label %67

67:                                               ; preds = %182, %66
  %68 = load i32, i32* %7, align 4
  %69 = zext i32 %68 to i64
  %70 = load %struct.video_shader*, %struct.video_shader** %5, align 8
  %71 = getelementptr inbounds %struct.video_shader, %struct.video_shader* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp slt i64 %69, %72
  br i1 %73, label %74, label %185

74:                                               ; preds = %67
  %75 = load %struct.video_shader*, %struct.video_shader** %5, align 8
  %76 = getelementptr inbounds %struct.video_shader, %struct.video_shader* %75, i32 0, i32 6
  %77 = load %struct.video_shader_pass*, %struct.video_shader_pass** %76, align 8
  %78 = load i32, i32* %7, align 4
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds %struct.video_shader_pass, %struct.video_shader_pass* %77, i64 %79
  store %struct.video_shader_pass* %80, %struct.video_shader_pass** %13, align 8
  %81 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %82 = load i32, i32* %7, align 4
  %83 = call i32 @snprintf(i8* %81, i32 64, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %82)
  %84 = load i8*, i8** %6, align 8
  %85 = icmp ne i8* %84, null
  br i1 %85, label %86, label %106

86:                                               ; preds = %74
  %87 = load i8*, i8** %10, align 8
  %88 = load %struct.video_shader_pass*, %struct.video_shader_pass** %13, align 8
  %89 = getelementptr inbounds %struct.video_shader_pass, %struct.video_shader_pass* %88, i32 0, i32 6
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = load i8*, i8** %90, align 8
  %92 = load i64, i64* %9, align 8
  %93 = trunc i64 %92 to i32
  %94 = call i32 @strlcpy(i8* %87, i8* %91, i32 %93)
  %95 = load i8*, i8** %11, align 8
  %96 = load i8*, i8** %10, align 8
  %97 = load i8*, i8** %12, align 8
  %98 = load i64, i64* %9, align 8
  %99 = call i32 @path_relative_to(i8* %95, i8* %96, i8* %97, i64 %98)
  %100 = load i8*, i8** %11, align 8
  %101 = call i32 @make_relative_path_portable(i8* %100)
  %102 = load i32*, i32** %4, align 8
  %103 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %104 = load i8*, i8** %11, align 8
  %105 = call i32 @config_set_path(i32* %102, i8* %103, i8* %104)
  br label %114

106:                                              ; preds = %74
  %107 = load i32*, i32** %4, align 8
  %108 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %109 = load %struct.video_shader_pass*, %struct.video_shader_pass** %13, align 8
  %110 = getelementptr inbounds %struct.video_shader_pass, %struct.video_shader_pass* %109, i32 0, i32 6
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 0
  %112 = load i8*, i8** %111, align 8
  %113 = call i32 @config_set_path(i32* %107, i8* %108, i8* %112)
  br label %114

114:                                              ; preds = %106, %86
  %115 = load %struct.video_shader_pass*, %struct.video_shader_pass** %13, align 8
  %116 = getelementptr inbounds %struct.video_shader_pass, %struct.video_shader_pass* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @RARCH_FILTER_UNSPEC, align 8
  %119 = icmp ne i64 %117, %118
  br i1 %119, label %120, label %133

120:                                              ; preds = %114
  %121 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %122 = load i32, i32* %7, align 4
  %123 = call i32 @snprintf(i8* %121, i32 64, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %122)
  %124 = load i32*, i32** %4, align 8
  %125 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %126 = load %struct.video_shader_pass*, %struct.video_shader_pass** %13, align 8
  %127 = getelementptr inbounds %struct.video_shader_pass, %struct.video_shader_pass* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* @RARCH_FILTER_LINEAR, align 8
  %130 = icmp eq i64 %128, %129
  %131 = zext i1 %130 to i32
  %132 = call i32 @config_set_bool(i32* %124, i8* %125, i32 %131)
  br label %133

133:                                              ; preds = %120, %114
  %134 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %135 = load i32, i32* %7, align 4
  %136 = call i32 @snprintf(i8* %134, i32 64, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %135)
  %137 = load i32*, i32** %4, align 8
  %138 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %139 = load %struct.video_shader_pass*, %struct.video_shader_pass** %13, align 8
  %140 = getelementptr inbounds %struct.video_shader_pass, %struct.video_shader_pass* %139, i32 0, i32 5
  %141 = load i32, i32* %140, align 4
  %142 = call i8* @wrap_mode_to_str(i32 %141)
  %143 = call i32 @config_set_string(i32* %137, i8* %138, i8* %142)
  %144 = load %struct.video_shader_pass*, %struct.video_shader_pass** %13, align 8
  %145 = getelementptr inbounds %struct.video_shader_pass, %struct.video_shader_pass* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %158

148:                                              ; preds = %133
  %149 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %150 = load i32, i32* %7, align 4
  %151 = call i32 @snprintf(i8* %149, i32 64, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i32 %150)
  %152 = load i32*, i32** %4, align 8
  %153 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %154 = load %struct.video_shader_pass*, %struct.video_shader_pass** %13, align 8
  %155 = getelementptr inbounds %struct.video_shader_pass, %struct.video_shader_pass* %154, i32 0, i32 1
  %156 = load i64, i64* %155, align 8
  %157 = call i32 @config_set_int(i32* %152, i8* %153, i64 %156)
  br label %158

158:                                              ; preds = %148, %133
  %159 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %160 = load i32, i32* %7, align 4
  %161 = call i32 @snprintf(i8* %159, i32 64, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32 %160)
  %162 = load i32*, i32** %4, align 8
  %163 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %164 = load %struct.video_shader_pass*, %struct.video_shader_pass** %13, align 8
  %165 = getelementptr inbounds %struct.video_shader_pass, %struct.video_shader_pass* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 8
  %167 = call i32 @config_set_bool(i32* %162, i8* %163, i32 %166)
  %168 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %169 = load i32, i32* %7, align 4
  %170 = call i32 @snprintf(i8* %168, i32 64, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i32 %169)
  %171 = load i32*, i32** %4, align 8
  %172 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %173 = load %struct.video_shader_pass*, %struct.video_shader_pass** %13, align 8
  %174 = getelementptr inbounds %struct.video_shader_pass, %struct.video_shader_pass* %173, i32 0, i32 3
  %175 = load i8*, i8** %174, align 8
  %176 = call i32 @config_set_string(i32* %171, i8* %172, i8* %175)
  %177 = load i32*, i32** %4, align 8
  %178 = load %struct.video_shader_pass*, %struct.video_shader_pass** %13, align 8
  %179 = getelementptr inbounds %struct.video_shader_pass, %struct.video_shader_pass* %178, i32 0, i32 4
  %180 = load i32, i32* %7, align 4
  %181 = call i32 @shader_write_fbo(i32* %177, i32* %179, i32 %180)
  br label %182

182:                                              ; preds = %158
  %183 = load i32, i32* %7, align 4
  %184 = add i32 %183, 1
  store i32 %184, i32* %7, align 4
  br label %67

185:                                              ; preds = %67
  %186 = load %struct.video_shader*, %struct.video_shader** %5, align 8
  %187 = getelementptr inbounds %struct.video_shader, %struct.video_shader* %186, i32 0, i32 2
  %188 = load i32, i32* %187, align 8
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %271

190:                                              ; preds = %185
  store i64 4096, i64* %14, align 8
  %191 = load i64, i64* %14, align 8
  %192 = call i64 @malloc(i64 %191)
  %193 = inttoptr i64 %192 to i8*
  store i8* %193, i8** %15, align 8
  %194 = load i8*, i8** %15, align 8
  %195 = icmp ne i8* %194, null
  br i1 %195, label %196, label %270

196:                                              ; preds = %190
  %197 = load i8*, i8** %15, align 8
  %198 = getelementptr inbounds i8, i8* %197, i64 0
  store i8 0, i8* %198, align 1
  %199 = load i8*, i8** %15, align 8
  %200 = load %struct.video_shader*, %struct.video_shader** %5, align 8
  %201 = getelementptr inbounds %struct.video_shader, %struct.video_shader* %200, i32 0, i32 5
  %202 = load %struct.TYPE_5__*, %struct.TYPE_5__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %202, i64 0
  %204 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %203, i32 0, i32 0
  %205 = load i8*, i8** %204, align 8
  %206 = load i64, i64* %14, align 8
  %207 = trunc i64 %206 to i32
  %208 = call i32 @strlcpy(i8* %199, i8* %205, i32 %207)
  store i32 1, i32* %7, align 4
  br label %209

209:                                              ; preds = %232, %196
  %210 = load i32, i32* %7, align 4
  %211 = load %struct.video_shader*, %struct.video_shader** %5, align 8
  %212 = getelementptr inbounds %struct.video_shader, %struct.video_shader* %211, i32 0, i32 2
  %213 = load i32, i32* %212, align 8
  %214 = icmp ult i32 %210, %213
  br i1 %214, label %215, label %235

215:                                              ; preds = %209
  %216 = load i8*, i8** %15, align 8
  %217 = load i64, i64* %14, align 8
  %218 = trunc i64 %217 to i32
  %219 = call i32 @strlcat(i8* %216, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0), i32 %218)
  %220 = load i8*, i8** %15, align 8
  %221 = load %struct.video_shader*, %struct.video_shader** %5, align 8
  %222 = getelementptr inbounds %struct.video_shader, %struct.video_shader* %221, i32 0, i32 5
  %223 = load %struct.TYPE_5__*, %struct.TYPE_5__** %222, align 8
  %224 = load i32, i32* %7, align 4
  %225 = zext i32 %224 to i64
  %226 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %223, i64 %225
  %227 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %226, i32 0, i32 0
  %228 = load i8*, i8** %227, align 8
  %229 = load i64, i64* %14, align 8
  %230 = trunc i64 %229 to i32
  %231 = call i32 @strlcat(i8* %220, i8* %228, i32 %230)
  br label %232

232:                                              ; preds = %215
  %233 = load i32, i32* %7, align 4
  %234 = add i32 %233, 1
  store i32 %234, i32* %7, align 4
  br label %209

235:                                              ; preds = %209
  %236 = load i32*, i32** %4, align 8
  %237 = load i8*, i8** %15, align 8
  %238 = call i32 @config_set_string(i32* %236, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0), i8* %237)
  store i32 0, i32* %7, align 4
  br label %239

239:                                              ; preds = %264, %235
  %240 = load i32, i32* %7, align 4
  %241 = load %struct.video_shader*, %struct.video_shader** %5, align 8
  %242 = getelementptr inbounds %struct.video_shader, %struct.video_shader* %241, i32 0, i32 2
  %243 = load i32, i32* %242, align 8
  %244 = icmp ult i32 %240, %243
  br i1 %244, label %245, label %267

245:                                              ; preds = %239
  %246 = load i32*, i32** %4, align 8
  %247 = load %struct.video_shader*, %struct.video_shader** %5, align 8
  %248 = getelementptr inbounds %struct.video_shader, %struct.video_shader* %247, i32 0, i32 5
  %249 = load %struct.TYPE_5__*, %struct.TYPE_5__** %248, align 8
  %250 = load i32, i32* %7, align 4
  %251 = zext i32 %250 to i64
  %252 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %249, i64 %251
  %253 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %252, i32 0, i32 0
  %254 = load i8*, i8** %253, align 8
  %255 = load %struct.video_shader*, %struct.video_shader** %5, align 8
  %256 = getelementptr inbounds %struct.video_shader, %struct.video_shader* %255, i32 0, i32 5
  %257 = load %struct.TYPE_5__*, %struct.TYPE_5__** %256, align 8
  %258 = load i32, i32* %7, align 4
  %259 = zext i32 %258 to i64
  %260 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %257, i64 %259
  %261 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %260, i32 0, i32 1
  %262 = load i32, i32* %261, align 8
  %263 = call i32 @config_set_float(i32* %246, i8* %254, i32 %262)
  br label %264

264:                                              ; preds = %245
  %265 = load i32, i32* %7, align 4
  %266 = add i32 %265, 1
  store i32 %266, i32* %7, align 4
  br label %239

267:                                              ; preds = %239
  %268 = load i8*, i8** %15, align 8
  %269 = call i32 @free(i8* %268)
  br label %270

270:                                              ; preds = %267, %190
  br label %271

271:                                              ; preds = %270, %185
  %272 = load %struct.video_shader*, %struct.video_shader** %5, align 8
  %273 = getelementptr inbounds %struct.video_shader, %struct.video_shader* %272, i32 0, i32 3
  %274 = load i32, i32* %273, align 4
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %276, label %480

276:                                              ; preds = %271
  store i64 4096, i64* %16, align 8
  %277 = load i64, i64* %16, align 8
  %278 = call i64 @malloc(i64 %277)
  %279 = inttoptr i64 %278 to i8*
  store i8* %279, i8** %17, align 8
  %280 = load i8*, i8** %17, align 8
  %281 = icmp ne i8* %280, null
  br i1 %281, label %282, label %479

282:                                              ; preds = %276
  %283 = load i8*, i8** %17, align 8
  %284 = getelementptr inbounds i8, i8* %283, i64 0
  store i8 0, i8* %284, align 1
  %285 = load i8*, i8** %17, align 8
  %286 = load %struct.video_shader*, %struct.video_shader** %5, align 8
  %287 = getelementptr inbounds %struct.video_shader, %struct.video_shader* %286, i32 0, i32 4
  %288 = load %struct.TYPE_6__*, %struct.TYPE_6__** %287, align 8
  %289 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %288, i64 0
  %290 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %289, i32 0, i32 0
  %291 = load i8*, i8** %290, align 8
  %292 = load i64, i64* %16, align 8
  %293 = trunc i64 %292 to i32
  %294 = call i32 @strlcpy(i8* %285, i8* %291, i32 %293)
  store i32 1, i32* %7, align 4
  br label %295

295:                                              ; preds = %318, %282
  %296 = load i32, i32* %7, align 4
  %297 = load %struct.video_shader*, %struct.video_shader** %5, align 8
  %298 = getelementptr inbounds %struct.video_shader, %struct.video_shader* %297, i32 0, i32 3
  %299 = load i32, i32* %298, align 4
  %300 = icmp ult i32 %296, %299
  br i1 %300, label %301, label %321

301:                                              ; preds = %295
  %302 = load i8*, i8** %17, align 8
  %303 = load i64, i64* %16, align 8
  %304 = trunc i64 %303 to i32
  %305 = call i32 @strlcat(i8* %302, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0), i32 %304)
  %306 = load i8*, i8** %17, align 8
  %307 = load %struct.video_shader*, %struct.video_shader** %5, align 8
  %308 = getelementptr inbounds %struct.video_shader, %struct.video_shader* %307, i32 0, i32 4
  %309 = load %struct.TYPE_6__*, %struct.TYPE_6__** %308, align 8
  %310 = load i32, i32* %7, align 4
  %311 = zext i32 %310 to i64
  %312 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %309, i64 %311
  %313 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %312, i32 0, i32 0
  %314 = load i8*, i8** %313, align 8
  %315 = load i64, i64* %16, align 8
  %316 = trunc i64 %315 to i32
  %317 = call i32 @strlcat(i8* %306, i8* %314, i32 %316)
  br label %318

318:                                              ; preds = %301
  %319 = load i32, i32* %7, align 4
  %320 = add i32 %319, 1
  store i32 %320, i32* %7, align 4
  br label %295

321:                                              ; preds = %295
  %322 = load i32*, i32** %4, align 8
  %323 = load i8*, i8** %17, align 8
  %324 = call i32 @config_set_string(i32* %322, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), i8* %323)
  %325 = load i8*, i8** %17, align 8
  %326 = call i32 @free(i8* %325)
  store i32 0, i32* %7, align 4
  br label %327

327:                                              ; preds = %475, %321
  %328 = load i32, i32* %7, align 4
  %329 = load %struct.video_shader*, %struct.video_shader** %5, align 8
  %330 = getelementptr inbounds %struct.video_shader, %struct.video_shader* %329, i32 0, i32 3
  %331 = load i32, i32* %330, align 4
  %332 = icmp ult i32 %328, %331
  br i1 %332, label %333, label %478

333:                                              ; preds = %327
  %334 = load i8*, i8** %6, align 8
  %335 = icmp ne i8* %334, null
  br i1 %335, label %336, label %367

336:                                              ; preds = %333
  %337 = load i8*, i8** %10, align 8
  %338 = load %struct.video_shader*, %struct.video_shader** %5, align 8
  %339 = getelementptr inbounds %struct.video_shader, %struct.video_shader* %338, i32 0, i32 4
  %340 = load %struct.TYPE_6__*, %struct.TYPE_6__** %339, align 8
  %341 = load i32, i32* %7, align 4
  %342 = zext i32 %341 to i64
  %343 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %340, i64 %342
  %344 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %343, i32 0, i32 1
  %345 = load i8*, i8** %344, align 8
  %346 = load i64, i64* %9, align 8
  %347 = trunc i64 %346 to i32
  %348 = call i32 @strlcpy(i8* %337, i8* %345, i32 %347)
  %349 = load i8*, i8** %11, align 8
  %350 = load i8*, i8** %10, align 8
  %351 = load i8*, i8** %12, align 8
  %352 = load i64, i64* %9, align 8
  %353 = call i32 @path_relative_to(i8* %349, i8* %350, i8* %351, i64 %352)
  %354 = load i8*, i8** %11, align 8
  %355 = call i32 @make_relative_path_portable(i8* %354)
  %356 = load i32*, i32** %4, align 8
  %357 = load %struct.video_shader*, %struct.video_shader** %5, align 8
  %358 = getelementptr inbounds %struct.video_shader, %struct.video_shader* %357, i32 0, i32 4
  %359 = load %struct.TYPE_6__*, %struct.TYPE_6__** %358, align 8
  %360 = load i32, i32* %7, align 4
  %361 = zext i32 %360 to i64
  %362 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %359, i64 %361
  %363 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %362, i32 0, i32 0
  %364 = load i8*, i8** %363, align 8
  %365 = load i8*, i8** %11, align 8
  %366 = call i32 @config_set_path(i32* %356, i8* %364, i8* %365)
  br label %386

367:                                              ; preds = %333
  %368 = load i32*, i32** %4, align 8
  %369 = load %struct.video_shader*, %struct.video_shader** %5, align 8
  %370 = getelementptr inbounds %struct.video_shader, %struct.video_shader* %369, i32 0, i32 4
  %371 = load %struct.TYPE_6__*, %struct.TYPE_6__** %370, align 8
  %372 = load i32, i32* %7, align 4
  %373 = zext i32 %372 to i64
  %374 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %371, i64 %373
  %375 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %374, i32 0, i32 0
  %376 = load i8*, i8** %375, align 8
  %377 = load %struct.video_shader*, %struct.video_shader** %5, align 8
  %378 = getelementptr inbounds %struct.video_shader, %struct.video_shader* %377, i32 0, i32 4
  %379 = load %struct.TYPE_6__*, %struct.TYPE_6__** %378, align 8
  %380 = load i32, i32* %7, align 4
  %381 = zext i32 %380 to i64
  %382 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %379, i64 %381
  %383 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %382, i32 0, i32 1
  %384 = load i8*, i8** %383, align 8
  %385 = call i32 @config_set_path(i32* %368, i8* %376, i8* %384)
  br label %386

386:                                              ; preds = %367, %336
  %387 = load %struct.video_shader*, %struct.video_shader** %5, align 8
  %388 = getelementptr inbounds %struct.video_shader, %struct.video_shader* %387, i32 0, i32 4
  %389 = load %struct.TYPE_6__*, %struct.TYPE_6__** %388, align 8
  %390 = load i32, i32* %7, align 4
  %391 = zext i32 %390 to i64
  %392 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %389, i64 %391
  %393 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %392, i32 0, i32 2
  %394 = load i64, i64* %393, align 8
  %395 = load i64, i64* @RARCH_FILTER_UNSPEC, align 8
  %396 = icmp ne i64 %394, %395
  br i1 %396, label %397, label %425

397:                                              ; preds = %386
  %398 = getelementptr inbounds [128 x i8], [128 x i8]* %18, i64 0, i64 0
  store i8 0, i8* %398, align 16
  %399 = getelementptr inbounds [128 x i8], [128 x i8]* %18, i64 0, i64 0
  %400 = load %struct.video_shader*, %struct.video_shader** %5, align 8
  %401 = getelementptr inbounds %struct.video_shader, %struct.video_shader* %400, i32 0, i32 4
  %402 = load %struct.TYPE_6__*, %struct.TYPE_6__** %401, align 8
  %403 = load i32, i32* %7, align 4
  %404 = zext i32 %403 to i64
  %405 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %402, i64 %404
  %406 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %405, i32 0, i32 0
  %407 = load i8*, i8** %406, align 8
  %408 = call i32 @strlcpy(i8* %399, i8* %407, i32 128)
  %409 = getelementptr inbounds [128 x i8], [128 x i8]* %18, i64 0, i64 0
  %410 = call i32 @strlcat(i8* %409, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0), i32 128)
  %411 = load i32*, i32** %4, align 8
  %412 = getelementptr inbounds [128 x i8], [128 x i8]* %18, i64 0, i64 0
  %413 = load %struct.video_shader*, %struct.video_shader** %5, align 8
  %414 = getelementptr inbounds %struct.video_shader, %struct.video_shader* %413, i32 0, i32 4
  %415 = load %struct.TYPE_6__*, %struct.TYPE_6__** %414, align 8
  %416 = load i32, i32* %7, align 4
  %417 = zext i32 %416 to i64
  %418 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %415, i64 %417
  %419 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %418, i32 0, i32 2
  %420 = load i64, i64* %419, align 8
  %421 = load i64, i64* @RARCH_FILTER_LINEAR, align 8
  %422 = icmp eq i64 %420, %421
  %423 = zext i1 %422 to i32
  %424 = call i32 @config_set_bool(i32* %411, i8* %412, i32 %423)
  br label %425

425:                                              ; preds = %397, %386
  %426 = getelementptr inbounds [128 x i8], [128 x i8]* %19, i64 0, i64 0
  store i8 0, i8* %426, align 16
  %427 = getelementptr inbounds [128 x i8], [128 x i8]* %19, i64 0, i64 0
  %428 = load %struct.video_shader*, %struct.video_shader** %5, align 8
  %429 = getelementptr inbounds %struct.video_shader, %struct.video_shader* %428, i32 0, i32 4
  %430 = load %struct.TYPE_6__*, %struct.TYPE_6__** %429, align 8
  %431 = load i32, i32* %7, align 4
  %432 = zext i32 %431 to i64
  %433 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %430, i64 %432
  %434 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %433, i32 0, i32 0
  %435 = load i8*, i8** %434, align 8
  %436 = call i32 @strlcpy(i8* %427, i8* %435, i32 128)
  %437 = getelementptr inbounds [128 x i8], [128 x i8]* %19, i64 0, i64 0
  %438 = call i32 @strlcat(i8* %437, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0), i32 128)
  %439 = load i32*, i32** %4, align 8
  %440 = getelementptr inbounds [128 x i8], [128 x i8]* %19, i64 0, i64 0
  %441 = load %struct.video_shader*, %struct.video_shader** %5, align 8
  %442 = getelementptr inbounds %struct.video_shader, %struct.video_shader* %441, i32 0, i32 4
  %443 = load %struct.TYPE_6__*, %struct.TYPE_6__** %442, align 8
  %444 = load i32, i32* %7, align 4
  %445 = zext i32 %444 to i64
  %446 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %443, i64 %445
  %447 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %446, i32 0, i32 4
  %448 = load i32, i32* %447, align 4
  %449 = call i8* @wrap_mode_to_str(i32 %448)
  %450 = call i32 @config_set_string(i32* %439, i8* %440, i8* %449)
  %451 = getelementptr inbounds [128 x i8], [128 x i8]* %20, i64 0, i64 0
  store i8 0, i8* %451, align 16
  %452 = getelementptr inbounds [128 x i8], [128 x i8]* %20, i64 0, i64 0
  %453 = load %struct.video_shader*, %struct.video_shader** %5, align 8
  %454 = getelementptr inbounds %struct.video_shader, %struct.video_shader* %453, i32 0, i32 4
  %455 = load %struct.TYPE_6__*, %struct.TYPE_6__** %454, align 8
  %456 = load i32, i32* %7, align 4
  %457 = zext i32 %456 to i64
  %458 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %455, i64 %457
  %459 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %458, i32 0, i32 0
  %460 = load i8*, i8** %459, align 8
  %461 = call i32 @strlcpy(i8* %452, i8* %460, i32 128)
  %462 = getelementptr inbounds [128 x i8], [128 x i8]* %20, i64 0, i64 0
  %463 = call i32 @strlcat(i8* %462, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0), i32 128)
  %464 = load i32*, i32** %4, align 8
  %465 = getelementptr inbounds [128 x i8], [128 x i8]* %20, i64 0, i64 0
  %466 = load %struct.video_shader*, %struct.video_shader** %5, align 8
  %467 = getelementptr inbounds %struct.video_shader, %struct.video_shader* %466, i32 0, i32 4
  %468 = load %struct.TYPE_6__*, %struct.TYPE_6__** %467, align 8
  %469 = load i32, i32* %7, align 4
  %470 = zext i32 %469 to i64
  %471 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %468, i64 %470
  %472 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %471, i32 0, i32 3
  %473 = load i32, i32* %472, align 8
  %474 = call i32 @config_set_bool(i32* %464, i8* %465, i32 %473)
  br label %475

475:                                              ; preds = %425
  %476 = load i32, i32* %7, align 4
  %477 = add i32 %476, 1
  store i32 %477, i32* %7, align 4
  br label %327

478:                                              ; preds = %327
  br label %479

479:                                              ; preds = %478, %276
  br label %480

480:                                              ; preds = %479, %271
  %481 = load i8*, i8** %10, align 8
  %482 = call i32 @free(i8* %481)
  br label %483

483:                                              ; preds = %480, %35
  ret void
}

declare dso_local i64 @malloc(i64) #1

declare dso_local i32 @config_set_int(i32*, i8*, i64) #1

declare dso_local i32 @strlcpy(i8*, i8*, i32) #1

declare dso_local i32 @path_resolve_realpath(i8*, i64, i32) #1

declare dso_local i32 @path_basedir(i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @path_relative_to(i8*, i8*, i8*, i64) #1

declare dso_local i32 @make_relative_path_portable(i8*) #1

declare dso_local i32 @config_set_path(i32*, i8*, i8*) #1

declare dso_local i32 @config_set_bool(i32*, i8*, i32) #1

declare dso_local i32 @config_set_string(i32*, i8*, i8*) #1

declare dso_local i8* @wrap_mode_to_str(i32) #1

declare dso_local i32 @shader_write_fbo(i32*, i32*, i32) #1

declare dso_local i32 @strlcat(i8*, i8*, i32) #1

declare dso_local i32 @config_set_float(i32*, i8*, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
