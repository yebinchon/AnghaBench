; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/mupen64plus-input-sdl/src/extr_config.c_load_configuration.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/mupen64plus-input-sdl/src/extr_config.c_load_configuration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@M64MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"%i SDL joysticks were found.\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"Input-SDL-Control%i\00", align 1
@M64ERR_SUCCESS = common dso_local global i64 0, align 8
@M64MSG_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [48 x i8] c"Couldn't open config section '%s'.  Aborting...\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@M64TYPE_FLOAT = common dso_local global i32 0, align 4
@CONFIG_VERSION = common dso_local global i64 0, align 8
@M64MSG_WARNING = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [55 x i8] c"Missing or incompatible config section '%s'. Clearing.\00", align 1
@E_MODE_FULL_AUTO = common dso_local global i64 0, align 8
@DEVICE_NO_JOYSTICK = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@M64TYPE_INT = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [87 x i8] c"Missing or invalid 'mode' parameter in config section '%s'.  Setting to 2 (Fully Auto)\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"device\00", align 1
@.str.9 = private unnamed_addr constant [80 x i8] c"Missing 'device' parameter in config section '%s'.  Setting to -1 (No joystick)\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@M64TYPE_STRING = common dso_local global i32 0, align 4
@E_MODE_MANUAL = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [83 x i8] c"N64 Controller #%i: Using manual config with no SDL joystick (keyboard/mouse only)\00", align 1
@.str.12 = private unnamed_addr constant [60 x i8] c"N64 Controller #%i: Using manual config for SDL joystick %i\00", align 1
@E_MODE_NAMED_AUTO = common dso_local global i64 0, align 8
@.str.13 = private unnamed_addr constant [9 x i8] c"Keyboard\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"AutoConfig0\00", align 1
@.str.15 = private unnamed_addr constant [51 x i8] c"N64 Controller #%i: Using auto-config for keyboard\00", align 1
@.str.16 = private unnamed_addr constant [34 x i8] c"Autoconfig keyboard setup invalid\00", align 1
@.str.17 = private unnamed_addr constant [68 x i8] c"No auto-config found for joystick named '%s' in InputAutoConfig.ini\00", align 1
@.str.18 = private unnamed_addr constant [85 x i8] c"N64 Controller #%i: No SDL joystick found matching name '%s'.  Using full auto mode.\00", align 1
@.str.19 = private unnamed_addr constant [58 x i8] c"N64 Controller #1: Forcing default keyboard configuration\00", align 1
@.str.20 = private unnamed_addr constant [19 x i8] c"Input-SDL-Control1\00", align 1
@controller = common dso_local global %struct.TYPE_4__* null, align 8
@.str.21 = private unnamed_addr constant [65 x i8] c"%i controller(s) found, %i plugged in and usable in the emulator\00", align 1
@.str.22 = private unnamed_addr constant [31 x i8] c"No joysticks/controllers found\00", align 1
@.str.23 = private unnamed_addr constant [49 x i8] c"%i controllers found, but none were 'plugged in'\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @load_configuration(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca [32 x i8], align 16
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [4 x i32], align 16
  %10 = alloca [4 x i64], align 16
  %11 = alloca [4 x i64], align 16
  %12 = alloca [4 x i32], align 16
  %13 = alloca [4 x [256 x i8]], align 16
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca float, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %14, align 4
  %25 = call i32 (...) @get_sdl_num_joysticks()
  store i32 %25, i32* %15, align 4
  store float 0.000000e+00, float* %16, align 4
  store i32 0, i32* %18, align 4
  %26 = load i32, i32* %2, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %1
  %29 = load i32, i32* @M64MSG_INFO, align 4
  %30 = load i32, i32* %15, align 4
  %31 = call i32 (i32, i8*, ...) @DebugMessage(i32 %29, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %30)
  br label %32

32:                                               ; preds = %28, %1
  store i32 0, i32* %5, align 4
  br label %33

33:                                               ; preds = %169, %32
  %34 = load i32, i32* %5, align 4
  %35 = icmp slt i32 %34, 4
  br i1 %35, label %36, label %172

36:                                               ; preds = %33
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @clear_controller(i32 %37)
  %39 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %40 = load i32, i32* %5, align 4
  %41 = add nsw i32 %40, 1
  %42 = call i32 @sprintf(i8* %39, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %41)
  %43 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %44 = call i64 @ConfigOpenSection(i8* %43, i32* %19)
  %45 = load i64, i64* @M64ERR_SUCCESS, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %36
  %48 = load i32, i32* @M64MSG_ERROR, align 4
  %49 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %50 = call i32 (i32, i8*, ...) @DebugMessage(i32 %48, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i8* %49)
  br label %587

