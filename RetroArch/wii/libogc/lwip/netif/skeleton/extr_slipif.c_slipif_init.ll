; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/lwip/netif/skeleton/extr_slipif.c_slipif_init.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/lwip/netif/skeleton/extr_slipif.c_slipif_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netif = type { i8*, i32, i32, i64, i32, i32 }

@SLIP_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"slipif_init: netif->num=%x\0A\00", align 1
@slipif_output = common dso_local global i32 0, align 4
@NETIF_FLAG_POINTTOPOINT = common dso_local global i32 0, align 4
@ERR_IF = common dso_local global i32 0, align 4
@slipif_loop = common dso_local global i32 0, align 4
@SLIPIF_THREAD_PRIO = common dso_local global i32 0, align 4
@ERR_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @slipif_init(%struct.netif* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.netif*, align 8
  store %struct.netif* %0, %struct.netif** %3, align 8
  %4 = load i32, i32* @SLIP_DEBUG, align 4
  %5 = load %struct.netif*, %struct.netif** %3, align 8
  %6 = getelementptr inbounds %struct.netif, %struct.netif* %5, i32 0, i32 3
  %7 = load i64, i64* %6, align 8
  %8 = trunc i64 %7 to i32
  %9 = sext i32 %8 to i64
  %10 = inttoptr i64 %9 to i8*
  %11 = call i32 @LWIP_DEBUGF(i32 %4, i8* %10)
  %12 = load %struct.netif*, %struct.netif** %3, align 8
  %13 = getelementptr inbounds %struct.netif, %struct.netif* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 0
  store i8 115, i8* %15, align 1
  %16 = load %struct.netif*, %struct.netif** %3, align 8
  %17 = getelementptr inbounds %struct.netif, %struct.netif* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 1
  store i8 108, i8* %19, align 1
  %20 = load i32, i32* @slipif_output, align 4
  %21 = load %struct.netif*, %struct.netif** %3, align 8
  %22 = getelementptr inbounds %struct.netif, %struct.netif* %21, i32 0, i32 5
  store i32 %20, i32* %22, align 4
  %23 = load %struct.netif*, %struct.netif** %3, align 8
  %24 = getelementptr inbounds %struct.netif, %struct.netif* %23, i32 0, i32 1
  store i32 1500, i32* %24, align 8
  %25 = load i32, i32* @NETIF_FLAG_POINTTOPOINT, align 4
  %26 = load %struct.netif*, %struct.netif** %3, align 8
  %27 = getelementptr inbounds %struct.netif, %struct.netif* %26, i32 0, i32 4
  store i32 %25, i32* %27, align 8
  %28 = load %struct.netif*, %struct.netif** %3, align 8
  %29 = getelementptr inbounds %struct.netif, %struct.netif* %28, i32 0, i32 3
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @sio_open(i64 %30)
  %32 = load %struct.netif*, %struct.netif** %3, align 8
  %33 = getelementptr inbounds %struct.netif, %struct.netif* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 4
  %34 = load %struct.netif*, %struct.netif** %3, align 8
  %35 = getelementptr inbounds %struct.netif, %struct.netif* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %1
  %39 = load i32, i32* @ERR_IF, align 4
  store i32 %39, i32* %2, align 4
  br label %46

40:                                               ; preds = %1
  %41 = load i32, i32* @slipif_loop, align 4
  %42 = load %struct.netif*, %struct.netif** %3, align 8
  %43 = load i32, i32* @SLIPIF_THREAD_PRIO, align 4
  %44 = call i32 @sys_thread_new(i32 %41, %struct.netif* %42, i32 %43)
  %45 = load i32, i32* @ERR_OK, align 4
  store i32 %45, i32* %2, align 4
  br label %46

46:                                               ; preds = %40, %38
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i32 @LWIP_DEBUGF(i32, i8*) #1

declare dso_local i32 @sio_open(i64) #1

declare dso_local i32 @sys_thread_new(i32, %struct.netif*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
