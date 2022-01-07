; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if_fake.c_feth_ifnet_set_attrs.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if_fake.c_feth_ifnet_set_attrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@ETHER_ADDR_LEN = common dso_local global i32 0, align 4
@ETHERMTU = common dso_local global i32 0, align 4
@IFF_BROADCAST = common dso_local global i32 0, align 4
@IFF_MULTICAST = common dso_local global i32 0, align 4
@IFF_SIMPLEX = common dso_local global i32 0, align 4
@IFF_FLAGS_HWCSUM = common dso_local global i32 0, align 4
@IFNET_CSUM_IP = common dso_local global i32 0, align 4
@IFNET_CSUM_TCP = common dso_local global i32 0, align 4
@IFNET_CSUM_UDP = common dso_local global i32 0, align 4
@IFNET_CSUM_TCPIPV6 = common dso_local global i32 0, align 4
@IFNET_CSUM_UDPIPV6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32)* @feth_ifnet_set_attrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @feth_ifnet_set_attrs(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = call i32 @ifnet_set_capabilities_enabled(i32 %5, i32 0, i32 -1)
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %9 = call i32 @ifnet_set_addrlen(i32 %7, i32 %8)
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @ifnet_set_baudrate(i32 %10, i32 0)
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @ETHERMTU, align 4
  %14 = call i32 @ifnet_set_mtu(i32 %12, i32 %13)
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @IFF_BROADCAST, align 4
  %17 = load i32, i32* @IFF_MULTICAST, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @IFF_SIMPLEX, align 4
  %20 = or i32 %18, %19
  %21 = call i32 @ifnet_set_flags(i32 %15, i32 %20, i32 65535)
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @ifnet_set_hdrlen(i32 %22, i32 4)
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @IFF_FLAGS_HWCSUM, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %42

30:                                               ; preds = %2
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @IFNET_CSUM_IP, align 4
  %33 = load i32, i32* @IFNET_CSUM_TCP, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @IFNET_CSUM_UDP, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @IFNET_CSUM_TCPIPV6, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @IFNET_CSUM_UDPIPV6, align 4
  %40 = or i32 %38, %39
  %41 = call i32 @ifnet_set_offload(i32 %31, i32 %40)
  br label %45

42:                                               ; preds = %2
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @ifnet_set_offload(i32 %43, i32 0)
  br label %45

45:                                               ; preds = %42, %30
  ret void
}

declare dso_local i32 @ifnet_set_capabilities_enabled(i32, i32, i32) #1

declare dso_local i32 @ifnet_set_addrlen(i32, i32) #1

declare dso_local i32 @ifnet_set_baudrate(i32, i32) #1

declare dso_local i32 @ifnet_set_mtu(i32, i32) #1

declare dso_local i32 @ifnet_set_flags(i32, i32, i32) #1

declare dso_local i32 @ifnet_set_hdrlen(i32, i32) #1

declare dso_local i32 @ifnet_set_offload(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
