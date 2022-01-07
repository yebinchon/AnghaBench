; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_gl_core.c_video_texture_load_gl_core.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_gl_core.c_video_texture_load_gl_core.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.texture_image = type { i32, i32, i32 }

@GL_TEXTURE_2D = common dso_local global i32 0, align 4
@GL_RGBA8 = common dso_local global i32 0, align 4
@GL_TEXTURE_WRAP_S = common dso_local global i32 0, align 4
@GL_CLAMP_TO_EDGE = common dso_local global i32 0, align 4
@GL_TEXTURE_WRAP_T = common dso_local global i32 0, align 4
@GL_LINEAR = common dso_local global i32 0, align 4
@GL_NEAREST = common dso_local global i32 0, align 4
@GL_LINEAR_MIPMAP_NEAREST = common dso_local global i32 0, align 4
@GL_LINEAR_MIPMAP_LINEAR = common dso_local global i32 0, align 4
@GL_TEXTURE_MAG_FILTER = common dso_local global i32 0, align 4
@GL_TEXTURE_MIN_FILTER = common dso_local global i32 0, align 4
@GL_UNPACK_ALIGNMENT = common dso_local global i32 0, align 4
@GL_UNPACK_ROW_LENGTH = common dso_local global i32 0, align 4
@GL_RGBA = common dso_local global i32 0, align 4
@GL_UNSIGNED_BYTE = common dso_local global i32 0, align 4
@GL_TEXTURE_SWIZZLE_R = common dso_local global i32 0, align 4
@GL_BLUE = common dso_local global i32 0, align 4
@GL_TEXTURE_SWIZZLE_B = common dso_local global i32 0, align 4
@GL_RED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.texture_image*, i32, i64*)* @video_texture_load_gl_core to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @video_texture_load_gl_core(%struct.texture_image* %0, i32 %1, i64* %2) #0 {
  %4 = alloca %struct.texture_image*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.texture_image* %0, %struct.texture_image** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64* %2, i64** %6, align 8
  %11 = call i32 @glGenTextures(i32 1, i64* %7)
  %12 = load i64, i64* %7, align 8
  %13 = load i64*, i64** %6, align 8
  store i64 %12, i64* %13, align 8
  %14 = load i32, i32* @GL_TEXTURE_2D, align 4
  %15 = load i64, i64* %7, align 8
  %16 = call i32 @glBindTexture(i32 %14, i64 %15)
  store i32 1, i32* %8, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp eq i32 %17, 130
  br i1 %18, label %22, label %19

19:                                               ; preds = %3
  %20 = load i32, i32* %5, align 4
  %21 = icmp eq i32 %20, 129
  br i1 %21, label %22, label %30

22:                                               ; preds = %19, %3
  %23 = load %struct.texture_image*, %struct.texture_image** %4, align 8
  %24 = getelementptr inbounds %struct.texture_image, %struct.texture_image* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.texture_image*, %struct.texture_image** %4, align 8
  %27 = getelementptr inbounds %struct.texture_image, %struct.texture_image* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @gl_core_num_miplevels(i32 %25, i32 %28)
  store i32 %29, i32* %8, align 4
  br label %30

30:                                               ; preds = %22, %19
  %31 = load i32, i32* @GL_TEXTURE_2D, align 4
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* @GL_RGBA8, align 4
  %34 = load %struct.texture_image*, %struct.texture_image** %4, align 8
  %35 = getelementptr inbounds %struct.texture_image, %struct.texture_image* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.texture_image*, %struct.texture_image** %4, align 8
  %38 = getelementptr inbounds %struct.texture_image, %struct.texture_image* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @glTexStorage2D(i32 %31, i32 %32, i32 %33, i32 %36, i32 %39)
  %41 = load i32, i32* @GL_TEXTURE_2D, align 4
  %42 = load i32, i32* @GL_TEXTURE_WRAP_S, align 4
  %43 = load i32, i32* @GL_CLAMP_TO_EDGE, align 4
  %44 = call i32 @glTexParameteri(i32 %41, i32 %42, i32 %43)
  %45 = load i32, i32* @GL_TEXTURE_2D, align 4
  %46 = load i32, i32* @GL_TEXTURE_WRAP_T, align 4
  %47 = load i32, i32* @GL_CLAMP_TO_EDGE, align 4
  %48 = call i32 @glTexParameteri(i32 %45, i32 %46, i32 %47)
  %49 = load i32, i32* %5, align 4
  switch i32 %49, label %60 [
    i32 131, label %50
    i32 128, label %53
    i32 129, label %56
    i32 130, label %59
  ]

