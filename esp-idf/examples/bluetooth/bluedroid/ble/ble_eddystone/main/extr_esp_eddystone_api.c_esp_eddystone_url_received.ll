; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/bluetooth/bluedroid/ble/ble_eddystone/main/extr_esp_eddystone_api.c_esp_eddystone_url_received.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/bluetooth/bluedroid/ble/ble_eddystone/main/extr_esp_eddystone_api.c_esp_eddystone_url_received.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i8* }

@EDDYSTONE_URL_TX_POWER_LEN = common dso_local global i64 0, align 8
@EDDYSTONE_URL_MAX_LEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*, i64, %struct.TYPE_7__*)* @esp_eddystone_url_received to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @esp_eddystone_url_received(i64* %0, i64 %1, %struct.TYPE_7__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store i64* %0, i64** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %7, align 8
  store i8* null, i8** %8, align 8
  store i64 0, i64* %9, align 8
  %10 = load i64, i64* %6, align 8
  %11 = load i64, i64* @EDDYSTONE_URL_TX_POWER_LEN, align 8
  %12 = sub nsw i64 %10, %11
  %13 = load i64, i64* @EDDYSTONE_URL_MAX_LEN, align 8
  %14 = icmp sgt i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %50

16:                                               ; preds = %3
  %17 = load i64*, i64** %5, align 8
  %18 = load i64, i64* %9, align 8
  %19 = add nsw i64 %18, 1
  store i64 %19, i64* %9, align 8
  %20 = getelementptr inbounds i64, i64* %17, i64 %18
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  store i64 %21, i64* %25, align 8
  %26 = load i64*, i64** %5, align 8
  %27 = load i64, i64* %9, align 8
  %28 = getelementptr inbounds i64, i64* %26, i64 %27
  %29 = load i64*, i64** %5, align 8
  %30 = load i64, i64* %6, align 8
  %31 = getelementptr inbounds i64, i64* %29, i64 %30
  %32 = getelementptr inbounds i64, i64* %31, i64 -1
  %33 = call i8* @esp_eddystone_resolve_url_scheme(i64* %28, i64* %32)
  store i8* %33, i8** %8, align 8
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 1
  %38 = load i8*, i8** %8, align 8
  %39 = load i8*, i8** %8, align 8
  %40 = call i64 @strlen(i8* %39)
  %41 = call i32 @memcpy(i8** %37, i8* %38, i64 %40)
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 1
  %46 = load i8*, i8** %45, align 8
  %47 = load i8*, i8** %8, align 8
  %48 = call i64 @strlen(i8* %47)
  %49 = getelementptr inbounds i8, i8* %46, i64 %48
  store i8 0, i8* %49, align 1
  store i32 0, i32* %4, align 4
  br label %50

50:                                               ; preds = %16, %15
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local i8* @esp_eddystone_resolve_url_scheme(i64*, i64*) #1

declare dso_local i32 @memcpy(i8**, i8*, i64) #1

declare dso_local i64 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
