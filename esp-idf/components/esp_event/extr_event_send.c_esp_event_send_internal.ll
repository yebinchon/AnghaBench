; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp_event/extr_event_send.c_esp_event_send_internal.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp_event/extr_event_send.c_esp_event_send_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@ESP_OK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @esp_event_send_internal(i32 %0, i32 %1, i8* %2, i64 %3, i32 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_3__, align 4
  %13 = alloca i64, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* %8, align 4
  %16 = load i8*, i8** %9, align 8
  %17 = load i64, i64* %10, align 8
  %18 = load i32, i32* %11, align 4
  %19 = call i64 @esp_event_post(i32 %14, i32 %15, i8* %16, i64 %17, i32 %18)
  store i64 %19, i64* %13, align 8
  %20 = load i64, i64* %13, align 8
  %21 = load i64, i64* @ESP_OK, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %5
  %24 = load i64, i64* %13, align 8
  store i64 %24, i64* %6, align 8
  br label %39

25:                                               ; preds = %5
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @esp_event_legacy_event_id(i32 %26, i32 %27)
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  store i32 %28, i32* %29, align 4
  %30 = load i8*, i8** %9, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %37

32:                                               ; preds = %25
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %34 = load i8*, i8** %9, align 8
  %35 = load i64, i64* %10, align 8
  %36 = call i32 @memcpy(i32* %33, i8* %34, i64 %35)
  br label %37

37:                                               ; preds = %32, %25
  %38 = call i64 @esp_event_send_legacy(%struct.TYPE_3__* %12)
  store i64 %38, i64* %6, align 8
  br label %39

39:                                               ; preds = %37, %23
  %40 = load i64, i64* %6, align 8
  ret i64 %40
}

declare dso_local i64 @esp_event_post(i32, i32, i8*, i64, i32) #1

declare dso_local i32 @esp_event_legacy_event_id(i32, i32) #1

declare dso_local i32 @memcpy(i32*, i8*, i64) #1

declare dso_local i64 @esp_event_send_legacy(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
