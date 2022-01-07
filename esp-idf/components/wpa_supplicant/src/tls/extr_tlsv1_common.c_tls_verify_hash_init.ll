; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/tls/extr_tlsv1_common.c_tls_verify_hash_init.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/tls/extr_tlsv1_common.c_tls_verify_hash_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tls_verify_hash = type { i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32* }

@CRYPTO_HASH_ALG_MD5 = common dso_local global i32 0, align 4
@CRYPTO_HASH_ALG_SHA1 = common dso_local global i32 0, align 4
@CRYPTO_HASH_ALG_SHA256 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tls_verify_hash_init(%struct.tls_verify_hash* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tls_verify_hash*, align 8
  store %struct.tls_verify_hash* %0, %struct.tls_verify_hash** %3, align 8
  %4 = load %struct.tls_verify_hash*, %struct.tls_verify_hash** %3, align 8
  %5 = call i32 @tls_verify_hash_free(%struct.tls_verify_hash* %4)
  %6 = load i32, i32* @CRYPTO_HASH_ALG_MD5, align 4
  %7 = call i8* @crypto_hash_init(i32 %6, i32* null, i32 0)
  %8 = bitcast i8* %7 to i32*
  %9 = load %struct.tls_verify_hash*, %struct.tls_verify_hash** %3, align 8
  %10 = getelementptr inbounds %struct.tls_verify_hash, %struct.tls_verify_hash* %9, i32 0, i32 8
  store i32* %8, i32** %10, align 8
  %11 = load i32, i32* @CRYPTO_HASH_ALG_MD5, align 4
  %12 = call i8* @crypto_hash_init(i32 %11, i32* null, i32 0)
  %13 = bitcast i8* %12 to i32*
  %14 = load %struct.tls_verify_hash*, %struct.tls_verify_hash** %3, align 8
  %15 = getelementptr inbounds %struct.tls_verify_hash, %struct.tls_verify_hash* %14, i32 0, i32 7
  store i32* %13, i32** %15, align 8
  %16 = load i32, i32* @CRYPTO_HASH_ALG_MD5, align 4
  %17 = call i8* @crypto_hash_init(i32 %16, i32* null, i32 0)
  %18 = bitcast i8* %17 to i32*
  %19 = load %struct.tls_verify_hash*, %struct.tls_verify_hash** %3, align 8
  %20 = getelementptr inbounds %struct.tls_verify_hash, %struct.tls_verify_hash* %19, i32 0, i32 6
  store i32* %18, i32** %20, align 8
  %21 = load i32, i32* @CRYPTO_HASH_ALG_SHA1, align 4
  %22 = call i8* @crypto_hash_init(i32 %21, i32* null, i32 0)
  %23 = bitcast i8* %22 to i32*
  %24 = load %struct.tls_verify_hash*, %struct.tls_verify_hash** %3, align 8
  %25 = getelementptr inbounds %struct.tls_verify_hash, %struct.tls_verify_hash* %24, i32 0, i32 5
  store i32* %23, i32** %25, align 8
  %26 = load i32, i32* @CRYPTO_HASH_ALG_SHA1, align 4
  %27 = call i8* @crypto_hash_init(i32 %26, i32* null, i32 0)
  %28 = bitcast i8* %27 to i32*
  %29 = load %struct.tls_verify_hash*, %struct.tls_verify_hash** %3, align 8
  %30 = getelementptr inbounds %struct.tls_verify_hash, %struct.tls_verify_hash* %29, i32 0, i32 4
  store i32* %28, i32** %30, align 8
  %31 = load i32, i32* @CRYPTO_HASH_ALG_SHA1, align 4
  %32 = call i8* @crypto_hash_init(i32 %31, i32* null, i32 0)
  %33 = bitcast i8* %32 to i32*
  %34 = load %struct.tls_verify_hash*, %struct.tls_verify_hash** %3, align 8
  %35 = getelementptr inbounds %struct.tls_verify_hash, %struct.tls_verify_hash* %34, i32 0, i32 3
  store i32* %33, i32** %35, align 8
  %36 = load %struct.tls_verify_hash*, %struct.tls_verify_hash** %3, align 8
  %37 = getelementptr inbounds %struct.tls_verify_hash, %struct.tls_verify_hash* %36, i32 0, i32 8
  %38 = load i32*, i32** %37, align 8
  %39 = icmp eq i32* %38, null
  br i1 %39, label %65, label %40

40:                                               ; preds = %1
  %41 = load %struct.tls_verify_hash*, %struct.tls_verify_hash** %3, align 8
  %42 = getelementptr inbounds %struct.tls_verify_hash, %struct.tls_verify_hash* %41, i32 0, i32 7
  %43 = load i32*, i32** %42, align 8
  %44 = icmp eq i32* %43, null
  br i1 %44, label %65, label %45

45:                                               ; preds = %40
  %46 = load %struct.tls_verify_hash*, %struct.tls_verify_hash** %3, align 8
  %47 = getelementptr inbounds %struct.tls_verify_hash, %struct.tls_verify_hash* %46, i32 0, i32 6
  %48 = load i32*, i32** %47, align 8
  %49 = icmp eq i32* %48, null
  br i1 %49, label %65, label %50

50:                                               ; preds = %45
  %51 = load %struct.tls_verify_hash*, %struct.tls_verify_hash** %3, align 8
  %52 = getelementptr inbounds %struct.tls_verify_hash, %struct.tls_verify_hash* %51, i32 0, i32 5
  %53 = load i32*, i32** %52, align 8
  %54 = icmp eq i32* %53, null
  br i1 %54, label %65, label %55

55:                                               ; preds = %50
  %56 = load %struct.tls_verify_hash*, %struct.tls_verify_hash** %3, align 8
  %57 = getelementptr inbounds %struct.tls_verify_hash, %struct.tls_verify_hash* %56, i32 0, i32 4
  %58 = load i32*, i32** %57, align 8
  %59 = icmp eq i32* %58, null
  br i1 %59, label %65, label %60

60:                                               ; preds = %55
  %61 = load %struct.tls_verify_hash*, %struct.tls_verify_hash** %3, align 8
  %62 = getelementptr inbounds %struct.tls_verify_hash, %struct.tls_verify_hash* %61, i32 0, i32 3
  %63 = load i32*, i32** %62, align 8
  %64 = icmp eq i32* %63, null
  br i1 %64, label %65, label %68

65:                                               ; preds = %60, %55, %50, %45, %40, %1
  %66 = load %struct.tls_verify_hash*, %struct.tls_verify_hash** %3, align 8
  %67 = call i32 @tls_verify_hash_free(%struct.tls_verify_hash* %66)
  store i32 -1, i32* %2, align 4
  br label %69

68:                                               ; preds = %60
  store i32 0, i32* %2, align 4
  br label %69

69:                                               ; preds = %68, %65
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local i32 @tls_verify_hash_free(%struct.tls_verify_hash*) #1

declare dso_local i8* @crypto_hash_init(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
