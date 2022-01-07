; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/widgets/extr_menu_dialog.c_menu_dialog_iterate.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/widgets/extr_menu_dialog.c_menu_dialog_iterate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32 }
%struct.retro_keybind = type { i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }

@menu_dialog_current_type = common dso_local global i32 0, align 4
@menu_dialog_iterate.timer = internal global %struct.TYPE_15__ zeroinitializer, align 4
@MENU_ENUM_LABEL_WELCOME_TO_RETROARCH = common dso_local global i32 0, align 4
@PATH_MAX_LENGTH = common dso_local global i32 0, align 4
@RETRO_DEVICE_ID_JOYPAD_UP = common dso_local global i32 0, align 4
@RETRO_DEVICE_ID_JOYPAD_DOWN = common dso_local global i32 0, align 4
@RETRO_DEVICE_ID_JOYPAD_A = common dso_local global i32 0, align 4
@RETRO_DEVICE_ID_JOYPAD_B = common dso_local global i32 0, align 4
@RETRO_DEVICE_ID_JOYPAD_SELECT = common dso_local global i32 0, align 4
@RETRO_DEVICE_ID_JOYPAD_START = common dso_local global i32 0, align 4
@RARCH_MENU_TOGGLE = common dso_local global i32 0, align 4
@RARCH_QUIT_KEY = common dso_local global i32 0, align 4
@RETRO_DEVICE_ID_JOYPAD_X = common dso_local global i32 0, align 4
@RETRO_DEVICE_ID_JOYPAD_Y = common dso_local global i32 0, align 4
@input_config_binds = common dso_local global %struct.retro_keybind** null, align 8
@MENU_ENUM_LABEL_VALUE_MENU_ENUM_CONTROLS_PROLOG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [111 x i8] c"%s[%s]: %-20s\0A[%s]: %-20s\0A[%s]: %-20s\0A[%s]: %-20s\0A[%s]: %-20s\0A[%s]: %-20s\0A[%s]: %-20s\0A[%s]: %-20s\0A[%s]: %-20s\0A\00", align 1
@MENU_ENUM_LABEL_VALUE_BASIC_MENU_CONTROLS_SCROLL_UP = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_VALUE_BASIC_MENU_CONTROLS_SCROLL_DOWN = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_VALUE_BASIC_MENU_CONTROLS_CONFIRM = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_VALUE_BASIC_MENU_CONTROLS_BACK = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_VALUE_BASIC_MENU_CONTROLS_INFO = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_VALUE_BASIC_MENU_CONTROLS_START = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_VALUE_BASIC_MENU_CONTROLS_TOGGLE_MENU = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_VALUE_BASIC_MENU_CONTROLS_QUIT = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_VALUE_BASIC_MENU_CONTROLS_TOGGLE_KEYBOARD = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_VALUE_WHAT_IS_A_CORE_DESC = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_LOAD_CONTENT_LIST = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_VALUE_HELP_CHANGE_VIRTUAL_GAMEPAD_DESC = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_VALUE_HELP_AUDIO_VIDEO_TROUBLESHOOTING_DESC = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_VALUE_HELP_SEND_DEBUG_INFO_DESC = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_VALUE_HELP_SCANNING_CONTENT_DESC = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_VALUE_EXTRACTING_PLEASE_WAIT = common dso_local global i32 0, align 4
@menu_dialog_current_msg = common dso_local global i32 0, align 4
@menu_dialog_current_id = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @menu_dialog_iterate(i8* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca [10 x i32], align 16
  %13 = alloca i64, align 8
  %14 = alloca %struct.retro_keybind*, align 8
  %15 = alloca %struct.retro_keybind*, align 8
  %16 = alloca %struct.TYPE_13__*, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %8, align 4
  %17 = load i32, i32* @menu_dialog_current_type, align 4
  switch i32 %17, label %207 [
    i32 128, label %18
    i32 139, label %37
    i32 134, label %155
    i32 137, label %160
    i32 141, label %165
    i32 142, label %170
    i32 135, label %175
    i32 136, label %180
    i32 138, label %185
    i32 130, label %201
    i32 133, label %201
    i32 131, label %201
    i32 129, label %201
    i32 143, label %201
    i32 132, label %206
  ]

18:                                               ; preds = %3
  %19 = call i32 @rarch_timer_is_running(%struct.TYPE_15__* @menu_dialog_iterate.timer)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %18
  %22 = call i32 @rarch_timer_begin(%struct.TYPE_15__* @menu_dialog_iterate.timer, i32 3)
  br label %23

23:                                               ; preds = %21, %18
  %24 = call i32 @rarch_timer_tick(%struct.TYPE_15__* @menu_dialog_iterate.timer)
  %25 = load i32, i32* @MENU_ENUM_LABEL_WELCOME_TO_RETROARCH, align 4
  %26 = load i8*, i8** %5, align 8
  %27 = load i64, i64* %6, align 8
  %28 = call i32 @menu_hash_get_help_enum(i32 %25, i8* %26, i64 %27)
  %29 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @menu_dialog_iterate.timer, i32 0, i32 0), align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %23
  %32 = call i32 @rarch_timer_has_expired(%struct.TYPE_15__* @menu_dialog_iterate.timer)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = call i32 @rarch_timer_end(%struct.TYPE_15__* @menu_dialog_iterate.timer)
  store i32 1, i32* %8, align 4
  br label %36

