; ModuleID = '/home/carl/AnghaBench/RetroArch/input/drivers/extr_android_input.c_handle_hotplug.c'
source_filename = "/home/carl/AnghaBench/RetroArch/input/drivers/extr_android_input.c_handle_hotplug.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i8*, i32, i32 }
%struct.android_app = type { i8* }

@.str = private unnamed_addr constant [21 x i8] c"Device model: (%s).\0A\00", align 1
@DEFAULT_MAX_PADS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Max number of pads reached.\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"Could not look up device name or IDs.\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"SHIELD Android TV\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"Virtual\00", align 1
@.str.5 = private unnamed_addr constant [43 x i8] c"NVIDIA Corporation NVIDIA Controller v01.0\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"Special Device Detected: %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"SHIELD Remote\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"SHIELD Virtual Controller\00", align 1
@pad_id1 = common dso_local global i32 0, align 4
@pad_id2 = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [25 x i8] c"NVIDIA SHIELD Controller\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"SHIELD\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"gpio\00", align 1
@.str.12 = private unnamed_addr constant [44 x i8] c"NVIDIA Corporation NVIDIA Controller v01.01\00", align 1
@.str.13 = private unnamed_addr constant [44 x i8] c"NVIDIA Corporation NVIDIA Controller v01.02\00", align 1
@.str.14 = private unnamed_addr constant [23 x i8] c"NVIDIA SHIELD Portable\00", align 1
@.str.15 = private unnamed_addr constant [44 x i8] c"NVIDIA Corporation NVIDIA Controller v01.03\00", align 1
@.str.16 = private unnamed_addr constant [22 x i8] c"NVIDIA SHIELD Gamepad\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"NVIDIA\00", align 1
@.str.18 = private unnamed_addr constant [16 x i8] c"Android Gamepad\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"XD\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"rk29-keypad\00", align 1
@.str.21 = private unnamed_addr constant [13 x i8] c"Playstation3\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"XBOX\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"GPD XD\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"R800x\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"R800at\00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"R800i\00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"R800a\00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c"R800\00", align 1
@.str.29 = private unnamed_addr constant [12 x i8] c"Xperia Play\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"Play\00", align 1
@.str.31 = private unnamed_addr constant [7 x i8] c"SO-01D\00", align 1
@.str.32 = private unnamed_addr constant [17 x i8] c"keypad-game-zeus\00", align 1
@.str.33 = private unnamed_addr constant [12 x i8] c"keypad-zeus\00", align 1
@.str.34 = private unnamed_addr constant [12 x i8] c"XPERIA Play\00", align 1
@.str.35 = private unnamed_addr constant [15 x i8] c"ARCHOS GAMEPAD\00", align 1
@.str.36 = private unnamed_addr constant [8 x i8] c"joy_key\00", align 1
@.str.37 = private unnamed_addr constant [9 x i8] c"joystick\00", align 1
@.str.38 = private unnamed_addr constant [29 x i8] c"ARCHOS GAMEPAD Detected: %s\0A\00", align 1
@.str.39 = private unnamed_addr constant [15 x i8] c"ARCHOS GamePad\00", align 1
@.str.40 = private unnamed_addr constant [5 x i8] c"AFTB\00", align 1
@.str.41 = private unnamed_addr constant [5 x i8] c"AFTT\00", align 1
@.str.42 = private unnamed_addr constant [5 x i8] c"AFTS\00", align 1
@.str.43 = private unnamed_addr constant [5 x i8] c"AFTM\00", align 1
@.str.44 = private unnamed_addr constant [6 x i8] c"AFTRS\00", align 1
@.str.45 = private unnamed_addr constant [22 x i8] c"Amazon Fire TV Remote\00", align 1
@.str.46 = private unnamed_addr constant [13 x i8] c"Nexus Remote\00", align 1
@.str.47 = private unnamed_addr constant [13 x i8] c"iControlPad-\00", align 1
@.str.48 = private unnamed_addr constant [33 x i8] c"iControlPad HID Joystick profile\00", align 1
@.str.49 = private unnamed_addr constant [35 x i8] c"TTT THT Arcade console 2P USB Play\00", align 1
@.str.50 = private unnamed_addr constant [24 x i8] c"TTT THT Arcade (User 1)\00", align 1
@.str.51 = private unnamed_addr constant [24 x i8] c"TTT THT Arcade (User 2)\00", align 1
@.str.52 = private unnamed_addr constant [5 x i8] c"MOGA\00", align 1
@.str.53 = private unnamed_addr constant [9 x i8] c"Moga IME\00", align 1
@AINPUT_SOURCE_KEYBOARD = common dso_local global i32 0, align 4
@kbd_num = common dso_local global i64 0, align 8
@MAX_NUM_KEYBOARDS = common dso_local global i64 0, align 8
@kbd_id = common dso_local global i32* null, align 8
@.str.54 = private unnamed_addr constant [30 x i8] c"net.obsidianx.android.mogaime\00", align 1
@.str.55 = private unnamed_addr constant [39 x i8] c"com.ccpcreations.android.WiiUseAndroid\00", align 1
@.str.56 = private unnamed_addr constant [19 x i8] c"com.hexad.bluezime\00", align 1
@android_joypad = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, %struct.android_app*, i32*, i32, i32)* @handle_hotplug to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_hotplug(%struct.TYPE_6__* %0, %struct.android_app* %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca %struct.android_app*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [256 x i8], align 16
  %12 = alloca [256 x i8], align 16
  %13 = alloca [256 x i8], align 16
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %6, align 8
  store %struct.android_app* %1, %struct.android_app** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %16 = getelementptr inbounds [256 x i8], [256 x i8]* %13, i64 0, i64 0
  store i8 0, i8* %16, align 16
  %17 = getelementptr inbounds [256 x i8], [256 x i8]* %12, i64 0, i64 0
  store i8 0, i8* %17, align 16
  %18 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  store i8 0, i8* %18, align 16
  %19 = getelementptr inbounds [256 x i8], [256 x i8]* %12, i64 0, i64 0
  %20 = call i32 @frontend_android_get_name(i8* %19, i32 256)
  %21 = getelementptr inbounds [256 x i8], [256 x i8]* %12, i64 0, i64 0
  %22 = call i32 (i8*, i8*, ...) @RARCH_LOG(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %21)
  %23 = load i32*, i32** %8, align 8
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @DEFAULT_MAX_PADS, align 4
  %26 = icmp sgt i32 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %5
  %28 = call i32 @RARCH_ERR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %559

29:                                               ; preds = %5
  %30 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @engine_lookup_name(i8* %30, i32* %14, i32* %15, i32 256, i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %29
  %35 = call i32 @RARCH_ERR(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  br label %559

36:                                               ; preds = %29
  %37 = getelementptr inbounds [256 x i8], [256 x i8]* %12, i64 0, i64 0
  %38 = call i64 @strstr(i8* %37, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %112

40:                                               ; preds = %36
  %41 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %42 = call i64 @strstr(i8* %41, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %40
  %45 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %46 = call i64 @strstr(i8* %45, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0))
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %112

48:                                               ; preds = %44, %40
  %49 = getelementptr inbounds [256 x i8], [256 x i8]* %12, i64 0, i64 0
  %50 = call i32 (i8*, i8*, ...) @RARCH_LOG(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i8* %49)
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i64 0
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  %57 = call i64 @strstr(i8* %56, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0))
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %68, label %59

59:                                               ; preds = %48
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 1
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i64 0
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  %66 = call i64 @strstr(i8* %65, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0))
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %59, %48
  store i32 -1, i32* @pad_id1, align 4
  store i32 -1, i32* @pad_id2, align 4
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  store i64 0, i64* %70, align 8
  %71 = load i32*, i32** %8, align 8
  store i32 0, i32* %71, align 4
  %72 = getelementptr inbounds [256 x i8], [256 x i8]* %13, i64 0, i64 0
  %73 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %74 = call i32 @strlcpy(i8* %72, i8* %73, i32 256)
  br label %75

75:                                               ; preds = %68, %59
  %76 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %77 = call i64 @strstr(i8* %76, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %87

79:                                               ; preds = %75
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp eq i64 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %79
  %85 = getelementptr inbounds [256 x i8], [256 x i8]* %13, i64 0, i64 0
  %86 = call i32 @strlcpy(i8* %85, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0), i32 256)
  br label %90

87:                                               ; preds = %79, %75
  %88 = getelementptr inbounds [256 x i8], [256 x i8]* %13, i64 0, i64 0
  %89 = call i32 @strlcpy(i8* %88, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0), i32 256)
  br label %90

90:                                               ; preds = %87, %84
  %91 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %92 = call i64 @strstr(i8* %91, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0))
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %101

