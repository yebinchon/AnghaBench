; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/lwbt/extr_hci.c_hci_read_stored_link_key.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/lwbt/extr_hci.c_hci_read_stored_link_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__, %struct.hci_link_key* }
%struct.TYPE_3__ = type { i32 }
%struct.hci_link_key = type { %struct.hci_link_key* }
%struct.pbuf = type { i32, i64 }

@hci_dev = common dso_local global %struct.TYPE_4__* null, align 8
@hci_link_key_results = common dso_local global i32 0, align 4
@PBUF_RAW = common dso_local global i32 0, align 4
@HCI_R_STORED_LINK_KEY_PLEN = common dso_local global i32 0, align 4
@PBUF_RAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [63 x i8] c"hci_read_stored_link_keys: Could not allocate memory for pbuf\0A\00", align 1
@ERR_MEM = common dso_local global i32 0, align 4
@HCI_R_STORED_LINK_KEY_OCF = common dso_local global i32 0, align 4
@HCI_HC_BB_OGF = common dso_local global i32 0, align 4
@ERR_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hci_read_stored_link_key() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.pbuf*, align 8
  %3 = alloca %struct.hci_link_key*, align 8
  store %struct.pbuf* null, %struct.pbuf** %2, align 8
  br label %4

4:                                                ; preds = %9, %0
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** @hci_dev, align 8
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 1
  %7 = load %struct.hci_link_key*, %struct.hci_link_key** %6, align 8
  %8 = icmp ne %struct.hci_link_key* %7, null
  br i1 %8, label %9, label %22

9:                                                ; preds = %4
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** @hci_dev, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  %12 = load %struct.hci_link_key*, %struct.hci_link_key** %11, align 8
  store %struct.hci_link_key* %12, %struct.hci_link_key** %3, align 8
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** @hci_dev, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %15 = load %struct.hci_link_key*, %struct.hci_link_key** %14, align 8
  %16 = getelementptr inbounds %struct.hci_link_key, %struct.hci_link_key* %15, i32 0, i32 0
  %17 = load %struct.hci_link_key*, %struct.hci_link_key** %16, align 8
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** @hci_dev, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  store %struct.hci_link_key* %17, %struct.hci_link_key** %19, align 8
  %20 = load %struct.hci_link_key*, %struct.hci_link_key** %3, align 8
  %21 = call i32 @btmemb_free(i32* @hci_link_key_results, %struct.hci_link_key* %20)
  br label %4

22:                                               ; preds = %4
  %23 = load i32, i32* @PBUF_RAW, align 4
  %24 = load i32, i32* @HCI_R_STORED_LINK_KEY_PLEN, align 4
  %25 = load i32, i32* @PBUF_RAM, align 4
  %26 = call %struct.pbuf* @btpbuf_alloc(i32 %23, i32 %24, i32 %25)
  store %struct.pbuf* %26, %struct.pbuf** %2, align 8
  %27 = icmp eq %struct.pbuf* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %22
  %29 = call i32 @ERROR(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* @ERR_MEM, align 4
  store i32 %30, i32* %1, align 4
  br label %61

31:                                               ; preds = %22
  %32 = load %struct.pbuf*, %struct.pbuf** %2, align 8
  %33 = load i32, i32* @HCI_R_STORED_LINK_KEY_OCF, align 4
  %34 = load i32, i32* @HCI_HC_BB_OGF, align 4
  %35 = load i32, i32* @HCI_R_STORED_LINK_KEY_PLEN, align 4
  %36 = call %struct.pbuf* @hci_cmd_ass(%struct.pbuf* %32, i32 %33, i32 %34, i32 %35)
  store %struct.pbuf* %36, %struct.pbuf** %2, align 8
  %37 = load %struct.pbuf*, %struct.pbuf** %2, align 8
  %38 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = inttoptr i64 %39 to i32*
  %41 = getelementptr inbounds i32, i32* %40, i64 4
  %42 = bitcast i32* %41 to i8*
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** @hci_dev, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @memcpy(i8* %42, i32 %46, i32 6)
  %48 = load %struct.pbuf*, %struct.pbuf** %2, align 8
  %49 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = inttoptr i64 %50 to i32*
  %52 = getelementptr inbounds i32, i32* %51, i64 10
  store i32 1, i32* %52, align 4
  %53 = load %struct.pbuf*, %struct.pbuf** %2, align 8
  %54 = load %struct.pbuf*, %struct.pbuf** %2, align 8
  %55 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @physbusif_output(%struct.pbuf* %53, i32 %56)
  %58 = load %struct.pbuf*, %struct.pbuf** %2, align 8
  %59 = call i32 @btpbuf_free(%struct.pbuf* %58)
  %60 = load i32, i32* @ERR_OK, align 4
  store i32 %60, i32* %1, align 4
  br label %61

61:                                               ; preds = %31, %28
  %62 = load i32, i32* %1, align 4
  ret i32 %62
}

declare dso_local i32 @btmemb_free(i32*, %struct.hci_link_key*) #1

declare dso_local %struct.pbuf* @btpbuf_alloc(i32, i32, i32) #1

declare dso_local i32 @ERROR(i8*) #1

declare dso_local %struct.pbuf* @hci_cmd_ass(%struct.pbuf*, i32, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @physbusif_output(%struct.pbuf*, i32) #1

declare dso_local i32 @btpbuf_free(%struct.pbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
