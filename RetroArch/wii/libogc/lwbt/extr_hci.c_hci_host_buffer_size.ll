; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/lwbt/extr_hci.c_hci_host_buffer_size.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/lwbt/extr_hci.c_hci_host_buffer_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.pbuf = type { i32, i64 }

@PBUF_RAW = common dso_local global i32 0, align 4
@HCI_H_BUF_SIZE_PLEN = common dso_local global i32 0, align 4
@PBUF_RAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"hci_host_buffer_size: Could not allocate memory for pbuf\0A\00", align 1
@ERR_MEM = common dso_local global i32 0, align 4
@HCI_H_BUF_SIZE_OCF = common dso_local global i32 0, align 4
@HCI_HC_BB_OGF = common dso_local global i32 0, align 4
@HCI_HOST_ACL_MAX_LEN = common dso_local global i32 0, align 4
@HCI_HOST_MAX_NUM_ACL = common dso_local global i32 0, align 4
@hci_dev = common dso_local global %struct.TYPE_2__* null, align 8
@ERR_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hci_host_buffer_size() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.pbuf*, align 8
  %3 = load i32, i32* @PBUF_RAW, align 4
  %4 = load i32, i32* @HCI_H_BUF_SIZE_PLEN, align 4
  %5 = load i32, i32* @PBUF_RAM, align 4
  %6 = call %struct.pbuf* @btpbuf_alloc(i32 %3, i32 %4, i32 %5)
  store %struct.pbuf* %6, %struct.pbuf** %2, align 8
  %7 = icmp eq %struct.pbuf* %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %0
  %9 = call i32 @ERROR(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0))
  %10 = load i32, i32* @ERR_MEM, align 4
  store i32 %10, i32* %1, align 4
  br label %53

11:                                               ; preds = %0
  %12 = load %struct.pbuf*, %struct.pbuf** %2, align 8
  %13 = load i32, i32* @HCI_H_BUF_SIZE_OCF, align 4
  %14 = load i32, i32* @HCI_HC_BB_OGF, align 4
  %15 = load i32, i32* @HCI_H_BUF_SIZE_PLEN, align 4
  %16 = call %struct.pbuf* @hci_cmd_ass(%struct.pbuf* %12, i32 %13, i32 %14, i32 %15)
  store %struct.pbuf* %16, %struct.pbuf** %2, align 8
  %17 = load i32, i32* @HCI_HOST_ACL_MAX_LEN, align 4
  %18 = call i32 @htole16(i32 %17)
  %19 = load %struct.pbuf*, %struct.pbuf** %2, align 8
  %20 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to i32*
  %23 = getelementptr inbounds i32, i32* %22, i64 2
  store i32 %18, i32* %23, align 4
  %24 = load %struct.pbuf*, %struct.pbuf** %2, align 8
  %25 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to i32*
  %28 = getelementptr inbounds i32, i32* %27, i64 6
  store i32 255, i32* %28, align 4
  %29 = load i32, i32* @HCI_HOST_MAX_NUM_ACL, align 4
  %30 = call i32 @htole16(i32 %29)
  %31 = load %struct.pbuf*, %struct.pbuf** %2, align 8
  %32 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = inttoptr i64 %33 to i32*
  %35 = getelementptr inbounds i32, i32* %34, i64 7
  store i32 %30, i32* %35, align 4
  %36 = call i32 @htole16(i32 1)
  %37 = load %struct.pbuf*, %struct.pbuf** %2, align 8
  %38 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = inttoptr i64 %39 to i32*
  %41 = getelementptr inbounds i32, i32* %40, i64 4
  store i32 %36, i32* %41, align 4
  %42 = load %struct.pbuf*, %struct.pbuf** %2, align 8
  %43 = load %struct.pbuf*, %struct.pbuf** %2, align 8
  %44 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @physbusif_output(%struct.pbuf* %42, i32 %45)
  %47 = load %struct.pbuf*, %struct.pbuf** %2, align 8
  %48 = call i32 @btpbuf_free(%struct.pbuf* %47)
  %49 = load i32, i32* @HCI_HOST_MAX_NUM_ACL, align 4
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** @hci_dev, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 4
  %52 = load i32, i32* @ERR_OK, align 4
  store i32 %52, i32* %1, align 4
  br label %53

53:                                               ; preds = %11, %8
  %54 = load i32, i32* %1, align 4
  ret i32 %54
}

declare dso_local %struct.pbuf* @btpbuf_alloc(i32, i32, i32) #1

declare dso_local i32 @ERROR(i8*) #1

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
