; ModuleID = '/home/carl/AnghaBench/RetroArch/tasks/extr_task_overlay.c_task_overlay_load_desc.c'
source_filename = "/home/carl/AnghaBench/RetroArch/tasks/extr_task_overlay.c_task_overlay_load_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32* }
%struct.overlay_desc = type { i32, i8*, float, float, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, i32, i32, i32 }
%struct.overlay = type { i32 }
%struct.string_list = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i8* }

@.str = private unnamed_addr constant [17 x i8] c"overlay%u_desc%u\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"overlay%u_desc%u_normalized\00", align 1
@.str.2 = private unnamed_addr constant [74 x i8] c"[Overlay]: Base overlay is not set and not using normalized coordinates.\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"[Overlay]: Didn't find key: %s.\0A\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.5 = private unnamed_addr constant [42 x i8] c"[Overlay]: Failed to split overlay desc.\0A\00", align 1
@.str.6 = private unnamed_addr constant [65 x i8] c"[Overlay]: Overlay desc is invalid. Requires at least 6 tokens.\0A\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"analog_left\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"analog_right\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"retrok_\00", align 1
@OVERLAY_TYPE_KEYBOARD = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [2 x i8] c"|\00", align 1
@OVERLAY_TYPE_BUTTONS = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [4 x i8] c"nul\00", align 1
@RARCH_OVERLAY_NEXT = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [29 x i8] c"overlay%u_desc%u_next_target\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"radial\00", align 1
@OVERLAY_HITBOX_RADIAL = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [5 x i8] c"rect\00", align 1
@OVERLAY_HITBOX_RECT = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [65 x i8] c"[Overlay]: Hitbox type (%s) is invalid. Use \22radial\22 or \22rect\22.\0A\00", align 1
@.str.16 = private unnamed_addr constant [49 x i8] c"[Overlay]: Analog hitbox type must be \22radial\22.\0A\00", align 1
@.str.17 = private unnamed_addr constant [30 x i8] c"overlay%u_desc%u_saturate_pct\00", align 1
@.str.18 = private unnamed_addr constant [27 x i8] c"overlay%u_desc%u_alpha_mod\00", align 1
@.str.19 = private unnamed_addr constant [27 x i8] c"overlay%u_desc%u_range_mod\00", align 1
@.str.20 = private unnamed_addr constant [25 x i8] c"overlay%u_desc%u_movable\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, %struct.overlay_desc*, %struct.overlay*, i32, i32, i32, i32, i32, float, float)* @task_overlay_load_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @task_overlay_load_desc(%struct.TYPE_5__* %0, %struct.overlay_desc* %1, %struct.overlay* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, float %8, float %9) #0 {
  %11 = alloca %struct.TYPE_5__*, align 8
  %12 = alloca %struct.overlay_desc*, align 8
  %13 = alloca %struct.overlay*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca float, align 4
  %20 = alloca float, align 4
  %21 = alloca float, align 4
  %22 = alloca float, align 4
  %23 = alloca [64 x i8], align 16
  %24 = alloca [64 x i8], align 16
  %25 = alloca [64 x i8], align 16
  %26 = alloca [256 x i8], align 16
  %27 = alloca float, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i8*, align 8
  %32 = alloca %struct.string_list*, align 8
  %33 = alloca i8*, align 8
  %34 = alloca i8*, align 8
  %35 = alloca i8*, align 8
  %36 = alloca i32*, align 8
  %37 = alloca i8*, align 8
  %38 = alloca i8*, align 8
  %39 = alloca [64 x i8], align 16
  %40 = alloca [64 x i8], align 16
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %11, align 8
  store %struct.overlay_desc* %1, %struct.overlay_desc** %12, align 8
  store %struct.overlay* %2, %struct.overlay** %13, align 8
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store float %8, float* %19, align 4
  store float %9, float* %20, align 4
  store float 0.000000e+00, float* %27, align 4
  store i32 0, i32* %28, align 4
  store i32 1, i32* %29, align 4
  store i32 0, i32* %30, align 4
  store i8* null, i8** %31, align 8
  store %struct.string_list* null, %struct.string_list** %32, align 8
  store i8* null, i8** %33, align 8
  store i8* null, i8** %34, align 8
  store i8* null, i8** %35, align 8
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  store i32* %43, i32** %36, align 8
  %44 = getelementptr inbounds [256 x i8], [256 x i8]* %26, i64 0, i64 0
  store i8 0, i8* %44, align 16
  %45 = getelementptr inbounds [64 x i8], [64 x i8]* %25, i64 0, i64 0
  store i8 0, i8* %45, align 16
  %46 = getelementptr inbounds [64 x i8], [64 x i8]* %24, i64 0, i64 0
  store i8 0, i8* %46, align 16
  %47 = getelementptr inbounds [64 x i8], [64 x i8]* %23, i64 0, i64 0
  store i8 0, i8* %47, align 16
  %48 = getelementptr inbounds [64 x i8], [64 x i8]* %23, i64 0, i64 0
  %49 = load i32, i32* %14, align 4
  %50 = load i32, i32* %15, align 4
  %51 = call i32 @snprintf(i8* %48, i32 64, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %49, i32 %50)
  %52 = getelementptr inbounds [64 x i8], [64 x i8]* %25, i64 0, i64 0
  %53 = load i32, i32* %14, align 4
  %54 = load i32, i32* %15, align 4
  %55 = call i32 @snprintf(i8* %52, i32 64, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %53, i32 %54)
  %56 = load i32*, i32** %36, align 8
  %57 = getelementptr inbounds [64 x i8], [64 x i8]* %25, i64 0, i64 0
  %58 = call i64 @config_get_bool(i32* %56, i8* %57, i32* %28)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %10
  %61 = load i32, i32* %28, align 4
  store i32 %61, i32* %18, align 4
  br label %62

