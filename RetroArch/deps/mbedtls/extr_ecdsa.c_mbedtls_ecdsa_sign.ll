; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_ecdsa.c_mbedtls_ecdsa_sign.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_ecdsa.c_mbedtls_ecdsa_sign.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32* }
%struct.TYPE_12__ = type { i32 }

@MBEDTLS_ERR_ECP_BAD_INPUT_DATA = common dso_local global i32 0, align 4
@MBEDTLS_ERR_ECP_RANDOM_FAILED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_ecdsa_sign(%struct.TYPE_13__* %0, i32* %1, i32* %2, i32* %3, i8* %4, i64 %5, i32 (i8*, i8*, i64)* %6, i8* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32 (i8*, i8*, i64)*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.TYPE_12__, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i64, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %10, align 8
  store i32* %1, i32** %11, align 8
  store i32* %2, i32** %12, align 8
  store i32* %3, i32** %13, align 8
  store i8* %4, i8** %14, align 8
  store i64 %5, i64* %15, align 8
  store i32 (i8*, i8*, i64)* %6, i32 (i8*, i8*, i64)** %16, align 8
  store i8* %7, i8** %17, align 8
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %8
  %33 = load i32, i32* @MBEDTLS_ERR_ECP_BAD_INPUT_DATA, align 4
  store i32 %33, i32* %9, align 4
  br label %151

34:                                               ; preds = %8
  %35 = call i32 @mbedtls_ecp_point_init(%struct.TYPE_12__* %22)
  %36 = call i32 @mbedtls_mpi_init(i32* %23)
  %37 = call i32 @mbedtls_mpi_init(i32* %24)
  %38 = call i32 @mbedtls_mpi_init(i32* %25)
  store i32 0, i32* %20, align 4
  br label %39

39:                                               ; preds = %140, %34
  store i32 0, i32* %19, align 4
  br label %40

40:                                               ; preds = %58, %39
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %42 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %16, align 8
  %43 = load i8*, i8** %17, align 8
  %44 = call i32 @mbedtls_ecp_gen_keypair(%struct.TYPE_13__* %41, i32* %23, %struct.TYPE_12__* %22, i32 (i8*, i8*, i64)* %42, i8* %43)
  %45 = call i32 @MBEDTLS_MPI_CHK(i32 %44)
  %46 = load i32*, i32** %11, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 0
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 1
  %50 = call i32 @mbedtls_mpi_mod_mpi(i32* %46, i32* %47, %struct.TYPE_14__* %49)
  %51 = call i32 @MBEDTLS_MPI_CHK(i32 %50)
  %52 = load i32, i32* %19, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %19, align 4
  %54 = icmp sgt i32 %52, 10
  br i1 %54, label %55, label %57

55:                                               ; preds = %40
  %56 = load i32, i32* @MBEDTLS_ERR_ECP_RANDOM_FAILED, align 4
  store i32 %56, i32* %18, align 4
  br label %145

57:                                               ; preds = %40
  br label %58

58:                                               ; preds = %57
  %59 = load i32*, i32** %11, align 8
  %60 = call i64 @mbedtls_mpi_cmp_int(i32* %59, i32 0)
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %40, label %62

62:                                               ; preds = %58
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %64 = load i8*, i8** %14, align 8
  %65 = load i64, i64* %15, align 8
  %66 = call i32 @derive_mpi(%struct.TYPE_13__* %63, i32* %24, i8* %64, i64 %65)
  %67 = call i32 @MBEDTLS_MPI_CHK(i32 %66)
  store i32 0, i32* %21, align 4
  br label %68

68:                                               ; preds = %104, %62
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = add nsw i32 %71, 7
  %73 = sdiv i32 %72, 8
  %74 = sext i32 %73 to i64
  store i64 %74, i64* %26, align 8
  %75 = load i64, i64* %26, align 8
  %76 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %16, align 8
  %77 = load i8*, i8** %17, align 8
  %78 = call i32 @mbedtls_mpi_fill_random(i32* %25, i64 %75, i32 (i8*, i8*, i64)* %76, i8* %77)
  %79 = call i32 @MBEDTLS_MPI_CHK(i32 %78)
  %80 = load i64, i64* %26, align 8
  %81 = mul i64 8, %80
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = sext i32 %84 to i64
  %86 = sub i64 %81, %85
  %87 = trunc i64 %86 to i32
  %88 = call i32 @mbedtls_mpi_shift_r(i32* %25, i32 %87)
  %89 = call i32 @MBEDTLS_MPI_CHK(i32 %88)
  %90 = load i32, i32* %21, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %21, align 4
  %92 = icmp sgt i32 %91, 30
  br i1 %92, label %93, label %95

93:                                               ; preds = %68
  %94 = load i32, i32* @MBEDTLS_ERR_ECP_RANDOM_FAILED, align 4
  store i32 %94, i32* %9, align 4
  br label %151

95:                                               ; preds = %68
  br label %96

96:                                               ; preds = %95
  %97 = call i64 @mbedtls_mpi_cmp_int(i32* %25, i32 1)
  %98 = icmp slt i64 %97, 0
  br i1 %98, label %104, label %99

99:                                               ; preds = %96
  %100 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %101 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %100, i32 0, i32 1
  %102 = call i64 @mbedtls_mpi_cmp_mpi(i32* %25, %struct.TYPE_14__* %101)
  %103 = icmp sge i64 %102, 0
  br label %104

104:                                              ; preds = %99, %96
  %105 = phi i1 [ true, %96 ], [ %103, %99 ]
  br i1 %105, label %68, label %106

106:                                              ; preds = %104
  %107 = load i32*, i32** %12, align 8
  %108 = load i32*, i32** %11, align 8
  %109 = load i32*, i32** %13, align 8
  %110 = call i32 @mbedtls_mpi_mul_mpi(i32* %107, i32* %108, i32* %109)
  %111 = call i32 @MBEDTLS_MPI_CHK(i32 %110)
  %112 = load i32*, i32** %12, align 8
  %113 = call i32 @mbedtls_mpi_add_mpi(i32* %24, i32* %24, i32* %112)
  %114 = call i32 @MBEDTLS_MPI_CHK(i32 %113)
  %115 = call i32 @mbedtls_mpi_mul_mpi(i32* %24, i32* %24, i32* %25)
  %116 = call i32 @MBEDTLS_MPI_CHK(i32 %115)
  %117 = call i32 @mbedtls_mpi_mul_mpi(i32* %23, i32* %23, i32* %25)
  %118 = call i32 @MBEDTLS_MPI_CHK(i32 %117)
  %119 = load i32*, i32** %12, align 8
  %120 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %121 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %120, i32 0, i32 1
  %122 = call i32 @mbedtls_mpi_inv_mod(i32* %119, i32* %23, %struct.TYPE_14__* %121)
  %123 = call i32 @MBEDTLS_MPI_CHK(i32 %122)
  %124 = load i32*, i32** %12, align 8
  %125 = load i32*, i32** %12, align 8
  %126 = call i32 @mbedtls_mpi_mul_mpi(i32* %124, i32* %125, i32* %24)
  %127 = call i32 @MBEDTLS_MPI_CHK(i32 %126)
  %128 = load i32*, i32** %12, align 8
  %129 = load i32*, i32** %12, align 8
  %130 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %131 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %130, i32 0, i32 1
  %132 = call i32 @mbedtls_mpi_mod_mpi(i32* %128, i32* %129, %struct.TYPE_14__* %131)
  %133 = call i32 @MBEDTLS_MPI_CHK(i32 %132)
  %134 = load i32, i32* %20, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %20, align 4
  %136 = icmp sgt i32 %134, 10
  br i1 %136, label %137, label %139

137:                                              ; preds = %106
  %138 = load i32, i32* @MBEDTLS_ERR_ECP_RANDOM_FAILED, align 4
  store i32 %138, i32* %18, align 4
  br label %145

139:                                              ; preds = %106
  br label %140

140:                                              ; preds = %139
  %141 = load i32*, i32** %12, align 8
  %142 = call i64 @mbedtls_mpi_cmp_int(i32* %141, i32 0)
  %143 = icmp eq i64 %142, 0
  br i1 %143, label %39, label %144

144:                                              ; preds = %140
  br label %145

145:                                              ; preds = %144, %137, %55
  %146 = call i32 @mbedtls_ecp_point_free(%struct.TYPE_12__* %22)
  %147 = call i32 @mbedtls_mpi_free(i32* %23)
  %148 = call i32 @mbedtls_mpi_free(i32* %24)
  %149 = call i32 @mbedtls_mpi_free(i32* %25)
  %150 = load i32, i32* %18, align 4
  store i32 %150, i32* %9, align 4
  br label %151

151:                                              ; preds = %145, %93, %32
  %152 = load i32, i32* %9, align 4
  ret i32 %152
}

