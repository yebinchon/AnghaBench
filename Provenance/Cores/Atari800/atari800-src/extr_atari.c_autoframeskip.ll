; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_atari.c_autoframeskip.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_atari.c_autoframeskip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@autoframeskip.afs_lastframe = internal global i32 0, align 4
@autoframeskip.afs_discard = internal global i32 0, align 4
@autoframeskip.afs_lasttime = internal global double 0.000000e+00, align 8
@autoframeskip.afs_sleeptime = internal global double 0.000000e+00, align 8
@Atari800_nframes = common dso_local global i32 0, align 4
@Atari800_tv_mode = common dso_local global i64 0, align 8
@Atari800_TV_PAL = common dso_local global i64 0, align 8
@Atari800_FPS_PAL = common dso_local global i64 0, align 8
@Atari800_FPS_NTSC = common dso_local global i64 0, align 8
@Atari800_refresh_rate = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (double, double)* @autoframeskip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @autoframeskip(double %0, double %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  store double %0, double* %3, align 8
  store double %1, double* %4, align 8
  %9 = load double, double* %4, align 8
  %10 = load double, double* %3, align 8
  %11 = fsub double %9, %10
  %12 = fcmp ogt double %11, 0.000000e+00
  br i1 %12, label %13, label %19

13:                                               ; preds = %2
  %14 = load double, double* %4, align 8
  %15 = load double, double* %3, align 8
  %16 = fsub double %14, %15
  %17 = load double, double* @autoframeskip.afs_sleeptime, align 8
  %18 = fadd double %17, %16
  store double %18, double* @autoframeskip.afs_sleeptime, align 8
  br label %19

19:                                               ; preds = %13, %2
  %20 = load double, double* %3, align 8
  %21 = load double, double* @autoframeskip.afs_lasttime, align 8
  %22 = fsub double %20, %21
  %23 = fcmp ogt double %22, 5.000000e-01
  br i1 %23, label %24, label %85

24:                                               ; preds = %19
  %25 = load i32, i32* @Atari800_nframes, align 4
  %26 = load i32, i32* @autoframeskip.afs_lastframe, align 4
  %27 = sub nsw i32 %25, %26
  %28 = sitofp i32 %27 to double
  %29 = load i64, i64* @Atari800_tv_mode, align 8
  %30 = load i64, i64* @Atari800_TV_PAL, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %24
  %33 = load i64, i64* @Atari800_FPS_PAL, align 8
  br label %36

34:                                               ; preds = %24
  %35 = load i64, i64* @Atari800_FPS_NTSC, align 8
  br label %36

36:                                               ; preds = %34, %32
  %37 = phi i64 [ %33, %32 ], [ %35, %34 ]
  %38 = sitofp i64 %37 to double
  %39 = fdiv double %28, %38
  store double %39, double* %7, align 8
  %40 = load double, double* %3, align 8
  %41 = load double, double* @autoframeskip.afs_lasttime, align 8
  %42 = fsub double %40, %41
  store double %42, double* %8, align 8
  %43 = load double, double* %7, align 8
  %44 = fmul double 1.000000e+02, %43
  %45 = load double, double* %8, align 8
  %46 = fdiv double %44, %45
  store double %46, double* %5, align 8
  %47 = load double, double* @autoframeskip.afs_sleeptime, align 8
  %48 = fmul double 1.000000e+02, %47
  %49 = load double, double* %8, align 8
  %50 = fdiv double %48, %49
  store double %50, double* %6, align 8
  %51 = load i32, i32* @autoframeskip.afs_discard, align 4
  %52 = icmp slt i32 %51, 3
  br i1 %52, label %53, label %61

53:                                               ; preds = %36
  %54 = load double, double* %8, align 8
  %55 = load double, double* %7, align 8
  %56 = fmul double 2.000000e+00, %55
  %57 = fcmp ogt double %54, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %53
  %59 = load i32, i32* @autoframeskip.afs_discard, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* @autoframeskip.afs_discard, align 4
  br label %82

61:                                               ; preds = %53, %36
  store i32 0, i32* @autoframeskip.afs_discard, align 4
  %62 = load double, double* %5, align 8
  %63 = fcmp olt double %62, 9.000000e+01
  br i1 %63, label %64, label %71

64:                                               ; preds = %61
  %65 = load i32, i32* @Atari800_refresh_rate, align 4
  %66 = icmp slt i32 %65, 4
  br i1 %66, label %67, label %70

67:                                               ; preds = %64
  %68 = load i32, i32* @Atari800_refresh_rate, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* @Atari800_refresh_rate, align 4
  br label %70

70:                                               ; preds = %67, %64
  br label %81

71:                                               ; preds = %61
  %72 = load double, double* %6, align 8
  %73 = fcmp ogt double %72, 2.000000e+01
  br i1 %73, label %74, label %80

74:                                               ; preds = %71
  %75 = load i32, i32* @Atari800_refresh_rate, align 4
  %76 = icmp sgt i32 %75, 1
  br i1 %76, label %77, label %80

77:                                               ; preds = %74
  %78 = load i32, i32* @Atari800_refresh_rate, align 4
  %79 = add nsw i32 %78, -1
  store i32 %79, i32* @Atari800_refresh_rate, align 4
  br label %80

80:                                               ; preds = %77, %74, %71
  br label %81

81:                                               ; preds = %80, %70
  br label %82

82:                                               ; preds = %81, %58
  store double 0.000000e+00, double* @autoframeskip.afs_sleeptime, align 8
  %83 = load i32, i32* @Atari800_nframes, align 4
  store i32 %83, i32* @autoframeskip.afs_lastframe, align 4
  %84 = call double (...) @Util_time()
  store double %84, double* @autoframeskip.afs_lasttime, align 8
  br label %85

85:                                               ; preds = %82, %19
  ret void
}

declare dso_local double @Util_time(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