62:                                               ; preds = %60, %10
  %63 = load i32, i32* %18, align 4
  %64 = icmp ne i32 %63, 0
  %65 = xor i1 %64, true
  %66 = zext i1 %65 to i32
  store i32 %66, i32* %30, align 4
  %67 = load i32, i32* %30, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %77

69:                                               ; preds = %62
  %70 = load i32, i32* %16, align 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %69
  %73 = load i32, i32* %17, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %72, %69
  %76 = call i32 (i8*, ...) @RARCH_ERR(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %29, align 4
  br label %399

77:                                               ; preds = %72, %62
  %78 = load i32*, i32** %36, align 8
  %79 = getelementptr inbounds [64 x i8], [64 x i8]* %23, i64 0, i64 0
  %80 = getelementptr inbounds [256 x i8], [256 x i8]* %26, i64 0, i64 0
  %81 = call i32 @config_get_array(i32* %78, i8* %79, i8* %80, i32 256)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %86, label %83

83:                                               ; preds = %77
  %84 = getelementptr inbounds [64 x i8], [64 x i8]* %23, i64 0, i64 0
  %85 = call i32 (i8*, ...) @RARCH_ERR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i8* %84)
  store i32 0, i32* %29, align 4
  br label %399

86:                                               ; preds = %77
  %87 = getelementptr inbounds [256 x i8], [256 x i8]* %26, i64 0, i64 0
  %88 = call %struct.string_list* @string_split(i8* %87, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  store %struct.string_list* %88, %struct.string_list** %32, align 8
  %89 = load %struct.string_list*, %struct.string_list** %32, align 8
  %90 = icmp ne %struct.string_list* %89, null
  br i1 %90, label %93, label %91

91:                                               ; preds = %86
  %92 = call i32 (i8*, ...) @RARCH_ERR(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %29, align 4
  br label %399

93:                                               ; preds = %86
  %94 = load %struct.string_list*, %struct.string_list** %32, align 8
  %95 = getelementptr inbounds %struct.string_list, %struct.string_list* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = icmp slt i32 %96, 6
  br i1 %97, label %98, label %100

98:                                               ; preds = %93
  %99 = call i32 (i8*, ...) @RARCH_ERR(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %29, align 4
  br label %399

100:                                              ; preds = %93
  %101 = load %struct.string_list*, %struct.string_list** %32, align 8
  %102 = getelementptr inbounds %struct.string_list, %struct.string_list* %101, i32 0, i32 1
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i64 0
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  %106 = load i8*, i8** %105, align 8
  store i8* %106, i8** %31, align 8
  %107 = load %struct.string_list*, %struct.string_list** %32, align 8
  %108 = getelementptr inbounds %struct.string_list, %struct.string_list* %107, i32 0, i32 1
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i64 1
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 0
  %112 = load i8*, i8** %111, align 8
  store i8* %112, i8** %33, align 8
  %113 = load %struct.string_list*, %struct.string_list** %32, align 8
  %114 = getelementptr inbounds %struct.string_list, %struct.string_list* %113, i32 0, i32 1
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i64 2
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 0
  %118 = load i8*, i8** %117, align 8
  store i8* %118, i8** %34, align 8
  %119 = load %struct.string_list*, %struct.string_list** %32, align 8
  %120 = getelementptr inbounds %struct.string_list, %struct.string_list* %119, i32 0, i32 1
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i64 3
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 0
  %124 = load i8*, i8** %123, align 8
  store i8* %124, i8** %35, align 8
  %125 = load %struct.overlay_desc*, %struct.overlay_desc** %12, align 8
  %126 = getelementptr inbounds %struct.overlay_desc, %struct.overlay_desc* %125, i32 0, i32 20
  store i32 0, i32* %126, align 8
  %127 = load %struct.overlay_desc*, %struct.overlay_desc** %12, align 8
  %128 = getelementptr inbounds %struct.overlay_desc, %struct.overlay_desc* %127, i32 0, i32 19
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @BIT256_CLEAR_ALL(i32 %129)
  %131 = load i8*, i8** %31, align 8
  %132 = call i64 @string_is_equal(i8* %131, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0))
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %100
  %135 = load %struct.overlay_desc*, %struct.overlay_desc** %12, align 8
  %136 = getelementptr inbounds %struct.overlay_desc, %struct.overlay_desc* %135, i32 0, i32 0
  store i32 129, i32* %136, align 8
  br label %202

137:                                              ; preds = %100
  %138 = load i8*, i8** %31, align 8
  %139 = call i64 @string_is_equal(i8* %138, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0))
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %144

141:                                              ; preds = %137
  %142 = load %struct.overlay_desc*, %struct.overlay_desc** %12, align 8
  %143 = getelementptr inbounds %struct.overlay_desc, %struct.overlay_desc* %142, i32 0, i32 0
  store i32 128, i32* %143, align 8
  br label %201

144:                                              ; preds = %137
  %145 = load i8*, i8** %31, align 8
  %146 = call i8* @strstr(i8* %145, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0))
  %147 = load i8*, i8** %31, align 8
  %148 = icmp eq i8* %146, %147
  br i1 %148, label %149, label %158

