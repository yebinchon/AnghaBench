; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/psp/extr_emu.c_draw_pico_ptr.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/psp/extr_emu.c_draw_pico_ptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VRAM_STUFF = common dso_local global i64 0, align 8
@pico_inp_mode = common dso_local global i64 0, align 8
@blit_16bit_mode = common dso_local global i64 0, align 8
@pico_pen_y = common dso_local global i32 0, align 4
@PICO_PEN_ADJUST_Y = common dso_local global i32 0, align 4
@pico_pen_x = common dso_local global i64 0, align 8
@PICO_PEN_ADJUST_X = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @draw_pico_ptr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @draw_pico_ptr() #0 {
  %1 = alloca i8*, align 8
  %2 = load i64, i64* @VRAM_STUFF, align 8
  %3 = inttoptr i64 %2 to i8*
  %4 = getelementptr inbounds i8, i8* %3, i64 16
  store i8* %4, i8** %1, align 8
  %5 = load i64, i64* @pico_inp_mode, align 8
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %0
  %8 = load i64, i64* @blit_16bit_mode, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %7, %0
  br label %42

11:                                               ; preds = %7
  %12 = load i32, i32* @pico_pen_y, align 4
  %13 = load i32, i32* @PICO_PEN_ADJUST_Y, align 4
  %14 = add nsw i32 %12, %13
  %15 = mul nsw i32 512, %14
  %16 = load i8*, i8** %1, align 8
  %17 = sext i32 %15 to i64
  %18 = getelementptr inbounds i8, i8* %16, i64 %17
  store i8* %18, i8** %1, align 8
  %19 = load i64, i64* @pico_pen_x, align 8
  %20 = load i64, i64* @PICO_PEN_ADJUST_X, align 8
  %21 = add nsw i64 %19, %20
  %22 = load i8*, i8** %1, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 %21
  store i8* %23, i8** %1, align 8
  %24 = load i8*, i8** %1, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 -1
  store i8 -32, i8* %25, align 1
  %26 = load i8*, i8** %1, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 0
  store i8 -16, i8* %27, align 1
  %28 = load i8*, i8** %1, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 1
  store i8 -32, i8* %29, align 1
  %30 = load i8*, i8** %1, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 511
  store i8 -16, i8* %31, align 1
  %32 = load i8*, i8** %1, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 512
  store i8 -16, i8* %33, align 1
  %34 = load i8*, i8** %1, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 513
  store i8 -16, i8* %35, align 1
  %36 = load i8*, i8** %1, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 1023
  store i8 -32, i8* %37, align 1
  %38 = load i8*, i8** %1, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 1024
  store i8 -16, i8* %39, align 1
  %40 = load i8*, i8** %1, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 1025
  store i8 -32, i8* %41, align 1
  br label %42

42:                                               ; preds = %11, %10
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
