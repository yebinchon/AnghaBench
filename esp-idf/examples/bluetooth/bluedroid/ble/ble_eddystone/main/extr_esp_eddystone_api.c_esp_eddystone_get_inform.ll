; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/bluetooth/bluedroid/ble/ble_eddystone/main/extr_esp_eddystone_api.c_esp_eddystone_get_inform.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/bluetooth/bluedroid/ble/ble_eddystone/main/extr_esp_eddystone_api.c_esp_eddystone_get_inform.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@esp_eddystone_get_inform.ret = internal global i32 -1, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, %struct.TYPE_8__*)* @esp_eddystone_get_inform to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @esp_eddystone_get_inform(i32* %0, i32 %1, %struct.TYPE_8__* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %6, align 8
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %26 [
    i32 129, label %11
    i32 128, label %16
    i32 130, label %21
  ]

11:                                               ; preds = %3
  %12 = load i32*, i32** %4, align 8
  %13 = load i32, i32* %5, align 4
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %15 = call i32 @esp_eddystone_uid_received(i32* %12, i32 %13, %struct.TYPE_8__* %14)
  store i32 %15, i32* @esp_eddystone_get_inform.ret, align 4
  br label %27

16:                                               ; preds = %3
  %17 = load i32*, i32** %4, align 8
  %18 = load i32, i32* %5, align 4
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %20 = call i32 @esp_eddystone_url_received(i32* %17, i32 %18, %struct.TYPE_8__* %19)
  store i32 %20, i32* @esp_eddystone_get_inform.ret, align 4
  br label %27

21:                                               ; preds = %3
  %22 = load i32*, i32** %4, align 8
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %25 = call i32 @esp_eddystone_tlm_received(i32* %22, i32 %23, %struct.TYPE_8__* %24)
  store i32 %25, i32* @esp_eddystone_get_inform.ret, align 4
  br label %27

26:                                               ; preds = %3
  br label %27

27:                                               ; preds = %26, %21, %16, %11
  %28 = load i32, i32* @esp_eddystone_get_inform.ret, align 4
  ret i32 %28
}

declare dso_local i32 @esp_eddystone_uid_received(i32*, i32, %struct.TYPE_8__*) #1

declare dso_local i32 @esp_eddystone_url_received(i32*, i32, %struct.TYPE_8__*) #1

declare dso_local i32 @esp_eddystone_tlm_received(i32*, i32, %struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
