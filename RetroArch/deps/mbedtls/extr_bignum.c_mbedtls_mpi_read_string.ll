; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_bignum.c_mbedtls_mpi_read_string.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_bignum.c_mbedtls_mpi_read_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i64* }

@MBEDTLS_ERR_MPI_BAD_INPUT_DATA = common dso_local global i32 0, align 4
@MPI_SIZE_T_MAX = common dso_local global i64 0, align 8
@ciL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_mpi_read_string(%struct.TYPE_13__* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_13__, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %15 = load i32, i32* %6, align 4
  %16 = icmp slt i32 %15, 2
  br i1 %16, label %20, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* %6, align 4
  %19 = icmp sgt i32 %18, 16
  br i1 %19, label %20, label %22

20:                                               ; preds = %17, %3
  %21 = load i32, i32* @MBEDTLS_ERR_MPI_BAD_INPUT_DATA, align 4
  store i32 %21, i32* %4, align 4
  br label %154

22:                                               ; preds = %17
  %23 = call i32 @mbedtls_mpi_init(%struct.TYPE_13__* %14)
  %24 = load i8*, i8** %7, align 8
  %25 = call i64 @strlen(i8* %24)
  store i64 %25, i64* %11, align 8
  %26 = load i32, i32* %6, align 4
  %27 = icmp eq i32 %26, 16
  br i1 %27, label %28, label %98

28:                                               ; preds = %22
  %29 = load i64, i64* %11, align 8
  %30 = load i64, i64* @MPI_SIZE_T_MAX, align 8
  %31 = lshr i64 %30, 2
  %32 = icmp ugt i64 %29, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = load i32, i32* @MBEDTLS_ERR_MPI_BAD_INPUT_DATA, align 4
  store i32 %34, i32* %4, align 4
  br label %154

35:                                               ; preds = %28
  %36 = load i64, i64* %11, align 8
  %37 = shl i64 %36, 2
  %38 = call i64 @BITS_TO_LIMBS(i64 %37)
  store i64 %38, i64* %12, align 8
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %40 = load i64, i64* %12, align 8
  %41 = call i32 @mbedtls_mpi_grow(%struct.TYPE_13__* %39, i64 %40)
  %42 = call i32 @MBEDTLS_MPI_CHK(i32 %41)
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %44 = call i32 @mbedtls_mpi_lset(%struct.TYPE_13__* %43, i32 0)
  %45 = call i32 @MBEDTLS_MPI_CHK(i32 %44)
  %46 = load i64, i64* %11, align 8
  store i64 %46, i64* %9, align 8
  store i64 0, i64* %10, align 8
  br label %47

47:                                               ; preds = %92, %35
  %48 = load i64, i64* %9, align 8
  %49 = icmp ugt i64 %48, 0
  br i1 %49, label %50, label %97

50:                                               ; preds = %47
  %51 = load i64, i64* %9, align 8
  %52 = icmp eq i64 %51, 1
  br i1 %52, label %53, label %64

53:                                               ; preds = %50
  %54 = load i8*, i8** %7, align 8
  %55 = load i64, i64* %9, align 8
  %56 = sub i64 %55, 1
  %57 = getelementptr inbounds i8, i8* %54, i64 %56
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp eq i32 %59, 45
  br i1 %60, label %61, label %64

61:                                               ; preds = %53
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 0
  store i32 -1, i32* %63, align 8
  br label %97

64:                                               ; preds = %53, %50
  %65 = load i32, i32* %6, align 4
  %66 = load i8*, i8** %7, align 8
  %67 = load i64, i64* %9, align 8
  %68 = sub i64 %67, 1
  %69 = getelementptr inbounds i8, i8* %66, i64 %68
  %70 = load i8, i8* %69, align 1
  %71 = call i32 @mpi_get_digit(i64* %13, i32 %65, i8 signext %70)
  %72 = call i32 @MBEDTLS_MPI_CHK(i32 %71)
  %73 = load i64, i64* %13, align 8
  %74 = load i64, i64* %10, align 8
  %75 = load i32, i32* @ciL, align 4
  %76 = mul nsw i32 2, %75
  %77 = sext i32 %76 to i64
  %78 = urem i64 %74, %77
  %79 = shl i64 %78, 2
  %80 = shl i64 %73, %79
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 1
  %83 = load i64*, i64** %82, align 8
  %84 = load i64, i64* %10, align 8
  %85 = load i32, i32* @ciL, align 4
  %86 = mul nsw i32 2, %85
  %87 = sext i32 %86 to i64
  %88 = udiv i64 %84, %87
  %89 = getelementptr inbounds i64, i64* %83, i64 %88
  %90 = load i64, i64* %89, align 8
  %91 = or i64 %90, %80
  store i64 %91, i64* %89, align 8
  br label %92

92:                                               ; preds = %64
  %93 = load i64, i64* %9, align 8
  %94 = add i64 %93, -1
  store i64 %94, i64* %9, align 8
  %95 = load i64, i64* %10, align 8
  %96 = add i64 %95, 1
  store i64 %96, i64* %10, align 8
  br label %47

97:                                               ; preds = %61, %47
  br label %150

98:                                               ; preds = %22
  %99 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %100 = call i32 @mbedtls_mpi_lset(%struct.TYPE_13__* %99, i32 0)
  %101 = call i32 @MBEDTLS_MPI_CHK(i32 %100)
  store i64 0, i64* %9, align 8
  br label %102

102:                                              ; preds = %146, %98
  %103 = load i64, i64* %9, align 8
  %104 = load i64, i64* %11, align 8
  %105 = icmp ult i64 %103, %104
  br i1 %105, label %106, label %149

106:                                              ; preds = %102
  %107 = load i64, i64* %9, align 8
  %108 = icmp eq i64 %107, 0
  br i1 %108, label %109, label %119

109:                                              ; preds = %106
  %110 = load i8*, i8** %7, align 8
  %111 = load i64, i64* %9, align 8
  %112 = getelementptr inbounds i8, i8* %110, i64 %111
  %113 = load i8, i8* %112, align 1
  %114 = sext i8 %113 to i32
  %115 = icmp eq i32 %114, 45
  br i1 %115, label %116, label %119

116:                                              ; preds = %109
  %117 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %117, i32 0, i32 0
  store i32 -1, i32* %118, align 8
  br label %146

119:                                              ; preds = %109, %106
  %120 = load i32, i32* %6, align 4
  %121 = load i8*, i8** %7, align 8
  %122 = load i64, i64* %9, align 8
  %123 = getelementptr inbounds i8, i8* %121, i64 %122
  %124 = load i8, i8* %123, align 1
  %125 = call i32 @mpi_get_digit(i64* %13, i32 %120, i8 signext %124)
  %126 = call i32 @MBEDTLS_MPI_CHK(i32 %125)
  %127 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %128 = load i32, i32* %6, align 4
  %129 = call i32 @mbedtls_mpi_mul_int(%struct.TYPE_13__* %14, %struct.TYPE_13__* %127, i32 %128)
  %130 = call i32 @MBEDTLS_MPI_CHK(i32 %129)
  %131 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = icmp eq i32 %133, 1
  br i1 %134, label %135, label %140

135:                                              ; preds = %119
  %136 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %137 = load i64, i64* %13, align 8
  %138 = call i32 @mbedtls_mpi_add_int(%struct.TYPE_13__* %136, %struct.TYPE_13__* %14, i64 %137)
  %139 = call i32 @MBEDTLS_MPI_CHK(i32 %138)
  br label %145

140:                                              ; preds = %119
  %141 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %142 = load i64, i64* %13, align 8
  %143 = call i32 @mbedtls_mpi_sub_int(%struct.TYPE_13__* %141, %struct.TYPE_13__* %14, i64 %142)
  %144 = call i32 @MBEDTLS_MPI_CHK(i32 %143)
  br label %145

145:                                              ; preds = %140, %135
  br label %146

146:                                              ; preds = %145, %116
  %147 = load i64, i64* %9, align 8
  %148 = add i64 %147, 1
  store i64 %148, i64* %9, align 8
  br label %102

149:                                              ; preds = %102
  br label %150

150:                                              ; preds = %149, %97
  br label %151

151:                                              ; preds = %150
  %152 = call i32 @mbedtls_mpi_free(%struct.TYPE_13__* %14)
  %153 = load i32, i32* %8, align 4
  store i32 %153, i32* %4, align 4
  br label %154

154:                                              ; preds = %151, %33, %20
  %155 = load i32, i32* %4, align 4
  ret i32 %155
}

declare dso_local i32 @mbedtls_mpi_init(%struct.TYPE_13__*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @BITS_TO_LIMBS(i64) #1

declare dso_local i32 @MBEDTLS_MPI_CHK(i32) #1

declare dso_local i32 @mbedtls_mpi_grow(%struct.TYPE_13__*, i64) #1

declare dso_local i32 @mbedtls_mpi_lset(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @mpi_get_digit(i64*, i32, i8 signext) #1

declare dso_local i32 @mbedtls_mpi_mul_int(%struct.TYPE_13__*, %struct.TYPE_13__*, i32) #1

declare dso_local i32 @mbedtls_mpi_add_int(%struct.TYPE_13__*, %struct.TYPE_13__*, i64) #1

declare dso_local i32 @mbedtls_mpi_sub_int(%struct.TYPE_13__*, %struct.TYPE_13__*, i64) #1

declare dso_local i32 @mbedtls_mpi_free(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
