; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/tls/extr_tlsv1_server.c_tlsv1_server_init.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/tls/extr_tlsv1_server.c_tlsv1_server_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tlsv1_server = type { i64, i32*, i32, i32, %struct.tlsv1_credentials* }
%struct.tlsv1_credentials = type { i32 }

@CLIENT_HELLO = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"TLSv1: Failed to initialize verify hash\00", align 1
@TLS_RSA_WITH_AES_256_CBC_SHA = common dso_local global i32 0, align 4
@TLS_RSA_WITH_AES_128_CBC_SHA = common dso_local global i32 0, align 4
@TLS_RSA_WITH_RC4_128_SHA = common dso_local global i32 0, align 4
@TLS_RSA_WITH_RC4_128_MD5 = common dso_local global i32 0, align 4
@TLS_RSA_WITH_3DES_EDE_CBC_SHA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.tlsv1_server* @tlsv1_server_init(%struct.tlsv1_credentials* %0) #0 {
  %2 = alloca %struct.tlsv1_server*, align 8
  %3 = alloca %struct.tlsv1_credentials*, align 8
  %4 = alloca %struct.tlsv1_server*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  store %struct.tlsv1_credentials* %0, %struct.tlsv1_credentials** %3, align 8
  %7 = call i64 @os_zalloc(i32 32)
  %8 = inttoptr i64 %7 to %struct.tlsv1_server*
  store %struct.tlsv1_server* %8, %struct.tlsv1_server** %4, align 8
  %9 = load %struct.tlsv1_server*, %struct.tlsv1_server** %4, align 8
  %10 = icmp eq %struct.tlsv1_server* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store %struct.tlsv1_server* null, %struct.tlsv1_server** %2, align 8
  br label %56

12:                                               ; preds = %1
  %13 = load %struct.tlsv1_credentials*, %struct.tlsv1_credentials** %3, align 8
  %14 = load %struct.tlsv1_server*, %struct.tlsv1_server** %4, align 8
  %15 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %14, i32 0, i32 4
  store %struct.tlsv1_credentials* %13, %struct.tlsv1_credentials** %15, align 8
  %16 = load i32, i32* @CLIENT_HELLO, align 4
  %17 = load %struct.tlsv1_server*, %struct.tlsv1_server** %4, align 8
  %18 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %17, i32 0, i32 3
  store i32 %16, i32* %18, align 4
  %19 = load %struct.tlsv1_server*, %struct.tlsv1_server** %4, align 8
  %20 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %19, i32 0, i32 2
  %21 = call i64 @tls_verify_hash_init(i32* %20)
  %22 = icmp slt i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %12
  %24 = load i32, i32* @MSG_DEBUG, align 4
  %25 = call i32 @wpa_printf(i32 %24, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %26 = load %struct.tlsv1_server*, %struct.tlsv1_server** %4, align 8
  %27 = call i32 @os_free(%struct.tlsv1_server* %26)
  store %struct.tlsv1_server* null, %struct.tlsv1_server** %2, align 8
  br label %56

28:                                               ; preds = %12
  store i64 0, i64* %5, align 8
  %29 = load %struct.tlsv1_server*, %struct.tlsv1_server** %4, align 8
  %30 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  store i32* %31, i32** %6, align 8
  %32 = load i32, i32* @TLS_RSA_WITH_AES_256_CBC_SHA, align 4
  %33 = load i32*, i32** %6, align 8
  %34 = load i64, i64* %5, align 8
  %35 = add i64 %34, 1
  store i64 %35, i64* %5, align 8
  %36 = getelementptr inbounds i32, i32* %33, i64 %34
  store i32 %32, i32* %36, align 4
  %37 = load i32, i32* @TLS_RSA_WITH_AES_128_CBC_SHA, align 4
  %38 = load i32*, i32** %6, align 8
  %39 = load i64, i64* %5, align 8
  %40 = add i64 %39, 1
  store i64 %40, i64* %5, align 8
  %41 = getelementptr inbounds i32, i32* %38, i64 %39
  store i32 %37, i32* %41, align 4
  %42 = load i32, i32* @TLS_RSA_WITH_RC4_128_SHA, align 4
  %43 = load i32*, i32** %6, align 8
  %44 = load i64, i64* %5, align 8
  %45 = add i64 %44, 1
  store i64 %45, i64* %5, align 8
  %46 = getelementptr inbounds i32, i32* %43, i64 %44
  store i32 %42, i32* %46, align 4
  %47 = load i32, i32* @TLS_RSA_WITH_RC4_128_MD5, align 4
  %48 = load i32*, i32** %6, align 8
  %49 = load i64, i64* %5, align 8
  %50 = add i64 %49, 1
  store i64 %50, i64* %5, align 8
  %51 = getelementptr inbounds i32, i32* %48, i64 %49
  store i32 %47, i32* %51, align 4
  %52 = load i64, i64* %5, align 8
  %53 = load %struct.tlsv1_server*, %struct.tlsv1_server** %4, align 8
  %54 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %53, i32 0, i32 0
  store i64 %52, i64* %54, align 8
  %55 = load %struct.tlsv1_server*, %struct.tlsv1_server** %4, align 8
  store %struct.tlsv1_server* %55, %struct.tlsv1_server** %2, align 8
  br label %56

56:                                               ; preds = %28, %23, %11
  %57 = load %struct.tlsv1_server*, %struct.tlsv1_server** %2, align 8
  ret %struct.tlsv1_server* %57
}

declare dso_local i64 @os_zalloc(i32) #1

declare dso_local i64 @tls_verify_hash_init(i32*) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @os_free(%struct.tlsv1_server*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
