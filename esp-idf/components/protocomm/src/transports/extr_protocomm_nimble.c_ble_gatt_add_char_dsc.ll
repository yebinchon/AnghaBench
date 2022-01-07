; ModuleID = '/home/carl/AnghaBench/esp-idf/components/protocomm/src/transports/extr_protocomm_nimble.c_ble_gatt_add_char_dsc.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/protocomm/src/transports/extr_protocomm_nimble.c_ble_gatt_add_char_dsc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.ble_gatt_chr_def = type { %struct.ble_gatt_dsc_def* }
%struct.ble_gatt_dsc_def = type { i8*, i32, i32, i32* }

@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"Error while allocating memory for characteristic descriptor\00", align 1
@ESP_ERR_NO_MEM = common dso_local global i32 0, align 4
@BLE_ATT_F_READ = common dso_local global i32 0, align 4
@gatt_svr_dsc_access = common dso_local global i32 0, align 4
@protoble_internal = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ble_gatt_chr_def*, i32, i32)* @ble_gatt_add_char_dsc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ble_gatt_add_char_dsc(%struct.ble_gatt_chr_def* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ble_gatt_chr_def*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store %struct.ble_gatt_chr_def* %0, %struct.ble_gatt_chr_def** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %7, align 4
  %10 = call i32* @BLE_UUID16_DECLARE(i32 %9)
  store i32* %10, i32** %8, align 8
  %11 = call i64 @calloc(i32 2, i32 24)
  %12 = inttoptr i64 %11 to %struct.ble_gatt_dsc_def*
  %13 = load %struct.ble_gatt_chr_def*, %struct.ble_gatt_chr_def** %5, align 8
  %14 = load i32, i32* %6, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.ble_gatt_chr_def, %struct.ble_gatt_chr_def* %13, i64 %15
  %17 = getelementptr inbounds %struct.ble_gatt_chr_def, %struct.ble_gatt_chr_def* %16, i32 0, i32 0
  store %struct.ble_gatt_dsc_def* %12, %struct.ble_gatt_dsc_def** %17, align 8
  %18 = load %struct.ble_gatt_chr_def*, %struct.ble_gatt_chr_def** %5, align 8
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.ble_gatt_chr_def, %struct.ble_gatt_chr_def* %18, i64 %20
  %22 = getelementptr inbounds %struct.ble_gatt_chr_def, %struct.ble_gatt_chr_def* %21, i32 0, i32 0
  %23 = load %struct.ble_gatt_dsc_def*, %struct.ble_gatt_dsc_def** %22, align 8
  %24 = icmp eq %struct.ble_gatt_dsc_def* %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %3
  %26 = load i32, i32* @TAG, align 4
  %27 = call i32 @ESP_LOGE(i32 %26, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @ESP_ERR_NO_MEM, align 4
  store i32 %28, i32* %4, align 4
  br label %102

29:                                               ; preds = %3
  %30 = call i64 @calloc(i32 1, i32 4)
  %31 = inttoptr i64 %30 to i32*
  %32 = load %struct.ble_gatt_chr_def*, %struct.ble_gatt_chr_def** %5, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.ble_gatt_chr_def, %struct.ble_gatt_chr_def* %32, i64 %34
  %36 = getelementptr inbounds %struct.ble_gatt_chr_def, %struct.ble_gatt_chr_def* %35, i32 0, i32 0
  %37 = load %struct.ble_gatt_dsc_def*, %struct.ble_gatt_dsc_def** %36, align 8
  %38 = getelementptr inbounds %struct.ble_gatt_dsc_def, %struct.ble_gatt_dsc_def* %37, i64 0
  %39 = getelementptr inbounds %struct.ble_gatt_dsc_def, %struct.ble_gatt_dsc_def* %38, i32 0, i32 3
  store i32* %31, i32** %39, align 8
  %40 = load %struct.ble_gatt_chr_def*, %struct.ble_gatt_chr_def** %5, align 8
  %41 = load i32, i32* %6, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.ble_gatt_chr_def, %struct.ble_gatt_chr_def* %40, i64 %42
  %44 = getelementptr inbounds %struct.ble_gatt_chr_def, %struct.ble_gatt_chr_def* %43, i32 0, i32 0
  %45 = load %struct.ble_gatt_dsc_def*, %struct.ble_gatt_dsc_def** %44, align 8
  %46 = getelementptr inbounds %struct.ble_gatt_dsc_def, %struct.ble_gatt_dsc_def* %45, i64 0
  %47 = getelementptr inbounds %struct.ble_gatt_dsc_def, %struct.ble_gatt_dsc_def* %46, i32 0, i32 3
  %48 = load i32*, i32** %47, align 8
  %49 = icmp eq i32* %48, null
  br i1 %49, label %50, label %54

50:                                               ; preds = %29
  %51 = load i32, i32* @TAG, align 4
  %52 = call i32 @ESP_LOGE(i32 %51, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0))
  %53 = load i32, i32* @ESP_ERR_NO_MEM, align 4
  store i32 %53, i32* %4, align 4
  br label %102

54:                                               ; preds = %29
  %55 = load %struct.ble_gatt_chr_def*, %struct.ble_gatt_chr_def** %5, align 8
  %56 = load i32, i32* %6, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.ble_gatt_chr_def, %struct.ble_gatt_chr_def* %55, i64 %57
  %59 = getelementptr inbounds %struct.ble_gatt_chr_def, %struct.ble_gatt_chr_def* %58, i32 0, i32 0
  %60 = load %struct.ble_gatt_dsc_def*, %struct.ble_gatt_dsc_def** %59, align 8
  %61 = getelementptr inbounds %struct.ble_gatt_dsc_def, %struct.ble_gatt_dsc_def* %60, i64 0
  %62 = getelementptr inbounds %struct.ble_gatt_dsc_def, %struct.ble_gatt_dsc_def* %61, i32 0, i32 3
  %63 = load i32*, i32** %62, align 8
  %64 = bitcast i32* %63 to i8*
  %65 = load i32*, i32** %8, align 8
  %66 = call i32 @memcpy(i8* %64, i32* %65, i32 4)
  %67 = load i32, i32* @BLE_ATT_F_READ, align 4
  %68 = load %struct.ble_gatt_chr_def*, %struct.ble_gatt_chr_def** %5, align 8
  %69 = load i32, i32* %6, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.ble_gatt_chr_def, %struct.ble_gatt_chr_def* %68, i64 %70
  %72 = getelementptr inbounds %struct.ble_gatt_chr_def, %struct.ble_gatt_chr_def* %71, i32 0, i32 0
  %73 = load %struct.ble_gatt_dsc_def*, %struct.ble_gatt_dsc_def** %72, align 8
  %74 = getelementptr inbounds %struct.ble_gatt_dsc_def, %struct.ble_gatt_dsc_def* %73, i64 0
  %75 = getelementptr inbounds %struct.ble_gatt_dsc_def, %struct.ble_gatt_dsc_def* %74, i32 0, i32 2
  store i32 %67, i32* %75, align 4
  %76 = load i32, i32* @gatt_svr_dsc_access, align 4
  %77 = load %struct.ble_gatt_chr_def*, %struct.ble_gatt_chr_def** %5, align 8
  %78 = load i32, i32* %6, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.ble_gatt_chr_def, %struct.ble_gatt_chr_def* %77, i64 %79
  %81 = getelementptr inbounds %struct.ble_gatt_chr_def, %struct.ble_gatt_chr_def* %80, i32 0, i32 0
  %82 = load %struct.ble_gatt_dsc_def*, %struct.ble_gatt_dsc_def** %81, align 8
  %83 = getelementptr inbounds %struct.ble_gatt_dsc_def, %struct.ble_gatt_dsc_def* %82, i64 0
  %84 = getelementptr inbounds %struct.ble_gatt_dsc_def, %struct.ble_gatt_dsc_def* %83, i32 0, i32 1
  store i32 %76, i32* %84, align 8
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** @protoble_internal, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %86, align 8
  %88 = load i32, i32* %6, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = inttoptr i64 %92 to i8*
  %94 = load %struct.ble_gatt_chr_def*, %struct.ble_gatt_chr_def** %5, align 8
  %95 = load i32, i32* %6, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.ble_gatt_chr_def, %struct.ble_gatt_chr_def* %94, i64 %96
  %98 = getelementptr inbounds %struct.ble_gatt_chr_def, %struct.ble_gatt_chr_def* %97, i32 0, i32 0
  %99 = load %struct.ble_gatt_dsc_def*, %struct.ble_gatt_dsc_def** %98, align 8
  %100 = getelementptr inbounds %struct.ble_gatt_dsc_def, %struct.ble_gatt_dsc_def* %99, i64 0
  %101 = getelementptr inbounds %struct.ble_gatt_dsc_def, %struct.ble_gatt_dsc_def* %100, i32 0, i32 0
  store i8* %93, i8** %101, align 8
  store i32 0, i32* %4, align 4
  br label %102

102:                                              ; preds = %54, %50, %25
  %103 = load i32, i32* %4, align 4
  ret i32 %103
}

declare dso_local i32* @BLE_UUID16_DECLARE(i32) #1

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @ESP_LOGE(i32, i8*) #1

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