94:                                               ; preds = %90
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = icmp eq i64 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %94
  %100 = load i32, i32* %9, align 4
  store i32 %100, i32* @pad_id1, align 4
  br label %111

101:                                              ; preds = %94, %90
  %102 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %103 = call i64 @strstr(i8* %102, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %110

105:                                              ; preds = %101
  %106 = load i32, i32* @pad_id1, align 4
  %107 = icmp ne i32 %106, -1
  br i1 %107, label %108, label %110

108:                                              ; preds = %105
  %109 = load i32, i32* @pad_id1, align 4
  store i32 %109, i32* %9, align 4
  br label %559

110:                                              ; preds = %105, %101
  br label %111

111:                                              ; preds = %110, %99
  br label %469

112:                                              ; preds = %44, %36
  %113 = getelementptr inbounds [256 x i8], [256 x i8]* %12, i64 0, i64 0
  %114 = call i64 @strstr(i8* %113, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0))
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %148

116:                                              ; preds = %112
  %117 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %118 = call i64 @strstr(i8* %117, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %132, label %120

120:                                              ; preds = %116
  %121 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %122 = call i64 @strstr(i8* %121, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0))
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %132, label %124

124:                                              ; preds = %120
  %125 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %126 = call i64 @strstr(i8* %125, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.12, i64 0, i64 0))
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %132, label %128