36:                                               ; preds = %34, %31, %23
  br label %208

37:                                               ; preds = %3
  %38 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %39 = zext i32 %38 to i64
  %40 = call i8* @llvm.stacksave()
  store i8* %40, i8** %10, align 8
  %41 = alloca i8, i64 %39, align 16
  store i64 %39, i64* %11, align 8
  %42 = getelementptr inbounds [10 x i32], [10 x i32]* %12, i64 0, i64 0
  %43 = load i32, i32* @RETRO_DEVICE_ID_JOYPAD_UP, align 4
  store i32 %43, i32* %42, align 4
  %44 = getelementptr inbounds i32, i32* %42, i64 1
  %45 = load i32, i32* @RETRO_DEVICE_ID_JOYPAD_DOWN, align 4
  store i32 %45, i32* %44, align 4
  %46 = getelementptr inbounds i32, i32* %44, i64 1
  %47 = load i32, i32* @RETRO_DEVICE_ID_JOYPAD_A, align 4
  store i32 %47, i32* %46, align 4
  %48 = getelementptr inbounds i32, i32* %46, i64 1
  %49 = load i32, i32* @RETRO_DEVICE_ID_JOYPAD_B, align 4
  store i32 %49, i32* %48, align 4
  %50 = getelementptr inbounds i32, i32* %48, i64 1
  %51 = load i32, i32* @RETRO_DEVICE_ID_JOYPAD_SELECT, align 4
  store i32 %51, i32* %50, align 4
  %52 = getelementptr inbounds i32, i32* %50, i64 1
  %53 = load i32, i32* @RETRO_DEVICE_ID_JOYPAD_START, align 4
  store i32 %53, i32* %52, align 4
  %54 = getelementptr inbounds i32, i32* %52, i64 1
  %55 = load i32, i32* @RARCH_MENU_TOGGLE, align 4
  store i32 %55, i32* %54, align 4
  %56 = getelementptr inbounds i32, i32* %54, i64 1
  %57 = load i32, i32* @RARCH_QUIT_KEY, align 4
  store i32 %57, i32* %56, align 4
  %58 = getelementptr inbounds i32, i32* %56, i64 1
  %59 = load i32, i32* @RETRO_DEVICE_ID_JOYPAD_X, align 4
  store i32 %59, i32* %58, align 4
  %60 = getelementptr inbounds i32, i32* %58, i64 1
  %61 = load i32, i32* @RETRO_DEVICE_ID_JOYPAD_Y, align 4
  store i32 %61, i32* %60, align 4
  %62 = getelementptr inbounds [10 x i32], [10 x i32]* %12, i64 0, i64 0
  %63 = call i32 @ARRAY_SIZE(i32* %62)
  %64 = zext i32 %63 to i64
  %65 = alloca [64 x i8], i64 %64, align 16
  store i64 %64, i64* %13, align 8
  store i32 0, i32* %9, align 4
  br label %66

