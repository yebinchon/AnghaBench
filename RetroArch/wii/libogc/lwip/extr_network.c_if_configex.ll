; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/lwip/extr_network.c_if_configex.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/lwip/extr_network.c_if_configex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_9__* }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { i64 }
%struct.in_addr = type { i64 }
%struct.ip_addr = type { i64 }
%struct.netif = type { i32 }
%struct.timespec = type { i32, i64 }

@g_netinitiated = common dso_local global i32 0, align 4
@netthread_mbox = common dso_local global i32 0, align 4
@MQBOX_SIZE = common dso_local global i32 0, align 4
@MQ_ERROR_SUCCESSFUL = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@g_hNetIF = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@bba_init = common dso_local global i32 0, align 4
@net_input = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@g_hLoopIF = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@loopif_init = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@DHCP_BOUND = common dso_local global i64 0, align 8
@ETIMEDOUT = common dso_local global i32 0, align 4
@DHCPCOARSE_TIMER_ID = common dso_local global i32 0, align 4
@DHCPFINE_TIMER_ID = common dso_local global i32 0, align 4
@DHCP_COARSE_TIMER_SECS = common dso_local global i64 0, align 8
@DHCP_FINE_TIMER_MSECS = common dso_local global i32 0, align 4
@TB_NSPERMS = common dso_local global i32 0, align 4
@__dhcpcoarse_timer = common dso_local global i32 0, align 4
@__dhcpfine_timer = common dso_local global i32 0, align 4
@dhcp_coarsetimer_cntrl = common dso_local global i32 0, align 4
@dhcp_finetimer_cntrl = common dso_local global i32 0, align 4
@net_dhcpcoarse_ticks = common dso_local global i32 0, align 4
@net_dhcpfine_ticks = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @if_configex(%struct.in_addr* %0, %struct.in_addr* %1, %struct.in_addr* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.in_addr*, align 8
  %8 = alloca %struct.in_addr*, align 8
  %9 = alloca %struct.in_addr*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.ip_addr, align 8
  %14 = alloca %struct.ip_addr, align 8
  %15 = alloca %struct.ip_addr, align 8
  %16 = alloca %struct.netif*, align 8
  %17 = alloca %struct.timespec, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  store %struct.in_addr* %0, %struct.in_addr** %7, align 8
  store %struct.in_addr* %1, %struct.in_addr** %8, align 8
  store %struct.in_addr* %2, %struct.in_addr** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32* null, i32** %18, align 8
  %20 = load i32, i32* @g_netinitiated, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %159

23:                                               ; preds = %5
  store i32 1, i32* @g_netinitiated, align 4
  %24 = call i32 (...) @sys_init()
  %25 = call i32 (...) @mem_init()
  %26 = call i32 (...) @memp_init()
  %27 = call i32 (...) @pbuf_init()
  %28 = call i32 (...) @netif_init()
  %29 = load i32, i32* @MQBOX_SIZE, align 4
  %30 = call i64 @MQ_Init(i32* @netthread_mbox, i32 %29)
  %31 = load i64, i64* @MQ_ERROR_SUCCESSFUL, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %23
  store i32 -1, i32* %6, align 4
  br label %159

34:                                               ; preds = %23
  %35 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %13, i32 0, i32 0
  store i64 0, i64* %35, align 8
  %36 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %14, i32 0, i32 0
  store i64 0, i64* %36, align 8
  %37 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %15, i32 0, i32 0
  store i64 0, i64* %37, align 8
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* @FALSE, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %81

41:                                               ; preds = %34
  %42 = load %struct.in_addr*, %struct.in_addr** %9, align 8
  %43 = icmp ne %struct.in_addr* %42, null
  br i1 %43, label %44, label %65

44:                                               ; preds = %41
  %45 = load %struct.in_addr*, %struct.in_addr** %9, align 8
  %46 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %65, label %49

49:                                               ; preds = %44
  %50 = load %struct.in_addr*, %struct.in_addr** %7, align 8
  %51 = icmp ne %struct.in_addr* %50, null
  br i1 %51, label %52, label %65

52:                                               ; preds = %49
  %53 = load %struct.in_addr*, %struct.in_addr** %7, align 8
  %54 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %65, label %57

57:                                               ; preds = %52
  %58 = load %struct.in_addr*, %struct.in_addr** %8, align 8
  %59 = icmp ne %struct.in_addr* %58, null
  br i1 %59, label %60, label %65

60:                                               ; preds = %57
  %61 = load %struct.in_addr*, %struct.in_addr** %8, align 8
  %62 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %60, %57, %52, %49, %44, %41
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %6, align 4
  br label %159

68:                                               ; preds = %60
  %69 = load %struct.in_addr*, %struct.in_addr** %7, align 8
  %70 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %13, i32 0, i32 0
  store i64 %71, i64* %72, align 8
  %73 = load %struct.in_addr*, %struct.in_addr** %8, align 8
  %74 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %14, i32 0, i32 0
  store i64 %75, i64* %76, align 8
  %77 = load %struct.in_addr*, %struct.in_addr** %9, align 8
  %78 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %15, i32 0, i32 0
  store i64 %79, i64* %80, align 8
  br label %81

81:                                               ; preds = %68, %34
  %82 = call i32* @bba_create(%struct.TYPE_13__* @g_hNetIF)
  store i32* %82, i32** %18, align 8
  %83 = load i32*, i32** %18, align 8
  %84 = load i32, i32* @bba_init, align 4
  %85 = load i32, i32* @net_input, align 4
  %86 = call %struct.netif* @netif_add(%struct.TYPE_13__* @g_hNetIF, %struct.ip_addr* %13, %struct.ip_addr* %14, %struct.ip_addr* %15, i32* %83, i32 %84, i32 %85)
  store %struct.netif* %86, %struct.netif** %16, align 8
  %87 = load %struct.netif*, %struct.netif** %16, align 8
  %88 = icmp ne %struct.netif* %87, null
  br i1 %88, label %89, label %94

89:                                               ; preds = %81
  %90 = load %struct.netif*, %struct.netif** %16, align 8
  %91 = call i32 @netif_set_up(%struct.netif* %90)
  %92 = load %struct.netif*, %struct.netif** %16, align 8
  %93 = call i32 @netif_set_default(%struct.netif* %92)
  br label %97

94:                                               ; preds = %81
  %95 = load i32, i32* @ENXIO, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %6, align 4
  br label %159

97:                                               ; preds = %89
  %98 = call i32 @IP4_ADDR(%struct.ip_addr* %13, i32 127, i32 0, i32 0, i32 1)
  %99 = call i32 @IP4_ADDR(%struct.ip_addr* %14, i32 255, i32 0, i32 0, i32 0)
  %100 = call i32 @IP4_ADDR(%struct.ip_addr* %15, i32 127, i32 0, i32 0, i32 1)
  %101 = load i32, i32* @loopif_init, align 4
  %102 = load i32, i32* @net_input, align 4
  %103 = call %struct.netif* @netif_add(%struct.TYPE_13__* @g_hLoopIF, %struct.ip_addr* %13, %struct.ip_addr* %14, %struct.ip_addr* %15, i32* null, i32 %101, i32 %102)
  store %struct.netif* %103, %struct.netif** %16, align 8
  %104 = call i32 (...) @net_init()
  store i32 %104, i32* %12, align 4
  %105 = load i32, i32* %12, align 4
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %157

107:                                              ; preds = %97
  %108 = load i32, i32* %10, align 4
  %109 = load i32, i32* @TRUE, align 4
  %110 = icmp eq i32 %108, %109
  br i1 %110, label %111, label %157

111:                                              ; preds = %107
  %112 = load i32, i32* %11, align 4
  store i32 %112, i32* %19, align 4
  br label %113

113:                                              ; preds = %124, %111
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @g_hNetIF, i32 0, i32 3), align 8
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @DHCP_BOUND, align 8
  %118 = icmp ne i64 %116, %117
  br i1 %118, label %119, label %122

