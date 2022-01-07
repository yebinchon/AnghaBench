; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libdb/uIP/extr_bba.c_bba_start_rx.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libdb/uIP/extr_bba.c_bba_start_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i32 }
%struct.uip_netif = type { i32 }
%struct.uip_pbuf = type { i64, %struct.uip_pbuf* }

@.str = private unnamed_addr constant [16 x i8] c"bba_start_rx()\0A\00", align 1
@BBA_RWP = common dso_local global i32 0, align 4
@BBA_RRP = common dso_local global i32 0, align 4
@cur_descr = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@BBA_RX_MAX_PACKET_SIZE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [49 x i8] c"bba_start_rx: packet dropped due to big buffer.\0A\00", align 1
@BBA_RX_STATUS_RERR = common dso_local global i64 0, align 8
@BBA_RX_STATUS_FAE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [53 x i8] c"bba_start_rx: packet dropped due to receive errors.\0A\00", align 1
@BBA_INIT_RHBP = common dso_local global i32 0, align 4
@UIP_PBUF_RAW = common dso_local global i32 0, align 4
@UIP_PBUF_POOL = common dso_local global i32 0, align 4
@BBA_INIT_RRP = common dso_local global i32 0, align 4
@EXI_CHANNEL_0 = common dso_local global i32 0, align 4
@EXI_DEVICE_2 = common dso_local global i32 0, align 4
@UIP_ERR_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uip_netif*, i64)* @bba_start_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bba_start_rx(%struct.uip_netif* %0, i64 %1) #0 {
  %3 = alloca %struct.uip_netif*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.uip_pbuf*, align 8
  %13 = alloca %struct.uip_pbuf*, align 8
  %14 = alloca i64, align 8
  store %struct.uip_netif* %0, %struct.uip_netif** %3, align 8
  store i64 %1, i64* %4, align 8
  %15 = call i32 @UIP_LOG(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store i64 0, i64* %11, align 8
  %16 = load i32, i32* @BBA_RWP, align 4
  %17 = call i32 @bba_in12(i32 %16)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* @BBA_RRP, align 4
  %19 = call i32 @bba_in12(i32 %18)
  store i32 %19, i32* %9, align 4
  br label %20

20:                                               ; preds = %139, %51, %42, %2
  %21 = load i64, i64* %11, align 8
  %22 = load i64, i64* %4, align 8
  %23 = icmp slt i64 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %20
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %25, %26
  br label %28

28:                                               ; preds = %24, %20
  %29 = phi i1 [ false, %20 ], [ %27, %24 ]
  br i1 %29, label %30, label %147

30:                                               ; preds = %28
  %31 = load i32, i32* %9, align 4
  %32 = shl i32 %31, 8
  %33 = call i32 @bba_ins(i32 %32, i8* bitcast (%struct.TYPE_2__* @cur_descr to i8*), i32 4)
  %34 = call i32 @le32_to_cpus(i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cur_descr, i32 0, i32 0))
  %35 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cur_descr, i32 0, i32 0), align 8
  %36 = sub nsw i64 %35, 4
  store i64 %36, i64* %5, align 8
  %37 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cur_descr, i32 0, i32 1), align 8
  store i64 %37, i64* %10, align 8
  %38 = load i64, i64* %5, align 8
  %39 = load i64, i64* @BBA_RX_MAX_PACKET_SIZE, align 8
  %40 = add nsw i64 %39, 4
  %41 = icmp sgt i64 %38, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %30
  %43 = call i32 @UIP_LOG(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  br label %20

44:                                               ; preds = %30
  %45 = load i64, i64* %10, align 8
  %46 = load i64, i64* @BBA_RX_STATUS_RERR, align 8
  %47 = load i64, i64* @BBA_RX_STATUS_FAE, align 8
  %48 = or i64 %46, %47
  %49 = and i64 %45, %48
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %44
  %52 = call i32 @UIP_LOG(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0))
  %53 = load i32, i32* @BBA_RWP, align 4
  %54 = call i32 @bba_in12(i32 %53)
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* @BBA_RRP, align 4
  %56 = call i32 @bba_in12(i32 %55)
  store i32 %56, i32* %9, align 4
  br label %20

57:                                               ; preds = %44
  %58 = load i32, i32* %9, align 4
  %59 = shl i32 %58, 8
  %60 = add nsw i32 %59, 4
  store i32 %60, i32* %7, align 4
  %61 = load i32, i32* @BBA_INIT_RHBP, align 4
  %62 = add nsw i32 %61, 1
  %63 = shl i32 %62, 8
  store i32 %63, i32* %6, align 4
  %64 = load i32, i32* @UIP_PBUF_RAW, align 4
  %65 = load i64, i64* %5, align 8
  %66 = load i32, i32* @UIP_PBUF_POOL, align 4
  %67 = call %struct.uip_pbuf* @uip_pbuf_alloc(i32 %64, i64 %65, i32 %66)
  store %struct.uip_pbuf* %67, %struct.uip_pbuf** %12, align 8
  %68 = load %struct.uip_pbuf*, %struct.uip_pbuf** %12, align 8
  %69 = icmp ne %struct.uip_pbuf* %68, null
  br i1 %69, label %70, label %138

70:                                               ; preds = %57
  %71 = load %struct.uip_pbuf*, %struct.uip_pbuf** %12, align 8
  store %struct.uip_pbuf* %71, %struct.uip_pbuf** %13, align 8
  br label %72

72:                                               ; preds = %125, %70
  %73 = load %struct.uip_pbuf*, %struct.uip_pbuf** %13, align 8
  %74 = icmp ne %struct.uip_pbuf* %73, null
  br i1 %74, label %75, label %129

