; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_atari.c_Atari800_Sync.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_atari.c_Atari800_Sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Atari800_Sync.lasttime = internal global double 0.000000e+00, align 8
@Atari800_tv_mode = common dso_local global i64 0, align 8
@Atari800_TV_PAL = common dso_local global i64 0, align 8
@Atari800_FPS_PAL = common dso_local global double 0.000000e+00, align 8
@Atari800_FPS_NTSC = common dso_local global double 0.000000e+00, align 8
@Atari800_auto_frameskip = common dso_local global i64 0, align 8
@Atari800_refresh_rate = common dso_local global double 0.000000e+00, align 8
@UI_is_active = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Atari800_Sync() #0 {
  %1 = alloca double, align 8
  %2 = alloca double, align 8
  %3 = load i64, i64* @Atari800_tv_mode, align 8
  %4 = load i64, i64* @Atari800_TV_PAL, align 8
  %5 = icmp eq i64 %3, %4
  br i1 %5, label %6, label %8

6:                                                ; preds = %0
  %7 = load double, double* @Atari800_FPS_PAL, align 8
  br label %10

8:                                                ; preds = %0
  %9 = load double, double* @Atari800_FPS_NTSC, align 8
  br label %10

10:                                               ; preds = %8, %6
  %11 = phi double [ %7, %6 ], [ %9, %8 ]
  %12 = fdiv double 1.000000e+00, %11
  store double %12, double* %1, align 8
  %13 = load double, double* %1, align 8
  %14 = load double, double* @Atari800_Sync.lasttime, align 8
  %15 = fadd double %14, %13
  store double %15, double* @Atari800_Sync.lasttime, align 8
  %16 = call double (...) @Util_time()
  store double %16, double* %2, align 8
  %17 = load i64, i64* @Atari800_auto_frameskip, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %10
  %20 = load double, double* %2, align 8
  %21 = load double, double* @Atari800_Sync.lasttime, align 8
  %22 = call i32 @autoframeskip(double %20, double %21)
  br label %23

23:                                               ; preds = %19, %10
  %24 = load double, double* @Atari800_Sync.lasttime, align 8
  %25 = load double, double* %2, align 8
  %26 = fsub double %24, %25
  %27 = call i32 @Util_sleep(double %26)
  %28 = call double (...) @Util_time()
  store double %28, double* %2, align 8
  %29 = load double, double* @Atari800_Sync.lasttime, align 8
  %30 = load double, double* %1, align 8
  %31 = fadd double %29, %30
  %32 = load double, double* %2, align 8
  %33 = fcmp olt double %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %23
  %35 = load double, double* %2, align 8
  store double %35, double* @Atari800_Sync.lasttime, align 8
  br label %36

36:                                               ; preds = %34, %23
  ret void
}

declare dso_local double @Util_time(...) #1

declare dso_local i32 @autoframeskip(double, double) #1

declare dso_local i32 @Util_sleep(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