128:                                              ; preds = %124
  %129 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %130 = call i64 @strstr(i8* %129, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.13, i64 0, i64 0))
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %148

132:                                              ; preds = %128, %124, %120, %116
  %133 = getelementptr inbounds [256 x i8], [256 x i8]* %12, i64 0, i64 0
  %134 = call i32 (i8*, i8*, ...) @RARCH_LOG(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i8* %133)
  %135 = load i32, i32* @pad_id1, align 4
  %136 = icmp slt i32 %135, 0
  br i1 %136, label %137, label %139

137:                                              ; preds = %132
  %138 = load i32, i32* %9, align 4
  store i32 %138, i32* @pad_id1, align 4
  br label %141

139:                                              ; preds = %132
  %140 = load i32, i32* %9, align 4
  store i32 %140, i32* @pad_id2, align 4
  br label %141

141:                                              ; preds = %139, %137
  %142 = load i32, i32* @pad_id2, align 4
  %143 = icmp sgt i32 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %141
  br label %559

145:                                              ; preds = %141
  %146 = getelementptr inbounds [256 x i8], [256 x i8]* %13, i64 0, i64 0
  %147 = call i32 @strlcpy(i8* %146, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.14, i64 0, i64 0), i32 256)
  br label %468

148:                                              ; preds = %128, %112
  %149 = getelementptr inbounds [256 x i8], [256 x i8]* %12, i64 0, i64 0
  %150 = call i64 @strstr(i8* %149, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0))
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %191

152:                                              ; preds = %148
  %153 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %154 = call i64 @strstr(i8* %153, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %164, label %156

156:                                              ; preds = %152
  %157 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %158 = call i64 @strstr(i8* %157, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0))
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %164, label %160

160:                                              ; preds = %156
  %161 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %162 = call i64 @strstr(i8* %161, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.15, i64 0, i64 0))
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %191

164:                                              ; preds = %160, %156, %152
  %165 = getelementptr inbounds [256 x i8], [256 x i8]* %12, i64 0, i64 0
  %166 = call i32 (i8*, i8*, ...) @RARCH_LOG(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i8* %165)
  %167 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %168 = call i64 @strstr(i8* %167, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.15, i64 0, i64 0))
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %177

170:                                              ; preds = %164
  %171 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %172 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = icmp eq i64 %173, 0
  br i1 %174, label %175, label %177

175:                                              ; preds = %170
  %176 = load i32, i32* %9, align 4
  store i32 %176, i32* @pad_id1, align 4
  br label %188

177:                                              ; preds = %170, %164
  %178 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %179 = call i64 @strstr(i8* %178, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %185, label %181

181:                                              ; preds = %177
  %182 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %183 = call i64 @strstr(i8* %182, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0))
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %187

185:                                              ; preds = %181, %177
  %186 = load i32, i32* @pad_id1, align 4
  store i32 %186, i32* %9, align 4
  br label %559

187:                                              ; preds = %181
  br label %188

188:                                              ; preds = %187, %175
  %189 = getelementptr inbounds [256 x i8], [256 x i8]* %13, i64 0, i64 0
  %190 = call i32 @strlcpy(i8* %189, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 256)
  br label %467

191:                                              ; preds = %160, %148
  %192 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %193 = call i64 @strstr(i8* %192, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i64 0, i64 0))
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %198

195:                                              ; preds = %191
  %196 = getelementptr inbounds [256 x i8], [256 x i8]* %13, i64 0, i64 0
  %197 = call i32 @strlcpy(i8* %196, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 256)
  br label %466

198:                                              ; preds = %191
  %199 = getelementptr inbounds [256 x i8], [256 x i8]* %12, i64 0, i64 0
  %200 = call i64 @strstr(i8* %199, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i64 0, i64 0))
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %235

202:                                              ; preds = %198
  %203 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %204 = call i64 @strstr(i8* %203, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %218, label %206

206:                                              ; preds = %202
  %207 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %208 = call i64 @strstr(i8* %207, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i64 0, i64 0))
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %218, label %210