51:                                               ; preds = %36
  store float 0.000000e+00, float* %16, align 4
  %52 = load i32, i32* %19, align 4
  %53 = load i32, i32* @M64TYPE_FLOAT, align 4
  %54 = call i64 (i32, i8*, i32, ...) @ConfigGetParameter(i32 %52, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %53, float* %16, i64 4)
  %55 = load i64, i64* @M64ERR_SUCCESS, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %63, label %57

57:                                               ; preds = %51
  %58 = load float, float* %16, align 4
  %59 = fptosi float %58 to i32
  %60 = load i64, i64* @CONFIG_VERSION, align 8
  %61 = trunc i64 %60 to i32
  %62 = icmp ne i32 %59, %61
  br i1 %62, label %63, label %89

63:                                               ; preds = %57, %51
  %64 = load i32, i32* @M64MSG_WARNING, align 4
  %65 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %66 = call i32 (i32, i8*, ...) @DebugMessage(i32 %64, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.4, i64 0, i64 0), i8* %65)
  %67 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %68 = call i32 @ConfigDeleteSection(i8* %67)
  %69 = load i64, i64* @E_MODE_FULL_AUTO, align 8
  %70 = load i32, i32* %5, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [4 x i64], [4 x i64]* %11, i64 0, i64 %71
  store i64 %69, i64* %72, align 8
  %73 = load i32, i32* %5, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds [4 x i64], [4 x i64]* %10, i64 0, i64 %74
  store i64 %69, i64* %75, align 8
  %76 = load i32, i32* @DEVICE_NO_JOYSTICK, align 4
  %77 = load i32, i32* %5, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 %78
  store i32 %76, i32* %79, align 4
  %80 = load i32, i32* %5, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds [4 x [256 x i8]], [4 x [256 x i8]]* %13, i64 0, i64 %81
  %83 = getelementptr inbounds [256 x i8], [256 x i8]* %82, i64 0, i64 0
  store i8 0, i8* %83, align 16
  %84 = load i32, i32* %5, align 4
  %85 = load i64, i64* @E_MODE_FULL_AUTO, align 8
  %86 = call i32 @init_controller_config(i32 %84, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), i64 %85)
  %87 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %88 = call i32 @ConfigSaveSection(i8* %87)
  br label %168

89:                                               ; preds = %57
  %90 = load i32, i32* %19, align 4
  %91 = load i32, i32* @M64TYPE_INT, align 4
  %92 = load i32, i32* %5, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds [4 x i64], [4 x i64]* %10, i64 0, i64 %93
  %95 = call i64 (i32, i8*, i32, ...) @ConfigGetParameter(i32 %90, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32 %91, i64* %94, i64 4)
  %96 = load i64, i64* @M64ERR_SUCCESS, align 8
  %97 = icmp ne i64 %95, %96
  br i1 %97, label %112, label %98

98:                                               ; preds = %89
  %99 = load i32, i32* %5, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds [4 x i64], [4 x i64]* %10, i64 0, i64 %100
  %102 = load i64, i64* %101, align 8
  %103 = trunc i64 %102 to i32
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %112, label %105

105:                                              ; preds = %98
  %106 = load i32, i32* %5, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds [4 x i64], [4 x i64]* %10, i64 0, i64 %107
  %109 = load i64, i64* %108, align 8
  %110 = trunc i64 %109 to i32
  %111 = icmp sgt i32 %110, 2
  br i1 %111, label %112, label %124

112:                                              ; preds = %105, %98, %89
  %113 = load i32, i32* %2, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %119, label %115

115:                                              ; preds = %112
  %116 = load i32, i32* @M64MSG_WARNING, align 4
  %117 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %118 = call i32 (i32, i8*, ...) @DebugMessage(i32 %116, i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.7, i64 0, i64 0), i8* %117)
  br label %119

119:                                              ; preds = %115, %112
  %120 = load i64, i64* @E_MODE_FULL_AUTO, align 8
  %121 = load i32, i32* %5, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds [4 x i64], [4 x i64]* %10, i64 0, i64 %122
  store i64 %120, i64* %123, align 8
  br label %124

124:                                              ; preds = %119, %105
  %125 = load i32, i32* %5, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds [4 x i64], [4 x i64]* %10, i64 0, i64 %126
  %128 = load i64, i64* %127, align 8
  %129 = load i32, i32* %5, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds [4 x i64], [4 x i64]* %11, i64 0, i64 %130
  store i64 %128, i64* %131, align 8
  %132 = load i32, i32* %19, align 4
  %133 = load i32, i32* @M64TYPE_INT, align 4
  %134 = load i32, i32* %5, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 %135
  %137 = call i64 (i32, i8*, i32, ...) @ConfigGetParameter(i32 %132, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i32 %133, i32* %136, i64 4)
  %138 = load i64, i64* @M64ERR_SUCCESS, align 8
  %139 = icmp ne i64 %137, %138
  br i1 %139, label %140, label %152

