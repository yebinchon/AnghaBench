; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/tls/extr_tlsv1_common.c_tls_verify_hash_free.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/tls/extr_tlsv1_common.c_tls_verify_hash_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tls_verify_hash = type { i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tls_verify_hash_free(%struct.tls_verify_hash* %0) #0 {
  %2 = alloca %struct.tls_verify_hash*, align 8
  store %struct.tls_verify_hash* %0, %struct.tls_verify_hash** %2, align 8
  %3 = load %struct.tls_verify_hash*, %struct.tls_verify_hash** %2, align 8
  %4 = getelementptr inbounds %struct.tls_verify_hash, %struct.tls_verify_hash* %3, i32 0, i32 8
  %5 = load i32*, i32** %4, align 8
  %6 = call i32 @crypto_hash_finish(i32* %5, i32* null, i32* null)
  %7 = load %struct.tls_verify_hash*, %struct.tls_verify_hash** %2, align 8
  %8 = getelementptr inbounds %struct.tls_verify_hash, %struct.tls_verify_hash* %7, i32 0, i32 7
  %9 = load i32*, i32** %8, align 8
  %10 = call i32 @crypto_hash_finish(i32* %9, i32* null, i32* null)
  %11 = load %struct.tls_verify_hash*, %struct.tls_verify_hash** %2, align 8
  %12 = getelementptr inbounds %struct.tls_verify_hash, %struct.tls_verify_hash* %11, i32 0, i32 6
  %13 = load i32*, i32** %12, align 8
  %14 = call i32 @crypto_hash_finish(i32* %13, i32* null, i32* null)
  %15 = load %struct.tls_verify_hash*, %struct.tls_verify_hash** %2, align 8
  %16 = getelementptr inbounds %struct.tls_verify_hash, %struct.tls_verify_hash* %15, i32 0, i32 5
  %17 = load i32*, i32** %16, align 8
  %18 = call i32 @crypto_hash_finish(i32* %17, i32* null, i32* null)
  %19 = load %struct.tls_verify_hash*, %struct.tls_verify_hash** %2, align 8
  %20 = getelementptr inbounds %struct.tls_verify_hash, %struct.tls_verify_hash* %19, i32 0, i32 4
  %21 = load i32*, i32** %20, align 8
  %22 = call i32 @crypto_hash_finish(i32* %21, i32* null, i32* null)
  %23 = load %struct.tls_verify_hash*, %struct.tls_verify_hash** %2, align 8
  %24 = getelementptr inbounds %struct.tls_verify_hash, %struct.tls_verify_hash* %23, i32 0, i32 3
  %25 = load i32*, i32** %24, align 8
  %26 = call i32 @crypto_hash_finish(i32* %25, i32* null, i32* null)
  %27 = load %struct.tls_verify_hash*, %struct.tls_verify_hash** %2, align 8
  %28 = getelementptr inbounds %struct.tls_verify_hash, %struct.tls_verify_hash* %27, i32 0, i32 8
  store i32* null, i32** %28, align 8
  %29 = load %struct.tls_verify_hash*, %struct.tls_verify_hash** %2, align 8
  %30 = getelementptr inbounds %struct.tls_verify_hash, %struct.tls_verify_hash* %29, i32 0, i32 7
  store i32* null, i32** %30, align 8
  %31 = load %struct.tls_verify_hash*, %struct.tls_verify_hash** %2, align 8
  %32 = getelementptr inbounds %struct.tls_verify_hash, %struct.tls_verify_hash* %31, i32 0, i32 6
  store i32* null, i32** %32, align 8
  %33 = load %struct.tls_verify_hash*, %struct.tls_verify_hash** %2, align 8
  %34 = getelementptr inbounds %struct.tls_verify_hash, %struct.tls_verify_hash* %33, i32 0, i32 5
  store i32* null, i32** %34, align 8
  %35 = load %struct.tls_verify_hash*, %struct.tls_verify_hash** %2, align 8
  %36 = getelementptr inbounds %struct.tls_verify_hash, %struct.tls_verify_hash* %35, i32 0, i32 4
  store i32* null, i32** %36, align 8
  %37 = load %struct.tls_verify_hash*, %struct.tls_verify_hash** %2, align 8
  %38 = getelementptr inbounds %struct.tls_verify_hash, %struct.tls_verify_hash* %37, i32 0, i32 3
  store i32* null, i32** %38, align 8
  ret void
}

declare dso_local i32 @crypto_hash_finish(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
