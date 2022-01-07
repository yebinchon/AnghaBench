; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/bluetooth/bluedroid/ble/ble_eddystone/main/extr_esp_eddystone_api.c_esp_eddystone_tlm_received.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/bluetooth/bluedroid/ble/ble_eddystone/main/extr_esp_eddystone_api.c_esp_eddystone_tlm_received.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i8*, i8*, i64, i8* }

@EDDYSTONE_TLM_DATA_LEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*, i64, %struct.TYPE_7__*)* @esp_eddystone_tlm_received to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @esp_eddystone_tlm_received(i64* %0, i64 %1, %struct.TYPE_7__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca float, align 4
  store i64* %0, i64** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %7, align 8
  store i64 0, i64* %8, align 8
  %12 = load i64, i64* %6, align 8
  %13 = load i64, i64* @EDDYSTONE_TLM_DATA_LEN, align 8
  %14 = icmp sgt i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %75

16:                                               ; preds = %3
  %17 = load i64*, i64** %5, align 8
  %18 = load i64, i64* %8, align 8
  %19 = add nsw i64 %18, 1
  store i64 %19, i64* %8, align 8
  %20 = getelementptr inbounds i64, i64* %17, i64 %18
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  store i64 %21, i64* %25, align 8
  %26 = load i64*, i64** %5, align 8
  %27 = load i64, i64* %8, align 8
  %28 = call i8* @big_endian_read_16(i64* %26, i64 %27)
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 4
  store i8* %28, i8** %32, align 8
  %33 = load i64, i64* %8, align 8
  %34 = add nsw i64 %33, 2
  store i64 %34, i64* %8, align 8
  %35 = load i64*, i64** %5, align 8
  %36 = load i64, i64* %8, align 8
  %37 = call i8* @big_endian_read_16(i64* %35, i64 %36)
  %38 = ptrtoint i8* %37 to i32
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %9, align 4
  %40 = ashr i32 %39, 8
  %41 = and i32 %40, 255
  %42 = sext i32 %41 to i64
  store i64 %42, i64* %10, align 8
  %43 = load i32, i32* %9, align 4
  %44 = and i32 %43, 255
  %45 = sitofp i32 %44 to double
  %46 = fdiv double %45, 2.560000e+02
  %47 = fptrunc double %46 to float
  store float %47, float* %11, align 4
  %48 = load i64, i64* %10, align 8
  %49 = sitofp i64 %48 to float
  %50 = load float, float* %11, align 4
  %51 = fadd float %49, %50
  %52 = fptosi float %51 to i64
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 3
  store i64 %52, i64* %56, align 8
  %57 = load i64, i64* %8, align 8
  %58 = add nsw i64 %57, 2
  store i64 %58, i64* %8, align 8
  %59 = load i64*, i64** %5, align 8
  %60 = load i64, i64* %8, align 8
  %61 = call i8* @big_endian_read_32(i64* %59, i64 %60)
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 2
  store i8* %61, i8** %65, align 8
  %66 = load i64, i64* %8, align 8
  %67 = add nsw i64 %66, 4
  store i64 %67, i64* %8, align 8
  %68 = load i64*, i64** %5, align 8
  %69 = load i64, i64* %8, align 8
  %70 = call i8* @big_endian_read_32(i64* %68, i64 %69)
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 1
  store i8* %70, i8** %74, align 8
  store i32 0, i32* %4, align 4
  br label %75

75:                                               ; preds = %16, %15
  %76 = load i32, i32* %4, align 4
  ret i32 %76
}

declare dso_local i8* @big_endian_read_16(i64*, i64) #1

declare dso_local i8* @big_endian_read_32(i64*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
