; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/lwbt/extr_bte.c_bte_read_stored_link_key_complete.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/lwbt/extr_bte.c_bte_read_stored_link_key_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_pcb = type { %struct.hci_link_key* }
%struct.hci_link_key = type { %struct.hci_link_key*, i32, i32 }
%struct.linkkey_info = type { i32, i32 }
%struct.bt_state = type { i64, i64 }

@ERR_CONN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [44 x i8] c"bte_read_stored_link_key_complete(%02x,%p)\0A\00", align 1
@ERR_VAL = common dso_local global i64 0, align 8
@HCI_HC_BB_OGF = common dso_local global i64 0, align 8
@HCI_R_STORED_LINK_KEY_OCF = common dso_local global i64 0, align 8
@HCI_SUCCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [47 x i8] c"bte_read_stored_link_key_complete(%02x,%p,%d)\0A\00", align 1
@ERR_OK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @bte_read_stored_link_key_complete(i8* %0, %struct.hci_pcb* %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.hci_pcb*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.hci_link_key*, align 8
  %14 = alloca %struct.linkkey_info*, align 8
  %15 = alloca %struct.bt_state*, align 8
  store i8* %0, i8** %7, align 8
  store %struct.hci_pcb* %1, %struct.hci_pcb** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store i64 0, i64* %12, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = bitcast i8* %16 to %struct.bt_state*
  store %struct.bt_state* %17, %struct.bt_state** %15, align 8
  %18 = load %struct.hci_pcb*, %struct.hci_pcb** %8, align 8
  %19 = icmp ne %struct.hci_pcb* %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %5
  %21 = load i64, i64* @ERR_CONN, align 8
  store i64 %21, i64* %6, align 8
  br label %114

22:                                               ; preds = %5
  %23 = load i64, i64* %11, align 8
  %24 = load %struct.hci_pcb*, %struct.hci_pcb** %8, align 8
  %25 = getelementptr inbounds %struct.hci_pcb, %struct.hci_pcb* %24, i32 0, i32 0
  %26 = load %struct.hci_link_key*, %struct.hci_link_key** %25, align 8
  %27 = call i32 (i8*, i64, %struct.hci_link_key*, ...) @LOG(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i64 %23, %struct.hci_link_key* %26)
  %28 = load %struct.bt_state*, %struct.bt_state** %15, align 8
  %29 = icmp eq %struct.bt_state* %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %22
  %31 = load i64, i64* @ERR_VAL, align 8
  store i64 %31, i64* %6, align 8
  br label %114

32:                                               ; preds = %22
  %33 = load i64, i64* %9, align 8
  %34 = load i64, i64* @HCI_HC_BB_OGF, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %32
  %37 = load i64, i64* %10, align 8
  %38 = load i64, i64* @HCI_R_STORED_LINK_KEY_OCF, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %44, label %40

40:                                               ; preds = %36, %32
  %41 = load %struct.bt_state*, %struct.bt_state** %15, align 8
  %42 = load i64, i64* @ERR_CONN, align 8
  %43 = call i64 @__bte_cmdfinish(%struct.bt_state* %41, i64 %42)
  store i64 %43, i64* %6, align 8
  br label %114

44:                                               ; preds = %36
  %45 = load i64, i64* %11, align 8
  %46 = load i64, i64* @HCI_SUCCESS, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %110

48:                                               ; preds = %44
  %49 = load %struct.bt_state*, %struct.bt_state** %15, align 8
  %50 = getelementptr inbounds %struct.bt_state, %struct.bt_state* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = inttoptr i64 %51 to %struct.linkkey_info*
  store %struct.linkkey_info* %52, %struct.linkkey_info** %14, align 8
  %53 = load %struct.hci_pcb*, %struct.hci_pcb** %8, align 8
  %54 = getelementptr inbounds %struct.hci_pcb, %struct.hci_pcb* %53, i32 0, i32 0
  %55 = load %struct.hci_link_key*, %struct.hci_link_key** %54, align 8
  %56 = icmp ne %struct.hci_link_key* %55, null
  br i1 %56, label %57, label %99

57:                                               ; preds = %48
  %58 = load %struct.linkkey_info*, %struct.linkkey_info** %14, align 8
  %59 = icmp ne %struct.linkkey_info* %58, null
  br i1 %59, label %60, label %99

60:                                               ; preds = %57
  store i64 0, i64* %12, align 8
  %61 = load %struct.hci_pcb*, %struct.hci_pcb** %8, align 8
  %62 = getelementptr inbounds %struct.hci_pcb, %struct.hci_pcb* %61, i32 0, i32 0
  %63 = load %struct.hci_link_key*, %struct.hci_link_key** %62, align 8
  store %struct.hci_link_key* %63, %struct.hci_link_key** %13, align 8
  br label %64

64:                                               ; preds = %95, %60
  %65 = load i64, i64* %12, align 8
  %66 = load %struct.bt_state*, %struct.bt_state** %15, align 8
  %67 = getelementptr inbounds %struct.bt_state, %struct.bt_state* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp slt i64 %65, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %64
  %71 = load %struct.hci_link_key*, %struct.hci_link_key** %13, align 8
  %72 = icmp ne %struct.hci_link_key* %71, null
  br label %73

73:                                               ; preds = %70, %64
  %74 = phi i1 [ false, %64 ], [ %72, %70 ]
  br i1 %74, label %75, label %98

75:                                               ; preds = %73
  %76 = load %struct.linkkey_info*, %struct.linkkey_info** %14, align 8
  %77 = load i64, i64* %12, align 8
  %78 = getelementptr inbounds %struct.linkkey_info, %struct.linkkey_info* %76, i64 %77
  %79 = getelementptr inbounds %struct.linkkey_info, %struct.linkkey_info* %78, i32 0, i32 1
  %80 = load %struct.hci_link_key*, %struct.hci_link_key** %13, align 8
  %81 = getelementptr inbounds %struct.hci_link_key, %struct.hci_link_key* %80, i32 0, i32 2
  %82 = call i32 @bd_addr_set(i32* %79, i32* %81)
  %83 = load %struct.linkkey_info*, %struct.linkkey_info** %14, align 8
  %84 = load i64, i64* %12, align 8
  %85 = getelementptr inbounds %struct.linkkey_info, %struct.linkkey_info* %83, i64 %84
  %86 = getelementptr inbounds %struct.linkkey_info, %struct.linkkey_info* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.hci_link_key*, %struct.hci_link_key** %13, align 8
  %89 = getelementptr inbounds %struct.hci_link_key, %struct.hci_link_key* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @memcpy(i32 %87, i32 %90, i32 16)
  %92 = load %struct.hci_link_key*, %struct.hci_link_key** %13, align 8
  %93 = getelementptr inbounds %struct.hci_link_key, %struct.hci_link_key* %92, i32 0, i32 0
  %94 = load %struct.hci_link_key*, %struct.hci_link_key** %93, align 8
  store %struct.hci_link_key* %94, %struct.hci_link_key** %13, align 8
  br label %95

95:                                               ; preds = %75
  %96 = load i64, i64* %12, align 8
  %97 = add nsw i64 %96, 1
  store i64 %97, i64* %12, align 8
  br label %64

98:                                               ; preds = %73
  br label %99

99:                                               ; preds = %98, %57, %48
  %100 = load i64, i64* %11, align 8
  %101 = load %struct.hci_pcb*, %struct.hci_pcb** %8, align 8
  %102 = getelementptr inbounds %struct.hci_pcb, %struct.hci_pcb* %101, i32 0, i32 0
  %103 = load %struct.hci_link_key*, %struct.hci_link_key** %102, align 8
  %104 = load i64, i64* %12, align 8
  %105 = call i32 (i8*, i64, %struct.hci_link_key*, ...) @LOG(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i64 %100, %struct.hci_link_key* %103, i64 %104)
  %106 = load %struct.bt_state*, %struct.bt_state** %15, align 8
  %107 = load i64, i64* %12, align 8
  %108 = call i64 @__bte_cmdfinish(%struct.bt_state* %106, i64 %107)
  %109 = load i64, i64* @ERR_OK, align 8
  store i64 %109, i64* %6, align 8
  br label %114

110:                                              ; preds = %44
  %111 = load %struct.bt_state*, %struct.bt_state** %15, align 8
  %112 = load i64, i64* @ERR_VAL, align 8
  %113 = call i64 @__bte_cmdfinish(%struct.bt_state* %111, i64 %112)
  store i64 %113, i64* %6, align 8
  br label %114

114:                                              ; preds = %110, %99, %40, %30, %20
  %115 = load i64, i64* %6, align 8
  ret i64 %115
}

declare dso_local i32 @LOG(i8*, i64, %struct.hci_link_key*, ...) #1

declare dso_local i64 @__bte_cmdfinish(%struct.bt_state*, i64) #1

declare dso_local i32 @bd_addr_set(i32*, i32*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
