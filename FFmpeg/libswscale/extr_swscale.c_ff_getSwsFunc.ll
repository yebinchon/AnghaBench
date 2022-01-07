; ModuleID = '/home/carl/AnghaBench/FFmpeg/libswscale/extr_swscale.c_ff_getSwsFunc.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libswscale/extr_swscale.c_ff_getSwsFunc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ARCH_PPC = common dso_local global i64 0, align 8
@ARCH_X86 = common dso_local global i64 0, align 8
@ARCH_AARCH64 = common dso_local global i64 0, align 8
@ARCH_ARM = common dso_local global i64 0, align 8
@swscale = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_getSwsFunc(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32*, i32** %2, align 8
  %4 = call i32 @sws_init_swscale(i32* %3)
  %5 = load i64, i64* @ARCH_PPC, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load i32*, i32** %2, align 8
  %9 = call i32 @ff_sws_init_swscale_ppc(i32* %8)
  br label %10

10:                                               ; preds = %7, %1
  %11 = load i64, i64* @ARCH_X86, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = load i32*, i32** %2, align 8
  %15 = call i32 @ff_sws_init_swscale_x86(i32* %14)
  br label %16

16:                                               ; preds = %13, %10
  %17 = load i64, i64* @ARCH_AARCH64, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = load i32*, i32** %2, align 8
  %21 = call i32 @ff_sws_init_swscale_aarch64(i32* %20)
  br label %22

22:                                               ; preds = %19, %16
  %23 = load i64, i64* @ARCH_ARM, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = load i32*, i32** %2, align 8
  %27 = call i32 @ff_sws_init_swscale_arm(i32* %26)
  br label %28

28:                                               ; preds = %25, %22
  %29 = load i32, i32* @swscale, align 4
  ret i32 %29
}

declare dso_local i32 @sws_init_swscale(i32*) #1

declare dso_local i32 @ff_sws_init_swscale_ppc(i32*) #1

declare dso_local i32 @ff_sws_init_swscale_x86(i32*) #1

declare dso_local i32 @ff_sws_init_swscale_aarch64(i32*) #1

declare dso_local i32 @ff_sws_init_swscale_arm(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
