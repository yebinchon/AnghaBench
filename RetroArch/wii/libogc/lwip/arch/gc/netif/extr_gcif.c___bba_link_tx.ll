; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/lwip/arch/gc/netif/extr_gcif.c___bba_link_tx.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/lwip/arch/gc/netif/extr_gcif.c___bba_link_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netif = type { i64 }
%struct.pbuf = type { i64, i32, i32, %struct.pbuf* }
%struct.bba_priv = type { i32 }

@BBA_MINPKTSIZE = common dso_local global i32 0, align 4
@BBA_TX_MAX_PACKET_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"__bba_link_tx(%d,%p) pkt_size\0A\00", align 1
@ERR_PKTSIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"__bba_link_tx(error link state)\0A\00", align 1
@ERR_ABRT = common dso_local global i32 0, align 4
@NETIF_DEBUG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"__bba_link_tx(%d,%p)\0A\00", align 1
@BBA_TXFIFOCNT = common dso_local global i32 0, align 4
@BBA_WRTXFIFOD = common dso_local global i32 0, align 4
@BBA_NCRA = common dso_local global i32 0, align 4
@BBA_NCRA_ST0 = common dso_local global i32 0, align 4
@BBA_NCRA_ST1 = common dso_local global i32 0, align 4
@ERR_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.netif*, %struct.pbuf*)* @__bba_link_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__bba_link_tx(%struct.netif* %0, %struct.pbuf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.netif*, align 8
  %5 = alloca %struct.pbuf*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.pbuf*, align 8
  %9 = alloca %struct.bba_priv*, align 8
  %10 = alloca i32, align 4
  store %struct.netif* %0, %struct.netif** %4, align 8
  store %struct.pbuf* %1, %struct.pbuf** %5, align 8
  %11 = load i32, i32* @BBA_MINPKTSIZE, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %6, align 8
  %14 = alloca i32, i64 %12, align 16
  store i64 %12, i64* %7, align 8
  %15 = load %struct.netif*, %struct.netif** %4, align 8
  %16 = getelementptr inbounds %struct.netif, %struct.netif* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.bba_priv*
  store %struct.bba_priv* %18, %struct.bba_priv** %9, align 8
  %19 = load %struct.bba_priv*, %struct.bba_priv** %9, align 8
  %20 = call i32 @__bba_tx_stop(%struct.bba_priv* %19)
  %21 = load %struct.bba_priv*, %struct.bba_priv** %9, align 8
  %22 = call i32 @__bba_exi_stop(%struct.bba_priv* %21)
  %23 = load %struct.pbuf*, %struct.pbuf** %5, align 8
  %24 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @BBA_TX_MAX_PACKET_SIZE, align 8
  %27 = icmp sgt i64 %25, %26
  br i1 %27, label %28, label %41

28:                                               ; preds = %2
  %29 = load %struct.pbuf*, %struct.pbuf** %5, align 8
  %30 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call i32 (...) @LWP_GetSelf()
  %33 = sext i32 %32 to i64
  %34 = inttoptr i64 %33 to i8*
  %35 = call i32 @LWIP_ERROR(i8* %34)
  %36 = load %struct.bba_priv*, %struct.bba_priv** %9, align 8
  %37 = call i32 @__bba_tx_wake(%struct.bba_priv* %36)
  %38 = load %struct.bba_priv*, %struct.bba_priv** %9, align 8
  %39 = call i32 @__bba_exi_wake(%struct.bba_priv* %38)
  %40 = load i32, i32* @ERR_PKTSIZE, align 4
  store i32 %40, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %115

41:                                               ; preds = %2
  %42 = load %struct.bba_priv*, %struct.bba_priv** %9, align 8
  %43 = call i32 @__linkstate(%struct.bba_priv* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %52, label %45

45:                                               ; preds = %41
  %46 = call i32 @LWIP_ERROR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %47 = load %struct.bba_priv*, %struct.bba_priv** %9, align 8
  %48 = call i32 @__bba_tx_wake(%struct.bba_priv* %47)
  %49 = load %struct.bba_priv*, %struct.bba_priv** %9, align 8
  %50 = call i32 @__bba_exi_wake(%struct.bba_priv* %49)
  %51 = load i32, i32* @ERR_ABRT, align 4
  store i32 %51, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %115

52:                                               ; preds = %41
  %53 = load i32, i32* @NETIF_DEBUG, align 4
  %54 = load %struct.pbuf*, %struct.pbuf** %5, align 8
  %55 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = call i32 (...) @LWP_GetSelf()
  %58 = sext i32 %57 to i64
  %59 = inttoptr i64 %58 to i8*
  %60 = call i32 @LWIP_DEBUGF(i32 %53, i8* %59)
  %61 = load i32, i32* @BBA_TXFIFOCNT, align 4
  %62 = load %struct.pbuf*, %struct.pbuf** %5, align 8
  %63 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = call i32 @bba_out12(i32 %61, i64 %64)
  %66 = call i32 (...) @bba_select()
  %67 = load i32, i32* @BBA_WRTXFIFOD, align 4
  %68 = call i32 @bba_outsregister(i32 %67)
  %69 = load %struct.pbuf*, %struct.pbuf** %5, align 8
  store %struct.pbuf* %69, %struct.pbuf** %8, align 8
  br label %70

70:                                               ; preds = %81, %52
  %71 = load %struct.pbuf*, %struct.pbuf** %8, align 8
  %72 = icmp ne %struct.pbuf* %71, null
  br i1 %72, label %73, label %85

73:                                               ; preds = %70
  %74 = load %struct.pbuf*, %struct.pbuf** %8, align 8
  %75 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.pbuf*, %struct.pbuf** %8, align 8
  %78 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @bba_outsdata_fast(i32 %76, i32 %79)
  br label %81

81:                                               ; preds = %73
  %82 = load %struct.pbuf*, %struct.pbuf** %8, align 8
  %83 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %82, i32 0, i32 3
  %84 = load %struct.pbuf*, %struct.pbuf** %83, align 8
  store %struct.pbuf* %84, %struct.pbuf** %8, align 8
  br label %70

85:                                               ; preds = %70
  %86 = load %struct.pbuf*, %struct.pbuf** %5, align 8
  %87 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i32, i32* @BBA_MINPKTSIZE, align 4
  %90 = sext i32 %89 to i64
  %91 = icmp slt i64 %88, %90
  br i1 %91, label %92, label %101

92:                                               ; preds = %85
  %93 = load i32, i32* @BBA_MINPKTSIZE, align 4
  %94 = sext i32 %93 to i64
  %95 = load %struct.pbuf*, %struct.pbuf** %5, align 8
  %96 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = sub nsw i64 %94, %97
  %99 = trunc i64 %98 to i32
  %100 = call i32 @bba_outsdata(i32* %14, i32 %99)
  br label %101

101:                                              ; preds = %92, %85
  %102 = call i32 (...) @bba_deselect()
  %103 = load i32, i32* @BBA_NCRA, align 4
  %104 = load i32, i32* @BBA_NCRA, align 4
  %105 = call i32 @bba_in8(i32 %104)
  %106 = load i32, i32* @BBA_NCRA_ST0, align 4
  %107 = xor i32 %106, -1
  %108 = and i32 %105, %107
  %109 = load i32, i32* @BBA_NCRA_ST1, align 4
  %110 = or i32 %108, %109
  %111 = call i32 @bba_out8(i32 %103, i32 %110)
  %112 = load %struct.bba_priv*, %struct.bba_priv** %9, align 8
  %113 = call i32 @__bba_exi_wake(%struct.bba_priv* %112)
  %114 = load i32, i32* @ERR_OK, align 4
  store i32 %114, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %115

115:                                              ; preds = %101, %45, %28
  %116 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %116)
  %117 = load i32, i32* %3, align 4
  ret i32 %117
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @__bba_tx_stop(%struct.bba_priv*) #2

declare dso_local i32 @__bba_exi_stop(%struct.bba_priv*) #2

declare dso_local i32 @LWIP_ERROR(i8*) #2

declare dso_local i32 @LWP_GetSelf(...) #2

declare dso_local i32 @__bba_tx_wake(%struct.bba_priv*) #2

declare dso_local i32 @__bba_exi_wake(%struct.bba_priv*) #2

declare dso_local i32 @__linkstate(%struct.bba_priv*) #2

declare dso_local i32 @LWIP_DEBUGF(i32, i8*) #2

declare dso_local i32 @bba_out12(i32, i64) #2

declare dso_local i32 @bba_select(...) #2

declare dso_local i32 @bba_outsregister(i32) #2

declare dso_local i32 @bba_outsdata_fast(i32, i32) #2

declare dso_local i32 @bba_outsdata(i32*, i32) #2

declare dso_local i32 @bba_deselect(...) #2

declare dso_local i32 @bba_out8(i32, i32) #2

declare dso_local i32 @bba_in8(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
