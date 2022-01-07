; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/lwip/core/extr_netif.c_netif_remove.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/lwip/core/extr_netif.c_netif_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netif = type { %struct.netif* }

@netif_list = common dso_local global %struct.netif* null, align 8
@netif_default = common dso_local global %struct.netif* null, align 8
@NETIF_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"netif_remove: removed netif\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @netif_remove(%struct.netif* %0) #0 {
  %2 = alloca %struct.netif*, align 8
  %3 = alloca %struct.netif*, align 8
  store %struct.netif* %0, %struct.netif** %2, align 8
  %4 = load %struct.netif*, %struct.netif** %2, align 8
  %5 = icmp eq %struct.netif* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  br label %50

7:                                                ; preds = %1
  %8 = load %struct.netif*, %struct.netif** @netif_list, align 8
  %9 = load %struct.netif*, %struct.netif** %2, align 8
  %10 = icmp eq %struct.netif* %8, %9
  br i1 %10, label %11, label %15

11:                                               ; preds = %7
  %12 = load %struct.netif*, %struct.netif** %2, align 8
  %13 = getelementptr inbounds %struct.netif, %struct.netif* %12, i32 0, i32 0
  %14 = load %struct.netif*, %struct.netif** %13, align 8
  store %struct.netif* %14, %struct.netif** @netif_list, align 8
  br label %42

15:                                               ; preds = %7
  %16 = load %struct.netif*, %struct.netif** @netif_list, align 8
  store %struct.netif* %16, %struct.netif** %3, align 8
  br label %17

17:                                               ; preds = %33, %15
  %18 = load %struct.netif*, %struct.netif** %3, align 8
  %19 = icmp ne %struct.netif* %18, null
  br i1 %19, label %20, label %37

20:                                               ; preds = %17
  %21 = load %struct.netif*, %struct.netif** %3, align 8
  %22 = getelementptr inbounds %struct.netif, %struct.netif* %21, i32 0, i32 0
  %23 = load %struct.netif*, %struct.netif** %22, align 8
  %24 = load %struct.netif*, %struct.netif** %2, align 8
  %25 = icmp eq %struct.netif* %23, %24
  br i1 %25, label %26, label %32

26:                                               ; preds = %20
  %27 = load %struct.netif*, %struct.netif** %2, align 8
  %28 = getelementptr inbounds %struct.netif, %struct.netif* %27, i32 0, i32 0
  %29 = load %struct.netif*, %struct.netif** %28, align 8
  %30 = load %struct.netif*, %struct.netif** %3, align 8
  %31 = getelementptr inbounds %struct.netif, %struct.netif* %30, i32 0, i32 0
  store %struct.netif* %29, %struct.netif** %31, align 8
  br label %37

32:                                               ; preds = %20
  br label %33

33:                                               ; preds = %32
  %34 = load %struct.netif*, %struct.netif** %3, align 8
  %35 = getelementptr inbounds %struct.netif, %struct.netif* %34, i32 0, i32 0
  %36 = load %struct.netif*, %struct.netif** %35, align 8
  store %struct.netif* %36, %struct.netif** %3, align 8
  br label %17

37:                                               ; preds = %26, %17
  %38 = load %struct.netif*, %struct.netif** %3, align 8
  %39 = icmp eq %struct.netif* %38, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  br label %50

41:                                               ; preds = %37
  br label %42

42:                                               ; preds = %41, %11
  %43 = load %struct.netif*, %struct.netif** @netif_default, align 8
  %44 = load %struct.netif*, %struct.netif** %2, align 8
  %45 = icmp eq %struct.netif* %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  store %struct.netif* null, %struct.netif** @netif_default, align 8
  br label %47

47:                                               ; preds = %46, %42
  %48 = load i32, i32* @NETIF_DEBUG, align 4
  %49 = call i32 @LWIP_DEBUGF(i32 %48, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %50

50:                                               ; preds = %47, %40, %6
  ret void
}

declare dso_local i32 @LWIP_DEBUGF(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
