; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/esp_ble_mesh/mesh_core/bluedroid_host/extr_mesh_bearer_adapt.c_bt_mesh_encrypt_le.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/esp_ble_mesh/mesh_core/bluedroid_host/extr_mesh_bearer_adapt.c_bt_mesh_encrypt_le.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tc_aes_key_sched_struct = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"key %s plaintext %s\00", align 1
@TC_CRYPTO_FAIL = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"enc_data %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bt_mesh_encrypt_le(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.tc_aes_key_sched_struct, align 4
  %9 = alloca [16 x i32], align 16
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = call i32 @bt_hex(i32* %10, i32 16)
  %12 = load i32*, i32** %6, align 8
  %13 = call i32 @bt_hex(i32* %12, i32 16)
  %14 = call i32 (i8*, i32, ...) @BT_DBG(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %11, i32 %13)
  %15 = getelementptr inbounds [16 x i32], [16 x i32]* %9, i64 0, i64 0
  %16 = load i32*, i32** %5, align 8
  %17 = call i32 @sys_memcpy_swap(i32* %15, i32* %16, i32 16)
  %18 = getelementptr inbounds [16 x i32], [16 x i32]* %9, i64 0, i64 0
  %19 = call i64 @tc_aes128_set_encrypt_key(%struct.tc_aes_key_sched_struct* %8, i32* %18)
  %20 = load i64, i64* @TC_CRYPTO_FAIL, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %3
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %43

25:                                               ; preds = %3
  %26 = getelementptr inbounds [16 x i32], [16 x i32]* %9, i64 0, i64 0
  %27 = load i32*, i32** %6, align 8
  %28 = call i32 @sys_memcpy_swap(i32* %26, i32* %27, i32 16)
  %29 = load i32*, i32** %7, align 8
  %30 = getelementptr inbounds [16 x i32], [16 x i32]* %9, i64 0, i64 0
  %31 = call i64 @tc_aes_encrypt(i32* %29, i32* %30, %struct.tc_aes_key_sched_struct* %8)
  %32 = load i64, i64* @TC_CRYPTO_FAIL, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %25
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %43

37:                                               ; preds = %25
  %38 = load i32*, i32** %7, align 8
  %39 = call i32 @sys_mem_swap(i32* %38, i32 16)
  %40 = load i32*, i32** %7, align 8
  %41 = call i32 @bt_hex(i32* %40, i32 16)
  %42 = call i32 (i8*, i32, ...) @BT_DBG(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %41)
  store i32 0, i32* %4, align 4
  br label %43

43:                                               ; preds = %37, %34, %22
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local i32 @BT_DBG(i8*, i32, ...) #1

declare dso_local i32 @bt_hex(i32*, i32) #1

declare dso_local i32 @sys_memcpy_swap(i32*, i32*, i32) #1

declare dso_local i64 @tc_aes128_set_encrypt_key(%struct.tc_aes_key_sched_struct*, i32*) #1

declare dso_local i64 @tc_aes_encrypt(i32*, i32*, %struct.tc_aes_key_sched_struct*) #1

declare dso_local i32 @sys_mem_swap(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
