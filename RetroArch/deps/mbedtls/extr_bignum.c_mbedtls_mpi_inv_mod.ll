; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_bignum.c_mbedtls_mpi_inv_mod.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_bignum.c_mbedtls_mpi_inv_mod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { i32* }

@MBEDTLS_ERR_MPI_BAD_INPUT_DATA = common dso_local global i32 0, align 4
@MBEDTLS_ERR_MPI_NOT_ACCEPTABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_mpi_inv_mod(%struct.TYPE_26__* %0, %struct.TYPE_26__* %1, %struct.TYPE_26__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_26__*, align 8
  %6 = alloca %struct.TYPE_26__*, align 8
  %7 = alloca %struct.TYPE_26__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_26__, align 8
  %10 = alloca %struct.TYPE_26__, align 8
  %11 = alloca %struct.TYPE_26__, align 8
  %12 = alloca %struct.TYPE_26__, align 8
  %13 = alloca %struct.TYPE_26__, align 8
  %14 = alloca %struct.TYPE_26__, align 8
  %15 = alloca %struct.TYPE_26__, align 8
  %16 = alloca %struct.TYPE_26__, align 8
  %17 = alloca %struct.TYPE_26__, align 8
  store %struct.TYPE_26__* %0, %struct.TYPE_26__** %5, align 8
  store %struct.TYPE_26__* %1, %struct.TYPE_26__** %6, align 8
  store %struct.TYPE_26__* %2, %struct.TYPE_26__** %7, align 8
  %18 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %19 = call i64 @mbedtls_mpi_cmp_int(%struct.TYPE_26__* %18, i32 1)
  %20 = icmp sle i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load i32, i32* @MBEDTLS_ERR_MPI_BAD_INPUT_DATA, align 4
  store i32 %22, i32* %4, align 4
  br label %183

23:                                               ; preds = %3
  %24 = call i32 @mbedtls_mpi_init(%struct.TYPE_26__* %10)
  %25 = call i32 @mbedtls_mpi_init(%struct.TYPE_26__* %11)
  %26 = call i32 @mbedtls_mpi_init(%struct.TYPE_26__* %12)
  %27 = call i32 @mbedtls_mpi_init(%struct.TYPE_26__* %13)
  %28 = call i32 @mbedtls_mpi_init(%struct.TYPE_26__* %9)
  %29 = call i32 @mbedtls_mpi_init(%struct.TYPE_26__* %14)
  %30 = call i32 @mbedtls_mpi_init(%struct.TYPE_26__* %15)
  %31 = call i32 @mbedtls_mpi_init(%struct.TYPE_26__* %16)
  %32 = call i32 @mbedtls_mpi_init(%struct.TYPE_26__* %17)
  %33 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %34 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %35 = call i32 @mbedtls_mpi_gcd(%struct.TYPE_26__* %9, %struct.TYPE_26__* %33, %struct.TYPE_26__* %34)
  %36 = call i32 @MBEDTLS_MPI_CHK(i32 %35)
  %37 = call i64 @mbedtls_mpi_cmp_int(%struct.TYPE_26__* %9, i32 1)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %23
  %40 = load i32, i32* @MBEDTLS_ERR_MPI_NOT_ACCEPTABLE, align 4
  store i32 %40, i32* %8, align 4
  br label %172

41:                                               ; preds = %23
  %42 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %43 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %44 = call i32 @mbedtls_mpi_mod_mpi(%struct.TYPE_26__* %10, %struct.TYPE_26__* %42, %struct.TYPE_26__* %43)
  %45 = call i32 @MBEDTLS_MPI_CHK(i32 %44)
  %46 = call i32 @mbedtls_mpi_copy(%struct.TYPE_26__* %11, %struct.TYPE_26__* %10)
  %47 = call i32 @MBEDTLS_MPI_CHK(i32 %46)
  %48 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %49 = call i32 @mbedtls_mpi_copy(%struct.TYPE_26__* %14, %struct.TYPE_26__* %48)
  %50 = call i32 @MBEDTLS_MPI_CHK(i32 %49)
  %51 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %52 = call i32 @mbedtls_mpi_copy(%struct.TYPE_26__* %15, %struct.TYPE_26__* %51)
  %53 = call i32 @MBEDTLS_MPI_CHK(i32 %52)
  %54 = call i32 @mbedtls_mpi_lset(%struct.TYPE_26__* %12, i32 1)
  %55 = call i32 @MBEDTLS_MPI_CHK(i32 %54)
  %56 = call i32 @mbedtls_mpi_lset(%struct.TYPE_26__* %13, i32 0)
  %57 = call i32 @MBEDTLS_MPI_CHK(i32 %56)
  %58 = call i32 @mbedtls_mpi_lset(%struct.TYPE_26__* %16, i32 0)
  %59 = call i32 @MBEDTLS_MPI_CHK(i32 %58)
  %60 = call i32 @mbedtls_mpi_lset(%struct.TYPE_26__* %17, i32 1)
  %61 = call i32 @MBEDTLS_MPI_CHK(i32 %60)
  br label %62

62:                                               ; preds = %148, %41
  br label %63

63:                                               ; preds = %91, %62
  %64 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %11, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 0
  %67 = load i32, i32* %66, align 4
  %68 = and i32 %67, 1
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %96

70:                                               ; preds = %63
  %71 = call i32 @mbedtls_mpi_shift_r(%struct.TYPE_26__* %11, i32 1)
  %72 = call i32 @MBEDTLS_MPI_CHK(i32 %71)
  %73 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %12, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 0
  %76 = load i32, i32* %75, align 4
  %77 = and i32 %76, 1
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %86, label %79

79:                                               ; preds = %70
  %80 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %13, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 0
  %83 = load i32, i32* %82, align 4
  %84 = and i32 %83, 1
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %79, %70
  %87 = call i32 @mbedtls_mpi_add_mpi(%struct.TYPE_26__* %12, %struct.TYPE_26__* %12, %struct.TYPE_26__* %14)
  %88 = call i32 @MBEDTLS_MPI_CHK(i32 %87)
  %89 = call i32 @mbedtls_mpi_sub_mpi(%struct.TYPE_26__* %13, %struct.TYPE_26__* %13, %struct.TYPE_26__* %10)
  %90 = call i32 @MBEDTLS_MPI_CHK(i32 %89)
  br label %91

91:                                               ; preds = %86, %79
  %92 = call i32 @mbedtls_mpi_shift_r(%struct.TYPE_26__* %12, i32 1)
  %93 = call i32 @MBEDTLS_MPI_CHK(i32 %92)
  %94 = call i32 @mbedtls_mpi_shift_r(%struct.TYPE_26__* %13, i32 1)
  %95 = call i32 @MBEDTLS_MPI_CHK(i32 %94)
  br label %63

96:                                               ; preds = %63
  br label %97

97:                                               ; preds = %125, %96
  %98 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %15, i32 0, i32 0
  %99 = load i32*, i32** %98, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 0
  %101 = load i32, i32* %100, align 4
  %102 = and i32 %101, 1
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %130

104:                                              ; preds = %97
  %105 = call i32 @mbedtls_mpi_shift_r(%struct.TYPE_26__* %15, i32 1)
  %106 = call i32 @MBEDTLS_MPI_CHK(i32 %105)
  %107 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %16, i32 0, i32 0
  %108 = load i32*, i32** %107, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 0
  %110 = load i32, i32* %109, align 4
  %111 = and i32 %110, 1
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %120, label %113

113:                                              ; preds = %104
  %114 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %17, i32 0, i32 0
  %115 = load i32*, i32** %114, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 0
  %117 = load i32, i32* %116, align 4
  %118 = and i32 %117, 1
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %125

120:                                              ; preds = %113, %104
  %121 = call i32 @mbedtls_mpi_add_mpi(%struct.TYPE_26__* %16, %struct.TYPE_26__* %16, %struct.TYPE_26__* %14)
  %122 = call i32 @MBEDTLS_MPI_CHK(i32 %121)
  %123 = call i32 @mbedtls_mpi_sub_mpi(%struct.TYPE_26__* %17, %struct.TYPE_26__* %17, %struct.TYPE_26__* %10)
  %124 = call i32 @MBEDTLS_MPI_CHK(i32 %123)
  br label %125

125:                                              ; preds = %120, %113
  %126 = call i32 @mbedtls_mpi_shift_r(%struct.TYPE_26__* %16, i32 1)
  %127 = call i32 @MBEDTLS_MPI_CHK(i32 %126)
  %128 = call i32 @mbedtls_mpi_shift_r(%struct.TYPE_26__* %17, i32 1)
  %129 = call i32 @MBEDTLS_MPI_CHK(i32 %128)
  br label %97

130:                                              ; preds = %97
  %131 = call i64 @mbedtls_mpi_cmp_mpi(%struct.TYPE_26__* %11, %struct.TYPE_26__* %15)
  %132 = icmp sge i64 %131, 0
  br i1 %132, label %133, label %140

133:                                              ; preds = %130
  %134 = call i32 @mbedtls_mpi_sub_mpi(%struct.TYPE_26__* %11, %struct.TYPE_26__* %11, %struct.TYPE_26__* %15)
  %135 = call i32 @MBEDTLS_MPI_CHK(i32 %134)
  %136 = call i32 @mbedtls_mpi_sub_mpi(%struct.TYPE_26__* %12, %struct.TYPE_26__* %12, %struct.TYPE_26__* %16)
  %137 = call i32 @MBEDTLS_MPI_CHK(i32 %136)
  %138 = call i32 @mbedtls_mpi_sub_mpi(%struct.TYPE_26__* %13, %struct.TYPE_26__* %13, %struct.TYPE_26__* %17)
  %139 = call i32 @MBEDTLS_MPI_CHK(i32 %138)
  br label %147

140:                                              ; preds = %130
  %141 = call i32 @mbedtls_mpi_sub_mpi(%struct.TYPE_26__* %15, %struct.TYPE_26__* %15, %struct.TYPE_26__* %11)
  %142 = call i32 @MBEDTLS_MPI_CHK(i32 %141)
  %143 = call i32 @mbedtls_mpi_sub_mpi(%struct.TYPE_26__* %16, %struct.TYPE_26__* %16, %struct.TYPE_26__* %12)
  %144 = call i32 @MBEDTLS_MPI_CHK(i32 %143)
  %145 = call i32 @mbedtls_mpi_sub_mpi(%struct.TYPE_26__* %17, %struct.TYPE_26__* %17, %struct.TYPE_26__* %13)
  %146 = call i32 @MBEDTLS_MPI_CHK(i32 %145)
  br label %147

147:                                              ; preds = %140, %133
  br label %148

148:                                              ; preds = %147
  %149 = call i64 @mbedtls_mpi_cmp_int(%struct.TYPE_26__* %11, i32 0)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %62, label %151

151:                                              ; preds = %148
  br label %152

152:                                              ; preds = %155, %151
  %153 = call i64 @mbedtls_mpi_cmp_int(%struct.TYPE_26__* %16, i32 0)
  %154 = icmp slt i64 %153, 0
  br i1 %154, label %155, label %159

155:                                              ; preds = %152
  %156 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %157 = call i32 @mbedtls_mpi_add_mpi(%struct.TYPE_26__* %16, %struct.TYPE_26__* %16, %struct.TYPE_26__* %156)
  %158 = call i32 @MBEDTLS_MPI_CHK(i32 %157)
  br label %152

159:                                              ; preds = %152
  br label %160

160:                                              ; preds = %164, %159
  %161 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %162 = call i64 @mbedtls_mpi_cmp_mpi(%struct.TYPE_26__* %16, %struct.TYPE_26__* %161)
  %163 = icmp sge i64 %162, 0
  br i1 %163, label %164, label %168

164:                                              ; preds = %160
  %165 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %166 = call i32 @mbedtls_mpi_sub_mpi(%struct.TYPE_26__* %16, %struct.TYPE_26__* %16, %struct.TYPE_26__* %165)
  %167 = call i32 @MBEDTLS_MPI_CHK(i32 %166)
  br label %160

168:                                              ; preds = %160
  %169 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %170 = call i32 @mbedtls_mpi_copy(%struct.TYPE_26__* %169, %struct.TYPE_26__* %16)
  %171 = call i32 @MBEDTLS_MPI_CHK(i32 %170)
  br label %172

172:                                              ; preds = %168, %39
  %173 = call i32 @mbedtls_mpi_free(%struct.TYPE_26__* %10)
  %174 = call i32 @mbedtls_mpi_free(%struct.TYPE_26__* %11)
  %175 = call i32 @mbedtls_mpi_free(%struct.TYPE_26__* %12)
  %176 = call i32 @mbedtls_mpi_free(%struct.TYPE_26__* %13)
  %177 = call i32 @mbedtls_mpi_free(%struct.TYPE_26__* %9)
  %178 = call i32 @mbedtls_mpi_free(%struct.TYPE_26__* %14)
  %179 = call i32 @mbedtls_mpi_free(%struct.TYPE_26__* %15)
  %180 = call i32 @mbedtls_mpi_free(%struct.TYPE_26__* %16)
  %181 = call i32 @mbedtls_mpi_free(%struct.TYPE_26__* %17)
  %182 = load i32, i32* %8, align 4
  store i32 %182, i32* %4, align 4
  br label %183

183:                                              ; preds = %172, %21
  %184 = load i32, i32* %4, align 4
  ret i32 %184
}

