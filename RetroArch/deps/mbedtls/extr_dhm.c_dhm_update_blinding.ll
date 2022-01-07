; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_dhm.c_dhm_update_blinding.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_dhm.c_dhm_update_blinding.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32 }

@MBEDTLS_ERR_MPI_NOT_ACCEPTABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32 (i8*, i8*, i64)*, i8*)* @dhm_update_blinding to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dhm_update_blinding(%struct.TYPE_3__* %0, i32 (i8*, i8*, i64)* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32 (i8*, i8*, i64)*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32 (i8*, i8*, i64)* %1, i32 (i8*, i8*, i64)** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 2
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 5
  %14 = call i64 @mbedtls_mpi_cmp_mpi(i32* %11, i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %31

16:                                               ; preds = %3
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 5
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 2
  %21 = call i32 @mbedtls_mpi_copy(i32* %18, i32* %20)
  %22 = call i32 @MBEDTLS_MPI_CHK(i32 %21)
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 4
  %25 = call i32 @mbedtls_mpi_lset(i32* %24, i32 1)
  %26 = call i32 @MBEDTLS_MPI_CHK(i32 %25)
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 3
  %29 = call i32 @mbedtls_mpi_lset(i32* %28, i32 1)
  %30 = call i32 @MBEDTLS_MPI_CHK(i32 %29)
  store i32 0, i32* %4, align 4
  br label %127

31:                                               ; preds = %3
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 4
  %34 = call i64 @mbedtls_mpi_cmp_int(i32* %33, i32 1)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %69

36:                                               ; preds = %31
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 4
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 4
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 4
  %43 = call i32 @mbedtls_mpi_mul_mpi(i32* %38, i32* %40, i32* %42)
  %44 = call i32 @MBEDTLS_MPI_CHK(i32 %43)
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 4
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 4
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 1
  %51 = call i32 @mbedtls_mpi_mod_mpi(i32* %46, i32* %48, i32* %50)
  %52 = call i32 @MBEDTLS_MPI_CHK(i32 %51)
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 3
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 3
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 3
  %59 = call i32 @mbedtls_mpi_mul_mpi(i32* %54, i32* %56, i32* %58)
  %60 = call i32 @MBEDTLS_MPI_CHK(i32 %59)
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 3
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 3
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 1
  %67 = call i32 @mbedtls_mpi_mod_mpi(i32* %62, i32* %64, i32* %66)
  %68 = call i32 @MBEDTLS_MPI_CHK(i32 %67)
  store i32 0, i32* %4, align 4
  br label %127

69:                                               ; preds = %31
  store i32 0, i32* %9, align 4
  br label %70

70:                                               ; preds = %99, %69
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 4
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 1
  %75 = call i32 @mbedtls_mpi_size(i32* %74)
  %76 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %6, align 8
  %77 = load i8*, i8** %7, align 8
  %78 = call i32 @mbedtls_mpi_fill_random(i32* %72, i32 %75, i32 (i8*, i8*, i64)* %76, i8* %77)
  %79 = call i32 @MBEDTLS_MPI_CHK(i32 %78)
  br label %80

80:                                               ; preds = %87, %70
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 4
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 1
  %85 = call i64 @mbedtls_mpi_cmp_mpi(i32* %82, i32* %84)
  %86 = icmp sge i64 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %80
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 4
  %90 = call i32 @mbedtls_mpi_shift_r(i32* %89, i32 1)
  %91 = call i32 @MBEDTLS_MPI_CHK(i32 %90)
  br label %80

92:                                               ; preds = %80
  %93 = load i32, i32* %9, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %9, align 4
  %95 = icmp sgt i32 %93, 10
  br i1 %95, label %96, label %98

96:                                               ; preds = %92
  %97 = load i32, i32* @MBEDTLS_ERR_MPI_NOT_ACCEPTABLE, align 4
  store i32 %97, i32* %4, align 4
  br label %127

98:                                               ; preds = %92
  br label %99

99:                                               ; preds = %98
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 4
  %102 = call i64 @mbedtls_mpi_cmp_int(i32* %101, i32 1)
  %103 = icmp sle i64 %102, 0
  br i1 %103, label %70, label %104

104:                                              ; preds = %99
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 3
  %107 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 4
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 1
  %111 = call i32 @mbedtls_mpi_inv_mod(i32* %106, i32* %108, i32* %110)
  %112 = call i32 @MBEDTLS_MPI_CHK(i32 %111)
  %113 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 3
  %115 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 3
  %117 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 2
  %119 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 1
  %121 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 0
  %123 = call i32 @mbedtls_mpi_exp_mod(i32* %114, i32* %116, i32* %118, i32* %120, i32* %122)
  %124 = call i32 @MBEDTLS_MPI_CHK(i32 %123)
  br label %125

125:                                              ; preds = %104
  %126 = load i32, i32* %8, align 4
  store i32 %126, i32* %4, align 4
  br label %127

127:                                              ; preds = %125, %96, %36, %16
  %128 = load i32, i32* %4, align 4
  ret i32 %128
}

declare dso_local i64 @mbedtls_mpi_cmp_mpi(i32*, i32*) #1

declare dso_local i32 @MBEDTLS_MPI_CHK(i32) #1

declare dso_local i32 @mbedtls_mpi_copy(i32*, i32*) #1

declare dso_local i32 @mbedtls_mpi_lset(i32*, i32) #1

declare dso_local i64 @mbedtls_mpi_cmp_int(i32*, i32) #1

declare dso_local i32 @mbedtls_mpi_mul_mpi(i32*, i32*, i32*) #1

declare dso_local i32 @mbedtls_mpi_mod_mpi(i32*, i32*, i32*) #1

declare dso_local i32 @mbedtls_mpi_fill_random(i32*, i32, i32 (i8*, i8*, i64)*, i8*) #1

declare dso_local i32 @mbedtls_mpi_size(i32*) #1

declare dso_local i32 @mbedtls_mpi_shift_r(i32*, i32) #1

declare dso_local i32 @mbedtls_mpi_inv_mod(i32*, i32*, i32*) #1

declare dso_local i32 @mbedtls_mpi_exp_mod(i32*, i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
