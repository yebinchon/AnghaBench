; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/lwip/arch/gc/netif/extr_gcif.c___bba_init.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/lwip/arch/gc/netif/extr_gcif.c___bba_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netif = type { i64 }
%struct.bba_priv = type { %struct.TYPE_2__*, i32, i32, i32 }
%struct.TYPE_2__ = type { i32* }

@ERR_IF = common dso_local global i32 0, align 4
@NETIF_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"initializing BBA...\0A\00", align 1
@BBA_CMD_IRMASKALL = common dso_local global i32 0, align 4
@BBA_NWAYC = common dso_local global i32 0, align 4
@BBA_NAFR_PAR0 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"MAC ADDRESS %02x:%02x:%02x:%02x:%02x:%02x\0A\00", align 1
@BBA_IR = common dso_local global i32 0, align 4
@BBA_IMR = common dso_local global i32 0, align 4
@BBA_IMR_FIFOEIM = common dso_local global i32 0, align 4
@BBA_CMD_IRMASKNONE = common dso_local global i32 0, align 4
@ERR_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.netif*)* @__bba_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__bba_init(%struct.netif* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.netif*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bba_priv*, align 8
  store %struct.netif* %0, %struct.netif** %3, align 8
  %6 = load %struct.netif*, %struct.netif** %3, align 8
  %7 = getelementptr inbounds %struct.netif, %struct.netif* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to %struct.bba_priv*
  store %struct.bba_priv* %9, %struct.bba_priv** %5, align 8
  %10 = load %struct.bba_priv*, %struct.bba_priv** %5, align 8
  %11 = icmp ne %struct.bba_priv* %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ERR_IF, align 4
  store i32 %13, i32* %2, align 4
  br label %122

14:                                               ; preds = %1
  %15 = load i32, i32* @NETIF_DEBUG, align 4
  %16 = call i32 @LWIP_DEBUGF(i32 %15, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @BBA_CMD_IRMASKALL, align 4
  %18 = call i32 @bba_cmd_out8(i32 2, i32 %17)
  %19 = call i32 (...) @__bba_reset()
  %20 = call i32 @bba_cmd_in8(i32 1)
  %21 = load %struct.bba_priv*, %struct.bba_priv** %5, align 8
  %22 = getelementptr inbounds %struct.bba_priv, %struct.bba_priv* %21, i32 0, i32 3
  store i32 %20, i32* %22, align 8
  %23 = load %struct.bba_priv*, %struct.bba_priv** %5, align 8
  %24 = getelementptr inbounds %struct.bba_priv, %struct.bba_priv* %23, i32 0, i32 2
  %25 = call i32 @bba_cmd_outs(i32 4, i32* %24, i32 2)
  %26 = load %struct.bba_priv*, %struct.bba_priv** %5, align 8
  %27 = getelementptr inbounds %struct.bba_priv, %struct.bba_priv* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @bba_cmd_out8(i32 5, i32 %28)
  %30 = call i32 @bba_out8(i32 88, i32 128)
  %31 = call i32 @bba_out8(i32 89, i32 0)
  %32 = call i32 @bba_out8(i32 90, i32 3)
  %33 = call i32 @bba_out8(i32 91, i32 131)
  %34 = call i32 @bba_out8(i32 92, i32 50)
  %35 = call i32 @bba_out8(i32 93, i32 254)
  %36 = call i32 @bba_out8(i32 94, i32 31)
  %37 = call i32 @bba_out8(i32 95, i32 31)
  %38 = call i32 @udelay(i32 100)
  %39 = call i32 (...) @__bba_recv_init()
  %40 = load i32, i32* @BBA_NWAYC, align 4
  %41 = call i32 @bba_in8(i32 %40)
  %42 = and i32 %41, 192
  store i32 %42, i32* %4, align 4
  %43 = load i32, i32* @BBA_NWAYC, align 4
  %44 = load i32, i32* %4, align 4
  %45 = call i32 @bba_out8(i32 %43, i32 %44)
  %46 = call i32 @udelay(i32 100)
  %47 = load i32, i32* %4, align 4
  %48 = or i32 %47, 4
  store i32 %48, i32* %4, align 4
  %49 = load i32, i32* @BBA_NWAYC, align 4
  %50 = load i32, i32* %4, align 4
  %51 = call i32 @bba_out8(i32 %49, i32 %50)
  %52 = call i32 @udelay(i32 100)
  %53 = load i32, i32* %4, align 4
  %54 = or i32 %53, 8
  store i32 %54, i32* %4, align 4
  %55 = load i32, i32* @BBA_NWAYC, align 4
  %56 = load i32, i32* %4, align 4
  %57 = call i32 @bba_out8(i32 %55, i32 %56)
  %58 = call i32 @udelay(i32 100)
  %59 = load i32, i32* @BBA_NAFR_PAR0, align 4
  %60 = load %struct.bba_priv*, %struct.bba_priv** %5, align 8
  %61 = getelementptr inbounds %struct.bba_priv, %struct.bba_priv* %60, i32 0, i32 0
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = call i32 @bba_ins(i32 %59, i32* %64, i32 6)
  %66 = load i32, i32* @NETIF_DEBUG, align 4
  %67 = load %struct.bba_priv*, %struct.bba_priv** %5, align 8
  %68 = getelementptr inbounds %struct.bba_priv, %struct.bba_priv* %67, i32 0, i32 0
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.bba_priv*, %struct.bba_priv** %5, align 8
  %75 = getelementptr inbounds %struct.bba_priv, %struct.bba_priv* %74, i32 0, i32 0
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 1
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.bba_priv*, %struct.bba_priv** %5, align 8
  %82 = getelementptr inbounds %struct.bba_priv, %struct.bba_priv* %81, i32 0, i32 0
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 2
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.bba_priv*, %struct.bba_priv** %5, align 8
  %89 = getelementptr inbounds %struct.bba_priv, %struct.bba_priv* %88, i32 0, i32 0
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 3
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.bba_priv*, %struct.bba_priv** %5, align 8
  %96 = getelementptr inbounds %struct.bba_priv, %struct.bba_priv* %95, i32 0, i32 0
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  %99 = load i32*, i32** %98, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 4
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.bba_priv*, %struct.bba_priv** %5, align 8
  %103 = getelementptr inbounds %struct.bba_priv, %struct.bba_priv* %102, i32 0, i32 0
  %104 = load %struct.TYPE_2__*, %struct.TYPE_2__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 0
  %106 = load i32*, i32** %105, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 5
  %108 = load i32, i32* %107, align 4
  %109 = sext i32 %108 to i64
  %110 = inttoptr i64 %109 to i8*
  %111 = call i32 @LWIP_DEBUGF(i32 %66, i8* %110)
  %112 = load i32, i32* @BBA_IR, align 4
  %113 = call i32 @bba_out8(i32 %112, i32 255)
  %114 = load i32, i32* @BBA_IMR, align 4
  %115 = load i32, i32* @BBA_IMR_FIFOEIM, align 4
  %116 = xor i32 %115, -1
  %117 = and i32 255, %116
  %118 = call i32 @bba_out8(i32 %114, i32 %117)
  %119 = load i32, i32* @BBA_CMD_IRMASKNONE, align 4
  %120 = call i32 @bba_cmd_out8(i32 2, i32 %119)
  %121 = load i32, i32* @ERR_OK, align 4
  store i32 %121, i32* %2, align 4
  br label %122

122:                                              ; preds = %14, %12
  %123 = load i32, i32* %2, align 4
  ret i32 %123
}

declare dso_local i32 @LWIP_DEBUGF(i32, i8*) #1

declare dso_local i32 @bba_cmd_out8(i32, i32) #1

declare dso_local i32 @__bba_reset(...) #1

declare dso_local i32 @bba_cmd_in8(i32) #1

declare dso_local i32 @bba_cmd_outs(i32, i32*, i32) #1

declare dso_local i32 @bba_out8(i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @__bba_recv_init(...) #1

declare dso_local i32 @bba_in8(i32) #1

declare dso_local i32 @bba_ins(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
