; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_gl.c_gl2_create_fbo_targets.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_gl.c_gl2_create_fbo_targets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64 }
%struct.TYPE_6__ = type { i32, i64*, i64* }

@GL_TEXTURE_2D = common dso_local global i32 0, align 4
@RARCH_GL_FRAMEBUFFER = common dso_local global i32 0, align 4
@RARCH_GL_COLOR_ATTACHMENT0 = common dso_local global i32 0, align 4
@RARCH_GL_FRAMEBUFFER_COMPLETE = common dso_local global i64 0, align 8
@GL_COLOR_BUFFER_BIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [80 x i8] c"[GL]: Failed to set up frame buffer objects. Multi-pass shading will not work.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, %struct.TYPE_6__*)* @gl2_create_fbo_targets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gl2_create_fbo_targets(%struct.TYPE_5__* %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  %9 = load i32, i32* @GL_TEXTURE_2D, align 4
  %10 = call i32 @glBindTexture(i32 %9, i32 0)
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 1
  %16 = load i64*, i64** %15, align 8
  %17 = call i32 @gl2_gen_fb(i32 %13, i64* %16)
  store i32 0, i32* %6, align 4
  br label %18

18:                                               ; preds = %51, %2
  %19 = load i32, i32* %6, align 4
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ult i32 %19, %22
  br i1 %23, label %24, label %54

24:                                               ; preds = %18
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  %27 = load i64*, i64** %26, align 8
  %28 = load i32, i32* %6, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds i64, i64* %27, i64 %29
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @gl2_bind_fb(i64 %31)
  %33 = load i32, i32* @RARCH_GL_FRAMEBUFFER, align 4
  %34 = load i32, i32* @RARCH_GL_COLOR_ATTACHMENT0, align 4
  %35 = load i32, i32* @GL_TEXTURE_2D, align 4
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 2
  %38 = load i64*, i64** %37, align 8
  %39 = load i32, i32* %6, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds i64, i64* %38, i64 %40
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @gl2_fb_texture_2d(i32 %33, i32 %34, i32 %35, i64 %42, i32 0)
  %44 = load i32, i32* @RARCH_GL_FRAMEBUFFER, align 4
  %45 = call i64 @gl2_check_fb_status(i32 %44)
  store i64 %45, i64* %7, align 8
  %46 = load i64, i64* %7, align 8
  %47 = load i64, i64* @RARCH_GL_FRAMEBUFFER_COMPLETE, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %24
  br label %85

50:                                               ; preds = %24
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %6, align 4
  %53 = add i32 %52, 1
  store i32 %53, i32* %6, align 4
  br label %18

54:                                               ; preds = %18
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %84

59:                                               ; preds = %54
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = call i32 @gl2_gen_fb(i32 1, i64* %61)
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = call i32 @gl2_bind_fb(i64 %65)
  %67 = load i32, i32* @RARCH_GL_FRAMEBUFFER, align 4
  %68 = load i32, i32* @RARCH_GL_COLOR_ATTACHMENT0, align 4
  %69 = load i32, i32* @GL_TEXTURE_2D, align 4
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = call i32 @gl2_fb_texture_2d(i32 %67, i32 %68, i32 %69, i64 %72, i32 0)
  %74 = load i32, i32* @RARCH_GL_FRAMEBUFFER, align 4
  %75 = call i64 @gl2_check_fb_status(i32 %74)
  store i64 %75, i64* %8, align 8
  %76 = load i64, i64* %8, align 8
  %77 = load i64, i64* @RARCH_GL_FRAMEBUFFER_COMPLETE, align 8
  %78 = icmp ne i64 %76, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %59
  br label %85

80:                                               ; preds = %59
  %81 = call i32 @glClearColor(float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00)
  %82 = load i32, i32* @GL_COLOR_BUFFER_BIT, align 4
  %83 = call i32 @glClear(i32 %82)
  br label %84

84:                                               ; preds = %80, %54
  store i32 1, i32* %3, align 4
  br label %103

85:                                               ; preds = %79, %49
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 1
  %91 = load i64*, i64** %90, align 8
  %92 = call i32 @gl2_delete_fb(i32 %88, i64* %91)
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %85
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 0
  %100 = call i32 @gl2_delete_fb(i32 1, i64* %99)
  br label %101

101:                                              ; preds = %97, %85
  %102 = call i32 @RARCH_ERR(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %103

103:                                              ; preds = %101, %84
  %104 = load i32, i32* %3, align 4
  ret i32 %104
}

declare dso_local i32 @glBindTexture(i32, i32) #1

declare dso_local i32 @gl2_gen_fb(i32, i64*) #1

declare dso_local i32 @gl2_bind_fb(i64) #1

declare dso_local i32 @gl2_fb_texture_2d(i32, i32, i32, i64, i32) #1

declare dso_local i64 @gl2_check_fb_status(i32) #1

declare dso_local i32 @glClearColor(float, float, float, float) #1

declare dso_local i32 @glClear(i32) #1

declare dso_local i32 @gl2_delete_fb(i32, i64*) #1

declare dso_local i32 @RARCH_ERR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
