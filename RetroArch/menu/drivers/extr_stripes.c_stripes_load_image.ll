; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/drivers/extr_stripes.c_stripes_load_image.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/drivers/extr_stripes.c_stripes_load_image.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { float, float, float, float, float, float, i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.texture_image = type { i64, i64 }

@TEXTURE_FILTER_MIPMAP_LINEAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32)* @stripes_load_image to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stripes_load_image(i8* %0, i8* %1, i32 %2) #0 {
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
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i8*, i8** %6, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %16, %3
  store i32 0, i32* %4, align 4
  br label %116

20:                                               ; preds = %16
  %21 = load i32, i32* %7, align 4
  switch i32 %21, label %115 [
    i32 131, label %22
    i32 128, label %23
    i32 129, label %37
    i32 132, label %63
    i32 130, label %89
  ]

22:                                               ; preds = %20
  br label %115

23:                                               ; preds = %20
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %25 = call i32 @stripes_context_bg_destroy(%struct.TYPE_5__* %24)
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 9
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = call i32 @video_driver_texture_unload(i32* %28)
  %30 = load i8*, i8** %6, align 8
  %31 = load i32, i32* @TEXTURE_FILTER_MIPMAP_LINEAR, align 4
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 9
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = call i32 @video_driver_texture_load(i8* %30, i32 %31, i32* %34)
  %36 = call i32 (...) @menu_display_allocate_white_texture()
  br label %115

37:                                               ; preds = %20
  %38 = load i8*, i8** %6, align 8
  %39 = bitcast i8* %38 to %struct.texture_image*
  store %struct.texture_image* %39, %struct.texture_image** %9, align 8
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 1
  %42 = load float, float* %41, align 4
  %43 = load %struct.texture_image*, %struct.texture_image** %9, align 8
  %44 = getelementptr inbounds %struct.texture_image, %struct.texture_image* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = sitofp i64 %45 to float
  %47 = fmul float %42, %46
  %48 = load %struct.texture_image*, %struct.texture_image** %9, align 8
  %49 = getelementptr inbounds %struct.texture_image, %struct.texture_image* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = sitofp i64 %50 to float
  %52 = fdiv float %47, %51
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  store float %52, float* %54, align 4
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 8
  %57 = call i32 @video_driver_texture_unload(i32* %56)
  %58 = load i8*, i8** %6, align 8
  %59 = load i32, i32* @TEXTURE_FILTER_MIPMAP_LINEAR, align 4
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 8
  %62 = call i32 @video_driver_texture_load(i8* %58, i32 %59, i32* %61)
  br label %115

63:                                               ; preds = %20
  %64 = load i8*, i8** %6, align 8
  %65 = bitcast i8* %64 to %struct.texture_image*
  store %struct.texture_image* %65, %struct.texture_image** %10, align 8
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 3
  %68 = load float, float* %67, align 4
  %69 = load %struct.texture_image*, %struct.texture_image** %10, align 8
  %70 = getelementptr inbounds %struct.texture_image, %struct.texture_image* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = sitofp i64 %71 to float
  %73 = fmul float %68, %72
  %74 = load %struct.texture_image*, %struct.texture_image** %10, align 8
  %75 = getelementptr inbounds %struct.texture_image, %struct.texture_image* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = sitofp i64 %76 to float
  %78 = fdiv float %73, %77
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 2
  store float %78, float* %80, align 4
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 7
  %83 = call i32 @video_driver_texture_unload(i32* %82)
  %84 = load i8*, i8** %6, align 8
  %85 = load i32, i32* @TEXTURE_FILTER_MIPMAP_LINEAR, align 4
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 7
  %88 = call i32 @video_driver_texture_load(i8* %84, i32 %85, i32* %87)
  br label %115

89:                                               ; preds = %20
  %90 = load i8*, i8** %6, align 8
  %91 = bitcast i8* %90 to %struct.texture_image*
  store %struct.texture_image* %91, %struct.texture_image** %11, align 8
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 5
  %94 = load float, float* %93, align 4
  %95 = load %struct.texture_image*, %struct.texture_image** %11, align 8
  %96 = getelementptr inbounds %struct.texture_image, %struct.texture_image* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = sitofp i64 %97 to float
  %99 = fmul float %94, %98
  %100 = load %struct.texture_image*, %struct.texture_image** %11, align 8
  %101 = getelementptr inbounds %struct.texture_image, %struct.texture_image* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = sitofp i64 %102 to float
  %104 = fdiv float %99, %103
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 4
  store float %104, float* %106, align 4
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 6
  %109 = call i32 @video_driver_texture_unload(i32* %108)
  %110 = load i8*, i8** %6, align 8
  %111 = load i32, i32* @TEXTURE_FILTER_MIPMAP_LINEAR, align 4
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 6
  %114 = call i32 @video_driver_texture_load(i8* %110, i32 %111, i32* %113)
  br label %115

115:                                              ; preds = %20, %89, %63, %37, %23, %22
  store i32 1, i32* %4, align 4
  br label %116

116:                                              ; preds = %115, %19
  %117 = load i32, i32* %4, align 4
  ret i32 %117
}

declare dso_local i32 @stripes_context_bg_destroy(%struct.TYPE_5__*) #1

declare dso_local i32 @video_driver_texture_unload(i32*) #1

declare dso_local i32 @video_driver_texture_load(i8*, i32, i32*) #1

declare dso_local i32 @menu_display_allocate_white_texture(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
