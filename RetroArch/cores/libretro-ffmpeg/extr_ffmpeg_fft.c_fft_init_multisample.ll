; ModuleID = '/home/carl/AnghaBench/RetroArch/cores/libretro-ffmpeg/extr_ffmpeg_fft.c_fft_init_multisample.c'
source_filename = "/home/carl/AnghaBench/RetroArch/cores/libretro-ffmpeg/extr_ffmpeg_fft.c_fft_init_multisample.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i64 }

@GL_RENDERBUFFER = common dso_local global i32 0, align 4
@GL_RGBA8 = common dso_local global i32 0, align 4
@GL_DEPTH24_STENCIL8 = common dso_local global i32 0, align 4
@GL_FRAMEBUFFER = common dso_local global i32 0, align 4
@GL_COLOR_ATTACHMENT0 = common dso_local global i32 0, align 4
@GL_DEPTH_STENCIL_ATTACHMENT = common dso_local global i32 0, align 4
@GL_FRAMEBUFFER_COMPLETE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fft_init_multisample(%struct.TYPE_3__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %4
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 1
  %16 = call i32 @glDeleteRenderbuffers(i32 1, i64* %15)
  br label %17

17:                                               ; preds = %13, %4
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  store i64 0, i64* %19, align 8
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %17
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = call i32 @glDeleteRenderbuffers(i32 1, i64* %26)
  br label %28

28:                                               ; preds = %24, %17
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  store i64 0, i64* %30, align 8
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %28
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 2
  %38 = call i32 @glDeleteFramebuffers(i32 1, i64* %37)
  br label %39

39:                                               ; preds = %35, %28
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 2
  store i64 0, i64* %41, align 8
  %42 = load i32, i32* %8, align 4
  %43 = icmp ugt i32 %42, 1
  br i1 %43, label %44, label %104

44:                                               ; preds = %39
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  %47 = call i32 @glGenRenderbuffers(i32 1, i64* %46)
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = call i32 @glGenRenderbuffers(i32 1, i64* %49)
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 2
  %53 = call i32 @glGenFramebuffers(i32 1, i64* %52)
  %54 = load i32, i32* @GL_RENDERBUFFER, align 4
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @glBindRenderbuffer(i32 %54, i64 %57)
  %59 = load i32, i32* @GL_RENDERBUFFER, align 4
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* @GL_RGBA8, align 4
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* %7, align 4
  %64 = call i32 @glRenderbufferStorageMultisample(i32 %59, i32 %60, i32 %61, i32 %62, i32 %63)
  %65 = load i32, i32* @GL_RENDERBUFFER, align 4
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = call i32 @glBindRenderbuffer(i32 %65, i64 %68)
  %70 = load i32, i32* @GL_RENDERBUFFER, align 4
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* @GL_DEPTH24_STENCIL8, align 4
  %73 = load i32, i32* %6, align 4
  %74 = load i32, i32* %7, align 4
  %75 = call i32 @glRenderbufferStorageMultisample(i32 %70, i32 %71, i32 %72, i32 %73, i32 %74)
  %76 = load i32, i32* @GL_RENDERBUFFER, align 4
  %77 = call i32 @glBindRenderbuffer(i32 %76, i64 0)
  %78 = load i32, i32* @GL_FRAMEBUFFER, align 4
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = call i32 @glBindFramebuffer(i32 %78, i64 %81)
  %83 = load i32, i32* @GL_FRAMEBUFFER, align 4
  %84 = load i32, i32* @GL_COLOR_ATTACHMENT0, align 4
  %85 = load i32, i32* @GL_RENDERBUFFER, align 4
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = call i32 @glFramebufferRenderbuffer(i32 %83, i32 %84, i32 %85, i64 %88)
  %90 = load i32, i32* @GL_FRAMEBUFFER, align 4
  %91 = load i32, i32* @GL_DEPTH_STENCIL_ATTACHMENT, align 4
  %92 = load i32, i32* @GL_RENDERBUFFER, align 4
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = call i32 @glFramebufferRenderbuffer(i32 %90, i32 %91, i32 %92, i64 %95)
  %97 = load i32, i32* @GL_FRAMEBUFFER, align 4
  %98 = call i64 @glCheckFramebufferStatus(i32 %97)
  %99 = load i64, i64* @GL_FRAMEBUFFER_COMPLETE, align 8
  %100 = icmp ne i64 %98, %99
  br i1 %100, label %101, label %103

101:                                              ; preds = %44
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  call void @fft_init_multisample(%struct.TYPE_3__* %102, i32 0, i32 0, i32 0)
  br label %103

103:                                              ; preds = %101, %44
  br label %104

104:                                              ; preds = %103, %39
  %105 = load i32, i32* @GL_FRAMEBUFFER, align 4
  %106 = call i32 @glBindFramebuffer(i32 %105, i64 0)
  ret void
}

declare dso_local i32 @glDeleteRenderbuffers(i32, i64*) #1

declare dso_local i32 @glDeleteFramebuffers(i32, i64*) #1

declare dso_local i32 @glGenRenderbuffers(i32, i64*) #1

declare dso_local i32 @glGenFramebuffers(i32, i64*) #1

declare dso_local i32 @glBindRenderbuffer(i32, i64) #1

declare dso_local i32 @glRenderbufferStorageMultisample(i32, i32, i32, i32, i32) #1

declare dso_local i32 @glBindFramebuffer(i32, i64) #1

declare dso_local i32 @glFramebufferRenderbuffer(i32, i32, i32, i64) #1

declare dso_local i64 @glCheckFramebufferStatus(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
