; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_gl.c_gl2_get_context.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_gl.c_gl2_get_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i8* }
%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i64 }
%struct.retro_hw_render_callback = type { i32, i32, i64 }

@GFX_CTX_OPENGL_API = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"OpenGL\00", align 1
@RETRO_HW_CONTEXT_NONE = common dso_local global i64 0, align 8
@gl_shared_context_use = common dso_local global i32 0, align 4
@GFX_CTX_OPENGL_ES_API = common dso_local global i32 0, align 4
@RETRO_HW_CONTEXT_OPENGLES3 = common dso_local global i64 0, align 8
@RETRO_HW_CONTEXT_OPENGLES_VERSION = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_11__*)* @gl2_get_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @gl2_get_context(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca %struct.retro_hw_render_callback*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %2, align 8
  store i32* null, i32** %4, align 8
  store i8* null, i8** %5, align 8
  store i8* null, i8** %6, align 8
  %11 = call %struct.TYPE_10__* (...) @config_get_ptr()
  store %struct.TYPE_10__* %11, %struct.TYPE_10__** %7, align 8
  %12 = call %struct.retro_hw_render_callback* (...) @video_driver_get_hw_context()
  store %struct.retro_hw_render_callback* %12, %struct.retro_hw_render_callback** %8, align 8
  %13 = load %struct.retro_hw_render_callback*, %struct.retro_hw_render_callback** %8, align 8
  %14 = getelementptr inbounds %struct.retro_hw_render_callback, %struct.retro_hw_render_callback* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %9, align 4
  %16 = load %struct.retro_hw_render_callback*, %struct.retro_hw_render_callback** %8, align 8
  %17 = getelementptr inbounds %struct.retro_hw_render_callback, %struct.retro_hw_render_callback* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* @GFX_CTX_OPENGL_API, align 4
  store i32 %19, i32* %3, align 4
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %1
  %27 = load %struct.retro_hw_render_callback*, %struct.retro_hw_render_callback** %8, align 8
  %28 = getelementptr inbounds %struct.retro_hw_render_callback, %struct.retro_hw_render_callback* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @RETRO_HW_CONTEXT_NONE, align 8
  %31 = icmp ne i64 %29, %30
  br label %32

32:                                               ; preds = %26, %1
  %33 = phi i1 [ false, %1 ], [ %31, %26 ]
  %34 = zext i1 %33 to i32
  store i32 %34, i32* @gl_shared_context_use, align 4
  %35 = call i64 (...) @libretro_get_shared_context()
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %32
  %38 = load %struct.retro_hw_render_callback*, %struct.retro_hw_render_callback** %8, align 8
  %39 = getelementptr inbounds %struct.retro_hw_render_callback, %struct.retro_hw_render_callback* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @RETRO_HW_CONTEXT_NONE, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  store i32 1, i32* @gl_shared_context_use, align 4
  br label %44

44:                                               ; preds = %43, %37, %32
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* %3, align 4
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* @gl_shared_context_use, align 4
  %54 = call i32* @video_context_driver_init_first(%struct.TYPE_11__* %45, i32 %49, i32 %50, i32 %51, i32 %52, i32 %53, i8** %5)
  store i32* %54, i32** %4, align 8
  %55 = load i8*, i8** %5, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %57, label %61

57:                                               ; preds = %44
  %58 = load i8*, i8** %5, align 8
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 0
  store i8* %58, i8** %60, align 8
  br label %61

61:                                               ; preds = %57, %44
  %62 = load i32*, i32** %4, align 8
  ret i32* %62
}

declare dso_local %struct.TYPE_10__* @config_get_ptr(...) #1

declare dso_local %struct.retro_hw_render_callback* @video_driver_get_hw_context(...) #1

declare dso_local i64 @libretro_get_shared_context(...) #1

declare dso_local i32* @video_context_driver_init_first(%struct.TYPE_11__*, i32, i32, i32, i32, i32, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
