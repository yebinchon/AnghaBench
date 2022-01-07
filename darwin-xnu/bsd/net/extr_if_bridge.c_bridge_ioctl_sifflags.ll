; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if_bridge.c_bridge_ioctl_sifflags.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if_bridge.c_bridge_ioctl_sifflags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bridge_softc = type { i32 }
%struct.ifbreq = type { i32, i32 }
%struct.bridge_iflist = type { i32, %struct.bstp_port }
%struct.bstp_port = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@IFBIF_SPAN = common dso_local global i32 0, align 4
@IFBIF_STP = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@IFBIFMASK = common dso_local global i32 0, align 4
@IFBIF_BSTP_AUTOEDGE = common dso_local global i32 0, align 4
@IFBIF_BSTP_AUTOPTP = common dso_local global i32 0, align 4
@IFBIF_BSTP_EDGE = common dso_local global i32 0, align 4
@IFBIF_BSTP_PTP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bridge_softc*, i8*)* @bridge_ioctl_sifflags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bridge_ioctl_sifflags(%struct.bridge_softc* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bridge_softc*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ifbreq*, align 8
  %7 = alloca %struct.bridge_iflist*, align 8
  store %struct.bridge_softc* %0, %struct.bridge_softc** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.ifbreq*
  store %struct.ifbreq* %9, %struct.ifbreq** %6, align 8
  %10 = load %struct.bridge_softc*, %struct.bridge_softc** %4, align 8
  %11 = call i32 @bridge_in_bsd_mode(%struct.bridge_softc* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @EINVAL, align 4
  store i32 %14, i32* %3, align 4
  br label %51

15:                                               ; preds = %2
  %16 = load %struct.bridge_softc*, %struct.bridge_softc** %4, align 8
  %17 = load %struct.ifbreq*, %struct.ifbreq** %6, align 8
  %18 = getelementptr inbounds %struct.ifbreq, %struct.ifbreq* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.bridge_iflist* @bridge_lookup_member(%struct.bridge_softc* %16, i32 %19)
  store %struct.bridge_iflist* %20, %struct.bridge_iflist** %7, align 8
  %21 = load %struct.bridge_iflist*, %struct.bridge_iflist** %7, align 8
  %22 = icmp eq %struct.bridge_iflist* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %15
  %24 = load i32, i32* @ENOENT, align 4
  store i32 %24, i32* %3, align 4
  br label %51

25:                                               ; preds = %15
  %26 = load %struct.ifbreq*, %struct.ifbreq** %6, align 8
  %27 = getelementptr inbounds %struct.ifbreq, %struct.ifbreq* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @IFBIF_SPAN, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %25
  %33 = load i32, i32* @EINVAL, align 4
  store i32 %33, i32* %3, align 4
  br label %51

34:                                               ; preds = %25
  %35 = load %struct.ifbreq*, %struct.ifbreq** %6, align 8
  %36 = getelementptr inbounds %struct.ifbreq, %struct.ifbreq* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @IFBIF_STP, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %34
  %42 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %42, i32* %3, align 4
  br label %51

43:                                               ; preds = %34
  %44 = load %struct.ifbreq*, %struct.ifbreq** %6, align 8
  %45 = getelementptr inbounds %struct.ifbreq, %struct.ifbreq* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @IFBIFMASK, align 4
  %48 = and i32 %46, %47
  %49 = load %struct.bridge_iflist*, %struct.bridge_iflist** %7, align 8
  %50 = getelementptr inbounds %struct.bridge_iflist, %struct.bridge_iflist* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 4
  store i32 0, i32* %3, align 4
  br label %51

51:                                               ; preds = %43, %41, %32, %23, %13
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i32 @bridge_in_bsd_mode(%struct.bridge_softc*) #1

declare dso_local %struct.bridge_iflist* @bridge_lookup_member(%struct.bridge_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
