; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_kpi_interface.c_ifnet_set_link_status_outbw.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_kpi_interface.c_ifnet_set_link_status_outbw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { %struct.TYPE_10__, %struct.TYPE_9__* }
%struct.TYPE_10__ = type { i64, i64 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.if_wifi_status_v1 }
%struct.if_wifi_status_v1 = type { i64, i64, i32 }

@IF_WIFI_UL_EFFECTIVE_BANDWIDTH_VALID = common dso_local global i32 0, align 4
@IF_WIFI_UL_MAX_BANDWIDTH_VALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ifnet*)* @ifnet_set_link_status_outbw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ifnet_set_link_status_outbw(%struct.ifnet* %0) #0 {
  %2 = alloca %struct.ifnet*, align 8
  %3 = alloca %struct.if_wifi_status_v1*, align 8
  store %struct.ifnet* %0, %struct.ifnet** %2, align 8
  %4 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %5 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %4, i32 0, i32 1
  %6 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  store %struct.if_wifi_status_v1* %10, %struct.if_wifi_status_v1** %3, align 8
  %11 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %12 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %28

16:                                               ; preds = %1
  %17 = load i32, i32* @IF_WIFI_UL_EFFECTIVE_BANDWIDTH_VALID, align 4
  %18 = load %struct.if_wifi_status_v1*, %struct.if_wifi_status_v1** %3, align 8
  %19 = getelementptr inbounds %struct.if_wifi_status_v1, %struct.if_wifi_status_v1* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = or i32 %20, %17
  store i32 %21, i32* %19, align 8
  %22 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %23 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.if_wifi_status_v1*, %struct.if_wifi_status_v1** %3, align 8
  %27 = getelementptr inbounds %struct.if_wifi_status_v1, %struct.if_wifi_status_v1* %26, i32 0, i32 0
  store i64 %25, i64* %27, align 8
  br label %28

28:                                               ; preds = %16, %1
  %29 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %30 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %46

34:                                               ; preds = %28
  %35 = load i32, i32* @IF_WIFI_UL_MAX_BANDWIDTH_VALID, align 4
  %36 = load %struct.if_wifi_status_v1*, %struct.if_wifi_status_v1** %3, align 8
  %37 = getelementptr inbounds %struct.if_wifi_status_v1, %struct.if_wifi_status_v1* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = or i32 %38, %35
  store i32 %39, i32* %37, align 8
  %40 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %41 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.if_wifi_status_v1*, %struct.if_wifi_status_v1** %3, align 8
  %45 = getelementptr inbounds %struct.if_wifi_status_v1, %struct.if_wifi_status_v1* %44, i32 0, i32 1
  store i64 %43, i64* %45, align 8
  br label %46

46:                                               ; preds = %34, %28
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
