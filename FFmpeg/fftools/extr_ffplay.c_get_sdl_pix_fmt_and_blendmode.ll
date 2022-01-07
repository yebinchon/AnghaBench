; ModuleID = '/home/carl/AnghaBench/FFmpeg/fftools/extr_ffplay.c_get_sdl_pix_fmt_and_blendmode.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/fftools/extr_ffplay.c_get_sdl_pix_fmt_and_blendmode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@SDL_BLENDMODE_NONE = common dso_local global i32 0, align 4
@SDL_PIXELFORMAT_UNKNOWN = common dso_local global i32 0, align 4
@AV_PIX_FMT_RGB32 = common dso_local global i32 0, align 4
@AV_PIX_FMT_RGB32_1 = common dso_local global i32 0, align 4
@AV_PIX_FMT_BGR32 = common dso_local global i32 0, align 4
@AV_PIX_FMT_BGR32_1 = common dso_local global i32 0, align 4
@SDL_BLENDMODE_BLEND = common dso_local global i32 0, align 4
@sdl_texture_format_map = common dso_local global %struct.TYPE_3__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*, i32*)* @get_sdl_pix_fmt_and_blendmode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_sdl_pix_fmt_and_blendmode(i32 %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = load i32, i32* @SDL_BLENDMODE_NONE, align 4
  %9 = load i32*, i32** %6, align 8
  store i32 %8, i32* %9, align 4
  %10 = load i32, i32* @SDL_PIXELFORMAT_UNKNOWN, align 4
  %11 = load i32*, i32** %5, align 8
  store i32 %10, i32* %11, align 4
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @AV_PIX_FMT_RGB32, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %27, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @AV_PIX_FMT_RGB32_1, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %27, label %19

19:                                               ; preds = %15
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @AV_PIX_FMT_BGR32, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %27, label %23

23:                                               ; preds = %19
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @AV_PIX_FMT_BGR32_1, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %23, %19, %15, %3
  %28 = load i32, i32* @SDL_BLENDMODE_BLEND, align 4
  %29 = load i32*, i32** %6, align 8
  store i32 %28, i32* %29, align 4
  br label %30

30:                                               ; preds = %27, %23
  store i32 0, i32* %7, align 4
  br label %31

31:                                               ; preds = %55, %30
  %32 = load i32, i32* %7, align 4
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** @sdl_texture_format_map, align 8
  %34 = call i32 @FF_ARRAY_ELEMS(%struct.TYPE_3__* %33)
  %35 = sub nsw i32 %34, 1
  %36 = icmp slt i32 %32, %35
  br i1 %36, label %37, label %58

37:                                               ; preds = %31
  %38 = load i32, i32* %4, align 4
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** @sdl_texture_format_map, align 8
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp eq i32 %38, %44
  br i1 %45, label %46, label %54

46:                                               ; preds = %37
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** @sdl_texture_format_map, align 8
  %48 = load i32, i32* %7, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32*, i32** %5, align 8
  store i32 %52, i32* %53, align 4
  br label %58

54:                                               ; preds = %37
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %7, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %7, align 4
  br label %31

58:                                               ; preds = %46, %31
  ret void
}

declare dso_local i32 @FF_ARRAY_ELEMS(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
