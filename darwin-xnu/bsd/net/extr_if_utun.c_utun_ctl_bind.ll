; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if_utun.c_utun_ctl_bind.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if_utun.c_utun_ctl_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_ctl = type { i32 }
%struct.utun_pcb = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@utun_pcb_zone = common dso_local global i32 0, align 4
@utun_lck_grp = common dso_local global i32 0, align 4
@utun_lck_attr = common dso_local global i32 0, align 4
@UTUN_IF_DEFAULT_RING_SIZE = common dso_local global i32 0, align 4
@UTUN_IF_DEFAULT_RX_FSW_RING_SIZE = common dso_local global i32 0, align 4
@UTUN_IF_DEFAULT_SLOT_SIZE = common dso_local global i32 0, align 4
@UTUN_IF_DEFAULT_TX_FSW_RING_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.sockaddr_ctl*, i8**)* @utun_ctl_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @utun_ctl_bind(i32 %0, %struct.sockaddr_ctl* %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sockaddr_ctl*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca %struct.utun_pcb*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.sockaddr_ctl* %1, %struct.sockaddr_ctl** %5, align 8
  store i8** %2, i8*** %6, align 8
  %8 = load i32, i32* @utun_pcb_zone, align 4
  %9 = call %struct.utun_pcb* @zalloc(i32 %8)
  store %struct.utun_pcb* %9, %struct.utun_pcb** %7, align 8
  %10 = load %struct.utun_pcb*, %struct.utun_pcb** %7, align 8
  %11 = call i32 @memset(%struct.utun_pcb* %10, i32 0, i32 40)
  %12 = load %struct.utun_pcb*, %struct.utun_pcb** %7, align 8
  %13 = bitcast %struct.utun_pcb* %12 to i8*
  %14 = load i8**, i8*** %6, align 8
  store i8* %13, i8** %14, align 8
  %15 = load i32, i32* %4, align 4
  %16 = load %struct.utun_pcb*, %struct.utun_pcb** %7, align 8
  %17 = getelementptr inbounds %struct.utun_pcb, %struct.utun_pcb* %16, i32 0, i32 9
  store i32 %15, i32* %17, align 4
  %18 = load %struct.sockaddr_ctl*, %struct.sockaddr_ctl** %5, align 8
  %19 = getelementptr inbounds %struct.sockaddr_ctl, %struct.sockaddr_ctl* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.utun_pcb*, %struct.utun_pcb** %7, align 8
  %22 = getelementptr inbounds %struct.utun_pcb, %struct.utun_pcb* %21, i32 0, i32 8
  store i32 %20, i32* %22, align 4
  %23 = load %struct.utun_pcb*, %struct.utun_pcb** %7, align 8
  %24 = getelementptr inbounds %struct.utun_pcb, %struct.utun_pcb* %23, i32 0, i32 0
  store i32 1, i32* %24, align 4
  %25 = load %struct.utun_pcb*, %struct.utun_pcb** %7, align 8
  %26 = getelementptr inbounds %struct.utun_pcb, %struct.utun_pcb* %25, i32 0, i32 3
  %27 = load i32, i32* @utun_lck_grp, align 4
  %28 = load i32, i32* @utun_lck_attr, align 4
  %29 = call i32 @lck_mtx_init(i32* %26, i32 %27, i32 %28)
  %30 = load %struct.utun_pcb*, %struct.utun_pcb** %7, align 8
  %31 = getelementptr inbounds %struct.utun_pcb, %struct.utun_pcb* %30, i32 0, i32 2
  %32 = load i32, i32* @utun_lck_grp, align 4
  %33 = load i32, i32* @utun_lck_attr, align 4
  %34 = call i32 @lck_rw_init(i32* %31, i32 %32, i32 %33)
  ret i32 0
}

declare dso_local %struct.utun_pcb* @zalloc(i32) #1

declare dso_local i32 @memset(%struct.utun_pcb*, i32, i32) #1

declare dso_local i32 @lck_mtx_init(i32*, i32, i32) #1

declare dso_local i32 @lck_rw_init(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
