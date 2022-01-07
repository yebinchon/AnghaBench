; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/lwbt/extr_bte.c___bte_shutdown_finished.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/lwbt/extr_bte.c___bte_shutdown_finished.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_pcb = type { i32 }
%struct.bt_state = type { i64 }

@ERR_OK = common dso_local global i32 0, align 4
@HCI_SUCCESS = common dso_local global i64 0, align 8
@ERR_CONN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.hci_pcb*, i64, i64, i64)* @__bte_shutdown_finished to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__bte_shutdown_finished(i8* %0, %struct.hci_pcb* %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.hci_pcb*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.bt_state*, align 8
  store i8* %0, i8** %7, align 8
  store %struct.hci_pcb* %1, %struct.hci_pcb** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = bitcast i8* %14 to %struct.bt_state*
  store %struct.bt_state* %15, %struct.bt_state** %13, align 8
  %16 = load %struct.bt_state*, %struct.bt_state** %13, align 8
  %17 = icmp eq %struct.bt_state* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %5
  %19 = load i32, i32* @ERR_OK, align 4
  store i32 %19, i32* %6, align 4
  br label %36

20:                                               ; preds = %5
  %21 = load %struct.bt_state*, %struct.bt_state** %13, align 8
  %22 = getelementptr inbounds %struct.bt_state, %struct.bt_state* %21, i32 0, i32 0
  store i64 0, i64* %22, align 8
  %23 = call i32 @hci_cmd_complete(i32* null)
  %24 = load i64, i64* %11, align 8
  %25 = load i64, i64* @HCI_SUCCESS, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %20
  %28 = load i32, i32* @ERR_OK, align 4
  store i32 %28, i32* %12, align 4
  br label %31

29:                                               ; preds = %20
  %30 = load i32, i32* @ERR_CONN, align 4
  store i32 %30, i32* %12, align 4
  br label %31

31:                                               ; preds = %29, %27
  %32 = call i32 (...) @physbusif_close()
  %33 = load %struct.bt_state*, %struct.bt_state** %13, align 8
  %34 = load i32, i32* %12, align 4
  %35 = call i32 @__bte_cmdfinish(%struct.bt_state* %33, i32 %34)
  store i32 %35, i32* %6, align 4
  br label %36

36:                                               ; preds = %31, %18
  %37 = load i32, i32* %6, align 4
  ret i32 %37
}

declare dso_local i32 @hci_cmd_complete(i32*) #1

declare dso_local i32 @physbusif_close(...) #1

declare dso_local i32 @__bte_cmdfinish(%struct.bt_state*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
