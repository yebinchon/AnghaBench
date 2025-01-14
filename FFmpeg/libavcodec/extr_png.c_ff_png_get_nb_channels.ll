; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_png.c_ff_png_get_nb_channels.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_png.c_ff_png_get_nb_channels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PNG_COLOR_MASK_COLOR = common dso_local global i32 0, align 4
@PNG_COLOR_MASK_PALETTE = common dso_local global i32 0, align 4
@PNG_COLOR_MASK_ALPHA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_png_get_nb_channels(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 1, i32* %3, align 4
  %4 = load i32, i32* %2, align 4
  %5 = load i32, i32* @PNG_COLOR_MASK_COLOR, align 4
  %6 = load i32, i32* @PNG_COLOR_MASK_PALETTE, align 4
  %7 = or i32 %5, %6
  %8 = and i32 %4, %7
  %9 = load i32, i32* @PNG_COLOR_MASK_COLOR, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 3, i32* %3, align 4
  br label %12

12:                                               ; preds = %11, %1
  %13 = load i32, i32* %2, align 4
  %14 = load i32, i32* @PNG_COLOR_MASK_ALPHA, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %12
  %18 = load i32, i32* %3, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %3, align 4
  br label %20

20:                                               ; preds = %17, %12
  %21 = load i32, i32* %3, align 4
  ret i32 %21
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
