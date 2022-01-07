; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_ecp.c_ecp_mul_comb_core.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_ecp.c_ecp_mul_comb_core.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_14__*, %struct.TYPE_14__*, i8, i8*, i64, i32 (i8*, i8*, i64)*, i8*)* @ecp_mul_comb_core to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecp_mul_comb_core(i32* %0, %struct.TYPE_14__* %1, %struct.TYPE_14__* %2, i8 zeroext %3, i8* %4, i64 %5, i32 (i8*, i8*, i64)* %6, i8* %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca %struct.TYPE_14__*, align 8
  %12 = alloca i8, align 1
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32 (i8*, i8*, i64)*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_14__, align 4
  %19 = alloca i64, align 8
  store i32* %0, i32** %9, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %10, align 8
  store %struct.TYPE_14__* %2, %struct.TYPE_14__** %11, align 8
  store i8 %3, i8* %12, align 1
  store i8* %4, i8** %13, align 8
  store i64 %5, i64* %14, align 8
  store i32 (i8*, i8*, i64)* %6, i32 (i8*, i8*, i64)** %15, align 8
  store i8* %7, i8** %16, align 8
  %20 = call i32 @mbedtls_ecp_point_init(%struct.TYPE_14__* %18)
  %21 = load i64, i64* %14, align 8
  store i64 %21, i64* %19, align 8
  %22 = load i32*, i32** %9, align 8
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %25 = load i8, i8* %12, align 1
  %26 = load i8*, i8** %13, align 8
  %27 = load i64, i64* %19, align 8
  %28 = getelementptr inbounds i8, i8* %26, i64 %27
  %29 = load i8, i8* %28, align 1
  %30 = call i32 @ecp_select_comb(i32* %22, %struct.TYPE_14__* %23, %struct.TYPE_14__* %24, i8 zeroext %25, i8 zeroext %29)
  %31 = call i32 @MBEDTLS_MPI_CHK(i32 %30)
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 0
  %34 = call i32 @mbedtls_mpi_lset(i32* %33, i32 1)
  %35 = call i32 @MBEDTLS_MPI_CHK(i32 %34)
  %36 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %15, align 8
  %37 = icmp ne i32 (i8*, i8*, i64)* %36, null
  br i1 %37, label %38, label %45

38:                                               ; preds = %8
  %39 = load i32*, i32** %9, align 8
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %41 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %15, align 8
  %42 = load i8*, i8** %16, align 8
  %43 = call i32 @ecp_randomize_jac(i32* %39, %struct.TYPE_14__* %40, i32 (i8*, i8*, i64)* %41, i8* %42)
  %44 = call i32 @MBEDTLS_MPI_CHK(i32 %43)
  br label %45

45:                                               ; preds = %38, %8
  br label %46

46:                                               ; preds = %50, %45
  %47 = load i64, i64* %19, align 8
  %48 = add i64 %47, -1
  store i64 %48, i64* %19, align 8
  %49 = icmp ne i64 %47, 0
  br i1 %49, label %50, label %70

50:                                               ; preds = %46
  %51 = load i32*, i32** %9, align 8
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %54 = call i32 @ecp_double_jac(i32* %51, %struct.TYPE_14__* %52, %struct.TYPE_14__* %53)
  %55 = call i32 @MBEDTLS_MPI_CHK(i32 %54)
  %56 = load i32*, i32** %9, align 8
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %58 = load i8, i8* %12, align 1
  %59 = load i8*, i8** %13, align 8
  %60 = load i64, i64* %19, align 8
  %61 = getelementptr inbounds i8, i8* %59, i64 %60
  %62 = load i8, i8* %61, align 1
  %63 = call i32 @ecp_select_comb(i32* %56, %struct.TYPE_14__* %18, %struct.TYPE_14__* %57, i8 zeroext %58, i8 zeroext %62)
  %64 = call i32 @MBEDTLS_MPI_CHK(i32 %63)
  %65 = load i32*, i32** %9, align 8
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %68 = call i32 @ecp_add_mixed(i32* %65, %struct.TYPE_14__* %66, %struct.TYPE_14__* %67, %struct.TYPE_14__* %18)
  %69 = call i32 @MBEDTLS_MPI_CHK(i32 %68)
  br label %46

70:                                               ; preds = %46
  br label %71

71:                                               ; preds = %70
  %72 = call i32 @mbedtls_ecp_point_free(%struct.TYPE_14__* %18)
  %73 = load i32, i32* %17, align 4
  ret i32 %73
}

declare dso_local i32 @mbedtls_ecp_point_init(%struct.TYPE_14__*) #1

declare dso_local i32 @MBEDTLS_MPI_CHK(i32) #1

declare dso_local i32 @ecp_select_comb(i32*, %struct.TYPE_14__*, %struct.TYPE_14__*, i8 zeroext, i8 zeroext) #1

declare dso_local i32 @mbedtls_mpi_lset(i32*, i32) #1

declare dso_local i32 @ecp_randomize_jac(i32*, %struct.TYPE_14__*, i32 (i8*, i8*, i64)*, i8*) #1

declare dso_local i32 @ecp_double_jac(i32*, %struct.TYPE_14__*, %struct.TYPE_14__*) #1

declare dso_local i32 @ecp_add_mixed(i32*, %struct.TYPE_14__*, %struct.TYPE_14__*, %struct.TYPE_14__*) #1

declare dso_local i32 @mbedtls_ecp_point_free(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
