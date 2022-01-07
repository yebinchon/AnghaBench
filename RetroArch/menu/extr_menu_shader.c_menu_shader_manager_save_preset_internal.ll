; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/extr_menu_shader.c_menu_shader_manager_save_preset_internal.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/extr_menu_shader.c_menu_shader_manager_save_preset_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.video_shader = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8*, i8* }

@RARCH_SHADER_NONE = common dso_local global i32 0, align 4
@PATH_MAX_LENGTH = common dso_local global i32 0, align 4
@menu_driver_shader_modified = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c".cgp\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c".glslp\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c".slangp\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"retroarch\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"Saved shader preset to %s.\0A\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"Failed writing shader preset to %s.\0A\00", align 1
@RARCH_PATH_CONFIG = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [97 x i8] c"Failed to write shader preset. Make sure shader directory and/or config directory are writable.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.video_shader*, i8*, i32, i32)* @menu_shader_manager_save_preset_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @menu_shader_manager_save_preset_internal(%struct.video_shader* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.video_shader*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca [3 x i8*], align 16
  %20 = alloca %struct.TYPE_5__*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i64, align 8
  store %struct.video_shader* %0, %struct.video_shader** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %23 = load i32, i32* @RARCH_SHADER_NONE, align 4
  store i32 %23, i32* %11, align 4
  store i8* null, i8** %12, align 8
  store i64 0, i64* %13, align 8
  %24 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %14, align 8
  %27 = alloca i8, i64 %25, align 16
  store i64 %25, i64* %15, align 8
  %28 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %29 = zext i32 %28 to i64
  %30 = alloca i8, i64 %29, align 16
  store i64 %29, i64* %16, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 0
  store i8 0, i8* %31, align 16
  %32 = getelementptr inbounds i8, i8* %27, i64 0
  store i8 0, i8* %32, align 16
  %33 = load %struct.video_shader*, %struct.video_shader** %6, align 8
  %34 = icmp ne %struct.video_shader* %33, null
  br i1 %34, label %35, label %40

35:                                               ; preds = %4
  %36 = load %struct.video_shader*, %struct.video_shader** %6, align 8
  %37 = getelementptr inbounds %struct.video_shader, %struct.video_shader* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %35, %4
  store i32 0, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %183

41:                                               ; preds = %35
  %42 = load %struct.video_shader*, %struct.video_shader** %6, align 8
  %43 = call i32 @menu_shader_manager_get_type(%struct.video_shader* %42)
  store i32 %43, i32* %11, align 4
  %44 = load i32, i32* %11, align 4
  %45 = load i32, i32* @RARCH_SHADER_NONE, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %41
  store i32 0, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %183

48:                                               ; preds = %41
  %49 = load i64, i64* @menu_driver_shader_modified, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %48
  store i32 0, i32* %9, align 4
  br label %52