140:                                              ; preds = %124
  %141 = load i32, i32* %2, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %147, label %143

143:                                              ; preds = %140
  %144 = load i32, i32* @M64MSG_WARNING, align 4
  %145 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %146 = call i32 (i32, i8*, ...) @DebugMessage(i32 %144, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.9, i64 0, i64 0), i8* %145)
  br label %147

147:                                              ; preds = %143, %140
  %148 = load i32, i32* @DEVICE_NO_JOYSTICK, align 4
  %149 = load i32, i32* %5, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 %150
  store i32 %148, i32* %151, align 4
  br label %152

152:                                              ; preds = %147, %124
  %153 = load i32, i32* %19, align 4
  %154 = load i32, i32* @M64TYPE_STRING, align 4
  %155 = load i32, i32* %5, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds [4 x [256 x i8]], [4 x [256 x i8]]* %13, i64 0, i64 %156
  %158 = getelementptr inbounds [256 x i8], [256 x i8]* %157, i64 0, i64 0
  %159 = call i64 (i32, i8*, i32, ...) @ConfigGetParameter(i32 %153, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32 %154, i8* %158, i32 256)
  %160 = load i64, i64* @M64ERR_SUCCESS, align 8
  %161 = icmp ne i64 %159, %160
  br i1 %161, label %162, label %167

162:                                              ; preds = %152
  %163 = load i32, i32* %5, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds [4 x [256 x i8]], [4 x [256 x i8]]* %13, i64 0, i64 %164
  %166 = getelementptr inbounds [256 x i8], [256 x i8]* %165, i64 0, i64 0
  store i8 0, i8* %166, align 16
  br label %167

167:                                              ; preds = %162, %152
  br label %168

168:                                              ; preds = %167, %63
  br label %169

169:                                              ; preds = %168
  %170 = load i32, i32* %5, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %5, align 4
  br label %33

172:                                              ; preds = %33
  store i32 0, i32* %5, align 4
  br label %173

173:                                              ; preds = %235, %172
  %174 = load i32, i32* %5, align 4
  %175 = icmp slt i32 %174, 4
  br i1 %175, label %176, label %238

176:                                              ; preds = %173
  %177 = load i32, i32* %5, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds [4 x i64], [4 x i64]* %11, i64 0, i64 %178
  %180 = load i64, i64* %179, align 8
  %181 = load i64, i64* @E_MODE_MANUAL, align 8
  %182 = icmp ne i64 %180, %181
  br i1 %182, label %183, label %184

183:                                              ; preds = %176
  br label %235

184:                                              ; preds = %176
  %185 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %186 = load i32, i32* %5, align 4
  %187 = add nsw i32 %186, 1
  %188 = call i32 @sprintf(i8* %185, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %187)
  %189 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %190 = load i32, i32* %5, align 4
  %191 = load i32, i32* %5, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 %192
  %194 = load i32, i32* %193, align 4
  %195 = call i32 @load_controller_config(i8* %189, i32 %190, i32 %194)
  %196 = load i32, i32* %5, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 %197
  %199 = load i32, i32* %198, align 4
  %200 = load i32, i32* @DEVICE_NO_JOYSTICK, align 4
  %201 = icmp eq i32 %199, %200
  br i1 %201, label %202, label %211

202:                                              ; preds = %184
  %203 = load i32, i32* %2, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %210, label %205

205:                                              ; preds = %202
  %206 = load i32, i32* @M64MSG_INFO, align 4
  %207 = load i32, i32* %5, align 4
  %208 = add nsw i32 %207, 1
  %209 = call i32 (i32, i8*, ...) @DebugMessage(i32 %206, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.11, i64 0, i64 0), i32 %208)
  br label %210

210:                                              ; preds = %205, %202
  br label %232

211:                                              ; preds = %184
  %212 = load i32, i32* %5, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 %213
  %215 = load i32, i32* %214, align 4
  %216 = load i32, i32* %8, align 4
  %217 = add nsw i32 %216, 1
  store i32 %217, i32* %8, align 4
  %218 = sext i32 %216 to i64
  %219 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 %218
  store i32 %215, i32* %219, align 4
  %220 = load i32, i32* %2, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %231, label %222

222:                                              ; preds = %211
  %223 = load i32, i32* @M64MSG_INFO, align 4
  %224 = load i32, i32* %5, align 4
  %225 = add nsw i32 %224, 1
  %226 = load i32, i32* %5, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 %227
  %229 = load i32, i32* %228, align 4
  %230 = call i32 (i32, i8*, ...) @DebugMessage(i32 %223, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.12, i64 0, i64 0), i32 %225, i32 %229)
  br label %231

231:                                              ; preds = %222, %211
  br label %232

232:                                              ; preds = %231, %210
  %233 = load i32, i32* %14, align 4
  %234 = add nsw i32 %233, 1
  store i32 %234, i32* %14, align 4
  br label %235

