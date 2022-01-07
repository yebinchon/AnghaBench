; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_gl.c_gl2_renderchain_copy_frame.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_gl.c_gl2_renderchain_copy_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i64, i64, i64, i8*, i32, i32, i32, i32, i64 }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_9__ = type { i64 }

@GL_UNPACK_ALIGNMENT = common dso_local global i32 0, align 4
@GL_UNPACK_ROW_LENGTH = common dso_local global i32 0, align 4
@GL_TEXTURE_2D = common dso_local global i32 0, align 4
@EGL_NO_IMAGE_KHR = common dso_local global i64 0, align 8
@GL_READ_WRITE = common dso_local global i32 0, align 4
@GL_TEXTURE_REFERENCE_BUFFER_SCE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, %struct.TYPE_11__*, %struct.TYPE_9__*, i8*, i32, i32, i32)* @gl2_renderchain_copy_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gl2_renderchain_copy_frame(%struct.TYPE_10__* %0, %struct.TYPE_11__* %1, %struct.TYPE_9__* %2, i8* %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %8, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %9, align 8
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %16 = load i8*, i8** %11, align 8
  store i8* %16, i8** %15, align 8
  %17 = load i32, i32* @GL_UNPACK_ALIGNMENT, align 4
  %18 = load i32, i32* %14, align 4
  %19 = call i32 @video_pixel_get_alignment(i32 %18)
  %20 = call i32 @glPixelStorei(i32 %17, i32 %19)
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 3
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %23, 2
  br i1 %24, label %25, label %44

25:                                               ; preds = %7
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 8
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %44, label %30

30:                                               ; preds = %25
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 7
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 4
  %35 = load i8*, i8** %34, align 8
  %36 = load i8*, i8** %11, align 8
  %37 = load i32, i32* %12, align 4
  %38 = load i32, i32* %13, align 4
  %39 = load i32, i32* %14, align 4
  %40 = call i32 @video_frame_convert_rgb16_to_rgb32(i32* %32, i8* %35, i8* %36, i32 %37, i32 %38, i32 %39)
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 4
  %43 = load i8*, i8** %42, align 8
  store i8* %43, i8** %15, align 8
  br label %54

44:                                               ; preds = %25, %7
  %45 = load i32, i32* @GL_UNPACK_ROW_LENGTH, align 4
  %46 = load i32, i32* %14, align 4
  %47 = zext i32 %46 to i64
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 3
  %50 = load i64, i64* %49, align 8
  %51 = udiv i64 %47, %50
  %52 = trunc i64 %51 to i32
  %53 = call i32 @glPixelStorei(i32 %45, i32 %52)
  br label %54

54:                                               ; preds = %44, %30
  %55 = load i32, i32* @GL_TEXTURE_2D, align 4
  %56 = load i32, i32* %12, align 4
  %57 = load i32, i32* %13, align 4
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 6
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 5
  %63 = load i32, i32* %62, align 8
  %64 = load i8*, i8** %15, align 8
  %65 = call i32 @glTexSubImage2D(i32 %55, i32 0, i32 0, i32 0, i32 %56, i32 %57, i32 %60, i32 %63, i8* %64)
  %66 = load i32, i32* @GL_UNPACK_ROW_LENGTH, align 4
  %67 = call i32 @glPixelStorei(i32 %66, i32 0)
  ret void
}

declare dso_local i32 @glPixelStorei(i32, i32) #1

declare dso_local i32 @video_pixel_get_alignment(i32) #1

declare dso_local i32 @video_frame_convert_rgb16_to_rgb32(i32*, i8*, i8*, i32, i32, i32) #1

declare dso_local i32 @glTexSubImage2D(i32, i32, i32, i32, i32, i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
