; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/extr_menu_shader.c_menu_shader_manager_operate_auto_preset.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/extr_menu_shader.c_menu_shader_manager_operate_auto_preset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.video_shader = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8* }
%struct.retro_system_info = type { i8* }

@PATH_MAX_LENGTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"presets\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"global\00", align 1
@RARCH_PATH_BASENAME = common dso_local global i32 0, align 4
@AUTO_SHADER_OP_SAVE = common dso_local global i32 0, align 4
@AUTO_SHADER_OP_REMOVE = common dso_local global i32 0, align 4
@shader_types = common dso_local global i32* null, align 8
@AUTO_SHADER_OP_EXISTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.video_shader*, i32, i32)* @menu_shader_manager_operate_auto_preset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @menu_shader_manager_operate_auto_preset(i32 %0, %struct.video_shader* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.video_shader*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_5__*, align 8
  %15 = alloca %struct.retro_system_info*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i64, align 8
  %25 = alloca i8*, align 8
  store i32 %0, i32* %6, align 4
  store %struct.video_shader* %1, %struct.video_shader** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %26 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %27 = zext i32 %26 to i64
  %28 = call i8* @llvm.stacksave()
  store i8* %28, i8** %10, align 8
  %29 = alloca i8, i64 %27, align 16
  store i64 %27, i64* %11, align 8
  %30 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %31 = zext i32 %30 to i64
  %32 = alloca i8, i64 %31, align 16
  store i64 %31, i64* %12, align 8
  %33 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %34 = zext i32 %33 to i64
  %35 = alloca i8, i64 %34, align 16
  store i64 %34, i64* %13, align 8
  %36 = call %struct.TYPE_5__* (...) @config_get_ptr()
  store %struct.TYPE_5__* %36, %struct.TYPE_5__** %14, align 8
  %37 = call %struct.retro_system_info* (...) @runloop_get_libretro_system_info()
  store %struct.retro_system_info* %37, %struct.retro_system_info** %15, align 8
  %38 = load %struct.retro_system_info*, %struct.retro_system_info** %15, align 8
  %39 = icmp ne %struct.retro_system_info* %38, null
  br i1 %39, label %40, label %44

40:                                               ; preds = %4
  %41 = load %struct.retro_system_info*, %struct.retro_system_info** %15, align 8
  %42 = getelementptr inbounds %struct.retro_system_info, %struct.retro_system_info* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  br label %45

44:                                               ; preds = %4
  br label %45

45:                                               ; preds = %44, %40
  %46 = phi i8* [ %43, %40 ], [ null, %44 ]
  store i8* %46, i8** %16, align 8
  %47 = getelementptr inbounds i8, i8* %35, i64 0
  store i8 0, i8* %47, align 16
  %48 = getelementptr inbounds i8, i8* %32, i64 0
  store i8 0, i8* %48, align 16
  %49 = getelementptr inbounds i8, i8* %29, i64 0
  store i8 0, i8* %49, align 16
  %50 = load i32, i32* %8, align 4
  %51 = icmp eq i32 %50, 129
  br i1 %51, label %52, label %59

52:                                               ; preds = %45
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  %57 = trunc i64 %31 to i32
  %58 = call i32 @fill_pathname_join(i8* %32, i8* %56, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %57)
  br label %75

59:                                               ; preds = %45
  %60 = load i8*, i8** %16, align 8
  %61 = call i64 @string_is_empty(i8* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %59
  store i32 0, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %209

64:                                               ; preds = %59
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i8*, i8** %67, align 8
  %69 = trunc i64 %27 to i32
  %70 = call i32 @fill_pathname_join(i8* %29, i8* %68, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %69)
  %71 = load i8*, i8** %16, align 8
  %72 = trunc i64 %31 to i32
  %73 = call i32 @fill_pathname_join(i8* %32, i8* %29, i8* %71, i32 %72)
  br label %74

74:                                               ; preds = %64
  br label %75

75:                                               ; preds = %74, %52
  %76 = load i32, i32* %8, align 4
  switch i32 %76, label %103 [
    i32 129, label %77
    i32 131, label %80
    i32 128, label %84
    i32 130, label %91
  ]

77:                                               ; preds = %75
  %78 = trunc i64 %34 to i32
  %79 = call i32 @fill_pathname_join(i8* %35, i8* %32, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %78)
  br label %104

80:                                               ; preds = %75
  %81 = load i8*, i8** %16, align 8
  %82 = trunc i64 %34 to i32
  %83 = call i32 @fill_pathname_join(i8* %35, i8* %32, i8* %81, i32 %82)
  br label %104

84:                                               ; preds = %75
  %85 = load i32, i32* @RARCH_PATH_BASENAME, align 4
  %86 = call i32 @path_get(i32 %85)
  %87 = trunc i64 %27 to i32
  %88 = call i32 @fill_pathname_parent_dir_name(i8* %29, i32 %86, i32 %87)
  %89 = trunc i64 %34 to i32
  %90 = call i32 @fill_pathname_join(i8* %35, i8* %32, i8* %29, i32 %89)
  br label %104

91:                                               ; preds = %75
  %92 = load i32, i32* @RARCH_PATH_BASENAME, align 4
  %93 = call i32 @path_get(i32 %92)
  %94 = call i8* @path_basename(i32 %93)
  store i8* %94, i8** %18, align 8
  %95 = load i8*, i8** %18, align 8
  %96 = call i64 @string_is_empty(i8* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %91
  store i32 0, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %209

99:                                               ; preds = %91
  %100 = load i8*, i8** %18, align 8
  %101 = trunc i64 %34 to i32
  %102 = call i32 @fill_pathname_join(i8* %35, i8* %32, i8* %100, i32 %101)
  br label %104

103:                                              ; preds = %75
  store i32 0, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %209

104:                                              ; preds = %99, %84, %80, %77
  %105 = load i32, i32* %6, align 4
  %106 = load i32, i32* @AUTO_SHADER_OP_SAVE, align 4
  %107 = icmp eq i32 %105, %106
  br i1 %107, label %108, label %117

108:                                              ; preds = %104
  %109 = call i32 @path_is_directory(i8* %32)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %113, label %111

111:                                              ; preds = %108
  %112 = call i32 @path_mkdir(i8* %32)
  br label %113

113:                                              ; preds = %111, %108
  %114 = load %struct.video_shader*, %struct.video_shader** %7, align 8
  %115 = load i32, i32* %9, align 4
  %116 = call i32 @menu_shader_manager_save_preset_internal(%struct.video_shader* %114, i8* %35, i32 %115, i32 1)
  store i32 %116, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %209

117:                                              ; preds = %104
  %118 = load i32, i32* %6, align 4
  %119 = load i32, i32* @AUTO_SHADER_OP_REMOVE, align 4
  %120 = icmp eq i32 %118, %119
  br i1 %120, label %121, label %162

121:                                              ; preds = %117
  %122 = call i32 @strlen(i8* %35)
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i8, i8* %35, i64 %123
  store i8* %124, i8** %19, align 8
  store i32 0, i32* %21, align 4
  store i64 0, i64* %20, align 8
  br label %125

125:                                              ; preds = %157, %121
  %126 = load i64, i64* %20, align 8
  %127 = load i32*, i32** @shader_types, align 8
  %128 = call i64 @ARRAY_SIZE(i32* %127)
  %129 = icmp ult i64 %126, %128
  br i1 %129, label %130, label %160

130:                                              ; preds = %125
  %131 = load i32*, i32** @shader_types, align 8
  %132 = load i64, i64* %20, align 8
  %133 = getelementptr inbounds i32, i32* %131, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @video_shader_is_supported(i32 %134)
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %138, label %137

137:                                              ; preds = %130
  br label %157

138:                                              ; preds = %130
  %139 = load i32*, i32** @shader_types, align 8
  %140 = load i64, i64* %20, align 8
  %141 = getelementptr inbounds i32, i32* %139, i64 %140
  %142 = load i32, i32* %141, align 4
  %143 = call i8* @video_shader_get_preset_extension(i32 %142)
  store i8* %143, i8** %22, align 8
  %144 = load i8*, i8** %19, align 8
  %145 = load i8*, i8** %22, align 8
  %146 = load i8*, i8** %19, align 8
  %147 = ptrtoint i8* %146 to i64
  %148 = ptrtoint i8* %35 to i64
  %149 = sub i64 %147, %148
  %150 = sub i64 %34, %149
  %151 = trunc i64 %150 to i32
  %152 = call i32 @strlcpy(i8* %144, i8* %145, i32 %151)
  %153 = call i32 @filestream_delete(i8* %35)
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %156, label %155

155:                                              ; preds = %138
  store i32 1, i32* %21, align 4
  br label %156

156:                                              ; preds = %155, %138
  br label %157

157:                                              ; preds = %156, %137
  %158 = load i64, i64* %20, align 8
  %159 = add i64 %158, 1
  store i64 %159, i64* %20, align 8
  br label %125

160:                                              ; preds = %125
  %161 = load i32, i32* %21, align 4
  store i32 %161, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %209

162:                                              ; preds = %117
  %163 = load i32, i32* %6, align 4
  %164 = load i32, i32* @AUTO_SHADER_OP_EXISTS, align 4
  %165 = icmp eq i32 %163, %164
  br i1 %165, label %166, label %206

166:                                              ; preds = %162
  %167 = call i32 @strlen(i8* %35)
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i8, i8* %35, i64 %168
  store i8* %169, i8** %23, align 8
  store i64 0, i64* %24, align 8
  br label %170

170:                                              ; preds = %202, %166
  %171 = load i64, i64* %24, align 8
  %172 = load i32*, i32** @shader_types, align 8
  %173 = call i64 @ARRAY_SIZE(i32* %172)
  %174 = icmp ult i64 %171, %173
  br i1 %174, label %175, label %205

175:                                              ; preds = %170
  %176 = load i32*, i32** @shader_types, align 8
  %177 = load i64, i64* %24, align 8
  %178 = getelementptr inbounds i32, i32* %176, i64 %177
  %179 = load i32, i32* %178, align 4
  %180 = call i32 @video_shader_is_supported(i32 %179)
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %183, label %182

182:                                              ; preds = %175
  br label %202

183:                                              ; preds = %175
  %184 = load i32*, i32** @shader_types, align 8
  %185 = load i64, i64* %24, align 8
  %186 = getelementptr inbounds i32, i32* %184, i64 %185
  %187 = load i32, i32* %186, align 4
  %188 = call i8* @video_shader_get_preset_extension(i32 %187)
  store i8* %188, i8** %25, align 8
  %189 = load i8*, i8** %23, align 8
  %190 = load i8*, i8** %25, align 8
  %191 = load i8*, i8** %23, align 8
  %192 = ptrtoint i8* %191 to i64
  %193 = ptrtoint i8* %35 to i64
  %194 = sub i64 %192, %193
  %195 = sub i64 %34, %194
  %196 = trunc i64 %195 to i32
  %197 = call i32 @strlcpy(i8* %189, i8* %190, i32 %196)
  %198 = call i64 @path_is_valid(i8* %35)
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %201

200:                                              ; preds = %183
  store i32 1, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %209

201:                                              ; preds = %183
  br label %202

202:                                              ; preds = %201, %182
  %203 = load i64, i64* %24, align 8
  %204 = add i64 %203, 1
  store i64 %204, i64* %24, align 8
  br label %170

205:                                              ; preds = %170
  br label %206

206:                                              ; preds = %205, %162
  br label %207

207:                                              ; preds = %206
  br label %208

208:                                              ; preds = %207
  store i32 0, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %209

209:                                              ; preds = %208, %200, %160, %113, %103, %98, %63
  %210 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %210)
  %211 = load i32, i32* %5, align 4
  ret i32 %211
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.TYPE_5__* @config_get_ptr(...) #2

declare dso_local %struct.retro_system_info* @runloop_get_libretro_system_info(...) #2

declare dso_local i32 @fill_pathname_join(i8*, i8*, i8*, i32) #2

declare dso_local i64 @string_is_empty(i8*) #2

declare dso_local i32 @fill_pathname_parent_dir_name(i8*, i32, i32) #2

declare dso_local i32 @path_get(i32) #2

declare dso_local i8* @path_basename(i32) #2

declare dso_local i32 @path_is_directory(i8*) #2

declare dso_local i32 @path_mkdir(i8*) #2

declare dso_local i32 @menu_shader_manager_save_preset_internal(%struct.video_shader*, i8*, i32, i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i64 @ARRAY_SIZE(i32*) #2

declare dso_local i32 @video_shader_is_supported(i32) #2

declare dso_local i8* @video_shader_get_preset_extension(i32) #2

declare dso_local i32 @strlcpy(i8*, i8*, i32) #2

declare dso_local i32 @filestream_delete(i8*) #2

declare dso_local i64 @path_is_valid(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
