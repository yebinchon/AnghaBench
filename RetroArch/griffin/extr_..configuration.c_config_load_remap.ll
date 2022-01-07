; ModuleID = '/home/carl/AnghaBench/RetroArch/griffin/extr_..configuration.c_config_load_remap.c'
source_filename = "/home/carl/AnghaBench/RetroArch/griffin/extr_..configuration.c_config_load_remap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8* }

@PATH_MAX_LENGTH = common dso_local global i32 0, align 4
@RARCH_PATH_BASENAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"[Remaps]: remap directory: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c".rmp\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"[Remaps]: game-specific remap found at %s.\0A\00", align 1
@RARCH_CTL_SET_REMAPS_GAME_ACTIVE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [51 x i8] c"[Remaps]: content-dir-specific remap found at %s.\0A\00", align 1
@RARCH_CTL_SET_REMAPS_CONTENT_DIR_ACTIVE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [44 x i8] c"[Remaps]: core-specific remap found at %s.\0A\00", align 1
@RARCH_CTL_SET_REMAPS_CORE_ACTIVE = common dso_local global i32 0, align 4
@MSG_GAME_REMAP_FILE_LOADED = common dso_local global i32 0, align 4
@MESSAGE_QUEUE_ICON_DEFAULT = common dso_local global i32 0, align 4
@MESSAGE_QUEUE_CATEGORY_INFO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @config_load_remap(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_5__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %17 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %18 = sext i32 %17 to i64
  %19 = mul i64 %18, 1
  store i64 %19, i64* %4, align 8
  store i32* null, i32** %5, align 8
  store i8* null, i8** %6, align 8
  store i8* null, i8** %7, align 8
  store i8* null, i8** %8, align 8
  store i8* null, i8** %9, align 8
  %20 = call %struct.TYPE_5__* (...) @runloop_get_system_info()
  store %struct.TYPE_5__* %20, %struct.TYPE_5__** %10, align 8
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %22 = icmp ne %struct.TYPE_5__* %21, null
  br i1 %22, label %23, label %28

23:                                               ; preds = %1
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  br label %29

28:                                               ; preds = %1
  br label %29

29:                                               ; preds = %28, %23
  %30 = phi i8* [ %27, %23 ], [ null, %28 ]
  store i8* %30, i8** %11, align 8
  %31 = load i32, i32* @RARCH_PATH_BASENAME, align 4
  %32 = call i8* @path_get(i32 %31)
  store i8* %32, i8** %12, align 8
  %33 = load i8*, i8** %12, align 8
  %34 = call i8* @path_basename(i8* %33)
  store i8* %34, i8** %13, align 8
  %35 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %36 = zext i32 %35 to i64
  %37 = call i8* @llvm.stacksave()
  store i8* %37, i8** %14, align 8
  %38 = alloca i8, i64 %36, align 16
  store i64 %36, i64* %15, align 8
  %39 = load i8*, i8** %11, align 8
  %40 = call i64 @string_is_empty(i8* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %29
  %43 = load i8*, i8** %13, align 8
  %44 = call i64 @string_is_empty(i8* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %42, %29
  store i32 0, i32* %2, align 4
  store i32 1, i32* %16, align 4
  br label %182

47:                                               ; preds = %42
  %48 = load i8*, i8** %3, align 8
  %49 = call i64 @string_is_empty(i8* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %47
  store i32 0, i32* %2, align 4
  store i32 1, i32* %16, align 4
  br label %182

52:                                               ; preds = %47
  %53 = load i8*, i8** %12, align 8
  %54 = call i64 @string_is_empty(i8* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %60, label %56

56:                                               ; preds = %52
  %57 = load i8*, i8** %12, align 8
  %58 = trunc i64 %36 to i32
  %59 = call i32 @fill_pathname_parent_dir_name(i8* %38, i8* %57, i32 %58)
  br label %60

60:                                               ; preds = %56, %52
  %61 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %62 = sext i32 %61 to i64
  %63 = mul i64 %62, 1
  %64 = trunc i64 %63 to i32
  %65 = call i64 @malloc(i32 %64)
  %66 = inttoptr i64 %65 to i8*
  store i8* %66, i8** %6, align 8
  %67 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %68 = sext i32 %67 to i64
  %69 = mul i64 %68, 1
  %70 = trunc i64 %69 to i32
  %71 = call i64 @malloc(i32 %70)
  %72 = inttoptr i64 %71 to i8*
  store i8* %72, i8** %7, align 8
  %73 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %74 = sext i32 %73 to i64
  %75 = mul i64 %74, 1
  %76 = trunc i64 %75 to i32
  %77 = call i64 @malloc(i32 %76)
  %78 = inttoptr i64 %77 to i8*
  store i8* %78, i8** %8, align 8
  %79 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %80 = sext i32 %79 to i64
  %81 = mul i64 %80, 1
  %82 = trunc i64 %81 to i32
  %83 = call i64 @malloc(i32 %82)
  %84 = inttoptr i64 %83 to i8*
  store i8* %84, i8** %9, align 8
  %85 = load i8*, i8** %8, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 0
  store i8 0, i8* %86, align 1
  %87 = load i8*, i8** %7, align 8
  %88 = getelementptr inbounds i8, i8* %87, i64 0
  store i8 0, i8* %88, align 1
  %89 = load i8*, i8** %6, align 8
  %90 = getelementptr inbounds i8, i8* %89, i64 0
  store i8 0, i8* %90, align 1
  %91 = load i8*, i8** %6, align 8
  %92 = load i8*, i8** %3, align 8
  %93 = load i64, i64* %4, align 8
  %94 = call i32 @strlcpy(i8* %91, i8* %92, i64 %93)
  %95 = load i8*, i8** %6, align 8
  %96 = call i32 @RARCH_LOG(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %95)
  %97 = load i8*, i8** %7, align 8
  %98 = load i8*, i8** %6, align 8
  %99 = load i8*, i8** %11, align 8
  %100 = load i8*, i8** %11, align 8
  %101 = load i64, i64* %4, align 8
  %102 = call i32 @fill_pathname_join_special_ext(i8* %97, i8* %98, i8* %99, i8* %100, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i64 %101)
  %103 = load i8*, i8** %9, align 8
  %104 = load i8*, i8** %6, align 8
  %105 = load i8*, i8** %11, align 8
  %106 = load i64, i64* %4, align 8
  %107 = call i32 @fill_pathname_join_special_ext(i8* %103, i8* %104, i8* %105, i8* %38, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i64 %106)
  %108 = load i8*, i8** %8, align 8
  %109 = load i8*, i8** %6, align 8
  %110 = load i8*, i8** %11, align 8
  %111 = load i8*, i8** %13, align 8
  %112 = load i64, i64* %4, align 8
  %113 = call i32 @fill_pathname_join_special_ext(i8* %108, i8* %109, i8* %110, i8* %111, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i64 %112)
  %114 = call i32 @input_remapping_set_defaults(i32 0)
  %115 = load i8*, i8** %8, align 8
  %116 = call i32* @config_file_new_from_path_to_string(i8* %115)
  store i32* %116, i32** %5, align 8
  %117 = icmp ne i32* %116, null
  br i1 %117, label %118, label %129

118:                                              ; preds = %60
  %119 = load i8*, i8** %8, align 8
  %120 = call i32 @RARCH_LOG(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i8* %119)
  %121 = load i32*, i32** %5, align 8
  %122 = load i8*, i8** %8, align 8
  %123 = call i64 @input_remapping_load_file(i32* %121, i8* %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %118
  %126 = load i32, i32* @RARCH_CTL_SET_REMAPS_GAME_ACTIVE, align 4
  %127 = call i32 @rarch_ctl(i32 %126, i32* null)
  br label %168

128:                                              ; preds = %118
  br label %129

129:                                              ; preds = %128, %60
  %130 = load i8*, i8** %9, align 8
  %131 = call i32* @config_file_new_from_path_to_string(i8* %130)
  store i32* %131, i32** %5, align 8
  %132 = icmp ne i32* %131, null
  br i1 %132, label %133, label %144

133:                                              ; preds = %129
  %134 = load i8*, i8** %9, align 8
  %135 = call i32 @RARCH_LOG(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0), i8* %134)
  %136 = load i32*, i32** %5, align 8
  %137 = load i8*, i8** %9, align 8
  %138 = call i64 @input_remapping_load_file(i32* %136, i8* %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %143

140:                                              ; preds = %133
  %141 = load i32, i32* @RARCH_CTL_SET_REMAPS_CONTENT_DIR_ACTIVE, align 4
  %142 = call i32 @rarch_ctl(i32 %141, i32* null)
  br label %168

143:                                              ; preds = %133
  br label %144

144:                                              ; preds = %143, %129
  %145 = load i8*, i8** %7, align 8
  %146 = call i32* @config_file_new_from_path_to_string(i8* %145)
  store i32* %146, i32** %5, align 8
  %147 = icmp ne i32* %146, null
  br i1 %147, label %148, label %159

148:                                              ; preds = %144
  %149 = load i8*, i8** %7, align 8
  %150 = call i32 @RARCH_LOG(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0), i8* %149)
  %151 = load i32*, i32** %5, align 8
  %152 = load i8*, i8** %7, align 8
  %153 = call i64 @input_remapping_load_file(i32* %151, i8* %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %158

155:                                              ; preds = %148
  %156 = load i32, i32* @RARCH_CTL_SET_REMAPS_CORE_ACTIVE, align 4
  %157 = call i32 @rarch_ctl(i32 %156, i32* null)
  br label %168

158:                                              ; preds = %148
  br label %159

159:                                              ; preds = %158, %144
  store i32* null, i32** %5, align 8
  %160 = load i8*, i8** %9, align 8
  %161 = call i32 @free(i8* %160)
  %162 = load i8*, i8** %6, align 8
  %163 = call i32 @free(i8* %162)
  %164 = load i8*, i8** %7, align 8
  %165 = call i32 @free(i8* %164)
  %166 = load i8*, i8** %8, align 8
  %167 = call i32 @free(i8* %166)
  store i32 0, i32* %2, align 4
  store i32 1, i32* %16, align 4
  br label %182

168:                                              ; preds = %155, %140, %125
  %169 = load i32, i32* @MSG_GAME_REMAP_FILE_LOADED, align 4
  %170 = call i32 @msg_hash_to_str(i32 %169)
  %171 = load i32, i32* @MESSAGE_QUEUE_ICON_DEFAULT, align 4
  %172 = load i32, i32* @MESSAGE_QUEUE_CATEGORY_INFO, align 4
  %173 = call i32 @runloop_msg_queue_push(i32 %170, i32 1, i32 100, i32 1, i32* null, i32 %171, i32 %172)
  %174 = load i8*, i8** %9, align 8
  %175 = call i32 @free(i8* %174)
  %176 = load i8*, i8** %6, align 8
  %177 = call i32 @free(i8* %176)
  %178 = load i8*, i8** %7, align 8
  %179 = call i32 @free(i8* %178)
  %180 = load i8*, i8** %8, align 8
  %181 = call i32 @free(i8* %180)
  store i32 1, i32* %2, align 4
  store i32 1, i32* %16, align 4
  br label %182

182:                                              ; preds = %168, %159, %51, %46
  %183 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %183)
  %184 = load i32, i32* %2, align 4
  ret i32 %184
}

declare dso_local %struct.TYPE_5__* @runloop_get_system_info(...) #1

declare dso_local i8* @path_get(i32) #1

declare dso_local i8* @path_basename(i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @string_is_empty(i8*) #1

declare dso_local i32 @fill_pathname_parent_dir_name(i8*, i8*, i32) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @strlcpy(i8*, i8*, i64) #1

declare dso_local i32 @RARCH_LOG(i8*, i8*) #1

declare dso_local i32 @fill_pathname_join_special_ext(i8*, i8*, i8*, i8*, i8*, i64) #1

declare dso_local i32 @input_remapping_set_defaults(i32) #1

declare dso_local i32* @config_file_new_from_path_to_string(i8*) #1

declare dso_local i64 @input_remapping_load_file(i32*, i8*) #1

declare dso_local i32 @rarch_ctl(i32, i32*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @runloop_msg_queue_push(i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @msg_hash_to_str(i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
