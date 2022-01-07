; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_dhm.c_dhm_check_range.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_dhm.c_dhm_check_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MBEDTLS_ERR_DHM_BAD_INPUT_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @dhm_check_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dhm_check_range(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load i32, i32* @MBEDTLS_ERR_DHM_BAD_INPUT_DATA, align 4
  store i32 %8, i32* %7, align 4
  %9 = call i32 @mbedtls_mpi_init(i32* %5)
  %10 = call i32 @mbedtls_mpi_init(i32* %6)
  %11 = call i32 @mbedtls_mpi_lset(i32* %5, i32 2)
  %12 = call i32 @MBEDTLS_MPI_CHK(i32 %11)
  %13 = load i32*, i32** %4, align 8
  %14 = call i32 @mbedtls_mpi_sub_int(i32* %6, i32* %13, i32 2)
  %15 = call i32 @MBEDTLS_MPI_CHK(i32 %14)
  %16 = load i32*, i32** %3, align 8
  %17 = call i64 @mbedtls_mpi_cmp_mpi(i32* %16, i32* %5)
  %18 = icmp sge i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %2
  %20 = load i32*, i32** %3, align 8
  %21 = call i64 @mbedtls_mpi_cmp_mpi(i32* %20, i32* %6)
  %22 = icmp sle i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  store i32 0, i32* %7, align 4
  br label %24

24:                                               ; preds = %23, %19, %2
  br label %25

25:                                               ; preds = %24
  %26 = call i32 @mbedtls_mpi_free(i32* %5)
  %27 = call i32 @mbedtls_mpi_free(i32* %6)
  %28 = load i32, i32* %7, align 4
  ret i32 %28
}

declare dso_local i32 @mbedtls_mpi_init(i32*) #1

declare dso_local i32 @MBEDTLS_MPI_CHK(i32) #1

declare dso_local i32 @mbedtls_mpi_lset(i32*, i32) #1

declare dso_local i32 @mbedtls_mpi_sub_int(i32*, i32*, i32) #1

declare dso_local i64 @mbedtls_mpi_cmp_mpi(i32*, i32*) #1

declare dso_local i32 @mbedtls_mpi_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
