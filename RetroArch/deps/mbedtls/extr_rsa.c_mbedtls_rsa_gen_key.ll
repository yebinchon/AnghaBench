; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_rsa.c_mbedtls_rsa_gen_key.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_rsa.c_mbedtls_rsa_gen_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@MBEDTLS_ERR_RSA_BAD_INPUT_DATA = common dso_local global i32 0, align 4
@MBEDTLS_ERR_RSA_KEY_GEN_FAILED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_rsa_gen_key(%struct.TYPE_4__* %0, i32 (i8*, i8*, i64)* %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i32 (i8*, i8*, i64)*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %7, align 8
  store i32 (i8*, i8*, i64)* %1, i32 (i8*, i8*, i64)** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %17 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %8, align 8
  %18 = icmp eq i32 (i8*, i8*, i64)* %17, null
  br i1 %18, label %25, label %19

19:                                               ; preds = %5
  %20 = load i32, i32* %10, align 4
  %21 = icmp ult i32 %20, 128
  br i1 %21, label %25, label %22

22:                                               ; preds = %19
  %23 = load i32, i32* %11, align 4
  %24 = icmp slt i32 %23, 3
  br i1 %24, label %25, label %27

25:                                               ; preds = %22, %19, %5
  %26 = load i32, i32* @MBEDTLS_ERR_RSA_BAD_INPUT_DATA, align 4
  store i32 %26, i32* %6, align 4
  br label %161

27:                                               ; preds = %22
  %28 = load i32, i32* %10, align 4
  %29 = urem i32 %28, 2
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = load i32, i32* @MBEDTLS_ERR_RSA_BAD_INPUT_DATA, align 4
  store i32 %32, i32* %6, align 4
  br label %161

33:                                               ; preds = %27
  %34 = call i32 @mbedtls_mpi_init(i32* %13)
  %35 = call i32 @mbedtls_mpi_init(i32* %14)
  %36 = call i32 @mbedtls_mpi_init(i32* %15)
  %37 = call i32 @mbedtls_mpi_init(i32* %16)
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 8
  %40 = load i32, i32* %11, align 4
  %41 = call i32 @mbedtls_mpi_lset(i32* %39, i32 %40)
  %42 = call i32 @MBEDTLS_MPI_CHK(i32 %41)
  br label %43

43:                                               ; preds = %110, %33
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 2
  %46 = load i32, i32* %10, align 4
  %47 = lshr i32 %46, 1
  %48 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %8, align 8
  %49 = load i8*, i8** %9, align 8
  %50 = call i32 @mbedtls_mpi_gen_prime(i32* %45, i32 %47, i32 0, i32 (i8*, i8*, i64)* %48, i8* %49)
  %51 = call i32 @MBEDTLS_MPI_CHK(i32 %50)
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 3
  %54 = load i32, i32* %10, align 4
  %55 = lshr i32 %54, 1
  %56 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %8, align 8
  %57 = load i8*, i8** %9, align 8
  %58 = call i32 @mbedtls_mpi_gen_prime(i32* %53, i32 %55, i32 0, i32 (i8*, i8*, i64)* %56, i8* %57)
  %59 = call i32 @MBEDTLS_MPI_CHK(i32 %58)
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 2
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 3
  %64 = call i64 @mbedtls_mpi_cmp_mpi(i32* %61, i32* %63)
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %43
  br label %110

67:                                               ; preds = %43
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 1
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 2
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 3
  %74 = call i32 @mbedtls_mpi_mul_mpi(i32* %69, i32* %71, i32* %73)
  %75 = call i32 @MBEDTLS_MPI_CHK(i32 %74)
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 1
  %78 = call i32 @mbedtls_mpi_bitlen(i32* %77)
  %79 = load i32, i32* %10, align 4
  %80 = icmp ne i32 %78, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %67
  br label %110

82:                                               ; preds = %67
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 2
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 3
  %87 = call i64 @mbedtls_mpi_cmp_mpi(i32* %84, i32* %86)
  %88 = icmp slt i64 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %82
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 2
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 3
  %94 = call i32 @mbedtls_mpi_swap(i32* %91, i32* %93)
  br label %95

95:                                               ; preds = %89, %82
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 2
  %98 = call i32 @mbedtls_mpi_sub_int(i32* %13, i32* %97, i32 1)
  %99 = call i32 @MBEDTLS_MPI_CHK(i32 %98)
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 3
  %102 = call i32 @mbedtls_mpi_sub_int(i32* %14, i32* %101, i32 1)
  %103 = call i32 @MBEDTLS_MPI_CHK(i32 %102)
  %104 = call i32 @mbedtls_mpi_mul_mpi(i32* %15, i32* %13, i32* %14)
  %105 = call i32 @MBEDTLS_MPI_CHK(i32 %104)
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 8
  %108 = call i32 @mbedtls_mpi_gcd(i32* %16, i32* %107, i32* %15)
  %109 = call i32 @MBEDTLS_MPI_CHK(i32 %108)
  br label %110

110:                                              ; preds = %95, %81, %66
  %111 = call i64 @mbedtls_mpi_cmp_int(i32* %16, i32 1)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %43, label %113

113:                                              ; preds = %110
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 5
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 8
  %118 = call i32 @mbedtls_mpi_inv_mod(i32* %115, i32* %117, i32* %15)
  %119 = call i32 @MBEDTLS_MPI_CHK(i32 %118)
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 7
  %122 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 5
  %124 = call i32 @mbedtls_mpi_mod_mpi(i32* %121, i32* %123, i32* %13)
  %125 = call i32 @MBEDTLS_MPI_CHK(i32 %124)
  %126 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 6
  %128 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 5
  %130 = call i32 @mbedtls_mpi_mod_mpi(i32* %127, i32* %129, i32* %14)
  %131 = call i32 @MBEDTLS_MPI_CHK(i32 %130)
  %132 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 4
  %134 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 3
  %136 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 2
  %138 = call i32 @mbedtls_mpi_inv_mod(i32* %133, i32* %135, i32* %137)
  %139 = call i32 @MBEDTLS_MPI_CHK(i32 %138)
  %140 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 1
  %142 = call i32 @mbedtls_mpi_bitlen(i32* %141)
  %143 = add nsw i32 %142, 7
  %144 = ashr i32 %143, 3
  %145 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 0
  store i32 %144, i32* %146, align 4
  br label %147

147:                                              ; preds = %113
  %148 = call i32 @mbedtls_mpi_free(i32* %13)
  %149 = call i32 @mbedtls_mpi_free(i32* %14)
  %150 = call i32 @mbedtls_mpi_free(i32* %15)
  %151 = call i32 @mbedtls_mpi_free(i32* %16)
  %152 = load i32, i32* %12, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %160

154:                                              ; preds = %147
  %155 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %156 = call i32 @mbedtls_rsa_free(%struct.TYPE_4__* %155)
  %157 = load i32, i32* @MBEDTLS_ERR_RSA_KEY_GEN_FAILED, align 4
  %158 = load i32, i32* %12, align 4
  %159 = add nsw i32 %157, %158
  store i32 %159, i32* %6, align 4
  br label %161

160:                                              ; preds = %147
  store i32 0, i32* %6, align 4
  br label %161

161:                                              ; preds = %160, %154, %31, %25
  %162 = load i32, i32* %6, align 4
  ret i32 %162
}

