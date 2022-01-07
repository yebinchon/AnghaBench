; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/FCEU/FCEU/~attic/pc/extr_sdl-throttle.c_SpeedThrottle.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/FCEU/FCEU/~attic/pc/extr_sdl-throttle.c_SpeedThrottle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SpeedThrottle.ttime = internal global i32 0, align 4
@SpeedThrottle.ltime = internal global i32 0, align 4
@tfreq = common dso_local global i32 0, align 4
@desiredfps = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SpeedThrottle() #0 {
  %1 = alloca i32, align 4
  br label %2

2:                                                ; preds = %27, %0
  %3 = call i32 (...) @SDL_GetTicks()
  store i32 %3, i32* @SpeedThrottle.ttime, align 4
  %4 = load i32, i32* @SpeedThrottle.ttime, align 4
  %5 = mul nsw i32 %4, 10000
  store i32 %5, i32* @SpeedThrottle.ttime, align 4
  %6 = load i32, i32* @SpeedThrottle.ttime, align 4
  %7 = load i32, i32* @SpeedThrottle.ltime, align 4
  %8 = sub nsw i32 %6, %7
  %9 = load i32, i32* @tfreq, align 4
  %10 = load i32, i32* @desiredfps, align 4
  %11 = sdiv i32 %9, %10
  %12 = icmp slt i32 %8, %11
  br i1 %12, label %13, label %28

13:                                               ; preds = %2
  %14 = load i32, i32* @tfreq, align 4
  %15 = load i32, i32* @desiredfps, align 4
  %16 = sdiv i32 %14, %15
  %17 = load i32, i32* @SpeedThrottle.ttime, align 4
  %18 = load i32, i32* @SpeedThrottle.ltime, align 4
  %19 = sub nsw i32 %17, %18
  %20 = sub nsw i32 %16, %19
  store i32 %20, i32* %1, align 4
  %21 = load i32, i32* %1, align 4
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %13
  %24 = load i32, i32* %1, align 4
  %25 = sdiv i32 %24, 10000
  %26 = call i32 @SDL_Delay(i32 %25)
  br label %27

27:                                               ; preds = %23, %13
  br label %2

28:                                               ; preds = %2
  %29 = load i32, i32* @SpeedThrottle.ttime, align 4
  %30 = load i32, i32* @SpeedThrottle.ltime, align 4
  %31 = sub nsw i32 %29, %30
  %32 = load i32, i32* @tfreq, align 4
  %33 = mul nsw i32 %32, 4
  %34 = load i32, i32* @desiredfps, align 4
  %35 = sdiv i32 %33, %34
  %36 = icmp sge i32 %31, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %28
  %38 = load i32, i32* @SpeedThrottle.ttime, align 4
  store i32 %38, i32* @SpeedThrottle.ltime, align 4
  br label %45

39:                                               ; preds = %28
  %40 = load i32, i32* @tfreq, align 4
  %41 = load i32, i32* @desiredfps, align 4
  %42 = sdiv i32 %40, %41
  %43 = load i32, i32* @SpeedThrottle.ltime, align 4
  %44 = add nsw i32 %43, %42
  store i32 %44, i32* @SpeedThrottle.ltime, align 4
  br label %45

45:                                               ; preds = %39, %37
  ret void
}

declare dso_local i32 @SDL_GetTicks(...) #1

declare dso_local i32 @SDL_Delay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
