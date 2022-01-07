; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/eap_peer/extr_eap_tls_common.c_eap_peer_tls_derive_key.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/eap_peer/extr_eap_tls_common.c_eap_peer_tls_derive_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32 }
%struct.eap_ssl_data = type { i32, i32 }
%struct.tls_keys = type { i64, i64, i32, i32*, i32*, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @eap_peer_tls_derive_key(%struct.eap_sm* %0, %struct.eap_ssl_data* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.eap_sm*, align 8
  %7 = alloca %struct.eap_ssl_data*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.tls_keys, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  store %struct.eap_sm* %0, %struct.eap_sm** %6, align 8
  store %struct.eap_ssl_data* %1, %struct.eap_ssl_data** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32* null, i32** %11, align 8
  %13 = load i64, i64* %9, align 8
  %14 = call i32* @os_malloc(i64 %13)
  store i32* %14, i32** %12, align 8
  %15 = load i32*, i32** %12, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  store i32* null, i32** %5, align 8
  br label %106

18:                                               ; preds = %4
  %19 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %7, align 8
  %20 = getelementptr inbounds %struct.eap_ssl_data, %struct.eap_ssl_data* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %7, align 8
  %23 = getelementptr inbounds %struct.eap_ssl_data, %struct.eap_ssl_data* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i8*, i8** %8, align 8
  %26 = load i32*, i32** %12, align 8
  %27 = load i64, i64* %9, align 8
  %28 = call i64 @tls_connection_prf(i32 %21, i32 %24, i8* %25, i32 0, i32* %26, i64 %27)
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %18
  %31 = load i32*, i32** %12, align 8
  store i32* %31, i32** %5, align 8
  br label %106

32:                                               ; preds = %18
  %33 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %7, align 8
  %34 = getelementptr inbounds %struct.eap_ssl_data, %struct.eap_ssl_data* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %7, align 8
  %37 = getelementptr inbounds %struct.eap_ssl_data, %struct.eap_ssl_data* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @tls_connection_get_keys(i32 %35, i32 %38, %struct.tls_keys* %10)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %32
  br label %101

42:                                               ; preds = %32
  %43 = getelementptr inbounds %struct.tls_keys, %struct.tls_keys* %10, i32 0, i32 5
  %44 = load i32*, i32** %43, align 8
  %45 = icmp eq i32* %44, null
  br i1 %45, label %54, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.tls_keys, %struct.tls_keys* %10, i32 0, i32 4
  %48 = load i32*, i32** %47, align 8
  %49 = icmp eq i32* %48, null
  br i1 %49, label %54, label %50

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.tls_keys, %struct.tls_keys* %10, i32 0, i32 3
  %52 = load i32*, i32** %51, align 8
  %53 = icmp eq i32* %52, null
  br i1 %53, label %54, label %55

54:                                               ; preds = %50, %46, %42
  br label %101

55:                                               ; preds = %50
  %56 = getelementptr inbounds %struct.tls_keys, %struct.tls_keys* %10, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = getelementptr inbounds %struct.tls_keys, %struct.tls_keys* %10, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = add i64 %57, %59
  %61 = call i32* @os_malloc(i64 %60)
  store i32* %61, i32** %11, align 8
  %62 = load i32*, i32** %11, align 8
  %63 = icmp eq i32* %62, null
  br i1 %63, label %64, label %65

64:                                               ; preds = %55
  br label %101

65:                                               ; preds = %55
  %66 = load i32*, i32** %11, align 8
  %67 = getelementptr inbounds %struct.tls_keys, %struct.tls_keys* %10, i32 0, i32 5
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds %struct.tls_keys, %struct.tls_keys* %10, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = call i32 @os_memcpy(i32* %66, i32* %68, i64 %70)
  %72 = load i32*, i32** %11, align 8
  %73 = getelementptr inbounds %struct.tls_keys, %struct.tls_keys* %10, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = getelementptr inbounds %struct.tls_keys, %struct.tls_keys* %10, i32 0, i32 4
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds %struct.tls_keys, %struct.tls_keys* %10, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = call i32 @os_memcpy(i32* %75, i32* %77, i64 %79)
  %81 = getelementptr inbounds %struct.tls_keys, %struct.tls_keys* %10, i32 0, i32 3
  %82 = load i32*, i32** %81, align 8
  %83 = getelementptr inbounds %struct.tls_keys, %struct.tls_keys* %10, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = load i8*, i8** %8, align 8
  %86 = load i32*, i32** %11, align 8
  %87 = getelementptr inbounds %struct.tls_keys, %struct.tls_keys* %10, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = getelementptr inbounds %struct.tls_keys, %struct.tls_keys* %10, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = add i64 %88, %90
  %92 = load i32*, i32** %12, align 8
  %93 = load i64, i64* %9, align 8
  %94 = call i64 @tls_prf_sha1_md5(i32* %82, i32 %84, i8* %85, i32* %86, i64 %91, i32* %92, i64 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %65
  br label %101

97:                                               ; preds = %65
  %98 = load i32*, i32** %11, align 8
  %99 = call i32 @os_free(i32* %98)
  %100 = load i32*, i32** %12, align 8
  store i32* %100, i32** %5, align 8
  br label %106

101:                                              ; preds = %96, %64, %54, %41
  %102 = load i32*, i32** %12, align 8
  %103 = call i32 @os_free(i32* %102)
  %104 = load i32*, i32** %11, align 8
  %105 = call i32 @os_free(i32* %104)
  store i32* null, i32** %5, align 8
  br label %106

106:                                              ; preds = %101, %97, %30, %17
  %107 = load i32*, i32** %5, align 8
  ret i32* %107
}

declare dso_local i32* @os_malloc(i64) #1

declare dso_local i64 @tls_connection_prf(i32, i32, i8*, i32, i32*, i64) #1

declare dso_local i64 @tls_connection_get_keys(i32, i32, %struct.tls_keys*) #1

declare dso_local i32 @os_memcpy(i32*, i32*, i64) #1

declare dso_local i64 @tls_prf_sha1_md5(i32*, i32, i8*, i32*, i64, i32*, i64) #1

declare dso_local i32 @os_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
