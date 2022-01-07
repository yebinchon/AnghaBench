; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libdb/extr_tcpip.c_tcpip_getsocket.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libdb/extr_tcpip.c_tcpip_getsocket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpip_sock = type { i32 }

@UIP_TCPIP_SOCKS = common dso_local global i64 0, align 8
@tcpip_socks = common dso_local global %struct.tcpip_sock* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.tcpip_sock* (i64)* @tcpip_getsocket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.tcpip_sock* @tcpip_getsocket(i64 %0) #0 {
  %2 = alloca %struct.tcpip_sock*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.tcpip_sock*, align 8
  store i64 %0, i64* %3, align 8
  %5 = load i64, i64* %3, align 8
  %6 = icmp ult i64 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %1
  %8 = load i64, i64* %3, align 8
  %9 = load i64, i64* @UIP_TCPIP_SOCKS, align 8
  %10 = icmp uge i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %7, %1
  store %struct.tcpip_sock* null, %struct.tcpip_sock** %2, align 8
  br label %23

12:                                               ; preds = %7
  %13 = load %struct.tcpip_sock*, %struct.tcpip_sock** @tcpip_socks, align 8
  %14 = load i64, i64* %3, align 8
  %15 = getelementptr inbounds %struct.tcpip_sock, %struct.tcpip_sock* %13, i64 %14
  store %struct.tcpip_sock* %15, %struct.tcpip_sock** %4, align 8
  %16 = load %struct.tcpip_sock*, %struct.tcpip_sock** %4, align 8
  %17 = getelementptr inbounds %struct.tcpip_sock, %struct.tcpip_sock* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %12
  store %struct.tcpip_sock* null, %struct.tcpip_sock** %2, align 8
  br label %23

21:                                               ; preds = %12
  %22 = load %struct.tcpip_sock*, %struct.tcpip_sock** %4, align 8
  store %struct.tcpip_sock* %22, %struct.tcpip_sock** %2, align 8
  br label %23

23:                                               ; preds = %21, %20, %11
  %24 = load %struct.tcpip_sock*, %struct.tcpip_sock** %2, align 8
  ret %struct.tcpip_sock* %24
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
