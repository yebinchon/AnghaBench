; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_ecdsa.c_mbedtls_ecdsa_verify.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_ecdsa.c_mbedtls_ecdsa_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_36__ = type { %struct.TYPE_34__, i32 }
%struct.TYPE_34__ = type { i32* }
%struct.TYPE_35__ = type { %struct.TYPE_34__ }

@MBEDTLS_ERR_ECP_BAD_INPUT_DATA = common dso_local global i32 0, align 4
@MBEDTLS_ERR_ECP_VERIFY_FAILED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_ecdsa_verify(%struct.TYPE_36__* %0, i8* %1, i64 %2, %struct.TYPE_35__* %3, %struct.TYPE_34__* %4, %struct.TYPE_34__* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_36__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_35__*, align 8
  %12 = alloca %struct.TYPE_34__*, align 8
  %13 = alloca %struct.TYPE_34__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_34__, align 8
  %16 = alloca %struct.TYPE_34__, align 8
  %17 = alloca %struct.TYPE_34__, align 8
  %18 = alloca %struct.TYPE_34__, align 8
  %19 = alloca %struct.TYPE_35__, align 8
  store %struct.TYPE_36__* %0, %struct.TYPE_36__** %8, align 8
  store i8* %1, i8** %9, align 8
  store i64 %2, i64* %10, align 8
  store %struct.TYPE_35__* %3, %struct.TYPE_35__** %11, align 8
  store %struct.TYPE_34__* %4, %struct.TYPE_34__** %12, align 8
  store %struct.TYPE_34__* %5, %struct.TYPE_34__** %13, align 8
  %20 = call i32 @mbedtls_ecp_point_init(%struct.TYPE_35__* %19)
  %21 = call i32 @mbedtls_mpi_init(%struct.TYPE_34__* %15)
  %22 = call i32 @mbedtls_mpi_init(%struct.TYPE_34__* %16)
  %23 = call i32 @mbedtls_mpi_init(%struct.TYPE_34__* %17)
  %24 = call i32 @mbedtls_mpi_init(%struct.TYPE_34__* %18)
  %25 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %6
  %31 = load i32, i32* @MBEDTLS_ERR_ECP_BAD_INPUT_DATA, align 4
  store i32 %31, i32* %7, align 4
  br label %113

32:                                               ; preds = %6
  %33 = load %struct.TYPE_34__*, %struct.TYPE_34__** %12, align 8
  %34 = call i64 @mbedtls_mpi_cmp_int(%struct.TYPE_34__* %33, i32 1)
  %35 = icmp slt i64 %34, 0
  br i1 %35, label %52, label %36

36:                                               ; preds = %32
  %37 = load %struct.TYPE_34__*, %struct.TYPE_34__** %12, align 8
  %38 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %38, i32 0, i32 0
  %40 = call i64 @mbedtls_mpi_cmp_mpi(%struct.TYPE_34__* %37, %struct.TYPE_34__* %39)
  %41 = icmp sge i64 %40, 0
  br i1 %41, label %52, label %42

42:                                               ; preds = %36
  %43 = load %struct.TYPE_34__*, %struct.TYPE_34__** %13, align 8
  %44 = call i64 @mbedtls_mpi_cmp_int(%struct.TYPE_34__* %43, i32 1)
  %45 = icmp slt i64 %44, 0
  br i1 %45, label %52, label %46

46:                                               ; preds = %42
  %47 = load %struct.TYPE_34__*, %struct.TYPE_34__** %13, align 8
  %48 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %48, i32 0, i32 0
  %50 = call i64 @mbedtls_mpi_cmp_mpi(%struct.TYPE_34__* %47, %struct.TYPE_34__* %49)
  %51 = icmp sge i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %46, %42, %36, %32
  %53 = load i32, i32* @MBEDTLS_ERR_ECP_VERIFY_FAILED, align 4
  store i32 %53, i32* %14, align 4
  br label %106

54:                                               ; preds = %46
  %55 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %56 = load %struct.TYPE_35__*, %struct.TYPE_35__** %11, align 8
  %57 = call i32 @mbedtls_ecp_check_pubkey(%struct.TYPE_36__* %55, %struct.TYPE_35__* %56)
  %58 = call i32 @MBEDTLS_MPI_CHK(i32 %57)
  %59 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %60 = load i8*, i8** %9, align 8
  %61 = load i64, i64* %10, align 8
  %62 = call i32 @derive_mpi(%struct.TYPE_36__* %59, %struct.TYPE_34__* %15, i8* %60, i64 %61)
  %63 = call i32 @MBEDTLS_MPI_CHK(i32 %62)
  %64 = load %struct.TYPE_34__*, %struct.TYPE_34__** %13, align 8
  %65 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %65, i32 0, i32 0
  %67 = call i32 @mbedtls_mpi_inv_mod(%struct.TYPE_34__* %16, %struct.TYPE_34__* %64, %struct.TYPE_34__* %66)
  %68 = call i32 @MBEDTLS_MPI_CHK(i32 %67)
  %69 = call i32 @mbedtls_mpi_mul_mpi(%struct.TYPE_34__* %17, %struct.TYPE_34__* %15, %struct.TYPE_34__* %16)
  %70 = call i32 @MBEDTLS_MPI_CHK(i32 %69)
  %71 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %71, i32 0, i32 0
  %73 = call i32 @mbedtls_mpi_mod_mpi(%struct.TYPE_34__* %17, %struct.TYPE_34__* %17, %struct.TYPE_34__* %72)
  %74 = call i32 @MBEDTLS_MPI_CHK(i32 %73)
  %75 = load %struct.TYPE_34__*, %struct.TYPE_34__** %12, align 8
  %76 = call i32 @mbedtls_mpi_mul_mpi(%struct.TYPE_34__* %18, %struct.TYPE_34__* %75, %struct.TYPE_34__* %16)
  %77 = call i32 @MBEDTLS_MPI_CHK(i32 %76)
  %78 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %78, i32 0, i32 0
  %80 = call i32 @mbedtls_mpi_mod_mpi(%struct.TYPE_34__* %18, %struct.TYPE_34__* %18, %struct.TYPE_34__* %79)
  %81 = call i32 @MBEDTLS_MPI_CHK(i32 %80)
  %82 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %83 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %83, i32 0, i32 1
  %85 = load %struct.TYPE_35__*, %struct.TYPE_35__** %11, align 8
  %86 = call i32 @mbedtls_ecp_muladd(%struct.TYPE_36__* %82, %struct.TYPE_35__* %19, %struct.TYPE_34__* %17, i32* %84, %struct.TYPE_34__* %18, %struct.TYPE_35__* %85)
  %87 = call i32 @MBEDTLS_MPI_CHK(i32 %86)
  %88 = call i64 @mbedtls_ecp_is_zero(%struct.TYPE_35__* %19)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %54
  %91 = load i32, i32* @MBEDTLS_ERR_ECP_VERIFY_FAILED, align 4
  store i32 %91, i32* %14, align 4
  br label %106

92:                                               ; preds = %54
  %93 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %19, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %19, i32 0, i32 0
  %95 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %95, i32 0, i32 0
  %97 = call i32 @mbedtls_mpi_mod_mpi(%struct.TYPE_34__* %93, %struct.TYPE_34__* %94, %struct.TYPE_34__* %96)
  %98 = call i32 @MBEDTLS_MPI_CHK(i32 %97)
  %99 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %19, i32 0, i32 0
  %100 = load %struct.TYPE_34__*, %struct.TYPE_34__** %12, align 8
  %101 = call i64 @mbedtls_mpi_cmp_mpi(%struct.TYPE_34__* %99, %struct.TYPE_34__* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %92
  %104 = load i32, i32* @MBEDTLS_ERR_ECP_VERIFY_FAILED, align 4
  store i32 %104, i32* %14, align 4
  br label %106

105:                                              ; preds = %92
  br label %106

106:                                              ; preds = %105, %103, %90, %52
  %107 = call i32 @mbedtls_ecp_point_free(%struct.TYPE_35__* %19)
  %108 = call i32 @mbedtls_mpi_free(%struct.TYPE_34__* %15)
  %109 = call i32 @mbedtls_mpi_free(%struct.TYPE_34__* %16)
  %110 = call i32 @mbedtls_mpi_free(%struct.TYPE_34__* %17)
  %111 = call i32 @mbedtls_mpi_free(%struct.TYPE_34__* %18)
  %112 = load i32, i32* %14, align 4
  store i32 %112, i32* %7, align 4
  br label %113

113:                                              ; preds = %106, %30
  %114 = load i32, i32* %7, align 4
  ret i32 %114
}

declare dso_local i32 @mbedtls_ecp_point_init(%struct.TYPE_35__*) #1

declare dso_local i32 @mbedtls_mpi_init(%struct.TYPE_34__*) #1

declare dso_local i64 @mbedtls_mpi_cmp_int(%struct.TYPE_34__*, i32) #1

declare dso_local i64 @mbedtls_mpi_cmp_mpi(%struct.TYPE_34__*, %struct.TYPE_34__*) #1

declare dso_local i32 @MBEDTLS_MPI_CHK(i32) #1

declare dso_local i32 @mbedtls_ecp_check_pubkey(%struct.TYPE_36__*, %struct.TYPE_35__*) #1

declare dso_local i32 @derive_mpi(%struct.TYPE_36__*, %struct.TYPE_34__*, i8*, i64) #1

declare dso_local i32 @mbedtls_mpi_inv_mod(%struct.TYPE_34__*, %struct.TYPE_34__*, %struct.TYPE_34__*) #1

declare dso_local i32 @mbedtls_mpi_mul_mpi(%struct.TYPE_34__*, %struct.TYPE_34__*, %struct.TYPE_34__*) #1

declare dso_local i32 @mbedtls_mpi_mod_mpi(%struct.TYPE_34__*, %struct.TYPE_34__*, %struct.TYPE_34__*) #1

declare dso_local i32 @mbedtls_ecp_muladd(%struct.TYPE_36__*, %struct.TYPE_35__*, %struct.TYPE_34__*, i32*, %struct.TYPE_34__*, %struct.TYPE_35__*) #1

declare dso_local i64 @mbedtls_ecp_is_zero(%struct.TYPE_35__*) #1

declare dso_local i32 @mbedtls_ecp_point_free(%struct.TYPE_35__*) #1

declare dso_local i32 @mbedtls_mpi_free(%struct.TYPE_34__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
