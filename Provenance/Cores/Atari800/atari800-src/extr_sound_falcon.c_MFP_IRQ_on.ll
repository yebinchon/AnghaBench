; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_sound_falcon.c_MFP_IRQ_on.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_sound_falcon.c_MFP_IRQ_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dsp_buffer1 = common dso_local global i64 0, align 8
@sndbufsize = common dso_local global i32 0, align 4
@dsprate = common dso_local global i64 0, align 8
@RATE25KHZ = common dso_local global i64 0, align 8
@DMActrlptr = common dso_local global i32* null, align 8
@RATE50KHZ = common dso_local global i64 0, align 8
@timer_A = common dso_local global i32 0, align 4
@IVECTOR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @MFP_IRQ_on() #0 {
  %1 = load i64, i64* @dsp_buffer1, align 8
  %2 = load i32, i32* @sndbufsize, align 4
  %3 = call i32 @Setbuffer(i64 %1, i32 %2)
  %4 = load i64, i64* @dsprate, align 8
  %5 = load i64, i64* @RATE25KHZ, align 8
  %6 = icmp eq i64 %4, %5
  br i1 %6, label %7, label %10

7:                                                ; preds = %0
  %8 = load i32*, i32** @DMActrlptr, align 8
  %9 = getelementptr inbounds i32, i32* %8, i64 16
  store i32 130, i32* %9, align 4
  br label %21

10:                                               ; preds = %0
  %11 = load i64, i64* @dsprate, align 8
  %12 = load i64, i64* @RATE50KHZ, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %10
  %15 = load i32*, i32** @DMActrlptr, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 16
  store i32 131, i32* %16, align 4
  br label %20

17:                                               ; preds = %10
  %18 = load i32*, i32** @DMActrlptr, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 16
  store i32 129, i32* %19, align 4
  br label %20

20:                                               ; preds = %17, %14
  br label %21

21:                                               ; preds = %20, %7
  %22 = load i32*, i32** @DMActrlptr, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  store i32 1027, i32* %23, align 4
  %24 = load i32, i32* @timer_A, align 4
  %25 = call i32 @Mfpint(i32 13, i32 %24)
  %26 = load i32, i32* @timer_A, align 4
  %27 = call i32 @Xbtimer(i32 0, i32 8, i32 1, i32 %26)
  %28 = load i32, i32* @IVECTOR, align 4
  %29 = and i32 %28, -9
  store i32 %29, i32* @IVECTOR, align 4
  %30 = call i32 @Jenabint(i32 13)
  ret void
}

declare dso_local i32 @Setbuffer(i64, i32) #1

declare dso_local i32 @Mfpint(i32, i32) #1

declare dso_local i32 @Xbtimer(i32, i32, i32, i32) #1

declare dso_local i32 @Jenabint(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
