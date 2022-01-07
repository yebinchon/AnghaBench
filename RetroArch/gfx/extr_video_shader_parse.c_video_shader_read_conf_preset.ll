; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/extr_video_shader_parse.c_video_shader_read_conf_preset.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/extr_video_shader_parse.c_video_shader_read_conf_preset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32 }
%struct.video_shader = type { i32, i32, %struct.TYPE_16__*, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }
%union.string_list_elem_attr = type { i32 }
%struct.TYPE_14__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.string_list = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"shaders\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Cannot find \22shaders\22 param.\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"Need to define at least 1 shader.\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"feedback_pass\00", align 1
@GFX_MAX_SHADERS = common dso_local global i32 0, align 4
@file_change_data = common dso_local global i32* null, align 8
@PATH_CHANGE_TYPE_MODIFIED = common dso_local global i32 0, align 4
@PATH_CHANGE_TYPE_WRITE_FILE_CLOSED = common dso_local global i32 0, align 4
@PATH_CHANGE_TYPE_FILE_MOVED = common dso_local global i32 0, align 4
@PATH_CHANGE_TYPE_FILE_DELETED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @video_shader_read_conf_preset(%struct.TYPE_15__* %0, %struct.video_shader* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.video_shader*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %union.string_list_elem_attr, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca %struct.string_list*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %4, align 8
  store %struct.video_shader* %1, %struct.video_shader** %5, align 8
  store i32 0, i32* %8, align 4
  %13 = call %struct.TYPE_14__* (...) @config_get_ptr()
  store %struct.TYPE_14__* %13, %struct.TYPE_14__** %9, align 8
  store %struct.string_list* null, %struct.string_list** %10, align 8
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %15 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %11, align 4
  %18 = load %struct.video_shader*, %struct.video_shader** %5, align 8
  %19 = call i32 @memset(%struct.video_shader* %18, i32 0, i32 24)
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %21 = call i32 @config_get_uint(%struct.TYPE_15__* %20, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32* %8)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %2
  %24 = call i32 @RARCH_ERR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %145

25:                                               ; preds = %2
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %25
  %29 = call i32 @RARCH_ERR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %145

30:                                               ; preds = %25
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %32 = load %struct.video_shader*, %struct.video_shader** %5, align 8
  %33 = getelementptr inbounds %struct.video_shader, %struct.video_shader* %32, i32 0, i32 0
  %34 = call i32 @config_get_int(%struct.TYPE_15__* %31, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %30
  %37 = load %struct.video_shader*, %struct.video_shader** %5, align 8
  %38 = getelementptr inbounds %struct.video_shader, %struct.video_shader* %37, i32 0, i32 0
  store i32 -1, i32* %38, align 8
  br label %39

39:                                               ; preds = %36, %30
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* @GFX_MAX_SHADERS, align 4
  %42 = call i32 @MIN(i32 %40, i32 %41)
  %43 = load %struct.video_shader*, %struct.video_shader** %5, align 8
  %44 = getelementptr inbounds %struct.video_shader, %struct.video_shader* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  %45 = bitcast %union.string_list_elem_attr* %7 to i32*
  store i32 0, i32* %45, align 4
  %46 = load %struct.video_shader*, %struct.video_shader** %5, align 8
  %47 = getelementptr inbounds %struct.video_shader, %struct.video_shader* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @strlcpy(i32 %48, i32 %51, i32 4)
  %53 = load i32, i32* %11, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %69

55:                                               ; preds = %39
  %56 = load i32*, i32** @file_change_data, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %58, label %60

58:                                               ; preds = %55
  %59 = call i32 @frontend_driver_watch_path_for_changes(%struct.string_list* null, i32 0, i32** @file_change_data)
  br label %60

60:                                               ; preds = %58, %55
  store i32* null, i32** @file_change_data, align 8
  %61 = call %struct.string_list* (...) @string_list_new()
  store %struct.string_list* %61, %struct.string_list** %10, align 8
  %62 = load %struct.string_list*, %struct.string_list** %10, align 8
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = getelementptr inbounds %union.string_list_elem_attr, %union.string_list_elem_attr* %7, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @string_list_append(%struct.string_list* %62, i32 %65, i32 %67)
  br label %69

69:                                               ; preds = %60, %39
  store i32 0, i32* %6, align 4
  br label %70

70:                                               ; preds = %115, %69
  %71 = load i32, i32* %6, align 4
  %72 = load %struct.video_shader*, %struct.video_shader** %5, align 8
  %73 = getelementptr inbounds %struct.video_shader, %struct.video_shader* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = icmp ult i32 %71, %74
  br i1 %75, label %76, label %118

76:                                               ; preds = %70
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %78 = load %struct.video_shader*, %struct.video_shader** %5, align 8
  %79 = getelementptr inbounds %struct.video_shader, %struct.video_shader* %78, i32 0, i32 2
  %80 = load %struct.TYPE_16__*, %struct.TYPE_16__** %79, align 8
  %81 = load i32, i32* %6, align 4
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %80, i64 %82
  %84 = load i32, i32* %6, align 4
  %85 = call i32 @video_shader_parse_pass(%struct.TYPE_15__* %77, %struct.TYPE_16__* %83, i32 %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %94, label %87

87:                                               ; preds = %76
  %88 = load %struct.string_list*, %struct.string_list** %10, align 8
  %89 = icmp ne %struct.string_list* %88, null
  br i1 %89, label %90, label %93

90:                                               ; preds = %87
  %91 = load %struct.string_list*, %struct.string_list** %10, align 8
  %92 = call i32 @string_list_free(%struct.string_list* %91)
  store %struct.string_list* null, %struct.string_list** %10, align 8
  br label %93

93:                                               ; preds = %90, %87
  store i32 0, i32* %3, align 4
  br label %145

94:                                               ; preds = %76
  %95 = load i32, i32* %11, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %114

97:                                               ; preds = %94
  %98 = load %struct.string_list*, %struct.string_list** %10, align 8
  %99 = icmp ne %struct.string_list* %98, null
  br i1 %99, label %100, label %114

100:                                              ; preds = %97
  %101 = load %struct.string_list*, %struct.string_list** %10, align 8
  %102 = load %struct.video_shader*, %struct.video_shader** %5, align 8
  %103 = getelementptr inbounds %struct.video_shader, %struct.video_shader* %102, i32 0, i32 2
  %104 = load %struct.TYPE_16__*, %struct.TYPE_16__** %103, align 8
  %105 = load i32, i32* %6, align 4
  %106 = zext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %104, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = getelementptr inbounds %union.string_list_elem_attr, %union.string_list_elem_attr* %7, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @string_list_append(%struct.string_list* %101, i32 %110, i32 %112)
  br label %114

114:                                              ; preds = %100, %97, %94
  br label %115

115:                                              ; preds = %114
  %116 = load i32, i32* %6, align 4
  %117 = add i32 %116, 1
  store i32 %117, i32* %6, align 4
  br label %70

118:                                              ; preds = %70
  %119 = load i32, i32* %11, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %138

121:                                              ; preds = %118
  %122 = load i32, i32* @PATH_CHANGE_TYPE_MODIFIED, align 4
  %123 = load i32, i32* @PATH_CHANGE_TYPE_WRITE_FILE_CLOSED, align 4
  %124 = or i32 %122, %123
  %125 = load i32, i32* @PATH_CHANGE_TYPE_FILE_MOVED, align 4
  %126 = or i32 %124, %125
  %127 = load i32, i32* @PATH_CHANGE_TYPE_FILE_DELETED, align 4
  %128 = or i32 %126, %127
  store i32 %128, i32* %12, align 4
  %129 = load %struct.string_list*, %struct.string_list** %10, align 8
  %130 = load i32, i32* %12, align 4
  %131 = call i32 @frontend_driver_watch_path_for_changes(%struct.string_list* %129, i32 %130, i32** @file_change_data)
  %132 = load %struct.string_list*, %struct.string_list** %10, align 8
  %133 = icmp ne %struct.string_list* %132, null
  br i1 %133, label %134, label %137

134:                                              ; preds = %121
  %135 = load %struct.string_list*, %struct.string_list** %10, align 8
  %136 = call i32 @string_list_free(%struct.string_list* %135)
  br label %137

137:                                              ; preds = %134, %121
  br label %138

138:                                              ; preds = %137, %118
  %139 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %140 = load %struct.video_shader*, %struct.video_shader** %5, align 8
  %141 = call i32 @video_shader_parse_textures(%struct.TYPE_15__* %139, %struct.video_shader* %140)
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %144, label %143

143:                                              ; preds = %138
  store i32 0, i32* %3, align 4
  br label %145

144:                                              ; preds = %138
  store i32 1, i32* %3, align 4
  br label %145

145:                                              ; preds = %144, %143, %93, %28, %23
  %146 = load i32, i32* %3, align 4
  ret i32 %146
}

declare dso_local %struct.TYPE_14__* @config_get_ptr(...) #1

declare dso_local i32 @memset(%struct.video_shader*, i32, i32) #1

declare dso_local i32 @config_get_uint(%struct.TYPE_15__*, i8*, i32*) #1

declare dso_local i32 @RARCH_ERR(i8*) #1

declare dso_local i32 @config_get_int(%struct.TYPE_15__*, i8*, i32*) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i32 @frontend_driver_watch_path_for_changes(%struct.string_list*, i32, i32**) #1

declare dso_local %struct.string_list* @string_list_new(...) #1

declare dso_local i32 @string_list_append(%struct.string_list*, i32, i32) #1

declare dso_local i32 @video_shader_parse_pass(%struct.TYPE_15__*, %struct.TYPE_16__*, i32) #1

declare dso_local i32 @string_list_free(%struct.string_list*) #1

declare dso_local i32 @video_shader_parse_textures(%struct.TYPE_15__*, %struct.video_shader*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