declare dso_local i32 @mbedtls_mpi_init(i32*) #1

declare dso_local i32 @MBEDTLS_MPI_CHK(i32) #1

declare dso_local i32 @mbedtls_mpi_lset(i32*, i32) #1

declare dso_local i32 @mbedtls_mpi_gen_prime(i32*, i32, i32, i32 (i8*, i8*, i64)*, i8*) #1

declare dso_local i64 @mbedtls_mpi_cmp_mpi(i32*, i32*) #1

declare dso_local i32 @mbedtls_mpi_mul_mpi(i32*, i32*, i32*) #1

declare dso_local i32 @mbedtls_mpi_bitlen(i32*) #1

declare dso_local i32 @mbedtls_mpi_swap(i32*, i32*) #1

declare dso_local i32 @mbedtls_mpi_sub_int(i32*, i32*, i32) #1

declare dso_local i32 @mbedtls_mpi_gcd(i32*, i32*, i32*) #1

declare dso_local i64 @mbedtls_mpi_cmp_int(i32*, i32) #1

declare dso_local i32 @mbedtls_mpi_inv_mod(i32*, i32*, i32*) #1

declare dso_local i32 @mbedtls_mpi_mod_mpi(i32*, i32*, i32*) #1

declare dso_local i32 @mbedtls_mpi_free(i32*) #1

declare dso_local i32 @mbedtls_rsa_free(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
