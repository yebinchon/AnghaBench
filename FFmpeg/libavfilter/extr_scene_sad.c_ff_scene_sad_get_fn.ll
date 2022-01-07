; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_scene_sad.c_ff_scene_sad_get_fn.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_scene_sad.c_ff_scene_sad_get_fn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ARCH_X86 = common dso_local global i64 0, align 8
@ff_scene_sad_c = common dso_local global i32* null, align 8
@ff_scene_sad16_c = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @ff_scene_sad_get_fn(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  store i32 %0, i32* %2, align 4
  store i32* null, i32** %3, align 8
  %4 = load i64, i64* @ARCH_X86, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = load i32, i32* %2, align 4
  %8 = call i32* @ff_scene_sad_get_fn_x86(i32 %7)
  store i32* %8, i32** %3, align 8
  br label %9

9:                                                ; preds = %6, %1
  %10 = load i32*, i32** %3, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %23, label %12

12:                                               ; preds = %9
  %13 = load i32, i32* %2, align 4
  %14 = icmp eq i32 %13, 8
  br i1 %14, label %15, label %17

15:                                               ; preds = %12
  %16 = load i32*, i32** @ff_scene_sad_c, align 8
  store i32* %16, i32** %3, align 8
  br label %17

17:                                               ; preds = %15, %12
  %18 = load i32, i32* %2, align 4
  %19 = icmp eq i32 %18, 16
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = load i32*, i32** @ff_scene_sad16_c, align 8
  store i32* %21, i32** %3, align 8
  br label %22

22:                                               ; preds = %20, %17
  br label %23

23:                                               ; preds = %22, %9
  %24 = load i32*, i32** %3, align 8
  ret i32* %24
}

declare dso_local i32* @ff_scene_sad_get_fn_x86(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
