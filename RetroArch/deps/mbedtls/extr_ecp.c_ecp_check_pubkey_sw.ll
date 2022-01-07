; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_ecp.c_ecp_check_pubkey_sw.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_ecp.c_ecp_check_pubkey_sw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_8__, %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i32* }
%struct.TYPE_6__ = type { i32, i32 }

@MBEDTLS_ERR_ECP_INVALID_KEY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, %struct.TYPE_6__*)* @ecp_check_pubkey_sw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecp_check_pubkey_sw(%struct.TYPE_7__* %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = call i64 @mbedtls_mpi_cmp_int(i32* %10, i32 0)
  %12 = icmp slt i64 %11, 0
  br i1 %12, label %32, label %13

13:                                               ; preds = %2
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 1
  %16 = call i64 @mbedtls_mpi_cmp_int(i32* %15, i32 0)
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %32, label %18

18:                                               ; preds = %13
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 2
  %23 = call i64 @mbedtls_mpi_cmp_mpi(i32* %20, i32* %22)
  %24 = icmp sge i64 %23, 0
  br i1 %24, label %32, label %25

25:                                               ; preds = %18
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 2
  %30 = call i64 @mbedtls_mpi_cmp_mpi(i32* %27, i32* %29)
  %31 = icmp sge i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %25, %18, %13, %2
  %33 = load i32, i32* @MBEDTLS_ERR_ECP_INVALID_KEY, align 4
  store i32 %33, i32* %3, align 4
  br label %92

34:                                               ; preds = %25
  %35 = call i32 @mbedtls_mpi_init(i32* %7)
  %36 = call i32 @mbedtls_mpi_init(i32* %8)
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 1
  %41 = call i32 @mbedtls_mpi_mul_mpi(i32* %7, i32* %38, i32* %40)
  %42 = call i32 @MBEDTLS_MPI_CHK(i32 %41)
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @MOD_MUL(i32 %43)
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = call i32 @mbedtls_mpi_mul_mpi(i32* %8, i32* %46, i32* %48)
  %50 = call i32 @MBEDTLS_MPI_CHK(i32 %49)
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @MOD_MUL(i32 %51)
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = icmp eq i32* %56, null
  br i1 %57, label %58, label %63

58:                                               ; preds = %34
  %59 = call i32 @mbedtls_mpi_sub_int(i32* %8, i32* %8, i32 3)
  %60 = call i32 @MBEDTLS_MPI_CHK(i32 %59)
  %61 = load i32, i32* %8, align 4
  %62 = call i32 @MOD_SUB(i32 %61)
  br label %70

63:                                               ; preds = %34
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 1
  %66 = call i32 @mbedtls_mpi_add_mpi(i32* %8, i32* %8, %struct.TYPE_8__* %65)
  %67 = call i32 @MBEDTLS_MPI_CHK(i32 %66)
  %68 = load i32, i32* %8, align 4
  %69 = call i32 @MOD_ADD(i32 %68)
  br label %70

70:                                               ; preds = %63, %58
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = call i32 @mbedtls_mpi_mul_mpi(i32* %8, i32* %8, i32* %72)
  %74 = call i32 @MBEDTLS_MPI_CHK(i32 %73)
  %75 = load i32, i32* %8, align 4
  %76 = call i32 @MOD_MUL(i32 %75)
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  %79 = call i32 @mbedtls_mpi_add_mpi(i32* %8, i32* %8, %struct.TYPE_8__* %78)
  %80 = call i32 @MBEDTLS_MPI_CHK(i32 %79)
  %81 = load i32, i32* %8, align 4
  %82 = call i32 @MOD_ADD(i32 %81)
  %83 = call i64 @mbedtls_mpi_cmp_mpi(i32* %7, i32* %8)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %70
  %86 = load i32, i32* @MBEDTLS_ERR_ECP_INVALID_KEY, align 4
  store i32 %86, i32* %6, align 4
  br label %87

87:                                               ; preds = %85, %70
  br label %88

88:                                               ; preds = %87
  %89 = call i32 @mbedtls_mpi_free(i32* %7)
  %90 = call i32 @mbedtls_mpi_free(i32* %8)
  %91 = load i32, i32* %6, align 4
  store i32 %91, i32* %3, align 4
  br label %92

92:                                               ; preds = %88, %32
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local i64 @mbedtls_mpi_cmp_int(i32*, i32) #1

declare dso_local i64 @mbedtls_mpi_cmp_mpi(i32*, i32*) #1

declare dso_local i32 @mbedtls_mpi_init(i32*) #1

declare dso_local i32 @MBEDTLS_MPI_CHK(i32) #1

declare dso_local i32 @mbedtls_mpi_mul_mpi(i32*, i32*, i32*) #1

declare dso_local i32 @MOD_MUL(i32) #1

declare dso_local i32 @mbedtls_mpi_sub_int(i32*, i32*, i32) #1

declare dso_local i32 @MOD_SUB(i32) #1

declare dso_local i32 @mbedtls_mpi_add_mpi(i32*, i32*, %struct.TYPE_8__*) #1

declare dso_local i32 @MOD_ADD(i32) #1

declare dso_local i32 @mbedtls_mpi_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
