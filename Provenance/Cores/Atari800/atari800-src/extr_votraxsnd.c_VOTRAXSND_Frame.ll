; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_votraxsnd.c_VOTRAXSND_Frame.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_votraxsnd.c_VOTRAXSND_Frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@samples_per_frame = common dso_local global double 0.000000e+00, align 8
@votrax_sync_samples = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@VOTRAXSND_busy = common dso_local global i32 0, align 4
@Atari800_TV_PAL = common dso_local global i64 0, align 8
@Atari800_tv_mode = common dso_local global i64 0, align 8
@POKEY_AUDF = common dso_local global double* null, align 8
@VOICEBOX_BASEAUDF = common dso_local global double 0.000000e+00, align 8
@VOICEBOX_enabled = common dso_local global i64 0, align 8
@VOICEBOX_ii = common dso_local global i64 0, align 8
@VTRX_RATE = common dso_local global i64 0, align 8
@dsprate = common dso_local global i64 0, align 8
@ratio = common dso_local global double 0.000000e+00, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @VOTRAXSND_Frame() #0 {
  %1 = call i32 (...) @votraxsnd_enabled()
  %2 = icmp ne i32 %1, 0
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  br label %14

4:                                                ; preds = %0
  %5 = load double, double* @samples_per_frame, align 8
  %6 = load i64, i64* @votrax_sync_samples, align 8
  %7 = sitofp i64 %6 to double
  %8 = fsub double %7, %5
  %9 = fptosi double %8 to i64
  store i64 %9, i64* @votrax_sync_samples, align 8
  %10 = load i64, i64* @votrax_sync_samples, align 8
  %11 = icmp sle i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %4
  store i64 0, i64* @votrax_sync_samples, align 8
  %13 = load i32, i32* @FALSE, align 4
  store i32 %13, i32* @VOTRAXSND_busy, align 4
  br label %14

14:                                               ; preds = %3, %12, %4
  ret void
}

declare dso_local i32 @votraxsnd_enabled(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
