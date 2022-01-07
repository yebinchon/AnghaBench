; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_gl.c_gl2_set_texture_frame.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_gl.c_gl2_set_texture_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_8__ = type { float, i64, i32*, i32 }

@TEXTURE_FILTER_LINEAR = common dso_local global i32 0, align 4
@TEXTURE_FILTER_NEAREST = common dso_local global i32 0, align 4
@RARCH_WRAP_EDGE = common dso_local global i32 0, align 4
@GL_TEXTURE_2D = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i32, i32, i32, float)* @gl2_set_texture_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gl2_set_texture_frame(i8* %0, i8* %1, i32 %2, i32 %3, i32 %4, float %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca float, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_7__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_8__*, align 8
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store float %5, float* %12, align 4
  %17 = call %struct.TYPE_7__* (...) @config_get_ptr()
  store %struct.TYPE_7__* %17, %struct.TYPE_7__** %14, align 8
  %18 = load i32, i32* %9, align 4
  %19 = icmp ne i32 %18, 0
  %20 = zext i1 %19 to i64
  %21 = select i1 %19, i64 4, i64 4
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %15, align 4
  %23 = load i8*, i8** %7, align 8
  %24 = bitcast i8* %23 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %24, %struct.TYPE_8__** %16, align 8
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %26 = icmp ne %struct.TYPE_8__* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %6
  br label %80

28:                                               ; preds = %6
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %30 = call i32 @gl2_context_bind_hw_render(%struct.TYPE_8__* %29, i32 0)
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %28
  %37 = load i32, i32* @TEXTURE_FILTER_LINEAR, align 4
  br label %40

38:                                               ; preds = %28
  %39 = load i32, i32* @TEXTURE_FILTER_NEAREST, align 4
  br label %40

40:                                               ; preds = %38, %36
  %41 = phi i32 [ %37, %36 ], [ %39, %38 ]
  store i32 %41, i32* %13, align 4
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %40
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 3
  %49 = call i32 @glGenTextures(i32 1, i32* %48)
  br label %50

50:                                               ; preds = %46, %40
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @RARCH_WRAP_EDGE, align 4
  %55 = load i32, i32* %13, align 4
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* %15, align 4
  %58 = mul i32 %56, %57
  %59 = call i32 @video_pixel_get_alignment(i32 %58)
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* %11, align 4
  %62 = load i8*, i8** %8, align 8
  %63 = load i32, i32* %15, align 4
  %64 = call i32 @gl_load_texture_data(i32 %53, i32 %54, i32 %55, i32 %59, i32 %60, i32 %61, i8* %62, i32 %63)
  %65 = load float, float* %12, align 4
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  store float %65, float* %67, align 8
  %68 = load i32, i32* @GL_TEXTURE_2D, align 4
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 2
  %71 = load i32*, i32** %70, align 8
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = getelementptr inbounds i32, i32* %71, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @glBindTexture(i32 %68, i32 %76)
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %79 = call i32 @gl2_context_bind_hw_render(%struct.TYPE_8__* %78, i32 1)
  br label %80

80:                                               ; preds = %50, %27
  ret void
}

declare dso_local %struct.TYPE_7__* @config_get_ptr(...) #1

declare dso_local i32 @gl2_context_bind_hw_render(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @glGenTextures(i32, i32*) #1

declare dso_local i32 @gl_load_texture_data(i32, i32, i32, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @video_pixel_get_alignment(i32) #1

declare dso_local i32 @glBindTexture(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
