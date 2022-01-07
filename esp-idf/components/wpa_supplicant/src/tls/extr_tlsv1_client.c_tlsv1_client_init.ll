; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/tls/extr_tlsv1_client.c_tlsv1_client_init.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/tls/extr_tlsv1_client.c_tlsv1_client_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tlsv1_client = type { i64, %struct.TYPE_2__, i32*, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@CLIENT_HELLO = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"TLSv1: Failed to initialize verify hash\00", align 1
@TLS_RSA_WITH_AES_256_CBC_SHA256 = common dso_local global i32 0, align 4
@TLS_RSA_WITH_AES_256_CBC_SHA = common dso_local global i32 0, align 4
@TLS_RSA_WITH_AES_128_CBC_SHA256 = common dso_local global i32 0, align 4
@TLS_RSA_WITH_AES_128_CBC_SHA = common dso_local global i32 0, align 4
@TLS_RSA_WITH_RC4_128_SHA = common dso_local global i32 0, align 4
@TLS_RSA_WITH_RC4_128_MD5 = common dso_local global i32 0, align 4
@TLS_VERSION = common dso_local global i32 0, align 4
@TLS_RSA_WITH_3DES_EDE_CBC_SHA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.tlsv1_client* @tlsv1_client_init() #0 {
  %1 = alloca %struct.tlsv1_client*, align 8
  %2 = alloca %struct.tlsv1_client*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = call i64 @os_zalloc(i32 32)
  %6 = inttoptr i64 %5 to %struct.tlsv1_client*
  store %struct.tlsv1_client* %6, %struct.tlsv1_client** %2, align 8
  %7 = load %struct.tlsv1_client*, %struct.tlsv1_client** %2, align 8
  %8 = icmp eq %struct.tlsv1_client* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %0
  store %struct.tlsv1_client* null, %struct.tlsv1_client** %1, align 8
  br label %65

10:                                               ; preds = %0
  %11 = load i32, i32* @CLIENT_HELLO, align 4
  %12 = load %struct.tlsv1_client*, %struct.tlsv1_client** %2, align 8
  %13 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %12, i32 0, i32 4
  store i32 %11, i32* %13, align 4
  %14 = load %struct.tlsv1_client*, %struct.tlsv1_client** %2, align 8
  %15 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %14, i32 0, i32 3
  %16 = call i64 @tls_verify_hash_init(i32* %15)
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %10
  %19 = load i32, i32* @MSG_DEBUG, align 4
  %20 = call i32 @wpa_printf(i32 %19, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.tlsv1_client*, %struct.tlsv1_client** %2, align 8
  %22 = call i32 @os_free(%struct.tlsv1_client* %21)
  store %struct.tlsv1_client* null, %struct.tlsv1_client** %1, align 8
  br label %65

23:                                               ; preds = %10
  store i64 0, i64* %3, align 8
  %24 = load %struct.tlsv1_client*, %struct.tlsv1_client** %2, align 8
  %25 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %24, i32 0, i32 2
  %26 = load i32*, i32** %25, align 8
  store i32* %26, i32** %4, align 8
  %27 = load i32, i32* @TLS_RSA_WITH_AES_256_CBC_SHA256, align 4
  %28 = load i32*, i32** %4, align 8
  %29 = load i64, i64* %3, align 8
  %30 = add i64 %29, 1
  store i64 %30, i64* %3, align 8
  %31 = getelementptr inbounds i32, i32* %28, i64 %29
  store i32 %27, i32* %31, align 4
  %32 = load i32, i32* @TLS_RSA_WITH_AES_256_CBC_SHA, align 4
  %33 = load i32*, i32** %4, align 8
  %34 = load i64, i64* %3, align 8
  %35 = add i64 %34, 1
  store i64 %35, i64* %3, align 8
  %36 = getelementptr inbounds i32, i32* %33, i64 %34
  store i32 %32, i32* %36, align 4
  %37 = load i32, i32* @TLS_RSA_WITH_AES_128_CBC_SHA256, align 4
  %38 = load i32*, i32** %4, align 8
  %39 = load i64, i64* %3, align 8
  %40 = add i64 %39, 1
  store i64 %40, i64* %3, align 8
  %41 = getelementptr inbounds i32, i32* %38, i64 %39
  store i32 %37, i32* %41, align 4
  %42 = load i32, i32* @TLS_RSA_WITH_AES_128_CBC_SHA, align 4
  %43 = load i32*, i32** %4, align 8
  %44 = load i64, i64* %3, align 8
  %45 = add i64 %44, 1
  store i64 %45, i64* %3, align 8
  %46 = getelementptr inbounds i32, i32* %43, i64 %44
  store i32 %42, i32* %46, align 4
  %47 = load i32, i32* @TLS_RSA_WITH_RC4_128_SHA, align 4
  %48 = load i32*, i32** %4, align 8
  %49 = load i64, i64* %3, align 8
  %50 = add i64 %49, 1
  store i64 %50, i64* %3, align 8
  %51 = getelementptr inbounds i32, i32* %48, i64 %49
  store i32 %47, i32* %51, align 4
  %52 = load i32, i32* @TLS_RSA_WITH_RC4_128_MD5, align 4
  %53 = load i32*, i32** %4, align 8
  %54 = load i64, i64* %3, align 8
  %55 = add i64 %54, 1
  store i64 %55, i64* %3, align 8
  %56 = getelementptr inbounds i32, i32* %53, i64 %54
  store i32 %52, i32* %56, align 4
  %57 = load i64, i64* %3, align 8
  %58 = load %struct.tlsv1_client*, %struct.tlsv1_client** %2, align 8
  %59 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %58, i32 0, i32 0
  store i64 %57, i64* %59, align 8
  %60 = load i32, i32* @TLS_VERSION, align 4
  %61 = load %struct.tlsv1_client*, %struct.tlsv1_client** %2, align 8
  %62 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  store i32 %60, i32* %63, align 8
  %64 = load %struct.tlsv1_client*, %struct.tlsv1_client** %2, align 8
  store %struct.tlsv1_client* %64, %struct.tlsv1_client** %1, align 8
  br label %65

65:                                               ; preds = %23, %18, %9
  %66 = load %struct.tlsv1_client*, %struct.tlsv1_client** %1, align 8
  ret %struct.tlsv1_client* %66
}

declare dso_local i64 @os_zalloc(i32) #1

declare dso_local i64 @tls_verify_hash_init(i32*) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @os_free(%struct.tlsv1_client*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
