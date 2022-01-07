; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_in_arp.c_arp_llinfo_get_ri.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_in_arp.c_arp_llinfo_get_ri.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtentry = type { %struct.llinfo_arp* }
%struct.llinfo_arp = type { i32, %struct.if_llreach* }
%struct.if_llreach = type { i32 }
%struct.rt_reach_info = type { i32, i32, i32, i32 }

@IFNET_RSSI_UNKNOWN = common dso_local global i32 0, align 4
@IFNET_LQM_THRESH_OFF = common dso_local global i32 0, align 4
@IFNET_NPM_THRESH_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtentry*, %struct.rt_reach_info*)* @arp_llinfo_get_ri to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arp_llinfo_get_ri(%struct.rtentry* %0, %struct.rt_reach_info* %1) #0 {
  %3 = alloca %struct.rtentry*, align 8
  %4 = alloca %struct.rt_reach_info*, align 8
  %5 = alloca %struct.llinfo_arp*, align 8
  %6 = alloca %struct.if_llreach*, align 8
  store %struct.rtentry* %0, %struct.rtentry** %3, align 8
  store %struct.rt_reach_info* %1, %struct.rt_reach_info** %4, align 8
  %7 = load %struct.rtentry*, %struct.rtentry** %3, align 8
  %8 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %7, i32 0, i32 0
  %9 = load %struct.llinfo_arp*, %struct.llinfo_arp** %8, align 8
  store %struct.llinfo_arp* %9, %struct.llinfo_arp** %5, align 8
  %10 = load %struct.llinfo_arp*, %struct.llinfo_arp** %5, align 8
  %11 = getelementptr inbounds %struct.llinfo_arp, %struct.llinfo_arp* %10, i32 0, i32 1
  %12 = load %struct.if_llreach*, %struct.if_llreach** %11, align 8
  store %struct.if_llreach* %12, %struct.if_llreach** %6, align 8
  %13 = load %struct.if_llreach*, %struct.if_llreach** %6, align 8
  %14 = icmp eq %struct.if_llreach* %13, null
  br i1 %14, label %15, label %27

15:                                               ; preds = %2
  %16 = load %struct.rt_reach_info*, %struct.rt_reach_info** %4, align 8
  %17 = call i32 @bzero(%struct.rt_reach_info* %16, i32 16)
  %18 = load i32, i32* @IFNET_RSSI_UNKNOWN, align 4
  %19 = load %struct.rt_reach_info*, %struct.rt_reach_info** %4, align 8
  %20 = getelementptr inbounds %struct.rt_reach_info, %struct.rt_reach_info* %19, i32 0, i32 3
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* @IFNET_LQM_THRESH_OFF, align 4
  %22 = load %struct.rt_reach_info*, %struct.rt_reach_info** %4, align 8
  %23 = getelementptr inbounds %struct.rt_reach_info, %struct.rt_reach_info* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* @IFNET_NPM_THRESH_UNKNOWN, align 4
  %25 = load %struct.rt_reach_info*, %struct.rt_reach_info** %4, align 8
  %26 = getelementptr inbounds %struct.rt_reach_info, %struct.rt_reach_info* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  br label %42

27:                                               ; preds = %2
  %28 = load %struct.if_llreach*, %struct.if_llreach** %6, align 8
  %29 = call i32 @IFLR_LOCK(%struct.if_llreach* %28)
  %30 = load %struct.if_llreach*, %struct.if_llreach** %6, align 8
  %31 = load %struct.rt_reach_info*, %struct.rt_reach_info** %4, align 8
  %32 = call i32 @ifnet_lr2ri(%struct.if_llreach* %30, %struct.rt_reach_info* %31)
  %33 = load %struct.if_llreach*, %struct.if_llreach** %6, align 8
  %34 = load %struct.llinfo_arp*, %struct.llinfo_arp** %5, align 8
  %35 = getelementptr inbounds %struct.llinfo_arp, %struct.llinfo_arp* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @ifnet_llreach_up2calexp(%struct.if_llreach* %33, i32 %36)
  %38 = load %struct.rt_reach_info*, %struct.rt_reach_info** %4, align 8
  %39 = getelementptr inbounds %struct.rt_reach_info, %struct.rt_reach_info* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  %40 = load %struct.if_llreach*, %struct.if_llreach** %6, align 8
  %41 = call i32 @IFLR_UNLOCK(%struct.if_llreach* %40)
  br label %42

42:                                               ; preds = %27, %15
  ret void
}

declare dso_local i32 @bzero(%struct.rt_reach_info*, i32) #1

declare dso_local i32 @IFLR_LOCK(%struct.if_llreach*) #1

declare dso_local i32 @ifnet_lr2ri(%struct.if_llreach*, %struct.rt_reach_info*) #1

declare dso_local i32 @ifnet_llreach_up2calexp(%struct.if_llreach*, i32) #1

declare dso_local i32 @IFLR_UNLOCK(%struct.if_llreach*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
