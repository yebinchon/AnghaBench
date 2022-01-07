; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_gl_core.c_gl_core_read_viewport.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_gl_core.c_gl_core_read_viewport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32*, i64, i32*, i32*, %struct.scaler_ctx, i64, %struct.TYPE_4__ }
%struct.scaler_ctx = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }

@GL_PIXEL_PACK_BUFFER = common dso_local global i32 0, align 4
@GL_MAP_READ_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i32)* @gl_core_read_viewport to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gl_core_read_viewport(i8* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.scaler_ctx*, align 8
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %13, %struct.TYPE_5__** %8, align 8
  store i32 0, i32* %9, align 4
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %15 = icmp ne %struct.TYPE_5__* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %117

17:                                               ; preds = %3
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %19 = call i32 @gl_core_context_bind_hw_render(%struct.TYPE_5__* %18, i32 0)
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 6
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 6
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = mul i32 %23, %27
  store i32 %28, i32* %9, align 4
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 5
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %79

33:                                               ; preds = %17
  store i8* null, i8** %10, align 8
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 4
  store %struct.scaler_ctx* %35, %struct.scaler_ctx** %11, align 8
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds i32, i32* %38, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %33
  br label %114

46:                                               ; preds = %33
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr inbounds i32, i32* %49, i64 %52
  store i32 0, i32* %53, align 4
  %54 = load i32, i32* @GL_PIXEL_PACK_BUFFER, align 4
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 3
  %57 = load i32*, i32** %56, align 8
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = getelementptr inbounds i32, i32* %57, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @glBindBuffer(i32 %54, i32 %62)
  %64 = load i32, i32* @GL_PIXEL_PACK_BUFFER, align 4
  %65 = load i32, i32* %9, align 4
  %66 = zext i32 %65 to i64
  %67 = mul i64 %66, 4
  %68 = trunc i64 %67 to i32
  %69 = load i32, i32* @GL_MAP_READ_BIT, align 4
  %70 = call i8* @glMapBufferRange(i32 %64, i32 0, i32 %68, i32 %69)
  store i8* %70, i8** %10, align 8
  %71 = load %struct.scaler_ctx*, %struct.scaler_ctx** %11, align 8
  %72 = load i32*, i32** %6, align 8
  %73 = load i8*, i8** %10, align 8
  %74 = call i32 @scaler_ctx_scale_direct(%struct.scaler_ctx* %71, i32* %72, i8* %73)
  %75 = load i32, i32* @GL_PIXEL_PACK_BUFFER, align 4
  %76 = call i32 @glUnmapBuffer(i32 %75)
  %77 = load i32, i32* @GL_PIXEL_PACK_BUFFER, align 4
  %78 = call i32 @glBindBuffer(i32 %77, i32 0)
  br label %111

79:                                               ; preds = %17
  %80 = load i32, i32* %9, align 4
  %81 = zext i32 %80 to i64
  %82 = mul i64 %81, 4
  %83 = trunc i64 %82 to i32
  %84 = call i32* @malloc(i32 %83)
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 2
  store i32* %84, i32** %86, align 8
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 2
  %89 = load i32*, i32** %88, align 8
  %90 = icmp ne i32* %89, null
  br i1 %90, label %92, label %91

91:                                               ; preds = %79
  br label %114

92:                                               ; preds = %79
  %93 = load i32, i32* %7, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %97, label %95

95:                                               ; preds = %92
  %96 = call i32 (...) @video_driver_cached_frame()
  br label %97

97:                                               ; preds = %95, %92
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 2
  %100 = load i32*, i32** %99, align 8
  %101 = bitcast i32* %100 to i8*
  %102 = load i32*, i32** %6, align 8
  %103 = load i32, i32* %9, align 4
  %104 = call i32 @video_frame_convert_rgba_to_bgr(i8* %101, i32* %102, i32 %103)
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 2
  %107 = load i32*, i32** %106, align 8
  %108 = call i32 @free(i32* %107)
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 2
  store i32* null, i32** %110, align 8
  br label %111

111:                                              ; preds = %97, %46
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %113 = call i32 @gl_core_context_bind_hw_render(%struct.TYPE_5__* %112, i32 1)
  store i32 1, i32* %4, align 4
  br label %117

114:                                              ; preds = %91, %45
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %116 = call i32 @gl_core_context_bind_hw_render(%struct.TYPE_5__* %115, i32 1)
  store i32 0, i32* %4, align 4
  br label %117

117:                                              ; preds = %114, %111, %16
  %118 = load i32, i32* %4, align 4
  ret i32 %118
}

declare dso_local i32 @gl_core_context_bind_hw_render(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @glBindBuffer(i32, i32) #1

declare dso_local i8* @glMapBufferRange(i32, i32, i32, i32) #1

declare dso_local i32 @scaler_ctx_scale_direct(%struct.scaler_ctx*, i32*, i8*) #1

declare dso_local i32 @glUnmapBuffer(i32) #1

declare dso_local i32* @malloc(i32) #1

declare dso_local i32 @video_driver_cached_frame(...) #1

declare dso_local i32 @video_frame_convert_rgba_to_bgr(i8*, i32*, i32) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
