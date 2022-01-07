; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/bluetooth/bluedroid/ble/ble_compatibility_test/main/extr_ble_compatibility_test.c_show_bonded_devices.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/bluetooth/bluedroid/ble/ble_compatibility_test/main/extr_ble_compatibility_test.c_show_bonded_devices.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }

@EXAMPLE_TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Bonded devices number : %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Bonded devices list : %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @show_bonded_devices to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @show_bonded_devices() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i32, align 4
  %4 = call i32 (...) @esp_ble_get_bond_device_num()
  store i32 %4, i32* %1, align 4
  %5 = load i32, i32* %1, align 4
  %6 = sext i32 %5 to i64
  %7 = mul i64 8, %6
  %8 = trunc i64 %7 to i32
  %9 = call i64 @malloc(i32 %8)
  %10 = inttoptr i64 %9 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %10, %struct.TYPE_4__** %2, align 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %12 = call i32 @esp_ble_get_bond_device_list(i32* %1, %struct.TYPE_4__* %11)
  %13 = load i32, i32* @EXAMPLE_TAG, align 4
  %14 = load i32, i32* %1, align 4
  %15 = call i32 @EXAMPLE_DEBUG(i32 %13, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load i32, i32* @EXAMPLE_TAG, align 4
  %17 = load i32, i32* %1, align 4
  %18 = call i32 @EXAMPLE_DEBUG(i32 %16, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %17)
  store i32 0, i32* %3, align 4
  br label %19

19:                                               ; preds = %24, %0
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* %1, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  br label %24

24:                                               ; preds = %23
  %25 = load i32, i32* %3, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %3, align 4
  br label %19

27:                                               ; preds = %19
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %29 = call i32 @free(%struct.TYPE_4__* %28)
  ret void
}

declare dso_local i32 @esp_ble_get_bond_device_num(...) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @esp_ble_get_bond_device_list(i32*, %struct.TYPE_4__*) #1

declare dso_local i32 @EXAMPLE_DEBUG(i32, i8*, i32) #1

declare dso_local i32 @free(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