235:                                              ; preds = %232, %183
  %236 = load i32, i32* %5, align 4
  %237 = add nsw i32 %236, 1
  store i32 %237, i32* %5, align 4
  br label %173

238:                                              ; preds = %173
  store i32 0, i32* %5, align 4
  br label %239

239:                                              ; preds = %396, %238
  %240 = load i32, i32* %5, align 4
  %241 = icmp slt i32 %240, 4
  br i1 %241, label %242, label %399

242:                                              ; preds = %239
  %243 = load i32, i32* %5, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds [4 x i64], [4 x i64]* %11, i64 0, i64 %244
  %246 = load i64, i64* %245, align 8
  %247 = load i64, i64* @E_MODE_NAMED_AUTO, align 8
  %248 = icmp ne i64 %246, %247
  br i1 %248, label %249, label %250

249:                                              ; preds = %242
  br label %396

250:                                              ; preds = %242
  %251 = load i32, i32* %5, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds [4 x [256 x i8]], [4 x [256 x i8]]* %13, i64 0, i64 %252
  %254 = getelementptr inbounds [256 x i8], [256 x i8]* %253, i64 0, i64 0
  %255 = load i8, i8* %254, align 16
  %256 = sext i8 %255 to i32
  %257 = icmp eq i32 %256, 0
  br i1 %257, label %258, label %263

258:                                              ; preds = %250
  %259 = load i64, i64* @E_MODE_FULL_AUTO, align 8
  %260 = load i32, i32* %5, align 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds [4 x i64], [4 x i64]* %11, i64 0, i64 %261
  store i64 %259, i64* %262, align 8
  br label %396

263:                                              ; preds = %250
  %264 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %265 = load i32, i32* %5, align 4
  %266 = add nsw i32 %265, 1
  %267 = call i32 @sprintf(i8* %264, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %266)
  %268 = load i32, i32* %5, align 4
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds [4 x [256 x i8]], [4 x [256 x i8]]* %13, i64 0, i64 %269
  %271 = getelementptr inbounds [256 x i8], [256 x i8]* %270, i64 0, i64 0
  %272 = call i64 @strcasecmp(i8* %271, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i64 0, i64 0))
  %273 = icmp eq i64 %272, 0
  br i1 %273, label %274, label %301

274:                                              ; preds = %263
  %275 = load i32, i32* @DEVICE_NO_JOYSTICK, align 4
  %276 = call i32 @auto_set_defaults(i32 %275, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i64 0, i64 0))
  %277 = load i32, i32* %5, align 4
  %278 = load i32, i32* @DEVICE_NO_JOYSTICK, align 4
  %279 = call i32 @load_controller_config(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i64 0, i64 0), i32 %277, i32 %278)
  %280 = icmp sgt i32 %279, 0
  br i1 %280, label %281, label %296

281:                                              ; preds = %274
  %282 = load i32, i32* %2, align 4
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %289, label %284

284:                                              ; preds = %281
  %285 = load i32, i32* @M64MSG_INFO, align 4
  %286 = load i32, i32* %5, align 4
  %287 = add nsw i32 %286, 1
  %288 = call i32 (i32, i8*, ...) @DebugMessage(i32 %285, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.15, i64 0, i64 0), i32 %287)
  br label %289

289:                                              ; preds = %284, %281
  %290 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %291 = call i32 @auto_copy_inputconfig(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i64 0, i64 0), i8* %290, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i64 0, i64 0))
  %292 = load i32, i32* %14, align 4
  %293 = add nsw i32 %292, 1
  store i32 %293, i32* %14, align 4
  %294 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %295 = call i32 @ConfigSaveSection(i8* %294)
  br label %299

296:                                              ; preds = %274
  %297 = load i32, i32* @M64MSG_ERROR, align 4
  %298 = call i32 (i32, i8*, ...) @DebugMessage(i32 %297, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.16, i64 0, i64 0))
  br label %299

299:                                              ; preds = %296, %289
  %300 = call i32 @ConfigDeleteSection(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i64 0, i64 0))
  br label %396

301:                                              ; preds = %263
  store i32 0, i32* %6, align 4
  br label %302

302:                                              ; preds = %371, %301
  %303 = load i32, i32* %6, align 4
  %304 = load i32, i32* %15, align 4
  %305 = icmp slt i32 %303, %304
  br i1 %305, label %306, label %374

306:                                              ; preds = %302
  store i32 0, i32* %20, align 4
  store i32 0, i32* %7, align 4
  br label %307

307:                                              ; preds = %320, %306
  %308 = load i32, i32* %7, align 4
  %309 = load i32, i32* %8, align 4
  %310 = icmp slt i32 %308, %309
  br i1 %310, label %311, label %323

