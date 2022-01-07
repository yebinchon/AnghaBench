; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/hello_pi/hello_teapot/extr_triangle.c_init_textures.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/hello_pi/hello_teapot/extr_triangle.c_init_textures.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i32 }

@GL_TEXTURE_2D = common dso_local global i32 0, align 4
@GL_RGBA = common dso_local global i32 0, align 4
@IMAGE_SIZE_WIDTH = common dso_local global i32 0, align 4
@IMAGE_SIZE_HEIGHT = common dso_local global i32 0, align 4
@GL_UNSIGNED_BYTE = common dso_local global i32 0, align 4
@GL_TEXTURE_MIN_FILTER = common dso_local global i32 0, align 4
@GL_NEAREST = common dso_local global i32 0, align 4
@GL_TEXTURE_MAG_FILTER = common dso_local global i32 0, align 4
@GL_TEXTURE_WRAP_S = common dso_local global i32 0, align 4
@GL_CLAMP_TO_EDGE = common dso_local global i32 0, align 4
@GL_TEXTURE_WRAP_T = common dso_local global i32 0, align 4
@EGL_GL_TEXTURE_2D_KHR = common dso_local global i32 0, align 4
@eglImage = common dso_local global i64 0, align 8
@EGL_NO_IMAGE_KHR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"eglCreateImageKHR failed.\0A\00", align 1
@thread1 = common dso_local global i32 0, align 4
@video_decode_test = common dso_local global i32 0, align 4
@GL_FLOAT = common dso_local global i32 0, align 4
@texCoords = common dso_local global i32 0, align 4
@GL_TEXTURE_COORD_ARRAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*)* @init_textures to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_textures(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %3 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %4 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  %5 = call i32 @glGenTextures(i32 1, i64* %4)
  %6 = load i32, i32* @GL_TEXTURE_2D, align 4
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = call i32 @glBindTexture(i32 %6, i64 %9)
  %11 = load i32, i32* @GL_TEXTURE_2D, align 4
  %12 = load i32, i32* @GL_RGBA, align 4
  %13 = load i32, i32* @IMAGE_SIZE_WIDTH, align 4
  %14 = load i32, i32* @IMAGE_SIZE_HEIGHT, align 4
  %15 = load i32, i32* @GL_RGBA, align 4
  %16 = load i32, i32* @GL_UNSIGNED_BYTE, align 4
  %17 = call i32 @glTexImage2D(i32 %11, i32 0, i32 %12, i32 %13, i32 %14, i32 0, i32 %15, i32 %16, i32* null)
  %18 = load i32, i32* @GL_TEXTURE_2D, align 4
  %19 = load i32, i32* @GL_TEXTURE_MIN_FILTER, align 4
  %20 = load i32, i32* @GL_NEAREST, align 4
  %21 = call i32 @glTexParameteri(i32 %18, i32 %19, i32 %20)
  %22 = load i32, i32* @GL_TEXTURE_2D, align 4
  %23 = load i32, i32* @GL_TEXTURE_MAG_FILTER, align 4
  %24 = load i32, i32* @GL_NEAREST, align 4
  %25 = call i32 @glTexParameteri(i32 %22, i32 %23, i32 %24)
  %26 = load i32, i32* @GL_TEXTURE_2D, align 4
  %27 = load i32, i32* @GL_TEXTURE_WRAP_S, align 4
  %28 = load i32, i32* @GL_CLAMP_TO_EDGE, align 4
  %29 = call i32 @glTexParameteri(i32 %26, i32 %27, i32 %28)
  %30 = load i32, i32* @GL_TEXTURE_2D, align 4
  %31 = load i32, i32* @GL_TEXTURE_WRAP_T, align 4
  %32 = load i32, i32* @GL_CLAMP_TO_EDGE, align 4
  %33 = call i32 @glTexParameteri(i32 %30, i32 %31, i32 %32)
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @EGL_GL_TEXTURE_2D_KHR, align 4
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = trunc i64 %43 to i32
  %45 = call i64 @eglCreateImageKHR(i32 %36, i32 %39, i32 %40, i32 %44, i32 0)
  store i64 %45, i64* @eglImage, align 8
  %46 = load i64, i64* @eglImage, align 8
  %47 = load i64, i64* @EGL_NO_IMAGE_KHR, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %1
  %50 = call i32 @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %51 = call i32 @exit(i32 1) #3
  unreachable

52:                                               ; preds = %1
  %53 = load i32, i32* @video_decode_test, align 4
  %54 = load i64, i64* @eglImage, align 8
  %55 = call i32 @pthread_create(i32* @thread1, i32* null, i32 %53, i64 %54)
  %56 = load i32, i32* @GL_FLOAT, align 4
  %57 = load i32, i32* @texCoords, align 4
  %58 = call i32 @glTexCoordPointer(i32 2, i32 %56, i32 0, i32 %57)
  %59 = load i32, i32* @GL_TEXTURE_COORD_ARRAY, align 4
  %60 = call i32 @glEnableClientState(i32 %59)
  %61 = load i32, i32* @GL_TEXTURE_2D, align 4
  %62 = call i32 @glEnable(i32 %61)
  %63 = load i32, i32* @GL_TEXTURE_2D, align 4
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = call i32 @glBindTexture(i32 %63, i64 %66)
  ret void
}

declare dso_local i32 @glGenTextures(i32, i64*) #1

declare dso_local i32 @glBindTexture(i32, i64) #1

declare dso_local i32 @glTexImage2D(i32, i32, i32, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @glTexParameteri(i32, i32, i32) #1

declare dso_local i64 @eglCreateImageKHR(i32, i32, i32, i32, i32) #1

declare dso_local i32 @printf(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare !callback !2 dso_local i32 @pthread_create(i32*, i32*, i32, i64) #1

declare dso_local i32 @glTexCoordPointer(i32, i32, i32, i32) #1

declare dso_local i32 @glEnableClientState(i32) #1

declare dso_local i32 @glEnable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}
