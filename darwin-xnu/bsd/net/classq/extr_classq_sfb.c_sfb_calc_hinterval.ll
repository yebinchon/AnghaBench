; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/classq/extr_classq_sfb.c_sfb_calc_hinterval.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/classq/extr_classq_sfb.c_sfb_calc_hinterval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sfb = type { i32, i32 }
%struct.timespec = type { i32 }

@sfb_hinterval = common dso_local global i64 0, align 8
@NSEC_PER_SEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sfb*, i32*)* @sfb_calc_hinterval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sfb_calc_hinterval(%struct.sfb* %0, i32* %1) #0 {
  %3 = alloca %struct.sfb*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.timespec, align 4
  store %struct.sfb* %0, %struct.sfb** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %5, align 4
  %7 = load i32*, i32** %4, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load i32*, i32** %4, align 8
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %5, align 4
  br label %12

12:                                               ; preds = %9, %2
  %13 = load i64, i64* @sfb_hinterval, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = load i64, i64* @sfb_hinterval, align 8
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* %5, align 4
  br label %31

18:                                               ; preds = %12
  %19 = load i32*, i32** %4, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %18
  %22 = load i32, i32* %5, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %21, %18
  %25 = load %struct.sfb*, %struct.sfb** %3, align 8
  %26 = call i64 @SFB_HINTERVAL(%struct.sfb* %25)
  %27 = trunc i64 %26 to i32
  %28 = load i32, i32* @NSEC_PER_SEC, align 4
  %29 = mul nsw i32 %27, %28
  store i32 %29, i32* %5, align 4
  br label %30

30:                                               ; preds = %24, %21
  br label %31

31:                                               ; preds = %30, %15
  %32 = load %struct.sfb*, %struct.sfb** %3, align 8
  %33 = getelementptr inbounds %struct.sfb, %struct.sfb* %32, i32 0, i32 1
  %34 = call i32 @net_nsectimer(i32* %5, i32* %33)
  %35 = call i32 @nanouptime(%struct.timespec* %6)
  %36 = load %struct.sfb*, %struct.sfb** %3, align 8
  %37 = getelementptr inbounds %struct.sfb, %struct.sfb* %36, i32 0, i32 1
  %38 = load %struct.sfb*, %struct.sfb** %3, align 8
  %39 = getelementptr inbounds %struct.sfb, %struct.sfb* %38, i32 0, i32 0
  %40 = call i32 @net_timeradd(%struct.timespec* %6, i32* %37, i32* %39)
  ret void
}

declare dso_local i64 @SFB_HINTERVAL(%struct.sfb*) #1

declare dso_local i32 @net_nsectimer(i32*, i32*) #1

declare dso_local i32 @nanouptime(%struct.timespec*) #1

declare dso_local i32 @net_timeradd(%struct.timespec*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
