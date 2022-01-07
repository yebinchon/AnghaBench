; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/cbs/extr_menu_cbs_ok.c_generic_action_ok_remap_file_operation.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/cbs/extr_menu_cbs_ok.c_generic_action_ok_remap_file_operation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8* }
%struct.retro_system_info = type { i8* }

@PATH_MAX_LENGTH = common dso_local global i32 0, align 4
@RARCH_PATH_BASENAME = common dso_local global i32 0, align 4
@RARCH_CTL_SET_REMAPS_CORE_ACTIVE = common dso_local global i32 0, align 4
@RARCH_CTL_SET_REMAPS_GAME_ACTIVE = common dso_local global i32 0, align 4
@RARCH_CTL_SET_REMAPS_CONTENT_DIR_ACTIVE = common dso_local global i32 0, align 4
@MSG_REMAP_FILE_SAVED_SUCCESSFULLY = common dso_local global i32 0, align 4
@MESSAGE_QUEUE_ICON_DEFAULT = common dso_local global i32 0, align 4
@MESSAGE_QUEUE_CATEGORY_INFO = common dso_local global i32 0, align 4
@MSG_ERROR_SAVING_REMAP_FILE = common dso_local global i32 0, align 4
@RARCH_CTL_IS_REMAPS_CORE_ACTIVE = common dso_local global i32 0, align 4
@RARCH_CTL_UNSET_REMAPS_CORE_ACTIVE = common dso_local global i32 0, align 4
@RARCH_CTL_IS_REMAPS_GAME_ACTIVE = common dso_local global i32 0, align 4
@RARCH_CTL_UNSET_REMAPS_GAME_ACTIVE = common dso_local global i32 0, align 4
@RARCH_CTL_IS_REMAPS_CONTENT_DIR_ACTIVE = common dso_local global i32 0, align 4
@RARCH_CTL_UNSET_REMAPS_CONTENT_DIR_ACTIVE = common dso_local global i32 0, align 4
@MSG_REMAP_FILE_REMOVED_SUCCESSFULLY = common dso_local global i32 0, align 4
@MSG_ERROR_REMOVING_REMAP_FILE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32, i64, i64, i32)* @generic_action_ok_remap_file_operation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @generic_action_ok_remap_file_operation(i8* %0, i8* %1, i32 %2, i64 %3, i64 %4, i32 %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.TYPE_5__*, align 8
  %18 = alloca %struct.retro_system_info*, align 8
  %19 = alloca i8*, align 8
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store i32 %5, i32* %12, align 4
  %20 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %13, align 8
  %23 = alloca i8, i64 %21, align 16
  store i64 %21, i64* %14, align 8
  %24 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %25 = zext i32 %24 to i64
  %26 = alloca i8, i64 %25, align 16
  store i64 %25, i64* %15, align 8
  %27 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %28 = zext i32 %27 to i64
  %29 = alloca i8, i64 %28, align 16
  store i64 %28, i64* %16, align 8
  %30 = call %struct.TYPE_5__* (...) @config_get_ptr()
  store %struct.TYPE_5__* %30, %struct.TYPE_5__** %17, align 8
  %31 = call %struct.retro_system_info* (...) @runloop_get_libretro_system_info()
  store %struct.retro_system_info* %31, %struct.retro_system_info** %18, align 8
  %32 = load %struct.retro_system_info*, %struct.retro_system_info** %18, align 8
  %33 = icmp ne %struct.retro_system_info* %32, null
  br i1 %33, label %34, label %38

34:                                               ; preds = %6
  %35 = load %struct.retro_system_info*, %struct.retro_system_info** %18, align 8
  %36 = getelementptr inbounds %struct.retro_system_info, %struct.retro_system_info* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  br label %39

38:                                               ; preds = %6
  br label %39

39:                                               ; preds = %38, %34
  %40 = phi i8* [ %37, %34 ], [ null, %38 ]
  store i8* %40, i8** %19, align 8
  %41 = getelementptr inbounds i8, i8* %26, i64 0
  store i8 0, i8* %41, align 16
  %42 = getelementptr inbounds i8, i8* %23, i64 0
  store i8 0, i8* %42, align 16
  %43 = load i8*, i8** %19, align 8
  %44 = call i32 @string_is_empty(i8* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %54, label %46

46:                                               ; preds = %39
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = load i8*, i8** %19, align 8
  %52 = trunc i64 %21 to i32
  %53 = call i32 @fill_pathname_join(i8* %23, i8* %50, i8* %51, i32 %52)
  br label %54

54:                                               ; preds = %46, %39
  %55 = load i32, i32* %12, align 4
  switch i32 %55, label %91 [
    i32 129, label %56
    i32 132, label %56
    i32 128, label %66
    i32 131, label %66
    i32 130, label %78
    i32 133, label %78
  ]

56:                                               ; preds = %54, %54
  %57 = load i8*, i8** %19, align 8
  %58 = call i32 @string_is_empty(i8* %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %65, label %60

60:                                               ; preds = %56
  %61 = load i8*, i8** %19, align 8
  %62 = load i8*, i8** %19, align 8
  %63 = trunc i64 %25 to i32
  %64 = call i32 @fill_pathname_join(i8* %26, i8* %61, i8* %62, i32 %63)
  br label %65

65:                                               ; preds = %60, %56
  br label %91

66:                                               ; preds = %54, %54
  %67 = load i8*, i8** %19, align 8
  %68 = call i32 @string_is_empty(i8* %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %77, label %70

70:                                               ; preds = %66
  %71 = load i8*, i8** %19, align 8
  %72 = load i32, i32* @RARCH_PATH_BASENAME, align 4
  %73 = call i32 @path_get(i32 %72)
  %74 = call i8* @path_basename(i32 %73)
  %75 = trunc i64 %25 to i32
  %76 = call i32 @fill_pathname_join(i8* %26, i8* %71, i8* %74, i32 %75)
  br label %77

77:                                               ; preds = %70, %66
  br label %91

78:                                               ; preds = %54, %54
  %79 = load i8*, i8** %19, align 8
  %80 = call i32 @string_is_empty(i8* %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %90, label %82

82:                                               ; preds = %78
  %83 = load i32, i32* @RARCH_PATH_BASENAME, align 4
  %84 = call i32 @path_get(i32 %83)
  %85 = trunc i64 %28 to i32
  %86 = call i32 @fill_pathname_parent_dir_name(i8* %29, i32 %84, i32 %85)
  %87 = load i8*, i8** %19, align 8
  %88 = trunc i64 %25 to i32
  %89 = call i32 @fill_pathname_join(i8* %26, i8* %87, i8* %29, i32 %88)
  br label %90

90:                                               ; preds = %82, %78
  br label %91

91:                                               ; preds = %54, %90, %77, %65
  %92 = call i32 @path_is_directory(i8* %23)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %96, label %94

94:                                               ; preds = %91
  %95 = call i32 @path_mkdir(i8* %23)
  br label %96

96:                                               ; preds = %94, %91
  %97 = load i32, i32* %12, align 4
  %98 = icmp ult i32 %97, 132
  br i1 %98, label %99, label %135

99:                                               ; preds = %96
  %100 = call i64 @input_remapping_save_file(i8* %26)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %128

102:                                              ; preds = %99
  %103 = load i32, i32* %12, align 4
  %104 = icmp eq i32 %103, 129
  br i1 %104, label %105, label %108

105:                                              ; preds = %102
  %106 = load i32, i32* @RARCH_CTL_SET_REMAPS_CORE_ACTIVE, align 4
  %107 = call i64 @rarch_ctl(i32 %106, i32* null)
  br label %122

108:                                              ; preds = %102
  %109 = load i32, i32* %12, align 4
  %110 = icmp eq i32 %109, 128
  br i1 %110, label %111, label %114

111:                                              ; preds = %108
  %112 = load i32, i32* @RARCH_CTL_SET_REMAPS_GAME_ACTIVE, align 4
  %113 = call i64 @rarch_ctl(i32 %112, i32* null)
  br label %121

114:                                              ; preds = %108
  %115 = load i32, i32* %12, align 4
  %116 = icmp eq i32 %115, 130
  br i1 %116, label %117, label %120

117:                                              ; preds = %114
  %118 = load i32, i32* @RARCH_CTL_SET_REMAPS_CONTENT_DIR_ACTIVE, align 4
  %119 = call i64 @rarch_ctl(i32 %118, i32* null)
  br label %120

120:                                              ; preds = %117, %114
  br label %121

121:                                              ; preds = %120, %111
  br label %122

122:                                              ; preds = %121, %105
  %123 = load i32, i32* @MSG_REMAP_FILE_SAVED_SUCCESSFULLY, align 4
  %124 = call i32 @msg_hash_to_str(i32 %123)
  %125 = load i32, i32* @MESSAGE_QUEUE_ICON_DEFAULT, align 4
  %126 = load i32, i32* @MESSAGE_QUEUE_CATEGORY_INFO, align 4
  %127 = call i32 @runloop_msg_queue_push(i32 %124, i32 1, i32 100, i32 1, i32* null, i32 %125, i32 %126)
  br label %134

128:                                              ; preds = %99
  %129 = load i32, i32* @MSG_ERROR_SAVING_REMAP_FILE, align 4
  %130 = call i32 @msg_hash_to_str(i32 %129)
  %131 = load i32, i32* @MESSAGE_QUEUE_ICON_DEFAULT, align 4
  %132 = load i32, i32* @MESSAGE_QUEUE_CATEGORY_INFO, align 4
  %133 = call i32 @runloop_msg_queue_push(i32 %130, i32 1, i32 100, i32 1, i32* null, i32 %131, i32 %132)
  br label %134

134:                                              ; preds = %128, %122
  br label %186

135:                                              ; preds = %96
  %136 = call i64 @input_remapping_remove_file(i8* %26)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %179

138:                                              ; preds = %135
  %139 = load i32, i32* %12, align 4
  %140 = icmp eq i32 %139, 132
  br i1 %140, label %141, label %149

141:                                              ; preds = %138
  %142 = load i32, i32* @RARCH_CTL_IS_REMAPS_CORE_ACTIVE, align 4
  %143 = call i64 @rarch_ctl(i32 %142, i32* null)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %149

145:                                              ; preds = %141
  %146 = load i32, i32* @RARCH_CTL_UNSET_REMAPS_CORE_ACTIVE, align 4
  %147 = call i64 @rarch_ctl(i32 %146, i32* null)
  %148 = call i32 @input_remapping_set_defaults(i32 1)
  br label %173

149:                                              ; preds = %141, %138
  %150 = load i32, i32* %12, align 4
  %151 = icmp eq i32 %150, 131
  br i1 %151, label %152, label %160

152:                                              ; preds = %149
  %153 = load i32, i32* @RARCH_CTL_IS_REMAPS_GAME_ACTIVE, align 4
  %154 = call i64 @rarch_ctl(i32 %153, i32* null)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %160

156:                                              ; preds = %152
  %157 = load i32, i32* @RARCH_CTL_UNSET_REMAPS_GAME_ACTIVE, align 4
  %158 = call i64 @rarch_ctl(i32 %157, i32* null)
  %159 = call i32 @input_remapping_set_defaults(i32 1)
  br label %172

160:                                              ; preds = %152, %149
  %161 = load i32, i32* %12, align 4
  %162 = icmp eq i32 %161, 133
  br i1 %162, label %163, label %171

163:                                              ; preds = %160
  %164 = load i32, i32* @RARCH_CTL_IS_REMAPS_CONTENT_DIR_ACTIVE, align 4
  %165 = call i64 @rarch_ctl(i32 %164, i32* null)
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %171

167:                                              ; preds = %163
  %168 = load i32, i32* @RARCH_CTL_UNSET_REMAPS_CONTENT_DIR_ACTIVE, align 4
  %169 = call i64 @rarch_ctl(i32 %168, i32* null)
  %170 = call i32 @input_remapping_set_defaults(i32 1)
  br label %171

171:                                              ; preds = %167, %163, %160
  br label %172

172:                                              ; preds = %171, %156
  br label %173

173:                                              ; preds = %172, %145
  %174 = load i32, i32* @MSG_REMAP_FILE_REMOVED_SUCCESSFULLY, align 4
  %175 = call i32 @msg_hash_to_str(i32 %174)
  %176 = load i32, i32* @MESSAGE_QUEUE_ICON_DEFAULT, align 4
  %177 = load i32, i32* @MESSAGE_QUEUE_CATEGORY_INFO, align 4
  %178 = call i32 @runloop_msg_queue_push(i32 %175, i32 1, i32 100, i32 1, i32* null, i32 %176, i32 %177)
  br label %185

179:                                              ; preds = %135
  %180 = load i32, i32* @MSG_ERROR_REMOVING_REMAP_FILE, align 4
  %181 = call i32 @msg_hash_to_str(i32 %180)
  %182 = load i32, i32* @MESSAGE_QUEUE_ICON_DEFAULT, align 4
  %183 = load i32, i32* @MESSAGE_QUEUE_CATEGORY_INFO, align 4
  %184 = call i32 @runloop_msg_queue_push(i32 %181, i32 1, i32 100, i32 1, i32* null, i32 %182, i32 %183)
  br label %185

185:                                              ; preds = %179, %173
  br label %186

186:                                              ; preds = %185, %134
  %187 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %187)
  ret i32 0
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.TYPE_5__* @config_get_ptr(...) #2

declare dso_local %struct.retro_system_info* @runloop_get_libretro_system_info(...) #2

declare dso_local i32 @string_is_empty(i8*) #2

declare dso_local i32 @fill_pathname_join(i8*, i8*, i8*, i32) #2

declare dso_local i8* @path_basename(i32) #2

declare dso_local i32 @path_get(i32) #2

declare dso_local i32 @fill_pathname_parent_dir_name(i8*, i32, i32) #2

declare dso_local i32 @path_is_directory(i8*) #2

declare dso_local i32 @path_mkdir(i8*) #2

declare dso_local i64 @input_remapping_save_file(i8*) #2

declare dso_local i64 @rarch_ctl(i32, i32*) #2

declare dso_local i32 @runloop_msg_queue_push(i32, i32, i32, i32, i32*, i32, i32) #2

declare dso_local i32 @msg_hash_to_str(i32) #2

declare dso_local i64 @input_remapping_remove_file(i8*) #2

declare dso_local i32 @input_remapping_set_defaults(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
