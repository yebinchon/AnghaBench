; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/lwip/arch/gc/netif/extr_gcif.c_bba_init.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/lwip/arch/gc/netif/extr_gcif.c_bba_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netif = type { i32, i64 }
%struct.bba_priv = type { i32 }

@NETIF_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"bba_init(call EXI_RegisterEXICallback())\0A\00", align 1
@EXI_CHANNEL_2 = common dso_local global i32 0, align 4
@bba_event_handler = common dso_local global i32* null, align 8
@ERR_OK = common dso_local global i64 0, align 8
@NETIF_FLAG_LINK_UP = common dso_local global i32 0, align 4
@ERR_IF = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @bba_init(%struct.netif* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.netif*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.bba_priv*, align 8
  store %struct.netif* %0, %struct.netif** %3, align 8
  %6 = load %struct.netif*, %struct.netif** %3, align 8
  %7 = getelementptr inbounds %struct.netif, %struct.netif* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to %struct.bba_priv*
  store %struct.bba_priv* %9, %struct.bba_priv** %5, align 8
  %10 = load %struct.bba_priv*, %struct.bba_priv** %5, align 8
  %11 = call i32 @__bba_exi_stop(%struct.bba_priv* %10)
  %12 = load i32, i32* @NETIF_DEBUG, align 4
  %13 = call i32 @LWIP_DEBUGF(i32 %12, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* @EXI_CHANNEL_2, align 4
  %15 = load i32*, i32** @bba_event_handler, align 8
  %16 = call i32 @EXI_RegisterEXICallback(i32 %14, i32* %15)
  %17 = load %struct.netif*, %struct.netif** %3, align 8
  %18 = call i64 @bba_probe(%struct.netif* %17)
  store i64 %18, i64* %4, align 8
  %19 = load i64, i64* %4, align 8
  %20 = load i64, i64* @ERR_OK, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %28

22:                                               ; preds = %1
  %23 = load i32, i32* @EXI_CHANNEL_2, align 4
  %24 = call i32 @EXI_RegisterEXICallback(i32 %23, i32* null)
  %25 = load %struct.bba_priv*, %struct.bba_priv** %5, align 8
  %26 = call i32 @__bba_exi_wake(%struct.bba_priv* %25)
  %27 = load i64, i64* %4, align 8
  store i64 %27, i64* %2, align 8
  br label %48

28:                                               ; preds = %1
  %29 = load %struct.bba_priv*, %struct.bba_priv** %5, align 8
  %30 = call i64 @__bba_get_linkstateasync(%struct.bba_priv* %29)
  store i64 %30, i64* %4, align 8
  %31 = load i64, i64* %4, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %28
  %34 = load i32, i32* @NETIF_FLAG_LINK_UP, align 4
  %35 = load %struct.netif*, %struct.netif** %3, align 8
  %36 = getelementptr inbounds %struct.netif, %struct.netif* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = or i32 %37, %34
  store i32 %38, i32* %36, align 8
  %39 = load i64, i64* @ERR_OK, align 8
  store i64 %39, i64* %4, align 8
  br label %44

40:                                               ; preds = %28
  %41 = load i32, i32* @EXI_CHANNEL_2, align 4
  %42 = call i32 @EXI_RegisterEXICallback(i32 %41, i32* null)
  %43 = load i64, i64* @ERR_IF, align 8
  store i64 %43, i64* %4, align 8
  br label %44

44:                                               ; preds = %40, %33
  %45 = load %struct.bba_priv*, %struct.bba_priv** %5, align 8
  %46 = call i32 @__bba_exi_wake(%struct.bba_priv* %45)
  %47 = load i64, i64* %4, align 8
  store i64 %47, i64* %2, align 8
  br label %48

48:                                               ; preds = %44, %22
  %49 = load i64, i64* %2, align 8
  ret i64 %49
}

declare dso_local i32 @__bba_exi_stop(%struct.bba_priv*) #1

declare dso_local i32 @LWIP_DEBUGF(i32, i8*) #1

declare dso_local i32 @EXI_RegisterEXICallback(i32, i32*) #1

declare dso_local i64 @bba_probe(%struct.netif*) #1

declare dso_local i32 @__bba_exi_wake(%struct.bba_priv*) #1

declare dso_local i64 @__bba_get_linkstateasync(%struct.bba_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
