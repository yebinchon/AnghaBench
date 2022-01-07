; ModuleID = '/home/carl/AnghaBench/esp-idf/components/mbedtls/port/esp32/extr_aes.c_esp_aes_block.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/mbedtls/port/esp32/extr_aes.c_esp_aes_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64 }

@MBEDTLS_ERR_AES_INVALID_INPUT_LENGTH = common dso_local global i32 0, align 4
@AES_TEXT_BASE = common dso_local global i64 0, align 8
@AES_START_REG = common dso_local global i64 0, align 8
@AES_IDLE_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i8*, i8*)* @esp_aes_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @esp_aes_block(%struct.TYPE_3__* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = bitcast i8* %14 to i64*
  store i64* %15, i64** %8, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = bitcast i8* %16 to i64*
  store i64* %17, i64** %13, align 8
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %20, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %3
  %26 = load i8*, i8** %7, align 8
  %27 = call i32 @bzero(i8* %26, i32 16)
  %28 = load i32, i32* @MBEDTLS_ERR_AES_INVALID_INPUT_LENGTH, align 4
  store i32 %28, i32* %4, align 4
  br label %102

29:                                               ; preds = %3
  %30 = load i64*, i64** %8, align 8
  %31 = getelementptr inbounds i64, i64* %30, i64 0
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %9, align 8
  %33 = load i64, i64* @AES_TEXT_BASE, align 8
  %34 = load i64, i64* %9, align 8
  %35 = trunc i64 %34 to i32
  %36 = call i32 @DPORT_REG_WRITE(i64 %33, i32 %35)
  %37 = load i64*, i64** %8, align 8
  %38 = getelementptr inbounds i64, i64* %37, i64 1
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %10, align 8
  %40 = load i64, i64* @AES_TEXT_BASE, align 8
  %41 = add nsw i64 %40, 4
  %42 = load i64, i64* %10, align 8
  %43 = trunc i64 %42 to i32
  %44 = call i32 @DPORT_REG_WRITE(i64 %41, i32 %43)
  %45 = load i64*, i64** %8, align 8
  %46 = getelementptr inbounds i64, i64* %45, i64 2
  %47 = load i64, i64* %46, align 8
  store i64 %47, i64* %11, align 8
  %48 = load i64, i64* @AES_TEXT_BASE, align 8
  %49 = add nsw i64 %48, 8
  %50 = load i64, i64* %11, align 8
  %51 = trunc i64 %50 to i32
  %52 = call i32 @DPORT_REG_WRITE(i64 %49, i32 %51)
  %53 = load i64*, i64** %8, align 8
  %54 = getelementptr inbounds i64, i64* %53, i64 3
  %55 = load i64, i64* %54, align 8
  store i64 %55, i64* %12, align 8
  %56 = load i64, i64* @AES_TEXT_BASE, align 8
  %57 = add nsw i64 %56, 12
  %58 = load i64, i64* %12, align 8
  %59 = trunc i64 %58 to i32
  %60 = call i32 @DPORT_REG_WRITE(i64 %57, i32 %59)
  %61 = load i64, i64* @AES_START_REG, align 8
  %62 = call i32 @DPORT_REG_WRITE(i64 %61, i32 1)
  br label %63

63:                                               ; preds = %67, %29
  %64 = load i32, i32* @AES_IDLE_REG, align 4
  %65 = call i32 @DPORT_REG_READ(i32 %64)
  %66 = icmp ne i32 %65, 1
  br i1 %66, label %67, label %68

67:                                               ; preds = %63
  br label %63

68:                                               ; preds = %63
  %69 = load i64*, i64** %13, align 8
  %70 = load i64, i64* @AES_TEXT_BASE, align 8
  %71 = call i32 @esp_dport_access_read_buffer(i64* %69, i64 %70, i32 4)
  %72 = load i64, i64* %9, align 8
  %73 = load i64*, i64** %13, align 8
  %74 = getelementptr inbounds i64, i64* %73, i64 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp eq i64 %72, %75
  br i1 %76, label %77, label %101

77:                                               ; preds = %68
  %78 = load i64, i64* %10, align 8
  %79 = load i64*, i64** %13, align 8
  %80 = getelementptr inbounds i64, i64* %79, i64 1
  %81 = load i64, i64* %80, align 8
  %82 = icmp eq i64 %78, %81
  br i1 %82, label %83, label %101

83:                                               ; preds = %77
  %84 = load i64, i64* %11, align 8
  %85 = load i64*, i64** %13, align 8
  %86 = getelementptr inbounds i64, i64* %85, i64 2
  %87 = load i64, i64* %86, align 8
  %88 = icmp eq i64 %84, %87
  br i1 %88, label %89, label %101

89:                                               ; preds = %83
  %90 = load i64, i64* %12, align 8
  %91 = load i64*, i64** %13, align 8
  %92 = getelementptr inbounds i64, i64* %91, i64 3
  %93 = load i64, i64* %92, align 8
  %94 = icmp eq i64 %90, %93
  br i1 %94, label %95, label %101

95:                                               ; preds = %89
  %96 = load i8*, i8** %7, align 8
  %97 = call i32 @memset(i8* %96, i32 0, i32 16)
  %98 = load i8*, i8** %7, align 8
  %99 = call i32 @mbedtls_platform_zeroize(i8* %98, i32 16)
  %100 = call i32 (...) @abort() #3
  unreachable

101:                                              ; preds = %89, %83, %77, %68
  store i32 0, i32* %4, align 4
  br label %102

102:                                              ; preds = %101, %25
  %103 = load i32, i32* %4, align 4
  ret i32 %103
}

declare dso_local i32 @bzero(i8*, i32) #1

declare dso_local i32 @DPORT_REG_WRITE(i64, i32) #1

declare dso_local i32 @DPORT_REG_READ(i32) #1

declare dso_local i32 @esp_dport_access_read_buffer(i64*, i64, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @mbedtls_platform_zeroize(i8*, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
