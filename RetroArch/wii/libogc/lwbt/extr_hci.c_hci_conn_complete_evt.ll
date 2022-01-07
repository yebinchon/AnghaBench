; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/lwbt/extr_hci.c_hci_conn_complete_evt.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/lwbt/extr_hci.c_hci_conn_complete_evt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pbuf = type { i64 }
%struct.bd_addr = type { i32* }
%struct.hci_link = type { %struct.bd_addr, i8* }

@.str = private unnamed_addr constant [64 x i8] c"hci_conn_complete_evt(%p,%02x - %02x:%02x:%02x:%02x:%02x:%02x)\0A\00", align 1
@.str.1 = private unnamed_addr constant [71 x i8] c"hci_conn_complete_evt: Could not allocate memory for link. Disconnect\0A\00", align 1
@HCI_OTHER_END_TERMINATED_CONN_LOW_RESOURCES = common dso_local global i32 0, align 4
@HCI_CONN_TERMINATED_BY_LOCAL_HOST = common dso_local global i32 0, align 4
@hci_active_links = common dso_local global i32 0, align 4
@hci_dev = common dso_local global i32 0, align 4
@ERR_OK = common dso_local global i32 0, align 4
@ERR_CONN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pbuf*)* @hci_conn_complete_evt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hci_conn_complete_evt(%struct.pbuf* %0) #0 {
  %2 = alloca %struct.pbuf*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.bd_addr*, align 8
  %5 = alloca %struct.hci_link*, align 8
  store %struct.pbuf* %0, %struct.pbuf** %2, align 8
  %6 = load i32, i32* %3, align 4
  %7 = load %struct.pbuf*, %struct.pbuf** %2, align 8
  %8 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to i32*
  %11 = getelementptr inbounds i32, i32* %10, i64 3
  %12 = bitcast i32* %11 to i8*
  %13 = bitcast i8* %12 to %struct.bd_addr*
  store %struct.bd_addr* %13, %struct.bd_addr** %4, align 8
  %14 = load %struct.bd_addr*, %struct.bd_addr** %4, align 8
  %15 = call %struct.hci_link* @hci_get_link(%struct.bd_addr* %14)
  store %struct.hci_link* %15, %struct.hci_link** %5, align 8
  %16 = load %struct.hci_link*, %struct.hci_link** %5, align 8
  %17 = load %struct.pbuf*, %struct.pbuf** %2, align 8
  %18 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to i32*
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.bd_addr*, %struct.bd_addr** %4, align 8
  %24 = getelementptr inbounds %struct.bd_addr, %struct.bd_addr* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.bd_addr*, %struct.bd_addr** %4, align 8
  %29 = getelementptr inbounds %struct.bd_addr, %struct.bd_addr* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.bd_addr*, %struct.bd_addr** %4, align 8
  %34 = getelementptr inbounds %struct.bd_addr, %struct.bd_addr* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 2
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.bd_addr*, %struct.bd_addr** %4, align 8
  %39 = getelementptr inbounds %struct.bd_addr, %struct.bd_addr* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 3
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.bd_addr*, %struct.bd_addr** %4, align 8
  %44 = getelementptr inbounds %struct.bd_addr, %struct.bd_addr* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 4
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.bd_addr*, %struct.bd_addr** %4, align 8
  %49 = getelementptr inbounds %struct.bd_addr, %struct.bd_addr* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 5
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @LOG(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), %struct.hci_link* %16, i32 %22, i32 %27, i32 %32, i32 %37, i32 %42, i32 %47, i32 %52)
  %54 = load %struct.pbuf*, %struct.pbuf** %2, align 8
  %55 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = inttoptr i64 %56 to i32*
  %58 = getelementptr inbounds i32, i32* %57, i64 0
  %59 = load i32, i32* %58, align 4
  switch i32 %59, label %123 [
    i32 128, label %60
    i32 129, label %122
  ]

60:                                               ; preds = %1
  %61 = load %struct.hci_link*, %struct.hci_link** %5, align 8
  %62 = icmp eq %struct.hci_link* %61, null
  br i1 %62, label %63, label %97

63:                                               ; preds = %60
  %64 = call %struct.hci_link* (...) @hci_new()
  store %struct.hci_link* %64, %struct.hci_link** %5, align 8
  %65 = icmp eq %struct.hci_link* %64, null
  br i1 %65, label %66, label %74

66:                                               ; preds = %63
  %67 = call i32 @ERROR(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0))
  %68 = load %struct.bd_addr*, %struct.bd_addr** %4, align 8
  %69 = load i32, i32* @HCI_OTHER_END_TERMINATED_CONN_LOW_RESOURCES, align 4
  %70 = call i32 @hci_disconnect(%struct.bd_addr* %68, i32 %69)
  %71 = load %struct.bd_addr*, %struct.bd_addr** %4, align 8
  %72 = load i32, i32* @HCI_CONN_TERMINATED_BY_LOCAL_HOST, align 4
  %73 = call i32 @lp_disconnect_ind(%struct.bd_addr* %71, i32 %72)
  br label %139