66:                                               ; preds = %76, %37
  %67 = load i32, i32* %9, align 4
  %68 = getelementptr inbounds [10 x i32], [10 x i32]* %12, i64 0, i64 0
  %69 = call i32 @ARRAY_SIZE(i32* %68)
  %70 = icmp ult i32 %67, %69
  br i1 %70, label %71, label %79

71:                                               ; preds = %66
  %72 = load i32, i32* %9, align 4
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds [64 x i8], [64 x i8]* %65, i64 %73
  %75 = getelementptr inbounds [64 x i8], [64 x i8]* %74, i64 0, i64 0
  store i8 0, i8* %75, align 16
  br label %76

76:                                               ; preds = %71
  %77 = load i32, i32* %9, align 4
  %78 = add i32 %77, 1
  store i32 %78, i32* %9, align 4
  br label %66

79:                                               ; preds = %66
  store i32 0, i32* %9, align 4
  br label %80

80:                                               ; preds = %108, %79
  %81 = load i32, i32* %9, align 4
  %82 = getelementptr inbounds [10 x i32], [10 x i32]* %12, i64 0, i64 0
  %83 = call i32 @ARRAY_SIZE(i32* %82)
  %84 = icmp ult i32 %81, %83
  br i1 %84, label %85, label %111

85:                                               ; preds = %80
  %86 = load %struct.retro_keybind**, %struct.retro_keybind*** @input_config_binds, align 8
  %87 = getelementptr inbounds %struct.retro_keybind*, %struct.retro_keybind** %86, i64 0
  %88 = load %struct.retro_keybind*, %struct.retro_keybind** %87, align 8
  %89 = load i32, i32* %9, align 4
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds [10 x i32], [10 x i32]* %12, i64 0, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = zext i32 %92 to i64
  %94 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %88, i64 %93
  store %struct.retro_keybind* %94, %struct.retro_keybind** %14, align 8
  %95 = load i32, i32* %9, align 4
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds [10 x i32], [10 x i32]* %12, i64 0, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = call i64 @input_config_get_bind_auto(i32 0, i32 %98)
  %100 = inttoptr i64 %99 to %struct.retro_keybind*
  store %struct.retro_keybind* %100, %struct.retro_keybind** %15, align 8
  %101 = load i32, i32* %9, align 4
  %102 = zext i32 %101 to i64
  %103 = getelementptr inbounds [64 x i8], [64 x i8]* %65, i64 %102
  %104 = getelementptr inbounds [64 x i8], [64 x i8]* %103, i64 0, i64 0
  %105 = load %struct.retro_keybind*, %struct.retro_keybind** %14, align 8
  %106 = load %struct.retro_keybind*, %struct.retro_keybind** %15, align 8
  %107 = call i32 @input_config_get_bind_string(i8* %104, %struct.retro_keybind* %105, %struct.retro_keybind* %106, i32 64)
  br label %108

108:                                              ; preds = %85
  %109 = load i32, i32* %9, align 4
  %110 = add i32 %109, 1
  store i32 %110, i32* %9, align 4
  br label %80