119:                                              ; preds = %113
  %120 = load i32, i32* %19, align 4
  %121 = icmp sgt i32 %120, 0
  br label %122

122:                                              ; preds = %119, %113
  %123 = phi i1 [ false, %113 ], [ %121, %119 ]
  br i1 %123, label %124, label %128

124:                                              ; preds = %122
  %125 = load i32, i32* %19, align 4
  %126 = add nsw i32 %125, -1
  store i32 %126, i32* %19, align 4
  %127 = call i32 @usleep(i32 500000)
  br label %113

128:                                              ; preds = %122
  %129 = load i32, i32* %19, align 4
  %130 = icmp sgt i32 %129, 0
  br i1 %130, label %131, label %153

131:                                              ; preds = %128
  %132 = load %struct.in_addr*, %struct.in_addr** %7, align 8
  %133 = icmp ne %struct.in_addr* %132, null
  br i1 %133, label %134, label %138

134:                                              ; preds = %131
  %135 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @g_hNetIF, i32 0, i32 2, i32 0), align 8
  %136 = load %struct.in_addr*, %struct.in_addr** %7, align 8
  %137 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %136, i32 0, i32 0
  store i64 %135, i64* %137, align 8
  br label %138

138:                                              ; preds = %134, %131
  %139 = load %struct.in_addr*, %struct.in_addr** %9, align 8
  %140 = icmp ne %struct.in_addr* %139, null
  br i1 %140, label %141, label %145

