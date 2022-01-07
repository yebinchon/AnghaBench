; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/lwip/netif/skeleton/extr_slipif.c_slipif_output.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/lwip/netif/skeleton/extr_slipif.c_slipif_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netif = type { i32 }
%struct.pbuf = type { i32, i64, %struct.pbuf* }
%struct.ip_addr = type { i32 }

@SLIP_ESC_END = common dso_local global i32 0, align 4
@SLIP_ESC_ESC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @slipif_output(%struct.netif* %0, %struct.pbuf* %1, %struct.ip_addr* %2) #0 {
  %4 = alloca %struct.netif*, align 8
  %5 = alloca %struct.pbuf*, align 8
  %6 = alloca %struct.ip_addr*, align 8
  %7 = alloca %struct.pbuf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.netif* %0, %struct.netif** %4, align 8
  store %struct.pbuf* %1, %struct.pbuf** %5, align 8
  store %struct.ip_addr* %2, %struct.ip_addr** %6, align 8
  %10 = load %struct.netif*, %struct.netif** %4, align 8
  %11 = getelementptr inbounds %struct.netif, %struct.netif* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @sio_send(i32 129, i32 %12)
  %14 = load %struct.pbuf*, %struct.pbuf** %5, align 8
  store %struct.pbuf* %14, %struct.pbuf** %7, align 8
  br label %15

15:                                               ; preds = %66, %3
  %16 = load %struct.pbuf*, %struct.pbuf** %7, align 8
  %17 = icmp ne %struct.pbuf* %16, null
  br i1 %17, label %18, label %70

18:                                               ; preds = %15
  store i32 0, i32* %8, align 4
  br label %19

19:                                               ; preds = %62, %18
  %20 = load i32, i32* %8, align 4
  %21 = load %struct.pbuf*, %struct.pbuf** %7, align 8
  %22 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp slt i32 %20, %23
  br i1 %24, label %25, label %65

25:                                               ; preds = %19
  %26 = load %struct.pbuf*, %struct.pbuf** %7, align 8
  %27 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to i32*
  %30 = load i32, i32* %8, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %9, align 4
  switch i32 %34, label %55 [
    i32 129, label %35
    i32 128, label %45
  ]

35:                                               ; preds = %25
  %36 = load %struct.netif*, %struct.netif** %4, align 8
  %37 = getelementptr inbounds %struct.netif, %struct.netif* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @sio_send(i32 128, i32 %38)
  %40 = load i32, i32* @SLIP_ESC_END, align 4
  %41 = load %struct.netif*, %struct.netif** %4, align 8
  %42 = getelementptr inbounds %struct.netif, %struct.netif* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @sio_send(i32 %40, i32 %43)
  br label %61

45:                                               ; preds = %25
  %46 = load %struct.netif*, %struct.netif** %4, align 8
  %47 = getelementptr inbounds %struct.netif, %struct.netif* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @sio_send(i32 128, i32 %48)
  %50 = load i32, i32* @SLIP_ESC_ESC, align 4
  %51 = load %struct.netif*, %struct.netif** %4, align 8
  %52 = getelementptr inbounds %struct.netif, %struct.netif* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @sio_send(i32 %50, i32 %53)
  br label %61

55:                                               ; preds = %25
  %56 = load i32, i32* %9, align 4
  %57 = load %struct.netif*, %struct.netif** %4, align 8
  %58 = getelementptr inbounds %struct.netif, %struct.netif* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @sio_send(i32 %56, i32 %59)
  br label %61

61:                                               ; preds = %55, %45, %35
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %8, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %8, align 4
  br label %19

65:                                               ; preds = %19
  br label %66

66:                                               ; preds = %65
  %67 = load %struct.pbuf*, %struct.pbuf** %7, align 8
  %68 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %67, i32 0, i32 2
  %69 = load %struct.pbuf*, %struct.pbuf** %68, align 8
  store %struct.pbuf* %69, %struct.pbuf** %7, align 8
  br label %15

70:                                               ; preds = %15
  %71 = load %struct.netif*, %struct.netif** %4, align 8
  %72 = getelementptr inbounds %struct.netif, %struct.netif* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @sio_send(i32 129, i32 %73)
  ret i32 0
}

declare dso_local i32 @sio_send(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
