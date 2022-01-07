; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_in_tclass.c_get_netsvctype_dscp_map.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_in_tclass.c_get_netsvctype_dscp_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_qos_dscp_map = type { i32* }
%struct.netsvctype_dscp_map = type { i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@_MAX_DSCP = common dso_local global i64 0, align 8
@default_net_qos_dscp_map = common dso_local global %struct.net_qos_dscp_map zeroinitializer, align 8
@_NET_SERVICE_TYPE_COUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*, %struct.netsvctype_dscp_map*)* @get_netsvctype_dscp_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_netsvctype_dscp_map(i64* %0, %struct.netsvctype_dscp_map* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64*, align 8
  %5 = alloca %struct.netsvctype_dscp_map*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.net_qos_dscp_map*, align 8
  store i64* %0, i64** %4, align 8
  store %struct.netsvctype_dscp_map* %1, %struct.netsvctype_dscp_map** %5, align 8
  store %struct.net_qos_dscp_map* null, %struct.net_qos_dscp_map** %7, align 8
  %8 = load i64*, i64** %4, align 8
  %9 = icmp eq i64* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = load %struct.netsvctype_dscp_map*, %struct.netsvctype_dscp_map** %5, align 8
  %12 = icmp eq %struct.netsvctype_dscp_map* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %10, %2
  %14 = load i32, i32* @EINVAL, align 4
  store i32 %14, i32* %3, align 4
  br label %52

15:                                               ; preds = %10
  %16 = load i64*, i64** %4, align 8
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @_MAX_DSCP, align 8
  %19 = icmp ugt i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = load i32, i32* @EINVAL, align 4
  store i32 %21, i32* %3, align 4
  br label %52

22:                                               ; preds = %15
  store %struct.net_qos_dscp_map* @default_net_qos_dscp_map, %struct.net_qos_dscp_map** %7, align 8
  store i64 0, i64* %6, align 8
  br label %23

23:                                               ; preds = %46, %22
  %24 = load i64, i64* %6, align 8
  %25 = load i32, i32* @_NET_SERVICE_TYPE_COUNT, align 4
  %26 = load i64*, i64** %4, align 8
  %27 = load i64, i64* %26, align 8
  %28 = call i64 @MIN(i32 %25, i64 %27)
  %29 = icmp ult i64 %24, %28
  br i1 %29, label %30, label %49

30:                                               ; preds = %23
  %31 = load i64, i64* %6, align 8
  %32 = load %struct.netsvctype_dscp_map*, %struct.netsvctype_dscp_map** %5, align 8
  %33 = load i64, i64* %6, align 8
  %34 = getelementptr inbounds %struct.netsvctype_dscp_map, %struct.netsvctype_dscp_map* %32, i64 %33
  %35 = getelementptr inbounds %struct.netsvctype_dscp_map, %struct.netsvctype_dscp_map* %34, i32 0, i32 0
  store i64 %31, i64* %35, align 8
  %36 = load %struct.net_qos_dscp_map*, %struct.net_qos_dscp_map** %7, align 8
  %37 = getelementptr inbounds %struct.net_qos_dscp_map, %struct.net_qos_dscp_map* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = load i64, i64* %6, align 8
  %40 = getelementptr inbounds i32, i32* %38, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.netsvctype_dscp_map*, %struct.netsvctype_dscp_map** %5, align 8
  %43 = load i64, i64* %6, align 8
  %44 = getelementptr inbounds %struct.netsvctype_dscp_map, %struct.netsvctype_dscp_map* %42, i64 %43
  %45 = getelementptr inbounds %struct.netsvctype_dscp_map, %struct.netsvctype_dscp_map* %44, i32 0, i32 1
  store i32 %41, i32* %45, align 8
  br label %46

46:                                               ; preds = %30
  %47 = load i64, i64* %6, align 8
  %48 = add i64 %47, 1
  store i64 %48, i64* %6, align 8
  br label %23

49:                                               ; preds = %23
  %50 = load i64, i64* %6, align 8
  %51 = load i64*, i64** %4, align 8
  store i64 %50, i64* %51, align 8
  store i32 0, i32* %3, align 4
  br label %52

52:                                               ; preds = %49, %20, %13
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i64 @MIN(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
