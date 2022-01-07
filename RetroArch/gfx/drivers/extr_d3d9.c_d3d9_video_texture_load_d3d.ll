; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_d3d9.c_d3d9_video_texture_load_d3d.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_d3d9.c_d3d9_video_texture_load_d3d.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.d3d9_texture_info = type { i64, i64, i64 }
%struct.TYPE_5__ = type { i32, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.texture_image = type { i32, i32, i32* }

@TEXTURE_FILTER_MIPMAP_LINEAR = common dso_local global i64 0, align 8
@TEXTURE_FILTER_MIPMAP_NEAREST = common dso_local global i64 0, align 8
@D3DPOOL_MANAGED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"[D3D9]: Failed to create texture\0A\00", align 1
@D3DLOCK_NOSYSLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.d3d9_texture_info*, i64*)* @d3d9_video_texture_load_d3d to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @d3d9_video_texture_load_d3d(%struct.d3d9_texture_info* %0, i64* %1) #0 {
  %3 = alloca %struct.d3d9_texture_info*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca %struct.TYPE_5__, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca %struct.texture_image*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store %struct.d3d9_texture_info* %0, %struct.d3d9_texture_info** %3, align 8
  store i64* %1, i64** %4, align 8
  store i32* null, i32** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %15 = load %struct.d3d9_texture_info*, %struct.d3d9_texture_info** %3, align 8
  %16 = getelementptr inbounds %struct.d3d9_texture_info, %struct.d3d9_texture_info* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %18, %struct.TYPE_4__** %9, align 8
  %19 = load %struct.d3d9_texture_info*, %struct.d3d9_texture_info** %3, align 8
  %20 = getelementptr inbounds %struct.d3d9_texture_info, %struct.d3d9_texture_info* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to %struct.texture_image*
  store %struct.texture_image* %22, %struct.texture_image** %10, align 8
  %23 = load %struct.texture_image*, %struct.texture_image** %10, align 8
  %24 = icmp ne %struct.texture_image* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %2
  br label %108

26:                                               ; preds = %2
  %27 = load %struct.d3d9_texture_info*, %struct.d3d9_texture_info** %3, align 8
  %28 = getelementptr inbounds %struct.d3d9_texture_info, %struct.d3d9_texture_info* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @TEXTURE_FILTER_MIPMAP_LINEAR, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %38, label %32

32:                                               ; preds = %26
  %33 = load %struct.d3d9_texture_info*, %struct.d3d9_texture_info** %3, align 8
  %34 = getelementptr inbounds %struct.d3d9_texture_info, %struct.d3d9_texture_info* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @TEXTURE_FILTER_MIPMAP_NEAREST, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %32, %26
  store i32 1, i32* %8, align 4
  br label %39

39:                                               ; preds = %38, %32
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.texture_image*, %struct.texture_image** %10, align 8
  %44 = getelementptr inbounds %struct.texture_image, %struct.texture_image* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.texture_image*, %struct.texture_image** %10, align 8
  %47 = getelementptr inbounds %struct.texture_image, %struct.texture_image* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %7, align 4
  %50 = call i32 (...) @d3d9_get_argb8888_format()
  %51 = load i32, i32* @D3DPOOL_MANAGED, align 4
  %52 = load i32, i32* %8, align 4
  %53 = call i64 @d3d9_texture_new(i32 %42, i32* null, i32 %45, i32 %48, i32 0, i32 %49, i32 %50, i32 %51, i32 0, i32 0, i32 0, i32* null, i32* null, i32 %52)
  %54 = inttoptr i64 %53 to i32*
  store i32* %54, i32** %6, align 8
  %55 = load i32*, i32** %6, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %59, label %57

57:                                               ; preds = %39
  %58 = call i32 @RARCH_ERR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %108

59:                                               ; preds = %39
  %60 = load i32*, i32** %6, align 8
  %61 = load i32, i32* @D3DLOCK_NOSYSLOCK, align 4
  %62 = call i64 @d3d9_lock_rectangle(i32* %60, i32 0, %struct.TYPE_5__* %5, i32* null, i32 0, i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %104

64:                                               ; preds = %59
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = inttoptr i64 %66 to i32*
  store i32* %67, i32** %12, align 8
  %68 = load %struct.texture_image*, %struct.texture_image** %10, align 8
  %69 = getelementptr inbounds %struct.texture_image, %struct.texture_image* %68, i32 0, i32 2
  %70 = load i32*, i32** %69, align 8
  store i32* %70, i32** %13, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = ashr i32 %72, 2
  store i32 %73, i32* %14, align 4
  store i32 0, i32* %11, align 4
  br label %74

74:                                               ; preds = %88, %64
  %75 = load i32, i32* %11, align 4
  %76 = load %struct.texture_image*, %struct.texture_image** %10, align 8
  %77 = getelementptr inbounds %struct.texture_image, %struct.texture_image* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = icmp ult i32 %75, %78
  br i1 %79, label %80, label %101

80:                                               ; preds = %74
  %81 = load i32*, i32** %12, align 8
  %82 = load i32*, i32** %13, align 8
  %83 = load %struct.texture_image*, %struct.texture_image** %10, align 8
  %84 = getelementptr inbounds %struct.texture_image, %struct.texture_image* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = shl i32 %85, 2
  %87 = call i32 @memcpy(i32* %81, i32* %82, i32 %86)
  br label %88

88:                                               ; preds = %80
  %89 = load i32, i32* %11, align 4
  %90 = add i32 %89, 1
  store i32 %90, i32* %11, align 4
  %91 = load i32, i32* %14, align 4
  %92 = load i32*, i32** %12, align 8
  %93 = zext i32 %91 to i64
  %94 = getelementptr inbounds i32, i32* %92, i64 %93
  store i32* %94, i32** %12, align 8
  %95 = load %struct.texture_image*, %struct.texture_image** %10, align 8
  %96 = getelementptr inbounds %struct.texture_image, %struct.texture_image* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load i32*, i32** %13, align 8
  %99 = sext i32 %97 to i64
  %100 = getelementptr inbounds i32, i32* %98, i64 %99
  store i32* %100, i32** %13, align 8
  br label %74

101:                                              ; preds = %74
  %102 = load i32*, i32** %6, align 8
  %103 = call i32 @d3d9_unlock_rectangle(i32* %102)
  br label %104

104:                                              ; preds = %101, %59
  %105 = load i32*, i32** %6, align 8
  %106 = ptrtoint i32* %105 to i64
  %107 = load i64*, i64** %4, align 8
  store i64 %106, i64* %107, align 8
  br label %108

108:                                              ; preds = %104, %57, %25
  ret void
}

declare dso_local i64 @d3d9_texture_new(i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32) #1

declare dso_local i32 @d3d9_get_argb8888_format(...) #1

declare dso_local i32 @RARCH_ERR(i8*) #1

declare dso_local i64 @d3d9_lock_rectangle(i32*, i32, %struct.TYPE_5__*, i32*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @d3d9_unlock_rectangle(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
