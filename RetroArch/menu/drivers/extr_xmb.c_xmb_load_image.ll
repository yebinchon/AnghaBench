; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/drivers/extr_xmb.c_xmb_load_image.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/drivers/extr_xmb.c_xmb_load_image.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { float, float, float, float, float, float, i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.texture_image = type { i64, i64 }

@TEXTURE_FILTER_MIPMAP_LINEAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32)* @xmb_load_image to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xmb_load_image(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca %struct.texture_image*, align 8
  %10 = alloca %struct.texture_image*, align 8
  %11 = alloca %struct.texture_image*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %13, %struct.TYPE_5__** %8, align 8
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %15 = icmp ne %struct.TYPE_5__* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %132

17:                                               ; preds = %3
  %18 = load i8*, i8** %6, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %36, label %20

20:                                               ; preds = %17
  %21 = load i32, i32* %7, align 4
  %22 = icmp eq i32 %21, 129
  br i1 %22, label %23, label %27

23:                                               ; preds = %20
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 8
  %26 = call i32 @video_driver_texture_unload(i32* %25)
  br label %35

27:                                               ; preds = %20
  %28 = load i32, i32* %7, align 4
  %29 = icmp eq i32 %28, 132
  br i1 %29, label %30, label %34

30:                                               ; preds = %27
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 7
  %33 = call i32 @video_driver_texture_unload(i32* %32)
  br label %34

34:                                               ; preds = %30, %27
  br label %35

35:                                               ; preds = %34, %23
  store i32 0, i32* %4, align 4
  br label %132

36:                                               ; preds = %17
  %37 = load i32, i32* %7, align 4
  switch i32 %37, label %131 [
    i32 131, label %38
    i32 128, label %39
    i32 129, label %53
    i32 132, label %79
    i32 130, label %105
  ]

38:                                               ; preds = %36
  br label %131

39:                                               ; preds = %36
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %41 = call i32 @xmb_context_bg_destroy(%struct.TYPE_5__* %40)
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 9
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = call i32 @video_driver_texture_unload(i32* %44)
  %46 = load i8*, i8** %6, align 8
  %47 = load i32, i32* @TEXTURE_FILTER_MIPMAP_LINEAR, align 4
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 9
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = call i32 @video_driver_texture_load(i8* %46, i32 %47, i32* %50)
  %52 = call i32 (...) @menu_display_allocate_white_texture()
  br label %131

53:                                               ; preds = %36
  %54 = load i8*, i8** %6, align 8
  %55 = bitcast i8* %54 to %struct.texture_image*
  store %struct.texture_image* %55, %struct.texture_image** %9, align 8
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 1
  %58 = load float, float* %57, align 4
  %59 = load %struct.texture_image*, %struct.texture_image** %9, align 8
  %60 = getelementptr inbounds %struct.texture_image, %struct.texture_image* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = sitofp i64 %61 to float
  %63 = fmul float %58, %62
  %64 = load %struct.texture_image*, %struct.texture_image** %9, align 8
  %65 = getelementptr inbounds %struct.texture_image, %struct.texture_image* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = sitofp i64 %66 to float
  %68 = fdiv float %63, %67
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  store float %68, float* %70, align 4
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 8
  %73 = call i32 @video_driver_texture_unload(i32* %72)
  %74 = load i8*, i8** %6, align 8
  %75 = load i32, i32* @TEXTURE_FILTER_MIPMAP_LINEAR, align 4
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 8
  %78 = call i32 @video_driver_texture_load(i8* %74, i32 %75, i32* %77)
  br label %131

79:                                               ; preds = %36
  %80 = load i8*, i8** %6, align 8
  %81 = bitcast i8* %80 to %struct.texture_image*
  store %struct.texture_image* %81, %struct.texture_image** %10, align 8
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 3
  %84 = load float, float* %83, align 4
  %85 = load %struct.texture_image*, %struct.texture_image** %10, align 8
  %86 = getelementptr inbounds %struct.texture_image, %struct.texture_image* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = sitofp i64 %87 to float
  %89 = fmul float %84, %88
  %90 = load %struct.texture_image*, %struct.texture_image** %10, align 8
  %91 = getelementptr inbounds %struct.texture_image, %struct.texture_image* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = sitofp i64 %92 to float
  %94 = fdiv float %89, %93
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 2
  store float %94, float* %96, align 4
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 7
  %99 = call i32 @video_driver_texture_unload(i32* %98)
  %100 = load i8*, i8** %6, align 8
  %101 = load i32, i32* @TEXTURE_FILTER_MIPMAP_LINEAR, align 4
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 7
  %104 = call i32 @video_driver_texture_load(i8* %100, i32 %101, i32* %103)
  br label %131

105:                                              ; preds = %36
  %106 = load i8*, i8** %6, align 8
  %107 = bitcast i8* %106 to %struct.texture_image*
  store %struct.texture_image* %107, %struct.texture_image** %11, align 8
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 5
  %110 = load float, float* %109, align 4
  %111 = load %struct.texture_image*, %struct.texture_image** %11, align 8
  %112 = getelementptr inbounds %struct.texture_image, %struct.texture_image* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = sitofp i64 %113 to float
  %115 = fmul float %110, %114
  %116 = load %struct.texture_image*, %struct.texture_image** %11, align 8
  %117 = getelementptr inbounds %struct.texture_image, %struct.texture_image* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = sitofp i64 %118 to float
  %120 = fdiv float %115, %119
  %121 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 4
  store float %120, float* %122, align 4
  %123 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 6
  %125 = call i32 @video_driver_texture_unload(i32* %124)
  %126 = load i8*, i8** %6, align 8
  %127 = load i32, i32* @TEXTURE_FILTER_MIPMAP_LINEAR, align 4
  %128 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 6
  %130 = call i32 @video_driver_texture_load(i8* %126, i32 %127, i32* %129)
  br label %131

131:                                              ; preds = %36, %105, %79, %53, %39, %38
  store i32 1, i32* %4, align 4
  br label %132

132:                                              ; preds = %131, %35, %16
  %133 = load i32, i32* %4, align 4
  ret i32 %133
}

declare dso_local i32 @video_driver_texture_unload(i32*) #1

declare dso_local i32 @xmb_context_bg_destroy(%struct.TYPE_5__*) #1

declare dso_local i32 @video_driver_texture_load(i8*, i32, i32*) #1

declare dso_local i32 @menu_display_allocate_white_texture(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
