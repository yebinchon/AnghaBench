; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/drivers/extr_stripes.c_stripes_context_reset_horizontal_list.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/drivers/extr_stripes.c_stripes_context_reset_horizontal_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { float, float, i32, i32, i32, i32, i64 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.texture_image = type { i32*, i32, i64, i64 }

@MENU_LIST_HORIZONTAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c".lpl\00", align 1
@PATH_MAX_LENGTH = common dso_local global i32 0, align 4
@APPLICATION_SPECIAL_DIRECTORY_ASSETS_XMB_ICONS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c".png\00", align 1
@TEXTURE_FILTER_MIPMAP_LINEAR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"content.png\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*)* @stripes_context_reset_horizontal_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stripes_context_reset_horizontal_list(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca %struct.texture_image, align 8
  %9 = alloca [256 x i8], align 16
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %2, align 8
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %14 = load i32, i32* @MENU_LIST_HORIZONTAL, align 4
  %15 = call i64 @stripes_list_get_size(%struct.TYPE_11__* %13, i32 %14)
  store i64 %15, i64* %5, align 8
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 1
  %18 = load float, float* %17, align 4
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 6
  %21 = load i64, i64* %20, align 8
  %22 = sitofp i64 %21 to float
  %23 = fneg float %22
  %24 = fmul float %18, %23
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 0
  store float %24, float* %26, align 8
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = icmp sgt i32 %29, 1
  %31 = zext i1 %30 to i64
  %32 = select i1 %30, i32 2, i32 1
  store i32 %32, i32* %4, align 4
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* %4, align 4
  %37 = mul nsw i32 %36, 2
  %38 = sub nsw i32 %37, 2
  %39 = sub nsw i32 0, %38
  %40 = mul nsw i32 %35, %39
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 3
  store i32 %40, i32* %42, align 4
  store i32 0, i32* %3, align 4
  br label %43

43:                                               ; preds = %181, %1
  %44 = load i32, i32* %3, align 4
  %45 = zext i32 %44 to i64
  %46 = load i64, i64* %5, align 8
  %47 = icmp ult i64 %45, %46
  br i1 %47, label %48, label %184

48:                                               ; preds = %43
  store i8* null, i8** %6, align 8
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %50 = load i32, i32* %3, align 4
  %51 = call %struct.TYPE_10__* @stripes_get_userdata_from_horizontal_list(%struct.TYPE_11__* %49, i32 %50)
  store %struct.TYPE_10__* %51, %struct.TYPE_10__** %7, align 8
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %53 = icmp ne %struct.TYPE_10__* %52, null
  br i1 %53, label %62, label %54

54:                                               ; preds = %48
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %56 = load i32, i32* %3, align 4
  %57 = call %struct.TYPE_10__* @stripes_node_allocate_userdata(%struct.TYPE_11__* %55, i32 %56)
  store %struct.TYPE_10__* %57, %struct.TYPE_10__** %7, align 8
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %59 = icmp ne %struct.TYPE_10__* %58, null
  br i1 %59, label %61, label %60

60:                                               ; preds = %54
  br label %181

61:                                               ; preds = %54
  br label %62

62:                                               ; preds = %61, %48
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 5
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %3, align 4
  %67 = call i32 @file_list_get_at_offset(i32 %65, i32 %66, i8** %6, i32* null, i32* null, i32* null)
  %68 = load i8*, i8** %6, align 8
  %69 = icmp ne i8* %68, null
  br i1 %69, label %71, label %70

70:                                               ; preds = %62
  br label %181

71:                                               ; preds = %62
  %72 = load i8*, i8** %6, align 8
  %73 = call i32 @strstr(i8* %72, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %76, label %75

75:                                               ; preds = %71
  br label %181

76:                                               ; preds = %71
  %77 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %78 = sext i32 %77 to i64
  %79 = mul i64 %78, 1
  %80 = trunc i64 %79 to i32
  %81 = call i64 @malloc(i32 %80)
  %82 = inttoptr i64 %81 to i8*
  store i8* %82, i8** %10, align 8
  %83 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %84 = sext i32 %83 to i64
  %85 = mul i64 %84, 1
  %86 = trunc i64 %85 to i32
  %87 = call i64 @malloc(i32 %86)
  %88 = inttoptr i64 %87 to i8*
  store i8* %88, i8** %11, align 8
  %89 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %90 = sext i32 %89 to i64
  %91 = mul i64 %90, 1
  %92 = trunc i64 %91 to i32
  %93 = call i64 @malloc(i32 %92)
  %94 = inttoptr i64 %93 to i8*
  store i8* %94, i8** %12, align 8
  %95 = load i8*, i8** %12, align 8
  %96 = getelementptr inbounds i8, i8* %95, i64 0
  store i8 0, i8* %96, align 1
  %97 = load i8*, i8** %11, align 8
  %98 = getelementptr inbounds i8, i8* %97, i64 0
  store i8 0, i8* %98, align 1
  %99 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  store i8 0, i8* %99, align 16
  %100 = load i8*, i8** %10, align 8
  %101 = getelementptr inbounds i8, i8* %100, i64 0
  store i8 0, i8* %101, align 1
  %102 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %103 = load i8*, i8** %6, align 8
  %104 = call i32 @fill_pathname_base_noext(i8* %102, i8* %103, i32 256)
  %105 = load i8*, i8** %10, align 8
  %106 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %107 = sext i32 %106 to i64
  %108 = mul i64 %107, 1
  %109 = trunc i64 %108 to i32
  %110 = load i32, i32* @APPLICATION_SPECIAL_DIRECTORY_ASSETS_XMB_ICONS, align 4
  %111 = call i32 @fill_pathname_application_special(i8* %105, i32 %109, i32 %110)
  %112 = load i8*, i8** %11, align 8
  %113 = load i8*, i8** %10, align 8
  %114 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %115 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %116 = sext i32 %115 to i64
  %117 = mul i64 %116, 1
  %118 = trunc i64 %117 to i32
  %119 = call i32 @fill_pathname_join_concat(i8* %112, i8* %113, i8* %114, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %118)
  %120 = getelementptr inbounds %struct.texture_image, %struct.texture_image* %8, i32 0, i32 3
  store i64 0, i64* %120, align 8
  %121 = getelementptr inbounds %struct.texture_image, %struct.texture_image* %8, i32 0, i32 2
  store i64 0, i64* %121, align 8
  %122 = getelementptr inbounds %struct.texture_image, %struct.texture_image* %8, i32 0, i32 0
  store i32* null, i32** %122, align 8
  %123 = call i32 (...) @video_driver_supports_rgba()
  %124 = getelementptr inbounds %struct.texture_image, %struct.texture_image* %8, i32 0, i32 1
  store i32 %123, i32* %124, align 8
  %125 = load i8*, i8** %11, align 8
  %126 = call i64 @image_texture_load(%struct.texture_image* %8, i8* %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %142

128:                                              ; preds = %76
  %129 = getelementptr inbounds %struct.texture_image, %struct.texture_image* %8, i32 0, i32 0
  %130 = load i32*, i32** %129, align 8
  %131 = icmp ne i32* %130, null
  br i1 %131, label %132, label %140

132:                                              ; preds = %128
  %133 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %133, i32 0, i32 1
  %135 = call i32 @video_driver_texture_unload(i32* %134)
  %136 = load i32, i32* @TEXTURE_FILTER_MIPMAP_LINEAR, align 4
  %137 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %138 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %137, i32 0, i32 1
  %139 = call i32 @video_driver_texture_load(%struct.texture_image* %8, i32 %136, i32* %138)
  br label %140

140:                                              ; preds = %132, %128
  %141 = call i32 @image_texture_free(%struct.texture_image* %8)
  br label %142

142:                                              ; preds = %140, %76
  %143 = load i8*, i8** %10, align 8
  %144 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %145 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %146 = sext i32 %145 to i64
  %147 = mul i64 %146, 1
  %148 = trunc i64 %147 to i32
  %149 = call i32 @strlcat(i8* %143, i8* %144, i32 %148)
  %150 = load i8*, i8** %12, align 8
  %151 = load i8*, i8** %10, align 8
  %152 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %153 = sext i32 %152 to i64
  %154 = mul i64 %153, 1
  %155 = trunc i64 %154 to i32
  %156 = call i32 @fill_pathname_join_delim(i8* %150, i8* %151, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8 signext 45, i32 %155)
  %157 = load i8*, i8** %12, align 8
  %158 = call i64 @image_texture_load(%struct.texture_image* %8, i8* %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %174

160:                                              ; preds = %142
  %161 = getelementptr inbounds %struct.texture_image, %struct.texture_image* %8, i32 0, i32 0
  %162 = load i32*, i32** %161, align 8
  %163 = icmp ne i32* %162, null
  br i1 %163, label %164, label %172

164:                                              ; preds = %160
  %165 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %166 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %165, i32 0, i32 0
  %167 = call i32 @video_driver_texture_unload(i32* %166)
  %168 = load i32, i32* @TEXTURE_FILTER_MIPMAP_LINEAR, align 4
  %169 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %170 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %169, i32 0, i32 0
  %171 = call i32 @video_driver_texture_load(%struct.texture_image* %8, i32 %168, i32* %170)
  br label %172

172:                                              ; preds = %164, %160
  %173 = call i32 @image_texture_free(%struct.texture_image* %8)
  br label %174

174:                                              ; preds = %172, %142
  %175 = load i8*, i8** %10, align 8
  %176 = call i32 @free(i8* %175)
  %177 = load i8*, i8** %11, align 8
  %178 = call i32 @free(i8* %177)
  %179 = load i8*, i8** %12, align 8
  %180 = call i32 @free(i8* %179)
  br label %181

181:                                              ; preds = %174, %75, %70, %60
  %182 = load i32, i32* %3, align 4
  %183 = add i32 %182, 1
  store i32 %183, i32* %3, align 4
  br label %43

184:                                              ; preds = %43
  %185 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %186 = call i32 @stripes_toggle_horizontal_list(%struct.TYPE_11__* %185)
  ret void
}

declare dso_local i64 @stripes_list_get_size(%struct.TYPE_11__*, i32) #1

declare dso_local %struct.TYPE_10__* @stripes_get_userdata_from_horizontal_list(%struct.TYPE_11__*, i32) #1

declare dso_local %struct.TYPE_10__* @stripes_node_allocate_userdata(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @file_list_get_at_offset(i32, i32, i8**, i32*, i32*, i32*) #1

declare dso_local i32 @strstr(i8*, i8*) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @fill_pathname_base_noext(i8*, i8*, i32) #1

declare dso_local i32 @fill_pathname_application_special(i8*, i32, i32) #1

declare dso_local i32 @fill_pathname_join_concat(i8*, i8*, i8*, i8*, i32) #1

declare dso_local i32 @video_driver_supports_rgba(...) #1

declare dso_local i64 @image_texture_load(%struct.texture_image*, i8*) #1

declare dso_local i32 @video_driver_texture_unload(i32*) #1

declare dso_local i32 @video_driver_texture_load(%struct.texture_image*, i32, i32*) #1

declare dso_local i32 @image_texture_free(%struct.texture_image*) #1

declare dso_local i32 @strlcat(i8*, i8*, i32) #1

declare dso_local i32 @fill_pathname_join_delim(i8*, i8*, i8*, i8 signext, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @stripes_toggle_horizontal_list(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
