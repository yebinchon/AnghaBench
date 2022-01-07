; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/esp_ble_mesh/mesh_core/extr_cfg_srv.c_bt_mesh_label_uuid_get.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/esp_ble_mesh/mesh_core/extr_cfg_srv.c_bt_mesh_label_uuid_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32* }

@.str = private unnamed_addr constant [12 x i8] c"addr 0x%04x\00", align 1
@labels = common dso_local global %struct.TYPE_3__* null, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"Found Label UUID for 0x%04x: %s\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"No matching Label UUID for 0x%04x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @bt_mesh_label_uuid_get(i64 %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  %5 = load i64, i64* %3, align 8
  %6 = call i32 (i8*, i64, ...) @BT_DBG(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %5)
  store i32 0, i32* %4, align 4
  br label %7

7:                                                ; preds = %38, %1
  %8 = load i32, i32* %4, align 4
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** @labels, align 8
  %10 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %9)
  %11 = icmp slt i32 %8, %10
  br i1 %11, label %12, label %41

12:                                               ; preds = %7
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** @labels, align 8
  %14 = load i32, i32* %4, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* %3, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %37

21:                                               ; preds = %12
  %22 = load i64, i64* %3, align 8
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** @labels, align 8
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = call i32 @bt_hex(i32* %28, i32 16)
  %30 = call i32 (i8*, i64, ...) @BT_DBG(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i64 %22, i32 %29)
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** @labels, align 8
  %32 = load i32, i32* %4, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  store i32* %36, i32** %2, align 8
  br label %44

37:                                               ; preds = %12
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %4, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %4, align 4
  br label %7

41:                                               ; preds = %7
  %42 = load i64, i64* %3, align 8
  %43 = call i32 @BT_WARN(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i64 %42)
  store i32* null, i32** %2, align 8
  br label %44

44:                                               ; preds = %41, %21
  %45 = load i32*, i32** %2, align 8
  ret i32* %45
}

declare dso_local i32 @BT_DBG(i8*, i64, ...) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i32 @bt_hex(i32*, i32) #1

declare dso_local i32 @BT_WARN(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
