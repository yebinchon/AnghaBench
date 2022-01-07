; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libdb/uIP/extr_bba.c___bba_link_tx.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libdb/uIP/extr_bba.c___bba_link_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uip_netif = type { i32 }
%struct.uip_pbuf = type { i64, i64, i32*, %struct.uip_pbuf* }

@EXI_CHANNEL_0 = common dso_local global i32 0, align 4
@EXI_DEVICE_2 = common dso_local global i32 0, align 4
@UIP_ERR_IF = common dso_local global i32 0, align 4
@BBA_TX_MAX_PACKET_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [50 x i8] c"__bba_link_tx: packet dropped due to big buffer.\0A\00", align 1
@UIP_ERR_PKTSIZE = common dso_local global i32 0, align 4
@UIP_ERR_ABRT = common dso_local global i32 0, align 4
@BBA_NCRA = common dso_local global i32 0, align 4
@BBA_NCRA_ST0 = common dso_local global i32 0, align 4
@BBA_NCRA_ST1 = common dso_local global i32 0, align 4
@BBA_TXFIFOCNT = common dso_local global i32 0, align 4
@BBA_WRTXFIFOD = common dso_local global i32 0, align 4
@BBA_MINPKTSIZE = common dso_local global i64 0, align 8
@UIP_ERR_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uip_netif*, %struct.uip_pbuf*)* @__bba_link_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__bba_link_tx(%struct.uip_netif* %0, %struct.uip_pbuf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.uip_netif*, align 8
  %5 = alloca %struct.uip_pbuf*, align 8
  %6 = alloca [60 x i32], align 16
  %7 = alloca i64, align 8
  %8 = alloca %struct.uip_pbuf*, align 8
  store %struct.uip_netif* %0, %struct.uip_netif** %4, align 8
  store %struct.uip_pbuf* %1, %struct.uip_pbuf** %5, align 8
  %9 = load i32, i32* @EXI_CHANNEL_0, align 4
  %10 = load i32, i32* @EXI_DEVICE_2, align 4
  %11 = call i64 @EXI_Lock(i32 %9, i32 %10, i32* null)
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @UIP_ERR_IF, align 4
  store i32 %14, i32* %3, align 4
  br label %94

15:                                               ; preds = %2
  %16 = load %struct.uip_pbuf*, %struct.uip_pbuf** %5, align 8
  %17 = getelementptr inbounds %struct.uip_pbuf, %struct.uip_pbuf* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @BBA_TX_MAX_PACKET_SIZE, align 8
  %20 = icmp sgt i64 %18, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %15
  %22 = call i32 @UIP_LOG(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @EXI_CHANNEL_0, align 4
  %24 = call i32 @EXI_Unlock(i32 %23)
  %25 = load i32, i32* @UIP_ERR_PKTSIZE, align 4
  store i32 %25, i32* %3, align 4
  br label %94

26:                                               ; preds = %15
  %27 = call i32 (...) @__linkstate()
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %26
  %30 = load i32, i32* @EXI_CHANNEL_0, align 4
  %31 = call i32 @EXI_Unlock(i32 %30)
  %32 = load i32, i32* @UIP_ERR_ABRT, align 4
  store i32 %32, i32* %3, align 4
  br label %94

33:                                               ; preds = %26
  br label %34

34:                                               ; preds = %42, %33
  %35 = load i32, i32* @BBA_NCRA, align 4
  %36 = call i32 @bba_in8(i32 %35)
  %37 = load i32, i32* @BBA_NCRA_ST0, align 4
  %38 = load i32, i32* @BBA_NCRA_ST1, align 4
  %39 = or i32 %37, %38
  %40 = and i32 %36, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %34
  br label %34

43:                                               ; preds = %34
  %44 = load %struct.uip_pbuf*, %struct.uip_pbuf** %5, align 8
  %45 = getelementptr inbounds %struct.uip_pbuf, %struct.uip_pbuf* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  store i64 %46, i64* %7, align 8
  %47 = load i32, i32* @BBA_TXFIFOCNT, align 4
  %48 = load i64, i64* %7, align 8
  %49 = call i32 @bba_out12(i32 %47, i64 %48)
  %50 = call i32 (...) @bba_select()
  %51 = load i32, i32* @BBA_WRTXFIFOD, align 4
  %52 = call i32 @bba_outsregister(i32 %51)
  %53 = load %struct.uip_pbuf*, %struct.uip_pbuf** %5, align 8
  store %struct.uip_pbuf* %53, %struct.uip_pbuf** %8, align 8
  br label %54

54:                                               ; preds = %65, %43
  %55 = load %struct.uip_pbuf*, %struct.uip_pbuf** %8, align 8
  %56 = icmp ne %struct.uip_pbuf* %55, null
  br i1 %56, label %57, label %69

57:                                               ; preds = %54
  %58 = load %struct.uip_pbuf*, %struct.uip_pbuf** %8, align 8
  %59 = getelementptr inbounds %struct.uip_pbuf, %struct.uip_pbuf* %58, i32 0, i32 2
  %60 = load i32*, i32** %59, align 8
  %61 = load %struct.uip_pbuf*, %struct.uip_pbuf** %8, align 8
  %62 = getelementptr inbounds %struct.uip_pbuf, %struct.uip_pbuf* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = call i32 @bba_outsdata(i32* %60, i64 %63)
  br label %65

65:                                               ; preds = %57
  %66 = load %struct.uip_pbuf*, %struct.uip_pbuf** %8, align 8
  %67 = getelementptr inbounds %struct.uip_pbuf, %struct.uip_pbuf* %66, i32 0, i32 3
  %68 = load %struct.uip_pbuf*, %struct.uip_pbuf** %67, align 8
  store %struct.uip_pbuf* %68, %struct.uip_pbuf** %8, align 8
  br label %54

69:                                               ; preds = %54
  %70 = load i64, i64* %7, align 8
  %71 = load i64, i64* @BBA_MINPKTSIZE, align 8
  %72 = icmp slt i64 %70, %71
  br i1 %72, label %73, label %80

73:                                               ; preds = %69
  %74 = load i64, i64* @BBA_MINPKTSIZE, align 8
  %75 = load i64, i64* %7, align 8
  %76 = sub nsw i64 %74, %75
  store i64 %76, i64* %7, align 8
  %77 = getelementptr inbounds [60 x i32], [60 x i32]* %6, i64 0, i64 0
  %78 = load i64, i64* %7, align 8
  %79 = call i32 @bba_outsdata(i32* %77, i64 %78)
  br label %80

80:                                               ; preds = %73, %69
  %81 = call i32 (...) @bba_deselect()
  %82 = load i32, i32* @BBA_NCRA, align 4
  %83 = load i32, i32* @BBA_NCRA, align 4
  %84 = call i32 @bba_in8(i32 %83)
  %85 = load i32, i32* @BBA_NCRA_ST0, align 4
  %86 = xor i32 %85, -1
  %87 = and i32 %84, %86
  %88 = load i32, i32* @BBA_NCRA_ST1, align 4
  %89 = or i32 %87, %88
  %90 = call i32 @bba_out8(i32 %82, i32 %89)
  %91 = load i32, i32* @EXI_CHANNEL_0, align 4
  %92 = call i32 @EXI_Unlock(i32 %91)
  %93 = load i32, i32* @UIP_ERR_OK, align 4
  store i32 %93, i32* %3, align 4
  br label %94

94:                                               ; preds = %80, %29, %21, %13
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

declare dso_local i64 @EXI_Lock(i32, i32, i32*) #1

declare dso_local i32 @UIP_LOG(i8*) #1

declare dso_local i32 @EXI_Unlock(i32) #1

declare dso_local i32 @__linkstate(...) #1

declare dso_local i32 @bba_in8(i32) #1

declare dso_local i32 @bba_out12(i32, i64) #1

declare dso_local i32 @bba_select(...) #1

declare dso_local i32 @bba_outsregister(i32) #1

declare dso_local i32 @bba_outsdata(i32*, i64) #1

declare dso_local i32 @bba_deselect(...) #1

declare dso_local i32 @bba_out8(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