210:                                              ; preds = %206
  %211 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %212 = call i64 @strstr(i8* %211, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.21, i64 0, i64 0))
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %218, label %214

214:                                              ; preds = %210
  %215 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %216 = call i64 @strstr(i8* %215, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i64 0, i64 0))
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %218, label %235

218:                                              ; preds = %214, %210, %206, %202
  %219 = getelementptr inbounds [256 x i8], [256 x i8]* %12, i64 0, i64 0
  %220 = call i32 (i8*, i8*, ...) @RARCH_LOG(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i8* %219)
  %221 = load i32, i32* @pad_id1, align 4
  %222 = icmp slt i32 %221, 0
  br i1 %222, label %223, label %225

223:                                              ; preds = %218
  %224 = load i32, i32* %9, align 4
  store i32 %224, i32* @pad_id1, align 4
  br label %227

225:                                              ; preds = %218
  %226 = load i32, i32* %9, align 4
  store i32 %226, i32* @pad_id2, align 4
  br label %227

227:                                              ; preds = %225, %223
  %228 = load i32, i32* @pad_id2, align 4
  %229 = icmp sgt i32 %228, 0
  br i1 %229, label %230, label %231

230:                                              ; preds = %227
  br label %559

231:                                              ; preds = %227
  %232 = getelementptr inbounds [256 x i8], [256 x i8]* %13, i64 0, i64 0
  %233 = call i32 @strlcpy(i8* %232, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i64 0, i64 0), i32 256)
  %234 = load i32*, i32** %8, align 8
  store i32 0, i32* %234, align 4
  br label %465

235:                                              ; preds = %214, %198
  %236 = getelementptr inbounds [256 x i8], [256 x i8]* %12, i64 0, i64 0
  %237 = call i64 @strstr(i8* %236, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i64 0, i64 0))
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %267, label %239

239:                                              ; preds = %235
  %240 = getelementptr inbounds [256 x i8], [256 x i8]* %12, i64 0, i64 0
  %241 = call i64 @strstr(i8* %240, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i64 0, i64 0))
  %242 = icmp ne i64 %241, 0
  br i1 %242, label %267, label %243

243:                                              ; preds = %239
  %244 = getelementptr inbounds [256 x i8], [256 x i8]* %12, i64 0, i64 0
  %245 = call i64 @strstr(i8* %244, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i64 0, i64 0))
  %246 = icmp ne i64 %245, 0
  br i1 %246, label %267, label %247

247:                                              ; preds = %243
  %248 = getelementptr inbounds [256 x i8], [256 x i8]* %12, i64 0, i64 0
  %249 = call i64 @strstr(i8* %248, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i64 0, i64 0))
  %250 = icmp ne i64 %249, 0
  br i1 %250, label %267, label %251

251:                                              ; preds = %247
  %252 = getelementptr inbounds [256 x i8], [256 x i8]* %12, i64 0, i64 0
  %253 = call i64 @strstr(i8* %252, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i64 0, i64 0))
  %254 = icmp ne i64 %253, 0
  br i1 %254, label %267, label %255

255:                                              ; preds = %251
  %256 = getelementptr inbounds [256 x i8], [256 x i8]* %12, i64 0, i64 0
  %257 = call i64 @strstr(i8* %256, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.29, i64 0, i64 0))
  %258 = icmp ne i64 %257, 0
  br i1 %258, label %267, label %259

259:                                              ; preds = %255
  %260 = getelementptr inbounds [256 x i8], [256 x i8]* %12, i64 0, i64 0
  %261 = call i64 @strstr(i8* %260, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.30, i64 0, i64 0))
  %262 = icmp ne i64 %261, 0
  br i1 %262, label %267, label %263

263:                                              ; preds = %259
  %264 = getelementptr inbounds [256 x i8], [256 x i8]* %12, i64 0, i64 0
  %265 = call i64 @strstr(i8* %264, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i64 0, i64 0))
  %266 = icmp ne i64 %265, 0
  br i1 %266, label %267, label %296

267:                                              ; preds = %263, %259, %255, %251, %247, %243, %239, %235
  %268 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %269 = call i64 @strstr(i8* %268, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.32, i64 0, i64 0))
  %270 = icmp ne i64 %269, 0
  br i1 %270, label %279, label %271

271:                                              ; preds = %267
  %272 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %273 = call i64 @strstr(i8* %272, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.33, i64 0, i64 0))
  %274 = icmp ne i64 %273, 0
  br i1 %274, label %279, label %275

275:                                              ; preds = %271
  %276 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %277 = call i64 @strstr(i8* %276, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0))
  %278 = icmp ne i64 %277, 0
  br i1 %278, label %279, label %296