149:                                              ; preds = %144
  %150 = load i32, i32* @OVERLAY_TYPE_KEYBOARD, align 4
  %151 = load %struct.overlay_desc*, %struct.overlay_desc** %12, align 8
  %152 = getelementptr inbounds %struct.overlay_desc, %struct.overlay_desc* %151, i32 0, i32 0
  store i32 %150, i32* %152, align 8
  %153 = load i8*, i8** %31, align 8
  %154 = getelementptr inbounds i8, i8* %153, i64 7
  %155 = call i32 @input_config_translate_str_to_rk(i8* %154)
  %156 = load %struct.overlay_desc*, %struct.overlay_desc** %12, align 8
  %157 = getelementptr inbounds %struct.overlay_desc, %struct.overlay_desc* %156, i32 0, i32 20
  store i32 %155, i32* %157, align 8
  br label %200

158:                                              ; preds = %144
  store i8* null, i8** %37, align 8
  %159 = load i8*, i8** %31, align 8
  %160 = call i8* @strtok_r(i8* %159, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0), i8** %37)
  store i8* %160, i8** %38, align 8
  %161 = load i32, i32* @OVERLAY_TYPE_BUTTONS, align 4
  %162 = load %struct.overlay_desc*, %struct.overlay_desc** %12, align 8
  %163 = getelementptr inbounds %struct.overlay_desc, %struct.overlay_desc* %162, i32 0, i32 0
  store i32 %161, i32* %163, align 8
  br label %164

