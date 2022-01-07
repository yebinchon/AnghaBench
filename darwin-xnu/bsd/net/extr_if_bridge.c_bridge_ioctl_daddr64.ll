; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if_bridge.c_bridge_ioctl_daddr64.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if_bridge.c_bridge_ioctl_daddr64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bridge_softc = type { i32 }
%struct.ifbareq64 = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bridge_softc*, i8*)* @bridge_ioctl_daddr64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bridge_ioctl_daddr64(%struct.bridge_softc* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bridge_softc*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ifbareq64*, align 8
  store %struct.bridge_softc* %0, %struct.bridge_softc** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = bitcast i8* %7 to %struct.ifbareq64*
  store %struct.ifbareq64* %8, %struct.ifbareq64** %6, align 8
  %9 = load %struct.bridge_softc*, %struct.bridge_softc** %4, align 8
  %10 = call i32 @bridge_in_bsd_mode(%struct.bridge_softc* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %22

13:                                               ; preds = %2
  %14 = load %struct.bridge_softc*, %struct.bridge_softc** %4, align 8
  %15 = load %struct.ifbareq64*, %struct.ifbareq64** %6, align 8
  %16 = getelementptr inbounds %struct.ifbareq64, %struct.ifbareq64* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.ifbareq64*, %struct.ifbareq64** %6, align 8
  %19 = getelementptr inbounds %struct.ifbareq64, %struct.ifbareq64* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @bridge_rtdaddr(%struct.bridge_softc* %14, i32 %17, i32 %20)
  store i32 %21, i32* %3, align 4
  br label %22

22:                                               ; preds = %13, %12
  %23 = load i32, i32* %3, align 4
  ret i32 %23
}

declare dso_local i32 @bridge_in_bsd_mode(%struct.bridge_softc*) #1

declare dso_local i32 @bridge_rtdaddr(%struct.bridge_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
