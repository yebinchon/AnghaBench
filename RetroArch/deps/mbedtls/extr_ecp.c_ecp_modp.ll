; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_ecp.c_ecp_modp.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_ecp.c_ecp_modp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64 }
%struct.TYPE_16__ = type { i32, i32, i32 (%struct.TYPE_15__*)* }

@MBEDTLS_ERR_ECP_BAD_INPUT_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, %struct.TYPE_16__*)* @ecp_modp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecp_modp(%struct.TYPE_15__* %0, %struct.TYPE_16__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %4, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %5, align 8
  %7 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %8 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %7, i32 0, i32 2
  %9 = load i32 (%struct.TYPE_15__*)*, i32 (%struct.TYPE_15__*)** %8, align 8
  %10 = icmp eq i32 (%struct.TYPE_15__*)* %9, null
  br i1 %10, label %11, label %17

11:                                               ; preds = %2
  %12 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %13 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %14 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 1
  %16 = call i32 @mbedtls_mpi_mod_mpi(%struct.TYPE_15__* %12, %struct.TYPE_15__* %13, i32* %15)
  store i32 %16, i32* %3, align 4
  br label %78

17:                                               ; preds = %2
  %18 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp slt i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %24 = call i64 @mbedtls_mpi_cmp_int(%struct.TYPE_15__* %23, i32 0)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %34, label %26

26:                                               ; preds = %22, %17
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %28 = call i32 @mbedtls_mpi_bitlen(%struct.TYPE_15__* %27)
  %29 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = mul nsw i32 2, %31
  %33 = icmp sgt i32 %28, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %26, %22
  %35 = load i32, i32* @MBEDTLS_ERR_ECP_BAD_INPUT_DATA, align 4
  store i32 %35, i32* %3, align 4
  br label %78

36:                                               ; preds = %26
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %37, i32 0, i32 2
  %39 = load i32 (%struct.TYPE_15__*)*, i32 (%struct.TYPE_15__*)** %38, align 8
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %41 = call i32 %39(%struct.TYPE_15__* %40)
  %42 = call i32 @MBEDTLS_MPI_CHK(i32 %41)
  br label %43

43:                                               ; preds = %54, %36
  %44 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp slt i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %43
  %49 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %50 = call i64 @mbedtls_mpi_cmp_int(%struct.TYPE_15__* %49, i32 0)
  %51 = icmp ne i64 %50, 0
  br label %52

52:                                               ; preds = %48, %43
  %53 = phi i1 [ false, %43 ], [ %51, %48 ]
  br i1 %53, label %54, label %61

54:                                               ; preds = %52
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %57 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %57, i32 0, i32 1
  %59 = call i32 @mbedtls_mpi_add_mpi(%struct.TYPE_15__* %55, %struct.TYPE_15__* %56, i32* %58)
  %60 = call i32 @MBEDTLS_MPI_CHK(i32 %59)
  br label %43

61:                                               ; preds = %52
  br label %62

62:                                               ; preds = %68, %61
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %64 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %64, i32 0, i32 1
  %66 = call i64 @mbedtls_mpi_cmp_mpi(%struct.TYPE_15__* %63, i32* %65)
  %67 = icmp sge i64 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %62
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %70 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %71, i32 0, i32 1
  %73 = call i32 @mbedtls_mpi_sub_abs(%struct.TYPE_15__* %69, %struct.TYPE_15__* %70, i32* %72)
  %74 = call i32 @MBEDTLS_MPI_CHK(i32 %73)
  br label %62

75:                                               ; preds = %62
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %6, align 4
  store i32 %77, i32* %3, align 4
  br label %78

78:                                               ; preds = %76, %34, %11
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local i32 @mbedtls_mpi_mod_mpi(%struct.TYPE_15__*, %struct.TYPE_15__*, i32*) #1

declare dso_local i64 @mbedtls_mpi_cmp_int(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @mbedtls_mpi_bitlen(%struct.TYPE_15__*) #1

declare dso_local i32 @MBEDTLS_MPI_CHK(i32) #1

declare dso_local i32 @mbedtls_mpi_add_mpi(%struct.TYPE_15__*, %struct.TYPE_15__*, i32*) #1

declare dso_local i64 @mbedtls_mpi_cmp_mpi(%struct.TYPE_15__*, i32*) #1

declare dso_local i32 @mbedtls_mpi_sub_abs(%struct.TYPE_15__*, %struct.TYPE_15__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