279:                                              ; preds = %275, %271, %267
  %280 = getelementptr inbounds [256 x i8], [256 x i8]* %12, i64 0, i64 0
  %281 = call i32 (i8*, i8*, ...) @RARCH_LOG(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i8* %280)
  %282 = load i32, i32* @pad_id1, align 4
  %283 = icmp slt i32 %282, 0
  br i1 %283, label %284, label %286

284:                                              ; preds = %279
  %285 = load i32, i32* %9, align 4
  store i32 %285, i32* @pad_id1, align 4
  br label %288

286:                                              ; preds = %279
  %287 = load i32, i32* %9, align 4
  store i32 %287, i32* @pad_id2, align 4
  br label %288

288:                                              ; preds = %286, %284
  %289 = load i32, i32* @pad_id2, align 4
  %290 = icmp sgt i32 %289, 0
  br i1 %290, label %291, label %292

291:                                              ; preds = %288
  br label %559

292:                                              ; preds = %288
  %293 = getelementptr inbounds [256 x i8], [256 x i8]* %13, i64 0, i64 0
  %294 = call i32 @strlcpy(i8* %293, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.34, i64 0, i64 0), i32 256)
  %295 = load i32*, i32** %8, align 8
  store i32 0, i32* %295, align 4
  br label %464

296:                                              ; preds = %275, %263
  %297 = getelementptr inbounds [256 x i8], [256 x i8]* %12, i64 0, i64 0
  %298 = call i64 @strstr(i8* %297, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.35, i64 0, i64 0))
  %299 = icmp ne i64 %298, 0
  br i1 %299, label %300, label %325

300:                                              ; preds = %296
  %301 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %302 = call i64 @strstr(i8* %301, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.36, i64 0, i64 0))
  %303 = icmp ne i64 %302, 0
  br i1 %303, label %308, label %304

304:                                              ; preds = %300
  %305 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %306 = call i64 @strstr(i8* %305, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.37, i64 0, i64 0))
  %307 = icmp ne i64 %306, 0
  br i1 %307, label %308, label %325

308:                                              ; preds = %304, %300
  %309 = getelementptr inbounds [256 x i8], [256 x i8]* %12, i64 0, i64 0
  %310 = call i32 (i8*, i8*, ...) @RARCH_LOG(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.38, i64 0, i64 0), i8* %309)
  %311 = load i32, i32* @pad_id1, align 4
  %312 = icmp slt i32 %311, 0
  br i1 %312, label %313, label %315

313:                                              ; preds = %308
  %314 = load i32, i32* %9, align 4
  store i32 %314, i32* @pad_id1, align 4
  br label %317

315:                                              ; preds = %308
  %316 = load i32, i32* %9, align 4
  store i32 %316, i32* @pad_id2, align 4
  br label %317

317:                                              ; preds = %315, %313
  %318 = load i32, i32* @pad_id2, align 4
  %319 = icmp sgt i32 %318, 0
  br i1 %319, label %320, label %321

320:                                              ; preds = %317
  br label %559

321:                                              ; preds = %317
  %322 = getelementptr inbounds [256 x i8], [256 x i8]* %13, i64 0, i64 0
  %323 = call i32 @strlcpy(i8* %322, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.39, i64 0, i64 0), i32 256)
  %324 = load i32*, i32** %8, align 8
  store i32 0, i32* %324, align 4
  br label %463

325:                                              ; preds = %304, %296
  %326 = getelementptr inbounds [256 x i8], [256 x i8]* %12, i64 0, i64 0
  %327 = call i64 @strstr(i8* %326, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.40, i64 0, i64 0))
  %328 = icmp ne i64 %327, 0
  br i1 %328, label %345, label %329

329:                                              ; preds = %325
  %330 = getelementptr inbounds [256 x i8], [256 x i8]* %12, i64 0, i64 0
  %331 = call i64 @strstr(i8* %330, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.41, i64 0, i64 0))
  %332 = icmp ne i64 %331, 0
  br i1 %332, label %345, label %333

333:                                              ; preds = %329
  %334 = getelementptr inbounds [256 x i8], [256 x i8]* %12, i64 0, i64 0
  %335 = call i64 @strstr(i8* %334, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.42, i64 0, i64 0))
  %336 = icmp ne i64 %335, 0
  br i1 %336, label %345, label %337

337:                                              ; preds = %333
  %338 = getelementptr inbounds [256 x i8], [256 x i8]* %12, i64 0, i64 0
  %339 = call i64 @strstr(i8* %338, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.43, i64 0, i64 0))
  %340 = icmp ne i64 %339, 0
  br i1 %340, label %345, label %341

341:                                              ; preds = %337
  %342 = getelementptr inbounds [256 x i8], [256 x i8]* %12, i64 0, i64 0
  %343 = call i64 @strstr(i8* %342, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.44, i64 0, i64 0))
  %344 = icmp ne i64 %343, 0
  br i1 %344, label %345, label %380

