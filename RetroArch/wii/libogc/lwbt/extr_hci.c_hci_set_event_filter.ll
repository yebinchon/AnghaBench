; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/lwbt/extr_hci.c_hci_set_event_filter.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/lwbt/extr_hci.c_hci_set_event_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pbuf = type { i32, i64 }

@PBUF_RAW = common dso_local global i32 0, align 4
@HCI_SET_EV_FILTER_PLEN = common dso_local global i64 0, align 8
@PBUF_RAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"hci_set_event_filter: Could not allocate memory for pbuf\0A\00", align 1
@ERR_MEM = common dso_local global i32 0, align 4
@HCI_SET_EV_FILTER_OCF = common dso_local global i32 0, align 4
@HCI_HC_BB_OGF = common dso_local global i32 0, align 4
@ERR_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hci_set_event_filter(i32 %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.pbuf*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i64 0, i64* %8, align 8
  store %struct.pbuf* null, %struct.pbuf** %9, align 8
  %10 = load i32, i32* %5, align 4
  switch i32 %10, label %26 [
    i32 0, label %11
    i32 1, label %12
    i32 2, label %19
  ]

11:                                               ; preds = %3
  store i64 0, i64* %8, align 8
  br label %27

12:                                               ; preds = %3
  %13 = load i32, i32* %6, align 4
  switch i32 %13, label %17 [
    i32 0, label %14
    i32 1, label %15
    i32 2, label %16
  ]

14:                                               ; preds = %12
  store i64 0, i64* %8, align 8
  br label %18

15:                                               ; preds = %12
  store i64 6, i64* %8, align 8
  br label %18

16:                                               ; preds = %12
  store i64 6, i64* %8, align 8
  br label %18

17:                                               ; preds = %12
  br label %18

18:                                               ; preds = %17, %16, %15, %14
  br label %27

19:                                               ; preds = %3
  %20 = load i32, i32* %6, align 4
  switch i32 %20, label %24 [
    i32 0, label %21
    i32 1, label %22
    i32 2, label %23
  ]

21:                                               ; preds = %19
  store i64 1, i64* %8, align 8
  br label %25

22:                                               ; preds = %19
  store i64 7, i64* %8, align 8
  br label %25

23:                                               ; preds = %19
  store i64 7, i64* %8, align 8
  br label %25

24:                                               ; preds = %19
  br label %25

25:                                               ; preds = %24, %23, %22, %21
  br label %27

26:                                               ; preds = %3
  br label %27

27:                                               ; preds = %26, %25, %18, %11
  %28 = load i32, i32* @PBUF_RAW, align 4
  %29 = load i64, i64* @HCI_SET_EV_FILTER_PLEN, align 8
  %30 = load i64, i64* %8, align 8
  %31 = add nsw i64 %29, %30
  %32 = load i32, i32* @PBUF_RAM, align 4
  %33 = call %struct.pbuf* @btpbuf_alloc(i32 %28, i64 %31, i32 %32)
  store %struct.pbuf* %33, %struct.pbuf** %9, align 8
  %34 = icmp eq %struct.pbuf* %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %27
  %36 = call i32 @ERROR(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0))
  %37 = load i32, i32* @ERR_MEM, align 4
  store i32 %37, i32* %4, align 4
  br label %77

38:                                               ; preds = %27
  %39 = load %struct.pbuf*, %struct.pbuf** %9, align 8
  %40 = load i32, i32* @HCI_SET_EV_FILTER_OCF, align 4
  %41 = load i32, i32* @HCI_HC_BB_OGF, align 4
  %42 = load i64, i64* @HCI_SET_EV_FILTER_PLEN, align 8
  %43 = load i64, i64* %8, align 8
  %44 = add nsw i64 %42, %43
  %45 = call %struct.pbuf* @hci_cmd_ass(%struct.pbuf* %39, i32 %40, i32 %41, i64 %44)
  store %struct.pbuf* %45, %struct.pbuf** %9, align 8
  %46 = load i32, i32* %5, align 4
  %47 = load %struct.pbuf*, %struct.pbuf** %9, align 8
  %48 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = inttoptr i64 %49 to i32*
  %51 = getelementptr inbounds i32, i32* %50, i64 4
  store i32 %46, i32* %51, align 4
  %52 = load i32, i32* %6, align 4
  %53 = load %struct.pbuf*, %struct.pbuf** %9, align 8
  %54 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = inttoptr i64 %55 to i32*
  %57 = getelementptr inbounds i32, i32* %56, i64 5
  store i32 %52, i32* %57, align 4
  %58 = load i64, i64* %8, align 8
  %59 = icmp sgt i64 %58, 0
  br i1 %59, label %60, label %68

60:                                               ; preds = %38
  %61 = load %struct.pbuf*, %struct.pbuf** %9, align 8
  %62 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = add nsw i64 %63, 6
  %65 = load i32*, i32** %7, align 8
  %66 = load i64, i64* %8, align 8
  %67 = call i32 @memcpy(i64 %64, i32* %65, i64 %66)
  br label %68

68:                                               ; preds = %60, %38
  %69 = load %struct.pbuf*, %struct.pbuf** %9, align 8
  %70 = load %struct.pbuf*, %struct.pbuf** %9, align 8
  %71 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @physbusif_output(%struct.pbuf* %69, i32 %72)
  %74 = load %struct.pbuf*, %struct.pbuf** %9, align 8
  %75 = call i32 @btpbuf_free(%struct.pbuf* %74)
  %76 = load i32, i32* @ERR_OK, align 4
  store i32 %76, i32* %4, align 4
  br label %77

77:                                               ; preds = %68, %35
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

declare dso_local %struct.pbuf* @btpbuf_alloc(i32, i64, i32) #1

declare dso_local i32 @ERROR(i8*) #1

declare dso_local %struct.pbuf* @hci_cmd_ass(%struct.pbuf*, i32, i32, i64) #1

declare dso_local i32 @memcpy(i64, i32*, i64) #1

declare dso_local i32 @physbusif_output(%struct.pbuf*, i32) #1

declare dso_local i32 @btpbuf_free(%struct.pbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
