; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/lwbt/extr_bte.c_bte_hci_apply_patch_complete.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/lwbt/extr_bte.c_bte_hci_apply_patch_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_pcb = type { i32 }
%struct.bt_state = type { i32 }

@ERR_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [46 x i8] c"bte_hci_apply_patch_complete(%02x,%02x,%02x)\0A\00", align 1
@HCI_VENDOR_PATCH_START_OCF = common dso_local global i32 0, align 4
@HCI_SUCCESS = common dso_local global i32 0, align 4
@HCI_VENDOR_PATCH_CONT_OCF = common dso_local global i32 0, align 4
@bte_patch0 = common dso_local global i32 0, align 4
@ERR_CONN = common dso_local global i64 0, align 8
@bte_hci_patch_complete = common dso_local global i32 0, align 4
@HCI_VENDOR_PATCH_END_OCF = common dso_local global i32 0, align 4
@bte_patch1 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [55 x i8] c"Unknown command complete event. OGF = 0x%x OCF = 0x%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @bte_hci_apply_patch_complete(i8* %0, %struct.hci_pcb* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca %struct.hci_pcb*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.bt_state*, align 8
  store i8* %0, i8** %6, align 8
  store %struct.hci_pcb* %1, %struct.hci_pcb** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load i64, i64* @ERR_OK, align 8
  store i64 %13, i64* %11, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = bitcast i8* %14 to %struct.bt_state*
  store %struct.bt_state* %15, %struct.bt_state** %12, align 8
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* %10, align 4
  %19 = call i32 (i8*, i32, i32, ...) @LOG(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %17, i32 %18)
  %20 = load i32, i32* %8, align 4
  switch i32 %20, label %55 [
    i32 128, label %21
  ]

21:                                               ; preds = %5
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* @HCI_VENDOR_PATCH_START_OCF, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %36

25:                                               ; preds = %21
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* @HCI_SUCCESS, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %25
  %30 = load i32, i32* @HCI_VENDOR_PATCH_CONT_OCF, align 4
  %31 = load i32, i32* @bte_patch0, align 4
  %32 = call i64 @hci_vendor_specific_command(i32 %30, i32 128, i32 %31, i32 184)
  store i64 %32, i64* %11, align 8
  br label %35

33:                                               ; preds = %25
  %34 = load i64, i64* @ERR_CONN, align 8
  store i64 %34, i64* %11, align 8
  br label %35

35:                                               ; preds = %33, %29
  br label %54

36:                                               ; preds = %21
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* @HCI_VENDOR_PATCH_CONT_OCF, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %53

40:                                               ; preds = %36
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* @HCI_SUCCESS, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %50

44:                                               ; preds = %40
  %45 = load i32, i32* @bte_hci_patch_complete, align 4
  %46 = call i32 @hci_cmd_complete(i32 %45)
  %47 = load i32, i32* @HCI_VENDOR_PATCH_END_OCF, align 4
  %48 = load i32, i32* @bte_patch1, align 4
  %49 = call i64 @hci_vendor_specific_command(i32 %47, i32 128, i32 %48, i32 92)
  store i64 %49, i64* %11, align 8
  br label %52

50:                                               ; preds = %40
  %51 = load i64, i64* @ERR_CONN, align 8
  store i64 %51, i64* %11, align 8
  br label %52

52:                                               ; preds = %50, %44
  br label %53

53:                                               ; preds = %52, %36
  br label %54

54:                                               ; preds = %53, %35
  br label %60

55:                                               ; preds = %5
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* %9, align 4
  %58 = call i32 (i8*, i32, i32, ...) @LOG(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i32 %56, i32 %57)
  %59 = load i64, i64* @ERR_CONN, align 8
  store i64 %59, i64* %11, align 8
  br label %60

60:                                               ; preds = %55, %54
  %61 = load i64, i64* %11, align 8
  %62 = load i64, i64* @ERR_OK, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %60
  %65 = load %struct.bt_state*, %struct.bt_state** %12, align 8
  %66 = load i64, i64* %11, align 8
  %67 = call i32 @__bte_cmdfinish(%struct.bt_state* %65, i64 %66)
  br label %68

68:                                               ; preds = %64, %60
  %69 = load i64, i64* %11, align 8
  ret i64 %69
}

declare dso_local i32 @LOG(i8*, i32, i32, ...) #1

declare dso_local i64 @hci_vendor_specific_command(i32, i32, i32, i32) #1

declare dso_local i32 @hci_cmd_complete(i32) #1

declare dso_local i32 @__bte_cmdfinish(%struct.bt_state*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