50:                                               ; preds = %30
  %51 = load i32, i32* @GL_LINEAR, align 4
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* @GL_LINEAR, align 4
  store i32 %52, i32* %10, align 4
  br label %63

53:                                               ; preds = %30
  %54 = load i32, i32* @GL_NEAREST, align 4
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* @GL_NEAREST, align 4
  store i32 %55, i32* %10, align 4
  br label %63

56:                                               ; preds = %30
  %57 = load i32, i32* @GL_LINEAR, align 4
  store i32 %57, i32* %9, align 4
  %58 = load i32, i32* @GL_LINEAR_MIPMAP_NEAREST, align 4
  store i32 %58, i32* %10, align 4
  br label %63

59:                                               ; preds = %30
  br label %60

60:                                               ; preds = %30, %59
  %61 = load i32, i32* @GL_LINEAR, align 4
  store i32 %61, i32* %9, align 4
  %62 = load i32, i32* @GL_LINEAR_MIPMAP_LINEAR, align 4
  store i32 %62, i32* %10, align 4
  br label %63

63:                                               ; preds = %60, %56, %53, %50
  %64 = load i32, i32* @GL_TEXTURE_2D, align 4
  %65 = load i32, i32* @GL_TEXTURE_MAG_FILTER, align 4
  %66 = load i32, i32* %9, align 4
  %67 = call i32 @glTexParameteri(i32 %64, i32 %65, i32 %66)
  %68 = load i32, i32* @GL_TEXTURE_2D, align 4
  %69 = load i32, i32* @GL_TEXTURE_MIN_FILTER, align 4
  %70 = load i32, i32* %10, align 4
  %71 = call i32 @glTexParameteri(i32 %68, i32 %69, i32 %70)
  %72 = load i32, i32* @GL_UNPACK_ALIGNMENT, align 4
  %73 = call i32 @glPixelStorei(i32 %72, i32 4)
  %74 = load i32, i32* @GL_UNPACK_ROW_LENGTH, align 4
  %75 = call i32 @glPixelStorei(i32 %74, i32 0)
  %76 = load i32, i32* @GL_TEXTURE_2D, align 4
  %77 = load %struct.texture_image*, %struct.texture_image** %4, align 8
  %78 = getelementptr inbounds %struct.texture_image, %struct.texture_image* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.texture_image*, %struct.texture_image** %4, align 8
  %81 = getelementptr inbounds %struct.texture_image, %struct.texture_image* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @GL_RGBA, align 4
  %84 = load i32, i32* @GL_UNSIGNED_BYTE, align 4
  %85 = load %struct.texture_image*, %struct.texture_image** %4, align 8
  %86 = getelementptr inbounds %struct.texture_image, %struct.texture_image* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @glTexSubImage2D(i32 %76, i32 0, i32 0, i32 0, i32 %79, i32 %82, i32 %83, i32 %84, i32 %87)
  %89 = load i32, i32* %8, align 4
  %90 = icmp ugt i32 %89, 1
  br i1 %90, label %91, label %94

91:                                               ; preds = %63
  %92 = load i32, i32* @GL_TEXTURE_2D, align 4
  %93 = call i32 @glGenerateMipmap(i32 %92)
  br label %94

94:                                               ; preds = %91, %63
  %95 = load i32, i32* @GL_TEXTURE_2D, align 4
  %96 = load i32, i32* @GL_TEXTURE_SWIZZLE_R, align 4
  %97 = load i32, i32* @GL_BLUE, align 4
  %98 = call i32 @glTexParameteri(i32 %95, i32 %96, i32 %97)
  %99 = load i32, i32* @GL_TEXTURE_2D, align 4
  %100 = load i32, i32* @GL_TEXTURE_SWIZZLE_B, align 4
  %101 = load i32, i32* @GL_RED, align 4
  %102 = call i32 @glTexParameteri(i32 %99, i32 %100, i32 %101)
  %103 = load i32, i32* @GL_TEXTURE_2D, align 4
  %104 = call i32 @glBindTexture(i32 %103, i64 0)
  ret void
}

declare dso_local i32 @glGenTextures(i32, i64*) #1

declare dso_local i32 @glBindTexture(i32, i64) #1

declare dso_local i32 @gl_core_num_miplevels(i32, i32) #1

declare dso_local i32 @glTexStorage2D(i32, i32, i32, i32, i32) #1

declare dso_local i32 @glTexParameteri(i32, i32, i32) #1

declare dso_local i32 @glPixelStorei(i32, i32) #1

declare dso_local i32 @glTexSubImage2D(i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @glGenerateMipmap(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
