; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/lwip/arch/gc/netif/extr_gcif.c_bba_start_rx.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/lwip/arch/gc/netif/extr_gcif.c_bba_start_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i32 }
%struct.netif = type { i32 (%struct.pbuf*, %struct.netif*)*, i64 }
%struct.pbuf = type { i64, i64, %struct.pbuf* }
%struct.bba_priv = type { i32 }

@NETIF_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"bba_start_rx()\0A\00", align 1
@BBA_RWP = common dso_local global i32 0, align 4
@BBA_RRP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"bba_start_rx(%04x,%04x)\0A\00", align 1
@cur_descr = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@BBA_RX_MAX_PACKET_SIZE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [43 x i8] c"bba_start_rx(size>BBA_RX_MAX_PACKET_SIZE)\0A\00", align 1
@BBA_RX_STATUS_RERR = common dso_local global i64 0, align 8
@BBA_RX_STATUS_FAE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [32 x i8] c"bba_start_rx(pkt_status = 02x)\0A\00", align 1
@BBA_INIT_RHBP = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"bba_start_rx(%04x,%d,%04x)\0A\00", align 1
@PBUF_RAW = common dso_local global i32 0, align 4
@PBUF_POOL = common dso_local global i32 0, align 4
@BBA_INIT_RRP = common dso_local global i32 0, align 4
@BBA_IR_RBFI = common dso_local global i32 0, align 4
@BBA_IMR = common dso_local global i32 0, align 4
@BBA_IMR_RBFIM = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [34 x i8] c"bba_start_rx(rx interrupt close)\0A\00", align 1
@ERR_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.netif*, i64)* @bba_start_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bba_start_rx(%struct.netif* %0, i64 %1) #0 {
  %3 = alloca %struct.netif*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.pbuf*, align 8
  %13 = alloca %struct.pbuf*, align 8
  %14 = alloca %struct.bba_priv*, align 8
  %15 = alloca i64, align 8
  store %struct.netif* %0, %struct.netif** %3, align 8
  store i64 %1, i64* %4, align 8
  store %struct.pbuf* null, %struct.pbuf** %13, align 8
  %16 = load %struct.netif*, %struct.netif** %3, align 8
  %17 = getelementptr inbounds %struct.netif, %struct.netif* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.bba_priv*
  store %struct.bba_priv* %19, %struct.bba_priv** %14, align 8
  %20 = load i32, i32* @NETIF_DEBUG, align 4
  %21 = call i32 @LWIP_DEBUGF(i32 %20, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store i64 0, i64* %11, align 8
  %22 = load i32, i32* @BBA_RWP, align 4
  %23 = call i32 @bba_in12(i32 %22)
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* @BBA_RRP, align 4
  %25 = call i32 @bba_in12(i32 %24)
  store i32 %25, i32* %8, align 4
  br label %26

26:                                               ; preds = %168, %65, %54, %2
  %27 = load i64, i64* %11, align 8
  %28 = load i64, i64* %4, align 8
  %29 = icmp slt i64 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %26
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp ne i32 %31, %32
  br label %34

34:                                               ; preds = %30, %26
  %35 = phi i1 [ false, %26 ], [ %33, %30 ]
  br i1 %35, label %36, label %176

36:                                               ; preds = %34
  %37 = load i32, i32* @NETIF_DEBUG, align 4
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* %9, align 4
  %40 = sext i32 %39 to i64
  %41 = inttoptr i64 %40 to i8*
  %42 = call i32 @LWIP_DEBUGF(i32 %37, i8* %41)
  %43 = load i32, i32* %8, align 4
  %44 = shl i32 %43, 8
  %45 = call i32 @bba_ins(i32 %44, i8* bitcast (%struct.TYPE_2__* @cur_descr to i8*), i32 4)
  %46 = call i32 @le32_to_cpus(i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cur_descr, i32 0, i32 0))
  %47 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cur_descr, i32 0, i32 0), align 8
  %48 = sub nsw i64 %47, 4
  store i64 %48, i64* %5, align 8
  %49 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cur_descr, i32 0, i32 1), align 8
  store i64 %49, i64* %10, align 8
  %50 = load i64, i64* %5, align 8
  %51 = load i64, i64* @BBA_RX_MAX_PACKET_SIZE, align 8
  %52 = add nsw i64 %51, 4
  %53 = icmp sgt i64 %50, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %36
  %55 = load i32, i32* @NETIF_DEBUG, align 4
  %56 = or i32 %55, 2
  %57 = call i32 @LWIP_DEBUGF(i32 %56, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  br label %26

58:                                               ; preds = %36
  %59 = load i64, i64* %10, align 8
  %60 = load i64, i64* @BBA_RX_STATUS_RERR, align 8
  %61 = load i64, i64* @BBA_RX_STATUS_FAE, align 8
  %62 = or i64 %60, %61
  %63 = and i64 %59, %62
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %78

65:                                               ; preds = %58
  %66 = load i32, i32* @NETIF_DEBUG, align 4
  %67 = or i32 %66, 2
  %68 = load i64, i64* %10, align 8
  %69 = inttoptr i64 %68 to i8*
  %70 = call i32 @LWIP_DEBUGF(i32 %67, i8* %69)
  %71 = load i64, i64* %10, align 8
  %72 = load %struct.bba_priv*, %struct.bba_priv** %14, align 8
  %73 = call i32 @__bba_rx_err(i64 %71, %struct.bba_priv* %72)
  %74 = load i32, i32* @BBA_RWP, align 4
  %75 = call i32 @bba_in12(i32 %74)
  store i32 %75, i32* %9, align 4
  %76 = load i32, i32* @BBA_RRP, align 4
  %77 = call i32 @bba_in12(i32 %76)
  store i32 %77, i32* %8, align 4
  br label %26

78:                                               ; preds = %58
  %79 = load i32, i32* %8, align 4
  %80 = shl i32 %79, 8
  %81 = add nsw i32 %80, 4
  store i32 %81, i32* %7, align 4
  %82 = load i32, i32* @BBA_INIT_RHBP, align 4
  %83 = add nsw i32 %82, 1
  %84 = shl i32 %83, 8
  store i32 %84, i32* %6, align 4
  %85 = load i32, i32* @NETIF_DEBUG, align 4
  %86 = load i32, i32* %7, align 4
  %87 = load i64, i64* %5, align 8
  %88 = load i32, i32* %6, align 4
  %89 = sext i32 %88 to i64
  %90 = inttoptr i64 %89 to i8*
  %91 = call i32 @LWIP_DEBUGF(i32 %85, i8* %90)
  %92 = load i32, i32* @PBUF_RAW, align 4
  %93 = load i64, i64* %5, align 8
  %94 = load i32, i32* @PBUF_POOL, align 4
  %95 = call %struct.pbuf* @pbuf_alloc(i32 %92, i64 %93, i32 %94)
  store %struct.pbuf* %95, %struct.pbuf** %13, align 8
  %96 = load %struct.pbuf*, %struct.pbuf** %13, align 8
  %97 = icmp ne %struct.pbuf* %96, null
  br i1 %97, label %98, label %167

98:                                               ; preds = %78
  %99 = load %struct.pbuf*, %struct.pbuf** %13, align 8
  store %struct.pbuf* %99, %struct.pbuf** %12, align 8
  br label %100

100:                                              ; preds = %156, %98
  %101 = load %struct.pbuf*, %struct.pbuf** %12, align 8
  %102 = icmp ne %struct.pbuf* %101, null
  br i1 %102, label %103, label %160

103:                                              ; preds = %100
  %104 = load %struct.pbuf*, %struct.pbuf** %12, align 8
  %105 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  store i64 %106, i64* %5, align 8
  %107 = call i32 (...) @bba_select()
  %108 = load i32, i32* %7, align 4
  %109 = call i32 @bba_insregister(i32 %108)
  %110 = load i32, i32* %7, align 4
  %111 = sext i32 %110 to i64
  %112 = load i64, i64* %5, align 8
  %113 = add nsw i64 %111, %112
  %114 = load i32, i32* %6, align 4
  %115 = sext i32 %114 to i64
  %116 = icmp slt i64 %113, %115
  br i1 %116, label %117, label %123

117:                                              ; preds = %103
  %118 = load %struct.pbuf*, %struct.pbuf** %12, align 8
  %119 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* %5, align 8
  %122 = call i32 @bba_insdata_fast(i64 %120, i64 %121)
  br label %149

123:                                              ; preds = %103
  %124 = load i32, i32* %6, align 4
  %125 = load i32, i32* %7, align 4
  %126 = sub nsw i32 %124, %125
  %127 = sext i32 %126 to i64
  store i64 %127, i64* %15, align 8
  %128 = load i64, i64* %15, align 8
  %129 = load i64, i64* %5, align 8
  %130 = sub nsw i64 %129, %128
  store i64 %130, i64* %5, align 8
  %131 = load i32, i32* @BBA_INIT_RRP, align 4
  %132 = shl i32 %131, 8
  store i32 %132, i32* %7, align 4
  %133 = load %struct.pbuf*, %struct.pbuf** %12, align 8
  %134 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* %15, align 8
  %137 = call i32 @bba_insdata_fast(i64 %135, i64 %136)
  %138 = call i32 (...) @bba_deselect()
  %139 = call i32 (...) @bba_select()
  %140 = load i32, i32* %7, align 4
  %141 = call i32 @bba_insregister(i32 %140)
  %142 = load %struct.pbuf*, %struct.pbuf** %12, align 8
  %143 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %142, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* %15, align 8
  %146 = add nsw i64 %144, %145
  %147 = load i64, i64* %5, align 8
  %148 = call i32 @bba_insdata_fast(i64 %146, i64 %147)
  br label %149

149:                                              ; preds = %123, %117
  %150 = call i32 (...) @bba_deselect()
  %151 = load i64, i64* %5, align 8
  %152 = load i32, i32* %7, align 4
  %153 = sext i32 %152 to i64
  %154 = add nsw i64 %153, %151
  %155 = trunc i64 %154 to i32
  store i32 %155, i32* %7, align 4
  br label %156

156:                                              ; preds = %149
  %157 = load %struct.pbuf*, %struct.pbuf** %12, align 8
  %158 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %157, i32 0, i32 2
  %159 = load %struct.pbuf*, %struct.pbuf** %158, align 8
  store %struct.pbuf* %159, %struct.pbuf** %12, align 8
  br label %100

160:                                              ; preds = %100
  %161 = load %struct.netif*, %struct.netif** %3, align 8
  %162 = getelementptr inbounds %struct.netif, %struct.netif* %161, i32 0, i32 0
  %163 = load i32 (%struct.pbuf*, %struct.netif*)*, i32 (%struct.pbuf*, %struct.netif*)** %162, align 8
  %164 = load %struct.pbuf*, %struct.pbuf** %13, align 8
  %165 = load %struct.netif*, %struct.netif** %3, align 8
  %166 = call i32 %163(%struct.pbuf* %164, %struct.netif* %165)
  br label %168

167:                                              ; preds = %78
  br label %176

168:                                              ; preds = %160
  %169 = load i64, i64* %11, align 8
  %170 = add nsw i64 %169, 1
  store i64 %170, i64* %11, align 8
  %171 = load i32, i32* @BBA_RRP, align 4
  %172 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cur_descr, i32 0, i32 2), align 8
  store i32 %172, i32* %8, align 4
  %173 = call i32 @bba_out12(i32 %171, i32 %172)
  %174 = load i32, i32* @BBA_RWP, align 4
  %175 = call i32 @bba_in12(i32 %174)
  store i32 %175, i32* %9, align 4
  br label %26

