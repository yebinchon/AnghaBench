; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_in_tclass.c_set_netsvctype_dscp_map.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_in_tclass.c_set_netsvctype_dscp_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_qos_dscp_map = type { i64*, i64* }
%struct.netsvctype_dscp_map = type { i32, i64 }

@_MAX_DSCP = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@default_net_qos_dscp_map = common dso_local global %struct.net_qos_dscp_map zeroinitializer, align 8
@_NET_SERVICE_TYPE_COUNT = common dso_local global i32 0, align 4
@sotc_by_netservicetype = common dso_local global i32* null, align 8
@SIZE_T_MAX = common dso_local global i64 0, align 8
@_DSCP_DF = common dso_local global i64 0, align 8
@SOTCIX_CTL = common dso_local global i64 0, align 8
@SOTCIX_BK_SYS = common dso_local global i64 0, align 8
@SOTCIX_BK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, %struct.netsvctype_dscp_map*)* @set_netsvctype_dscp_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_netsvctype_dscp_map(i64 %0, %struct.netsvctype_dscp_map* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.netsvctype_dscp_map*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.net_qos_dscp_map*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store %struct.netsvctype_dscp_map* %1, %struct.netsvctype_dscp_map** %5, align 8
  store %struct.net_qos_dscp_map* null, %struct.net_qos_dscp_map** %7, align 8
  %10 = load i64, i64* %4, align 8
  %11 = load i64, i64* @_MAX_DSCP, align 8
  %12 = icmp ugt i64 %10, %11
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load %struct.netsvctype_dscp_map*, %struct.netsvctype_dscp_map** %5, align 8
  %15 = icmp eq %struct.netsvctype_dscp_map* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %13, %2
  %17 = load i32, i32* @EINVAL, align 4
  store i32 %17, i32* %3, align 4
  br label %127

18:                                               ; preds = %13
  store i64 0, i64* %6, align 8
  br label %19

19:                                               ; preds = %44, %18
  %20 = load i64, i64* %6, align 8
  %21 = load i64, i64* %4, align 8
  %22 = icmp ult i64 %20, %21
  br i1 %22, label %23, label %47

23:                                               ; preds = %19
  %24 = load %struct.netsvctype_dscp_map*, %struct.netsvctype_dscp_map** %5, align 8
  %25 = load i64, i64* %6, align 8
  %26 = getelementptr inbounds %struct.netsvctype_dscp_map, %struct.netsvctype_dscp_map* %24, i64 %25
  %27 = getelementptr inbounds %struct.netsvctype_dscp_map, %struct.netsvctype_dscp_map* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @IS_VALID_NET_SERVICE_TYPE(i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %23
  %32 = load i32, i32* @EINVAL, align 4
  store i32 %32, i32* %3, align 4
  br label %127

33:                                               ; preds = %23
  %34 = load %struct.netsvctype_dscp_map*, %struct.netsvctype_dscp_map** %5, align 8
  %35 = load i64, i64* %6, align 8
  %36 = getelementptr inbounds %struct.netsvctype_dscp_map, %struct.netsvctype_dscp_map* %34, i64 %35
  %37 = getelementptr inbounds %struct.netsvctype_dscp_map, %struct.netsvctype_dscp_map* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @_MAX_DSCP, align 8
  %40 = icmp ugt i64 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %33
  %42 = load i32, i32* @EINVAL, align 4
  store i32 %42, i32* %3, align 4
  br label %127

43:                                               ; preds = %33
  br label %44

44:                                               ; preds = %43
  %45 = load i64, i64* %6, align 8
  %46 = add i64 %45, 1
  store i64 %46, i64* %6, align 8
  br label %19

47:                                               ; preds = %19
  store %struct.net_qos_dscp_map* @default_net_qos_dscp_map, %struct.net_qos_dscp_map** %7, align 8
  store i64 0, i64* %6, align 8
  br label %48

48:                                               ; preds = %69, %47
  %49 = load i64, i64* %6, align 8
  %50 = load i64, i64* %4, align 8
  %51 = icmp ult i64 %49, %50
  br i1 %51, label %52, label %72

52:                                               ; preds = %48
  %53 = load %struct.netsvctype_dscp_map*, %struct.netsvctype_dscp_map** %5, align 8
  %54 = load i64, i64* %6, align 8
  %55 = getelementptr inbounds %struct.netsvctype_dscp_map, %struct.netsvctype_dscp_map* %53, i64 %54
  %56 = getelementptr inbounds %struct.netsvctype_dscp_map, %struct.netsvctype_dscp_map* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  store i32 %57, i32* %8, align 4
  %58 = load %struct.netsvctype_dscp_map*, %struct.netsvctype_dscp_map** %5, align 8
  %59 = load i64, i64* %6, align 8
  %60 = getelementptr inbounds %struct.netsvctype_dscp_map, %struct.netsvctype_dscp_map* %58, i64 %59
  %61 = getelementptr inbounds %struct.netsvctype_dscp_map, %struct.netsvctype_dscp_map* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.net_qos_dscp_map*, %struct.net_qos_dscp_map** %7, align 8
  %64 = getelementptr inbounds %struct.net_qos_dscp_map, %struct.net_qos_dscp_map* %63, i32 0, i32 0
  %65 = load i64*, i64** %64, align 8
  %66 = load i32, i32* %8, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i64, i64* %65, i64 %67
  store i64 %62, i64* %68, align 8
  br label %69

69:                                               ; preds = %52
  %70 = load i64, i64* %6, align 8
  %71 = add i64 %70, 1
  store i64 %71, i64* %6, align 8
  br label %48

72:                                               ; preds = %48
  store i32 0, i32* %8, align 4
  br label %73

73:                                               ; preds = %106, %72
  %74 = load i32, i32* %8, align 4
  %75 = load i32, i32* @_NET_SERVICE_TYPE_COUNT, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %77, label %109

77:                                               ; preds = %73
  %78 = load i32, i32* %8, align 4
  switch i32 %78, label %103 [
    i32 135, label %79
    i32 134, label %79
    i32 129, label %79
    i32 128, label %79
    i32 131, label %79
    i32 136, label %79
    i32 133, label %79
    i32 132, label %79
    i32 130, label %102
  ]

79:                                               ; preds = %77, %77, %77, %77, %77, %77, %77, %77
  %80 = load i32*, i32** @sotc_by_netservicetype, align 8
  %81 = load i32, i32* %8, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = call i64 @sotc_index(i32 %84)
  store i64 %85, i64* %9, align 8
  %86 = load i64, i64* %9, align 8
  %87 = load i64, i64* @SIZE_T_MAX, align 8
  %88 = icmp ne i64 %86, %87
  br i1 %88, label %89, label %101

89:                                               ; preds = %79
  %90 = load %struct.netsvctype_dscp_map*, %struct.netsvctype_dscp_map** %5, align 8
  %91 = load i32, i32* %8, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.netsvctype_dscp_map, %struct.netsvctype_dscp_map* %90, i64 %92
  %94 = getelementptr inbounds %struct.netsvctype_dscp_map, %struct.netsvctype_dscp_map* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.net_qos_dscp_map*, %struct.net_qos_dscp_map** %7, align 8
  %97 = getelementptr inbounds %struct.net_qos_dscp_map, %struct.net_qos_dscp_map* %96, i32 0, i32 1
  %98 = load i64*, i64** %97, align 8
  %99 = load i64, i64* %9, align 8
  %100 = getelementptr inbounds i64, i64* %98, i64 %99
  store i64 %95, i64* %100, align 8
  br label %101

101:                                              ; preds = %89, %79
  br label %105

102:                                              ; preds = %77
  br label %105

103:                                              ; preds = %77
  %104 = call i32 @ASSERT(i32 0)
  br label %105

105:                                              ; preds = %103, %102, %101
  br label %106

106:                                              ; preds = %105
  %107 = load i32, i32* %8, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %8, align 4
  br label %73

109:                                              ; preds = %73
  %110 = load i64, i64* @_DSCP_DF, align 8
  %111 = load %struct.net_qos_dscp_map*, %struct.net_qos_dscp_map** %7, align 8
  %112 = getelementptr inbounds %struct.net_qos_dscp_map, %struct.net_qos_dscp_map* %111, i32 0, i32 1
  %113 = load i64*, i64** %112, align 8
  %114 = load i64, i64* @SOTCIX_CTL, align 8
  %115 = getelementptr inbounds i64, i64* %113, i64 %114
  store i64 %110, i64* %115, align 8
  %116 = load %struct.net_qos_dscp_map*, %struct.net_qos_dscp_map** %7, align 8
  %117 = getelementptr inbounds %struct.net_qos_dscp_map, %struct.net_qos_dscp_map* %116, i32 0, i32 1
  %118 = load i64*, i64** %117, align 8
  %119 = load i64, i64* @SOTCIX_BK_SYS, align 8
  %120 = getelementptr inbounds i64, i64* %118, i64 %119
  %121 = load i64, i64* %120, align 8
  %122 = load %struct.net_qos_dscp_map*, %struct.net_qos_dscp_map** %7, align 8
  %123 = getelementptr inbounds %struct.net_qos_dscp_map, %struct.net_qos_dscp_map* %122, i32 0, i32 1
  %124 = load i64*, i64** %123, align 8
  %125 = load i64, i64* @SOTCIX_BK, align 8
  %126 = getelementptr inbounds i64, i64* %124, i64 %125
  store i64 %121, i64* %126, align 8
  store i32 0, i32* %3, align 4
  br label %127

127:                                              ; preds = %109, %41, %31, %16
  %128 = load i32, i32* %3, align 4
  ret i32 %128
}

declare dso_local i32 @IS_VALID_NET_SERVICE_TYPE(i32) #1

declare dso_local i64 @sotc_index(i32) #1

declare dso_local i32 @ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
