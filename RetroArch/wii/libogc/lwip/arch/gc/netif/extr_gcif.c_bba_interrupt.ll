; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/lwip/arch/gc/netif/extr_gcif.c_bba_interrupt.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/lwip/arch/gc/netif/extr_gcif.c_bba_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netif = type { i64 }
%struct.bba_priv = type { i32 }

@BBA_IR = common dso_local global i32 0, align 4
@BBA_IMR = common dso_local global i32 0, align 4
@NETIF_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"bba_interrupt(%02x)\0A\00", align 1
@BBA_IR_RBFI = common dso_local global i32 0, align 4
@BBA_IMR_RBFIM = common dso_local global i32 0, align 4
@BBA_IR_RI = common dso_local global i32 0, align 4
@BBA_IR_TI = common dso_local global i32 0, align 4
@BBA_IR_FIFOEI = common dso_local global i32 0, align 4
@BBA_IR_REI = common dso_local global i32 0, align 4
@BBA_LRPS = common dso_local global i32 0, align 4
@BBA_IR_TEI = common dso_local global i32 0, align 4
@BBA_LTPS = common dso_local global i32 0, align 4
@BBA_IR_FRAGI = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"bba_interrupt(BBA_IR_FRAGI)\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"bba_interrupt(BBA_IR_FIFOEI)\0A\00", align 1
@BBA_IR_BUSEI = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"bba_interrupt(BBA_IR_BUSEI)\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"bba_interrupt(exit)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.netif*)* @bba_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bba_interrupt(%struct.netif* %0) #0 {
  %2 = alloca %struct.netif*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.bba_priv*, align 8
  store %struct.netif* %0, %struct.netif** %2, align 8
  %9 = load %struct.netif*, %struct.netif** %2, align 8
  %10 = getelementptr inbounds %struct.netif, %struct.netif* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.bba_priv*
  store %struct.bba_priv* %12, %struct.bba_priv** %8, align 8
  %13 = load i32, i32* @BBA_IR, align 4
  %14 = call i32 @bba_in8(i32 %13)
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* @BBA_IMR, align 4
  %16 = call i32 @bba_in8(i32 %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* %4, align 4
  %19 = and i32 %17, %18
  store i32 %19, i32* %5, align 4
  br label %20

20:                                               ; preds = %119, %1
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %127

23:                                               ; preds = %20
  %24 = load i32, i32* @NETIF_DEBUG, align 4
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = inttoptr i64 %26 to i8*
  %28 = call i32 @LWIP_DEBUGF(i32 %24, i8* %27)
  %29 = load i32, i32* @BBA_IR, align 4
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @bba_out8(i32 %29, i32 %30)
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @BBA_IR_RBFI, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %49

36:                                               ; preds = %23
  %37 = load i32, i32* @BBA_IMR, align 4
  %38 = load i32, i32* @BBA_IMR, align 4
  %39 = call i32 @bba_in8(i32 %38)
  %40 = load i32, i32* @BBA_IMR_RBFIM, align 4
  %41 = xor i32 %40, -1
  %42 = and i32 %39, %41
  %43 = call i32 @bba_out8(i32 %37, i32 %42)
  %44 = load i32, i32* @BBA_IMR_RBFIM, align 4
  %45 = load %struct.bba_priv*, %struct.bba_priv** %8, align 8
  %46 = getelementptr inbounds %struct.bba_priv, %struct.bba_priv* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = or i32 %47, %44
  store i32 %48, i32* %46, align 4
  br label %49

49:                                               ; preds = %36, %23
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* @BBA_IR_RI, align 4
  %52 = load i32, i32* @BBA_IR_RBFI, align 4
  %53 = or i32 %51, %52
  %54 = and i32 %50, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %49
  %57 = load %struct.netif*, %struct.netif** %2, align 8
  %58 = call i32 @bba_start_rx(%struct.netif* %57, i32 32)
  br label %59

59:                                               ; preds = %56, %49
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* @BBA_IR_TI, align 4
  %62 = load i32, i32* @BBA_IR_FIFOEI, align 4
  %63 = or i32 %61, %62
  %64 = and i32 %60, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %59
  %67 = load %struct.bba_priv*, %struct.bba_priv** %8, align 8
  %68 = call i32 @__bba_tx_wake(%struct.bba_priv* %67)
  br label %69

69:                                               ; preds = %66, %59
  %70 = load i32, i32* %5, align 4
  %71 = load i32, i32* @BBA_IR_RBFI, align 4
  %72 = load i32, i32* @BBA_IR_REI, align 4
  %73 = or i32 %71, %72
  %74 = and i32 %70, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %69
  %77 = load i32, i32* @BBA_LRPS, align 4
  %78 = call i32 @bba_in8(i32 %77)
  store i32 %78, i32* %6, align 4
  %79 = load i32, i32* %6, align 4
  %80 = load %struct.bba_priv*, %struct.bba_priv** %8, align 8
  %81 = call i32 @__bba_rx_err(i32 %79, %struct.bba_priv* %80)
  br label %82

82:                                               ; preds = %76, %69
  %83 = load i32, i32* %5, align 4
  %84 = load i32, i32* @BBA_IR_TEI, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %95

87:                                               ; preds = %82
  %88 = load i32, i32* @BBA_LTPS, align 4
  %89 = call i32 @bba_in8(i32 %88)
  store i32 %89, i32* %7, align 4
  %90 = load i32, i32* %7, align 4
  %91 = load %struct.bba_priv*, %struct.bba_priv** %8, align 8
  %92 = call i32 @__bba_tx_err(i32 %90, %struct.bba_priv* %91)
  %93 = load %struct.bba_priv*, %struct.bba_priv** %8, align 8
  %94 = call i32 @__bba_tx_wake(%struct.bba_priv* %93)
  br label %95

95:                                               ; preds = %87, %82
  %96 = load i32, i32* %5, align 4
  %97 = load i32, i32* @BBA_IR_FRAGI, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %95
  %101 = load i32, i32* @NETIF_DEBUG, align 4
  %102 = call i32 @LWIP_DEBUGF(i32 %101, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %103

103:                                              ; preds = %100, %95
  %104 = load i32, i32* %5, align 4
  %105 = load i32, i32* @BBA_IR_FIFOEI, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %103
  %109 = load i32, i32* @NETIF_DEBUG, align 4
  %110 = call i32 @LWIP_DEBUGF(i32 %109, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  br label %111

111:                                              ; preds = %108, %103
  %112 = load i32, i32* %5, align 4
  %113 = load i32, i32* @BBA_IR_BUSEI, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %111
  %117 = load i32, i32* @NETIF_DEBUG, align 4
  %118 = call i32 @LWIP_DEBUGF(i32 %117, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  br label %119

119:                                              ; preds = %116, %111
  %120 = load i32, i32* @BBA_IR, align 4
  %121 = call i32 @bba_in8(i32 %120)
  store i32 %121, i32* %3, align 4
  %122 = load i32, i32* @BBA_IMR, align 4
  %123 = call i32 @bba_in8(i32 %122)
  store i32 %123, i32* %4, align 4
  %124 = load i32, i32* %3, align 4
  %125 = load i32, i32* %4, align 4
  %126 = and i32 %124, %125
  store i32 %126, i32* %5, align 4
  br label %20

127:                                              ; preds = %20
  %128 = load i32, i32* @NETIF_DEBUG, align 4
  %129 = call i32 @LWIP_DEBUGF(i32 %128, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  ret void
}

declare dso_local i32 @bba_in8(i32) #1

declare dso_local i32 @LWIP_DEBUGF(i32, i8*) #1

declare dso_local i32 @bba_out8(i32, i32) #1

declare dso_local i32 @bba_start_rx(%struct.netif*, i32) #1

declare dso_local i32 @__bba_tx_wake(%struct.bba_priv*) #1

declare dso_local i32 @__bba_rx_err(i32, %struct.bba_priv*) #1

declare dso_local i32 @__bba_tx_err(i32, %struct.bba_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
