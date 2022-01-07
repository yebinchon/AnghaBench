; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_ecdh.c_mbedtls_ecdh_compute_shared.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_ecdh.c_mbedtls_ecdh_compute_shared.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }

@MBEDTLS_ERR_ECP_BAD_INPUT_DATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_ecdh_compute_shared(i32* %0, i32* %1, %struct.TYPE_9__* %2, i32* %3, i32 (i8*, i8*, i64)* %4, i8* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32 (i8*, i8*, i64)*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_9__, align 4
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 (i8*, i8*, i64)* %4, i32 (i8*, i8*, i64)** %11, align 8
  store i8* %5, i8** %12, align 8
  %15 = call i32 @mbedtls_ecp_point_init(%struct.TYPE_9__* %14)
  %16 = load i32*, i32** %7, align 8
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %18 = call i32 @mbedtls_ecp_check_pubkey(i32* %16, %struct.TYPE_9__* %17)
  %19 = call i32 @MBEDTLS_MPI_CHK(i32 %18)
  %20 = load i32*, i32** %7, align 8
  %21 = load i32*, i32** %10, align 8
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %23 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %11, align 8
  %24 = load i8*, i8** %12, align 8
  %25 = call i32 @mbedtls_ecp_mul(i32* %20, %struct.TYPE_9__* %14, i32* %21, %struct.TYPE_9__* %22, i32 (i8*, i8*, i64)* %23, i8* %24)
  %26 = call i32 @MBEDTLS_MPI_CHK(i32 %25)
  %27 = call i64 @mbedtls_ecp_is_zero(%struct.TYPE_9__* %14)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %6
  %30 = load i32, i32* @MBEDTLS_ERR_ECP_BAD_INPUT_DATA, align 4
  store i32 %30, i32* %13, align 4
  br label %36

31:                                               ; preds = %6
  %32 = load i32*, i32** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %34 = call i32 @mbedtls_mpi_copy(i32* %32, i32* %33)
  %35 = call i32 @MBEDTLS_MPI_CHK(i32 %34)
  br label %36

36:                                               ; preds = %31, %29
  %37 = call i32 @mbedtls_ecp_point_free(%struct.TYPE_9__* %14)
  %38 = load i32, i32* %13, align 4
  ret i32 %38
}

declare dso_local i32 @mbedtls_ecp_point_init(%struct.TYPE_9__*) #1

declare dso_local i32 @MBEDTLS_MPI_CHK(i32) #1

declare dso_local i32 @mbedtls_ecp_check_pubkey(i32*, %struct.TYPE_9__*) #1

declare dso_local i32 @mbedtls_ecp_mul(i32*, %struct.TYPE_9__*, i32*, %struct.TYPE_9__*, i32 (i8*, i8*, i64)*, i8*) #1

declare dso_local i64 @mbedtls_ecp_is_zero(%struct.TYPE_9__*) #1

declare dso_local i32 @mbedtls_mpi_copy(i32*, i32*) #1

declare dso_local i32 @mbedtls_ecp_point_free(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