164:                                              ; preds = %179, %158
  %165 = load i8*, i8** %38, align 8
  %166 = icmp ne i8* %165, null
  br i1 %166, label %167, label %181

167:                                              ; preds = %164
  %168 = load i8*, i8** %38, align 8
  %169 = call i64 @string_is_equal(i8* %168, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0))
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %178, label %171

171:                                              ; preds = %167
  %172 = load %struct.overlay_desc*, %struct.overlay_desc** %12, align 8
  %173 = getelementptr inbounds %struct.overlay_desc, %struct.overlay_desc* %172, i32 0, i32 19
  %174 = load i32, i32* %173, align 4
  %175 = load i8*, i8** %38, align 8
  %176 = call i32 @input_config_translate_str_to_bind_id(i8* %175)
  %177 = call i32 @BIT256_SET(i32 %174, i32 %176)
  br label %178

178:                                              ; preds = %171, %167
  br label %179

179:                                              ; preds = %178
  %180 = call i8* @strtok_r(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0), i8** %37)
  store i8* %180, i8** %38, align 8
  br label %164

181:                                              ; preds = %164
  %182 = load %struct.overlay_desc*, %struct.overlay_desc** %12, align 8
  %183 = getelementptr inbounds %struct.overlay_desc, %struct.overlay_desc* %182, i32 0, i32 19
  %184 = load i32, i32* %183, align 4
  %185 = load i32, i32* @RARCH_OVERLAY_NEXT, align 4
  %186 = call i64 @BIT256_GET(i32 %184, i32 %185)
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %199

188:                                              ; preds = %181
  %189 = getelementptr inbounds [64 x i8], [64 x i8]* %39, i64 0, i64 0
  %190 = load i32, i32* %14, align 4
  %191 = load i32, i32* %15, align 4
  %192 = call i32 @snprintf(i8* %189, i32 64, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.12, i64 0, i64 0), i32 %190, i32 %191)
  %193 = load i32*, i32** %36, align 8
  %194 = getelementptr inbounds [64 x i8], [64 x i8]* %39, i64 0, i64 0
  %195 = load %struct.overlay_desc*, %struct.overlay_desc** %12, align 8
  %196 = getelementptr inbounds %struct.overlay_desc, %struct.overlay_desc* %195, i32 0, i32 1
  %197 = load i8*, i8** %196, align 8
  %198 = call i32 @config_get_array(i32* %193, i8* %194, i8* %197, i32 8)
  br label %199

199:                                              ; preds = %188, %181
  br label %200

200:                                              ; preds = %199, %149
  br label %201

201:                                              ; preds = %200, %141
  br label %202

202:                                              ; preds = %201, %134
  store float 1.000000e+00, float* %21, align 4
  store float 1.000000e+00, float* %22, align 4
  %203 = load i32, i32* %30, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %214

205:                                              ; preds = %202
  %206 = load i32, i32* %16, align 4
  %207 = uitofp i32 %206 to float
  %208 = load float, float* %21, align 4
  %209 = fdiv float %208, %207
  store float %209, float* %21, align 4
  %210 = load i32, i32* %17, align 4
  %211 = uitofp i32 %210 to float
  %212 = load float, float* %22, align 4
  %213 = fdiv float %212, %211
  store float %213, float* %22, align 4
  br label %214

214:                                              ; preds = %205, %202
  %215 = load i8*, i8** %33, align 8
  %216 = call i64 @strtod(i8* %215, i32* null)
  %217 = sitofp i64 %216 to float
  %218 = load float, float* %21, align 4
  %219 = fmul float %217, %218
  %220 = load %struct.overlay_desc*, %struct.overlay_desc** %12, align 8
  %221 = getelementptr inbounds %struct.overlay_desc, %struct.overlay_desc* %220, i32 0, i32 2
  store float %219, float* %221, align 8
  %222 = load i8*, i8** %34, align 8
  %223 = call i64 @strtod(i8* %222, i32* null)
  %224 = sitofp i64 %223 to float
  %225 = load float, float* %22, align 4
  %226 = fmul float %224, %225
  %227 = load %struct.overlay_desc*, %struct.overlay_desc** %12, align 8
  %228 = getelementptr inbounds %struct.overlay_desc, %struct.overlay_desc* %227, i32 0, i32 3
  store float %226, float* %228, align 4
  %229 = load i8*, i8** %35, align 8
  %230 = call i64 @string_is_equal(i8* %229, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0))
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %232, label %236

