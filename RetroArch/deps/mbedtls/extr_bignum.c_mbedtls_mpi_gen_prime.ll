; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_bignum.c_mbedtls_mpi_gen_prime.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_bignum.c_mbedtls_mpi_gen_prime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32* }

@MBEDTLS_MPI_MAX_BITS = common dso_local global i64 0, align 8
@MBEDTLS_ERR_MPI_BAD_INPUT_DATA = common dso_local global i32 0, align 4
@ciL = common dso_local global i64 0, align 8
@MBEDTLS_ERR_MPI_NOT_ACCEPTABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_mpi_gen_prime(%struct.TYPE_17__* %0, i64 %1, i32 %2, i32 (i8*, i8*, i64)* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32 (i8*, i8*, i64)*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_17__, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 (i8*, i8*, i64)* %3, i32 (i8*, i8*, i64)** %10, align 8
  store i8* %4, i8** %11, align 8
  %17 = load i64, i64* %8, align 8
  %18 = icmp ult i64 %17, 3
  br i1 %18, label %23, label %19

19:                                               ; preds = %5
  %20 = load i64, i64* %8, align 8
  %21 = load i64, i64* @MBEDTLS_MPI_MAX_BITS, align 8
  %22 = icmp ugt i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %19, %5
  %24 = load i32, i32* @MBEDTLS_ERR_MPI_BAD_INPUT_DATA, align 4
  store i32 %24, i32* %6, align 4
  br label %150

25:                                               ; preds = %19
  %26 = call i32 @mbedtls_mpi_init(%struct.TYPE_17__* %16)
  %27 = load i64, i64* %8, align 8
  %28 = call i64 @BITS_TO_LIMBS(i64 %27)
  store i64 %28, i64* %14, align 8
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %30 = load i64, i64* %14, align 8
  %31 = load i64, i64* @ciL, align 8
  %32 = mul i64 %30, %31
  %33 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %10, align 8
  %34 = load i8*, i8** %11, align 8
  %35 = call i32 @mbedtls_mpi_fill_random(%struct.TYPE_17__* %29, i64 %32, i32 (i8*, i8*, i64)* %33, i8* %34)
  %36 = call i32 @MBEDTLS_MPI_CHK(i32 %35)
  %37 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %38 = call i64 @mbedtls_mpi_bitlen(%struct.TYPE_17__* %37)
  store i64 %38, i64* %13, align 8
  %39 = load i64, i64* %13, align 8
  %40 = load i64, i64* %8, align 8
  %41 = icmp ugt i64 %39, %40
  br i1 %41, label %42, label %51

42:                                               ; preds = %25
  %43 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %44 = load i64, i64* %13, align 8
  %45 = load i64, i64* %8, align 8
  %46 = sub i64 %44, %45
  %47 = add i64 %46, 1
  %48 = trunc i64 %47 to i32
  %49 = call i32 @mbedtls_mpi_shift_r(%struct.TYPE_17__* %43, i32 %48)
  %50 = call i32 @MBEDTLS_MPI_CHK(i32 %49)
  br label %51

51:                                               ; preds = %42, %25
  %52 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %53 = load i64, i64* %8, align 8
  %54 = sub i64 %53, 1
  %55 = call i32 @mbedtls_mpi_set_bit(%struct.TYPE_17__* %52, i64 %54, i32 1)
  %56 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 0
  %60 = load i32, i32* %59, align 4
  %61 = or i32 %60, 1
  store i32 %61, i32* %59, align 4
  %62 = load i32, i32* %9, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %82

64:                                               ; preds = %51
  br label %65

65:                                               ; preds = %76, %64
  %66 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %67 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %10, align 8
  %68 = load i8*, i8** %11, align 8
  %69 = call i32 @mbedtls_mpi_is_prime(%struct.TYPE_17__* %66, i32 (i8*, i8*, i64)* %67, i8* %68)
  store i32 %69, i32* %12, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %81

71:                                               ; preds = %65
  %72 = load i32, i32* %12, align 4
  %73 = load i32, i32* @MBEDTLS_ERR_MPI_NOT_ACCEPTABLE, align 4
  %74 = icmp ne i32 %72, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %71
  br label %147

76:                                               ; preds = %71
  %77 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %78 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %79 = call i32 @mbedtls_mpi_add_int(%struct.TYPE_17__* %77, %struct.TYPE_17__* %78, i32 2)
  %80 = call i32 @MBEDTLS_MPI_CHK(i32 %79)
  br label %65

81:                                               ; preds = %65
  br label %146

82:                                               ; preds = %51
  %83 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 0
  %87 = load i32, i32* %86, align 4
  %88 = or i32 %87, 2
  store i32 %88, i32* %86, align 4
  %89 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %90 = call i32 @mbedtls_mpi_mod_int(i32* %15, %struct.TYPE_17__* %89, i32 3)
  %91 = call i32 @MBEDTLS_MPI_CHK(i32 %90)
  %92 = load i32, i32* %15, align 4
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %82
  %95 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %96 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %97 = call i32 @mbedtls_mpi_add_int(%struct.TYPE_17__* %95, %struct.TYPE_17__* %96, i32 8)
  %98 = call i32 @MBEDTLS_MPI_CHK(i32 %97)
  br label %108

99:                                               ; preds = %82
  %100 = load i32, i32* %15, align 4
  %101 = icmp eq i32 %100, 1
  br i1 %101, label %102, label %107

102:                                              ; preds = %99
  %103 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %104 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %105 = call i32 @mbedtls_mpi_add_int(%struct.TYPE_17__* %103, %struct.TYPE_17__* %104, i32 4)
  %106 = call i32 @MBEDTLS_MPI_CHK(i32 %105)
  br label %107

107:                                              ; preds = %102, %99
  br label %108

108:                                              ; preds = %107, %94
  %109 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %110 = call i32 @mbedtls_mpi_copy(%struct.TYPE_17__* %16, %struct.TYPE_17__* %109)
  %111 = call i32 @MBEDTLS_MPI_CHK(i32 %110)
  %112 = call i32 @mbedtls_mpi_shift_r(%struct.TYPE_17__* %16, i32 1)
  %113 = call i32 @MBEDTLS_MPI_CHK(i32 %112)
  br label %114

114:                                              ; preds = %108, %138
  %115 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %116 = call i32 @mpi_check_small_factors(%struct.TYPE_17__* %115)
  store i32 %116, i32* %12, align 4
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %133

118:                                              ; preds = %114
  %119 = call i32 @mpi_check_small_factors(%struct.TYPE_17__* %16)
  store i32 %119, i32* %12, align 4
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %133

121:                                              ; preds = %118
  %122 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %123 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %10, align 8
  %124 = load i8*, i8** %11, align 8
  %125 = call i32 @mpi_miller_rabin(%struct.TYPE_17__* %122, i32 (i8*, i8*, i64)* %123, i8* %124)
  store i32 %125, i32* %12, align 4
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %133

127:                                              ; preds = %121
  %128 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %10, align 8
  %129 = load i8*, i8** %11, align 8
  %130 = call i32 @mpi_miller_rabin(%struct.TYPE_17__* %16, i32 (i8*, i8*, i64)* %128, i8* %129)
  store i32 %130, i32* %12, align 4
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %127
  br label %145

133:                                              ; preds = %127, %121, %118, %114
  %134 = load i32, i32* %12, align 4
  %135 = load i32, i32* @MBEDTLS_ERR_MPI_NOT_ACCEPTABLE, align 4
  %136 = icmp ne i32 %134, %135
  br i1 %136, label %137, label %138

137:                                              ; preds = %133
  br label %147

138:                                              ; preds = %133
  %139 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %140 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %141 = call i32 @mbedtls_mpi_add_int(%struct.TYPE_17__* %139, %struct.TYPE_17__* %140, i32 12)
  %142 = call i32 @MBEDTLS_MPI_CHK(i32 %141)
  %143 = call i32 @mbedtls_mpi_add_int(%struct.TYPE_17__* %16, %struct.TYPE_17__* %16, i32 6)
  %144 = call i32 @MBEDTLS_MPI_CHK(i32 %143)
  br label %114

145:                                              ; preds = %132
  br label %146

146:                                              ; preds = %145, %81
  br label %147

147:                                              ; preds = %146, %137, %75
  %148 = call i32 @mbedtls_mpi_free(%struct.TYPE_17__* %16)
  %149 = load i32, i32* %12, align 4
  store i32 %149, i32* %6, align 4
  br label %150

150:                                              ; preds = %147, %23
  %151 = load i32, i32* %6, align 4
  ret i32 %151
}

