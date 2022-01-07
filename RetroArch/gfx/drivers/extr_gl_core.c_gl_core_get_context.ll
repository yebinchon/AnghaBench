; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_gl_core.c_gl_core_get_context.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_gl_core.c_gl_core_get_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32 (i8*, i32)* }
%struct.TYPE_14__ = type { i32, i8* }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.retro_hw_render_callback = type { i64, i32, i32 }

@GFX_CTX_OPENGL_API = common dso_local global i32 0, align 4
@RETRO_HW_CONTEXT_NONE = common dso_local global i64 0, align 8
@RETRO_HW_CONTEXT_OPENGL_CORE = common dso_local global i64 0, align 8
@GFX_CTX_FLAGS_GL_CORE_CONTEXT = common dso_local global i32 0, align 4
@GFX_CTX_OPENGL_ES_API = common dso_local global i32 0, align 4
@RETRO_HW_CONTEXT_OPENGLES_VERSION = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_16__* (%struct.TYPE_14__*)* @gl_core_get_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_16__* @gl_core_get_context(%struct.TYPE_14__* %0) #0 {
  %2 = alloca %struct.TYPE_14__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_15__, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca %struct.retro_hw_render_callback*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %2, align 8
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %7, align 8
  store i8* null, i8** %8, align 8
  %11 = call %struct.TYPE_13__* (...) @config_get_ptr()
  store %struct.TYPE_13__* %11, %struct.TYPE_13__** %9, align 8
  %12 = call %struct.retro_hw_render_callback* (...) @video_driver_get_hw_context()
  store %struct.retro_hw_render_callback* %12, %struct.retro_hw_render_callback** %10, align 8
  %13 = load i32, i32* @GFX_CTX_OPENGL_API, align 4
  store i32 %13, i32* %5, align 4
  %14 = load %struct.retro_hw_render_callback*, %struct.retro_hw_render_callback** %10, align 8
  %15 = icmp ne %struct.retro_hw_render_callback* %14, null
  br i1 %15, label %16, label %49

16:                                               ; preds = %1
  %17 = load %struct.retro_hw_render_callback*, %struct.retro_hw_render_callback** %10, align 8
  %18 = getelementptr inbounds %struct.retro_hw_render_callback, %struct.retro_hw_render_callback* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @RETRO_HW_CONTEXT_NONE, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %49

22:                                               ; preds = %16
  %23 = load %struct.retro_hw_render_callback*, %struct.retro_hw_render_callback** %10, align 8
  %24 = getelementptr inbounds %struct.retro_hw_render_callback, %struct.retro_hw_render_callback* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %3, align 4
  %26 = load %struct.retro_hw_render_callback*, %struct.retro_hw_render_callback** %10, align 8
  %27 = getelementptr inbounds %struct.retro_hw_render_callback, %struct.retro_hw_render_callback* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %4, align 4
  %29 = load %struct.retro_hw_render_callback*, %struct.retro_hw_render_callback** %10, align 8
  %30 = getelementptr inbounds %struct.retro_hw_render_callback, %struct.retro_hw_render_callback* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @RETRO_HW_CONTEXT_OPENGL_CORE, align 8
  %33 = icmp eq i64 %31, %32
  %34 = zext i1 %33 to i32
  %35 = call i32 @gl_query_core_context_set(i32 %34)
  %36 = load %struct.retro_hw_render_callback*, %struct.retro_hw_render_callback** %10, align 8
  %37 = getelementptr inbounds %struct.retro_hw_render_callback, %struct.retro_hw_render_callback* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @RETRO_HW_CONTEXT_OPENGL_CORE, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %48

41:                                               ; preds = %22
  %42 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %6, i32 0, i32 0
  store i64 0, i64* %42, align 8
  %43 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %6, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i32, i32* @GFX_CTX_FLAGS_GL_CORE_CONTEXT, align 4
  %46 = call i32 @BIT32_SET(i64 %44, i32 %45)
  %47 = call i32 @video_context_driver_set_flags(%struct.TYPE_15__* %6)
  br label %48

48:                                               ; preds = %41, %22
  br label %57

49:                                               ; preds = %16, %1
  store i32 3, i32* %3, align 4
  store i32 2, i32* %4, align 4
  %50 = call i32 @gl_query_core_context_set(i32 1)
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %6, i32 0, i32 0
  store i64 0, i64* %51, align 8
  %52 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %6, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i32, i32* @GFX_CTX_FLAGS_GL_CORE_CONTEXT, align 4
  %55 = call i32 @BIT32_SET(i64 %53, i32 %54)
  %56 = call i32 @video_context_driver_set_flags(%struct.TYPE_15__* %6)
  br label %57

57:                                               ; preds = %49, %48
  %58 = load %struct.retro_hw_render_callback*, %struct.retro_hw_render_callback** %10, align 8
  %59 = icmp ne %struct.retro_hw_render_callback* %58, null
  br i1 %59, label %60, label %69

60:                                               ; preds = %57
  %61 = load %struct.retro_hw_render_callback*, %struct.retro_hw_render_callback** %10, align 8
  %62 = getelementptr inbounds %struct.retro_hw_render_callback, %struct.retro_hw_render_callback* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @RETRO_HW_CONTEXT_NONE, align 8
  %65 = icmp ne i64 %63, %64
  %66 = zext i1 %65 to i32
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 8
  br label %69

69:                                               ; preds = %60, %57
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %5, align 4
  %76 = load i32, i32* %3, align 4
  %77 = load i32, i32* %4, align 4
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call %struct.TYPE_16__* @video_context_driver_init_first(%struct.TYPE_14__* %70, i32 %74, i32 %75, i32 %76, i32 %77, i32 %80, i8** %8)
  store %struct.TYPE_16__* %81, %struct.TYPE_16__** %7, align 8
  %82 = load i8*, i8** %8, align 8
  %83 = icmp ne i8* %82, null
  br i1 %83, label %84, label %88

84:                                               ; preds = %69
  %85 = load i8*, i8** %8, align 8
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %86, i32 0, i32 1
  store i8* %85, i8** %87, align 8
  br label %88

88:                                               ; preds = %84, %69
  %89 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %89, i32 0, i32 0
  %91 = load i32 (i8*, i32)*, i32 (i8*, i32)** %90, align 8
  %92 = icmp ne i32 (i8*, i32)* %91, null
  br i1 %92, label %93, label %102

93:                                               ; preds = %88
  %94 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %94, i32 0, i32 0
  %96 = load i32 (i8*, i32)*, i32 (i8*, i32)** %95, align 8
  %97 = load i8*, i8** %8, align 8
  %98 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %99 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = call i32 %96(i8* %97, i32 %100)
  br label %102

102:                                              ; preds = %93, %88
  %103 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  ret %struct.TYPE_16__* %103
}

declare dso_local %struct.TYPE_13__* @config_get_ptr(...) #1

declare dso_local %struct.retro_hw_render_callback* @video_driver_get_hw_context(...) #1

declare dso_local i32 @gl_query_core_context_set(i32) #1

declare dso_local i32 @BIT32_SET(i64, i32) #1

declare dso_local i32 @video_context_driver_set_flags(%struct.TYPE_15__*) #1

declare dso_local %struct.TYPE_16__* @video_context_driver_init_first(%struct.TYPE_14__*, i32, i32, i32, i32, i32, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
