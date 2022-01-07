; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/extr_libretro.c_retro_run.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/extr_libretro.c_retro_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RETRO_ENVIRONMENT_GET_VARIABLE_UPDATE = common dso_local global i32 0, align 4
@PicoPad = common dso_local global i32* null, align 8
@RETRO_PICO_MAP_LEN = common dso_local global i32 0, align 4
@RETRO_DEVICE_JOYPAD = common dso_local global i32 0, align 4
@retro_pico_map = common dso_local global i32* null, align 8
@vout_buf = common dso_local global i64 0, align 8
@vout_offset = common dso_local global i32 0, align 4
@vout_width = common dso_local global i32 0, align 4
@vout_height = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @retro_run() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %4 = load i32, i32* @RETRO_ENVIRONMENT_GET_VARIABLE_UPDATE, align 4
  %5 = call i64 @environ_cb(i32 %4, i32* %1)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %0
  %8 = load i32, i32* %1, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %7
  %11 = call i32 (...) @update_variables()
  br label %12

12:                                               ; preds = %10, %7, %0
  %13 = call i32 (...) @input_poll_cb()
  %14 = load i32*, i32** @PicoPad, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 1
  store i32 0, i32* %15, align 4
  %16 = load i32*, i32** @PicoPad, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  store i32 0, i32* %17, align 4
  store i32 0, i32* %2, align 4
  br label %18

18:                                               ; preds = %49, %12
  %19 = load i32, i32* %2, align 4
  %20 = icmp slt i32 %19, 2
  br i1 %20, label %21, label %52

21:                                               ; preds = %18
  store i32 0, i32* %3, align 4
  br label %22

22:                                               ; preds = %45, %21
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* @RETRO_PICO_MAP_LEN, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %48

26:                                               ; preds = %22
  %27 = load i32, i32* %2, align 4
  %28 = load i32, i32* @RETRO_DEVICE_JOYPAD, align 4
  %29 = load i32, i32* %3, align 4
  %30 = call i64 @input_state_cb(i32 %27, i32 %28, i32 0, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %44

32:                                               ; preds = %26
  %33 = load i32*, i32** @retro_pico_map, align 8
  %34 = load i32, i32* %3, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = load i32*, i32** @PicoPad, align 8
  %39 = load i32, i32* %2, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %42, %37
  store i32 %43, i32* %41, align 4
  br label %44

44:                                               ; preds = %32, %26
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %3, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %3, align 4
  br label %22

48:                                               ; preds = %22
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %2, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %2, align 4
  br label %18

52:                                               ; preds = %18
  %53 = call i32 (...) @PicoFrame()
  %54 = load i64, i64* @vout_buf, align 8
  %55 = inttoptr i64 %54 to i16*
  %56 = load i32, i32* @vout_offset, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i16, i16* %55, i64 %57
  %59 = load i32, i32* @vout_width, align 4
  %60 = load i32, i32* @vout_height, align 4
  %61 = load i32, i32* @vout_width, align 4
  %62 = mul nsw i32 %61, 2
  %63 = call i32 @video_cb(i16* %58, i32 %59, i32 %60, i32 %62)
  ret void
}

declare dso_local i64 @environ_cb(i32, i32*) #1

declare dso_local i32 @update_variables(...) #1

declare dso_local i32 @input_poll_cb(...) #1

declare dso_local i64 @input_state_cb(i32, i32, i32, i32) #1

declare dso_local i32 @PicoFrame(...) #1

declare dso_local i32 @video_cb(i16*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
