; ModuleID = '/home/carl/AnghaBench/esp-idf/components/protocomm/src/transports/extr_protocomm_nimble.c_ble_gatt_add_characteristics.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/protocomm/src/transports/extr_protocomm_nimble.c_ble_gatt_add_characteristics.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i8*, %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_9__ }
%struct.ble_gatt_chr_def = type { i32, i32*, i32 }

@BLE_UUID_TYPE_128 = common dso_local global i32 0, align 4
@ble_uuid_base = common dso_local global %struct.TYPE_9__* null, align 8
@BLE_UUID128_VAL_LENGTH = common dso_local global i32 0, align 4
@protoble_internal = common dso_local global %struct.TYPE_10__* null, align 8
@BLE_GATT_CHR_F_READ = common dso_local global i32 0, align 4
@BLE_GATT_CHR_F_WRITE = common dso_local global i32 0, align 4
@gatt_svr_chr_access = common dso_local global i32 0, align 4
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"Error allocating memory for characteristic UUID\00", align 1
@ESP_ERR_NO_MEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ble_gatt_chr_def*, i32)* @ble_gatt_add_characteristics to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ble_gatt_add_characteristics(%struct.ble_gatt_chr_def* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ble_gatt_chr_def*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_9__, align 8
  store %struct.ble_gatt_chr_def* %0, %struct.ble_gatt_chr_def** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = bitcast %struct.TYPE_9__* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %7, i8 0, i64 16, i1 false)
  %8 = load i32, i32* @BLE_UUID_TYPE_128, align 4
  %9 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  store i32 %8, i32* %10, align 8
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** @ble_uuid_base, align 8
  %14 = load i32, i32* @BLE_UUID128_VAL_LENGTH, align 4
  %15 = call i32 @memcpy(i8* %12, %struct.TYPE_9__* %13, i32 %14)
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 12
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** @protoble_internal, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = call i32 @memcpy(i8* %18, %struct.TYPE_9__* %25, i32 2)
  %27 = load i32, i32* @BLE_GATT_CHR_F_READ, align 4
  %28 = load i32, i32* @BLE_GATT_CHR_F_WRITE, align 4
  %29 = or i32 %27, %28
  %30 = load %struct.ble_gatt_chr_def*, %struct.ble_gatt_chr_def** %4, align 8
  %31 = load i32, i32* %5, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.ble_gatt_chr_def, %struct.ble_gatt_chr_def* %30, i64 %32
  %34 = getelementptr inbounds %struct.ble_gatt_chr_def, %struct.ble_gatt_chr_def* %33, i32 0, i32 0
  store i32 %29, i32* %34, align 8
  %35 = load i32, i32* @gatt_svr_chr_access, align 4
  %36 = load %struct.ble_gatt_chr_def*, %struct.ble_gatt_chr_def** %4, align 8
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.ble_gatt_chr_def, %struct.ble_gatt_chr_def* %36, i64 %38
  %40 = getelementptr inbounds %struct.ble_gatt_chr_def, %struct.ble_gatt_chr_def* %39, i32 0, i32 2
  store i32 %35, i32* %40, align 8
  %41 = call i64 @calloc(i32 1, i32 16)
  %42 = inttoptr i64 %41 to i32*
  %43 = load %struct.ble_gatt_chr_def*, %struct.ble_gatt_chr_def** %4, align 8
  %44 = load i32, i32* %5, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.ble_gatt_chr_def, %struct.ble_gatt_chr_def* %43, i64 %45
  %47 = getelementptr inbounds %struct.ble_gatt_chr_def, %struct.ble_gatt_chr_def* %46, i32 0, i32 1
  store i32* %42, i32** %47, align 8
  %48 = load %struct.ble_gatt_chr_def*, %struct.ble_gatt_chr_def** %4, align 8
  %49 = load i32, i32* %5, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.ble_gatt_chr_def, %struct.ble_gatt_chr_def* %48, i64 %50
  %52 = getelementptr inbounds %struct.ble_gatt_chr_def, %struct.ble_gatt_chr_def* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = icmp eq i32* %53, null
  br i1 %54, label %55, label %59

55:                                               ; preds = %2
  %56 = load i32, i32* @TAG, align 4
  %57 = call i32 @ESP_LOGE(i32 %56, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %58 = load i32, i32* @ESP_ERR_NO_MEM, align 4
  store i32 %58, i32* %3, align 4
  br label %68

59:                                               ; preds = %2
  %60 = load %struct.ble_gatt_chr_def*, %struct.ble_gatt_chr_def** %4, align 8
  %61 = load i32, i32* %5, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.ble_gatt_chr_def, %struct.ble_gatt_chr_def* %60, i64 %62
  %64 = getelementptr inbounds %struct.ble_gatt_chr_def, %struct.ble_gatt_chr_def* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = bitcast i32* %65 to i8*
  %67 = call i32 @memcpy(i8* %66, %struct.TYPE_9__* %6, i32 16)
  store i32 0, i32* %3, align 4
  br label %68

68:                                               ; preds = %59, %55
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @memcpy(i8*, %struct.TYPE_9__*, i32) #2

declare dso_local i64 @calloc(i32, i32) #2

declare dso_local i32 @ESP_LOGE(i32, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
