; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/lwbt/extr_hci.c_hci_sniff_mode.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/lwbt/extr_hci.c_hci_sniff_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bd_addr = type { i32 }
%struct.pbuf = type { i32, i64 }
%struct.hci_link = type { i32 }

@.str = private unnamed_addr constant [47 x i8] c"hci_sniff_mode: ACL connection does not exist\0A\00", align 1
@ERR_CONN = common dso_local global i32 0, align 4
@PBUF_TRANSPORT = common dso_local global i32 0, align 4
@HCI_SNIFF_PLEN = common dso_local global i32 0, align 4
@PBUF_RAM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"hci_sniff_mode: Could not allocate memory for pbuf\0A\00", align 1
@ERR_MEM = common dso_local global i32 0, align 4
@HCI_SNIFF_MODE_OCF = common dso_local global i32 0, align 4
@HCI_LINK_POLICY_OGF = common dso_local global i32 0, align 4
@ERR_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hci_sniff_mode(%struct.bd_addr* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.bd_addr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.pbuf*, align 8
  %13 = alloca %struct.hci_link*, align 8
  store %struct.bd_addr* %0, %struct.bd_addr** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load %struct.bd_addr*, %struct.bd_addr** %7, align 8
  %15 = call %struct.hci_link* @hci_get_link(%struct.bd_addr* %14)
  store %struct.hci_link* %15, %struct.hci_link** %13, align 8
  %16 = load %struct.hci_link*, %struct.hci_link** %13, align 8
  %17 = icmp eq %struct.hci_link* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %5
  %19 = call i32 @ERROR(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @ERR_CONN, align 4
  store i32 %20, i32* %6, align 4
  br label %81

21:                                               ; preds = %5
  %22 = load i32, i32* @PBUF_TRANSPORT, align 4
  %23 = load i32, i32* @HCI_SNIFF_PLEN, align 4
  %24 = load i32, i32* @PBUF_RAM, align 4
  %25 = call %struct.pbuf* @btpbuf_alloc(i32 %22, i32 %23, i32 %24)
  store %struct.pbuf* %25, %struct.pbuf** %12, align 8
  %26 = icmp eq %struct.pbuf* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = call i32 @ERROR(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0))
  %29 = load i32, i32* @ERR_MEM, align 4
  store i32 %29, i32* %6, align 4
  br label %81

30:                                               ; preds = %21
  %31 = load %struct.pbuf*, %struct.pbuf** %12, align 8
  %32 = load i32, i32* @HCI_SNIFF_MODE_OCF, align 4
  %33 = load i32, i32* @HCI_LINK_POLICY_OGF, align 4
  %34 = load i32, i32* @HCI_SNIFF_PLEN, align 4
  %35 = call %struct.pbuf* @hci_cmd_ass(%struct.pbuf* %31, i32 %32, i32 %33, i32 %34)
  store %struct.pbuf* %35, %struct.pbuf** %12, align 8
  %36 = load %struct.hci_link*, %struct.hci_link** %13, align 8
  %37 = getelementptr inbounds %struct.hci_link, %struct.hci_link* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @htole16(i32 %38)
  %40 = load %struct.pbuf*, %struct.pbuf** %12, align 8
  %41 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = inttoptr i64 %42 to i32*
  %44 = getelementptr inbounds i32, i32* %43, i64 2
  store i32 %39, i32* %44, align 4
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @htole16(i32 %45)
  %47 = load %struct.pbuf*, %struct.pbuf** %12, align 8
  %48 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = inttoptr i64 %49 to i32*
  %51 = getelementptr inbounds i32, i32* %50, i64 3
  store i32 %46, i32* %51, align 4
  %52 = load i32, i32* %9, align 4
  %53 = call i32 @htole16(i32 %52)
  %54 = load %struct.pbuf*, %struct.pbuf** %12, align 8
  %55 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = inttoptr i64 %56 to i32*
  %58 = getelementptr inbounds i32, i32* %57, i64 4
  store i32 %53, i32* %58, align 4
  %59 = load i32, i32* %10, align 4
  %60 = call i32 @htole16(i32 %59)
  %61 = load %struct.pbuf*, %struct.pbuf** %12, align 8
  %62 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = inttoptr i64 %63 to i32*
  %65 = getelementptr inbounds i32, i32* %64, i64 5
  store i32 %60, i32* %65, align 4
  %66 = load i32, i32* %11, align 4
  %67 = call i32 @htole16(i32 %66)
  %68 = load %struct.pbuf*, %struct.pbuf** %12, align 8
  %69 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = inttoptr i64 %70 to i32*
  %72 = getelementptr inbounds i32, i32* %71, i64 6
  store i32 %67, i32* %72, align 4
  %73 = load %struct.pbuf*, %struct.pbuf** %12, align 8
  %74 = load %struct.pbuf*, %struct.pbuf** %12, align 8
  %75 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @physbusif_output(%struct.pbuf* %73, i32 %76)
  %78 = load %struct.pbuf*, %struct.pbuf** %12, align 8
  %79 = call i32 @btpbuf_free(%struct.pbuf* %78)
  %80 = load i32, i32* @ERR_OK, align 4
  store i32 %80, i32* %6, align 4
  br label %81

81:                                               ; preds = %30, %27, %18
  %82 = load i32, i32* %6, align 4
  ret i32 %82
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
