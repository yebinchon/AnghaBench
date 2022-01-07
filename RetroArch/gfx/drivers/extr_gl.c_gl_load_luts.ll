; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_gl.c_gl_load_luts.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_gl.c_gl_load_luts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.video_shader = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@GFX_MAX_TEXTURES = common dso_local global i32 0, align 4
@GL_TEXTURE_2D = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gl_load_luts(i8* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.video_shader*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.video_shader*
  store %struct.video_shader* %10, %struct.video_shader** %7, align 8
  %11 = load %struct.video_shader*, %struct.video_shader** %7, align 8
  %12 = getelementptr inbounds %struct.video_shader, %struct.video_shader* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @GFX_MAX_TEXTURES, align 4
  %15 = call i32 @MIN(i32 %13, i32 %14)
  store i32 %15, i32* %8, align 4
  %16 = load %struct.video_shader*, %struct.video_shader** %7, align 8
  %17 = getelementptr inbounds %struct.video_shader, %struct.video_shader* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %74

21:                                               ; preds = %2
  %22 = load i32, i32* %8, align 4
  %23 = load i32*, i32** %5, align 8
  %24 = call i32 @glGenTextures(i32 %22, i32* %23)
  store i32 0, i32* %6, align 4
  br label %25

25:                                               ; preds = %68, %21
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp ult i32 %26, %27
  br i1 %28, label %29, label %71

29:                                               ; preds = %25
  %30 = load %struct.video_shader*, %struct.video_shader** %7, align 8
  %31 = getelementptr inbounds %struct.video_shader, %struct.video_shader* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = load i32, i32* %6, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.video_shader*, %struct.video_shader** %7, align 8
  %39 = getelementptr inbounds %struct.video_shader, %struct.video_shader* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = load i32, i32* %6, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.video_shader*, %struct.video_shader** %7, align 8
  %47 = getelementptr inbounds %struct.video_shader, %struct.video_shader* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = load i32, i32* %6, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.video_shader*, %struct.video_shader** %7, align 8
  %55 = getelementptr inbounds %struct.video_shader, %struct.video_shader* %54, i32 0, i32 0
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = load i32, i32* %6, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %6, align 4
  %63 = load i32*, i32** %5, align 8
  %64 = call i32 @gl2_add_lut(i32 %37, i32 %45, i32 %53, i32 %61, i32 %62, i32* %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %29
  store i32 0, i32* %3, align 4
  br label %74

67:                                               ; preds = %29
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %6, align 4
  %70 = add i32 %69, 1
  store i32 %70, i32* %6, align 4
  br label %25

71:                                               ; preds = %25
  %72 = load i32, i32* @GL_TEXTURE_2D, align 4
  %73 = call i32 @glBindTexture(i32 %72, i32 0)
  store i32 1, i32* %3, align 4
  br label %74

74:                                               ; preds = %71, %66, %20
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i32 @glGenTextures(i32, i32*) #1

declare dso_local i32 @gl2_add_lut(i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @glBindTexture(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
