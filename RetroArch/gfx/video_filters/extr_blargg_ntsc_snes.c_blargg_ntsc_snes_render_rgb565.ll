; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/video_filters/extr_blargg_ntsc_snes.c_blargg_ntsc_snes_render_rgb565.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/video_filters/extr_blargg_ntsc_snes.c_blargg_ntsc_snes_render_rgb565.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.filter_data = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32, i32, i32, i32*, i32, i32*, i32)* @blargg_ntsc_snes_render_rgb565 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @blargg_ntsc_snes_render_rgb565(i8* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32* %5, i32 %6, i32* %7, i32 %8) #0 {
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.filter_data*, align 8
  store i8* %0, i8** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32* %5, i32** %15, align 8
  store i32 %6, i32* %16, align 4
  store i32* %7, i32** %17, align 8
  store i32 %8, i32* %18, align 4
  %20 = load i8*, i8** %10, align 8
  %21 = bitcast i8* %20 to %struct.filter_data*
  store %struct.filter_data* %21, %struct.filter_data** %19, align 8
  %22 = load i32, i32* %11, align 4
  %23 = icmp sle i32 %22, 256
  br i1 %23, label %24, label %41

24:                                               ; preds = %9
  %25 = load %struct.filter_data*, %struct.filter_data** %19, align 8
  %26 = getelementptr inbounds %struct.filter_data, %struct.filter_data* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load i32*, i32** %15, align 8
  %29 = load i32, i32* %16, align 4
  %30 = load %struct.filter_data*, %struct.filter_data** %19, align 8
  %31 = getelementptr inbounds %struct.filter_data, %struct.filter_data* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %11, align 4
  %34 = load i32, i32* %12, align 4
  %35 = load i32*, i32** %17, align 8
  %36 = load i32, i32* %18, align 4
  %37 = mul nsw i32 %36, 2
  %38 = load i32, i32* %13, align 4
  %39 = load i32, i32* %14, align 4
  %40 = call i32 @retroarch_snes_ntsc_blit(i32 %27, i32* %28, i32 %29, i32 %32, i32 %33, i32 %34, i32* %35, i32 %37, i32 %38, i32 %39)
  br label %58

41:                                               ; preds = %9
  %42 = load %struct.filter_data*, %struct.filter_data** %19, align 8
  %43 = getelementptr inbounds %struct.filter_data, %struct.filter_data* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load i32*, i32** %15, align 8
  %46 = load i32, i32* %16, align 4
  %47 = load %struct.filter_data*, %struct.filter_data** %19, align 8
  %48 = getelementptr inbounds %struct.filter_data, %struct.filter_data* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %11, align 4
  %51 = load i32, i32* %12, align 4
  %52 = load i32*, i32** %17, align 8
  %53 = load i32, i32* %18, align 4
  %54 = mul nsw i32 %53, 2
  %55 = load i32, i32* %13, align 4
  %56 = load i32, i32* %14, align 4
  %57 = call i32 @retroarch_snes_ntsc_blit_hires(i32 %44, i32* %45, i32 %46, i32 %49, i32 %50, i32 %51, i32* %52, i32 %54, i32 %55, i32 %56)
  br label %58

58:                                               ; preds = %41, %24
  %59 = load %struct.filter_data*, %struct.filter_data** %19, align 8
  %60 = getelementptr inbounds %struct.filter_data, %struct.filter_data* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.filter_data*, %struct.filter_data** %19, align 8
  %63 = getelementptr inbounds %struct.filter_data, %struct.filter_data* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = xor i32 %64, %61
  store i32 %65, i32* %63, align 4
  ret void
}

declare dso_local i32 @retroarch_snes_ntsc_blit(i32, i32*, i32, i32, i32, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @retroarch_snes_ntsc_blit_hires(i32, i32*, i32, i32, i32, i32, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
