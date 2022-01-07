; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_ecdsa.c_derive_mpi.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_ecdsa.c_derive_mpi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32*, i8*, i64)* @derive_mpi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @derive_mpi(%struct.TYPE_3__* %0, i32* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = add nsw i32 %14, 7
  %16 = sdiv i32 %15, 8
  %17 = sext i32 %16 to i64
  store i64 %17, i64* %10, align 8
  %18 = load i64, i64* %8, align 8
  %19 = load i64, i64* %10, align 8
  %20 = icmp ugt i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %4
  %22 = load i64, i64* %10, align 8
  br label %25

23:                                               ; preds = %4
  %24 = load i64, i64* %8, align 8
  br label %25

25:                                               ; preds = %23, %21
  %26 = phi i64 [ %22, %21 ], [ %24, %23 ]
  store i64 %26, i64* %11, align 8
  %27 = load i32*, i32** %6, align 8
  %28 = load i8*, i8** %7, align 8
  %29 = load i64, i64* %11, align 8
  %30 = call i32 @mbedtls_mpi_read_binary(i32* %27, i8* %28, i64 %29)
  %31 = call i32 @MBEDTLS_MPI_CHK(i32 %30)
  %32 = load i64, i64* %11, align 8
  %33 = mul i64 %32, 8
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = sext i32 %36 to i64
  %38 = icmp ugt i64 %33, %37
  br i1 %38, label %39, label %50

39:                                               ; preds = %25
  %40 = load i32*, i32** %6, align 8
  %41 = load i64, i64* %11, align 8
  %42 = mul i64 %41, 8
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = sext i32 %45 to i64
  %47 = sub i64 %42, %46
  %48 = call i32 @mbedtls_mpi_shift_r(i32* %40, i64 %47)
  %49 = call i32 @MBEDTLS_MPI_CHK(i32 %48)
  br label %50

50:                                               ; preds = %39, %25
  %51 = load i32*, i32** %6, align 8
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 1
  %54 = call i64 @mbedtls_mpi_cmp_mpi(i32* %51, i32* %53)
  %55 = icmp sge i64 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %50
  %57 = load i32*, i32** %6, align 8
  %58 = load i32*, i32** %6, align 8
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 1
  %61 = call i32 @mbedtls_mpi_sub_mpi(i32* %57, i32* %58, i32* %60)
  %62 = call i32 @MBEDTLS_MPI_CHK(i32 %61)
  br label %63

63:                                               ; preds = %56, %50
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %9, align 4
  ret i32 %65
}

declare dso_local i32 @MBEDTLS_MPI_CHK(i32) #1

declare dso_local i32 @mbedtls_mpi_read_binary(i32*, i8*, i64) #1

declare dso_local i32 @mbedtls_mpi_shift_r(i32*, i64) #1

declare dso_local i64 @mbedtls_mpi_cmp_mpi(i32*, i32*) #1

declare dso_local i32 @mbedtls_mpi_sub_mpi(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
