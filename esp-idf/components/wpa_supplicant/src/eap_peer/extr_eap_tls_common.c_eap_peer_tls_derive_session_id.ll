; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/eap_peer/extr_eap_tls_common.c_eap_peer_tls_derive_session_id.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/eap_peer/extr_eap_tls_common.c_eap_peer_tls_derive_session_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32 }
%struct.eap_ssl_data = type { i32 }
%struct.tls_keys = type { i32, i32, i32*, i32*, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @eap_peer_tls_derive_session_id(%struct.eap_sm* %0, %struct.eap_ssl_data* %1, i32 %2, i64* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.eap_sm*, align 8
  %7 = alloca %struct.eap_ssl_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca %struct.tls_keys, align 8
  %11 = alloca i32*, align 8
  store %struct.eap_sm* %0, %struct.eap_sm** %6, align 8
  store %struct.eap_ssl_data* %1, %struct.eap_ssl_data** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64* %3, i64** %9, align 8
  %12 = load %struct.eap_sm*, %struct.eap_sm** %6, align 8
  %13 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %7, align 8
  %16 = getelementptr inbounds %struct.eap_ssl_data, %struct.eap_ssl_data* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @tls_connection_get_keys(i32 %14, i32 %17, %struct.tls_keys* %10)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %4
  store i32* null, i32** %5, align 8
  br label %72

21:                                               ; preds = %4
  %22 = getelementptr inbounds %struct.tls_keys, %struct.tls_keys* %10, i32 0, i32 3
  %23 = load i32*, i32** %22, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %33, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.tls_keys, %struct.tls_keys* %10, i32 0, i32 2
  %27 = load i32*, i32** %26, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %33, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.tls_keys, %struct.tls_keys* %10, i32 0, i32 4
  %31 = load i32*, i32** %30, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %29, %25, %21
  store i32* null, i32** %5, align 8
  br label %72

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.tls_keys, %struct.tls_keys* %10, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = add nsw i32 1, %36
  %38 = getelementptr inbounds %struct.tls_keys, %struct.tls_keys* %10, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = add nsw i32 %37, %39
  %41 = sext i32 %40 to i64
  %42 = load i64*, i64** %9, align 8
  store i64 %41, i64* %42, align 8
  %43 = load i64*, i64** %9, align 8
  %44 = load i64, i64* %43, align 8
  %45 = call i32* @os_malloc(i64 %44)
  store i32* %45, i32** %11, align 8
  %46 = load i32*, i32** %11, align 8
  %47 = icmp eq i32* %46, null
  br i1 %47, label %48, label %49

48:                                               ; preds = %34
  store i32* null, i32** %5, align 8
  br label %72

49:                                               ; preds = %34
  %50 = load i32, i32* %8, align 4
  %51 = load i32*, i32** %11, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 0
  store i32 %50, i32* %52, align 4
  %53 = load i32*, i32** %11, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 1
  %55 = getelementptr inbounds %struct.tls_keys, %struct.tls_keys* %10, i32 0, i32 3
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds %struct.tls_keys, %struct.tls_keys* %10, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @os_memcpy(i32* %54, i32* %56, i32 %58)
  %60 = load i32*, i32** %11, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 1
  %62 = getelementptr inbounds %struct.tls_keys, %struct.tls_keys* %10, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %61, i64 %64
  %66 = getelementptr inbounds %struct.tls_keys, %struct.tls_keys* %10, i32 0, i32 2
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds %struct.tls_keys, %struct.tls_keys* %10, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @os_memcpy(i32* %65, i32* %67, i32 %69)
  %71 = load i32*, i32** %11, align 8
  store i32* %71, i32** %5, align 8
  br label %72

72:                                               ; preds = %49, %48, %33, %20
  %73 = load i32*, i32** %5, align 8
  ret i32* %73
}

declare dso_local i64 @tls_connection_get_keys(i32, i32, %struct.tls_keys*) #1

declare dso_local i32* @os_malloc(i64) #1

declare dso_local i32 @os_memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
