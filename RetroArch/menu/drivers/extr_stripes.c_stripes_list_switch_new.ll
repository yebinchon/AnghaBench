; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/drivers/extr_stripes.c_stripes_list_switch_new.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/drivers/extr_stripes.c_stripes_list_switch_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i8*, float, i32, float, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_12__ = type { i32, float, float }

@PATH_MAX_LENGTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c".png\00", align 1
@APPLICATION_SPECIAL_DIRECTORY_ASSETS_XMB_BG = common dso_local global i32 0, align 4
@menu_display_handle_wallpaper_upload = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_13__*, i32*, i32, i64)* @stripes_list_switch_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stripes_list_switch_new(%struct.TYPE_13__* %0, i32* %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_14__*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca %struct.TYPE_12__*, align 8
  %19 = alloca float, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  store i64 0, i64* %13, align 8
  %20 = call %struct.TYPE_14__* (...) @config_get_ptr()
  store %struct.TYPE_14__* %20, %struct.TYPE_14__** %14, align 8
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %102

26:                                               ; preds = %4
  %27 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %28 = sext i32 %27 to i64
  %29 = mul i64 %28, 1
  store i64 %29, i64* %15, align 8
  %30 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %31 = sext i32 %30 to i64
  %32 = mul i64 %31, 1
  %33 = trunc i64 %32 to i32
  %34 = call i64 @malloc(i32 %33)
  %35 = inttoptr i64 %34 to i8*
  store i8* %35, i8** %16, align 8
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 4
  %39 = call i8* @string_replace_substring(i32 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i8* %39, i8** %17, align 8
  %40 = load i8*, i8** %16, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 0
  store i8 0, i8* %41, align 1
  %42 = load i8*, i8** %17, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %55

44:                                               ; preds = %26
  %45 = load i8*, i8** %16, align 8
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i8*, i8** %17, align 8
  %51 = load i64, i64* %15, align 8
  %52 = call i32 @fill_pathname_join_noext(i8* %45, i32 %49, i8* %50, i64 %51)
  %53 = load i8*, i8** %17, align 8
  %54 = call i32 @free(i8* %53)
  br label %55

55:                                               ; preds = %44, %26
  %56 = load i8*, i8** %16, align 8
  %57 = load i64, i64* %15, align 8
  %58 = call i32 @strlcat(i8* %56, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i64 %57)
  %59 = load i8*, i8** %16, align 8
  %60 = call i64 @path_is_valid(i8* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %67, label %62

62:                                               ; preds = %55
  %63 = load i8*, i8** %16, align 8
  %64 = load i64, i64* %15, align 8
  %65 = load i32, i32* @APPLICATION_SPECIAL_DIRECTORY_ASSETS_XMB_BG, align 4
  %66 = call i32 @fill_pathname_application_special(i8* %63, i64 %64, i32 %65)
  br label %67

67:                                               ; preds = %62, %55
  %68 = load i8*, i8** %16, align 8
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 0
  %71 = load i8*, i8** %70, align 8
  %72 = call i32 @string_is_equal(i8* %68, i8* %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %99, label %74

74:                                               ; preds = %67
  %75 = load i8*, i8** %16, align 8
  %76 = call i64 @path_is_valid(i8* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %98

78:                                               ; preds = %74
  %79 = load i8*, i8** %16, align 8
  %80 = call i32 (...) @video_driver_supports_rgba()
  %81 = load i32, i32* @menu_display_handle_wallpaper_upload, align 4
  %82 = call i32 @task_push_image_load(i8* %79, i32 %80, i32 0, i32 %81, i32* null)
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %83, i32 0, i32 0
  %85 = load i8*, i8** %84, align 8
  %86 = call i32 @string_is_empty(i8* %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %93, label %88

88:                                               ; preds = %78
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i32 0, i32 0
  %91 = load i8*, i8** %90, align 8
  %92 = call i32 @free(i8* %91)
  br label %93

93:                                               ; preds = %88, %78
  %94 = load i8*, i8** %16, align 8
  %95 = call i8* @strdup(i8* %94)
  %96 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i32 0, i32 0
  store i8* %95, i8** %97, align 8
  br label %98

98:                                               ; preds = %93, %74
  br label %99

99:                                               ; preds = %98, %67
  %100 = load i8*, i8** %16, align 8
  %101 = call i32 @free(i8* %100)
  br label %102

102:                                              ; preds = %99, %4
  %103 = load i32*, i32** %6, align 8
  %104 = call i64 @file_list_get_size(i32* %103)
  store i64 %104, i64* %13, align 8
  store i32 0, i32* %10, align 4
  %105 = load i64, i64* %13, align 8
  %106 = icmp ugt i64 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %102
  %108 = load i64, i64* %13, align 8
  %109 = sub i64 %108, 1
  br label %111

110:                                              ; preds = %102
  br label %111

111:                                              ; preds = %110, %107
  %112 = phi i64 [ %109, %107 ], [ 0, %110 ]
  %113 = trunc i64 %112 to i32
  store i32 %113, i32* %11, align 4
  %114 = call i32 @video_driver_get_size(i32* null, i32* %12)
  %115 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %116 = load i32, i32* %12, align 4
  %117 = load i64, i64* %13, align 8
  %118 = load i64, i64* %8, align 8
  %119 = call i32 @stripes_calculate_visible_range(%struct.TYPE_13__* %115, i32 %116, i64 %117, i64 %118, i32* %10, i32* %11)
  store i32 0, i32* %9, align 4
  br label %120

120:                                              ; preds = %179, %111
  %121 = load i32, i32* %9, align 4
  %122 = zext i32 %121 to i64
  %123 = load i64, i64* %13, align 8
  %124 = icmp ult i64 %122, %123
  br i1 %124, label %125, label %182

125:                                              ; preds = %120
  %126 = load i32*, i32** %6, align 8
  %127 = load i32, i32* %9, align 4
  %128 = call i64 @file_list_get_userdata_at_offset(i32* %126, i32 %127)
  %129 = inttoptr i64 %128 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %129, %struct.TYPE_12__** %18, align 8
  %130 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %130, i32 0, i32 1
  %132 = load float, float* %131, align 8
  store float %132, float* %19, align 4
  %133 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %134 = icmp ne %struct.TYPE_12__* %133, null
  br i1 %134, label %136, label %135

135:                                              ; preds = %125
  br label %179

136:                                              ; preds = %125
  %137 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* %7, align 4
  %141 = mul nsw i32 %139, %140
  %142 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %143 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %142, i32 0, i32 0
  store i32 %141, i32* %143, align 4
  %144 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %145 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %144, i32 0, i32 1
  store float 0.000000e+00, float* %145, align 4
  %146 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %147 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %146, i32 0, i32 2
  store float 0.000000e+00, float* %147, align 4
  %148 = load i32, i32* %9, align 4
  %149 = zext i32 %148 to i64
  %150 = load i64, i64* %8, align 8
  %151 = icmp eq i64 %149, %150
  br i1 %151, label %152, label %156

152:                                              ; preds = %136
  %153 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %154 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %153, i32 0, i32 3
  %155 = load float, float* %154, align 8
  store float %155, float* %19, align 4
  br label %156

156:                                              ; preds = %152, %136
  %157 = load i32, i32* %9, align 4
  %158 = load i32, i32* %10, align 4
  %159 = icmp uge i32 %157, %158
  br i1 %159, label %160, label %170

160:                                              ; preds = %156
  %161 = load i32, i32* %9, align 4
  %162 = load i32, i32* %11, align 4
  %163 = icmp ule i32 %161, %162
  br i1 %163, label %164, label %170

164:                                              ; preds = %160
  %165 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %166 = load i32*, i32** %6, align 8
  %167 = ptrtoint i32* %166 to i64
  %168 = load float, float* %19, align 4
  %169 = call i32 @stripes_push_animations(%struct.TYPE_12__* %165, i64 %167, float %168, i32 0)
  br label %178

170:                                              ; preds = %160, %156
  %171 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %172 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %171, i32 0, i32 0
  store i32 0, i32* %172, align 4
  %173 = load float, float* %19, align 4
  %174 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %175 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %174, i32 0, i32 2
  store float %173, float* %175, align 4
  %176 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %177 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %176, i32 0, i32 1
  store float %173, float* %177, align 4
  br label %178

178:                                              ; preds = %170, %164
  br label %179

179:                                              ; preds = %178, %135
  %180 = load i32, i32* %9, align 4
  %181 = add i32 %180, 1
  store i32 %181, i32* %9, align 4
  br label %120

182:                                              ; preds = %120
  ret void
}

declare dso_local %struct.TYPE_14__* @config_get_ptr(...) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i8* @string_replace_substring(i32, i8*, i8*) #1

declare dso_local i32 @fill_pathname_join_noext(i8*, i32, i8*, i64) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @strlcat(i8*, i8*, i64) #1

declare dso_local i64 @path_is_valid(i8*) #1

declare dso_local i32 @fill_pathname_application_special(i8*, i64, i32) #1

declare dso_local i32 @string_is_equal(i8*, i8*) #1

declare dso_local i32 @task_push_image_load(i8*, i32, i32, i32, i32*) #1

declare dso_local i32 @video_driver_supports_rgba(...) #1

declare dso_local i32 @string_is_empty(i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i64 @file_list_get_size(i32*) #1

declare dso_local i32 @video_driver_get_size(i32*, i32*) #1

declare dso_local i32 @stripes_calculate_visible_range(%struct.TYPE_13__*, i32, i64, i64, i32*, i32*) #1

declare dso_local i64 @file_list_get_userdata_at_offset(i32*, i32) #1

declare dso_local i32 @stripes_push_animations(%struct.TYPE_12__*, i64, float, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
