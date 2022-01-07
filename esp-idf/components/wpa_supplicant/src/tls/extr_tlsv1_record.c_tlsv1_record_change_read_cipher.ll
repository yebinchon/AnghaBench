; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/tls/extr_tlsv1_record.c_tlsv1_record_change_read_cipher.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/tls/extr_tlsv1_record.c_tlsv1_record_change_read_cipher.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tlsv1_record_layer = type { i64, i32*, i32, i32, i32, i32, i32, i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"TLSv1: Record Layer - New read cipher suite 0x%04x \0A\00", align 1
@TLS_SEQ_NUM_LEN = common dso_local global i32 0, align 4
@CRYPTO_CIPHER_NULL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"TLSv1: Failed to initialize cipher\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tlsv1_record_change_read_cipher(%struct.tlsv1_record_layer* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tlsv1_record_layer*, align 8
  store %struct.tlsv1_record_layer* %0, %struct.tlsv1_record_layer** %3, align 8
  %4 = load i32, i32* @MSG_DEBUG, align 4
  %5 = load %struct.tlsv1_record_layer*, %struct.tlsv1_record_layer** %3, align 8
  %6 = getelementptr inbounds %struct.tlsv1_record_layer, %struct.tlsv1_record_layer* %5, i32 0, i32 6
  %7 = load i32, i32* %6, align 8
  %8 = call i32 (i32, i8*, ...) @wpa_printf(i32 %4, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %7)
  %9 = load %struct.tlsv1_record_layer*, %struct.tlsv1_record_layer** %3, align 8
  %10 = getelementptr inbounds %struct.tlsv1_record_layer, %struct.tlsv1_record_layer* %9, i32 0, i32 6
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.tlsv1_record_layer*, %struct.tlsv1_record_layer** %3, align 8
  %13 = getelementptr inbounds %struct.tlsv1_record_layer, %struct.tlsv1_record_layer* %12, i32 0, i32 7
  store i32 %11, i32* %13, align 4
  %14 = load %struct.tlsv1_record_layer*, %struct.tlsv1_record_layer** %3, align 8
  %15 = getelementptr inbounds %struct.tlsv1_record_layer, %struct.tlsv1_record_layer* %14, i32 0, i32 5
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @TLS_SEQ_NUM_LEN, align 4
  %18 = call i32 @os_memset(i32 %16, i32 0, i32 %17)
  %19 = load %struct.tlsv1_record_layer*, %struct.tlsv1_record_layer** %3, align 8
  %20 = getelementptr inbounds %struct.tlsv1_record_layer, %struct.tlsv1_record_layer* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %30

23:                                               ; preds = %1
  %24 = load %struct.tlsv1_record_layer*, %struct.tlsv1_record_layer** %3, align 8
  %25 = getelementptr inbounds %struct.tlsv1_record_layer, %struct.tlsv1_record_layer* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = call i32 @crypto_cipher_deinit(i32* %26)
  %28 = load %struct.tlsv1_record_layer*, %struct.tlsv1_record_layer** %3, align 8
  %29 = getelementptr inbounds %struct.tlsv1_record_layer, %struct.tlsv1_record_layer* %28, i32 0, i32 1
  store i32* null, i32** %29, align 8
  br label %30

30:                                               ; preds = %23, %1
  %31 = load %struct.tlsv1_record_layer*, %struct.tlsv1_record_layer** %3, align 8
  %32 = getelementptr inbounds %struct.tlsv1_record_layer, %struct.tlsv1_record_layer* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @CRYPTO_CIPHER_NULL, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %60

36:                                               ; preds = %30
  %37 = load %struct.tlsv1_record_layer*, %struct.tlsv1_record_layer** %3, align 8
  %38 = getelementptr inbounds %struct.tlsv1_record_layer, %struct.tlsv1_record_layer* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.tlsv1_record_layer*, %struct.tlsv1_record_layer** %3, align 8
  %41 = getelementptr inbounds %struct.tlsv1_record_layer, %struct.tlsv1_record_layer* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.tlsv1_record_layer*, %struct.tlsv1_record_layer** %3, align 8
  %44 = getelementptr inbounds %struct.tlsv1_record_layer, %struct.tlsv1_record_layer* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.tlsv1_record_layer*, %struct.tlsv1_record_layer** %3, align 8
  %47 = getelementptr inbounds %struct.tlsv1_record_layer, %struct.tlsv1_record_layer* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = call i32* @crypto_cipher_init(i64 %39, i32 %42, i32 %45, i32 %48)
  %50 = load %struct.tlsv1_record_layer*, %struct.tlsv1_record_layer** %3, align 8
  %51 = getelementptr inbounds %struct.tlsv1_record_layer, %struct.tlsv1_record_layer* %50, i32 0, i32 1
  store i32* %49, i32** %51, align 8
  %52 = load %struct.tlsv1_record_layer*, %struct.tlsv1_record_layer** %3, align 8
  %53 = getelementptr inbounds %struct.tlsv1_record_layer, %struct.tlsv1_record_layer* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = icmp eq i32* %54, null
  br i1 %55, label %56, label %59

56:                                               ; preds = %36
  %57 = load i32, i32* @MSG_DEBUG, align 4
  %58 = call i32 (i32, i8*, ...) @wpa_printf(i32 %57, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %61

59:                                               ; preds = %36
  br label %60

60:                                               ; preds = %59, %30
  store i32 0, i32* %2, align 4
  br label %61

61:                                               ; preds = %60, %56
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @os_memset(i32, i32, i32) #1

declare dso_local i32 @crypto_cipher_deinit(i32*) #1

declare dso_local i32* @crypto_cipher_init(i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
