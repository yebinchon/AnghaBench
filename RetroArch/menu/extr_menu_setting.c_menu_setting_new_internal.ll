; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/extr_menu_setting.c_menu_setting_new_internal.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/extr_menu_setting.c_menu_setting_new_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }

@SETTINGS_LIST_MAIN_MENU = common dso_local global i32 0, align 4
@SETTINGS_LIST_DRIVERS = common dso_local global i32 0, align 4
@SETTINGS_LIST_CORE = common dso_local global i32 0, align 4
@SETTINGS_LIST_CONFIGURATION = common dso_local global i32 0, align 4
@SETTINGS_LIST_LOGGING = common dso_local global i32 0, align 4
@SETTINGS_LIST_SAVING = common dso_local global i32 0, align 4
@SETTINGS_LIST_REWIND = common dso_local global i32 0, align 4
@SETTINGS_LIST_CHEAT_DETAILS = common dso_local global i32 0, align 4
@SETTINGS_LIST_CHEAT_SEARCH = common dso_local global i32 0, align 4
@SETTINGS_LIST_CHEATS = common dso_local global i32 0, align 4
@SETTINGS_LIST_VIDEO = common dso_local global i32 0, align 4
@SETTINGS_LIST_CRT_SWITCHRES = common dso_local global i32 0, align 4
@SETTINGS_LIST_AUDIO = common dso_local global i32 0, align 4
@SETTINGS_LIST_INPUT = common dso_local global i32 0, align 4
@SETTINGS_LIST_INPUT_HOTKEY = common dso_local global i32 0, align 4
@SETTINGS_LIST_RECORDING = common dso_local global i32 0, align 4
@SETTINGS_LIST_FRAME_THROTTLING = common dso_local global i32 0, align 4
@SETTINGS_LIST_FRAME_TIME_COUNTER = common dso_local global i32 0, align 4
@SETTINGS_LIST_FONT = common dso_local global i32 0, align 4
@SETTINGS_LIST_OVERLAY = common dso_local global i32 0, align 4
@SETTINGS_LIST_MENU = common dso_local global i32 0, align 4
@SETTINGS_LIST_MENU_FILE_BROWSER = common dso_local global i32 0, align 4
@SETTINGS_LIST_MULTIMEDIA = common dso_local global i32 0, align 4
@SETTINGS_LIST_USER_INTERFACE = common dso_local global i32 0, align 4
@SETTINGS_LIST_POWER_MANAGEMENT = common dso_local global i32 0, align 4
@SETTINGS_LIST_MENU_SOUNDS = common dso_local global i32 0, align 4
@SETTINGS_LIST_PLAYLIST = common dso_local global i32 0, align 4
@SETTINGS_LIST_CHEEVOS = common dso_local global i32 0, align 4
@SETTINGS_LIST_CORE_UPDATER = common dso_local global i32 0, align 4
@SETTINGS_LIST_NETPLAY = common dso_local global i32 0, align 4
@SETTINGS_LIST_LAKKA_SERVICES = common dso_local global i32 0, align 4
@SETTINGS_LIST_USER = common dso_local global i32 0, align 4
@SETTINGS_LIST_USER_ACCOUNTS = common dso_local global i32 0, align 4
@SETTINGS_LIST_USER_ACCOUNTS_CHEEVOS = common dso_local global i32 0, align 4
@SETTINGS_LIST_USER_ACCOUNTS_YOUTUBE = common dso_local global i32 0, align 4
@SETTINGS_LIST_USER_ACCOUNTS_TWITCH = common dso_local global i32 0, align 4
@SETTINGS_LIST_DIRECTORY = common dso_local global i32 0, align 4
@SETTINGS_LIST_PRIVACY = common dso_local global i32 0, align 4
@SETTINGS_LIST_MIDI = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_MAIN_MENU = common dso_local global i32 0, align 4
@SETTINGS_LIST_AI_SERVICE = common dso_local global i32 0, align 4
@SETTINGS_LIST_VIDEO_LAYOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_5__*)* @menu_setting_new_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @menu_setting_new_internal(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca [39 x i32], align 16
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32**, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i32* null, i32** %5, align 8
  %10 = getelementptr inbounds [39 x i32], [39 x i32]* %6, i64 0, i64 0
  %11 = load i32, i32* @SETTINGS_LIST_MAIN_MENU, align 4
  store i32 %11, i32* %10, align 4
  %12 = getelementptr inbounds i32, i32* %10, i64 1
  %13 = load i32, i32* @SETTINGS_LIST_DRIVERS, align 4
  store i32 %13, i32* %12, align 4
  %14 = getelementptr inbounds i32, i32* %12, i64 1
  %15 = load i32, i32* @SETTINGS_LIST_CORE, align 4
  store i32 %15, i32* %14, align 4
  %16 = getelementptr inbounds i32, i32* %14, i64 1
  %17 = load i32, i32* @SETTINGS_LIST_CONFIGURATION, align 4
  store i32 %17, i32* %16, align 4
  %18 = getelementptr inbounds i32, i32* %16, i64 1
  %19 = load i32, i32* @SETTINGS_LIST_LOGGING, align 4
  store i32 %19, i32* %18, align 4
  %20 = getelementptr inbounds i32, i32* %18, i64 1
  %21 = load i32, i32* @SETTINGS_LIST_SAVING, align 4
  store i32 %21, i32* %20, align 4
  %22 = getelementptr inbounds i32, i32* %20, i64 1
  %23 = load i32, i32* @SETTINGS_LIST_REWIND, align 4
  store i32 %23, i32* %22, align 4
  %24 = getelementptr inbounds i32, i32* %22, i64 1
  %25 = load i32, i32* @SETTINGS_LIST_CHEAT_DETAILS, align 4
  store i32 %25, i32* %24, align 4
  %26 = getelementptr inbounds i32, i32* %24, i64 1
  %27 = load i32, i32* @SETTINGS_LIST_CHEAT_SEARCH, align 4
  store i32 %27, i32* %26, align 4
  %28 = getelementptr inbounds i32, i32* %26, i64 1
  %29 = load i32, i32* @SETTINGS_LIST_CHEATS, align 4
  store i32 %29, i32* %28, align 4
  %30 = getelementptr inbounds i32, i32* %28, i64 1
  %31 = load i32, i32* @SETTINGS_LIST_VIDEO, align 4
  store i32 %31, i32* %30, align 4
  %32 = getelementptr inbounds i32, i32* %30, i64 1
  %33 = load i32, i32* @SETTINGS_LIST_CRT_SWITCHRES, align 4
  store i32 %33, i32* %32, align 4
  %34 = getelementptr inbounds i32, i32* %32, i64 1
  %35 = load i32, i32* @SETTINGS_LIST_AUDIO, align 4
  store i32 %35, i32* %34, align 4
  %36 = getelementptr inbounds i32, i32* %34, i64 1
  %37 = load i32, i32* @SETTINGS_LIST_INPUT, align 4
  store i32 %37, i32* %36, align 4
  %38 = getelementptr inbounds i32, i32* %36, i64 1
  %39 = load i32, i32* @SETTINGS_LIST_INPUT_HOTKEY, align 4
  store i32 %39, i32* %38, align 4
  %40 = getelementptr inbounds i32, i32* %38, i64 1
  %41 = load i32, i32* @SETTINGS_LIST_RECORDING, align 4
  store i32 %41, i32* %40, align 4
  %42 = getelementptr inbounds i32, i32* %40, i64 1
  %43 = load i32, i32* @SETTINGS_LIST_FRAME_THROTTLING, align 4
  store i32 %43, i32* %42, align 4
  %44 = getelementptr inbounds i32, i32* %42, i64 1
  %45 = load i32, i32* @SETTINGS_LIST_FRAME_TIME_COUNTER, align 4
  store i32 %45, i32* %44, align 4
  %46 = getelementptr inbounds i32, i32* %44, i64 1
  %47 = load i32, i32* @SETTINGS_LIST_FONT, align 4
  store i32 %47, i32* %46, align 4
  %48 = getelementptr inbounds i32, i32* %46, i64 1
  %49 = load i32, i32* @SETTINGS_LIST_OVERLAY, align 4
  store i32 %49, i32* %48, align 4
  %50 = getelementptr inbounds i32, i32* %48, i64 1
  %51 = load i32, i32* @SETTINGS_LIST_MENU, align 4
  store i32 %51, i32* %50, align 4
  %52 = getelementptr inbounds i32, i32* %50, i64 1
  %53 = load i32, i32* @SETTINGS_LIST_MENU_FILE_BROWSER, align 4
  store i32 %53, i32* %52, align 4
  %54 = getelementptr inbounds i32, i32* %52, i64 1
  %55 = load i32, i32* @SETTINGS_LIST_MULTIMEDIA, align 4
  store i32 %55, i32* %54, align 4
  %56 = getelementptr inbounds i32, i32* %54, i64 1
  %57 = load i32, i32* @SETTINGS_LIST_USER_INTERFACE, align 4
  store i32 %57, i32* %56, align 4
  %58 = getelementptr inbounds i32, i32* %56, i64 1
  %59 = load i32, i32* @SETTINGS_LIST_POWER_MANAGEMENT, align 4
  store i32 %59, i32* %58, align 4
  %60 = getelementptr inbounds i32, i32* %58, i64 1
  %61 = load i32, i32* @SETTINGS_LIST_MENU_SOUNDS, align 4
  store i32 %61, i32* %60, align 4
  %62 = getelementptr inbounds i32, i32* %60, i64 1
  %63 = load i32, i32* @SETTINGS_LIST_PLAYLIST, align 4
  store i32 %63, i32* %62, align 4
  %64 = getelementptr inbounds i32, i32* %62, i64 1
  %65 = load i32, i32* @SETTINGS_LIST_CHEEVOS, align 4
  store i32 %65, i32* %64, align 4
  %66 = getelementptr inbounds i32, i32* %64, i64 1
  %67 = load i32, i32* @SETTINGS_LIST_CORE_UPDATER, align 4
  store i32 %67, i32* %66, align 4
  %68 = getelementptr inbounds i32, i32* %66, i64 1
  %69 = load i32, i32* @SETTINGS_LIST_NETPLAY, align 4
  store i32 %69, i32* %68, align 4
  %70 = getelementptr inbounds i32, i32* %68, i64 1
  %71 = load i32, i32* @SETTINGS_LIST_LAKKA_SERVICES, align 4
  store i32 %71, i32* %70, align 4
  %72 = getelementptr inbounds i32, i32* %70, i64 1
  %73 = load i32, i32* @SETTINGS_LIST_USER, align 4
  store i32 %73, i32* %72, align 4
  %74 = getelementptr inbounds i32, i32* %72, i64 1
  %75 = load i32, i32* @SETTINGS_LIST_USER_ACCOUNTS, align 4
  store i32 %75, i32* %74, align 4
  %76 = getelementptr inbounds i32, i32* %74, i64 1
  %77 = load i32, i32* @SETTINGS_LIST_USER_ACCOUNTS_CHEEVOS, align 4
  store i32 %77, i32* %76, align 4
  %78 = getelementptr inbounds i32, i32* %76, i64 1
  %79 = load i32, i32* @SETTINGS_LIST_USER_ACCOUNTS_YOUTUBE, align 4
  store i32 %79, i32* %78, align 4
  %80 = getelementptr inbounds i32, i32* %78, i64 1
  %81 = load i32, i32* @SETTINGS_LIST_USER_ACCOUNTS_TWITCH, align 4
  store i32 %81, i32* %80, align 4
  %82 = getelementptr inbounds i32, i32* %80, i64 1
  %83 = load i32, i32* @SETTINGS_LIST_DIRECTORY, align 4
  store i32 %83, i32* %82, align 4
  %84 = getelementptr inbounds i32, i32* %82, i64 1
  %85 = load i32, i32* @SETTINGS_LIST_PRIVACY, align 4
  store i32 %85, i32* %84, align 4
  %86 = getelementptr inbounds i32, i32* %84, i64 1
  %87 = load i32, i32* @SETTINGS_LIST_MIDI, align 4
  store i32 %87, i32* %86, align 4
  %88 = load i32, i32* @MENU_ENUM_LABEL_MAIN_MENU, align 4
  %89 = call i8* @msg_hash_to_str(i32 %88)
  store i8* %89, i8** %7, align 8
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = call i64 @calloc(i32 %92, i32 4)
  %94 = inttoptr i64 %93 to i32*
  store i32* %94, i32** %8, align 8
  store i32** null, i32*** %9, align 8
  %95 = load i32*, i32** %8, align 8
  %96 = icmp ne i32* %95, null
  br i1 %96, label %98, label %97

97:                                               ; preds = %1
  store i32* null, i32** %2, align 8
  br label %155

98:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %99

99:                                               ; preds = %117, %98
  %100 = load i32, i32* %4, align 4
  %101 = getelementptr inbounds [39 x i32], [39 x i32]* %6, i64 0, i64 0
  %102 = call i32 @ARRAY_SIZE(i32* %101)
  %103 = icmp ult i32 %100, %102
  br i1 %103, label %104, label %120

104:                                              ; preds = %99
  %105 = load i32, i32* %4, align 4
  %106 = zext i32 %105 to i64
  %107 = getelementptr inbounds [39 x i32], [39 x i32]* %6, i64 0, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %110 = load i8*, i8** %7, align 8
  %111 = call i32 @setting_append_list(i32 %108, i32** %8, %struct.TYPE_5__* %109, i8* %110)
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %116, label %113

113:                                              ; preds = %104
  %114 = load i32*, i32** %8, align 8
  %115 = call i32 @free(i32* %114)
  store i32* null, i32** %2, align 8
  br label %155

116:                                              ; preds = %104
  br label %117

117:                                              ; preds = %116
  %118 = load i32, i32* %4, align 4
  %119 = add i32 %118, 1
  store i32 %119, i32* %4, align 4
  br label %99

120:                                              ; preds = %99
  store i32** %8, i32*** %9, align 8
  %121 = load i32**, i32*** %9, align 8
  %122 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %123 = call i32 @settings_list_append(i32** %121, %struct.TYPE_5__* %122)
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %128, label %125

125:                                              ; preds = %120
  %126 = load i32*, i32** %8, align 8
  %127 = call i32 @free(i32* %126)
  store i32* null, i32** %2, align 8
  br label %155

128:                                              ; preds = %120
  %129 = load i32*, i32** %8, align 8
  %130 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @menu_setting_terminate_last(i32* %129, i32 %132)
  %134 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %135, align 4
  %138 = load i32*, i32** %8, align 8
  %139 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = sext i32 %141 to i64
  %143 = mul i64 %142, 4
  %144 = trunc i64 %143 to i32
  %145 = call i64 @realloc(i32* %138, i32 %144)
  %146 = inttoptr i64 %145 to i32*
  store i32* %146, i32** %5, align 8
  %147 = load i32*, i32** %5, align 8
  %148 = icmp ne i32* %147, null
  br i1 %148, label %152, label %149

149:                                              ; preds = %128
  %150 = load i32*, i32** %8, align 8
  %151 = call i32 @free(i32* %150)
  store i32* null, i32** %2, align 8
  br label %155

152:                                              ; preds = %128
  %153 = load i32*, i32** %5, align 8
  store i32* %153, i32** %8, align 8
  %154 = load i32*, i32** %8, align 8
  store i32* %154, i32** %2, align 8
  br label %155

155:                                              ; preds = %152, %149, %125, %113, %97
  %156 = load i32*, i32** %2, align 8
  ret i32* %156
}

declare dso_local i8* @msg_hash_to_str(i32) #1

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @setting_append_list(i32, i32**, %struct.TYPE_5__*, i8*) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @settings_list_append(i32**, %struct.TYPE_5__*) #1

declare dso_local i32 @menu_setting_terminate_last(i32*, i32) #1

declare dso_local i64 @realloc(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
