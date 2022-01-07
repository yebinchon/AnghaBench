; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_bignum.c_mpi_miller_rabin.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_bignum.c_mpi_miller_rabin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_27__ = type { i32, i32* }

@ciL = common dso_local global i32 0, align 4
@MBEDTLS_ERR_MPI_NOT_ACCEPTABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_27__*, i32 (i8*, i8*, i64)*, i8*)* @mpi_miller_rabin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpi_miller_rabin(%struct.TYPE_27__* %0, i32 (i8*, i8*, i64)* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_27__*, align 8
  %6 = alloca i32 (i8*, i8*, i64)*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_27__, align 8
  %16 = alloca %struct.TYPE_27__, align 8
  %17 = alloca %struct.TYPE_27__, align 8
  %18 = alloca %struct.TYPE_27__, align 8
  %19 = alloca %struct.TYPE_27__, align 8
  store %struct.TYPE_27__* %0, %struct.TYPE_27__** %5, align 8
  store i32 (i8*, i8*, i64)* %1, i32 (i8*, i8*, i64)** %6, align 8
  store i8* %2, i8** %7, align 8
  %20 = call i32 @mbedtls_mpi_init(%struct.TYPE_27__* %15)
  %21 = call i32 @mbedtls_mpi_init(%struct.TYPE_27__* %16)
  %22 = call i32 @mbedtls_mpi_init(%struct.TYPE_27__* %17)
  %23 = call i32 @mbedtls_mpi_init(%struct.TYPE_27__* %18)
  %24 = call i32 @mbedtls_mpi_init(%struct.TYPE_27__* %19)
  %25 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %26 = call i32 @mbedtls_mpi_sub_int(%struct.TYPE_27__* %15, %struct.TYPE_27__* %25, i32 1)
  %27 = call i32 @MBEDTLS_MPI_CHK(i32 %26)
  %28 = call i64 @mbedtls_mpi_lsb(%struct.TYPE_27__* %15)
  store i64 %28, i64* %14, align 8
  %29 = call i32 @mbedtls_mpi_copy(%struct.TYPE_27__* %16, %struct.TYPE_27__* %15)
  %30 = call i32 @MBEDTLS_MPI_CHK(i32 %29)
  %31 = load i64, i64* %14, align 8
  %32 = call i32 @mbedtls_mpi_shift_r(%struct.TYPE_27__* %16, i64 %31)
  %33 = call i32 @MBEDTLS_MPI_CHK(i32 %32)
  %34 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %35 = call i64 @mbedtls_mpi_bitlen(%struct.TYPE_27__* %34)
  store i64 %35, i64* %10, align 8
  %36 = load i64, i64* %10, align 8
  %37 = icmp uge i64 %36, 1300
  br i1 %37, label %38, label %39

38:                                               ; preds = %3
  br label %68

39:                                               ; preds = %3
  %40 = load i64, i64* %10, align 8
  %41 = icmp uge i64 %40, 850
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  br label %66

43:                                               ; preds = %39
  %44 = load i64, i64* %10, align 8
  %45 = icmp uge i64 %44, 650
  br i1 %45, label %46, label %47

46:                                               ; preds = %43
  br label %64

47:                                               ; preds = %43
  %48 = load i64, i64* %10, align 8
  %49 = icmp uge i64 %48, 350
  br i1 %49, label %50, label %51

50:                                               ; preds = %47
  br label %62

51:                                               ; preds = %47
  %52 = load i64, i64* %10, align 8
  %53 = icmp uge i64 %52, 250
  br i1 %53, label %54, label %55

54:                                               ; preds = %51
  br label %60

55:                                               ; preds = %51
  %56 = load i64, i64* %10, align 8
  %57 = icmp uge i64 %56, 150
  %58 = zext i1 %57 to i64
  %59 = select i1 %57, i32 18, i32 27
  br label %60

60:                                               ; preds = %55, %54
  %61 = phi i32 [ 12, %54 ], [ %59, %55 ]
  br label %62

62:                                               ; preds = %60, %50
  %63 = phi i32 [ 8, %50 ], [ %61, %60 ]
  br label %64

64:                                               ; preds = %62, %46
  %65 = phi i32 [ 4, %46 ], [ %63, %62 ]
  br label %66

66:                                               ; preds = %64, %42
  %67 = phi i32 [ 3, %42 ], [ %65, %64 ]
  br label %68

68:                                               ; preds = %66, %38
  %69 = phi i32 [ 2, %38 ], [ %67, %66 ]
  %70 = sext i32 %69 to i64
  store i64 %70, i64* %13, align 8
  store i64 0, i64* %10, align 8
  br label %71

71:                                               ; preds = %178, %68
  %72 = load i64, i64* %10, align 8
  %73 = load i64, i64* %13, align 8
  %74 = icmp ult i64 %72, %73
  br i1 %74, label %75, label %181

75:                                               ; preds = %71
  %76 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @ciL, align 4
  %80 = mul nsw i32 %78, %79
  %81 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %6, align 8
  %82 = load i8*, i8** %7, align 8
  %83 = call i32 @mbedtls_mpi_fill_random(%struct.TYPE_27__* %18, i32 %80, i32 (i8*, i8*, i64)* %81, i8* %82)
  %84 = call i32 @MBEDTLS_MPI_CHK(i32 %83)
  %85 = call i64 @mbedtls_mpi_cmp_mpi(%struct.TYPE_27__* %18, %struct.TYPE_27__* %15)
  %86 = icmp sge i64 %85, 0
  br i1 %86, label %87, label %95

87:                                               ; preds = %75
  %88 = call i64 @mbedtls_mpi_bitlen(%struct.TYPE_27__* %18)
  %89 = call i64 @mbedtls_mpi_bitlen(%struct.TYPE_27__* %15)
  %90 = sub i64 %88, %89
  store i64 %90, i64* %11, align 8
  %91 = load i64, i64* %11, align 8
  %92 = add i64 %91, 1
  %93 = call i32 @mbedtls_mpi_shift_r(%struct.TYPE_27__* %18, i64 %92)
  %94 = call i32 @MBEDTLS_MPI_CHK(i32 %93)
  br label %95

95:                                               ; preds = %87, %75
  %96 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %18, i32 0, i32 1
  %97 = load i32*, i32** %96, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 0
  %99 = load i32, i32* %98, align 4
  %100 = or i32 %99, 3
  store i32 %100, i32* %98, align 4
  store i32 0, i32* %9, align 4
  br label %101

101:                                              ; preds = %135, %95
  %102 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* @ciL, align 4
  %106 = mul nsw i32 %104, %105
  %107 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %6, align 8
  %108 = load i8*, i8** %7, align 8
  %109 = call i32 @mbedtls_mpi_fill_random(%struct.TYPE_27__* %18, i32 %106, i32 (i8*, i8*, i64)* %107, i8* %108)
  %110 = call i32 @MBEDTLS_MPI_CHK(i32 %109)
  %111 = call i64 @mbedtls_mpi_bitlen(%struct.TYPE_27__* %18)
  store i64 %111, i64* %11, align 8
  %112 = call i64 @mbedtls_mpi_bitlen(%struct.TYPE_27__* %15)
  store i64 %112, i64* %12, align 8
  %113 = load i64, i64* %11, align 8
  %114 = load i64, i64* %12, align 8
  %115 = icmp ugt i64 %113, %114
  br i1 %115, label %116, label %122

116:                                              ; preds = %101
  %117 = load i64, i64* %11, align 8
  %118 = load i64, i64* %12, align 8
  %119 = sub i64 %117, %118
  %120 = call i32 @mbedtls_mpi_shift_r(%struct.TYPE_27__* %18, i64 %119)
  %121 = call i32 @MBEDTLS_MPI_CHK(i32 %120)
  br label %122

122:                                              ; preds = %116, %101
  %123 = load i32, i32* %9, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %9, align 4
  %125 = icmp sgt i32 %123, 30
  br i1 %125, label %126, label %128

126:                                              ; preds = %122
  %127 = load i32, i32* @MBEDTLS_ERR_MPI_NOT_ACCEPTABLE, align 4
  store i32 %127, i32* %4, align 4
  br label %189

128:                                              ; preds = %122
  br label %129

129:                                              ; preds = %128
  %130 = call i64 @mbedtls_mpi_cmp_mpi(%struct.TYPE_27__* %18, %struct.TYPE_27__* %15)
  %131 = icmp sge i64 %130, 0
  br i1 %131, label %135, label %132

132:                                              ; preds = %129
  %133 = call i64 @mbedtls_mpi_cmp_int(%struct.TYPE_27__* %18, i32 1)
  %134 = icmp sle i64 %133, 0
  br label %135

135:                                              ; preds = %132, %129
  %136 = phi i1 [ true, %129 ], [ %134, %132 ]
  br i1 %136, label %101, label %137

137:                                              ; preds = %135
  %138 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %139 = call i32 @mbedtls_mpi_exp_mod(%struct.TYPE_27__* %18, %struct.TYPE_27__* %18, %struct.TYPE_27__* %16, %struct.TYPE_27__* %138, %struct.TYPE_27__* %19)
  %140 = call i32 @MBEDTLS_MPI_CHK(i32 %139)
  %141 = call i64 @mbedtls_mpi_cmp_mpi(%struct.TYPE_27__* %18, %struct.TYPE_27__* %15)
  %142 = icmp eq i64 %141, 0
  br i1 %142, label %146, label %143

143:                                              ; preds = %137
  %144 = call i64 @mbedtls_mpi_cmp_int(%struct.TYPE_27__* %18, i32 1)
  %145 = icmp eq i64 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %143, %137
  br label %178

147:                                              ; preds = %143
  store i64 1, i64* %11, align 8
  br label %148

148:                                              ; preds = %166, %147
  %149 = load i64, i64* %11, align 8
  %150 = load i64, i64* %14, align 8
  %151 = icmp ult i64 %149, %150
  br i1 %151, label %152, label %155

152:                                              ; preds = %148
  %153 = call i64 @mbedtls_mpi_cmp_mpi(%struct.TYPE_27__* %18, %struct.TYPE_27__* %15)
  %154 = icmp ne i64 %153, 0
  br label %155

155:                                              ; preds = %152, %148
  %156 = phi i1 [ false, %148 ], [ %154, %152 ]
  br i1 %156, label %157, label %169

157:                                              ; preds = %155
  %158 = call i32 @mbedtls_mpi_mul_mpi(%struct.TYPE_27__* %17, %struct.TYPE_27__* %18, %struct.TYPE_27__* %18)
  %159 = call i32 @MBEDTLS_MPI_CHK(i32 %158)
  %160 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %161 = call i32 @mbedtls_mpi_mod_mpi(%struct.TYPE_27__* %18, %struct.TYPE_27__* %17, %struct.TYPE_27__* %160)
  %162 = call i32 @MBEDTLS_MPI_CHK(i32 %161)
  %163 = call i64 @mbedtls_mpi_cmp_int(%struct.TYPE_27__* %18, i32 1)
  %164 = icmp eq i64 %163, 0
  br i1 %164, label %165, label %166

165:                                              ; preds = %157
  br label %169

166:                                              ; preds = %157
  %167 = load i64, i64* %11, align 8
  %168 = add i64 %167, 1
  store i64 %168, i64* %11, align 8
  br label %148

169:                                              ; preds = %165, %155
  %170 = call i64 @mbedtls_mpi_cmp_mpi(%struct.TYPE_27__* %18, %struct.TYPE_27__* %15)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %175, label %172

172:                                              ; preds = %169
  %173 = call i64 @mbedtls_mpi_cmp_int(%struct.TYPE_27__* %18, i32 1)
  %174 = icmp eq i64 %173, 0
  br i1 %174, label %175, label %177

175:                                              ; preds = %172, %169
  %176 = load i32, i32* @MBEDTLS_ERR_MPI_NOT_ACCEPTABLE, align 4
  store i32 %176, i32* %8, align 4
  br label %181

177:                                              ; preds = %172
  br label %178

178:                                              ; preds = %177, %146
  %179 = load i64, i64* %10, align 8
  %180 = add i64 %179, 1
  store i64 %180, i64* %10, align 8
  br label %71

181:                                              ; preds = %175, %71
  br label %182

182:                                              ; preds = %181
  %183 = call i32 @mbedtls_mpi_free(%struct.TYPE_27__* %15)
  %184 = call i32 @mbedtls_mpi_free(%struct.TYPE_27__* %16)
  %185 = call i32 @mbedtls_mpi_free(%struct.TYPE_27__* %17)
  %186 = call i32 @mbedtls_mpi_free(%struct.TYPE_27__* %18)
  %187 = call i32 @mbedtls_mpi_free(%struct.TYPE_27__* %19)
  %188 = load i32, i32* %8, align 4
  store i32 %188, i32* %4, align 4
  br label %189

189:                                              ; preds = %182, %126
  %190 = load i32, i32* %4, align 4
  ret i32 %190
}