75:                                               ; preds = %72
  %76 = call i32 (...) @bba_select()
  %77 = load i32, i32* %7, align 4
  %78 = call i32 @bba_insregister(i32 %77)
  %79 = load i32, i32* %7, align 4
  %80 = sext i32 %79 to i64
  %81 = load i64, i64* %5, align 8
  %82 = add nsw i64 %80, %81
  %83 = load i32, i32* %6, align 4
  %84 = sext i32 %83 to i64
  %85 = icmp slt i64 %82, %84
  br i1 %85, label %86, label %92

86:                                               ; preds = %75
  %87 = load %struct.uip_pbuf*, %struct.uip_pbuf** %13, align 8
  %88 = getelementptr inbounds %struct.uip_pbuf, %struct.uip_pbuf* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* %5, align 8
  %91 = call i32 @bba_insdata(i64 %89, i64 %90)
  br label %118

92:                                               ; preds = %75
  %93 = load i32, i32* %6, align 4
  %94 = load i32, i32* %7, align 4
  %95 = sub nsw i32 %93, %94
  %96 = sext i32 %95 to i64
  store i64 %96, i64* %14, align 8
  %97 = load i64, i64* %14, align 8
  %98 = load i64, i64* %5, align 8
  %99 = sub nsw i64 %98, %97
  store i64 %99, i64* %5, align 8
  %100 = load i32, i32* @BBA_INIT_RRP, align 4
  %101 = shl i32 %100, 8
  store i32 %101, i32* %7, align 4
  %102 = load %struct.uip_pbuf*, %struct.uip_pbuf** %13, align 8
  %103 = getelementptr inbounds %struct.uip_pbuf, %struct.uip_pbuf* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* %14, align 8
  %106 = call i32 @bba_insdata(i64 %104, i64 %105)
  %107 = call i32 (...) @bba_deselect()
  %108 = call i32 (...) @bba_select()
  %109 = load i32, i32* %7, align 4
  %110 = call i32 @bba_insregister(i32 %109)
  %111 = load %struct.uip_pbuf*, %struct.uip_pbuf** %13, align 8
  %112 = getelementptr inbounds %struct.uip_pbuf, %struct.uip_pbuf* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* %14, align 8
  %115 = add nsw i64 %113, %114
  %116 = load i64, i64* %5, align 8
  %117 = call i32 @bba_insdata(i64 %115, i64 %116)
  br label %118

118:                                              ; preds = %92, %86
  %119 = call i32 (...) @bba_deselect()
  %120 = load i64, i64* %5, align 8
  %121 = load i32, i32* %7, align 4
  %122 = sext i32 %121 to i64
  %123 = add nsw i64 %122, %120
  %124 = trunc i64 %123 to i32
  store i32 %124, i32* %7, align 4
  br label %125

125:                                              ; preds = %118
  %126 = load %struct.uip_pbuf*, %struct.uip_pbuf** %13, align 8
  %127 = getelementptr inbounds %struct.uip_pbuf, %struct.uip_pbuf* %126, i32 0, i32 1
  %128 = load %struct.uip_pbuf*, %struct.uip_pbuf** %127, align 8
  store %struct.uip_pbuf* %128, %struct.uip_pbuf** %13, align 8
  br label %72

129:                                              ; preds = %72
  %130 = load i32, i32* @EXI_CHANNEL_0, align 4
  %131 = call i32 @EXI_Unlock(i32 %130)
  %132 = load %struct.uip_pbuf*, %struct.uip_pbuf** %12, align 8
  %133 = load %struct.uip_netif*, %struct.uip_netif** %3, align 8
  %134 = call i32 @bba_process(%struct.uip_pbuf* %132, %struct.uip_netif* %133)
  %135 = load i32, i32* @EXI_CHANNEL_0, align 4
  %136 = load i32, i32* @EXI_DEVICE_2, align 4
  %137 = call i32 @EXI_Lock(i32 %135, i32 %136, i32* null)
  br label %139

138:                                              ; preds = %57
  br label %147

139:                                              ; preds = %129
  %140 = load i64, i64* %11, align 8
  %141 = add nsw i64 %140, 1
  store i64 %141, i64* %11, align 8
  %142 = load i32, i32* @BBA_RRP, align 4
  %143 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cur_descr, i32 0, i32 2), align 8
  store i32 %143, i32* %9, align 4
  %144 = call i32 @bba_out12(i32 %142, i32 %143)
  %145 = load i32, i32* @BBA_RWP, align 4
  %146 = call i32 @bba_in12(i32 %145)
  store i32 %146, i32* %8, align 4
  br label %20

147:                                              ; preds = %138, %28
  %148 = load i32, i32* @UIP_ERR_OK, align 4
  ret i32 %148
}

declare dso_local i32 @UIP_LOG(i8*) #1

declare dso_local i32 @bba_in12(i32) #1

declare dso_local i32 @bba_ins(i32, i8*, i32) #1

declare dso_local i32 @le32_to_cpus(i64*) #1

declare dso_local %struct.uip_pbuf* @uip_pbuf_alloc(i32, i64, i32) #1

declare dso_local i32 @bba_select(...) #1

declare dso_local i32 @bba_insregister(i32) #1

declare dso_local i32 @bba_insdata(i64, i64) #1

declare dso_local i32 @bba_deselect(...) #1

declare dso_local i32 @EXI_Unlock(i32) #1

declare dso_local i32 @bba_process(%struct.uip_pbuf*, %struct.uip_netif*) #1

declare dso_local i32 @EXI_Lock(i32, i32, i32*) #1

declare dso_local i32 @bba_out12(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