52:                                               ; preds = %51, %48
  %53 = load i8*, i8** %7, align 8
  %54 = call i64 @string_is_empty(i8* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %78, label %56

56:                                               ; preds = %52
  %57 = load i8*, i8** %7, align 8
  %58 = trunc i64 %25 to i32
  %59 = call i32 @strlcpy(i8* %27, i8* %57, i32 %58)
  %60 = load i8*, i8** %7, align 8
  %61 = call i32 @strstr(i8* %60, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %77, label %63

63:                                               ; preds = %56
  %64 = load i8*, i8** %7, align 8
  %65 = call i32 @strstr(i8* %64, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %77, label %67

67:                                               ; preds = %63
  %68 = load i8*, i8** %7, align 8
  %69 = call i32 @strstr(i8* %68, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %77, label %71

71:                                               ; preds = %67
  %72 = load i32, i32* %11, align 4
  %73 = call i8* @video_shader_get_preset_extension(i32 %72)
  store i8* %73, i8** %18, align 8
  %74 = load i8*, i8** %18, align 8
  %75 = trunc i64 %25 to i32
  %76 = call i32 @strlcat(i8* %27, i8* %74, i32 %75)
  br label %77

77:                                               ; preds = %71, %67, %63, %56
  br label %85

78:                                               ; preds = %52
  %79 = trunc i64 %25 to i32
  %80 = call i32 @strlcpy(i8* %27, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 %79)
  %81 = load i32, i32* %11, align 4
  %82 = call i8* @video_shader_get_preset_extension(i32 %81)
  %83 = trunc i64 %25 to i32
  %84 = call i32 @strlcat(i8* %27, i8* %82, i32 %83)
  br label %85

85:                                               ; preds = %78, %77
  %86 = call i64 @path_is_absolute(i8* %27)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %102

88:                                               ; preds = %85
  store i8* %27, i8** %12, align 8
  %89 = load i8*, i8** %12, align 8
  %90 = load %struct.video_shader*, %struct.video_shader** %6, align 8
  %91 = load i32, i32* %9, align 4
  %92 = call i32 @video_shader_write_preset(i8* %89, %struct.video_shader* %90, i32 %91)
  store i32 %92, i32* %10, align 4
  %93 = load i32, i32* %10, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %88
  %96 = load i8*, i8** %12, align 8
  %97 = call i32 @RARCH_LOG(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i8* %96)
  br label %101

98:                                               ; preds = %88
  %99 = load i8*, i8** %12, align 8
  %100 = call i32 (i8*, ...) @RARCH_ERR(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0), i8* %99)
  br label %101

101:                                              ; preds = %98, %95
  br label %171

102:                                              ; preds = %85
  %103 = bitcast [3 x i8*]* %19 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %103, i8 0, i64 24, i1 false)
  %104 = call %struct.TYPE_5__* (...) @config_get_ptr()
  store %struct.TYPE_5__* %104, %struct.TYPE_5__** %20, align 8
  %105 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %106 = zext i32 %105 to i64
  %107 = call i8* @llvm.stacksave()
  store i8* %107, i8** %21, align 8
  %108 = alloca i8, i64 %106, align 16
  store i64 %106, i64* %22, align 8
  %109 = getelementptr inbounds i8, i8* %108, i64 0
  store i8 0, i8* %109, align 16
  %110 = load i32, i32* @RARCH_PATH_CONFIG, align 4
  %111 = call i32 @path_is_empty(i32 %110)
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %118, label %113

113:                                              ; preds = %102
  %114 = load i32, i32* @RARCH_PATH_CONFIG, align 4
  %115 = call i32 @path_get(i32 %114)
  %116 = trunc i64 %106 to i32
  %117 = call i32 @fill_pathname_basedir(i8* %108, i32 %115, i32 %116)
  br label %118

118:                                              ; preds = %113, %102
  %119 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 0
  %122 = load i8*, i8** %121, align 8
  %123 = getelementptr inbounds [3 x i8*], [3 x i8*]* %19, i64 0, i64 0
  store i8* %122, i8** %123, align 16
  %124 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 1
  %127 = load i8*, i8** %126, align 8
  %128 = getelementptr inbounds [3 x i8*], [3 x i8*]* %19, i64 0, i64 1
  store i8* %127, i8** %128, align 8
  %129 = getelementptr inbounds [3 x i8*], [3 x i8*]* %19, i64 0, i64 2
  store i8* %108, i8** %129, align 16
  store i64 0, i64* %13, align 8
  br label %130

130:                                              ; preds = %161, %118
  %131 = load i64, i64* %13, align 8
  %132 = getelementptr inbounds [3 x i8*], [3 x i8*]* %19, i64 0, i64 0
  %133 = call i64 @ARRAY_SIZE(i8** %132)
  %134 = icmp ult i64 %131, %133
  br i1 %134, label %135, label %164

135:                                              ; preds = %130
  %136 = load i64, i64* %13, align 8
  %137 = getelementptr inbounds [3 x i8*], [3 x i8*]* %19, i64 0, i64 %136
  %138 = load i8*, i8** %137, align 8
  %139 = call i64 @string_is_empty(i8* %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %135
  br label %161

142:                                              ; preds = %135
  %143 = load i64, i64* %13, align 8
  %144 = getelementptr inbounds [3 x i8*], [3 x i8*]* %19, i64 0, i64 %143
  %145 = load i8*, i8** %144, align 8
  %146 = trunc i64 %29 to i32
  %147 = call i32 @fill_pathname_join(i8* %30, i8* %145, i8* %27, i32 %146)
  store i8* %30, i8** %12, align 8
  %148 = load i8*, i8** %12, align 8
  %149 = load %struct.video_shader*, %struct.video_shader** %6, align 8
  %150 = load i32, i32* %9, align 4
  %151 = call i32 @video_shader_write_preset(i8* %148, %struct.video_shader* %149, i32 %150)
  store i32 %151, i32* %10, align 4
  %152 = load i32, i32* %10, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %157

154:                                              ; preds = %142
  %155 = load i8*, i8** %12, align 8
  %156 = call i32 @RARCH_LOG(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i8* %155)
  br label %164

157:                                              ; preds = %142
  %158 = load i8*, i8** %12, align 8
  %159 = call i32 @RARCH_WARN(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0), i8* %158)
  br label %160

160:                                              ; preds = %157
  br label %161

161:                                              ; preds = %160, %141
  %162 = load i64, i64* %13, align 8
  %163 = add i64 %162, 1
  store i64 %163, i64* %13, align 8
  br label %130

164:                                              ; preds = %154, %130
  %165 = load i32, i32* %10, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %169, label %167

167:                                              ; preds = %164
  %168 = call i32 (i8*, ...) @RARCH_ERR(i8* getelementptr inbounds ([97 x i8], [97 x i8]* @.str.6, i64 0, i64 0))
  br label %169

169:                                              ; preds = %167, %164
  %170 = load i8*, i8** %21, align 8
  call void @llvm.stackrestore(i8* %170)
  br label %171

171:                                              ; preds = %169, %101
  %172 = load i32, i32* %10, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %181

174:                                              ; preds = %171
  %175 = load i32, i32* %8, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %181

177:                                              ; preds = %174
  %178 = load i32, i32* %11, align 4
  %179 = load i8*, i8** %12, align 8
  %180 = call i32 @menu_shader_manager_set_preset(i32* null, i32 %178, i8* %179, i32 1)
  br label %181

181:                                              ; preds = %177, %174, %171
  %182 = load i32, i32* %10, align 4
  store i32 %182, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %183

183:                                              ; preds = %181, %47, %40
  %184 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %184)
  %185 = load i32, i32* %5, align 4
  ret i32 %185
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @menu_shader_manager_get_type(%struct.video_shader*) #2

declare dso_local i64 @string_is_empty(i8*) #2

declare dso_local i32 @strlcpy(i8*, i8*, i32) #2

declare dso_local i32 @strstr(i8*, i8*) #2

declare dso_local i8* @video_shader_get_preset_extension(i32) #2

declare dso_local i32 @strlcat(i8*, i8*, i32) #2

declare dso_local i64 @path_is_absolute(i8*) #2

declare dso_local i32 @video_shader_write_preset(i8*, %struct.video_shader*, i32) #2

declare dso_local i32 @RARCH_LOG(i8*, i8*) #2

declare dso_local i32 @RARCH_ERR(i8*, ...) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

declare dso_local %struct.TYPE_5__* @config_get_ptr(...) #2

declare dso_local i32 @path_is_empty(i32) #2

declare dso_local i32 @fill_pathname_basedir(i8*, i32, i32) #2

declare dso_local i32 @path_get(i32) #2

declare dso_local i64 @ARRAY_SIZE(i8**) #2

declare dso_local i32 @fill_pathname_join(i8*, i8*, i8*, i32) #2

declare dso_local i32 @RARCH_WARN(i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

declare dso_local i32 @menu_shader_manager_set_preset(i32*, i32, i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
