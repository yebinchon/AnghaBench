; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_in_arp.c_arp_ifinit.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_in_arp.c_arp_ifinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32 }
%struct.ifaddr = type { %struct.sockaddr*, i32, i32 }
%struct.sockaddr = type { i32 }

@arp_rtrequest = common dso_local global i32 0, align 4
@RTF_CLONING = common dso_local global i32 0, align 4
@ARPOP_REQUEST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @arp_ifinit(%struct.ifnet* %0, %struct.ifaddr* %1) #0 {
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca %struct.ifaddr*, align 8
  %5 = alloca %struct.sockaddr*, align 8
  store %struct.ifnet* %0, %struct.ifnet** %3, align 8
  store %struct.ifaddr* %1, %struct.ifaddr** %4, align 8
  %6 = load %struct.ifaddr*, %struct.ifaddr** %4, align 8
  %7 = call i32 @IFA_LOCK(%struct.ifaddr* %6)
  %8 = load i32, i32* @arp_rtrequest, align 4
  %9 = load %struct.ifaddr*, %struct.ifaddr** %4, align 8
  %10 = getelementptr inbounds %struct.ifaddr, %struct.ifaddr* %9, i32 0, i32 2
  store i32 %8, i32* %10, align 4
  %11 = load i32, i32* @RTF_CLONING, align 4
  %12 = load %struct.ifaddr*, %struct.ifaddr** %4, align 8
  %13 = getelementptr inbounds %struct.ifaddr, %struct.ifaddr* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = or i32 %14, %11
  store i32 %15, i32* %13, align 8
  %16 = load %struct.ifaddr*, %struct.ifaddr** %4, align 8
  %17 = getelementptr inbounds %struct.ifaddr, %struct.ifaddr* %16, i32 0, i32 0
  %18 = load %struct.sockaddr*, %struct.sockaddr** %17, align 8
  store %struct.sockaddr* %18, %struct.sockaddr** %5, align 8
  %19 = load %struct.ifaddr*, %struct.ifaddr** %4, align 8
  %20 = call i32 @IFA_UNLOCK(%struct.ifaddr* %19)
  %21 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %22 = load i32, i32* @ARPOP_REQUEST, align 4
  %23 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %24 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %25 = call i32 @dlil_send_arp(%struct.ifnet* %21, i32 %22, i32* null, %struct.sockaddr* %23, i32* null, %struct.sockaddr* %24, i32 0)
  ret void
}

declare dso_local i32 @IFA_LOCK(%struct.ifaddr*) #1

declare dso_local i32 @IFA_UNLOCK(%struct.ifaddr*) #1

declare dso_local i32 @dlil_send_arp(%struct.ifnet*, i32, i32*, %struct.sockaddr*, i32*, %struct.sockaddr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