232:                                              ; preds = %214
  %233 = load i32, i32* @OVERLAY_HITBOX_RADIAL, align 4
  %234 = load %struct.overlay_desc*, %struct.overlay_desc** %12, align 8
  %235 = getelementptr inbounds %struct.overlay_desc, %struct.overlay_desc* %234, i32 0, i32 18
  store i32 %233, i32* %235, align 8
  br label %248

236:                                              ; preds = %214
  %237 = load i8*, i8** %35, align 8
  %238 = call i64 @string_is_equal(i8* %237, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0))
  %239 = icmp ne i64 %238, 0
  br i1 %239, label %240, label %244

240:                                              ; preds = %236
  %241 = load i32, i32* @OVERLAY_HITBOX_RECT, align 4
  %242 = load %struct.overlay_desc*, %struct.overlay_desc** %12, align 8
  %243 = getelementptr inbounds %struct.overlay_desc, %struct.overlay_desc* %242, i32 0, i32 18
  store i32 %241, i32* %243, align 8
  br label %247

244:                                              ; preds = %236
  %245 = load i8*, i8** %35, align 8
  %246 = call i32 (i8*, ...) @RARCH_ERR(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.15, i64 0, i64 0), i8* %245)
  store i32 0, i32* %29, align 4
  br label %399

247:                                              ; preds = %240
  br label %248

248:                                              ; preds = %247, %232
  %249 = load %struct.overlay_desc*, %struct.overlay_desc** %12, align 8
  %250 = getelementptr inbounds %struct.overlay_desc, %struct.overlay_desc* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 8
  switch i32 %251, label %278 [
    i32 129, label %252
    i32 128, label %252
  ]

252:                                              ; preds = %248, %248
  %253 = getelementptr inbounds [64 x i8], [64 x i8]* %40, i64 0, i64 0
  store i8 0, i8* %253, align 16
  %254 = load %struct.overlay_desc*, %struct.overlay_desc** %12, align 8
  %255 = getelementptr inbounds %struct.overlay_desc, %struct.overlay_desc* %254, i32 0, i32 18
  %256 = load i32, i32* %255, align 8
  %257 = load i32, i32* @OVERLAY_HITBOX_RADIAL, align 4
  %258 = icmp ne i32 %256, %257
  br i1 %258, label %259, label %261

259:                                              ; preds = %252
  %260 = call i32 (i8*, ...) @RARCH_ERR(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.16, i64 0, i64 0))
  store i32 0, i32* %29, align 4
  br label %399

261:                                              ; preds = %252
  %262 = getelementptr inbounds [64 x i8], [64 x i8]* %40, i64 0, i64 0
  %263 = load i32, i32* %14, align 4
  %264 = load i32, i32* %15, align 4
  %265 = call i32 @snprintf(i8* %262, i32 64, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.17, i64 0, i64 0), i32 %263, i32 %264)
  %266 = load i32*, i32** %36, align 8
  %267 = getelementptr inbounds [64 x i8], [64 x i8]* %40, i64 0, i64 0
  %268 = call i64 @config_get_float(i32* %266, i8* %267, float* %27)
  %269 = icmp ne i64 %268, 0
  br i1 %269, label %270, label %274

270:                                              ; preds = %261
  %271 = load float, float* %27, align 4
  %272 = load %struct.overlay_desc*, %struct.overlay_desc** %12, align 8
  %273 = getelementptr inbounds %struct.overlay_desc, %struct.overlay_desc* %272, i32 0, i32 4
  store float %271, float* %273, align 8
  br label %277

