; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_d3d8.c_d3d8_video_texture_load_d3d.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_d3d8.c_d3d8_video_texture_load_d3d.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.d3d8_texture_info = type { i64, i64 }
%struct.TYPE_5__ = type { i32, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.texture_image = type { i32, i32, i32* }

@D3DPOOL_MANAGED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"[D3D8]: Failed to create texture\0A\00", align 1
@D3DLOCK_NOSYSLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.d3d8_texture_info*, i64*)* @d3d8_video_texture_load_d3d to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @d3d8_video_texture_load_d3d(%struct.d3d8_texture_info* %0, i64* %1) #0 {
  %3 = alloca %struct.d3d8_texture_info*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca %struct.TYPE_5__, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca %struct.texture_image*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store %struct.d3d8_texture_info* %0, %struct.d3d8_texture_info** %3, align 8
  store i64* %1, i64** %4, align 8
  store i32 0, i32* %6, align 4
  %14 = load %struct.d3d8_texture_info*, %struct.d3d8_texture_info** %3, align 8
  %15 = getelementptr inbounds %struct.d3d8_texture_info, %struct.d3d8_texture_info* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %17, %struct.TYPE_4__** %7, align 8
  %18 = load %struct.d3d8_texture_info*, %struct.d3d8_texture_info** %3, align 8
  %19 = getelementptr inbounds %struct.d3d8_texture_info, %struct.d3d8_texture_info* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to %struct.texture_image*
  store %struct.texture_image* %21, %struct.texture_image** %8, align 8
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.texture_image*, %struct.texture_image** %8, align 8
  %26 = getelementptr inbounds %struct.texture_image, %struct.texture_image* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.texture_image*, %struct.texture_image** %8, align 8
  %29 = getelementptr inbounds %struct.texture_image, %struct.texture_image* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %6, align 4
  %32 = call i32 (...) @d3d8_get_argb8888_format()
  %33 = load i32, i32* @D3DPOOL_MANAGED, align 4
  %34 = call i32 @d3d8_texture_new(i32 %24, i32* null, i32 %27, i32 %30, i32 0, i32 %31, i32 %32, i32 %33, i32 0, i32 0, i32 0, i32* null, i32* null, i32 0)
  %35 = sext i32 %34 to i64
  store i64 %35, i64* %9, align 8
  %36 = load i64, i64* %9, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %2
  %39 = call i32 @RARCH_ERR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %88

40:                                               ; preds = %2
  %41 = load i64, i64* %9, align 8
  %42 = load i32, i32* @D3DLOCK_NOSYSLOCK, align 4
  %43 = call i64 @d3d8_lock_rectangle(i64 %41, i32 0, %struct.TYPE_5__* %5, i32* null, i32 0, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %85

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = inttoptr i64 %47 to i32*
  store i32* %48, i32** %11, align 8
  %49 = load %struct.texture_image*, %struct.texture_image** %8, align 8
  %50 = getelementptr inbounds %struct.texture_image, %struct.texture_image* %49, i32 0, i32 2
  %51 = load i32*, i32** %50, align 8
  store i32* %51, i32** %12, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = ashr i32 %53, 2
  store i32 %54, i32* %13, align 4
  store i32 0, i32* %10, align 4
  br label %55

55:                                               ; preds = %69, %45
  %56 = load i32, i32* %10, align 4
  %57 = load %struct.texture_image*, %struct.texture_image** %8, align 8
  %58 = getelementptr inbounds %struct.texture_image, %struct.texture_image* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = icmp ult i32 %56, %59
  br i1 %60, label %61, label %82

61:                                               ; preds = %55
  %62 = load i32*, i32** %11, align 8
  %63 = load i32*, i32** %12, align 8
  %64 = load %struct.texture_image*, %struct.texture_image** %8, align 8
  %65 = getelementptr inbounds %struct.texture_image, %struct.texture_image* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = shl i32 %66, 2
  %68 = call i32 @memcpy(i32* %62, i32* %63, i32 %67)
  br label %69

69:                                               ; preds = %61
  %70 = load i32, i32* %10, align 4
  %71 = add i32 %70, 1
  store i32 %71, i32* %10, align 4
  %72 = load i32, i32* %13, align 4
  %73 = load i32*, i32** %11, align 8
  %74 = zext i32 %72 to i64
  %75 = getelementptr inbounds i32, i32* %73, i64 %74
  store i32* %75, i32** %11, align 8
  %76 = load %struct.texture_image*, %struct.texture_image** %8, align 8
  %77 = getelementptr inbounds %struct.texture_image, %struct.texture_image* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32*, i32** %12, align 8
  %80 = sext i32 %78 to i64
  %81 = getelementptr inbounds i32, i32* %79, i64 %80
  store i32* %81, i32** %12, align 8
  br label %55

82:                                               ; preds = %55
  %83 = load i64, i64* %9, align 8
  %84 = call i32 @d3d8_unlock_rectangle(i64 %83)
  br label %85

85:                                               ; preds = %82, %40
  %86 = load i64, i64* %9, align 8
  %87 = load i64*, i64** %4, align 8
  store i64 %86, i64* %87, align 8
  br label %88

88:                                               ; preds = %85, %38
  ret void
}

declare dso_local i32 @d3d8_texture_new(i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32) #1

declare dso_local i32 @d3d8_get_argb8888_format(...) #1

declare dso_local i32 @RARCH_ERR(i8*) #1

declare dso_local i64 @d3d8_lock_rectangle(i64, i32, %struct.TYPE_5__*, i32*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @d3d8_unlock_rectangle(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
