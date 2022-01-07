; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_ecp.c_ecp_double_jac.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_ecp.c_ecp_double_jac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_33__ = type { %struct.TYPE_31__ }
%struct.TYPE_31__ = type { i32* }
%struct.TYPE_32__ = type { %struct.TYPE_31__, %struct.TYPE_31__, %struct.TYPE_31__ }

@dbl_count = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_33__*, %struct.TYPE_32__*, %struct.TYPE_32__*)* @ecp_double_jac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecp_double_jac(%struct.TYPE_33__* %0, %struct.TYPE_32__* %1, %struct.TYPE_32__* %2) #0 {
  %4 = alloca %struct.TYPE_33__*, align 8
  %5 = alloca %struct.TYPE_32__*, align 8
  %6 = alloca %struct.TYPE_32__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_31__, align 8
  %9 = alloca %struct.TYPE_31__, align 8
  %10 = alloca %struct.TYPE_31__, align 8
  %11 = alloca %struct.TYPE_31__, align 8
  store %struct.TYPE_33__* %0, %struct.TYPE_33__** %4, align 8
  store %struct.TYPE_32__* %1, %struct.TYPE_32__** %5, align 8
  store %struct.TYPE_32__* %2, %struct.TYPE_32__** %6, align 8
  %12 = call i32 @mbedtls_mpi_init(%struct.TYPE_31__* %8)
  %13 = call i32 @mbedtls_mpi_init(%struct.TYPE_31__* %9)
  %14 = call i32 @mbedtls_mpi_init(%struct.TYPE_31__* %10)
  %15 = call i32 @mbedtls_mpi_init(%struct.TYPE_31__* %11)
  %16 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %55

21:                                               ; preds = %3
  %22 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %24, i32 0, i32 0
  %26 = call i32 @mbedtls_mpi_mul_mpi(%struct.TYPE_31__* %9, %struct.TYPE_31__* %23, %struct.TYPE_31__* %25)
  %27 = call i32 @MBEDTLS_MPI_CHK(i32 %26)
  %28 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %9, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = call i32 @MOD_MUL(i32* %29)
  %31 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %31, i32 0, i32 2
  %33 = call i32 @mbedtls_mpi_add_mpi(%struct.TYPE_31__* %10, %struct.TYPE_31__* %32, %struct.TYPE_31__* %9)
  %34 = call i32 @MBEDTLS_MPI_CHK(i32 %33)
  %35 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %10, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = call i32 @MOD_ADD(i32* %36)
  %38 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %38, i32 0, i32 2
  %40 = call i32 @mbedtls_mpi_sub_mpi(%struct.TYPE_31__* %11, %struct.TYPE_31__* %39, %struct.TYPE_31__* %9)
  %41 = call i32 @MBEDTLS_MPI_CHK(i32 %40)
  %42 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %11, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = call i32 @MOD_SUB(i32* %43)
  %45 = call i32 @mbedtls_mpi_mul_mpi(%struct.TYPE_31__* %9, %struct.TYPE_31__* %10, %struct.TYPE_31__* %11)
  %46 = call i32 @MBEDTLS_MPI_CHK(i32 %45)
  %47 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %9, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = call i32 @MOD_MUL(i32* %48)
  %50 = call i32 @mbedtls_mpi_mul_int(%struct.TYPE_31__* %8, %struct.TYPE_31__* %9, i32 3)
  %51 = call i32 @MBEDTLS_MPI_CHK(i32 %50)
  %52 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %8, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = call i32 @MOD_ADD(i32* %53)
  br label %102

55:                                               ; preds = %3
  %56 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %56, i32 0, i32 2
  %58 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %58, i32 0, i32 2
  %60 = call i32 @mbedtls_mpi_mul_mpi(%struct.TYPE_31__* %9, %struct.TYPE_31__* %57, %struct.TYPE_31__* %59)
  %61 = call i32 @MBEDTLS_MPI_CHK(i32 %60)
  %62 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %9, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = call i32 @MOD_MUL(i32* %63)
  %65 = call i32 @mbedtls_mpi_mul_int(%struct.TYPE_31__* %8, %struct.TYPE_31__* %9, i32 3)
  %66 = call i32 @MBEDTLS_MPI_CHK(i32 %65)
  %67 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %8, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = call i32 @MOD_ADD(i32* %68)
  %70 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %70, i32 0, i32 0
  %72 = call i64 @mbedtls_mpi_cmp_int(%struct.TYPE_31__* %71, i32 0)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %101

