; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/psp/extr_emu.c_blit1.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/psp/extr_emu.c_blit1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PicoOpt = common dso_local global i32 0, align 4
@PicoDraw2FB = common dso_local global i8* null, align 8
@PicoAHW = common dso_local global i32 0, align 4
@PAHW_PICO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @blit1() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = load i32, i32* @PicoOpt, align 4
  %4 = and i32 %3, 16
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %38

6:                                                ; preds = %0
  %7 = load i8*, i8** @PicoDraw2FB, align 8
  %8 = getelementptr inbounds i8, i8* %7, i64 8
  store i8* %8, i8** %2, align 8
  store i32 8, i32* %1, align 4
  br label %9

9:                                                ; preds = %16, %6
  %10 = load i32, i32* %1, align 4
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %21

12:                                               ; preds = %9
  %13 = load i8*, i8** %2, align 8
  %14 = bitcast i8* %13 to i32*
  %15 = call i32 @memset32(i32* %14, i32 -522133280, i32 80)
  br label %16

16:                                               ; preds = %12
  %17 = load i32, i32* %1, align 4
  %18 = add nsw i32 %17, -1
  store i32 %18, i32* %1, align 4
  %19 = load i8*, i8** %2, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 512
  store i8* %20, i8** %2, align 8
  br label %9

21:                                               ; preds = %9
  %22 = load i8*, i8** @PicoDraw2FB, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 118784
  %24 = getelementptr inbounds i8, i8* %23, i64 8
  store i8* %24, i8** %2, align 8
  store i32 8, i32* %1, align 4
  br label %25

25:                                               ; preds = %32, %21
  %26 = load i32, i32* %1, align 4
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %25
  %29 = load i8*, i8** %2, align 8
  %30 = bitcast i8* %29 to i32*
  %31 = call i32 @memset32(i32* %30, i32 -522133280, i32 80)
  br label %32

32:                                               ; preds = %28
  %33 = load i32, i32* %1, align 4
  %34 = add nsw i32 %33, -1
  store i32 %34, i32* %1, align 4
  %35 = load i8*, i8** %2, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 512
  store i8* %36, i8** %2, align 8
  br label %25

37:                                               ; preds = %25
  br label %38

38:                                               ; preds = %37, %0
  %39 = load i32, i32* @PicoAHW, align 4
  %40 = load i32, i32* @PAHW_PICO, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = call i32 (...) @draw_pico_ptr()
  br label %45

45:                                               ; preds = %43, %38
  %46 = call i32 (...) @blitscreen_clut()
  ret void
}

declare dso_local i32 @memset32(i32*, i32, i32) #1

declare dso_local i32 @draw_pico_ptr(...) #1

declare dso_local i32 @blitscreen_clut(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