345:                                              ; preds = %341, %337, %333, %329, %325
  %346 = getelementptr inbounds [256 x i8], [256 x i8]* %12, i64 0, i64 0
  %347 = call i32 (i8*, i8*, ...) @RARCH_LOG(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i8* %346)
  %348 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %349 = call i64 @strstr(i8* %348, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.45, i64 0, i64 0))
  %350 = icmp ne i64 %349, 0
  br i1 %350, label %351, label %358

351:                                              ; preds = %345
  %352 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %353 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %352, i32 0, i32 0
  store i64 0, i64* %353, align 8
  %354 = load i32*, i32** %8, align 8
  store i32 0, i32* %354, align 4
  %355 = getelementptr inbounds [256 x i8], [256 x i8]* %13, i64 0, i64 0
  %356 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %357 = call i32 @strlcpy(i8* %355, i8* %356, i32 256)
  br label %379

358:                                              ; preds = %345
  %359 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %360 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %359, i32 0, i32 1
  %361 = load %struct.TYPE_5__*, %struct.TYPE_5__** %360, align 8
  %362 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %361, i64 0
  %363 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %362, i32 0, i32 0
  %364 = load i8*, i8** %363, align 8
  %365 = call i64 @strstr(i8* %364, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.45, i64 0, i64 0))
  %366 = icmp ne i64 %365, 0
  br i1 %366, label %367, label %374

367:                                              ; preds = %358
  %368 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %369 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %368, i32 0, i32 0
  store i64 0, i64* %369, align 8
  %370 = load i32*, i32** %8, align 8
  store i32 0, i32* %370, align 4
  %371 = getelementptr inbounds [256 x i8], [256 x i8]* %13, i64 0, i64 0
  %372 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %373 = call i32 @strlcpy(i8* %371, i8* %372, i32 256)
  br label %378

374:                                              ; preds = %358
  %375 = getelementptr inbounds [256 x i8], [256 x i8]* %13, i64 0, i64 0
  %376 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %377 = call i32 @strlcpy(i8* %375, i8* %376, i32 256)
  br label %378

378:                                              ; preds = %374, %367
  br label %379

379:                                              ; preds = %378, %351
  br label %462

380:                                              ; preds = %341
  %381 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %382 = call i64 @strstr(i8* %381, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.45, i64 0, i64 0))
  %383 = icmp ne i64 %382, 0
  br i1 %383, label %392, label %384

384:                                              ; preds = %380
  %385 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %386 = call i64 @strstr(i8* %385, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.46, i64 0, i64 0))
  %387 = icmp ne i64 %386, 0
  br i1 %387, label %392, label %388

388:                                              ; preds = %384
  %389 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %390 = call i64 @strstr(i8* %389, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0))
  %391 = icmp ne i64 %390, 0
  br i1 %391, label %392, label %399

392:                                              ; preds = %388, %384, %380
  %393 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %394 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %393, i32 0, i32 0
  store i64 0, i64* %394, align 8
  %395 = load i32*, i32** %8, align 8
  store i32 0, i32* %395, align 4
  %396 = getelementptr inbounds [256 x i8], [256 x i8]* %13, i64 0, i64 0
  %397 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %398 = call i32 @strlcpy(i8* %396, i8* %397, i32 256)
  br label %461

399:                                              ; preds = %388
  %400 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %401 = call i64 @strstr(i8* %400, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.47, i64 0, i64 0))
  %402 = icmp ne i64 %401, 0
  br i1 %402, label %403, label %406

403:                                              ; preds = %399
  %404 = getelementptr inbounds [256 x i8], [256 x i8]* %13, i64 0, i64 0
  %405 = call i32 @strlcpy(i8* %404, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.48, i64 0, i64 0), i32 256)
  br label %460

406:                                              ; preds = %399
  %407 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %408 = call i64 @strstr(i8* %407, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.49, i64 0, i64 0))
  %409 = icmp ne i64 %408, 0
  br i1 %409, label %410, label %426

410:                                              ; preds = %406
  %411 = load i32*, i32** %8, align 8
  %412 = load i32, i32* %411, align 4
  %413 = icmp eq i32 %412, 0
  br i1 %413, label %414, label %417

414:                                              ; preds = %410
  %415 = getelementptr inbounds [256 x i8], [256 x i8]* %13, i64 0, i64 0
  %416 = call i32 @strlcpy(i8* %415, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.50, i64 0, i64 0), i32 256)
  br label %425

417:                                              ; preds = %410
  %418 = load i32*, i32** %8, align 8
  %419 = load i32, i32* %418, align 4
  %420 = icmp eq i32 %419, 1
  br i1 %420, label %421, label %424

