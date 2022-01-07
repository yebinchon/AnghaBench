; ModuleID = '/home/carl/AnghaBench/Arduino/tools/sdk/lwip/src/core/extr_netif.c_netif_set_default.c'
source_filename = "/home/carl/AnghaBench/Arduino/tools/sdk/lwip/src/core/extr_netif.c_netif_set_default.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netif = type { i8* }

@netif_default = common dso_local global %struct.netif* null, align 8
@NETIF_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"netif: setting default interface %c%c\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @netif_set_default(%struct.netif* %0) #0 {
  %2 = alloca %struct.netif*, align 8
  store %struct.netif* %0, %struct.netif** %2, align 8
  %3 = load %struct.netif*, %struct.netif** %2, align 8
  %4 = icmp eq %struct.netif* %3, null
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = load %struct.netif*, %struct.netif** %2, align 8
  %7 = call i32 @snmp_delete_iprteidx_tree(i32 1, %struct.netif* %6)
  br label %11

8:                                                ; preds = %1
  %9 = load %struct.netif*, %struct.netif** %2, align 8
  %10 = call i32 @snmp_insert_iprteidx_tree(i32 1, %struct.netif* %9)
  br label %11

11:                                               ; preds = %8, %5
  %12 = load %struct.netif*, %struct.netif** %2, align 8
  store %struct.netif* %12, %struct.netif** @netif_default, align 8
  %13 = load i32, i32* @NETIF_DEBUG, align 4
  %14 = load %struct.netif*, %struct.netif** %2, align 8
  %15 = icmp ne %struct.netif* %14, null
  br i1 %15, label %16, label %23

16:                                               ; preds = %11
  %17 = load %struct.netif*, %struct.netif** %2, align 8
  %18 = getelementptr inbounds %struct.netif, %struct.netif* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 0
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  br label %24

23:                                               ; preds = %11
  br label %24

24:                                               ; preds = %23, %16
  %25 = phi i32 [ %22, %16 ], [ 39, %23 ]
  %26 = load %struct.netif*, %struct.netif** %2, align 8
  %27 = icmp ne %struct.netif* %26, null
  br i1 %27, label %28, label %35

28:                                               ; preds = %24
  %29 = load %struct.netif*, %struct.netif** %2, align 8
  %30 = getelementptr inbounds %struct.netif, %struct.netif* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 1
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  br label %36

35:                                               ; preds = %24
  br label %36

36:                                               ; preds = %35, %28
  %37 = phi i32 [ %34, %28 ], [ 39, %35 ]
  %38 = sext i32 %37 to i64
  %39 = inttoptr i64 %38 to i8*
  %40 = call i32 @LWIP_DEBUGF(i32 %13, i8* %39)
  ret void
}

declare dso_local i32 @snmp_delete_iprteidx_tree(i32, %struct.netif*) #1

declare dso_local i32 @snmp_insert_iprteidx_tree(i32, %struct.netif*) #1

declare dso_local i32 @LWIP_DEBUGF(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