111:                                              ; preds = %80
  %112 = getelementptr inbounds i8, i8* %41, i64 0
  store i8 0, i8* %112, align 16
  %113 = load i32, i32* @MENU_ENUM_LABEL_VALUE_MENU_ENUM_CONTROLS_PROLOG, align 4
  %114 = call i32 @menu_hash_get_help_enum(i32 %113, i8* %41, i64 %39)
  %115 = load i8*, i8** %5, align 8
  %116 = load i64, i64* %6, align 8
  %117 = load i32, i32* @MENU_ENUM_LABEL_VALUE_BASIC_MENU_CONTROLS_SCROLL_UP, align 4
  %118 = call i8* @msg_hash_to_str(i32 %117)
  %119 = getelementptr inbounds [64 x i8], [64 x i8]* %65, i64 0
  %120 = getelementptr inbounds [64 x i8], [64 x i8]* %119, i64 0, i64 0
  %121 = load i32, i32* @MENU_ENUM_LABEL_VALUE_BASIC_MENU_CONTROLS_SCROLL_DOWN, align 4
  %122 = call i8* @msg_hash_to_str(i32 %121)
  %123 = getelementptr inbounds [64 x i8], [64 x i8]* %65, i64 1
  %124 = getelementptr inbounds [64 x i8], [64 x i8]* %123, i64 0, i64 0
  %125 = load i32, i32* @MENU_ENUM_LABEL_VALUE_BASIC_MENU_CONTROLS_CONFIRM, align 4
  %126 = call i8* @msg_hash_to_str(i32 %125)
  %127 = getelementptr inbounds [64 x i8], [64 x i8]* %65, i64 2
  %128 = getelementptr inbounds [64 x i8], [64 x i8]* %127, i64 0, i64 0
  %129 = load i32, i32* @MENU_ENUM_LABEL_VALUE_BASIC_MENU_CONTROLS_BACK, align 4
  %130 = call i8* @msg_hash_to_str(i32 %129)
  %131 = getelementptr inbounds [64 x i8], [64 x i8]* %65, i64 3
  %132 = getelementptr inbounds [64 x i8], [64 x i8]* %131, i64 0, i64 0
  %133 = load i32, i32* @MENU_ENUM_LABEL_VALUE_BASIC_MENU_CONTROLS_INFO, align 4
  %134 = call i8* @msg_hash_to_str(i32 %133)
  %135 = getelementptr inbounds [64 x i8], [64 x i8]* %65, i64 4
  %136 = getelementptr inbounds [64 x i8], [64 x i8]* %135, i64 0, i64 0
  %137 = load i32, i32* @MENU_ENUM_LABEL_VALUE_BASIC_MENU_CONTROLS_START, align 4
  %138 = call i8* @msg_hash_to_str(i32 %137)
  %139 = getelementptr inbounds [64 x i8], [64 x i8]* %65, i64 5
  %140 = getelementptr inbounds [64 x i8], [64 x i8]* %139, i64 0, i64 0
  %141 = load i32, i32* @MENU_ENUM_LABEL_VALUE_BASIC_MENU_CONTROLS_TOGGLE_MENU, align 4
  %142 = call i8* @msg_hash_to_str(i32 %141)
  %143 = getelementptr inbounds [64 x i8], [64 x i8]* %65, i64 6
  %144 = getelementptr inbounds [64 x i8], [64 x i8]* %143, i64 0, i64 0
  %145 = load i32, i32* @MENU_ENUM_LABEL_VALUE_BASIC_MENU_CONTROLS_QUIT, align 4
  %146 = call i8* @msg_hash_to_str(i32 %145)
  %147 = getelementptr inbounds [64 x i8], [64 x i8]* %65, i64 7
  %148 = getelementptr inbounds [64 x i8], [64 x i8]* %147, i64 0, i64 0
  %149 = load i32, i32* @MENU_ENUM_LABEL_VALUE_BASIC_MENU_CONTROLS_TOGGLE_KEYBOARD, align 4
  %150 = call i8* @msg_hash_to_str(i32 %149)
  %151 = getelementptr inbounds [64 x i8], [64 x i8]* %65, i64 8
  %152 = getelementptr inbounds [64 x i8], [64 x i8]* %151, i64 0, i64 0
  %153 = call i32 @snprintf(i8* %115, i64 %116, i8* getelementptr inbounds ([111 x i8], [111 x i8]* @.str, i64 0, i64 0), i8* %41, i8* %118, i8* %120, i8* %122, i8* %124, i8* %126, i8* %128, i8* %130, i8* %132, i8* %134, i8* %136, i8* %138, i8* %140, i8* %142, i8* %144, i8* %146, i8* %148, i8* %150, i8* %152)
  %154 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %154)
  br label %208

155:                                              ; preds = %3
  %156 = load i32, i32* @MENU_ENUM_LABEL_VALUE_WHAT_IS_A_CORE_DESC, align 4
  %157 = load i8*, i8** %5, align 8
  %158 = load i64, i64* %6, align 8
  %159 = call i32 @menu_hash_get_help_enum(i32 %156, i8* %157, i64 %158)
  br label %208

160:                                              ; preds = %3
  %161 = load i32, i32* @MENU_ENUM_LABEL_LOAD_CONTENT_LIST, align 4
  %162 = load i8*, i8** %5, align 8
  %163 = load i64, i64* %6, align 8
  %164 = call i32 @menu_hash_get_help_enum(i32 %161, i8* %162, i64 %163)
  br label %208

