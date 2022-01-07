; ModuleID = '/home/carl/AnghaBench/esp-idf/components/efuse/test/extr_test_efuse.c_test_read_blob.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/efuse/test/extr_test_efuse.c_test_read_blob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"1. Read MAC address\00", align 1
@ESP_EFUSE_MAC_FACTORY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"MAC: %02x:%02x:%02x:%02x:%02x:%02x\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"3. Test check args\00", align 1
@ESP_ERR_INVALID_ARG = common dso_local global i32 0, align 4
@__const.test_read_blob.buff = private unnamed_addr constant [7 x i32] [i32 89, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], align 16
@.str.3 = private unnamed_addr constant [35 x i8] c"Operation read blob is not success\00", align 1
@ESP_EFUSE_MAC_FACTORY_CRC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_read_blob to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_read_blob() #0 {
  %1 = alloca [6 x i32], align 16
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca [7 x i32], align 16
  %5 = call i32 (...) @esp_efuse_utility_update_virt_blocks()
  %6 = call i32 (...) @esp_efuse_utility_debug_dump_blocks()
  %7 = load i32, i32* @TAG, align 4
  %8 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %7, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %9 = getelementptr inbounds [6 x i32], [6 x i32]* %1, i64 0, i64 0
  %10 = call i32 @memset(i32* %9, i32 0, i32 24)
  %11 = load i32, i32* @ESP_EFUSE_MAC_FACTORY, align 4
  %12 = call i32 (i32, ...) @esp_efuse_read_field_blob(i32 %11, [6 x i32]* %1, i64 192)
  %13 = call i32 @TEST_ESP_OK(i32 %12)
  %14 = load i32, i32* @ESP_EFUSE_MAC_FACTORY, align 4
  %15 = call i32 @esp_efuse_get_field_size(i32 %14)
  %16 = call i32 @TEST_ASSERT_EQUAL_INT(i32 192, i32 %15)
  %17 = load i32, i32* @TAG, align 4
  %18 = getelementptr inbounds [6 x i32], [6 x i32]* %1, i64 0, i64 0
  %19 = load i32, i32* %18, align 16
  %20 = getelementptr inbounds [6 x i32], [6 x i32]* %1, i64 0, i64 1
  %21 = load i32, i32* %20, align 4
  %22 = getelementptr inbounds [6 x i32], [6 x i32]* %1, i64 0, i64 2
  %23 = load i32, i32* %22, align 8
  %24 = getelementptr inbounds [6 x i32], [6 x i32]* %1, i64 0, i64 3
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr inbounds [6 x i32], [6 x i32]* %1, i64 0, i64 4
  %27 = load i32, i32* %26, align 16
  %28 = getelementptr inbounds [6 x i32], [6 x i32]* %1, i64 0, i64 5
  %29 = load i32, i32* %28, align 4
  %30 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %17, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %19, i32 %21, i32 %23, i32 %25, i32 %27, i32 %29)
  %31 = load i32, i32* @TAG, align 4
  %32 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %31, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %33 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  %34 = load i32, i32* @ESP_EFUSE_MAC_FACTORY, align 4
  %35 = call i32 (i32, ...) @esp_efuse_read_field_blob(i32 %34, i8* null, i32 1)
  %36 = call i32 @TEST_ESP_ERR(i32 %33, i32 %35)
  %37 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  %38 = load i32, i32* @ESP_EFUSE_MAC_FACTORY, align 4
  %39 = call i32 (i32, ...) @esp_efuse_read_field_blob(i32 %38, i32** %2, i32 0)
  %40 = call i32 @TEST_ESP_ERR(i32 %37, i32 %39)
  %41 = load i32, i32* @ESP_EFUSE_MAC_FACTORY, align 4
  %42 = call i32 (i32, ...) @esp_efuse_read_field_blob(i32 %41, i32* %3, i32 4)
  %43 = call i32 @TEST_ESP_OK(i32 %42)
  %44 = getelementptr inbounds [6 x i32], [6 x i32]* %1, i64 0, i64 0
  %45 = load i32, i32* %44, align 16
  %46 = and i32 %45, 15
  %47 = load i32, i32* %3, align 4
  %48 = call i32 @TEST_ASSERT_EQUAL_HEX8(i32 %46, i32 %47)
  %49 = bitcast [7 x i32]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %49, i8* align 16 bitcast ([7 x i32]* @__const.test_read_blob.buff to i8*), i64 28, i1 false)
  %50 = load i32, i32* @ESP_EFUSE_MAC_FACTORY, align 4
  %51 = call i32 (i32, ...) @esp_efuse_read_field_blob(i32 %50, [7 x i32]* %4, i64 224)
  %52 = call i32 @TEST_ESP_OK(i32 %51)
  %53 = getelementptr inbounds [6 x i32], [6 x i32]* %1, i64 0, i64 0
  %54 = getelementptr inbounds [7 x i32], [7 x i32]* %4, i64 0, i64 0
  %55 = call i64 @memcmp(i32* %53, i32* %54, i32 24)
  %56 = icmp eq i64 %55, 0
  %57 = zext i1 %56 to i32
  %58 = call i32 @TEST_ASSERT_TRUE_MESSAGE(i32 %57, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  %59 = getelementptr inbounds [7 x i32], [7 x i32]* %4, i64 0, i64 6
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @TEST_ASSERT_EQUAL_HEX8(i32 0, i32 %60)
  ret void
}

declare dso_local i32 @esp_efuse_utility_update_virt_blocks(...) #1

declare dso_local i32 @esp_efuse_utility_debug_dump_blocks(...) #1

declare dso_local i32 @ESP_LOGI(i32, i8*, ...) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @TEST_ESP_OK(i32) #1

declare dso_local i32 @esp_efuse_read_field_blob(i32, ...) #1

declare dso_local i32 @TEST_ASSERT_EQUAL_INT(i32, i32) #1

declare dso_local i32 @esp_efuse_get_field_size(i32) #1

declare dso_local i32 @TEST_ESP_ERR(i32, i32) #1

declare dso_local i32 @TEST_ASSERT_EQUAL_HEX8(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @TEST_ASSERT_TRUE_MESSAGE(i32, i8*) #1

declare dso_local i64 @memcmp(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
