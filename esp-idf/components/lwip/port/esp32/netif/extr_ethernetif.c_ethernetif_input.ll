; ModuleID = '/home/carl/AnghaBench/esp-idf/components/lwip/port/esp32/netif/extr_ethernetif.c_ethernetif_input.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/lwip/port/esp32/netif/extr_ethernetif.c_ethernetif_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netif = type { i64 (%struct.pbuf*, %struct.netif*)* }
%struct.pbuf = type { i8*, %struct.netif*, i8* }

@PBUF_RAW = common dso_local global i32 0, align 4
@PBUF_REF = common dso_local global i32 0, align 4
@ERR_OK = common dso_local global i64 0, align 8
@NETIF_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"ethernetif_input: IP input error\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ethernetif_input(%struct.netif* %0, i8* %1, i64 %2, i8* %3) #0 {
  %5 = alloca %struct.netif*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.pbuf*, align 8
  store %struct.netif* %0, %struct.netif** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i8* %3, i8** %8, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = icmp eq i8* %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %4
  %13 = load %struct.netif*, %struct.netif** %5, align 8
  %14 = call i32 @netif_is_up(%struct.netif* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %24, label %16

16:                                               ; preds = %12, %4
  %17 = load i8*, i8** %6, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %16
  %20 = load %struct.netif*, %struct.netif** %5, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = call i32 @ethernet_free_rx_buf_l2(%struct.netif* %20, i8* %21)
  br label %23

23:                                               ; preds = %19, %16
  br label %52

24:                                               ; preds = %12
  %25 = load i32, i32* @PBUF_RAW, align 4
  %26 = load i64, i64* %7, align 8
  %27 = load i32, i32* @PBUF_REF, align 4
  %28 = call %struct.pbuf* @pbuf_alloc(i32 %25, i64 %26, i32 %27)
  store %struct.pbuf* %28, %struct.pbuf** %9, align 8
  %29 = load %struct.pbuf*, %struct.pbuf** %9, align 8
  %30 = icmp eq %struct.pbuf* %29, null
  br i1 %30, label %31, label %35

31:                                               ; preds = %24
  %32 = load %struct.netif*, %struct.netif** %5, align 8
  %33 = load i8*, i8** %6, align 8
  %34 = call i32 @ethernet_free_rx_buf_l2(%struct.netif* %32, i8* %33)
  br label %52

35:                                               ; preds = %24
  %36 = load i8*, i8** %6, align 8
  %37 = load %struct.pbuf*, %struct.pbuf** %9, align 8
  %38 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %37, i32 0, i32 2
  store i8* %36, i8** %38, align 8
  %39 = load %struct.netif*, %struct.netif** %5, align 8
  %40 = getelementptr inbounds %struct.netif, %struct.netif* %39, i32 0, i32 0
  %41 = load i64 (%struct.pbuf*, %struct.netif*)*, i64 (%struct.pbuf*, %struct.netif*)** %40, align 8
  %42 = load %struct.pbuf*, %struct.pbuf** %9, align 8
  %43 = load %struct.netif*, %struct.netif** %5, align 8
  %44 = call i64 %41(%struct.pbuf* %42, %struct.netif* %43)
  %45 = load i64, i64* @ERR_OK, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %52

47:                                               ; preds = %35
  %48 = load i32, i32* @NETIF_DEBUG, align 4
  %49 = call i32 @LWIP_DEBUGF(i32 %48, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %50 = load %struct.pbuf*, %struct.pbuf** %9, align 8
  %51 = call i32 @pbuf_free(%struct.pbuf* %50)
  br label %52

52:                                               ; preds = %23, %31, %47, %35
  ret void
}

declare dso_local i32 @netif_is_up(%struct.netif*) #1

declare dso_local i32 @ethernet_free_rx_buf_l2(%struct.netif*, i8*) #1

declare dso_local %struct.pbuf* @pbuf_alloc(i32, i64, i32) #1

declare dso_local i32 @LWIP_DEBUGF(i32, i8*) #1

declare dso_local i32 @pbuf_free(%struct.pbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
