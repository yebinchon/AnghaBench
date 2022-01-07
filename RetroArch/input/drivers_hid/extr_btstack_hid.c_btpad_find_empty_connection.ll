; ModuleID = '/home/carl/AnghaBench/RetroArch/input/drivers_hid/extr_btstack_hid.c_btpad_find_empty_connection.c'
source_filename = "/home/carl/AnghaBench/RetroArch/input/drivers_hid/extr_btstack_hid.c_btpad_find_empty_connection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btstack_hid_adapter = type { i64 }

@MAX_USERS = common dso_local global i32 0, align 4
@g_connections = common dso_local global %struct.btstack_hid_adapter* null, align 8
@BTPAD_EMPTY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.btstack_hid_adapter* ()* @btpad_find_empty_connection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.btstack_hid_adapter* @btpad_find_empty_connection() #0 {
  %1 = alloca %struct.btstack_hid_adapter*, align 8
  %2 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  br label %3

3:                                                ; preds = %22, %0
  %4 = load i32, i32* %2, align 4
  %5 = load i32, i32* @MAX_USERS, align 4
  %6 = icmp ult i32 %4, %5
  br i1 %6, label %7, label %25

7:                                                ; preds = %3
  %8 = load %struct.btstack_hid_adapter*, %struct.btstack_hid_adapter** @g_connections, align 8
  %9 = load i32, i32* %2, align 4
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds %struct.btstack_hid_adapter, %struct.btstack_hid_adapter* %8, i64 %10
  %12 = getelementptr inbounds %struct.btstack_hid_adapter, %struct.btstack_hid_adapter* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @BTPAD_EMPTY, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %21

16:                                               ; preds = %7
  %17 = load %struct.btstack_hid_adapter*, %struct.btstack_hid_adapter** @g_connections, align 8
  %18 = load i32, i32* %2, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds %struct.btstack_hid_adapter, %struct.btstack_hid_adapter* %17, i64 %19
  store %struct.btstack_hid_adapter* %20, %struct.btstack_hid_adapter** %1, align 8
  br label %26

21:                                               ; preds = %7
  br label %22

22:                                               ; preds = %21
  %23 = load i32, i32* %2, align 4
  %24 = add i32 %23, 1
  store i32 %24, i32* %2, align 4
  br label %3

25:                                               ; preds = %3
  store %struct.btstack_hid_adapter* null, %struct.btstack_hid_adapter** %1, align 8
  br label %26

26:                                               ; preds = %25, %16
  %27 = load %struct.btstack_hid_adapter*, %struct.btstack_hid_adapter** %1, align 8
  ret %struct.btstack_hid_adapter* %27
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
