; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if_bridge.c_bridge_ioctl_saddr32.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if_bridge.c_bridge_ioctl_saddr32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bridge_softc = type { i32 }
%struct.ifbareq32 = type { i32, i32, i32, i32 }
%struct.bridge_iflist = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bridge_softc*, i8*)* @bridge_ioctl_saddr32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bridge_ioctl_saddr32(%struct.bridge_softc* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bridge_softc*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ifbareq32*, align 8
  %7 = alloca %struct.bridge_iflist*, align 8
  %8 = alloca i32, align 4
  store %struct.bridge_softc* %0, %struct.bridge_softc** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.ifbareq32*
  store %struct.ifbareq32* %10, %struct.ifbareq32** %6, align 8
  %11 = load %struct.bridge_softc*, %struct.bridge_softc** %4, align 8
  %12 = call i32 @bridge_in_bsd_mode(%struct.bridge_softc* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %39

15:                                               ; preds = %2
  %16 = load %struct.bridge_softc*, %struct.bridge_softc** %4, align 8
  %17 = load %struct.ifbareq32*, %struct.ifbareq32** %6, align 8
  %18 = getelementptr inbounds %struct.ifbareq32, %struct.ifbareq32* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.bridge_iflist* @bridge_lookup_member(%struct.bridge_softc* %16, i32 %19)
  store %struct.bridge_iflist* %20, %struct.bridge_iflist** %7, align 8
  %21 = load %struct.bridge_iflist*, %struct.bridge_iflist** %7, align 8
  %22 = icmp eq %struct.bridge_iflist* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %15
  %24 = load i32, i32* @ENOENT, align 4
  store i32 %24, i32* %3, align 4
  br label %39

25:                                               ; preds = %15
  %26 = load %struct.bridge_softc*, %struct.bridge_softc** %4, align 8
  %27 = load %struct.ifbareq32*, %struct.ifbareq32** %6, align 8
  %28 = getelementptr inbounds %struct.ifbareq32, %struct.ifbareq32* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.ifbareq32*, %struct.ifbareq32** %6, align 8
  %31 = getelementptr inbounds %struct.ifbareq32, %struct.ifbareq32* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.bridge_iflist*, %struct.bridge_iflist** %7, align 8
  %34 = load %struct.ifbareq32*, %struct.ifbareq32** %6, align 8
  %35 = getelementptr inbounds %struct.ifbareq32, %struct.ifbareq32* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @bridge_rtupdate(%struct.bridge_softc* %26, i32 %29, i32 %32, %struct.bridge_iflist* %33, i32 1, i32 %36)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %25, %23, %14
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32 @bridge_in_bsd_mode(%struct.bridge_softc*) #1

declare dso_local %struct.bridge_iflist* @bridge_lookup_member(%struct.bridge_softc*, i32) #1

declare dso_local i32 @bridge_rtupdate(%struct.bridge_softc*, i32, i32, %struct.bridge_iflist*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
