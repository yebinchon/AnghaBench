; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/FCEU/FCEU/~attic/pc/extr_sdl-video.c_PtoV.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/FCEU/FCEU/~attic/pc/extr_sdl-video.c_PtoV.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@eys = common dso_local global double 0.000000e+00, align 8
@exs = common dso_local global double 0.000000e+00, align 8
@eoptions = common dso_local global i32 0, align 4
@EO_CLIPSIDES = common dso_local global i32 0, align 4
@srendline = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @PtoV(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = sitofp i32 %5 to double
  %7 = load double, double* @eys, align 8
  %8 = fdiv double %6, %7
  %9 = fptosi double %8 to i32
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %3, align 4
  %11 = sitofp i32 %10 to double
  %12 = load double, double* @exs, align 8
  %13 = fdiv double %11, %12
  %14 = fptosi double %13 to i32
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* @eoptions, align 4
  %16 = load i32, i32* @EO_CLIPSIDES, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load i32, i32* %3, align 4
  %21 = add nsw i32 %20, 8
  store i32 %21, i32* %3, align 4
  br label %22

22:                                               ; preds = %19, %2
  %23 = load i64, i64* @srendline, align 8
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = add nsw i64 %25, %23
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* %4, align 4
  %30 = shl i32 %29, 16
  %31 = or i32 %28, %30
  ret i32 %31
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
