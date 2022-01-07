; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_d3d10.c_d3d10_gfx_load_texture.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_d3d10.c_d3d10_gfx_load_texture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i8* }
%struct.TYPE_7__ = type { i32, i32** }
%struct.texture_image = type { i32, i32, i32 }

@D3D10_RESOURCE_MISC_GENERATE_MIPS = common dso_local global i8* null, align 8
@RARCH_FILTER_LINEAR = common dso_local global i64 0, align 8
@RARCH_WRAP_EDGE = common dso_local global i64 0, align 8
@RARCH_FILTER_NEAREST = common dso_local global i64 0, align 8
@DXGI_FORMAT_B8G8R8A8_UNORM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i8*, i32, i32)* @d3d10_gfx_load_texture to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @d3d10_gfx_load_texture(i8* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca %struct.TYPE_7__*, align 8
  %12 = alloca %struct.texture_image*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %10, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = bitcast i8* %13 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %14, %struct.TYPE_7__** %11, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = bitcast i8* %15 to %struct.texture_image*
  store %struct.texture_image* %16, %struct.texture_image** %12, align 8
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %18 = icmp ne %struct.TYPE_7__* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %4
  store i64 0, i64* %5, align 8
  br label %101

20:                                               ; preds = %4
  %21 = call i64 @calloc(i32 1, i32 32)
  %22 = inttoptr i64 %21 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %22, %struct.TYPE_8__** %10, align 8
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %24 = icmp ne %struct.TYPE_8__* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %20
  store i64 0, i64* %5, align 8
  br label %101

26:                                               ; preds = %20
  %27 = load i32, i32* %9, align 4
  switch i32 %27, label %62 [
    i32 130, label %28
    i32 131, label %33
    i32 129, label %45
    i32 128, label %50
  ]

28:                                               ; preds = %26
  %29 = load i8*, i8** @D3D10_RESOURCE_MISC_GENERATE_MIPS, align 8
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 3
  store i8* %29, i8** %32, align 8
  br label %33

33:                                               ; preds = %26, %28
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 1
  %36 = load i32**, i32*** %35, align 8
  %37 = load i64, i64* @RARCH_FILTER_LINEAR, align 8
  %38 = getelementptr inbounds i32*, i32** %36, i64 %37
  %39 = load i32*, i32** %38, align 8
  %40 = load i64, i64* @RARCH_WRAP_EDGE, align 8
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 8
  br label %62

45:                                               ; preds = %26
  %46 = load i8*, i8** @D3D10_RESOURCE_MISC_GENERATE_MIPS, align 8
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 3
  store i8* %46, i8** %49, align 8
  br label %50

50:                                               ; preds = %26, %45
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 1
  %53 = load i32**, i32*** %52, align 8
  %54 = load i64, i64* @RARCH_FILTER_NEAREST, align 8
  %55 = getelementptr inbounds i32*, i32** %53, i64 %54
  %56 = load i32*, i32** %55, align 8
  %57 = load i64, i64* @RARCH_WRAP_EDGE, align 8
  %58 = getelementptr inbounds i32, i32* %56, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 8
  br label %62

62:                                               ; preds = %26, %50, %33
  %63 = load %struct.texture_image*, %struct.texture_image** %12, align 8
  %64 = getelementptr inbounds %struct.texture_image, %struct.texture_image* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 2
  store i32 %65, i32* %68, align 8
  %69 = load %struct.texture_image*, %struct.texture_image** %12, align 8
  %70 = getelementptr inbounds %struct.texture_image, %struct.texture_image* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 1
  store i32 %71, i32* %74, align 4
  %75 = load i32, i32* @DXGI_FORMAT_B8G8R8A8_UNORM, align 4
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  store i32 %75, i32* %78, align 8
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %83 = call i32 @d3d10_init_texture(i32 %81, %struct.TYPE_8__* %82)
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.texture_image*, %struct.texture_image** %12, align 8
  %88 = getelementptr inbounds %struct.texture_image, %struct.texture_image* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.texture_image*, %struct.texture_image** %12, align 8
  %91 = getelementptr inbounds %struct.texture_image, %struct.texture_image* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @DXGI_FORMAT_B8G8R8A8_UNORM, align 4
  %94 = load %struct.texture_image*, %struct.texture_image** %12, align 8
  %95 = getelementptr inbounds %struct.texture_image, %struct.texture_image* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %98 = call i32 @d3d10_update_texture(i32 %86, i32 %89, i32 %92, i32 0, i32 %93, i32 %96, %struct.TYPE_8__* %97)
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %100 = ptrtoint %struct.TYPE_8__* %99 to i64
  store i64 %100, i64* %5, align 8
  br label %101

101:                                              ; preds = %62, %25, %19
  %102 = load i64, i64* %5, align 8
  ret i64 %102
}

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @d3d10_init_texture(i32, %struct.TYPE_8__*) #1

declare dso_local i32 @d3d10_update_texture(i32, i32, i32, i32, i32, i32, %struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
