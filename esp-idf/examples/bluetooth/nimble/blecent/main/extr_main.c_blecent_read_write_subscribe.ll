; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/bluetooth/nimble/blecent/main/extr_main.c_blecent_read_write_subscribe.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/bluetooth/nimble/blecent/main/extr_main.c_blecent_read_write_subscribe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.peer = type { i32 }
%struct.peer_chr = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@BLECENT_SVC_ALERT_UUID = common dso_local global i32 0, align 4
@BLECENT_CHR_SUP_NEW_ALERT_CAT_UUID = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [77 x i8] c"Error: Peer doesn't support the Supported New Alert Category characteristic\0A\00", align 1
@blecent_on_read = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"Error: Failed to read characteristic; rc=%d\0A\00", align 1
@BLE_ERR_REM_USER_CONN_TERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.peer*)* @blecent_read_write_subscribe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @blecent_read_write_subscribe(%struct.peer* %0) #0 {
  %2 = alloca %struct.peer*, align 8
  %3 = alloca %struct.peer_chr*, align 8
  %4 = alloca i32, align 4
  store %struct.peer* %0, %struct.peer** %2, align 8
  %5 = load %struct.peer*, %struct.peer** %2, align 8
  %6 = load i32, i32* @BLECENT_SVC_ALERT_UUID, align 4
  %7 = call i32 @BLE_UUID16_DECLARE(i32 %6)
  %8 = load i32, i32* @BLECENT_CHR_SUP_NEW_ALERT_CAT_UUID, align 4
  %9 = call i32 @BLE_UUID16_DECLARE(i32 %8)
  %10 = call %struct.peer_chr* @peer_chr_find_uuid(%struct.peer* %5, i32 %7, i32 %9)
  store %struct.peer_chr* %10, %struct.peer_chr** %3, align 8
  %11 = load %struct.peer_chr*, %struct.peer_chr** %3, align 8
  %12 = icmp eq %struct.peer_chr* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i32, i32* @ERROR, align 4
  %15 = call i32 (i32, i8*, ...) @MODLOG_DFLT(i32 %14, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str, i64 0, i64 0))
  br label %33

16:                                               ; preds = %1
  %17 = load %struct.peer*, %struct.peer** %2, align 8
  %18 = getelementptr inbounds %struct.peer, %struct.peer* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.peer_chr*, %struct.peer_chr** %3, align 8
  %21 = getelementptr inbounds %struct.peer_chr, %struct.peer_chr* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @blecent_on_read, align 4
  %25 = call i32 @ble_gattc_read(i32 %19, i32 %23, i32 %24, i32* null)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %16
  %29 = load i32, i32* @ERROR, align 4
  %30 = load i32, i32* %4, align 4
  %31 = call i32 (i32, i8*, ...) @MODLOG_DFLT(i32 %29, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  br label %33

32:                                               ; preds = %16
  br label %39

33:                                               ; preds = %28, %13
  %34 = load %struct.peer*, %struct.peer** %2, align 8
  %35 = getelementptr inbounds %struct.peer, %struct.peer* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @BLE_ERR_REM_USER_CONN_TERM, align 4
  %38 = call i32 @ble_gap_terminate(i32 %36, i32 %37)
  br label %39

39:                                               ; preds = %33, %32
  ret void
}

declare dso_local %struct.peer_chr* @peer_chr_find_uuid(%struct.peer*, i32, i32) #1

declare dso_local i32 @BLE_UUID16_DECLARE(i32) #1

declare dso_local i32 @MODLOG_DFLT(i32, i8*, ...) #1

declare dso_local i32 @ble_gattc_read(i32, i32, i32, i32*) #1

declare dso_local i32 @ble_gap_terminate(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
