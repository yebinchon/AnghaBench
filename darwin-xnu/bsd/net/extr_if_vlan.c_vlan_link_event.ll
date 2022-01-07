; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if_vlan.c_vlan_link_event.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if_vlan.c_vlan_link_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32 }
%struct.ifmediareq = type { i64, i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"%s%d\00", align 1
@SIOCGIFMEDIA = common dso_local global i32 0, align 4
@IFM_AVALID = common dso_local global i32 0, align 4
@IFM_ACTIVE = common dso_local global i32 0, align 4
@KEV_DL_LINK_ON = common dso_local global i32 0, align 4
@KEV_DL_LINK_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ifnet*, %struct.ifnet*)* @vlan_link_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vlan_link_event(%struct.ifnet* %0, %struct.ifnet* %1) #0 {
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca %struct.ifmediareq, align 8
  %6 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %3, align 8
  store %struct.ifnet* %1, %struct.ifnet** %4, align 8
  %7 = call i32 @bzero(%struct.ifmediareq* %5, i32 16)
  %8 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %5, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %11 = call i8* @ifnet_name(%struct.ifnet* %10)
  %12 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %13 = call i32 @ifnet_unit(%struct.ifnet* %12)
  %14 = call i32 @snprintf(i32 %9, i32 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %11, i32 %13)
  %15 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %16 = load i32, i32* @SIOCGIFMEDIA, align 4
  %17 = call i64 @ifnet_ioctl(%struct.ifnet* %15, i32 0, i32 %16, %struct.ifmediareq* %5)
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %44

19:                                               ; preds = %2
  %20 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %5, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp sgt i64 %21, 0
  br i1 %22, label %23, label %44

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %5, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @IFM_AVALID, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %44

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %5, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @IFM_ACTIVE, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  %36 = load i32, i32* @KEV_DL_LINK_ON, align 4
  br label %39

37:                                               ; preds = %29
  %38 = load i32, i32* @KEV_DL_LINK_OFF, align 4
  br label %39

39:                                               ; preds = %37, %35
  %40 = phi i32 [ %36, %35 ], [ %38, %37 ]
  store i32 %40, i32* %6, align 4
  %41 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @interface_link_event(%struct.ifnet* %41, i32 %42)
  br label %44

44:                                               ; preds = %39, %23, %19, %2
  ret void
}

declare dso_local i32 @bzero(%struct.ifmediareq*, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*, i32) #1

declare dso_local i8* @ifnet_name(%struct.ifnet*) #1

declare dso_local i32 @ifnet_unit(%struct.ifnet*) #1

declare dso_local i64 @ifnet_ioctl(%struct.ifnet*, i32, i32, %struct.ifmediareq*) #1

declare dso_local i32 @interface_link_event(%struct.ifnet*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
