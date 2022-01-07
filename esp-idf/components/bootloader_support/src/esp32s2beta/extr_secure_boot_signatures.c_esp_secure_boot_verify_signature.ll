; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bootloader_support/src/esp32s2beta/extr_secure_boot_signatures.c_esp_secure_boot_verify_signature.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bootloader_support/src/esp32s2beta/extr_secure_boot_signatures.c_esp_secure_boot_verify_signature.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@DIGEST_LEN = common dso_local global i32 0, align 4
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"verifying signature src_addr 0x%x length 0x%x\00", align 1
@.str.1 = private unnamed_addr constant [55 x i8] c"addr 0x%x length 0x%x doesn't end on a sector boundary\00", align 1
@ESP_ERR_INVALID_ARG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"bootloader_mmap(0x%x, 0x%x) failed\00", align 1
@ESP_FAIL = common dso_local global i32 0, align 4
@SHA2_256 = common dso_local global i32 0, align 4
@ETS_OK = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @esp_secure_boot_verify_signature(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %13 = bitcast %struct.TYPE_4__* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %13, i8 0, i64 4, i1 false)
  %14 = load i32, i32* @DIGEST_LEN, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %7, align 8
  %17 = alloca i32, i64 %15, align 16
  store i64 %15, i64* %8, align 8
  %18 = load i32, i32* @TAG, align 4
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @ESP_LOGD(i32 %18, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %20)
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* %5, align 4
  %24 = add nsw i32 %22, %23
  %25 = srem i32 %24, 4096
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %2
  %28 = load i32, i32* @TAG, align 4
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @ESP_LOGE(i32 %28, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i32 %29, i32 %30)
  %32 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  store i32 %32, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %79

33:                                               ; preds = %2
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* %5, align 4
  %36 = sext i32 %35 to i64
  %37 = add i64 %36, 4
  %38 = trunc i64 %37 to i32
  %39 = call i32* @bootloader_mmap(i32 %34, i32 %38)
  store i32* %39, i32** %9, align 8
  %40 = load i32*, i32** %9, align 8
  %41 = icmp eq i32* %40, null
  br i1 %41, label %42, label %51

42:                                               ; preds = %33
  %43 = load i32, i32* @TAG, align 4
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* %5, align 4
  %46 = sext i32 %45 to i64
  %47 = add i64 %46, 4
  %48 = trunc i64 %47 to i32
  %49 = call i32 @ESP_LOGE(i32 %43, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %44, i32 %48)
  %50 = load i32, i32* @ESP_FAIL, align 4
  store i32 %50, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %79

51:                                               ; preds = %33
  %52 = load i32, i32* @SHA2_256, align 4
  %53 = load i32*, i32** %9, align 8
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @esp_sha(i32 %52, i32* %53, i32 %54, i32* %17)
  %56 = call i32 @ets_secure_boot_read_key_digests(%struct.TYPE_4__* %6)
  store i32 %56, i32* %11, align 4
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* @ETS_OK, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %67

60:                                               ; preds = %51
  %61 = load i32*, i32** %9, align 8
  %62 = load i32, i32* %5, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  store i32* %64, i32** %12, align 8
  %65 = load i32*, i32** %12, align 8
  %66 = call i32 @ets_secure_boot_verify_signature(i32* %65, i32* %17, %struct.TYPE_4__* %6)
  store i32 %66, i32* %11, align 4
  br label %67

67:                                               ; preds = %60, %51
  %68 = load i32*, i32** %9, align 8
  %69 = call i32 @bootloader_munmap(i32* %68)
  %70 = load i32, i32* %11, align 4
  %71 = load i32, i32* @ETS_OK, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %67
  %74 = load i32, i32* @ESP_OK, align 4
  br label %77

75:                                               ; preds = %67
  %76 = load i32, i32* @ESP_FAIL, align 4
  br label %77

77:                                               ; preds = %75, %73
  %78 = phi i32 [ %74, %73 ], [ %76, %75 ]
  store i32 %78, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %79

79:                                               ; preds = %77, %42, %27
  %80 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %80)
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @ESP_LOGD(i32, i8*, i32, i32) #3

declare dso_local i32 @ESP_LOGE(i32, i8*, i32, i32) #3

declare dso_local i32* @bootloader_mmap(i32, i32) #3

declare dso_local i32 @esp_sha(i32, i32*, i32, i32*) #3

declare dso_local i32 @ets_secure_boot_read_key_digests(%struct.TYPE_4__*) #3

declare dso_local i32 @ets_secure_boot_verify_signature(i32*, i32*, %struct.TYPE_4__*) #3

declare dso_local i32 @bootloader_munmap(i32*) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
