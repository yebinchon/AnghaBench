; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/extr_menu_thumbnail.c_menu_thumbnail_handle_upload.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/extr_menu_thumbnail.c_menu_thumbnail_handle_upload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.texture_image = type { i64, i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, i32, i32, float, i64 }
%struct.TYPE_4__ = type { i64, float, float*, i32*, i32*, i32, i32 }

@menu_thumbnail_list_id = common dso_local global i64 0, align 8
@MENU_THUMBNAIL_STATUS_PENDING = common dso_local global i64 0, align 8
@MENU_THUMBNAIL_STATUS_MISSING = common dso_local global i64 0, align 8
@TEXTURE_FILTER_MIPMAP_LINEAR = common dso_local global i32 0, align 4
@MENU_THUMBNAIL_STATUS_AVAILABLE = common dso_local global i64 0, align 8
@EASING_OUT_QUAD = common dso_local global i32 0, align 4
@menu_thumbnail_fade_duration = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*, i8*, i8*)* @menu_thumbnail_handle_upload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @menu_thumbnail_handle_upload(i32* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.texture_image*, align 8
  %10 = alloca %struct.texture_image*, align 8
  %11 = alloca %struct.TYPE_4__, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.texture_image*
  store %struct.texture_image* %13, %struct.texture_image** %9, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = bitcast i8* %14 to %struct.texture_image*
  store %struct.texture_image* %15, %struct.texture_image** %10, align 8
  %16 = load %struct.texture_image*, %struct.texture_image** %10, align 8
  %17 = icmp ne %struct.texture_image* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %4
  br label %120

19:                                               ; preds = %4
  %20 = load %struct.texture_image*, %struct.texture_image** %10, align 8
  %21 = getelementptr inbounds %struct.texture_image, %struct.texture_image* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @menu_thumbnail_list_id, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  br label %120

26:                                               ; preds = %19
  %27 = load %struct.texture_image*, %struct.texture_image** %10, align 8
  %28 = getelementptr inbounds %struct.texture_image, %struct.texture_image* %27, i32 0, i32 3
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @MENU_THUMBNAIL_STATUS_PENDING, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %26
  br label %120

35:                                               ; preds = %26
  %36 = load %struct.texture_image*, %struct.texture_image** %10, align 8
  %37 = getelementptr inbounds %struct.texture_image, %struct.texture_image* %36, i32 0, i32 3
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 4
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %35
  %43 = load %struct.texture_image*, %struct.texture_image** %10, align 8
  %44 = getelementptr inbounds %struct.texture_image, %struct.texture_image* %43, i32 0, i32 3
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = call i32 @menu_thumbnail_reset(%struct.TYPE_5__* %45)
  br label %47

47:                                               ; preds = %42, %35
  %48 = load i64, i64* @MENU_THUMBNAIL_STATUS_MISSING, align 8
  %49 = load %struct.texture_image*, %struct.texture_image** %10, align 8
  %50 = getelementptr inbounds %struct.texture_image, %struct.texture_image* %49, i32 0, i32 3
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  store i64 %48, i64* %52, align 8
  %53 = load %struct.texture_image*, %struct.texture_image** %9, align 8
  %54 = icmp ne %struct.texture_image* %53, null
  br i1 %54, label %56, label %55

55:                                               ; preds = %47
  br label %120

56:                                               ; preds = %47
  %57 = load %struct.texture_image*, %struct.texture_image** %9, align 8
  %58 = getelementptr inbounds %struct.texture_image, %struct.texture_image* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = icmp slt i32 %59, 1
  br i1 %60, label %66, label %61

61:                                               ; preds = %56
  %62 = load %struct.texture_image*, %struct.texture_image** %9, align 8
  %63 = getelementptr inbounds %struct.texture_image, %struct.texture_image* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = icmp slt i32 %64, 1
  br i1 %65, label %66, label %67

66:                                               ; preds = %61, %56
  br label %120

67:                                               ; preds = %61
  %68 = load %struct.texture_image*, %struct.texture_image** %9, align 8
  %69 = load i32, i32* @TEXTURE_FILTER_MIPMAP_LINEAR, align 4
  %70 = load %struct.texture_image*, %struct.texture_image** %10, align 8
  %71 = getelementptr inbounds %struct.texture_image, %struct.texture_image* %70, i32 0, i32 3
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 4
  %74 = call i32 @video_driver_texture_load(%struct.texture_image* %68, i32 %69, i64* %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %67
  br label %120

77:                                               ; preds = %67
  %78 = load %struct.texture_image*, %struct.texture_image** %9, align 8
  %79 = getelementptr inbounds %struct.texture_image, %struct.texture_image* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.texture_image*, %struct.texture_image** %10, align 8
  %82 = getelementptr inbounds %struct.texture_image, %struct.texture_image* %81, i32 0, i32 3
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 1
  store i32 %80, i32* %84, align 8
  %85 = load %struct.texture_image*, %struct.texture_image** %9, align 8
  %86 = getelementptr inbounds %struct.texture_image, %struct.texture_image* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.texture_image*, %struct.texture_image** %10, align 8
  %89 = getelementptr inbounds %struct.texture_image, %struct.texture_image* %88, i32 0, i32 3
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 2
  store i32 %87, i32* %91, align 4
  %92 = load i64, i64* @MENU_THUMBNAIL_STATUS_AVAILABLE, align 8
  %93 = load %struct.texture_image*, %struct.texture_image** %10, align 8
  %94 = getelementptr inbounds %struct.texture_image, %struct.texture_image* %93, i32 0, i32 3
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 0
  store i64 %92, i64* %96, align 8
  %97 = load %struct.texture_image*, %struct.texture_image** %10, align 8
  %98 = getelementptr inbounds %struct.texture_image, %struct.texture_image* %97, i32 0, i32 3
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 3
  store float 0.000000e+00, float* %100, align 8
  %101 = load i32, i32* @EASING_OUT_QUAD, align 4
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 6
  store i32 %101, i32* %102, align 4
  %103 = load %struct.texture_image*, %struct.texture_image** %10, align 8
  %104 = getelementptr inbounds %struct.texture_image, %struct.texture_image* %103, i32 0, i32 3
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 3
  %107 = ptrtoint float* %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  store i64 %107, i64* %108, align 8
  %109 = load i32, i32* @menu_thumbnail_fade_duration, align 4
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 5
  store i32 %109, i32* %110, align 8
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  store float 1.000000e+00, float* %111, align 8
  %112 = load %struct.texture_image*, %struct.texture_image** %10, align 8
  %113 = getelementptr inbounds %struct.texture_image, %struct.texture_image* %112, i32 0, i32 3
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 3
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 2
  store float* %115, float** %116, align 8
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 4
  store i32* null, i32** %117, align 8
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 3
  store i32* null, i32** %118, align 8
  %119 = call i32 @menu_animation_push(%struct.TYPE_4__* %11)
  br label %120

120:                                              ; preds = %77, %76, %66, %55, %34, %25, %18
  %121 = load %struct.texture_image*, %struct.texture_image** %9, align 8
  %122 = icmp ne %struct.texture_image* %121, null
  br i1 %122, label %123, label %128

123:                                              ; preds = %120
  %124 = load %struct.texture_image*, %struct.texture_image** %9, align 8
  %125 = call i32 @image_texture_free(%struct.texture_image* %124)
  %126 = load %struct.texture_image*, %struct.texture_image** %9, align 8
  %127 = call i32 @free(%struct.texture_image* %126)
  br label %128

128:                                              ; preds = %123, %120
  %129 = load %struct.texture_image*, %struct.texture_image** %10, align 8
  %130 = icmp ne %struct.texture_image* %129, null
  br i1 %130, label %131, label %134

131:                                              ; preds = %128
  %132 = load %struct.texture_image*, %struct.texture_image** %10, align 8
  %133 = call i32 @free(%struct.texture_image* %132)
  br label %134

134:                                              ; preds = %131, %128
  ret void
}

declare dso_local i32 @menu_thumbnail_reset(%struct.TYPE_5__*) #1

declare dso_local i32 @video_driver_texture_load(%struct.texture_image*, i32, i64*) #1

declare dso_local i32 @menu_animation_push(%struct.TYPE_4__*) #1

declare dso_local i32 @image_texture_free(%struct.texture_image*) #1

declare dso_local i32 @free(%struct.texture_image*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