421:                                              ; preds = %417
  %422 = getelementptr inbounds [256 x i8], [256 x i8]* %13, i64 0, i64 0
  %423 = call i32 @strlcpy(i8* %422, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.51, i64 0, i64 0), i32 256)
  br label %424

424:                                              ; preds = %421, %417
  br label %425

425:                                              ; preds = %424, %414
  br label %459

426:                                              ; preds = %406
  %427 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %428 = call i64 @strstr(i8* %427, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.52, i64 0, i64 0))
  %429 = icmp ne i64 %428, 0
  br i1 %429, label %430, label %433

430:                                              ; preds = %426
  %431 = getelementptr inbounds [256 x i8], [256 x i8]* %13, i64 0, i64 0
  %432 = call i32 @strlcpy(i8* %431, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.53, i64 0, i64 0), i32 256)
  br label %458

433:                                              ; preds = %426
  %434 = load i32, i32* %10, align 4
  %435 = load i32, i32* @AINPUT_SOURCE_KEYBOARD, align 4
  %436 = icmp eq i32 %434, %435
  br i1 %436, label %437, label %448

437:                                              ; preds = %433
  %438 = load i64, i64* @kbd_num, align 8
  %439 = load i64, i64* @MAX_NUM_KEYBOARDS, align 8
  %440 = icmp ult i64 %438, %439
  br i1 %440, label %441, label %448

441:                                              ; preds = %437
  %442 = load i32, i32* %9, align 4
  %443 = load i32*, i32** @kbd_id, align 8
  %444 = load i64, i64* @kbd_num, align 8
  %445 = getelementptr inbounds i32, i32* %443, i64 %444
  store i32 %442, i32* %445, align 4
  %446 = load i64, i64* @kbd_num, align 8
  %447 = add i64 %446, 1
  store i64 %447, i64* @kbd_num, align 8
  br label %559

448:                                              ; preds = %437, %433
  %449 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %450 = call i32 @string_is_empty(i8* %449)
  %451 = icmp ne i32 %450, 0
  br i1 %451, label %456, label %452

452:                                              ; preds = %448
  %453 = getelementptr inbounds [256 x i8], [256 x i8]* %13, i64 0, i64 0
  %454 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %455 = call i32 @strlcpy(i8* %453, i8* %454, i32 256)
  br label %456

456:                                              ; preds = %452, %448
  br label %457

457:                                              ; preds = %456
  br label %458

458:                                              ; preds = %457, %430
  br label %459

459:                                              ; preds = %458, %425
  br label %460

460:                                              ; preds = %459, %403
  br label %461

461:                                              ; preds = %460, %392
  br label %462

462:                                              ; preds = %461, %379
  br label %463

463:                                              ; preds = %462, %321
  br label %464

464:                                              ; preds = %463, %292
  br label %465

465:                                              ; preds = %464, %231
  br label %466

466:                                              ; preds = %465, %195
  br label %467

467:                                              ; preds = %466, %188
  br label %468

468:                                              ; preds = %467, %145
  br label %469

469:                                              ; preds = %468, %111
  %470 = load %struct.android_app*, %struct.android_app** %7, align 8
  %471 = getelementptr inbounds %struct.android_app, %struct.android_app* %470, i32 0, i32 0
  %472 = load i8*, i8** %471, align 8
  %473 = call i64 @strstr(i8* %472, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.54, i64 0, i64 0))
  %474 = icmp ne i64 %473, 0
  br i1 %474, label %475, label %481

475:                                              ; preds = %469
  %476 = getelementptr inbounds [256 x i8], [256 x i8]* %13, i64 0, i64 0
  %477 = load %struct.android_app*, %struct.android_app** %7, align 8
  %478 = getelementptr inbounds %struct.android_app, %struct.android_app* %477, i32 0, i32 0
  %479 = load i8*, i8** %478, align 8
  %480 = call i32 @strlcpy(i8* %476, i8* %479, i32 256)
  br label %507

481:                                              ; preds = %469
  %482 = load %struct.android_app*, %struct.android_app** %7, align 8
  %483 = getelementptr inbounds %struct.android_app, %struct.android_app* %482, i32 0, i32 0
  %484 = load i8*, i8** %483, align 8
  %485 = call i64 @strstr(i8* %484, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.55, i64 0, i64 0))
  %486 = icmp ne i64 %485, 0
  br i1 %486, label %487, label %493

487:                                              ; preds = %481
  %488 = getelementptr inbounds [256 x i8], [256 x i8]* %13, i64 0, i64 0
  %489 = load %struct.android_app*, %struct.android_app** %7, align 8
  %490 = getelementptr inbounds %struct.android_app, %struct.android_app* %489, i32 0, i32 0
  %491 = load i8*, i8** %490, align 8
  %492 = call i32 @strlcpy(i8* %488, i8* %491, i32 256)
  br label %506