311:                                              ; preds = %307
  %312 = load i32, i32* %7, align 4
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 %313
  %315 = load i32, i32* %314, align 4
  %316 = load i32, i32* %6, align 4
  %317 = icmp eq i32 %315, %316
  br i1 %317, label %318, label %319

318:                                              ; preds = %311
  store i32 1, i32* %20, align 4
  br label %319

319:                                              ; preds = %318, %311
  br label %320

320:                                              ; preds = %319
  %321 = load i32, i32* %7, align 4
  %322 = add nsw i32 %321, 1
  store i32 %322, i32* %7, align 4
  br label %307

323:                                              ; preds = %307
  %324 = load i32, i32* %20, align 4
  %325 = icmp ne i32 %324, 0
  br i1 %325, label %326, label %327

326:                                              ; preds = %323
  br label %371

327:                                              ; preds = %323
  %328 = load i32, i32* %6, align 4
  %329 = call i8* @get_sdl_joystick_name(i32 %328)
  store i8* %329, i8** %17, align 8
  %330 = load i8*, i8** %17, align 8
  %331 = icmp ne i8* %330, null
  br i1 %331, label %332, label %370

332:                                              ; preds = %327
  %333 = load i32, i32* %5, align 4
  %334 = sext i32 %333 to i64
  %335 = getelementptr inbounds [4 x [256 x i8]], [4 x [256 x i8]]* %13, i64 0, i64 %334
  %336 = getelementptr inbounds [256 x i8], [256 x i8]* %335, i64 0, i64 0
  %337 = load i8*, i8** %17, align 8
  %338 = call i64 @strncmp(i8* %336, i8* %337, i32 255)
  %339 = icmp eq i64 %338, 0
  br i1 %339, label %340, label %370

340:                                              ; preds = %332
  %341 = load i32, i32* %2, align 4
  %342 = load i32, i32* %5, align 4
  %343 = load i32, i32* %6, align 4
  %344 = load i8*, i8** %17, align 8
  %345 = getelementptr inbounds [4 x i64], [4 x i64]* %11, i64 0, i64 0
  %346 = getelementptr inbounds [4 x i64], [4 x i64]* %10, i64 0, i64 0
  %347 = getelementptr inbounds [4 x [256 x i8]], [4 x [256 x i8]]* %13, i64 0, i64 0
  %348 = bitcast [256 x i8]* %347 to i8**
  %349 = call i32 @setup_auto_controllers(i32 %341, i32 %342, i32 %343, i8* %344, i64* %345, i64* %346, i8** %348)
  store i32 %349, i32* %21, align 4
  %350 = load i32, i32* %21, align 4
  %351 = icmp eq i32 %350, 0
  br i1 %351, label %352, label %361

352:                                              ; preds = %340
  %353 = load i32, i32* @M64MSG_ERROR, align 4
  %354 = load i8*, i8** %17, align 8
  %355 = call i32 (i32, i8*, ...) @DebugMessage(i32 %353, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.17, i64 0, i64 0), i8* %354)
  %356 = load i32, i32* %6, align 4
  %357 = load i32, i32* %8, align 4
  %358 = add nsw i32 %357, 1
  store i32 %358, i32* %8, align 4
  %359 = sext i32 %357 to i64
  %360 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 %359
  store i32 %356, i32* %360, align 4
  br label %374

361:                                              ; preds = %340
  %362 = load i32, i32* %6, align 4
  %363 = load i32, i32* %8, align 4
  %364 = add nsw i32 %363, 1
  store i32 %364, i32* %8, align 4
  %365 = sext i32 %363 to i64
  %366 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 %365
  store i32 %362, i32* %366, align 4
  %367 = load i32, i32* %21, align 4
  %368 = load i32, i32* %14, align 4
  %369 = add nsw i32 %368, %367
  store i32 %369, i32* %14, align 4
  br label %374

370:                                              ; preds = %332, %327
  br label %371

371:                                              ; preds = %370, %326
  %372 = load i32, i32* %6, align 4
  %373 = add nsw i32 %372, 1
  store i32 %373, i32* %6, align 4
  br label %302

374:                                              ; preds = %361, %352, %302
  %375 = load i32, i32* %6, align 4
  %376 = load i32, i32* %15, align 4
  %377 = icmp eq i32 %375, %376
  br i1 %377, label %378, label %395

378:                                              ; preds = %374
  %379 = load i32, i32* %2, align 4
  %380 = icmp ne i32 %379, 0
  br i1 %380, label %390, label %381

381:                                              ; preds = %378
  %382 = load i32, i32* @M64MSG_WARNING, align 4
  %383 = load i32, i32* %5, align 4
  %384 = add nsw i32 %383, 1
  %385 = load i32, i32* %5, align 4
  %386 = sext i32 %385 to i64
  %387 = getelementptr inbounds [4 x [256 x i8]], [4 x [256 x i8]]* %13, i64 0, i64 %386
  %388 = getelementptr inbounds [256 x i8], [256 x i8]* %387, i64 0, i64 0
  %389 = call i32 (i32, i8*, ...) @DebugMessage(i32 %382, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.18, i64 0, i64 0), i32 %384, i8* %388)
  br label %390

