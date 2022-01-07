; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_kpi_interface.c_ifnet_set_offload.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_kpi_interface.c_ifnet_set_offload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@offload_mask = common dso_local global i32 0, align 4
@IFNET_CSUM_PARTIAL = common dso_local global i32 0, align 4
@IFNET_CSUM_TCP = common dso_local global i32 0, align 4
@IFNET_CSUM_UDP = common dso_local global i32 0, align 4
@IFNET_CSUM_TCPIPV6 = common dso_local global i32 0, align 4
@IFNET_CSUM_UDPIPV6 = common dso_local global i32 0, align 4
@dlil_verbose = common dso_local global i64 0, align 8
@LOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"%s: set offload flags=%b\0A\00", align 1
@IFNET_OFFLOADF_BITS = common dso_local global i32 0, align 4
@any_offload_csum = common dso_local global i32 0, align 4
@IFCAP_HWCSUM = common dso_local global i32 0, align 4
@IFNET_TSO_IPV4 = common dso_local global i32 0, align 4
@IFCAP_TSO4 = common dso_local global i32 0, align 4
@IFNET_TSO_IPV6 = common dso_local global i32 0, align 4
@IFCAP_TSO6 = common dso_local global i32 0, align 4
@IFNET_VLAN_MTU = common dso_local global i32 0, align 4
@IFCAP_VLAN_MTU = common dso_local global i32 0, align 4
@IFNET_VLAN_TAGGING = common dso_local global i32 0, align 4
@IFCAP_VLAN_HWTAGGING = common dso_local global i32 0, align 4
@IFNET_TX_STATUS = common dso_local global i32 0, align 4
@IFCAP_TXSTATUS = common dso_local global i32 0, align 4
@IFNET_HW_TIMESTAMP = common dso_local global i32 0, align 4
@IFCAP_HW_TIMESTAMP = common dso_local global i32 0, align 4
@IFNET_SW_TIMESTAMP = common dso_local global i32 0, align 4
@IFCAP_SW_TIMESTAMP = common dso_local global i32 0, align 4
@IFCAP_CSUM_PARTIAL = common dso_local global i32 0, align 4
@IFNET_CSUM_ZERO_INVERT = common dso_local global i32 0, align 4
@IFCAP_CSUM_ZERO_INVERT = common dso_local global i32 0, align 4
@IFCAP_VALID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ifnet_set_offload(%struct.TYPE_8__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %8 = icmp eq %struct.TYPE_8__* %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = load i32, i32* @EINVAL, align 4
  store i32 %10, i32* %3, align 4
  br label %154

11:                                               ; preds = %2
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %13 = call i32 @ifnet_lock_exclusive(%struct.TYPE_8__* %12)
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @offload_mask, align 4
  %16 = and i32 %14, %15
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @IFNET_CSUM_PARTIAL, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %37

25:                                               ; preds = %11
  %26 = load i32, i32* @IFNET_CSUM_TCP, align 4
  %27 = load i32, i32* @IFNET_CSUM_UDP, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @IFNET_CSUM_TCPIPV6, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @IFNET_CSUM_UDPIPV6, align 4
  %32 = or i32 %30, %31
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = or i32 %35, %32
  store i32 %36, i32* %34, align 4
  br label %37

37:                                               ; preds = %25, %11
  %38 = load i64, i64* @dlil_verbose, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %37
  %41 = load i32, i32* @LOG_DEBUG, align 4
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %43 = call i32 @if_name(%struct.TYPE_8__* %42)
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @IFNET_OFFLOADF_BITS, align 4
  %48 = call i32 @log(i32 %41, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %43, i32 %46, i32 %47)
  br label %49

49:                                               ; preds = %40, %37
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %51 = call i32 @ifnet_lock_done(%struct.TYPE_8__* %50)
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* @any_offload_csum, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %49
  %57 = load i32, i32* @IFCAP_HWCSUM, align 4
  %58 = load i32, i32* %6, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %6, align 4
  br label %60

60:                                               ; preds = %56, %49
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* @IFNET_TSO_IPV4, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %60
  %66 = load i32, i32* @IFCAP_TSO4, align 4
  %67 = load i32, i32* %6, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %6, align 4
  br label %69

69:                                               ; preds = %65, %60
  %70 = load i32, i32* %5, align 4
  %71 = load i32, i32* @IFNET_TSO_IPV6, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %69
  %75 = load i32, i32* @IFCAP_TSO6, align 4
  %76 = load i32, i32* %6, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %6, align 4
  br label %78

78:                                               ; preds = %74, %69
  %79 = load i32, i32* %5, align 4
  %80 = load i32, i32* @IFNET_VLAN_MTU, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %78
  %84 = load i32, i32* @IFCAP_VLAN_MTU, align 4
  %85 = load i32, i32* %6, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %6, align 4
  br label %87

87:                                               ; preds = %83, %78
  %88 = load i32, i32* %5, align 4
  %89 = load i32, i32* @IFNET_VLAN_TAGGING, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %87
  %93 = load i32, i32* @IFCAP_VLAN_HWTAGGING, align 4
  %94 = load i32, i32* %6, align 4
  %95 = or i32 %94, %93
  store i32 %95, i32* %6, align 4
  br label %96

96:                                               ; preds = %92, %87
  %97 = load i32, i32* %5, align 4
  %98 = load i32, i32* @IFNET_TX_STATUS, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %96
  %102 = load i32, i32* @IFCAP_TXSTATUS, align 4
  %103 = load i32, i32* %6, align 4
  %104 = or i32 %103, %102
  store i32 %104, i32* %6, align 4
  br label %105

105:                                              ; preds = %101, %96
  %106 = load i32, i32* %5, align 4
  %107 = load i32, i32* @IFNET_HW_TIMESTAMP, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %105
  %111 = load i32, i32* @IFCAP_HW_TIMESTAMP, align 4
  %112 = load i32, i32* %6, align 4
  %113 = or i32 %112, %111
  store i32 %113, i32* %6, align 4
  br label %114

114:                                              ; preds = %110, %105
  %115 = load i32, i32* %5, align 4
  %116 = load i32, i32* @IFNET_SW_TIMESTAMP, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %123

119:                                              ; preds = %114
  %120 = load i32, i32* @IFCAP_SW_TIMESTAMP, align 4
  %121 = load i32, i32* %6, align 4
  %122 = or i32 %121, %120
  store i32 %122, i32* %6, align 4
  br label %123

123:                                              ; preds = %119, %114
  %124 = load i32, i32* %5, align 4
  %125 = load i32, i32* @IFNET_CSUM_PARTIAL, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %132

128:                                              ; preds = %123
  %129 = load i32, i32* @IFCAP_CSUM_PARTIAL, align 4
  %130 = load i32, i32* %6, align 4
  %131 = or i32 %130, %129
  store i32 %131, i32* %6, align 4
  br label %132

132:                                              ; preds = %128, %123
  %133 = load i32, i32* %5, align 4
  %134 = load i32, i32* @IFNET_CSUM_ZERO_INVERT, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %141

137:                                              ; preds = %132
  %138 = load i32, i32* @IFCAP_CSUM_ZERO_INVERT, align 4
  %139 = load i32, i32* %6, align 4
  %140 = or i32 %139, %138
  store i32 %140, i32* %6, align 4
  br label %141

141:                                              ; preds = %137, %132
  %142 = load i32, i32* %6, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %153

144:                                              ; preds = %141
  %145 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %146 = load i32, i32* %6, align 4
  %147 = load i32, i32* @IFCAP_VALID, align 4
  %148 = call i32 @ifnet_set_capabilities_supported(%struct.TYPE_8__* %145, i32 %146, i32 %147)
  %149 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %150 = load i32, i32* %6, align 4
  %151 = load i32, i32* @IFCAP_VALID, align 4
  %152 = call i32 @ifnet_set_capabilities_enabled(%struct.TYPE_8__* %149, i32 %150, i32 %151)
  br label %153

153:                                              ; preds = %144, %141
  store i32 0, i32* %3, align 4
  br label %154

154:                                              ; preds = %153, %9
  %155 = load i32, i32* %3, align 4
  ret i32 %155
}

declare dso_local i32 @ifnet_lock_exclusive(%struct.TYPE_8__*) #1

declare dso_local i32 @log(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @if_name(%struct.TYPE_8__*) #1

declare dso_local i32 @ifnet_lock_done(%struct.TYPE_8__*) #1

declare dso_local i32 @ifnet_set_capabilities_supported(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @ifnet_set_capabilities_enabled(%struct.TYPE_8__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