493:                                              ; preds = %481
  %494 = load %struct.android_app*, %struct.android_app** %7, align 8
  %495 = getelementptr inbounds %struct.android_app, %struct.android_app* %494, i32 0, i32 0
  %496 = load i8*, i8** %495, align 8
  %497 = call i64 @strstr(i8* %496, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.56, i64 0, i64 0))
  %498 = icmp ne i64 %497, 0
  br i1 %498, label %499, label %505

499:                                              ; preds = %493
  %500 = getelementptr inbounds [256 x i8], [256 x i8]* %13, i64 0, i64 0
  %501 = load %struct.android_app*, %struct.android_app** %7, align 8
  %502 = getelementptr inbounds %struct.android_app, %struct.android_app* %501, i32 0, i32 0
  %503 = load i8*, i8** %502, align 8
  %504 = call i32 @strlcpy(i8* %500, i8* %503, i32 256)
  br label %505

505:                                              ; preds = %499, %493
  br label %506

506:                                              ; preds = %505, %487
  br label %507

507:                                              ; preds = %506, %475
  %508 = load i32*, i32** %8, align 8
  %509 = load i32, i32* %508, align 4
  %510 = icmp slt i32 %509, 0
  br i1 %510, label %511, label %517

511:                                              ; preds = %507
  %512 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %513 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %512, i32 0, i32 0
  %514 = load i64, i64* %513, align 8
  %515 = trunc i64 %514 to i32
  %516 = load i32*, i32** %8, align 8
  store i32 %515, i32* %516, align 4
  br label %517

517:                                              ; preds = %511, %507
  %518 = getelementptr inbounds [256 x i8], [256 x i8]* %13, i64 0, i64 0
  %519 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @android_joypad, i32 0, i32 0), align 4
  %520 = load i32*, i32** %8, align 8
  %521 = load i32, i32* %520, align 4
  %522 = load i32, i32* %14, align 4
  %523 = load i32, i32* %15, align 4
  %524 = call i32 @input_autoconfigure_connect(i8* %518, i32* null, i32 %519, i32 %521, i32 %522, i32 %523)
  %525 = load i32, i32* %9, align 4
  %526 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %527 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %526, i32 0, i32 1
  %528 = load %struct.TYPE_5__*, %struct.TYPE_5__** %527, align 8
  %529 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %530 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %529, i32 0, i32 0
  %531 = load i64, i64* %530, align 8
  %532 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %528, i64 %531
  %533 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %532, i32 0, i32 1
  store i32 %525, i32* %533, align 8
  %534 = load i32*, i32** %8, align 8
  %535 = load i32, i32* %534, align 4
  %536 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %537 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %536, i32 0, i32 1
  %538 = load %struct.TYPE_5__*, %struct.TYPE_5__** %537, align 8
  %539 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %540 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %539, i32 0, i32 0
  %541 = load i64, i64* %540, align 8
  %542 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %538, i64 %541
  %543 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %542, i32 0, i32 2
  store i32 %535, i32* %543, align 4
  %544 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %545 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %544, i32 0, i32 1
  %546 = load %struct.TYPE_5__*, %struct.TYPE_5__** %545, align 8
  %547 = load i32*, i32** %8, align 8
  %548 = load i32, i32* %547, align 4
  %549 = sext i32 %548 to i64
  %550 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %546, i64 %549
  %551 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %550, i32 0, i32 0
  %552 = load i8*, i8** %551, align 8
  %553 = getelementptr inbounds [256 x i8], [256 x i8]* %13, i64 0, i64 0
  %554 = call i32 @strlcpy(i8* %552, i8* %553, i32 8)
  %555 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %556 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %555, i32 0, i32 0
  %557 = load i64, i64* %556, align 8
  %558 = add nsw i64 %557, 1
  store i64 %558, i64* %556, align 8
  br label %559

559:                                              ; preds = %517, %441, %320, %291, %230, %185, %144, %108, %34, %27
  ret void
}

declare dso_local i32 @frontend_android_get_name(i8*, i32) #1

declare dso_local i32 @RARCH_LOG(i8*, i8*, ...) #1

declare dso_local i32 @RARCH_ERR(i8*) #1

declare dso_local i32 @engine_lookup_name(i8*, i32*, i32*, i32, i32) #1

declare dso_local i64 @strstr(i8*, i8*) #1

declare dso_local i32 @strlcpy(i8*, i8*, i32) #1

declare dso_local i32 @string_is_empty(i8*) #1

declare dso_local i32 @input_autoconfigure_connect(i8*, i32*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
