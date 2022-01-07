; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/tls/extr_tlsv1_common.c_tls_verify_hash_add.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/tls/extr_tlsv1_common.c_tls_verify_hash_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tls_verify_hash = type { i64, i64, i64, i64, i64, i64, i64, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tls_verify_hash_add(%struct.tls_verify_hash* %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct.tls_verify_hash*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  store %struct.tls_verify_hash* %0, %struct.tls_verify_hash** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %struct.tls_verify_hash*, %struct.tls_verify_hash** %4, align 8
  %8 = getelementptr inbounds %struct.tls_verify_hash, %struct.tls_verify_hash* %7, i32 0, i32 8
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %29

11:                                               ; preds = %3
  %12 = load %struct.tls_verify_hash*, %struct.tls_verify_hash** %4, align 8
  %13 = getelementptr inbounds %struct.tls_verify_hash, %struct.tls_verify_hash* %12, i32 0, i32 7
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %29

16:                                               ; preds = %11
  %17 = load %struct.tls_verify_hash*, %struct.tls_verify_hash** %4, align 8
  %18 = getelementptr inbounds %struct.tls_verify_hash, %struct.tls_verify_hash* %17, i32 0, i32 8
  %19 = load i64, i64* %18, align 8
  %20 = load i32*, i32** %5, align 8
  %21 = load i64, i64* %6, align 8
  %22 = call i32 @crypto_hash_update(i64 %19, i32* %20, i64 %21)
  %23 = load %struct.tls_verify_hash*, %struct.tls_verify_hash** %4, align 8
  %24 = getelementptr inbounds %struct.tls_verify_hash, %struct.tls_verify_hash* %23, i32 0, i32 7
  %25 = load i64, i64* %24, align 8
  %26 = load i32*, i32** %5, align 8
  %27 = load i64, i64* %6, align 8
  %28 = call i32 @crypto_hash_update(i64 %25, i32* %26, i64 %27)
  br label %29

29:                                               ; preds = %16, %11, %3
  %30 = load %struct.tls_verify_hash*, %struct.tls_verify_hash** %4, align 8
  %31 = getelementptr inbounds %struct.tls_verify_hash, %struct.tls_verify_hash* %30, i32 0, i32 6
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %52

34:                                               ; preds = %29
  %35 = load %struct.tls_verify_hash*, %struct.tls_verify_hash** %4, align 8
  %36 = getelementptr inbounds %struct.tls_verify_hash, %struct.tls_verify_hash* %35, i32 0, i32 5
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %52

39:                                               ; preds = %34
  %40 = load %struct.tls_verify_hash*, %struct.tls_verify_hash** %4, align 8
  %41 = getelementptr inbounds %struct.tls_verify_hash, %struct.tls_verify_hash* %40, i32 0, i32 6
  %42 = load i64, i64* %41, align 8
  %43 = load i32*, i32** %5, align 8
  %44 = load i64, i64* %6, align 8
  %45 = call i32 @crypto_hash_update(i64 %42, i32* %43, i64 %44)
  %46 = load %struct.tls_verify_hash*, %struct.tls_verify_hash** %4, align 8
  %47 = getelementptr inbounds %struct.tls_verify_hash, %struct.tls_verify_hash* %46, i32 0, i32 5
  %48 = load i64, i64* %47, align 8
  %49 = load i32*, i32** %5, align 8
  %50 = load i64, i64* %6, align 8
  %51 = call i32 @crypto_hash_update(i64 %48, i32* %49, i64 %50)
  br label %52

52:                                               ; preds = %39, %34, %29
  %53 = load %struct.tls_verify_hash*, %struct.tls_verify_hash** %4, align 8
  %54 = getelementptr inbounds %struct.tls_verify_hash, %struct.tls_verify_hash* %53, i32 0, i32 4
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %75

57:                                               ; preds = %52
  %58 = load %struct.tls_verify_hash*, %struct.tls_verify_hash** %4, align 8
  %59 = getelementptr inbounds %struct.tls_verify_hash, %struct.tls_verify_hash* %58, i32 0, i32 3
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %75

62:                                               ; preds = %57
  %63 = load %struct.tls_verify_hash*, %struct.tls_verify_hash** %4, align 8
  %64 = getelementptr inbounds %struct.tls_verify_hash, %struct.tls_verify_hash* %63, i32 0, i32 4
  %65 = load i64, i64* %64, align 8
  %66 = load i32*, i32** %5, align 8
  %67 = load i64, i64* %6, align 8
  %68 = call i32 @crypto_hash_update(i64 %65, i32* %66, i64 %67)
  %69 = load %struct.tls_verify_hash*, %struct.tls_verify_hash** %4, align 8
  %70 = getelementptr inbounds %struct.tls_verify_hash, %struct.tls_verify_hash* %69, i32 0, i32 3
  %71 = load i64, i64* %70, align 8
  %72 = load i32*, i32** %5, align 8
  %73 = load i64, i64* %6, align 8
  %74 = call i32 @crypto_hash_update(i64 %71, i32* %72, i64 %73)
  br label %75

75:                                               ; preds = %62, %57, %52
  ret void
}

declare dso_local i32 @crypto_hash_update(i64, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
