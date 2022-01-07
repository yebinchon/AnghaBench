; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/lwbt/extr_hci.c_lp_connect_req.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/lwbt/extr_hci.c_lp_connect_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, %struct.hci_inq_res* }
%struct.hci_inq_res = type { i32, i32, i32, i32, %struct.hci_inq_res* }
%struct.bd_addr = type { i32 }
%struct.pbuf = type { i32, i64 }
%struct.hci_link = type { i32 }

@.str = private unnamed_addr constant [52 x i8] c"lp_connect_req: Could not allocate memory for link\0A\00", align 1
@ERR_MEM = common dso_local global i32 0, align 4
@hci_active_links = common dso_local global i32 0, align 4
@hci_dev = common dso_local global %struct.TYPE_2__* null, align 8
@PBUF_RAW = common dso_local global i32 0, align 4
@HCI_CREATE_CONN_PLEN = common dso_local global i32 0, align 4
@PBUF_RAM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"lp_connect_req: Could not allocate memory for pbuf\0A\00", align 1
@HCI_CREATE_CONN_OCF = common dso_local global i32 0, align 4
@HCI_LINK_CTRL_OGF = common dso_local global i32 0, align 4
@ERR_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lp_connect_req(%struct.bd_addr* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bd_addr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.pbuf*, align 8
  %10 = alloca %struct.hci_link*, align 8
  %11 = alloca %struct.hci_inq_res*, align 8
  store %struct.bd_addr* %0, %struct.bd_addr** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = call %struct.hci_link* (...) @hci_new()
  store %struct.hci_link* %12, %struct.hci_link** %10, align 8
  %13 = load %struct.hci_link*, %struct.hci_link** %10, align 8
  %14 = icmp eq %struct.hci_link* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = call i32 @ERROR(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @ERR_MEM, align 4
  store i32 %17, i32* %3, align 4
  br label %122

18:                                               ; preds = %2
  %19 = load %struct.hci_link*, %struct.hci_link** %10, align 8
  %20 = getelementptr inbounds %struct.hci_link, %struct.hci_link* %19, i32 0, i32 0
  %21 = load %struct.bd_addr*, %struct.bd_addr** %4, align 8
  %22 = call i32 @bd_addr_set(i32* %20, %struct.bd_addr* %21)
  %23 = load %struct.hci_link*, %struct.hci_link** %10, align 8
  %24 = call i32 @HCI_REG(i32* @hci_active_links, %struct.hci_link* %23)
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** @hci_dev, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load %struct.hci_inq_res*, %struct.hci_inq_res** %26, align 8
  store %struct.hci_inq_res* %27, %struct.hci_inq_res** %11, align 8
  br label %28

28:                                               ; preds = %48, %18
  %29 = load %struct.hci_inq_res*, %struct.hci_inq_res** %11, align 8
  %30 = icmp ne %struct.hci_inq_res* %29, null
  br i1 %30, label %31, label %52

31:                                               ; preds = %28
  %32 = load %struct.hci_inq_res*, %struct.hci_inq_res** %11, align 8
  %33 = getelementptr inbounds %struct.hci_inq_res, %struct.hci_inq_res* %32, i32 0, i32 3
  %34 = load %struct.bd_addr*, %struct.bd_addr** %4, align 8
  %35 = call i64 @bd_addr_cmp(i32* %33, %struct.bd_addr* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %47

37:                                               ; preds = %31
  %38 = load %struct.hci_inq_res*, %struct.hci_inq_res** %11, align 8
  %39 = getelementptr inbounds %struct.hci_inq_res, %struct.hci_inq_res* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  store i32 %40, i32* %6, align 4
  %41 = load %struct.hci_inq_res*, %struct.hci_inq_res** %11, align 8
  %42 = getelementptr inbounds %struct.hci_inq_res, %struct.hci_inq_res* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %7, align 4
  %44 = load %struct.hci_inq_res*, %struct.hci_inq_res** %11, align 8
  %45 = getelementptr inbounds %struct.hci_inq_res, %struct.hci_inq_res* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  store i32 %46, i32* %8, align 4
  br label %52

47:                                               ; preds = %31
  br label %48

48:                                               ; preds = %47
  %49 = load %struct.hci_inq_res*, %struct.hci_inq_res** %11, align 8
  %50 = getelementptr inbounds %struct.hci_inq_res, %struct.hci_inq_res* %49, i32 0, i32 4
  %51 = load %struct.hci_inq_res*, %struct.hci_inq_res** %50, align 8
  store %struct.hci_inq_res* %51, %struct.hci_inq_res** %11, align 8
  br label %28

52:                                               ; preds = %37, %28
  %53 = load %struct.hci_inq_res*, %struct.hci_inq_res** %11, align 8
  %54 = icmp eq %struct.hci_inq_res* %53, null
  br i1 %54, label %55, label %56

55:                                               ; preds = %52
  store i32 1, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %56

56:                                               ; preds = %55, %52
  %57 = load i32, i32* @PBUF_RAW, align 4
  %58 = load i32, i32* @HCI_CREATE_CONN_PLEN, align 4
  %59 = load i32, i32* @PBUF_RAM, align 4
  %60 = call %struct.pbuf* @btpbuf_alloc(i32 %57, i32 %58, i32 %59)
  store %struct.pbuf* %60, %struct.pbuf** %9, align 8
  %61 = icmp eq %struct.pbuf* %60, null
  br i1 %61, label %62, label %65

62:                                               ; preds = %56
  %63 = call i32 @ERROR(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0))
  %64 = load i32, i32* @ERR_MEM, align 4
  store i32 %64, i32* %3, align 4
  br label %122

65:                                               ; preds = %56
  %66 = load %struct.pbuf*, %struct.pbuf** %9, align 8
  %67 = load i32, i32* @HCI_CREATE_CONN_OCF, align 4
  %68 = load i32, i32* @HCI_LINK_CTRL_OGF, align 4
  %69 = load i32, i32* @HCI_CREATE_CONN_PLEN, align 4
  %70 = call %struct.pbuf* @hci_cmd_ass(%struct.pbuf* %66, i32 %67, i32 %68, i32 %69)
  store %struct.pbuf* %70, %struct.pbuf** %9, align 8
  %71 = load %struct.pbuf*, %struct.pbuf** %9, align 8
  %72 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = inttoptr i64 %73 to i32*
  %75 = getelementptr inbounds i32, i32* %74, i64 4
  %76 = load %struct.bd_addr*, %struct.bd_addr** %4, align 8
  %77 = getelementptr inbounds %struct.bd_addr, %struct.bd_addr* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @memcpy(i32* %75, i32 %78, i32 6)
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** @hci_dev, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @htole16(i32 %82)
  %84 = load %struct.pbuf*, %struct.pbuf** %9, align 8
  %85 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = inttoptr i64 %86 to i32*
  %88 = getelementptr inbounds i32, i32* %87, i64 5
  store i32 %83, i32* %88, align 4
  %89 = load i32, i32* %6, align 4
  %90 = load %struct.pbuf*, %struct.pbuf** %9, align 8
  %91 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = inttoptr i64 %92 to i32*
  %94 = getelementptr inbounds i32, i32* %93, i64 12
  store i32 %89, i32* %94, align 4
  %95 = load i32, i32* %7, align 4
  %96 = load %struct.pbuf*, %struct.pbuf** %9, align 8
  %97 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = inttoptr i64 %98 to i32*
  %100 = getelementptr inbounds i32, i32* %99, i64 13
  store i32 %95, i32* %100, align 4
  %101 = load i32, i32* %8, align 4
  %102 = call i32 @htole16(i32 %101)
  %103 = load %struct.pbuf*, %struct.pbuf** %9, align 8
  %104 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = inttoptr i64 %105 to i32*
  %107 = getelementptr inbounds i32, i32* %106, i64 7
  store i32 %102, i32* %107, align 4
  %108 = load i32, i32* %5, align 4
  %109 = load %struct.pbuf*, %struct.pbuf** %9, align 8
  %110 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = inttoptr i64 %111 to i32*
  %113 = getelementptr inbounds i32, i32* %112, i64 16
  store i32 %108, i32* %113, align 4
  %114 = load %struct.pbuf*, %struct.pbuf** %9, align 8
  %115 = load %struct.pbuf*, %struct.pbuf** %9, align 8
  %116 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @physbusif_output(%struct.pbuf* %114, i32 %117)
  %119 = load %struct.pbuf*, %struct.pbuf** %9, align 8
  %120 = call i32 @btpbuf_free(%struct.pbuf* %119)
  %121 = load i32, i32* @ERR_OK, align 4
  store i32 %121, i32* %3, align 4
  br label %122

122:                                              ; preds = %65, %62, %15
  %123 = load i32, i32* %3, align 4
  ret i32 %123
}

declare dso_local %struct.hci_link* @hci_new(...) #1

declare dso_local i32 @ERROR(i8*) #1

declare dso_local i32 @bd_addr_set(i32*, %struct.bd_addr*) #1

declare dso_local i32 @HCI_REG(i32*, %struct.hci_link*) #1

declare dso_local i64 @bd_addr_cmp(i32*, %struct.bd_addr*) #1

declare dso_local %struct.pbuf* @btpbuf_alloc(i32, i32, i32) #1

declare dso_local %struct.pbuf* @hci_cmd_ass(%struct.pbuf*, i32, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @htole16(i32) #1

declare dso_local i32 @physbusif_output(%struct.pbuf*, i32) #1

declare dso_local i32 @btpbuf_free(%struct.pbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