274:                                              ; preds = %261
  %275 = load %struct.overlay_desc*, %struct.overlay_desc** %12, align 8
  %276 = getelementptr inbounds %struct.overlay_desc, %struct.overlay_desc* %275, i32 0, i32 4
  store float 1.000000e+00, float* %276, align 8
  br label %277

277:                                              ; preds = %274, %270
  br label %279

278:                                              ; preds = %248
  br label %279

279:                                              ; preds = %278, %277
  %280 = load %struct.string_list*, %struct.string_list** %32, align 8
  %281 = getelementptr inbounds %struct.string_list, %struct.string_list* %280, i32 0, i32 1
  %282 = load %struct.TYPE_4__*, %struct.TYPE_4__** %281, align 8
  %283 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %282, i64 4
  %284 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %283, i32 0, i32 0
  %285 = load i8*, i8** %284, align 8
  %286 = call i64 @strtod(i8* %285, i32* null)
  %287 = sitofp i64 %286 to float
  %288 = load float, float* %21, align 4
  %289 = fmul float %287, %288
  %290 = load %struct.overlay_desc*, %struct.overlay_desc** %12, align 8
  %291 = getelementptr inbounds %struct.overlay_desc, %struct.overlay_desc* %290, i32 0, i32 5
  store float %289, float* %291, align 4
  %292 = load %struct.string_list*, %struct.string_list** %32, align 8
  %293 = getelementptr inbounds %struct.string_list, %struct.string_list* %292, i32 0, i32 1
  %294 = load %struct.TYPE_4__*, %struct.TYPE_4__** %293, align 8
  %295 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %294, i64 5
  %296 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %295, i32 0, i32 0
  %297 = load i8*, i8** %296, align 8
  %298 = call i64 @strtod(i8* %297, i32* null)
  %299 = sitofp i64 %298 to float
  %300 = load float, float* %22, align 4
  %301 = fmul float %299, %300
  %302 = load %struct.overlay_desc*, %struct.overlay_desc** %12, align 8
  %303 = getelementptr inbounds %struct.overlay_desc, %struct.overlay_desc* %302, i32 0, i32 6
  store float %301, float* %303, align 8
  %304 = load %struct.overlay_desc*, %struct.overlay_desc** %12, align 8
  %305 = getelementptr inbounds %struct.overlay_desc, %struct.overlay_desc* %304, i32 0, i32 2
  %306 = load float, float* %305, align 8
  %307 = load %struct.overlay_desc*, %struct.overlay_desc** %12, align 8
  %308 = getelementptr inbounds %struct.overlay_desc, %struct.overlay_desc* %307, i32 0, i32 5
  %309 = load float, float* %308, align 4
  %310 = fsub float %306, %309
  %311 = load %struct.overlay_desc*, %struct.overlay_desc** %12, align 8
  %312 = getelementptr inbounds %struct.overlay_desc, %struct.overlay_desc* %311, i32 0, i32 7
  store float %310, float* %312, align 4
  %313 = load %struct.overlay_desc*, %struct.overlay_desc** %12, align 8
  %314 = getelementptr inbounds %struct.overlay_desc, %struct.overlay_desc* %313, i32 0, i32 5
  %315 = load float, float* %314, align 4
  %316 = fmul float 2.000000e+00, %315
  %317 = load %struct.overlay_desc*, %struct.overlay_desc** %12, align 8
  %318 = getelementptr inbounds %struct.overlay_desc, %struct.overlay_desc* %317, i32 0, i32 8
  store float %316, float* %318, align 8
  %319 = load %struct.overlay_desc*, %struct.overlay_desc** %12, align 8
  %320 = getelementptr inbounds %struct.overlay_desc, %struct.overlay_desc* %319, i32 0, i32 3
  %321 = load float, float* %320, align 4
  %322 = load %struct.overlay_desc*, %struct.overlay_desc** %12, align 8
  %323 = getelementptr inbounds %struct.overlay_desc, %struct.overlay_desc* %322, i32 0, i32 6
  %324 = load float, float* %323, align 8
  %325 = fsub float %321, %324
  %326 = load %struct.overlay_desc*, %struct.overlay_desc** %12, align 8
  %327 = getelementptr inbounds %struct.overlay_desc, %struct.overlay_desc* %326, i32 0, i32 9
  store float %325, float* %327, align 4
  %328 = load %struct.overlay_desc*, %struct.overlay_desc** %12, align 8
  %329 = getelementptr inbounds %struct.overlay_desc, %struct.overlay_desc* %328, i32 0, i32 6
  %330 = load float, float* %329, align 8
  %331 = fmul float 2.000000e+00, %330
  %332 = load %struct.overlay_desc*, %struct.overlay_desc** %12, align 8
  %333 = getelementptr inbounds %struct.overlay_desc, %struct.overlay_desc* %332, i32 0, i32 10
  store float %331, float* %333, align 8
  %334 = getelementptr inbounds [64 x i8], [64 x i8]* %24, i64 0, i64 0
  %335 = load i32, i32* %14, align 4
  %336 = load i32, i32* %15, align 4
  %337 = call i32 @snprintf(i8* %334, i32 64, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.18, i64 0, i64 0), i32 %335, i32 %336)
  %338 = load float, float* %19, align 4
  %339 = load %struct.overlay_desc*, %struct.overlay_desc** %12, align 8
  %340 = getelementptr inbounds %struct.overlay_desc, %struct.overlay_desc* %339, i32 0, i32 11
  store float %338, float* %340, align 4
  %341 = load i32*, i32** %36, align 8
  %342 = getelementptr inbounds [64 x i8], [64 x i8]* %24, i64 0, i64 0
  %343 = call i64 @config_get_float(i32* %341, i8* %342, float* %27)
  %344 = icmp ne i64 %343, 0
  br i1 %344, label %345, label %349

