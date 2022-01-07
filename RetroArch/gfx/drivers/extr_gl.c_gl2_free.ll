; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_gl.c_gl2_free.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_gl.c_gl2_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i64, i64, i32, i32*, i64, i32, i32, i64, i64*, i32, %struct.TYPE_15__*, i64 }
%struct.TYPE_15__ = type { i32 (i32)* }
%struct.TYPE_17__ = type { i32 }

@GL_TEXTURE_REFERENCE_BUFFER_SCE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @gl2_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gl2_free(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca %struct.TYPE_17__*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %6, %struct.TYPE_16__** %3, align 8
  %7 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %8 = icmp ne %struct.TYPE_16__* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %89

10:                                               ; preds = %1
  %11 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %12 = call i32 @gl2_context_bind_hw_render(%struct.TYPE_16__* %11, i32 0)
  %13 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 12
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %10
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to %struct.TYPE_17__*
  %23 = call i32 @gl2_renderchain_fence_free(%struct.TYPE_16__* %18, %struct.TYPE_17__* %22)
  br label %24

24:                                               ; preds = %17, %10
  %25 = call i32 (...) @font_driver_free_osd()
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %26, i32 0, i32 11
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 0
  %30 = load i32 (i32)*, i32 (i32)** %29, align 8
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %31, i32 0, i32 10
  %33 = load i32, i32* %32, align 8
  %34 = call i32 %30(i32 %33)
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %38, i32 0, i32 9
  %40 = load i64*, i64** %39, align 8
  %41 = call i32 @glDeleteTextures(i32 %37, i64* %40)
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %42, i32 0, i32 6
  %44 = call i32 @scaler_ctx_gen_reset(i32* %43)
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %45, i32 0, i32 5
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %57

49:                                               ; preds = %24
  %50 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %50, i32 0, i32 4
  %52 = load i32*, i32** %51, align 8
  %53 = call i32 @glDeleteBuffers(i32 4, i32* %52)
  %54 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %54, i32 0, i32 3
  %56 = call i32 @scaler_ctx_gen_reset(i32* %55)
  br label %57

57:                                               ; preds = %49, %24
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %71

62:                                               ; preds = %57
  %63 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = inttoptr i64 %65 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %66, %struct.TYPE_17__** %4, align 8
  %67 = call i32 @glBindVertexArray(i32 0)
  %68 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %68, i32 0, i32 0
  %70 = call i32 @glDeleteVertexArrays(i32 1, i32* %69)
  br label %71

71:                                               ; preds = %62, %57
  %72 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %73 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = inttoptr i64 %75 to %struct.TYPE_17__*
  %77 = call i32 @gl2_renderchain_deinit_fbo(%struct.TYPE_16__* %72, %struct.TYPE_17__* %76)
  %78 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %79 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = inttoptr i64 %81 to %struct.TYPE_17__*
  %83 = call i32 @gl2_renderchain_deinit_hw_render(%struct.TYPE_16__* %78, %struct.TYPE_17__* %82)
  %84 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %85 = call i32 @gl2_deinit_chain(%struct.TYPE_16__* %84)
  %86 = call i32 (...) @video_context_driver_free()
  %87 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %88 = call i32 @gl2_destroy_resources(%struct.TYPE_16__* %87)
  br label %89

89:                                               ; preds = %71, %9
  ret void
}

declare dso_local i32 @gl2_context_bind_hw_render(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @gl2_renderchain_fence_free(%struct.TYPE_16__*, %struct.TYPE_17__*) #1

declare dso_local i32 @font_driver_free_osd(...) #1

declare dso_local i32 @glDeleteTextures(i32, i64*) #1

declare dso_local i32 @scaler_ctx_gen_reset(i32*) #1

declare dso_local i32 @glDeleteBuffers(i32, i32*) #1

declare dso_local i32 @glBindVertexArray(i32) #1

declare dso_local i32 @glDeleteVertexArrays(i32, i32*) #1

declare dso_local i32 @gl2_renderchain_deinit_fbo(%struct.TYPE_16__*, %struct.TYPE_17__*) #1

declare dso_local i32 @gl2_renderchain_deinit_hw_render(%struct.TYPE_16__*, %struct.TYPE_17__*) #1

declare dso_local i32 @gl2_deinit_chain(%struct.TYPE_16__*) #1

declare dso_local i32 @video_context_driver_free(...) #1

declare dso_local i32 @gl2_destroy_resources(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
