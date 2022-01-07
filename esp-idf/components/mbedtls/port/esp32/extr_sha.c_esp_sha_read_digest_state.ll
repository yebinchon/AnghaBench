; ModuleID = '/home/carl/AnghaBench/esp-idf/components/mbedtls/port/esp32/extr_sha.c_esp_sha_read_digest_state.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/mbedtls/port/esp32/extr_sha.c_esp_sha_read_digest_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [28 x i8] c"SHA engine should be locked\00", align 1
@SHA_TEXT_BASE = common dso_local global i64 0, align 8
@SHA2_384 = common dso_local global i64 0, align 8
@SHA2_512 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @esp_sha_read_digest_state(i64 %0, i8* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i8* %1, i8** %4, align 8
  store i32* null, i32** %5, align 8
  store i32* null, i32** %6, align 8
  %11 = load i64, i64* %3, align 8
  %12 = call i32 @sha_length(i64 %11)
  %13 = sdiv i32 %12, 4
  store i32 %13, i32* %7, align 4
  %14 = load i64, i64* %3, align 8
  %15 = call i32* @sha_get_engine_state(i64 %14)
  store i32* %15, i32** %8, align 8
  %16 = load i32*, i32** %8, align 8
  %17 = call i64 @uxSemaphoreGetCount(i32* %16)
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  br label %20

20:                                               ; preds = %19, %2
  %21 = phi i1 [ false, %2 ], [ true, %19 ]
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert(i32 %22)
  %24 = call i32 (...) @esp_sha_wait_idle()
  %25 = call i32 (...) @esp_sha_lock_memory_block()
  %26 = call i32 (...) @esp_sha_wait_idle()
  %27 = load i64, i64* %3, align 8
  %28 = call i32 @SHA_LOAD_REG(i64 %27)
  %29 = call i32 @DPORT_REG_WRITE(i32 %28, i32 1)
  br label %30

30:                                               ; preds = %35, %20
  %31 = load i64, i64* %3, align 8
  %32 = call i32 @SHA_BUSY_REG(i64 %31)
  %33 = call i32 @DPORT_REG_READ(i32 %32)
  %34 = icmp eq i32 %33, 1
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  br label %30

36:                                               ; preds = %30
  %37 = load i8*, i8** %4, align 8
  %38 = bitcast i8* %37 to i32*
  store i32* %38, i32** %5, align 8
  %39 = load i64, i64* @SHA_TEXT_BASE, align 8
  %40 = inttoptr i64 %39 to i32*
  store i32* %40, i32** %6, align 8
  %41 = load i64, i64* %3, align 8
  %42 = load i64, i64* @SHA2_384, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %48, label %44

44:                                               ; preds = %36
  %45 = load i64, i64* %3, align 8
  %46 = load i64, i64* @SHA2_512, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %82

48:                                               ; preds = %44, %36
  %49 = call i32 (...) @DPORT_INTERRUPT_DISABLE()
  store i32 0, i32* %9, align 4
  br label %50

50:                                               ; preds = %77, %48
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* %7, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %80

54:                                               ; preds = %50
  %55 = load i32*, i32** %6, align 8
  %56 = load i32, i32* %9, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = ptrtoint i32* %58 to i32
  %60 = call i32 @DPORT_SEQUENCE_REG_READ(i32 %59)
  %61 = load i32*, i32** %5, align 8
  %62 = load i32, i32* %9, align 4
  %63 = add nsw i32 %62, 1
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %61, i64 %64
  store i32 %60, i32* %65, align 4
  %66 = load i32*, i32** %6, align 8
  %67 = load i32, i32* %9, align 4
  %68 = add nsw i32 %67, 1
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %66, i64 %69
  %71 = ptrtoint i32* %70 to i32
  %72 = call i32 @DPORT_SEQUENCE_REG_READ(i32 %71)
  %73 = load i32*, i32** %5, align 8
  %74 = load i32, i32* %9, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  store i32 %72, i32* %76, align 4
  br label %77

77:                                               ; preds = %54
  %78 = load i32, i32* %9, align 4
  %79 = add nsw i32 %78, 2
  store i32 %79, i32* %9, align 4
  br label %50

80:                                               ; preds = %50
  %81 = call i32 (...) @DPORT_INTERRUPT_RESTORE()
  br label %89

82:                                               ; preds = %44
  %83 = load i32*, i32** %5, align 8
  %84 = load i32*, i32** %6, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 0
  %86 = ptrtoint i32* %85 to i32
  %87 = load i32, i32* %7, align 4
  %88 = call i32 @esp_dport_access_read_buffer(i32* %83, i32 %86, i32 %87)
  br label %89

89:                                               ; preds = %82, %80
  %90 = call i32 (...) @esp_sha_unlock_memory_block()
  store i32 0, i32* %10, align 4
  br label %91

91:                                               ; preds = %104, %89
  %92 = load i32, i32* %10, align 4
  %93 = load i32, i32* %7, align 4
  %94 = icmp slt i32 %92, %93
  br i1 %94, label %95, label %107

95:                                               ; preds = %91
  %96 = load i32*, i32** %5, align 8
  %97 = load i32, i32* %10, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %95
  ret void

103:                                              ; preds = %95
  br label %104

104:                                              ; preds = %103
  %105 = load i32, i32* %10, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %10, align 4
  br label %91

107:                                              ; preds = %91
  %108 = call i32 (...) @abort() #3
  unreachable
}

declare dso_local i32 @sha_length(i64) #1

declare dso_local i32* @sha_get_engine_state(i64) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @uxSemaphoreGetCount(i32*) #1

declare dso_local i32 @esp_sha_wait_idle(...) #1

declare dso_local i32 @esp_sha_lock_memory_block(...) #1

declare dso_local i32 @DPORT_REG_WRITE(i32, i32) #1

declare dso_local i32 @SHA_LOAD_REG(i64) #1

declare dso_local i32 @DPORT_REG_READ(i32) #1

declare dso_local i32 @SHA_BUSY_REG(i64) #1

declare dso_local i32 @DPORT_INTERRUPT_DISABLE(...) #1

declare dso_local i32 @DPORT_SEQUENCE_REG_READ(i32) #1

declare dso_local i32 @DPORT_INTERRUPT_RESTORE(...) #1

declare dso_local i32 @esp_dport_access_read_buffer(i32*, i32, i32) #1

declare dso_local i32 @esp_sha_unlock_memory_block(...) #1

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
