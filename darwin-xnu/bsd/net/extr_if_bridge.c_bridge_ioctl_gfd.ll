; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if_bridge.c_bridge_ioctl_gfd.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if_bridge.c_bridge_ioctl_gfd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bridge_softc = type { %struct.bstp_state }
%struct.bstp_state = type { i32 }
%struct.ifbrparam = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bridge_softc*, i8*)* @bridge_ioctl_gfd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bridge_ioctl_gfd(%struct.bridge_softc* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bridge_softc*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ifbrparam*, align 8
  %7 = alloca %struct.bstp_state*, align 8
  store %struct.bridge_softc* %0, %struct.bridge_softc** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.bridge_softc*, %struct.bridge_softc** %4, align 8
  %9 = call i32 @bridge_in_bsd_mode(%struct.bridge_softc* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %23

12:                                               ; preds = %2
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to %struct.ifbrparam*
  store %struct.ifbrparam* %14, %struct.ifbrparam** %6, align 8
  %15 = load %struct.bridge_softc*, %struct.bridge_softc** %4, align 8
  %16 = getelementptr inbounds %struct.bridge_softc, %struct.bridge_softc* %15, i32 0, i32 0
  store %struct.bstp_state* %16, %struct.bstp_state** %7, align 8
  %17 = load %struct.bstp_state*, %struct.bstp_state** %7, align 8
  %18 = getelementptr inbounds %struct.bstp_state, %struct.bstp_state* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = ashr i32 %19, 8
  %21 = load %struct.ifbrparam*, %struct.ifbrparam** %6, align 8
  %22 = getelementptr inbounds %struct.ifbrparam, %struct.ifbrparam* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  store i32 0, i32* %3, align 4
  br label %23

23:                                               ; preds = %12, %11
  %24 = load i32, i32* %3, align 4
  ret i32 %24
}

declare dso_local i32 @bridge_in_bsd_mode(%struct.bridge_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
