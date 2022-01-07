; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/lwbt/extr_hci.c_hci_inquiry_result_evt.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/lwbt/extr_hci.c_hci_inquiry_result_evt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.pbuf = type { i64 }
%struct.bd_addr = type { i32 }
%struct.hci_inq_res = type { i32, i32, i32*, i32, i32, i32 }

@MEMB_NUM_HCI_INQ = common dso_local global i32 0, align 4
@hci_inq_results = common dso_local global i32 0, align 4
@hci_dev = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [70 x i8] c"hci_inquriy_result_evt: Could not allocate memory for inquiry result\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pbuf*)* @hci_inquiry_result_evt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hci_inquiry_result_evt(%struct.pbuf* %0) #0 {
  %2 = alloca %struct.pbuf*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.bd_addr*, align 8
  %7 = alloca %struct.hci_inq_res*, align 8
  store %struct.pbuf* %0, %struct.pbuf** %2, align 8
  %8 = load %struct.pbuf*, %struct.pbuf** %2, align 8
  %9 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to i32*
  %12 = getelementptr inbounds i32, i32* %11, i64 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %14

14:                                               ; preds = %99, %1
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* %3, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %14
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @MEMB_NUM_HCI_INQ, align 4
  %21 = icmp slt i32 %19, %20
  br label %22

22:                                               ; preds = %18, %14
  %23 = phi i1 [ false, %14 ], [ %21, %18 ]
  br i1 %23, label %24, label %102

24:                                               ; preds = %22
  %25 = load i32, i32* %4, align 4
  %26 = mul nsw i32 %25, 14
  store i32 %26, i32* %5, align 4
  %27 = load %struct.pbuf*, %struct.pbuf** %2, align 8
  %28 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to i32*
  %31 = load i32, i32* %5, align 4
  %32 = add nsw i32 1, %31
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %30, i64 %33
  %35 = bitcast i32* %34 to i8*
  %36 = bitcast i8* %35 to %struct.bd_addr*
  store %struct.bd_addr* %36, %struct.bd_addr** %6, align 8
  %37 = call %struct.hci_inq_res* @btmemb_alloc(i32* @hci_inq_results)
  store %struct.hci_inq_res* %37, %struct.hci_inq_res** %7, align 8
  %38 = icmp ne %struct.hci_inq_res* %37, null
  br i1 %38, label %39, label %96

39:                                               ; preds = %24
  %40 = load %struct.hci_inq_res*, %struct.hci_inq_res** %7, align 8
  %41 = getelementptr inbounds %struct.hci_inq_res, %struct.hci_inq_res* %40, i32 0, i32 5
  %42 = load %struct.bd_addr*, %struct.bd_addr** %6, align 8
  %43 = call i32 @bd_addr_set(i32* %41, %struct.bd_addr* %42)
  %44 = load %struct.pbuf*, %struct.pbuf** %2, align 8
  %45 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = inttoptr i64 %46 to i32*
  %48 = load i32, i32* %5, align 4
  %49 = add nsw i32 7, %48
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %47, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.hci_inq_res*, %struct.hci_inq_res** %7, align 8
  %54 = getelementptr inbounds %struct.hci_inq_res, %struct.hci_inq_res* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  %55 = load %struct.pbuf*, %struct.pbuf** %2, align 8
  %56 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = inttoptr i64 %57 to i32*
  %59 = load i32, i32* %5, align 4
  %60 = add nsw i32 8, %59
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %58, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.hci_inq_res*, %struct.hci_inq_res** %7, align 8
  %65 = getelementptr inbounds %struct.hci_inq_res, %struct.hci_inq_res* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 4
  %66 = load %struct.hci_inq_res*, %struct.hci_inq_res** %7, align 8
  %67 = getelementptr inbounds %struct.hci_inq_res, %struct.hci_inq_res* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.pbuf*, %struct.pbuf** %2, align 8
  %70 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = inttoptr i64 %71 to i32*
  %73 = getelementptr inbounds i32, i32* %72, i64 10
  %74 = load i32, i32* %5, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = call i32 @memcpy(i32 %68, i32* %76, i32 3)
  %78 = load %struct.pbuf*, %struct.pbuf** %2, align 8
  %79 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = inttoptr i64 %80 to i32*
  %82 = getelementptr inbounds i32, i32* %81, i64 13
  %83 = load i32, i32* %5, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @le16toh(i32 %86)
  %88 = load %struct.hci_inq_res*, %struct.hci_inq_res** %7, align 8
  %89 = getelementptr inbounds %struct.hci_inq_res, %struct.hci_inq_res* %88, i32 0, i32 3
  store i32 %87, i32* %89, align 8
  %90 = load %struct.hci_inq_res*, %struct.hci_inq_res** %7, align 8
  %91 = getelementptr inbounds %struct.hci_inq_res, %struct.hci_inq_res* %90, i32 0, i32 2
  store i32* null, i32** %91, align 8
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** @hci_dev, align 8
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  %94 = load %struct.hci_inq_res*, %struct.hci_inq_res** %7, align 8
  %95 = call i32 @HCI_REG(i32* %93, %struct.hci_inq_res* %94)
  br label %98

96:                                               ; preds = %24
  %97 = call i32 @ERROR(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str, i64 0, i64 0))
  br label %98

98:                                               ; preds = %96, %39
  br label %99

99:                                               ; preds = %98
  %100 = load i32, i32* %4, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %4, align 4
  br label %14

102:                                              ; preds = %22
  ret void
}

declare dso_local %struct.hci_inq_res* @btmemb_alloc(i32*) #1

declare dso_local i32 @bd_addr_set(i32*, %struct.bd_addr*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @le16toh(i32) #1

declare dso_local i32 @HCI_REG(i32*, %struct.hci_inq_res*) #1

declare dso_local i32 @ERROR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