141:                                              ; preds = %138
  %142 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @g_hNetIF, i32 0, i32 1, i32 0), align 8
  %143 = load %struct.in_addr*, %struct.in_addr** %9, align 8
  %144 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %143, i32 0, i32 0
  store i64 %142, i64* %144, align 8
  br label %145

145:                                              ; preds = %141, %138
  %146 = load %struct.in_addr*, %struct.in_addr** %8, align 8
  %147 = icmp ne %struct.in_addr* %146, null
  br i1 %147, label %148, label %152

148:                                              ; preds = %145
  %149 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @g_hNetIF, i32 0, i32 0, i32 0), align 8
  %150 = load %struct.in_addr*, %struct.in_addr** %8, align 8
  %151 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %150, i32 0, i32 0
  store i64 %149, i64* %151, align 8
  br label %152

152:                                              ; preds = %148, %145
  br label %156

153:                                              ; preds = %128
  %154 = load i32, i32* @ETIMEDOUT, align 4
  %155 = sub nsw i32 0, %154
  store i32 %155, i32* %12, align 4
  br label %156

156:                                              ; preds = %153, %152
  br label %157

157:                                              ; preds = %156, %107, %97
  %158 = load i32, i32* %12, align 4
  store i32 %158, i32* %6, align 4
  br label %159

159:                                              ; preds = %157, %94, %65, %33, %22
  %160 = load i32, i32* %6, align 4
  ret i32 %160
}

declare dso_local i32 @sys_init(...) #1

declare dso_local i32 @mem_init(...) #1

declare dso_local i32 @memp_init(...) #1

declare dso_local i32 @pbuf_init(...) #1

declare dso_local i32 @netif_init(...) #1

declare dso_local i64 @MQ_Init(i32*, i32) #1

declare dso_local i32* @bba_create(%struct.TYPE_13__*) #1

declare dso_local %struct.netif* @netif_add(%struct.TYPE_13__*, %struct.ip_addr*, %struct.ip_addr*, %struct.ip_addr*, i32*, i32, i32) #1

declare dso_local i32 @netif_set_up(%struct.netif*) #1

declare dso_local i32 @netif_set_default(%struct.netif*) #1

declare dso_local i32 @IP4_ADDR(%struct.ip_addr*, i32, i32, i32, i32) #1

declare dso_local i32 @net_init(...) #1

declare dso_local i32 @usleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
