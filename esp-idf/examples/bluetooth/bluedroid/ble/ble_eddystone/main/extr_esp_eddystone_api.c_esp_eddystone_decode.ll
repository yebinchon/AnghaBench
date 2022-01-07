; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/bluetooth/bluedroid/ble/ble_eddystone/main/extr_esp_eddystone_api.c_esp_eddystone_decode.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/bluetooth/bluedroid/ble/ble_eddystone/main/extr_esp_eddystone_api.c_esp_eddystone_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i64, i64, i64 }

@EDDYSTONE_SERVICE_UUID = common dso_local global i64 0, align 8
@EDDYSTONE_FRAME_TYPE_UID = common dso_local global i64 0, align 8
@EDDYSTONE_FRAME_TYPE_URL = common dso_local global i64 0, align 8
@EDDYSTONE_FRAME_TYPE_TLM = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @esp_eddystone_decode(i64* %0, i64 %1, %struct.TYPE_6__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i64* %0, i64** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %7, align 8
  %13 = load i64, i64* %6, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %3
  %16 = load i64*, i64** %5, align 8
  %17 = icmp eq i64* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %15
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %20 = icmp eq %struct.TYPE_6__* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %18, %15, %3
  store i32 -1, i32* %4, align 4
  br label %115

22:                                               ; preds = %18
  store i64 0, i64* %8, align 8
  br label %23

23:                                               ; preds = %105, %22
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @EDDYSTONE_SERVICE_UUID, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %106

30:                                               ; preds = %23
  %31 = load i64, i64* %8, align 8
  %32 = add nsw i64 %31, 1
  store i64 %32, i64* %8, align 8
  %33 = load i64, i64* %8, align 8
  %34 = load i64, i64* %6, align 8
  %35 = icmp sge i64 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  store i32 -1, i32* %4, align 4
  br label %115

37:                                               ; preds = %30
  %38 = load i64*, i64** %5, align 8
  %39 = load i64, i64* %8, align 8
  %40 = add nsw i64 %39, 1
  store i64 %40, i64* %8, align 8
  %41 = getelementptr inbounds i64, i64* %38, i64 %39
  %42 = load i64, i64* %41, align 8
  store i64 %42, i64* %9, align 8
  %43 = load i64, i64* %9, align 8
  switch i64 %43, label %104 [
    i64 129, label %44
    i64 130, label %53
    i64 128, label %68
  ]

44:                                               ; preds = %37
  %45 = load i64*, i64** %5, align 8
  %46 = load i64, i64* %8, align 8
  %47 = add nsw i64 %46, 1
  store i64 %47, i64* %8, align 8
  %48 = getelementptr inbounds i64, i64* %45, i64 %46
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 1
  store i64 %49, i64* %52, align 8
  br label %105

53:                                               ; preds = %37
  %54 = load i64*, i64** %5, align 8
  %55 = load i64, i64* %8, align 8
  %56 = call i64 @little_endian_read_16(i64* %54, i64 %55)
  store i64 %56, i64* %10, align 8
  %57 = load i64, i64* %10, align 8
  %58 = load i64, i64* @EDDYSTONE_SERVICE_UUID, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %53
  store i32 -1, i32* %4, align 4
  br label %115

61:                                               ; preds = %53
  %62 = load i64, i64* %10, align 8
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 3
  store i64 %62, i64* %65, align 8
  %66 = load i64, i64* %8, align 8
  %67 = add nsw i64 %66, 2
  store i64 %67, i64* %8, align 8
  br label %105

68:                                               ; preds = %37
  %69 = load i64*, i64** %5, align 8
  %70 = load i64, i64* %8, align 8
  %71 = call i64 @little_endian_read_16(i64* %69, i64 %70)
  store i64 %71, i64* %11, align 8
  %72 = load i64, i64* %8, align 8
  %73 = add nsw i64 %72, 2
  store i64 %73, i64* %8, align 8
  %74 = load i64*, i64** %5, align 8
  %75 = load i64, i64* %8, align 8
  %76 = add nsw i64 %75, 1
  store i64 %76, i64* %8, align 8
  %77 = getelementptr inbounds i64, i64* %74, i64 %75
  %78 = load i64, i64* %77, align 8
  store i64 %78, i64* %12, align 8
  %79 = load i64, i64* %11, align 8
  %80 = load i64, i64* @EDDYSTONE_SERVICE_UUID, align 8
  %81 = icmp ne i64 %79, %80
  br i1 %81, label %94, label %82

82:                                               ; preds = %68
  %83 = load i64, i64* %12, align 8
  %84 = load i64, i64* @EDDYSTONE_FRAME_TYPE_UID, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %95, label %86

86:                                               ; preds = %82
  %87 = load i64, i64* %12, align 8
  %88 = load i64, i64* @EDDYSTONE_FRAME_TYPE_URL, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %95, label %90

90:                                               ; preds = %86
  %91 = load i64, i64* %12, align 8
  %92 = load i64, i64* @EDDYSTONE_FRAME_TYPE_TLM, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %95, label %94

94:                                               ; preds = %90, %68
  store i32 -1, i32* %4, align 4
  br label %115

95:                                               ; preds = %90, %86, %82
  %96 = load i64, i64* %11, align 8
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 0
  store i64 %96, i64* %99, align 8
  %100 = load i64, i64* %12, align 8
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 2
  store i64 %100, i64* %103, align 8
  br label %105

104:                                              ; preds = %37
  br label %105

105:                                              ; preds = %104, %95, %61, %44
  br label %23

106:                                              ; preds = %23
  %107 = load i64*, i64** %5, align 8
  %108 = load i64, i64* %8, align 8
  %109 = getelementptr inbounds i64, i64* %107, i64 %108
  %110 = load i64, i64* %6, align 8
  %111 = load i64, i64* %8, align 8
  %112 = sub nsw i64 %110, %111
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %114 = call i32 @esp_eddystone_get_inform(i64* %109, i64 %112, %struct.TYPE_6__* %113)
  store i32 %114, i32* %4, align 4
  br label %115

115:                                              ; preds = %106, %94, %60, %36, %21
  %116 = load i32, i32* %4, align 4
  ret i32 %116
}

declare dso_local i64 @little_endian_read_16(i64*, i64) #1

declare dso_local i32 @esp_eddystone_get_inform(i64*, i64, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
