; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/tls/extr_tlsv1_client_write.c_tls_send_client_key_exchange.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/tls/extr_tlsv1_client_write.c_tls_send_client_key_exchange.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tlsv1_client = type { i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i64 }

@SERVER_CHANGE_CIPHER_SPEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.tlsv1_client*, i64*)* @tls_send_client_key_exchange to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @tls_send_client_key_exchange(%struct.tlsv1_client* %0, i64* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.tlsv1_client*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  store %struct.tlsv1_client* %0, %struct.tlsv1_client** %4, align 8
  store i64* %1, i64** %5, align 8
  %10 = load i64*, i64** %5, align 8
  store i64 0, i64* %10, align 8
  store i64 2000, i64* %9, align 8
  %11 = load %struct.tlsv1_client*, %struct.tlsv1_client** %4, align 8
  %12 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %2
  %16 = load %struct.tlsv1_client*, %struct.tlsv1_client** %4, align 8
  %17 = call i64 @tls_client_cert_chain_der_len(%struct.tlsv1_client* %16)
  %18 = load i64, i64* %9, align 8
  %19 = add i64 %18, %17
  store i64 %19, i64* %9, align 8
  br label %20

20:                                               ; preds = %15, %2
  %21 = load i64, i64* %9, align 8
  %22 = call i32* @os_malloc(i64 %21)
  store i32* %22, i32** %6, align 8
  %23 = load i32*, i32** %6, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  store i32* null, i32** %3, align 8
  br label %96

26:                                               ; preds = %20
  %27 = load i32*, i32** %6, align 8
  store i32* %27, i32** %8, align 8
  %28 = load i32*, i32** %6, align 8
  %29 = load i64, i64* %9, align 8
  %30 = getelementptr inbounds i32, i32* %28, i64 %29
  store i32* %30, i32** %7, align 8
  %31 = load %struct.tlsv1_client*, %struct.tlsv1_client** %4, align 8
  %32 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %26
  %36 = load %struct.tlsv1_client*, %struct.tlsv1_client** %4, align 8
  %37 = load i32*, i32** %7, align 8
  %38 = call i64 @tls_write_client_certificate(%struct.tlsv1_client* %36, i32** %8, i32* %37)
  %39 = icmp slt i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load i32*, i32** %6, align 8
  %42 = call i32 @os_free(i32* %41)
  store i32* null, i32** %3, align 8
  br label %96

43:                                               ; preds = %35
  br label %44

44:                                               ; preds = %43, %26
  %45 = load %struct.tlsv1_client*, %struct.tlsv1_client** %4, align 8
  %46 = load i32*, i32** %7, align 8
  %47 = call i64 @tls_write_client_key_exchange(%struct.tlsv1_client* %45, i32** %8, i32* %46)
  %48 = icmp slt i64 %47, 0
  br i1 %48, label %81, label %49

49:                                               ; preds = %44
  %50 = load %struct.tlsv1_client*, %struct.tlsv1_client** %4, align 8
  %51 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %71

54:                                               ; preds = %49
  %55 = load %struct.tlsv1_client*, %struct.tlsv1_client** %4, align 8
  %56 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %55, i32 0, i32 1
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = icmp ne %struct.TYPE_2__* %57, null
  br i1 %58, label %59, label %71

59:                                               ; preds = %54
  %60 = load %struct.tlsv1_client*, %struct.tlsv1_client** %4, align 8
  %61 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %60, i32 0, i32 1
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %59
  %67 = load %struct.tlsv1_client*, %struct.tlsv1_client** %4, align 8
  %68 = load i32*, i32** %7, align 8
  %69 = call i64 @tls_write_client_certificate_verify(%struct.tlsv1_client* %67, i32** %8, i32* %68)
  %70 = icmp slt i64 %69, 0
  br i1 %70, label %81, label %71

71:                                               ; preds = %66, %59, %54, %49
  %72 = load %struct.tlsv1_client*, %struct.tlsv1_client** %4, align 8
  %73 = load i32*, i32** %7, align 8
  %74 = call i64 @tls_write_client_change_cipher_spec(%struct.tlsv1_client* %72, i32** %8, i32* %73)
  %75 = icmp slt i64 %74, 0
  br i1 %75, label %81, label %76

76:                                               ; preds = %71
  %77 = load %struct.tlsv1_client*, %struct.tlsv1_client** %4, align 8
  %78 = load i32*, i32** %7, align 8
  %79 = call i64 @tls_write_client_finished(%struct.tlsv1_client* %77, i32** %8, i32* %78)
  %80 = icmp slt i64 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %76, %71, %66, %44
  %82 = load i32*, i32** %6, align 8
  %83 = call i32 @os_free(i32* %82)
  store i32* null, i32** %3, align 8
  br label %96

84:                                               ; preds = %76
  %85 = load i32*, i32** %8, align 8
  %86 = load i32*, i32** %6, align 8
  %87 = ptrtoint i32* %85 to i64
  %88 = ptrtoint i32* %86 to i64
  %89 = sub i64 %87, %88
  %90 = sdiv exact i64 %89, 4
  %91 = load i64*, i64** %5, align 8
  store i64 %90, i64* %91, align 8
  %92 = load i32, i32* @SERVER_CHANGE_CIPHER_SPEC, align 4
  %93 = load %struct.tlsv1_client*, %struct.tlsv1_client** %4, align 8
  %94 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %93, i32 0, i32 0
  store i32 %92, i32* %94, align 8
  %95 = load i32*, i32** %6, align 8
  store i32* %95, i32** %3, align 8
  br label %96

96:                                               ; preds = %84, %81, %40, %25
  %97 = load i32*, i32** %3, align 8
  ret i32* %97
}

declare dso_local i64 @tls_client_cert_chain_der_len(%struct.tlsv1_client*) #1

declare dso_local i32* @os_malloc(i64) #1

declare dso_local i64 @tls_write_client_certificate(%struct.tlsv1_client*, i32**, i32*) #1

declare dso_local i32 @os_free(i32*) #1

declare dso_local i64 @tls_write_client_key_exchange(%struct.tlsv1_client*, i32**, i32*) #1

declare dso_local i64 @tls_write_client_certificate_verify(%struct.tlsv1_client*, i32**, i32*) #1

declare dso_local i64 @tls_write_client_change_cipher_spec(%struct.tlsv1_client*, i32**, i32*) #1

declare dso_local i64 @tls_write_client_finished(%struct.tlsv1_client*, i32**, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