345:                                              ; preds = %279
  %346 = load float, float* %27, align 4
  %347 = load %struct.overlay_desc*, %struct.overlay_desc** %12, align 8
  %348 = getelementptr inbounds %struct.overlay_desc, %struct.overlay_desc* %347, i32 0, i32 11
  store float %346, float* %348, align 4
  br label %349

349:                                              ; preds = %345, %279
  %350 = getelementptr inbounds [64 x i8], [64 x i8]* %24, i64 0, i64 0
  %351 = load i32, i32* %14, align 4
  %352 = load i32, i32* %15, align 4
  %353 = call i32 @snprintf(i8* %350, i32 64, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.19, i64 0, i64 0), i32 %351, i32 %352)
  %354 = load float, float* %20, align 4
  %355 = load %struct.overlay_desc*, %struct.overlay_desc** %12, align 8
  %356 = getelementptr inbounds %struct.overlay_desc, %struct.overlay_desc* %355, i32 0, i32 12
  store float %354, float* %356, align 8
  %357 = load i32*, i32** %36, align 8
  %358 = getelementptr inbounds [64 x i8], [64 x i8]* %24, i64 0, i64 0
  %359 = call i64 @config_get_float(i32* %357, i8* %358, float* %27)
  %360 = icmp ne i64 %359, 0
  br i1 %360, label %361, label %365

361:                                              ; preds = %349
  %362 = load float, float* %27, align 4
  %363 = load %struct.overlay_desc*, %struct.overlay_desc** %12, align 8
  %364 = getelementptr inbounds %struct.overlay_desc, %struct.overlay_desc* %363, i32 0, i32 12
  store float %362, float* %364, align 8
  br label %365