declare dso_local i64 @mbedtls_mpi_cmp_int(%struct.TYPE_26__*, i32) #1

declare dso_local i32 @mbedtls_mpi_init(%struct.TYPE_26__*) #1

declare dso_local i32 @MBEDTLS_MPI_CHK(i32) #1

declare dso_local i32 @mbedtls_mpi_gcd(%struct.TYPE_26__*, %struct.TYPE_26__*, %struct.TYPE_26__*) #1

declare dso_local i32 @mbedtls_mpi_mod_mpi(%struct.TYPE_26__*, %struct.TYPE_26__*, %struct.TYPE_26__*) #1

declare dso_local i32 @mbedtls_mpi_copy(%struct.TYPE_26__*, %struct.TYPE_26__*) #1

declare dso_local i32 @mbedtls_mpi_lset(%struct.TYPE_26__*, i32) #1

declare dso_local i32 @mbedtls_mpi_shift_r(%struct.TYPE_26__*, i32) #1

declare dso_local i32 @mbedtls_mpi_add_mpi(%struct.TYPE_26__*, %struct.TYPE_26__*, %struct.TYPE_26__*) #1

declare dso_local i32 @mbedtls_mpi_sub_mpi(%struct.TYPE_26__*, %struct.TYPE_26__*, %struct.TYPE_26__*) #1

declare dso_local i64 @mbedtls_mpi_cmp_mpi(%struct.TYPE_26__*, %struct.TYPE_26__*) #1

declare dso_local i32 @mbedtls_mpi_free(%struct.TYPE_26__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