74:                                               ; preds = %55
  %75 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %77, i32 0, i32 0
  %79 = call i32 @mbedtls_mpi_mul_mpi(%struct.TYPE_31__* %9, %struct.TYPE_31__* %76, %struct.TYPE_31__* %78)
  %80 = call i32 @MBEDTLS_MPI_CHK(i32 %79)
  %81 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %9, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = call i32 @MOD_MUL(i32* %82)
  %84 = call i32 @mbedtls_mpi_mul_mpi(%struct.TYPE_31__* %10, %struct.TYPE_31__* %9, %struct.TYPE_31__* %9)
  %85 = call i32 @MBEDTLS_MPI_CHK(i32 %84)
  %86 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %10, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = call i32 @MOD_MUL(i32* %87)
  %89 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %89, i32 0, i32 0
  %91 = call i32 @mbedtls_mpi_mul_mpi(%struct.TYPE_31__* %9, %struct.TYPE_31__* %10, %struct.TYPE_31__* %90)
  %92 = call i32 @MBEDTLS_MPI_CHK(i32 %91)
  %93 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %9, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = call i32 @MOD_MUL(i32* %94)
  %96 = call i32 @mbedtls_mpi_add_mpi(%struct.TYPE_31__* %8, %struct.TYPE_31__* %8, %struct.TYPE_31__* %9)
  %97 = call i32 @MBEDTLS_MPI_CHK(i32 %96)
  %98 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %8, i32 0, i32 0
  %99 = load i32*, i32** %98, align 8
  %100 = call i32 @MOD_ADD(i32* %99)
  br label %101

101:                                              ; preds = %74, %55
  br label %102

102:                                              ; preds = %101, %21
  %103 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %103, i32 0, i32 1
  %105 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %105, i32 0, i32 1
  %107 = call i32 @mbedtls_mpi_mul_mpi(%struct.TYPE_31__* %10, %struct.TYPE_31__* %104, %struct.TYPE_31__* %106)
  %108 = call i32 @MBEDTLS_MPI_CHK(i32 %107)
  %109 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %10, i32 0, i32 0
  %110 = load i32*, i32** %109, align 8
  %111 = call i32 @MOD_MUL(i32* %110)
  %112 = call i32 @mbedtls_mpi_shift_l(%struct.TYPE_31__* %10, i32 1)
  %113 = call i32 @MBEDTLS_MPI_CHK(i32 %112)
  %114 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %10, i32 0, i32 0
  %115 = load i32*, i32** %114, align 8
  %116 = call i32 @MOD_ADD(i32* %115)
  %117 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %117, i32 0, i32 2
  %119 = call i32 @mbedtls_mpi_mul_mpi(%struct.TYPE_31__* %9, %struct.TYPE_31__* %118, %struct.TYPE_31__* %10)
  %120 = call i32 @MBEDTLS_MPI_CHK(i32 %119)
  %121 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %9, i32 0, i32 0
  %122 = load i32*, i32** %121, align 8
  %123 = call i32 @MOD_MUL(i32* %122)
  %124 = call i32 @mbedtls_mpi_shift_l(%struct.TYPE_31__* %9, i32 1)
  %125 = call i32 @MBEDTLS_MPI_CHK(i32 %124)
  %126 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %9, i32 0, i32 0
  %127 = load i32*, i32** %126, align 8
  %128 = call i32 @MOD_ADD(i32* %127)
  %129 = call i32 @mbedtls_mpi_mul_mpi(%struct.TYPE_31__* %11, %struct.TYPE_31__* %10, %struct.TYPE_31__* %10)
  %130 = call i32 @MBEDTLS_MPI_CHK(i32 %129)
  %131 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %11, i32 0, i32 0
  %132 = load i32*, i32** %131, align 8
  %133 = call i32 @MOD_MUL(i32* %132)
  %134 = call i32 @mbedtls_mpi_shift_l(%struct.TYPE_31__* %11, i32 1)
  %135 = call i32 @MBEDTLS_MPI_CHK(i32 %134)
  %136 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %11, i32 0, i32 0
  %137 = load i32*, i32** %136, align 8
  %138 = call i32 @MOD_ADD(i32* %137)
  %139 = call i32 @mbedtls_mpi_mul_mpi(%struct.TYPE_31__* %10, %struct.TYPE_31__* %8, %struct.TYPE_31__* %8)
  %140 = call i32 @MBEDTLS_MPI_CHK(i32 %139)
  %141 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %10, i32 0, i32 0
  %142 = load i32*, i32** %141, align 8
  %143 = call i32 @MOD_MUL(i32* %142)
  %144 = call i32 @mbedtls_mpi_sub_mpi(%struct.TYPE_31__* %10, %struct.TYPE_31__* %10, %struct.TYPE_31__* %9)
  %145 = call i32 @MBEDTLS_MPI_CHK(i32 %144)
  %146 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %10, i32 0, i32 0
  %147 = load i32*, i32** %146, align 8
  %148 = call i32 @MOD_SUB(i32* %147)
  %149 = call i32 @mbedtls_mpi_sub_mpi(%struct.TYPE_31__* %10, %struct.TYPE_31__* %10, %struct.TYPE_31__* %9)
  %150 = call i32 @MBEDTLS_MPI_CHK(i32 %149)
  %151 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %10, i32 0, i32 0
  %152 = load i32*, i32** %151, align 8
  %153 = call i32 @MOD_SUB(i32* %152)
  %154 = call i32 @mbedtls_mpi_sub_mpi(%struct.TYPE_31__* %9, %struct.TYPE_31__* %9, %struct.TYPE_31__* %10)
  %155 = call i32 @MBEDTLS_MPI_CHK(i32 %154)
  %156 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %9, i32 0, i32 0
  %157 = load i32*, i32** %156, align 8
  %158 = call i32 @MOD_SUB(i32* %157)
  %159 = call i32 @mbedtls_mpi_mul_mpi(%struct.TYPE_31__* %9, %struct.TYPE_31__* %9, %struct.TYPE_31__* %8)
  %160 = call i32 @MBEDTLS_MPI_CHK(i32 %159)
  %161 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %9, i32 0, i32 0
  %162 = load i32*, i32** %161, align 8
  %163 = call i32 @MOD_MUL(i32* %162)
  %164 = call i32 @mbedtls_mpi_sub_mpi(%struct.TYPE_31__* %9, %struct.TYPE_31__* %9, %struct.TYPE_31__* %11)
  %165 = call i32 @MBEDTLS_MPI_CHK(i32 %164)
  %166 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %9, i32 0, i32 0
  %167 = load i32*, i32** %166, align 8
  %168 = call i32 @MOD_SUB(i32* %167)
  %169 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %170 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %169, i32 0, i32 1
  %171 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %172 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %171, i32 0, i32 0
  %173 = call i32 @mbedtls_mpi_mul_mpi(%struct.TYPE_31__* %11, %struct.TYPE_31__* %170, %struct.TYPE_31__* %172)
  %174 = call i32 @MBEDTLS_MPI_CHK(i32 %173)
  %175 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %11, i32 0, i32 0
  %176 = load i32*, i32** %175, align 8
  %177 = call i32 @MOD_MUL(i32* %176)
  %178 = call i32 @mbedtls_mpi_shift_l(%struct.TYPE_31__* %11, i32 1)
  %179 = call i32 @MBEDTLS_MPI_CHK(i32 %178)
  %180 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %11, i32 0, i32 0
  %181 = load i32*, i32** %180, align 8
  %182 = call i32 @MOD_ADD(i32* %181)
  %183 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %184 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %183, i32 0, i32 2
  %185 = call i32 @mbedtls_mpi_copy(%struct.TYPE_31__* %184, %struct.TYPE_31__* %10)
  %186 = call i32 @MBEDTLS_MPI_CHK(i32 %185)
  %187 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %188 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %187, i32 0, i32 1
  %189 = call i32 @mbedtls_mpi_copy(%struct.TYPE_31__* %188, %struct.TYPE_31__* %9)
  %190 = call i32 @MBEDTLS_MPI_CHK(i32 %189)
  %191 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %192 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %191, i32 0, i32 0
  %193 = call i32 @mbedtls_mpi_copy(%struct.TYPE_31__* %192, %struct.TYPE_31__* %11)
  %194 = call i32 @MBEDTLS_MPI_CHK(i32 %193)
  br label %195

