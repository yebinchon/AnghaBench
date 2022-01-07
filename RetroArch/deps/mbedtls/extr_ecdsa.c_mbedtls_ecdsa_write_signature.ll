; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_ecdsa.c_mbedtls_ecdsa_write_signature.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_ecdsa.c_mbedtls_ecdsa_write_signature.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_ecdsa_write_signature(%struct.TYPE_3__* %0, i32 %1, i8* %2, i64 %3, i8* %4, i64* %5, i32 (i8*, i8*, i64)* %6, i8* %7) #0 {
  %9 = alloca %struct.TYPE_3__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i32 (i8*, i8*, i64)*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %9, align 8
  store i32 %1, i32* %10, align 4
  store i8* %2, i8** %11, align 8
  store i64 %3, i64* %12, align 8
  store i8* %4, i8** %13, align 8
  store i64* %5, i64** %14, align 8
  store i32 (i8*, i8*, i64)* %6, i32 (i8*, i8*, i64)** %15, align 8
  store i8* %7, i8** %16, align 8
  %20 = call i32 @mbedtls_mpi_init(i32* %18)
  %21 = call i32 @mbedtls_mpi_init(i32* %19)
  %22 = load i32, i32* %10, align 4
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i8*, i8** %11, align 8
  %28 = load i64, i64* %12, align 8
  %29 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %15, align 8
  %30 = load i8*, i8** %16, align 8
  %31 = call i32 @mbedtls_ecdsa_sign(i32* %24, i32* %18, i32* %19, i32* %26, i8* %27, i64 %28, i32 (i8*, i8*, i64)* %29, i8* %30)
  %32 = call i32 @MBEDTLS_MPI_CHK(i32 %31)
  %33 = load i8*, i8** %13, align 8
  %34 = load i64*, i64** %14, align 8
  %35 = call i32 @ecdsa_signature_to_asn1(i32* %18, i32* %19, i8* %33, i64* %34)
  %36 = call i32 @MBEDTLS_MPI_CHK(i32 %35)
  br label %37

37:                                               ; preds = %8
  %38 = call i32 @mbedtls_mpi_free(i32* %18)
  %39 = call i32 @mbedtls_mpi_free(i32* %19)
  %40 = load i32, i32* %17, align 4
  ret i32 %40
}

declare dso_local i32 @mbedtls_mpi_init(i32*) #1

declare dso_local i32 @MBEDTLS_MPI_CHK(i32) #1

declare dso_local i32 @mbedtls_ecdsa_sign(i32*, i32*, i32*, i32*, i8*, i64, i32 (i8*, i8*, i64)*, i8*) #1

declare dso_local i32 @ecdsa_signature_to_asn1(i32*, i32*, i8*, i64*) #1

declare dso_local i32 @mbedtls_mpi_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
