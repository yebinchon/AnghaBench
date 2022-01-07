; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/lwbt/extr_hci.c_hci_conn_request_evt.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/lwbt/extr_hci.c_hci_conn_request_evt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pbuf = type { i64 }
%struct.bd_addr = type { i32 }
%struct.hci_link = type { i32 }

@ERR_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"hci_conn_request_evt()\0A\00", align 1
@hci_dev = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [70 x i8] c"hci_conn_request_evt: Could not allocate memory for link. Disconnect\0A\00", align 1
@hci_active_links = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pbuf*)* @hci_conn_request_evt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hci_conn_request_evt(%struct.pbuf* %0) #0 {
  %2 = alloca %struct.pbuf*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.bd_addr*, align 8
  %7 = alloca %struct.hci_link*, align 8
  store %struct.pbuf* %0, %struct.pbuf** %2, align 8
  %8 = load i64, i64* @ERR_OK, align 8
  store i64 %8, i64* %5, align 8
  %9 = call i32 @LOG(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.pbuf*, %struct.pbuf** %2, align 8
  %11 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to i32*
  %14 = bitcast i32* %13 to i8*
  %15 = bitcast i8* %14 to %struct.bd_addr*
  store %struct.bd_addr* %15, %struct.bd_addr** %6, align 8
  %16 = load %struct.pbuf*, %struct.pbuf** %2, align 8
  %17 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to i32*
  %20 = getelementptr inbounds i32, i32* %19, i64 6
  store i32* %20, i32** %3, align 8
  %21 = load %struct.pbuf*, %struct.pbuf** %2, align 8
  %22 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to i32*
  %25 = getelementptr inbounds i32, i32* %24, i64 9
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* @hci_dev, align 4
  %28 = load %struct.bd_addr*, %struct.bd_addr** %6, align 8
  %29 = load i32*, i32** %3, align 8
  %30 = load i32, i32* %4, align 4
  %31 = load i64, i64* %5, align 8
  %32 = call i32 @HCI_EVENT_CONN_REQ(i32 %27, %struct.bd_addr* %28, i32* %29, i32 %30, i64 %31)
  %33 = load i64, i64* %5, align 8
  %34 = load i64, i64* @ERR_OK, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %56

36:                                               ; preds = %1
  %37 = load %struct.bd_addr*, %struct.bd_addr** %6, align 8
  %38 = call %struct.hci_link* @hci_get_link(%struct.bd_addr* %37)
  store %struct.hci_link* %38, %struct.hci_link** %7, align 8
  %39 = load %struct.hci_link*, %struct.hci_link** %7, align 8
  %40 = icmp eq %struct.hci_link* %39, null
  br i1 %40, label %41, label %53

41:                                               ; preds = %36
  %42 = call %struct.hci_link* (...) @hci_new()
  store %struct.hci_link* %42, %struct.hci_link** %7, align 8
  %43 = icmp eq %struct.hci_link* %42, null
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  %45 = call i32 @ERROR(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.1, i64 0, i64 0))
  br label %57

46:                                               ; preds = %41
  %47 = load %struct.hci_link*, %struct.hci_link** %7, align 8
  %48 = getelementptr inbounds %struct.hci_link, %struct.hci_link* %47, i32 0, i32 0
  %49 = load %struct.bd_addr*, %struct.bd_addr** %6, align 8
  %50 = call i32 @bd_addr_set(i32* %48, %struct.bd_addr* %49)
  %51 = load %struct.hci_link*, %struct.hci_link** %7, align 8
  %52 = call i32 @HCI_REG(i32* @hci_active_links, %struct.hci_link* %51)
  br label %53

53:                                               ; preds = %46, %36
  %54 = load %struct.bd_addr*, %struct.bd_addr** %6, align 8
  %55 = call i32 @hci_accecpt_conn_request(%struct.bd_addr* %54, i32 0)
  br label %57

56:                                               ; preds = %1
  br label %57

57:                                               ; preds = %44, %56, %53
  ret void
}

declare dso_local i32 @LOG(i8*) #1

declare dso_local i32 @HCI_EVENT_CONN_REQ(i32, %struct.bd_addr*, i32*, i32, i64) #1

declare dso_local %struct.hci_link* @hci_get_link(%struct.bd_addr*) #1

declare dso_local %struct.hci_link* @hci_new(...) #1

declare dso_local i32 @ERROR(i8*) #1

declare dso_local i32 @bd_addr_set(i32*, %struct.bd_addr*) #1

declare dso_local i32 @HCI_REG(i32*, %struct.hci_link*) #1

declare dso_local i32 @hci_accecpt_conn_request(%struct.bd_addr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