390:                                              ; preds = %381, %378
  %391 = load i64, i64* @E_MODE_FULL_AUTO, align 8
  %392 = load i32, i32* %5, align 4
  %393 = sext i32 %392 to i64
  %394 = getelementptr inbounds [4 x i64], [4 x i64]* %11, i64 0, i64 %393
  store i64 %391, i64* %394, align 8
  br label %395

395:                                              ; preds = %390, %374
  br label %396

396:                                              ; preds = %395, %299, %258, %249
  %397 = load i32, i32* %5, align 4
  %398 = add nsw i32 %397, 1
  store i32 %398, i32* %5, align 4
  br label %239

399:                                              ; preds = %239
  store i32 0, i32* %5, align 4
  br label %400

400:                                              ; preds = %507, %399
  %401 = load i32, i32* %5, align 4
  %402 = icmp slt i32 %401, 4
  br i1 %402, label %403, label %510

403:                                              ; preds = %400
  %404 = load i32, i32* %5, align 4
  %405 = sext i32 %404 to i64
  %406 = getelementptr inbounds [4 x i64], [4 x i64]* %11, i64 0, i64 %405
  %407 = load i64, i64* %406, align 8
  %408 = load i64, i64* @E_MODE_FULL_AUTO, align 8
  %409 = icmp ne i64 %407, %408
  br i1 %409, label %410, label %411

410:                                              ; preds = %403
  br label %507

411:                                              ; preds = %403
  %412 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %413 = load i32, i32* %5, align 4
  %414 = add nsw i32 %413, 1
  %415 = call i32 @sprintf(i8* %412, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %414)
  store i32 0, i32* %6, align 4
  br label %416

416:                                              ; preds = %476, %411
  %417 = load i32, i32* %6, align 4
  %418 = load i32, i32* %15, align 4
  %419 = icmp slt i32 %417, %418
  br i1 %419, label %420, label %479

420:                                              ; preds = %416
  store i32 0, i32* %22, align 4
  store i32 0, i32* %7, align 4
  br label %421

421:                                              ; preds = %434, %420
  %422 = load i32, i32* %7, align 4
  %423 = load i32, i32* %8, align 4
  %424 = icmp slt i32 %422, %423
  br i1 %424, label %425, label %437

425:                                              ; preds = %421
  %426 = load i32, i32* %7, align 4
  %427 = sext i32 %426 to i64
  %428 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 %427
  %429 = load i32, i32* %428, align 4
  %430 = load i32, i32* %6, align 4
  %431 = icmp eq i32 %429, %430
  br i1 %431, label %432, label %433

432:                                              ; preds = %425
  store i32 1, i32* %22, align 4
  br label %433

433:                                              ; preds = %432, %425
  br label %434

434:                                              ; preds = %433
  %435 = load i32, i32* %7, align 4
  %436 = add nsw i32 %435, 1
  store i32 %436, i32* %7, align 4
  br label %421

437:                                              ; preds = %421
  %438 = load i32, i32* %22, align 4
  %439 = icmp ne i32 %438, 0
  br i1 %439, label %440, label %441

440:                                              ; preds = %437
  br label %476

441:                                              ; preds = %437
  %442 = load i32, i32* %6, align 4
  %443 = call i8* @get_sdl_joystick_name(i32 %442)
  store i8* %443, i8** %17, align 8
  %444 = load i32, i32* %2, align 4
  %445 = load i32, i32* %5, align 4
  %446 = load i32, i32* %6, align 4
  %447 = load i8*, i8** %17, align 8
  %448 = getelementptr inbounds [4 x i64], [4 x i64]* %11, i64 0, i64 0
  %449 = getelementptr inbounds [4 x i64], [4 x i64]* %10, i64 0, i64 0
  %450 = getelementptr inbounds [4 x [256 x i8]], [4 x [256 x i8]]* %13, i64 0, i64 0
  %451 = bitcast [256 x i8]* %450 to i8**
  %452 = call i32 @setup_auto_controllers(i32 %444, i32 %445, i32 %446, i8* %447, i64* %448, i64* %449, i8** %451)
  store i32 %452, i32* %18, align 4
  %453 = load i32, i32* %2, align 4
  %454 = icmp ne i32 %453, 0
  br i1 %454, label %467, label %455

455:                                              ; preds = %441
  %456 = load i32, i32* %18, align 4
  %457 = icmp eq i32 %456, 0
  br i1 %457, label %458, label %467

