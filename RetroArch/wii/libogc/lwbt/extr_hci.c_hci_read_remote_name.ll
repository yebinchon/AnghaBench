; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/lwbt/extr_hci.c_hci_read_remote_name.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/lwbt/extr_hci.c_hci_read_remote_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.hci_inq_res* }
%struct.hci_inq_res = type { i32, i32, i32, i32, %struct.hci_inq_res* }
%struct.bd_addr = type { i32 }
%struct.pbuf = type { i32, i64 }

@hci_dev = common dso_local global %struct.TYPE_2__* null, align 8
@PBUF_RAW = common dso_local global i32 0, align 4
@HCI_R_REMOTE_NAME_PLEN = common dso_local global i32 0, align 4
@PBUF_RAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"hci_read_remote_name: Could not allocate memory for pbuf\0A\00", align 1
@ERR_MEM = common dso_local global i32 0, align 4
@HCI_R_REMOTE_NAME_OCF = common dso_local global i32 0, align 4
@HCI_LINK_CTRL_OGF = common dso_local global i32 0, align 4
@ERR_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hci_read_remote_name(%struct.bd_addr* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bd_addr*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pbuf*, align 8
  %6 = alloca %struct.hci_inq_res*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.bd_addr* %0, %struct.bd_addr** %3, align 8
  store %struct.pbuf* null, %struct.pbuf** %5, align 8
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @hci_dev, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.hci_inq_res*, %struct.hci_inq_res** %10, align 8
  store %struct.hci_inq_res* %11, %struct.hci_inq_res** %6, align 8
  br label %12

12:                                               ; preds = %32, %1
  %13 = load %struct.hci_inq_res*, %struct.hci_inq_res** %6, align 8
  %14 = icmp ne %struct.hci_inq_res* %13, null
  br i1 %14, label %15, label %36

15:                                               ; preds = %12
  %16 = load %struct.hci_inq_res*, %struct.hci_inq_res** %6, align 8
  %17 = getelementptr inbounds %struct.hci_inq_res, %struct.hci_inq_res* %16, i32 0, i32 3
  %18 = load %struct.bd_addr*, %struct.bd_addr** %3, align 8
  %19 = call i64 @bd_addr_cmp(i32* %17, %struct.bd_addr* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %31

21:                                               ; preds = %15
  %22 = load %struct.hci_inq_res*, %struct.hci_inq_res** %6, align 8
  %23 = getelementptr inbounds %struct.hci_inq_res, %struct.hci_inq_res* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %7, align 4
  %25 = load %struct.hci_inq_res*, %struct.hci_inq_res** %6, align 8
  %26 = getelementptr inbounds %struct.hci_inq_res, %struct.hci_inq_res* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %8, align 4
  %28 = load %struct.hci_inq_res*, %struct.hci_inq_res** %6, align 8
  %29 = getelementptr inbounds %struct.hci_inq_res, %struct.hci_inq_res* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %4, align 4
  br label %36

31:                                               ; preds = %15
  br label %32

32:                                               ; preds = %31
  %33 = load %struct.hci_inq_res*, %struct.hci_inq_res** %6, align 8
  %34 = getelementptr inbounds %struct.hci_inq_res, %struct.hci_inq_res* %33, i32 0, i32 4
  %35 = load %struct.hci_inq_res*, %struct.hci_inq_res** %34, align 8
  store %struct.hci_inq_res* %35, %struct.hci_inq_res** %6, align 8
  br label %12

36:                                               ; preds = %21, %12
  %37 = load %struct.hci_inq_res*, %struct.hci_inq_res** %6, align 8
  %38 = icmp eq %struct.hci_inq_res* %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %36
  store i32 1, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %4, align 4
  br label %40

40:                                               ; preds = %39, %36
  %41 = load i32, i32* @PBUF_RAW, align 4
  %42 = load i32, i32* @HCI_R_REMOTE_NAME_PLEN, align 4
  %43 = load i32, i32* @PBUF_RAM, align 4
  %44 = call %struct.pbuf* @btpbuf_alloc(i32 %41, i32 %42, i32 %43)
  store %struct.pbuf* %44, %struct.pbuf** %5, align 8
  %45 = icmp eq %struct.pbuf* %44, null
  br i1 %45, label %46, label %49

46:                                               ; preds = %40
  %47 = call i32 @ERROR(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0))
  %48 = load i32, i32* @ERR_MEM, align 4
  store i32 %48, i32* %2, align 4
  br label %91

49:                                               ; preds = %40
  %50 = load %struct.pbuf*, %struct.pbuf** %5, align 8
  %51 = load i32, i32* @HCI_R_REMOTE_NAME_OCF, align 4
  %52 = load i32, i32* @HCI_LINK_CTRL_OGF, align 4
  %53 = load i32, i32* @HCI_R_REMOTE_NAME_PLEN, align 4
  %54 = call %struct.pbuf* @hci_cmd_ass(%struct.pbuf* %50, i32 %51, i32 %52, i32 %53)
  store %struct.pbuf* %54, %struct.pbuf** %5, align 8
  %55 = load %struct.pbuf*, %struct.pbuf** %5, align 8
  %56 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = inttoptr i64 %57 to i32*
  %59 = getelementptr inbounds i32, i32* %58, i64 4
  %60 = load %struct.bd_addr*, %struct.bd_addr** %3, align 8
  %61 = getelementptr inbounds %struct.bd_addr, %struct.bd_addr* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @memcpy(i32* %59, i32 %62, i32 6)
  %64 = load i32, i32* %7, align 4
  %65 = load %struct.pbuf*, %struct.pbuf** %5, align 8
  %66 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = inttoptr i64 %67 to i32*
  %69 = getelementptr inbounds i32, i32* %68, i64 10
  store i32 %64, i32* %69, align 4
  %70 = load i32, i32* %8, align 4
  %71 = load %struct.pbuf*, %struct.pbuf** %5, align 8
  %72 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = inttoptr i64 %73 to i32*
  %75 = getelementptr inbounds i32, i32* %74, i64 11
  store i32 %70, i32* %75, align 4
  %76 = load i32, i32* %4, align 4
  %77 = call i32 @htole16(i32 %76)
  %78 = load %struct.pbuf*, %struct.pbuf** %5, align 8
  %79 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = inttoptr i64 %80 to i32*
  %82 = getelementptr inbounds i32, i32* %81, i64 6
  store i32 %77, i32* %82, align 4
  %83 = load %struct.pbuf*, %struct.pbuf** %5, align 8
  %84 = load %struct.pbuf*, %struct.pbuf** %5, align 8
  %85 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @physbusif_output(%struct.pbuf* %83, i32 %86)
  %88 = load %struct.pbuf*, %struct.pbuf** %5, align 8
  %89 = call i32 @btpbuf_free(%struct.pbuf* %88)
  %90 = load i32, i32* @ERR_OK, align 4
  store i32 %90, i32* %2, align 4
  br label %91

91:                                               ; preds = %49, %46
  %92 = load i32, i32* %2, align 4
  ret i32 %92
}

declare dso_local i64 @bd_addr_cmp(i32*, %struct.bd_addr*) #1

declare dso_local %struct.pbuf* @btpbuf_alloc(i32, i32, i32) #1

declare dso_local i32 @ERROR(i8*) #1

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
