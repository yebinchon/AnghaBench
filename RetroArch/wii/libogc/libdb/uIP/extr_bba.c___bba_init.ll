; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libdb/uIP/extr_bba.c___bba_init.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libdb/uIP/extr_bba.c___bba_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uip_netif = type { i64 }
%struct.bba_priv = type { %struct.TYPE_2__*, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@UIP_ERR_IF = common dso_local global i32 0, align 4
@BBA_NAFR_PAR0 = common dso_local global i32 0, align 4
@BBA_IR = common dso_local global i32 0, align 4
@BBA_IMR = common dso_local global i32 0, align 4
@BBA_IMR_FIFOEIM = common dso_local global i32 0, align 4
@BBA_CMD_IRMASKNONE = common dso_local global i32 0, align 4
@UIP_ERR_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uip_netif*)* @__bba_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__bba_init(%struct.uip_netif* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uip_netif*, align 8
  %4 = alloca %struct.bba_priv*, align 8
  store %struct.uip_netif* %0, %struct.uip_netif** %3, align 8
  %5 = load %struct.uip_netif*, %struct.uip_netif** %3, align 8
  %6 = getelementptr inbounds %struct.uip_netif, %struct.uip_netif* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = inttoptr i64 %7 to %struct.bba_priv*
  store %struct.bba_priv* %8, %struct.bba_priv** %4, align 8
  %9 = load %struct.bba_priv*, %struct.bba_priv** %4, align 8
  %10 = icmp ne %struct.bba_priv* %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @UIP_ERR_IF, align 4
  store i32 %12, i32* %2, align 4
  br label %50

13:                                               ; preds = %1
  %14 = call i32 (...) @__bba_reset()
  %15 = call i32 @bba_cmd_in8(i32 1)
  %16 = load %struct.bba_priv*, %struct.bba_priv** %4, align 8
  %17 = getelementptr inbounds %struct.bba_priv, %struct.bba_priv* %16, i32 0, i32 3
  store i32 %15, i32* %17, align 8
  %18 = load %struct.bba_priv*, %struct.bba_priv** %4, align 8
  %19 = getelementptr inbounds %struct.bba_priv, %struct.bba_priv* %18, i32 0, i32 2
  %20 = call i32 @bba_cmd_outs(i32 4, i32* %19, i32 2)
  %21 = load %struct.bba_priv*, %struct.bba_priv** %4, align 8
  %22 = getelementptr inbounds %struct.bba_priv, %struct.bba_priv* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @bba_cmd_out8(i32 5, i32 %23)
  %25 = call i32 @bba_in8(i32 91)
  %26 = and i32 %25, -129
  %27 = call i32 @bba_out8(i32 91, i32 %26)
  %28 = call i32 @bba_out8(i32 94, i32 1)
  %29 = call i32 @bba_in8(i32 92)
  %30 = or i32 %29, 4
  %31 = call i32 @bba_out8(i32 92, i32 %30)
  %32 = call i32 (...) @__bba_recv_init()
  %33 = load i32, i32* @BBA_NAFR_PAR0, align 4
  %34 = load %struct.bba_priv*, %struct.bba_priv** %4, align 8
  %35 = getelementptr inbounds %struct.bba_priv, %struct.bba_priv* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @bba_ins(i32 %33, i32 %38, i32 6)
  %40 = load i32, i32* @BBA_IR, align 4
  %41 = call i32 @bba_out8(i32 %40, i32 255)
  %42 = load i32, i32* @BBA_IMR, align 4
  %43 = load i32, i32* @BBA_IMR_FIFOEIM, align 4
  %44 = xor i32 %43, -1
  %45 = and i32 255, %44
  %46 = call i32 @bba_out8(i32 %42, i32 %45)
  %47 = load i32, i32* @BBA_CMD_IRMASKNONE, align 4
  %48 = call i32 @bba_cmd_out8(i32 2, i32 %47)
  %49 = load i32, i32* @UIP_ERR_OK, align 4
  store i32 %49, i32* %2, align 4
  br label %50

50:                                               ; preds = %13, %11
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i32 @__bba_reset(...) #1

declare dso_local i32 @bba_cmd_in8(i32) #1

declare dso_local i32 @bba_cmd_outs(i32, i32*, i32) #1

declare dso_local i32 @bba_cmd_out8(i32, i32) #1

declare dso_local i32 @bba_out8(i32, i32) #1

declare dso_local i32 @bba_in8(i32) #1

declare dso_local i32 @__bba_recv_init(...) #1

declare dso_local i32 @bba_ins(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
