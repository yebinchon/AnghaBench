; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if_ipsec.c_ipsec_ctl_bind.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if_ipsec.c_ipsec_ctl_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_ctl = type { i32 }
%struct.ipsec_pcb = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@ipsec_pcb_zone = common dso_local global i32 0, align 4
@MBUF_SC_OAM = common dso_local global i32 0, align 4
@ipsec_lck_grp = common dso_local global i32 0, align 4
@ipsec_lck_attr = common dso_local global i32 0, align 4
@IPSEC_IF_DEFAULT_RING_SIZE = common dso_local global i32 0, align 4
@IPSEC_IF_DEFAULT_RX_FSW_RING_SIZE = common dso_local global i32 0, align 4
@IPSEC_IF_DEFAULT_SLOT_SIZE = common dso_local global i32 0, align 4
@IPSEC_IF_DEFAULT_TX_FSW_RING_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.sockaddr_ctl*, i8**)* @ipsec_ctl_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipsec_ctl_bind(i32 %0, %struct.sockaddr_ctl* %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sockaddr_ctl*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca %struct.ipsec_pcb*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.sockaddr_ctl* %1, %struct.sockaddr_ctl** %5, align 8
  store i8** %2, i8*** %6, align 8
  %8 = load i32, i32* @ipsec_pcb_zone, align 4
  %9 = call %struct.ipsec_pcb* @zalloc(i32 %8)
  store %struct.ipsec_pcb* %9, %struct.ipsec_pcb** %7, align 8
  %10 = load %struct.ipsec_pcb*, %struct.ipsec_pcb** %7, align 8
  %11 = call i32 @memset(%struct.ipsec_pcb* %10, i32 0, i32 40)
  %12 = load %struct.ipsec_pcb*, %struct.ipsec_pcb** %7, align 8
  %13 = bitcast %struct.ipsec_pcb* %12 to i8*
  %14 = load i8**, i8*** %6, align 8
  store i8* %13, i8** %14, align 8
  %15 = load i32, i32* %4, align 4
  %16 = load %struct.ipsec_pcb*, %struct.ipsec_pcb** %7, align 8
  %17 = getelementptr inbounds %struct.ipsec_pcb, %struct.ipsec_pcb* %16, i32 0, i32 9
  store i32 %15, i32* %17, align 4
  %18 = load %struct.sockaddr_ctl*, %struct.sockaddr_ctl** %5, align 8
  %19 = getelementptr inbounds %struct.sockaddr_ctl, %struct.sockaddr_ctl* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.ipsec_pcb*, %struct.ipsec_pcb** %7, align 8
  %22 = getelementptr inbounds %struct.ipsec_pcb, %struct.ipsec_pcb* %21, i32 0, i32 8
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* @MBUF_SC_OAM, align 4
  %24 = load %struct.ipsec_pcb*, %struct.ipsec_pcb** %7, align 8
  %25 = getelementptr inbounds %struct.ipsec_pcb, %struct.ipsec_pcb* %24, i32 0, i32 7
  store i32 %23, i32* %25, align 4
  %26 = load %struct.ipsec_pcb*, %struct.ipsec_pcb** %7, align 8
  %27 = getelementptr inbounds %struct.ipsec_pcb, %struct.ipsec_pcb* %26, i32 0, i32 2
  %28 = load i32, i32* @ipsec_lck_grp, align 4
  %29 = load i32, i32* @ipsec_lck_attr, align 4
  %30 = call i32 @lck_rw_init(i32* %27, i32 %28, i32 %29)
  ret i32 0
}

declare dso_local %struct.ipsec_pcb* @zalloc(i32) #1

declare dso_local i32 @memset(%struct.ipsec_pcb*, i32, i32) #1

declare dso_local i32 @lck_rw_init(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
