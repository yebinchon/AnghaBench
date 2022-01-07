; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/lwbt/extr_hci.c_hci_disconnect.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/lwbt/extr_hci.c_hci_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bd_addr = type { i32 }
%struct.pbuf = type { i32, i64 }
%struct.hci_link = type { i32 }

@.str = private unnamed_addr constant [43 x i8] c"hci_disconnect: Connection does not exist\0A\00", align 1
@ERR_CONN = common dso_local global i32 0, align 4
@PBUF_RAW = common dso_local global i32 0, align 4
@HCI_DISCONN_PLEN = common dso_local global i32 0, align 4
@PBUF_RAM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"hci_disconnect: Could not allocate memory for pbuf\0A\00", align 1
@ERR_MEM = common dso_local global i32 0, align 4
@HCI_DISCONN_OCF = common dso_local global i32 0, align 4
@HCI_LINK_CTRL_OGF = common dso_local global i32 0, align 4
@ERR_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hci_disconnect(%struct.bd_addr* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bd_addr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.pbuf*, align 8
  %7 = alloca %struct.hci_link*, align 8
  store %struct.bd_addr* %0, %struct.bd_addr** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.bd_addr*, %struct.bd_addr** %4, align 8
  %9 = call %struct.hci_link* @hci_get_link(%struct.bd_addr* %8)
  store %struct.hci_link* %9, %struct.hci_link** %7, align 8
  %10 = load %struct.hci_link*, %struct.hci_link** %7, align 8
  %11 = icmp eq %struct.hci_link* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = call i32 @ERROR(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* @ERR_CONN, align 4
  store i32 %14, i32* %3, align 4
  br label %53

15:                                               ; preds = %2
  %16 = load i32, i32* @PBUF_RAW, align 4
  %17 = load i32, i32* @HCI_DISCONN_PLEN, align 4
  %18 = load i32, i32* @PBUF_RAM, align 4
  %19 = call %struct.pbuf* @btpbuf_alloc(i32 %16, i32 %17, i32 %18)
  store %struct.pbuf* %19, %struct.pbuf** %6, align 8
  %20 = icmp eq %struct.pbuf* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %15
  %22 = call i32 @ERROR(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0))
  %23 = load i32, i32* @ERR_MEM, align 4
  store i32 %23, i32* %3, align 4
  br label %53

24:                                               ; preds = %15
  %25 = load %struct.pbuf*, %struct.pbuf** %6, align 8
  %26 = load i32, i32* @HCI_DISCONN_OCF, align 4
  %27 = load i32, i32* @HCI_LINK_CTRL_OGF, align 4
  %28 = load i32, i32* @HCI_DISCONN_PLEN, align 4
  %29 = call %struct.pbuf* @hci_cmd_ass(%struct.pbuf* %25, i32 %26, i32 %27, i32 %28)
  store %struct.pbuf* %29, %struct.pbuf** %6, align 8
  %30 = load %struct.hci_link*, %struct.hci_link** %7, align 8
  %31 = getelementptr inbounds %struct.hci_link, %struct.hci_link* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @htole16(i32 %32)
  %34 = load %struct.pbuf*, %struct.pbuf** %6, align 8
  %35 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = inttoptr i64 %36 to i32*
  %38 = getelementptr inbounds i32, i32* %37, i64 2
  store i32 %33, i32* %38, align 4
  %39 = load i32, i32* %5, align 4
  %40 = load %struct.pbuf*, %struct.pbuf** %6, align 8
  %41 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = inttoptr i64 %42 to i32*
  %44 = getelementptr inbounds i32, i32* %43, i64 6
  store i32 %39, i32* %44, align 4
  %45 = load %struct.pbuf*, %struct.pbuf** %6, align 8
  %46 = load %struct.pbuf*, %struct.pbuf** %6, align 8
  %47 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @physbusif_output(%struct.pbuf* %45, i32 %48)
  %50 = load %struct.pbuf*, %struct.pbuf** %6, align 8
  %51 = call i32 @btpbuf_free(%struct.pbuf* %50)
  %52 = load i32, i32* @ERR_OK, align 4
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %24, %21, %12
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local %struct.hci_link* @hci_get_link(%struct.bd_addr*) #1

declare dso_local i32 @ERROR(i8*) #1

declare dso_local %struct.pbuf* @btpbuf_alloc(i32, i32, i32) #1

declare dso_local %struct.pbuf* @hci_cmd_ass(%struct.pbuf*, i32, i32, i32) #1

declare dso_local i32 @htole16(i32) #1

declare dso_local i32 @physbusif_output(%struct.pbuf*, i32) #1

declare dso_local i32 @btpbuf_free(%struct.pbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