74:                                               ; preds = %63
  %75 = load %struct.hci_link*, %struct.hci_link** %5, align 8
  %76 = getelementptr inbounds %struct.hci_link, %struct.hci_link* %75, i32 0, i32 0
  %77 = load %struct.bd_addr*, %struct.bd_addr** %4, align 8
  %78 = call i32 @bd_addr_set(%struct.bd_addr* %76, %struct.bd_addr* %77)
  %79 = load %struct.pbuf*, %struct.pbuf** %2, align 8
  %80 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = inttoptr i64 %81 to i32*
  %83 = getelementptr inbounds i32, i32* %82, i64 1
  %84 = load i32, i32* %83, align 4
  %85 = call i8* @le16toh(i32 %84)
  %86 = load %struct.hci_link*, %struct.hci_link** %5, align 8
  %87 = getelementptr inbounds %struct.hci_link, %struct.hci_link* %86, i32 0, i32 1
  store i8* %85, i8** %87, align 8
  %88 = load %struct.hci_link*, %struct.hci_link** %5, align 8
  %89 = call i32 @HCI_REG(i32* @hci_active_links, %struct.hci_link* %88)
  %90 = load i32, i32* @hci_dev, align 4
  %91 = load %struct.bd_addr*, %struct.bd_addr** %4, align 8
  %92 = load i32, i32* %3, align 4
  %93 = call i32 @HCI_EVENT_CONN_COMPLETE(i32 %90, %struct.bd_addr* %91, i32 %92)
  %94 = load %struct.hci_link*, %struct.hci_link** %5, align 8
  %95 = getelementptr inbounds %struct.hci_link, %struct.hci_link* %94, i32 0, i32 0
  %96 = call i32 @lp_connect_ind(%struct.bd_addr* %95)
  br label %121

97:                                               ; preds = %60
  %98 = load %struct.pbuf*, %struct.pbuf** %2, align 8
  %99 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = inttoptr i64 %100 to i32*
  %102 = getelementptr inbounds i32, i32* %101, i64 1
  %103 = load i32, i32* %102, align 4
  %104 = call i8* @le16toh(i32 %103)
  %105 = load %struct.hci_link*, %struct.hci_link** %5, align 8
  %106 = getelementptr inbounds %struct.hci_link, %struct.hci_link* %105, i32 0, i32 1
  store i8* %104, i8** %106, align 8
  %107 = load i32, i32* @hci_dev, align 4
  %108 = load %struct.bd_addr*, %struct.bd_addr** %4, align 8
  %109 = load i32, i32* %3, align 4
  %110 = call i32 @HCI_EVENT_CONN_COMPLETE(i32 %107, %struct.bd_addr* %108, i32 %109)
  %111 = load %struct.hci_link*, %struct.hci_link** %5, align 8
  %112 = getelementptr inbounds %struct.hci_link, %struct.hci_link* %111, i32 0, i32 0
  %113 = load %struct.pbuf*, %struct.pbuf** %2, align 8
  %114 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = inttoptr i64 %115 to i32*
  %117 = getelementptr inbounds i32, i32* %116, i64 10
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @ERR_OK, align 4
  %120 = call i32 @lp_connect_cfm(%struct.bd_addr* %112, i32 %118, i32 %119)
  br label %121

121:                                              ; preds = %97, %74
  br label %139

122:                                              ; preds = %1
  br label %139

123:                                              ; preds = %1
  %124 = load %struct.hci_link*, %struct.hci_link** %5, align 8
  %125 = icmp ne %struct.hci_link* %124, null
  br i1 %125, label %126, label %138

126:                                              ; preds = %123
  %127 = load %struct.hci_link*, %struct.hci_link** %5, align 8
  %128 = call i32 @hci_close(%struct.hci_link* %127)
  %129 = load %struct.bd_addr*, %struct.bd_addr** %4, align 8
  %130 = load %struct.pbuf*, %struct.pbuf** %2, align 8
  %131 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = inttoptr i64 %132 to i32*
  %134 = getelementptr inbounds i32, i32* %133, i64 10
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* @ERR_CONN, align 4
  %137 = call i32 @lp_connect_cfm(%struct.bd_addr* %129, i32 %135, i32 %136)
  br label %138

138:                                              ; preds = %126, %123
  br label %139

139:                                              ; preds = %138, %122, %121, %66
  ret void
}

declare dso_local %struct.hci_link* @hci_get_link(%struct.bd_addr*) #1

declare dso_local i32 @LOG(i8*, %struct.hci_link*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local %struct.hci_link* @hci_new(...) #1

declare dso_local i32 @ERROR(i8*) #1

declare dso_local i32 @hci_disconnect(%struct.bd_addr*, i32) #1

declare dso_local i32 @lp_disconnect_ind(%struct.bd_addr*, i32) #1

declare dso_local i32 @bd_addr_set(%struct.bd_addr*, %struct.bd_addr*) #1

declare dso_local i8* @le16toh(i32) #1

declare dso_local i32 @HCI_REG(i32*, %struct.hci_link*) #1

declare dso_local i32 @HCI_EVENT_CONN_COMPLETE(i32, %struct.bd_addr*, i32) #1

declare dso_local i32 @lp_connect_ind(%struct.bd_addr*) #1

declare dso_local i32 @lp_connect_cfm(%struct.bd_addr*, i32, i32) #1

declare dso_local i32 @hci_close(%struct.hci_link*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
