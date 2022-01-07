; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if_bond.c_if_siflladdr.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if_bond.c_if_siflladdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32 }
%struct.ether_addr = type { i32 }
%struct.ifreq = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@AF_UNSPEC = common dso_local global i32 0, align 4
@ETHER_ADDR_LEN = common dso_local global i32 0, align 4
@SIOCSIFLLADDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*, %struct.ether_addr*)* @if_siflladdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @if_siflladdr(%struct.ifnet* %0, %struct.ether_addr* %1) #0 {
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca %struct.ether_addr*, align 8
  %5 = alloca %struct.ifreq, align 4
  store %struct.ifnet* %0, %struct.ifnet** %3, align 8
  store %struct.ether_addr* %1, %struct.ether_addr** %4, align 8
  %6 = load i32, i32* @AF_UNSPEC, align 4
  %7 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %5, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 2
  store i32 %6, i32* %8, align 4
  %9 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %10 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %5, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  store i32 %9, i32* %11, align 4
  %12 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %5, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.ether_addr*, %struct.ether_addr** %4, align 8
  %16 = call i32 @ether_addr_copy(i32 %14, %struct.ether_addr* %15)
  %17 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %18 = load i32, i32* @SIOCSIFLLADDR, align 4
  %19 = call i32 @ifnet_ioctl(%struct.ifnet* %17, i32 0, i32 %18, %struct.ifreq* %5)
  ret i32 %19
}

declare dso_local i32 @ether_addr_copy(i32, %struct.ether_addr*) #1

declare dso_local i32 @ifnet_ioctl(%struct.ifnet*, i32, i32, %struct.ifreq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
