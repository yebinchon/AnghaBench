; ModuleID = '/home/carl/AnghaBench/anypixel/firmware/controller/ThirdParty/lwip-1.4.1/src/core/extr_netif.c_netif_remove.c'
source_filename = "/home/carl/AnghaBench/anypixel/firmware/controller/ThirdParty/lwip-1.4.1/src/core/extr_netif.c_netif_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netif = type { i32, i32 (%struct.netif*)*, %struct.netif* }

@netif_list = common dso_local global %struct.netif* null, align 8
@netif_default = common dso_local global %struct.netif* null, align 8
@NETIF_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"netif_remove: removed netif\0A\00", align 1
@NETIF_FLAG_IGMP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @netif_remove(%struct.netif* %0) #0 {
  %2 = alloca %struct.netif*, align 8
  %3 = alloca %struct.netif*, align 8
  store %struct.netif* %0, %struct.netif** %2, align 8
  %4 = load %struct.netif*, %struct.netif** %2, align 8
  %5 = icmp eq %struct.netif* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  br label %61

7:                                                ; preds = %1
  %8 = load %struct.netif*, %struct.netif** %2, align 8
  %9 = call i64 @netif_is_up(%struct.netif* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %7
  %12 = load %struct.netif*, %struct.netif** %2, align 8
  %13 = call i32 @netif_set_down(%struct.netif* %12)
  br label %14

14:                                               ; preds = %11, %7
  %15 = load %struct.netif*, %struct.netif** %2, align 8
  %16 = call i32 @snmp_delete_ipaddridx_tree(%struct.netif* %15)
  %17 = load %struct.netif*, %struct.netif** @netif_list, align 8
  %18 = load %struct.netif*, %struct.netif** %2, align 8
  %19 = icmp eq %struct.netif* %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %14
  %21 = load %struct.netif*, %struct.netif** %2, align 8
  %22 = getelementptr inbounds %struct.netif, %struct.netif* %21, i32 0, i32 2
  %23 = load %struct.netif*, %struct.netif** %22, align 8
  store %struct.netif* %23, %struct.netif** @netif_list, align 8
  br label %51

24:                                               ; preds = %14
  %25 = load %struct.netif*, %struct.netif** @netif_list, align 8
  store %struct.netif* %25, %struct.netif** %3, align 8
  br label %26

26:                                               ; preds = %42, %24
  %27 = load %struct.netif*, %struct.netif** %3, align 8
  %28 = icmp ne %struct.netif* %27, null
  br i1 %28, label %29, label %46

29:                                               ; preds = %26
  %30 = load %struct.netif*, %struct.netif** %3, align 8
  %31 = getelementptr inbounds %struct.netif, %struct.netif* %30, i32 0, i32 2
  %32 = load %struct.netif*, %struct.netif** %31, align 8
  %33 = load %struct.netif*, %struct.netif** %2, align 8
  %34 = icmp eq %struct.netif* %32, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %29
  %36 = load %struct.netif*, %struct.netif** %2, align 8
  %37 = getelementptr inbounds %struct.netif, %struct.netif* %36, i32 0, i32 2
  %38 = load %struct.netif*, %struct.netif** %37, align 8
  %39 = load %struct.netif*, %struct.netif** %3, align 8
  %40 = getelementptr inbounds %struct.netif, %struct.netif* %39, i32 0, i32 2
  store %struct.netif* %38, %struct.netif** %40, align 8
  br label %46

41:                                               ; preds = %29
  br label %42

42:                                               ; preds = %41
  %43 = load %struct.netif*, %struct.netif** %3, align 8
  %44 = getelementptr inbounds %struct.netif, %struct.netif* %43, i32 0, i32 2
  %45 = load %struct.netif*, %struct.netif** %44, align 8
  store %struct.netif* %45, %struct.netif** %3, align 8
  br label %26

46:                                               ; preds = %35, %26
  %47 = load %struct.netif*, %struct.netif** %3, align 8
  %48 = icmp eq %struct.netif* %47, null
  br i1 %48, label %49, label %50

49:                                               ; preds = %46
  br label %61

50:                                               ; preds = %46
  br label %51

51:                                               ; preds = %50, %20
  %52 = call i32 (...) @snmp_dec_iflist()
  %53 = load %struct.netif*, %struct.netif** @netif_default, align 8
  %54 = load %struct.netif*, %struct.netif** %2, align 8
  %55 = icmp eq %struct.netif* %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %51
  %57 = call i32 @netif_set_default(i32* null)
  br label %58

58:                                               ; preds = %56, %51
  %59 = load i32, i32* @NETIF_DEBUG, align 4
  %60 = call i32 @LWIP_DEBUGF(i32 %59, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %61

61:                                               ; preds = %58, %49, %6
  ret void
}

declare dso_local i64 @netif_is_up(%struct.netif*) #1

declare dso_local i32 @netif_set_down(%struct.netif*) #1

declare dso_local i32 @snmp_delete_ipaddridx_tree(%struct.netif*) #1

declare dso_local i32 @snmp_dec_iflist(...) #1

declare dso_local i32 @netif_set_default(i32*) #1

declare dso_local i32 @LWIP_DEBUGF(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