declare dso_local i32 @mbedtls_mpi_init(%struct.TYPE_27__*) #1

declare dso_local i32 @MBEDTLS_MPI_CHK(i32) #1

declare dso_local i32 @mbedtls_mpi_sub_int(%struct.TYPE_27__*, %struct.TYPE_27__*, i32) #1

declare dso_local i64 @mbedtls_mpi_lsb(%struct.TYPE_27__*) #1

declare dso_local i32 @mbedtls_mpi_copy(%struct.TYPE_27__*, %struct.TYPE_27__*) #1

declare dso_local i32 @mbedtls_mpi_shift_r(%struct.TYPE_27__*, i64) #1

declare dso_local i64 @mbedtls_mpi_bitlen(%struct.TYPE_27__*) #1

declare dso_local i32 @mbedtls_mpi_fill_random(%struct.TYPE_27__*, i32, i32 (i8*, i8*, i64)*, i8*) #1

declare dso_local i64 @mbedtls_mpi_cmp_mpi(%struct.TYPE_27__*, %struct.TYPE_27__*) #1

declare dso_local i64 @mbedtls_mpi_cmp_int(%struct.TYPE_27__*, i32) #1

declare dso_local i32 @mbedtls_mpi_exp_mod(%struct.TYPE_27__*, %struct.TYPE_27__*, %struct.TYPE_27__*, %struct.TYPE_27__*, %struct.TYPE_27__*) #1

declare dso_local i32 @mbedtls_mpi_mul_mpi(%struct.TYPE_27__*, %struct.TYPE_27__*, %struct.TYPE_27__*) #1

declare dso_local i32 @mbedtls_mpi_mod_mpi(%struct.TYPE_27__*, %struct.TYPE_27__*, %struct.TYPE_27__*) #1

declare dso_local i32 @mbedtls_mpi_free(%struct.TYPE_27__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
