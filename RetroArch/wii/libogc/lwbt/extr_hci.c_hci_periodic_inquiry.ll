; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/lwbt/extr_hci.c_hci_periodic_inquiry.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/lwbt/extr_hci.c_hci_periodic_inquiry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i8*, %struct.hci_pcb.0*, %struct.hci_inq_res*, i32)*, %struct.hci_inq_res* }
%struct.hci_pcb.0 = type opaque
%struct.hci_inq_res = type { %struct.hci_inq_res* }
%struct.hci_pcb = type opaque
%struct.pbuf = type { i32, i64 }

@hci_dev = common dso_local global %struct.TYPE_2__* null, align 8
@hci_inq_results = common dso_local global i32 0, align 4
@PBUF_RAW = common dso_local global i32 0, align 4
@HCI_PERIODIC_INQUIRY_PLEN = common dso_local global i32 0, align 4
@PBUF_RAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"hci_periodic_inquiry: Could not allocate memory for pbuf\0A\00", align 1
@ERR_MEM = common dso_local global i32 0, align 4
@HCI_PERIODIC_INQUIRY_OCF = common dso_local global i32 0, align 4
@HCI_LINK_CTRL_OGF = common dso_local global i32 0, align 4
@ERR_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hci_periodic_inquiry(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 (i8*, %struct.hci_pcb*, %struct.hci_inq_res*, i32)* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32 (i8*, %struct.hci_pcb*, %struct.hci_inq_res*, i32)*, align 8
  %14 = alloca %struct.pbuf*, align 8
  %15 = alloca %struct.hci_inq_res*, align 8
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 (i8*, %struct.hci_pcb*, %struct.hci_inq_res*, i32)* %5, i32 (i8*, %struct.hci_pcb*, %struct.hci_inq_res*, i32)** %13, align 8
  store %struct.pbuf* null, %struct.pbuf** %14, align 8
  br label %16

16:                                               ; preds = %21, %6
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** @hci_dev, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load %struct.hci_inq_res*, %struct.hci_inq_res** %18, align 8
  %20 = icmp ne %struct.hci_inq_res* %19, null
  br i1 %20, label %21, label %34

21:                                               ; preds = %16
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** @hci_dev, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load %struct.hci_inq_res*, %struct.hci_inq_res** %23, align 8
  store %struct.hci_inq_res* %24, %struct.hci_inq_res** %15, align 8
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** @hci_dev, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load %struct.hci_inq_res*, %struct.hci_inq_res** %26, align 8
  %28 = getelementptr inbounds %struct.hci_inq_res, %struct.hci_inq_res* %27, i32 0, i32 0
  %29 = load %struct.hci_inq_res*, %struct.hci_inq_res** %28, align 8
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** @hci_dev, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  store %struct.hci_inq_res* %29, %struct.hci_inq_res** %31, align 8
  %32 = load %struct.hci_inq_res*, %struct.hci_inq_res** %15, align 8
  %33 = call i32 @btmemb_free(i32* @hci_inq_results, %struct.hci_inq_res* %32)
  br label %16

34:                                               ; preds = %16
  %35 = load i32 (i8*, %struct.hci_pcb*, %struct.hci_inq_res*, i32)*, i32 (i8*, %struct.hci_pcb*, %struct.hci_inq_res*, i32)** %13, align 8
  %36 = bitcast i32 (i8*, %struct.hci_pcb*, %struct.hci_inq_res*, i32)* %35 to i32 (i8*, %struct.hci_pcb.0*, %struct.hci_inq_res*, i32)*
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** @hci_dev, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  store i32 (i8*, %struct.hci_pcb.0*, %struct.hci_inq_res*, i32)* %36, i32 (i8*, %struct.hci_pcb.0*, %struct.hci_inq_res*, i32)** %38, align 8
  %39 = load i32, i32* @PBUF_RAW, align 4
  %40 = load i32, i32* @HCI_PERIODIC_INQUIRY_PLEN, align 4
  %41 = load i32, i32* @PBUF_RAM, align 4
  %42 = call %struct.pbuf* @btpbuf_alloc(i32 %39, i32 %40, i32 %41)
  store %struct.pbuf* %42, %struct.pbuf** %14, align 8
  %43 = icmp eq %struct.pbuf* %42, null
  br i1 %43, label %44, label %47

44:                                               ; preds = %34
  %45 = call i32 @ERROR(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0))
  %46 = load i32, i32* @ERR_MEM, align 4
  store i32 %46, i32* %7, align 4
  br label %108