declare dso_local i32 @mbedtls_ecp_point_init(%struct.TYPE_12__*) #1

declare dso_local i32 @mbedtls_mpi_init(i32*) #1

declare dso_local i32 @MBEDTLS_MPI_CHK(i32) #1

declare dso_local i32 @mbedtls_ecp_gen_keypair(%struct.TYPE_13__*, i32*, %struct.TYPE_12__*, i32 (i8*, i8*, i64)*, i8*) #1

declare dso_local i32 @mbedtls_mpi_mod_mpi(i32*, i32*, %struct.TYPE_14__*) #1

declare dso_local i64 @mbedtls_mpi_cmp_int(i32*, i32) #1

declare dso_local i32 @derive_mpi(%struct.TYPE_13__*, i32*, i8*, i64) #1

declare dso_local i32 @mbedtls_mpi_fill_random(i32*, i64, i32 (i8*, i8*, i64)*, i8*) #1

declare dso_local i32 @mbedtls_mpi_shift_r(i32*, i32) #1

declare dso_local i64 @mbedtls_mpi_cmp_mpi(i32*, %struct.TYPE_14__*) #1

declare dso_local i32 @mbedtls_mpi_mul_mpi(i32*, i32*, i32*) #1

declare dso_local i32 @mbedtls_mpi_add_mpi(i32*, i32*, i32*) #1

declare dso_local i32 @mbedtls_mpi_inv_mod(i32*, i32*, %struct.TYPE_14__*) #1

declare dso_local i32 @mbedtls_ecp_point_free(%struct.TYPE_12__*) #1

declare dso_local i32 @mbedtls_mpi_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