165:                                              ; preds = %3
  %166 = load i32, i32* @MENU_ENUM_LABEL_VALUE_HELP_CHANGE_VIRTUAL_GAMEPAD_DESC, align 4
  %167 = load i8*, i8** %5, align 8
  %168 = load i64, i64* %6, align 8
  %169 = call i32 @menu_hash_get_help_enum(i32 %166, i8* %167, i64 %168)
  br label %208

170:                                              ; preds = %3
  %171 = load i32, i32* @MENU_ENUM_LABEL_VALUE_HELP_AUDIO_VIDEO_TROUBLESHOOTING_DESC, align 4
  %172 = load i8*, i8** %5, align 8
  %173 = load i64, i64* %6, align 8
  %174 = call i32 @menu_hash_get_help_enum(i32 %171, i8* %172, i64 %173)
  br label %208

175:                                              ; preds = %3
  %176 = load i32, i32* @MENU_ENUM_LABEL_VALUE_HELP_SEND_DEBUG_INFO_DESC, align 4
  %177 = load i8*, i8** %5, align 8
  %178 = load i64, i64* %6, align 8
  %179 = call i32 @menu_hash_get_help_enum(i32 %176, i8* %177, i64 %178)
  br label %208

180:                                              ; preds = %3
  %181 = load i32, i32* @MENU_ENUM_LABEL_VALUE_HELP_SCANNING_CONTENT_DESC, align 4
  %182 = load i8*, i8** %5, align 8
  %183 = load i64, i64* %6, align 8
  %184 = call i32 @menu_hash_get_help_enum(i32 %181, i8* %182, i64 %183)
  br label %208

185:                                              ; preds = %3
  %186 = call %struct.TYPE_13__* (...) @config_get_ptr()
  store %struct.TYPE_13__* %186, %struct.TYPE_13__** %16, align 8
  %187 = load i32, i32* @MENU_ENUM_LABEL_VALUE_EXTRACTING_PLEASE_WAIT, align 4
  %188 = load i8*, i8** %5, align 8
  %189 = load i64, i64* %6, align 8
  %190 = call i32 @menu_hash_get_help_enum(i32 %187, i8* %188, i64 %189)
  %191 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %192 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %200

196:                                              ; preds = %185
  %197 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %198 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %198, i32 0, i32 0
  store i32 0, i32* %199, align 4
  store i32 1, i32* %8, align 4
  br label %200

200:                                              ; preds = %196, %185
  br label %208

201:                                              ; preds = %3, %3, %3, %3, %3
  %202 = load i32, i32* @menu_dialog_current_msg, align 4
  %203 = load i8*, i8** %5, align 8
  %204 = load i64, i64* %6, align 8
  %205 = call i32 @menu_hash_get_help_enum(i32 %202, i8* %203, i64 %204)
  br label %208

206:                                              ; preds = %3
  br label %207

207:                                              ; preds = %3, %206
  br label %208

208:                                              ; preds = %207, %201, %200, %180, %175, %170, %165, %160, %155, %111, %36
  %209 = load i32, i32* %8, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %212

211:                                              ; preds = %208
  store i32 132, i32* @menu_dialog_current_type, align 4
  store i32 1, i32* %4, align 4
  br label %213

212:                                              ; preds = %208
  store i32 0, i32* %4, align 4
  br label %213

213:                                              ; preds = %212, %211
  %214 = load i32, i32* %4, align 4
  ret i32 %214
}

declare dso_local i32 @rarch_timer_is_running(%struct.TYPE_15__*) #1

declare dso_local i32 @rarch_timer_begin(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @rarch_timer_tick(%struct.TYPE_15__*) #1

declare dso_local i32 @menu_hash_get_help_enum(i32, i8*, i64) #1

declare dso_local i32 @rarch_timer_has_expired(%struct.TYPE_15__*) #1

declare dso_local i32 @rarch_timer_end(%struct.TYPE_15__*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i64 @input_config_get_bind_auto(i32, i32) #1

declare dso_local i32 @input_config_get_bind_string(i8*, %struct.retro_keybind*, %struct.retro_keybind*, i32) #1

declare dso_local i32 @snprintf(i8*, i64, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*) #1

declare dso_local i8* @msg_hash_to_str(i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local %struct.TYPE_13__* @config_get_ptr(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