195:                                              ; preds = %102
  %196 = call i32 @mbedtls_mpi_free(%struct.TYPE_31__* %8)
  %197 = call i32 @mbedtls_mpi_free(%struct.TYPE_31__* %9)
  %198 = call i32 @mbedtls_mpi_free(%struct.TYPE_31__* %10)
  %199 = call i32 @mbedtls_mpi_free(%struct.TYPE_31__* %11)
  %200 = load i32, i32* %7, align 4
  ret i32 %200
}

declare dso_local i32 @mbedtls_mpi_init(%struct.TYPE_31__*) #1

declare dso_local i32 @MBEDTLS_MPI_CHK(i32) #1

declare dso_local i32 @mbedtls_mpi_mul_mpi(%struct.TYPE_31__*, %struct.TYPE_31__*, %struct.TYPE_31__*) #1

declare dso_local i32 @MOD_MUL(i32*) #1

declare dso_local i32 @mbedtls_mpi_add_mpi(%struct.TYPE_31__*, %struct.TYPE_31__*, %struct.TYPE_31__*) #1

declare dso_local i32 @MOD_ADD(i32*) #1

declare dso_local i32 @mbedtls_mpi_sub_mpi(%struct.TYPE_31__*, %struct.TYPE_31__*, %struct.TYPE_31__*) #1

declare dso_local i32 @MOD_SUB(i32*) #1

declare dso_local i32 @mbedtls_mpi_mul_int(%struct.TYPE_31__*, %struct.TYPE_31__*, i32) #1

declare dso_local i64 @mbedtls_mpi_cmp_int(%struct.TYPE_31__*, i32) #1

declare dso_local i32 @mbedtls_mpi_shift_l(%struct.TYPE_31__*, i32) #1

declare dso_local i32 @mbedtls_mpi_copy(%struct.TYPE_31__*, %struct.TYPE_31__*) #1

declare dso_local i32 @mbedtls_mpi_free(%struct.TYPE_31__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