declare dso_local i32 @mbedtls_mpi_init(%struct.TYPE_17__*) #1

declare dso_local i64 @BITS_TO_LIMBS(i64) #1

declare dso_local i32 @MBEDTLS_MPI_CHK(i32) #1

declare dso_local i32 @mbedtls_mpi_fill_random(%struct.TYPE_17__*, i64, i32 (i8*, i8*, i64)*, i8*) #1

declare dso_local i64 @mbedtls_mpi_bitlen(%struct.TYPE_17__*) #1

declare dso_local i32 @mbedtls_mpi_shift_r(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @mbedtls_mpi_set_bit(%struct.TYPE_17__*, i64, i32) #1

declare dso_local i32 @mbedtls_mpi_is_prime(%struct.TYPE_17__*, i32 (i8*, i8*, i64)*, i8*) #1

declare dso_local i32 @mbedtls_mpi_add_int(%struct.TYPE_17__*, %struct.TYPE_17__*, i32) #1

declare dso_local i32 @mbedtls_mpi_mod_int(i32*, %struct.TYPE_17__*, i32) #1

declare dso_local i32 @mbedtls_mpi_copy(%struct.TYPE_17__*, %struct.TYPE_17__*) #1

declare dso_local i32 @mpi_check_small_factors(%struct.TYPE_17__*) #1

declare dso_local i32 @mpi_miller_rabin(%struct.TYPE_17__*, i32 (i8*, i8*, i64)*, i8*) #1

declare dso_local i32 @mbedtls_mpi_free(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