176:                                              ; preds = %167, %34
  %177 = load %struct.bba_priv*, %struct.bba_priv** %14, align 8
  %178 = getelementptr inbounds %struct.bba_priv, %struct.bba_priv* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = load i32, i32* @BBA_IR_RBFI, align 4
  %181 = and i32 %179, %180
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %196

183:                                              ; preds = %176
  %184 = load i32, i32* @BBA_IR_RBFI, align 4
  %185 = xor i32 %184, -1
  %186 = load %struct.bba_priv*, %struct.bba_priv** %14, align 8
  %187 = getelementptr inbounds %struct.bba_priv, %struct.bba_priv* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = and i32 %188, %185
  store i32 %189, i32* %187, align 4
  %190 = load i32, i32* @BBA_IMR, align 4
  %191 = load i32, i32* @BBA_IMR, align 4
  %192 = call i32 @bba_in8(i32 %191)
  %193 = load i32, i32* @BBA_IMR_RBFIM, align 4
  %194 = or i32 %192, %193
  %195 = call i32 @bba_out8(i32 %190, i32 %194)
  br label %196

196:                                              ; preds = %183, %176
  %197 = load i32, i32* @NETIF_DEBUG, align 4
  %198 = call i32 @LWIP_DEBUGF(i32 %197, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0))
  %199 = load i32, i32* @ERR_OK, align 4
  ret i32 %199
}

declare dso_local i32 @LWIP_DEBUGF(i32, i8*) #1

declare dso_local i32 @bba_in12(i32) #1

declare dso_local i32 @bba_ins(i32, i8*, i32) #1

declare dso_local i32 @le32_to_cpus(i64*) #1

declare dso_local i32 @__bba_rx_err(i64, %struct.bba_priv*) #1

declare dso_local %struct.pbuf* @pbuf_alloc(i32, i64, i32) #1

declare dso_local i32 @bba_select(...) #1

declare dso_local i32 @bba_insregister(i32) #1

declare dso_local i32 @bba_insdata_fast(i64, i64) #1

declare dso_local i32 @bba_deselect(...) #1

declare dso_local i32 @bba_out12(i32, i32) #1

declare dso_local i32 @bba_out8(i32, i32) #1

declare dso_local i32 @bba_in8(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