47:                                               ; preds = %34
  %48 = load %struct.pbuf*, %struct.pbuf** %14, align 8
  %49 = load i32, i32* @HCI_PERIODIC_INQUIRY_OCF, align 4
  %50 = load i32, i32* @HCI_LINK_CTRL_OGF, align 4
  %51 = load i32, i32* @HCI_PERIODIC_INQUIRY_PLEN, align 4
  %52 = call %struct.pbuf* @hci_cmd_ass(%struct.pbuf* %48, i32 %49, i32 %50, i32 %51)
  store %struct.pbuf* %52, %struct.pbuf** %14, align 8
  %53 = load i32, i32* %10, align 4
  %54 = call i32 @htole16(i32 %53)
  %55 = load %struct.pbuf*, %struct.pbuf** %14, align 8
  %56 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = inttoptr i64 %57 to i32*
  %59 = getelementptr inbounds i32, i32* %58, i64 2
  store i32 %54, i32* %59, align 4
  %60 = load i32, i32* %9, align 4
  %61 = call i32 @htole16(i32 %60)
  %62 = load %struct.pbuf*, %struct.pbuf** %14, align 8
  %63 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = inttoptr i64 %64 to i32*
  %66 = getelementptr inbounds i32, i32* %65, i64 3
  store i32 %61, i32* %66, align 4
  %67 = load i32, i32* %8, align 4
  %68 = and i32 %67, 255
  %69 = load %struct.pbuf*, %struct.pbuf** %14, align 8
  %70 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = inttoptr i64 %71 to i32*
  %73 = getelementptr inbounds i32, i32* %72, i64 8
  store i32 %68, i32* %73, align 4
  %74 = load i32, i32* %8, align 4
  %75 = ashr i32 %74, 8
  %76 = load %struct.pbuf*, %struct.pbuf** %14, align 8
  %77 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = inttoptr i64 %78 to i32*
  %80 = getelementptr inbounds i32, i32* %79, i64 9
  store i32 %75, i32* %80, align 4
  %81 = load i32, i32* %8, align 4
  %82 = ashr i32 %81, 16
  %83 = load %struct.pbuf*, %struct.pbuf** %14, align 8
  %84 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = inttoptr i64 %85 to i32*
  %87 = getelementptr inbounds i32, i32* %86, i64 10
  store i32 %82, i32* %87, align 4
  %88 = load i32, i32* %11, align 4
  %89 = load %struct.pbuf*, %struct.pbuf** %14, align 8
  %90 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = inttoptr i64 %91 to i32*
  %93 = getelementptr inbounds i32, i32* %92, i64 11
  store i32 %88, i32* %93, align 4
  %94 = load i32, i32* %12, align 4
  %95 = load %struct.pbuf*, %struct.pbuf** %14, align 8
  %96 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = inttoptr i64 %97 to i32*
  %99 = getelementptr inbounds i32, i32* %98, i64 12
  store i32 %94, i32* %99, align 4
  %100 = load %struct.pbuf*, %struct.pbuf** %14, align 8
  %101 = load %struct.pbuf*, %struct.pbuf** %14, align 8
  %102 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @physbusif_output(%struct.pbuf* %100, i32 %103)
  %105 = load %struct.pbuf*, %struct.pbuf** %14, align 8
  %106 = call i32 @btpbuf_free(%struct.pbuf* %105)
  %107 = load i32, i32* @ERR_OK, align 4
  store i32 %107, i32* %7, align 4
  br label %108

108:                                              ; preds = %47, %44
  %109 = load i32, i32* %7, align 4
  ret i32 %109
}

declare dso_local i32 @btmemb_free(i32*, %struct.hci_inq_res*) #1

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