458:                                              ; preds = %455
  %459 = load i32, i32* @M64MSG_ERROR, align 4
  %460 = load i8*, i8** %17, align 8
  %461 = call i32 (i32, i8*, ...) @DebugMessage(i32 %459, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.17, i64 0, i64 0), i8* %460)
  %462 = load i32, i32* %6, align 4
  %463 = load i32, i32* %8, align 4
  %464 = add nsw i32 %463, 1
  store i32 %464, i32* %8, align 4
  %465 = sext i32 %463 to i64
  %466 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 %465
  store i32 %462, i32* %466, align 4
  br label %476

467:                                              ; preds = %455, %441
  %468 = load i32, i32* %6, align 4
  %469 = load i32, i32* %8, align 4
  %470 = add nsw i32 %469, 1
  store i32 %470, i32* %8, align 4
  %471 = sext i32 %469 to i64
  %472 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 %471
  store i32 %468, i32* %472, align 4
  %473 = load i32, i32* %18, align 4
  %474 = load i32, i32* %14, align 4
  %475 = add nsw i32 %474, %473
  store i32 %475, i32* %14, align 4
  br label %479

476:                                              ; preds = %458, %440
  %477 = load i32, i32* %6, align 4
  %478 = add nsw i32 %477, 1
  store i32 %478, i32* %6, align 4
  br label %416

479:                                              ; preds = %467, %416
  %480 = load i32, i32* %6, align 4
  %481 = load i32, i32* %15, align 4
  %482 = icmp eq i32 %480, %481
  br i1 %482, label %483, label %506

483:                                              ; preds = %479
  %484 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %485 = call i64 @ConfigOpenSection(i8* %484, i32* %23)
  %486 = load i64, i64* @M64ERR_SUCCESS, align 8
  %487 = icmp eq i64 %485, %486
  br i1 %487, label %488, label %505

488:                                              ; preds = %483
  store i32 -1, i32* %24, align 4
  %489 = load i32, i32* %23, align 4
  %490 = load i32, i32* @M64TYPE_INT, align 4
  %491 = call i32 (i32, i8*, i32, ...) @ConfigSetParameter(i32 %489, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i32 %490, i32* %24)
  %492 = load i32, i32* %5, align 4
  %493 = sext i32 %492 to i64
  %494 = getelementptr inbounds [4 x i64], [4 x i64]* %10, i64 0, i64 %493
  %495 = load i64, i64* %494, align 8
  %496 = load i64, i64* @E_MODE_FULL_AUTO, align 8
  %497 = icmp eq i64 %495, %496
  br i1 %497, label %498, label %502

498:                                              ; preds = %488
  %499 = load i32, i32* %23, align 4
  %500 = load i32, i32* @M64TYPE_STRING, align 4
  %501 = call i32 (i32, i8*, i32, ...) @ConfigSetParameter(i32 %499, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32 %500, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0))
  br label %502

502:                                              ; preds = %498, %488
  %503 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %504 = call i32 @ConfigSaveSection(i8* %503)
  br label %505

505:                                              ; preds = %502, %483
  br label %506

506:                                              ; preds = %505, %479
  br label %507

507:                                              ; preds = %506, %410
  %508 = load i32, i32* %5, align 4
  %509 = add nsw i32 %508, 1
  store i32 %509, i32* %5, align 4
  br label %400

510:                                              ; preds = %400
  %511 = load i32, i32* %14, align 4
  %512 = icmp eq i32 %511, 0
  br i1 %512, label %513, label %543

513:                                              ; preds = %510
  %514 = load i32, i32* %2, align 4
  %515 = icmp ne i32 %514, 0
  br i1 %515, label %519, label %516

516:                                              ; preds = %513
  %517 = load i32, i32* @M64MSG_INFO, align 4
  %518 = call i32 (i32, i8*, ...) @DebugMessage(i32 %517, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.19, i64 0, i64 0))
  br label %519

519:                                              ; preds = %516, %513
  %520 = load i32, i32* @DEVICE_NO_JOYSTICK, align 4
  %521 = call i32 @auto_set_defaults(i32 %520, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i64 0, i64 0))
  %522 = load i32, i32* @DEVICE_NO_JOYSTICK, align 4
  %523 = call i32 @load_controller_config(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i64 0, i64 0), i32 0, i32 %522)
  %524 = icmp sgt i32 %523, 0
  br i1 %524, label %525, label %538

525:                                              ; preds = %519
  %526 = getelementptr inbounds [4 x i64], [4 x i64]* %10, i64 0, i64 0
  %527 = load i64, i64* %526, align 16
  %528 = load i64, i64* @E_MODE_FULL_AUTO, align 8
  %529 = icmp eq i64 %527, %528
  br i1 %529, label %530, label %532

530:                                              ; preds = %525
  %531 = call i32 @auto_copy_inputconfig(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i64 0, i64 0))
  br label %534

