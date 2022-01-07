; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/tls/extr_tlsv1_server_write.c_tls_send_server_hello.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/tls/extr_tlsv1_server_write.c_tls_send_server_hello.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tlsv1_server = type { i32, i64 }

@CHANGE_CIPHER_SPEC = common dso_local global i32 0, align 4
@CLIENT_CERTIFICATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.tlsv1_server*, i64*)* @tls_send_server_hello to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @tls_send_server_hello(%struct.tlsv1_server* %0, i64* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.tlsv1_server*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  store %struct.tlsv1_server* %0, %struct.tlsv1_server** %4, align 8
  store i64* %1, i64** %5, align 8
  %10 = load i64*, i64** %5, align 8
  store i64 0, i64* %10, align 8
  %11 = load %struct.tlsv1_server*, %struct.tlsv1_server** %4, align 8
  %12 = call i32 @tls_server_cert_chain_der_len(%struct.tlsv1_server* %11)
  %13 = add nsw i32 1000, %12
  %14 = sext i32 %13 to i64
  store i64 %14, i64* %9, align 8
  %15 = load i64, i64* %9, align 8
  %16 = call i32* @os_malloc(i64 %15)
  store i32* %16, i32** %6, align 8
  %17 = load i32*, i32** %6, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store i32* null, i32** %3, align 8
  br label %97

20:                                               ; preds = %2
  %21 = load i32*, i32** %6, align 8
  store i32* %21, i32** %8, align 8
  %22 = load i32*, i32** %6, align 8
  %23 = load i64, i64* %9, align 8
  %24 = getelementptr inbounds i32, i32* %22, i64 %23
  store i32* %24, i32** %7, align 8
  %25 = load %struct.tlsv1_server*, %struct.tlsv1_server** %4, align 8
  %26 = load i32*, i32** %7, align 8
  %27 = call i64 @tls_write_server_hello(%struct.tlsv1_server* %25, i32** %8, i32* %26)
  %28 = icmp slt i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %20
  %30 = load i32*, i32** %6, align 8
  %31 = call i32 @os_free(i32* %30)
  store i32* null, i32** %3, align 8
  br label %97

32:                                               ; preds = %20
  %33 = load %struct.tlsv1_server*, %struct.tlsv1_server** %4, align 8
  %34 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %62

37:                                               ; preds = %32
  %38 = load %struct.tlsv1_server*, %struct.tlsv1_server** %4, align 8
  %39 = load i32*, i32** %7, align 8
  %40 = call i64 @tls_write_server_change_cipher_spec(%struct.tlsv1_server* %38, i32** %8, i32* %39)
  %41 = icmp slt i64 %40, 0
  br i1 %41, label %47, label %42

42:                                               ; preds = %37
  %43 = load %struct.tlsv1_server*, %struct.tlsv1_server** %4, align 8
  %44 = load i32*, i32** %7, align 8
  %45 = call i64 @tls_write_server_finished(%struct.tlsv1_server* %43, i32** %8, i32* %44)
  %46 = icmp slt i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %42, %37
  %48 = load i32*, i32** %6, align 8
  %49 = call i32 @os_free(i32* %48)
  store i32* null, i32** %3, align 8
  br label %97

50:                                               ; preds = %42
  %51 = load i32*, i32** %8, align 8
  %52 = load i32*, i32** %6, align 8
  %53 = ptrtoint i32* %51 to i64
  %54 = ptrtoint i32* %52 to i64
  %55 = sub i64 %53, %54
  %56 = sdiv exact i64 %55, 4
  %57 = load i64*, i64** %5, align 8
  store i64 %56, i64* %57, align 8
  %58 = load i32, i32* @CHANGE_CIPHER_SPEC, align 4
  %59 = load %struct.tlsv1_server*, %struct.tlsv1_server** %4, align 8
  %60 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 8
  %61 = load i32*, i32** %6, align 8
  store i32* %61, i32** %3, align 8
  br label %97

62:                                               ; preds = %32
  %63 = load %struct.tlsv1_server*, %struct.tlsv1_server** %4, align 8
  %64 = load i32*, i32** %7, align 8
  %65 = call i64 @tls_write_server_certificate(%struct.tlsv1_server* %63, i32** %8, i32* %64)
  %66 = icmp slt i64 %65, 0
  br i1 %66, label %82, label %67

67:                                               ; preds = %62
  %68 = load %struct.tlsv1_server*, %struct.tlsv1_server** %4, align 8
  %69 = load i32*, i32** %7, align 8
  %70 = call i64 @tls_write_server_key_exchange(%struct.tlsv1_server* %68, i32** %8, i32* %69)
  %71 = icmp slt i64 %70, 0
  br i1 %71, label %82, label %72

72:                                               ; preds = %67
  %73 = load %struct.tlsv1_server*, %struct.tlsv1_server** %4, align 8
  %74 = load i32*, i32** %7, align 8
  %75 = call i64 @tls_write_server_certificate_request(%struct.tlsv1_server* %73, i32** %8, i32* %74)
  %76 = icmp slt i64 %75, 0
  br i1 %76, label %82, label %77

77:                                               ; preds = %72
  %78 = load %struct.tlsv1_server*, %struct.tlsv1_server** %4, align 8
  %79 = load i32*, i32** %7, align 8
  %80 = call i64 @tls_write_server_hello_done(%struct.tlsv1_server* %78, i32** %8, i32* %79)
  %81 = icmp slt i64 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %77, %72, %67, %62
  %83 = load i32*, i32** %6, align 8
  %84 = call i32 @os_free(i32* %83)
  store i32* null, i32** %3, align 8
  br label %97

85:                                               ; preds = %77
  %86 = load i32*, i32** %8, align 8
  %87 = load i32*, i32** %6, align 8
  %88 = ptrtoint i32* %86 to i64
  %89 = ptrtoint i32* %87 to i64
  %90 = sub i64 %88, %89
  %91 = sdiv exact i64 %90, 4
  %92 = load i64*, i64** %5, align 8
  store i64 %91, i64* %92, align 8
  %93 = load i32, i32* @CLIENT_CERTIFICATE, align 4
  %94 = load %struct.tlsv1_server*, %struct.tlsv1_server** %4, align 8
  %95 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %94, i32 0, i32 0
  store i32 %93, i32* %95, align 8
  %96 = load i32*, i32** %6, align 8
  store i32* %96, i32** %3, align 8
  br label %97

97:                                               ; preds = %85, %82, %50, %47, %29, %19
  %98 = load i32*, i32** %3, align 8
  ret i32* %98
}

declare dso_local i32 @tls_server_cert_chain_der_len(%struct.tlsv1_server*) #1

declare dso_local i32* @os_malloc(i64) #1

declare dso_local i64 @tls_write_server_hello(%struct.tlsv1_server*, i32**, i32*) #1

declare dso_local i32 @os_free(i32*) #1

declare dso_local i64 @tls_write_server_change_cipher_spec(%struct.tlsv1_server*, i32**, i32*) #1

declare dso_local i64 @tls_write_server_finished(%struct.tlsv1_server*, i32**, i32*) #1

declare dso_local i64 @tls_write_server_certificate(%struct.tlsv1_server*, i32**, i32*) #1

declare dso_local i64 @tls_write_server_key_exchange(%struct.tlsv1_server*, i32**, i32*) #1

declare dso_local i64 @tls_write_server_certificate_request(%struct.tlsv1_server*, i32**, i32*) #1

declare dso_local i64 @tls_write_server_hello_done(%struct.tlsv1_server*, i32**, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
