; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers_context/extr_mali_fbdev_ctx.c_gfx_ctx_mali_fbdev_set_video_mode.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers_context/extr_mali_fbdev_ctx.c_gfx_ctx_mali_fbdev_set_video_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_var_screeninfo = type { i32, i32, float, float, float, float, float, float, float }
%struct.TYPE_3__ = type { i32, i32, float, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@gfx_ctx_mali_fbdev_set_video_mode.attribs = internal constant [3 x i32] [i32 129, i32 2, i32 128], align 4
@.str = private unnamed_addr constant [9 x i8] c"/dev/fb0\00", align 1
@O_RDWR = common dso_local global i32 0, align 4
@FBIOGET_VSCREENINFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Error obtaining framebuffer info.\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"[Mali fbdev]: EGL error: %d.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i32, i32, i32)* @gfx_ctx_mali_fbdev_set_video_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfx_ctx_mali_fbdev_set_video_mode(i8* %0, i32* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.fb_var_screeninfo, align 4
  %13 = alloca %struct.TYPE_3__*, align 8
  %14 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load i8*, i8** %7, align 8
  %16 = bitcast i8* %15 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %16, %struct.TYPE_3__** %13, align 8
  %17 = load i32, i32* @O_RDWR, align 4
  %18 = call i32 @open(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %17)
  store i32 %18, i32* %14, align 4
  %19 = load i32, i32* %14, align 4
  %20 = load i32, i32* @FBIOGET_VSCREENINFO, align 4
  %21 = call i64 @ioctl(i32 %19, i32 %20, %struct.fb_var_screeninfo* %12)
  %22 = icmp slt i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %5
  %24 = call i32 (i8*, ...) @RARCH_ERR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %80

25:                                               ; preds = %5
  %26 = load i32, i32* %14, align 4
  %27 = call i32 @close(i32 %26)
  store i32 -1, i32* %14, align 4
  %28 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %12, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %9, align 4
  %30 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %12, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %9, align 4
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* %10, align 4
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %12, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 3
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  store i32 %39, i32* %42, align 4
  %43 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %12, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 3
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  store i32 %44, i32* %47, align 4
  %48 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %12, i32 0, i32 2
  %49 = load float, float* %48, align 4
  %50 = fdiv float 1.000000e+06, %49
  %51 = fmul float %50, 1.000000e+06
  %52 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %12, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = uitofp i32 %53 to float
  %55 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %12, i32 0, i32 3
  %56 = load float, float* %55, align 4
  %57 = fadd float %54, %56
  %58 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %12, i32 0, i32 4
  %59 = load float, float* %58, align 4
  %60 = fadd float %57, %59
  %61 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %12, i32 0, i32 5
  %62 = load float, float* %61, align 4
  %63 = fadd float %60, %62
  %64 = fdiv float %51, %63
  %65 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %12, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = uitofp i32 %66 to float
  %68 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %12, i32 0, i32 6
  %69 = load float, float* %68, align 4
  %70 = fadd float %67, %69
  %71 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %12, i32 0, i32 7
  %72 = load float, float* %71, align 4
  %73 = fadd float %70, %72
  %74 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %12, i32 0, i32 8
  %75 = load float, float* %74, align 4
  %76 = fadd float %73, %75
  %77 = fdiv float %64, %76
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 2
  store float %77, float* %79, align 4
  store i32 1, i32* %6, align 4
  br label %91

80:                                               ; preds = %23
  %81 = load i32, i32* %14, align 4
  %82 = icmp sge i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %80
  %84 = load i32, i32* %14, align 4
  %85 = call i32 @close(i32 %84)
  br label %86

86:                                               ; preds = %83, %80
  %87 = call i32 (...) @eglGetError()
  %88 = call i32 (i8*, ...) @RARCH_ERR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %87)
  %89 = load i8*, i8** %7, align 8
  %90 = call i32 @gfx_ctx_mali_fbdev_destroy(i8* %89)
  store i32 0, i32* %6, align 4
  br label %91

91:                                               ; preds = %86, %25
  %92 = load i32, i32* %6, align 4
  ret i32 %92
}

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i64 @ioctl(i32, i32, %struct.fb_var_screeninfo*) #1

declare dso_local i32 @RARCH_ERR(i8*, ...) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @eglGetError(...) #1

declare dso_local i32 @gfx_ctx_mali_fbdev_destroy(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