532:                                              ; preds = %525
  %533 = call i32 @auto_copy_inputconfig(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.20, i64 0, i64 0), i8* null)
  br label %534

534:                                              ; preds = %532, %530
  %535 = load i32, i32* %14, align 4
  %536 = add nsw i32 %535, 1
  store i32 %536, i32* %14, align 4
  %537 = call i32 @ConfigSaveSection(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.20, i64 0, i64 0))
  br label %541

538:                                              ; preds = %519
  %539 = load i32, i32* @M64MSG_ERROR, align 4
  %540 = call i32 (i32, i8*, ...) @DebugMessage(i32 %539, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.16, i64 0, i64 0))
  br label %541

541:                                              ; preds = %538, %534
  %542 = call i32 @ConfigDeleteSection(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i64 0, i64 0))
  br label %543

543:                                              ; preds = %541, %510
  store i32 0, i32* %4, align 4
  store i32 0, i32* %7, align 4
  br label %544

544:                                              ; preds = %561, %543
  %545 = load i32, i32* %7, align 4
  %546 = icmp slt i32 %545, 4
  br i1 %546, label %547, label %564

547:                                              ; preds = %544
  %548 = load %struct.TYPE_4__*, %struct.TYPE_4__** @controller, align 8
  %549 = load i32, i32* %7, align 4
  %550 = sext i32 %549 to i64
  %551 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %548, i64 %550
  %552 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %551, i32 0, i32 0
  %553 = load %struct.TYPE_3__*, %struct.TYPE_3__** %552, align 8
  %554 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %553, i32 0, i32 0
  %555 = load i64, i64* %554, align 8
  %556 = icmp ne i64 %555, 0
  br i1 %556, label %557, label %560

557:                                              ; preds = %547
  %558 = load i32, i32* %4, align 4
  %559 = add nsw i32 %558, 1
  store i32 %559, i32* %4, align 4
  br label %560

560:                                              ; preds = %557, %547
  br label %561

561:                                              ; preds = %560
  %562 = load i32, i32* %7, align 4
  %563 = add nsw i32 %562, 1
  store i32 %563, i32* %7, align 4
  br label %544

564:                                              ; preds = %544
  %565 = load i32, i32* %2, align 4
  %566 = icmp ne i32 %565, 0
  br i1 %566, label %587, label %567

567:                                              ; preds = %564
  %568 = load i32, i32* %4, align 4
  %569 = icmp sgt i32 %568, 0
  br i1 %569, label %570, label %575

570:                                              ; preds = %567
  %571 = load i32, i32* @M64MSG_INFO, align 4
  %572 = load i32, i32* %14, align 4
  %573 = load i32, i32* %4, align 4
  %574 = call i32 (i32, i8*, ...) @DebugMessage(i32 %571, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.21, i64 0, i64 0), i32 %572, i32 %573)
  br label %586

575:                                              ; preds = %567
  %576 = load i32, i32* %14, align 4
  %577 = icmp eq i32 %576, 0
  br i1 %577, label %578, label %581

578:                                              ; preds = %575
  %579 = load i32, i32* @M64MSG_WARNING, align 4
  %580 = call i32 (i32, i8*, ...) @DebugMessage(i32 %579, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.22, i64 0, i64 0))
  br label %585

581:                                              ; preds = %575
  %582 = load i32, i32* @M64MSG_WARNING, align 4
  %583 = load i32, i32* %14, align 4
  %584 = call i32 (i32, i8*, ...) @DebugMessage(i32 %582, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.23, i64 0, i64 0), i32 %583)
  br label %585

585:                                              ; preds = %581, %578
  br label %586

586:                                              ; preds = %585, %570
  br label %587

587:                                              ; preds = %47, %586, %564
  ret void
}

declare dso_local i32 @get_sdl_num_joysticks(...) #1

declare dso_local i32 @DebugMessage(i32, i8*, ...) #1

declare dso_local i32 @clear_controller(i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i64 @ConfigOpenSection(i8*, i32*) #1

declare dso_local i64 @ConfigGetParameter(i32, i8*, i32, ...) #1

declare dso_local i32 @ConfigDeleteSection(i8*) #1

declare dso_local i32 @init_controller_config(i32, i8*, i64) #1

declare dso_local i32 @ConfigSaveSection(i8*) #1

declare dso_local i32 @load_controller_config(i8*, i32, i32) #1

declare dso_local i64 @strcasecmp(i8*, i8*) #1

declare dso_local i32 @auto_set_defaults(i32, i8*) #1

declare dso_local i32 @auto_copy_inputconfig(i8*, i8*, i8*) #1

declare dso_local i8* @get_sdl_joystick_name(i32) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @setup_auto_controllers(i32, i32, i32, i8*, i64*, i64*, i8**) #1

declare dso_local i32 @ConfigSetParameter(i32, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