365:                                              ; preds = %361, %349
  %366 = getelementptr inbounds [64 x i8], [64 x i8]* %24, i64 0, i64 0
  %367 = load i32, i32* %14, align 4
  %368 = load i32, i32* %15, align 4
  %369 = call i32 @snprintf(i8* %366, i32 64, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.20, i64 0, i64 0), i32 %367, i32 %368)
  %370 = load %struct.overlay_desc*, %struct.overlay_desc** %12, align 8
  %371 = getelementptr inbounds %struct.overlay_desc, %struct.overlay_desc* %370, i32 0, i32 13
  store i32 0, i32* %371, align 4
  %372 = load %struct.overlay_desc*, %struct.overlay_desc** %12, align 8
  %373 = getelementptr inbounds %struct.overlay_desc, %struct.overlay_desc* %372, i32 0, i32 14
  store float 0.000000e+00, float* %373, align 8
  %374 = load %struct.overlay_desc*, %struct.overlay_desc** %12, align 8
  %375 = getelementptr inbounds %struct.overlay_desc, %struct.overlay_desc* %374, i32 0, i32 15
  store float 0.000000e+00, float* %375, align 4
  %376 = load i32*, i32** %36, align 8
  %377 = getelementptr inbounds [64 x i8], [64 x i8]* %24, i64 0, i64 0
  %378 = call i64 @config_get_bool(i32* %376, i8* %377, i32* %28)
  %379 = icmp ne i64 %378, 0
  br i1 %379, label %380, label %384

380:                                              ; preds = %365
  %381 = load i32, i32* %28, align 4
  %382 = load %struct.overlay_desc*, %struct.overlay_desc** %12, align 8
  %383 = getelementptr inbounds %struct.overlay_desc, %struct.overlay_desc* %382, i32 0, i32 13
  store i32 %381, i32* %383, align 4
  br label %384

384:                                              ; preds = %380, %365
  %385 = load %struct.overlay_desc*, %struct.overlay_desc** %12, align 8
  %386 = getelementptr inbounds %struct.overlay_desc, %struct.overlay_desc* %385, i32 0, i32 5
  %387 = load float, float* %386, align 4
  %388 = load %struct.overlay_desc*, %struct.overlay_desc** %12, align 8
  %389 = getelementptr inbounds %struct.overlay_desc, %struct.overlay_desc* %388, i32 0, i32 16
  store float %387, float* %389, align 8
  %390 = load %struct.overlay_desc*, %struct.overlay_desc** %12, align 8
  %391 = getelementptr inbounds %struct.overlay_desc, %struct.overlay_desc* %390, i32 0, i32 6
  %392 = load float, float* %391, align 8
  %393 = load %struct.overlay_desc*, %struct.overlay_desc** %12, align 8
  %394 = getelementptr inbounds %struct.overlay_desc, %struct.overlay_desc* %393, i32 0, i32 17
  store float %392, float* %394, align 4
  %395 = load %struct.overlay*, %struct.overlay** %13, align 8
  %396 = getelementptr inbounds %struct.overlay, %struct.overlay* %395, i32 0, i32 0
  %397 = load i32, i32* %396, align 4
  %398 = add nsw i32 %397, 1
  store i32 %398, i32* %396, align 4
  br label %399

399:                                              ; preds = %384, %259, %244, %98, %91, %83, %75
  %400 = load %struct.string_list*, %struct.string_list** %32, align 8
  %401 = icmp ne %struct.string_list* %400, null
  br i1 %401, label %402, label %405

402:                                              ; preds = %399
  %403 = load %struct.string_list*, %struct.string_list** %32, align 8
  %404 = call i32 @string_list_free(%struct.string_list* %403)
  br label %405

405:                                              ; preds = %402, %399
  %406 = load i32, i32* %29, align 4
  ret i32 %406
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32) #1

declare dso_local i64 @config_get_bool(i32*, i8*, i32*) #1

declare dso_local i32 @RARCH_ERR(i8*, ...) #1

declare dso_local i32 @config_get_array(i32*, i8*, i8*, i32) #1

declare dso_local %struct.string_list* @string_split(i8*, i8*) #1

declare dso_local i32 @BIT256_CLEAR_ALL(i32) #1

declare dso_local i64 @string_is_equal(i8*, i8*) #1

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i32 @input_config_translate_str_to_rk(i8*) #1

declare dso_local i8* @strtok_r(i8*, i8*, i8**) #1

declare dso_local i32 @BIT256_SET(i32, i32) #1

declare dso_local i32 @input_config_translate_str_to_bind_id(i8*) #1

declare dso_local i64 @BIT256_GET(i32, i32) #1

declare dso_local i64 @strtod(i8*, i32*) #1

declare dso_local i64 @config_get_float(i32*, i8*, float*) #1

declare dso_local i32 @string_list_free(%struct.string_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
