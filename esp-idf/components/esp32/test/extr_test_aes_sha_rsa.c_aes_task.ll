; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp32/test/extr_test_aes_sha_rsa.c_aes_task.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp32/test/extr_test_aes_sha_rsa.c_aes_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"aes_task is started\00", align 1
@__const.aes_task.ctx = private unnamed_addr constant %struct.TYPE_4__ { i32 16, i32 101 }, align 4
@__const.aes_task.input = private unnamed_addr constant [16 x i8] c"\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10", align 16
@exit_flag = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"AES must match\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @aes_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aes_task(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_4__, align 4
  %5 = alloca [16 x i8], align 16
  %6 = alloca [16 x i8], align 16
  %7 = alloca [16 x i8], align 16
  store i8* %0, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = bitcast i8* %8 to i32*
  store i32* %9, i32** %3, align 8
  %10 = load i32, i32* @TAG, align 4
  %11 = call i32 @ESP_LOGI(i32 %10, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %12 = bitcast %struct.TYPE_4__* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %12, i8* align 4 bitcast (%struct.TYPE_4__* @__const.aes_task.ctx to i8*), i64 8, i1 false)
  %13 = bitcast [16 x i8]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %13, i8* align 16 getelementptr inbounds ([16 x i8], [16 x i8]* @__const.aes_task.input, i32 0, i32 0), i64 16, i1 false)
  br label %14

14:                                               ; preds = %17, %1
  %15 = load i32, i32* @exit_flag, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %31

17:                                               ; preds = %14
  %18 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %19 = call i32 @memset(i8* %18, i32 0, i32 16)
  %20 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %21 = call i32 @memset(i8* %20, i32 0, i32 16)
  %22 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0
  %23 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %24 = call i32 @esp_internal_aes_encrypt(%struct.TYPE_4__* %4, i8* %22, i8* %23)
  %25 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %26 = getelementptr inbounds [16 x i8], [16 x i8]* %7, i64 0, i64 0
  %27 = call i32 @esp_internal_aes_decrypt(%struct.TYPE_4__* %4, i8* %25, i8* %26)
  %28 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0
  %29 = getelementptr inbounds [16 x i8], [16 x i8]* %7, i64 0, i64 0
  %30 = call i32 @TEST_ASSERT_EQUAL_MEMORY_MESSAGE(i8* %28, i8* %29, i32 16, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %14

31:                                               ; preds = %14
  %32 = load i32*, i32** %3, align 8
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @xSemaphoreGive(i32 %33)
  %35 = call i32 @vTaskDelete(i32* null)
  ret void
}

declare dso_local i32 @ESP_LOGI(i32, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @esp_internal_aes_encrypt(%struct.TYPE_4__*, i8*, i8*) #1

declare dso_local i32 @esp_internal_aes_decrypt(%struct.TYPE_4__*, i8*, i8*) #1

declare dso_local i32 @TEST_ASSERT_EQUAL_MEMORY_MESSAGE(i8*, i8*, i32, i8*) #1

declare dso_local i32 @xSemaphoreGive(i32) #1

declare dso_local i32 @vTaskDelete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
