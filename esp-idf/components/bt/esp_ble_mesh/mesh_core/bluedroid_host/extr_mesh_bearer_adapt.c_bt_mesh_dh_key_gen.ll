; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/esp_ble_mesh/mesh_core/bluedroid_host/extr_mesh_bearer_adapt.c_bt_mesh_dh_key_gen.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/esp_ble_mesh/mesh_core/bluedroid_host/extr_mesh_bearer_adapt.c_bt_mesh_dh_key_gen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32*, i32*, i32 }

@.str = private unnamed_addr constant [17 x i8] c"private key = %s\00", align 1
@bt_mesh_private_key = common dso_local global i32* null, align 8
@BT_OCTET32_LEN = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"remote public key x = %s\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"remote public key y = %s\00", align 1
@KEY_LENGTH_DWORDS_P256 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"new public key x = %s\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"new public key y = %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bt_mesh_dh_key_gen(i32* %0, i32 (i32*, i32)* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32 (i32*, i32)*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_6__, align 8
  %9 = alloca %struct.TYPE_6__, align 8
  store i32* %0, i32** %4, align 8
  store i32 (i32*, i32)* %1, i32 (i32*, i32)** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32* null, i32** %7, align 8
  %10 = bitcast %struct.TYPE_6__* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %10, i8 0, i64 24, i1 false)
  %11 = bitcast %struct.TYPE_6__* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %11, i8 0, i64 24, i1 false)
  %12 = load i32*, i32** @bt_mesh_private_key, align 8
  %13 = load i64, i64* @BT_OCTET32_LEN, align 8
  %14 = trunc i64 %13 to i32
  %15 = call i32 @bt_hex(i32* %12, i32 %14)
  %16 = call i32 @BT_DBG(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load i32*, i32** %7, align 8
  %18 = load i32*, i32** @bt_mesh_private_key, align 8
  %19 = load i64, i64* @BT_OCTET32_LEN, align 8
  %20 = call i32 @memcpy(i32* %17, i32* %18, i64 %19)
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = load i32*, i32** %4, align 8
  %24 = load i64, i64* @BT_OCTET32_LEN, align 8
  %25 = call i32 @memcpy(i32* %22, i32* %23, i64 %24)
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = load i32*, i32** %4, align 8
  %29 = load i64, i64* @BT_OCTET32_LEN, align 8
  %30 = getelementptr inbounds i32, i32* %28, i64 %29
  %31 = load i64, i64* @BT_OCTET32_LEN, align 8
  %32 = call i32 @memcpy(i32* %27, i32* %30, i64 %31)
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = load i64, i64* @BT_OCTET32_LEN, align 8
  %36 = trunc i64 %35 to i32
  %37 = call i32 @bt_hex(i32* %34, i32 %36)
  %38 = call i32 @BT_DBG(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = load i64, i64* @BT_OCTET32_LEN, align 8
  %42 = trunc i64 %41 to i32
  %43 = call i32 @bt_hex(i32* %40, i32 %42)
  %44 = call i32 @BT_DBG(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %43)
  %45 = load i32*, i32** %7, align 8
  %46 = load i32, i32* @KEY_LENGTH_DWORDS_P256, align 4
  %47 = call i32 @ECC_PointMult(%struct.TYPE_6__* %9, %struct.TYPE_6__* %8, i32* %45, i32 %46)
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = call i32 @bt_hex(i32* %49, i32 32)
  %51 = call i32 @BT_DBG(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %50)
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = call i32 @bt_hex(i32* %53, i32 32)
  %55 = call i32 @BT_DBG(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 %54)
  %56 = load i32 (i32*, i32)*, i32 (i32*, i32)** %5, align 8
  %57 = icmp ne i32 (i32*, i32)* %56, null
  br i1 %57, label %58, label %64

58:                                               ; preds = %3
  %59 = load i32 (i32*, i32)*, i32 (i32*, i32)** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %6, align 4
  %63 = call i32 %59(i32* %61, i32 %62)
  br label %64

64:                                               ; preds = %58, %3
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @BT_DBG(i8*, i32) #2

declare dso_local i32 @bt_hex(i32*, i32) #2

declare dso_local i32 @memcpy(i32*, i32*, i64) #2

declare dso_local i32 @ECC_PointMult(%struct.TYPE_6__*, %struct.TYPE_6__*, i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
