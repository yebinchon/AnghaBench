; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_ecp.c_ecp_double_add_mxz.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_ecp.c_ecp_double_add_mxz.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, %struct.TYPE_14__*, %struct.TYPE_14__*, %struct.TYPE_14__*, %struct.TYPE_14__*, i32*)* @ecp_double_add_mxz to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecp_double_add_mxz(%struct.TYPE_15__* %0, %struct.TYPE_14__* %1, %struct.TYPE_14__* %2, %struct.TYPE_14__* %3, %struct.TYPE_14__* %4, i32* %5) #0 {
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca %struct.TYPE_14__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %7, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %8, align 8
  store %struct.TYPE_14__* %2, %struct.TYPE_14__** %9, align 8
  store %struct.TYPE_14__* %3, %struct.TYPE_14__** %10, align 8
  store %struct.TYPE_14__* %4, %struct.TYPE_14__** %11, align 8
  store i32* %5, i32** %12, align 8
  %23 = call i32 @mbedtls_mpi_init(i32* %14)
  %24 = call i32 @mbedtls_mpi_init(i32* %15)
  %25 = call i32 @mbedtls_mpi_init(i32* %16)
  %26 = call i32 @mbedtls_mpi_init(i32* %17)
  %27 = call i32 @mbedtls_mpi_init(i32* %18)
  %28 = call i32 @mbedtls_mpi_init(i32* %19)
  %29 = call i32 @mbedtls_mpi_init(i32* %20)
  %30 = call i32 @mbedtls_mpi_init(i32* %21)
  %31 = call i32 @mbedtls_mpi_init(i32* %22)
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 0
  %36 = call i32 @mbedtls_mpi_add_mpi(i32* %14, i32* %33, i32* %35)
  %37 = call i32 @MBEDTLS_MPI_CHK(i32 %36)
  %38 = load i32, i32* %14, align 4
  %39 = call i32 @MOD_ADD(i32 %38)
  %40 = call i32 @mbedtls_mpi_mul_mpi(i32* %15, i32* %14, i32* %14)
  %41 = call i32 @MBEDTLS_MPI_CHK(i32 %40)
  %42 = load i32, i32* %15, align 4
  %43 = call i32 @MOD_MUL(i32 %42)
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 0
  %48 = call i32 @mbedtls_mpi_sub_mpi(i32* %16, i32* %45, i32* %47)
  %49 = call i32 @MBEDTLS_MPI_CHK(i32 %48)
  %50 = load i32, i32* %16, align 4
  %51 = call i32 @MOD_SUB(i32 %50)
  %52 = call i32 @mbedtls_mpi_mul_mpi(i32* %17, i32* %16, i32* %16)
  %53 = call i32 @MBEDTLS_MPI_CHK(i32 %52)
  %54 = load i32, i32* %17, align 4
  %55 = call i32 @MOD_MUL(i32 %54)
  %56 = call i32 @mbedtls_mpi_sub_mpi(i32* %18, i32* %15, i32* %17)
  %57 = call i32 @MBEDTLS_MPI_CHK(i32 %56)
  %58 = load i32, i32* %18, align 4
  %59 = call i32 @MOD_SUB(i32 %58)
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 1
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 0
  %64 = call i32 @mbedtls_mpi_add_mpi(i32* %19, i32* %61, i32* %63)
  %65 = call i32 @MBEDTLS_MPI_CHK(i32 %64)
  %66 = load i32, i32* %19, align 4
  %67 = call i32 @MOD_ADD(i32 %66)
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 0, i32 1
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 0
  %72 = call i32 @mbedtls_mpi_sub_mpi(i32* %20, i32* %69, i32* %71)
  %73 = call i32 @MBEDTLS_MPI_CHK(i32 %72)
  %74 = load i32, i32* %20, align 4
  %75 = call i32 @MOD_SUB(i32 %74)
  %76 = call i32 @mbedtls_mpi_mul_mpi(i32* %21, i32* %20, i32* %14)
  %77 = call i32 @MBEDTLS_MPI_CHK(i32 %76)
  %78 = load i32, i32* %21, align 4
  %79 = call i32 @MOD_MUL(i32 %78)
  %80 = call i32 @mbedtls_mpi_mul_mpi(i32* %22, i32* %19, i32* %16)
  %81 = call i32 @MBEDTLS_MPI_CHK(i32 %80)
  %82 = load i32, i32* %22, align 4
  %83 = call i32 @MOD_MUL(i32 %82)
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 1
  %86 = call i32 @mbedtls_mpi_add_mpi(i32* %85, i32* %21, i32* %22)
  %87 = call i32 @MBEDTLS_MPI_CHK(i32 %86)
  %88 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %89 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @MOD_MUL(i32 %90)
  %92 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %92, i32 0, i32 1
  %94 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %95 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %94, i32 0, i32 1
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 1
  %98 = call i32 @mbedtls_mpi_mul_mpi(i32* %93, i32* %95, i32* %97)
  %99 = call i32 @MBEDTLS_MPI_CHK(i32 %98)
  %100 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @MOD_MUL(i32 %102)
  %104 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %105 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %104, i32 0, i32 0
  %106 = call i32 @mbedtls_mpi_sub_mpi(i32* %105, i32* %21, i32* %22)
  %107 = call i32 @MBEDTLS_MPI_CHK(i32 %106)
  %108 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %109 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @MOD_SUB(i32 %110)
  %112 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %113 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %112, i32 0, i32 0
  %114 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %115 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %114, i32 0, i32 0
  %116 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %117 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %116, i32 0, i32 0
  %118 = call i32 @mbedtls_mpi_mul_mpi(i32* %113, i32* %115, i32* %117)
  %119 = call i32 @MBEDTLS_MPI_CHK(i32 %118)
  %120 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %121 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @MOD_MUL(i32 %122)
  %124 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %125 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %124, i32 0, i32 0
  %126 = load i32*, i32** %12, align 8
  %127 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %128 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %127, i32 0, i32 0
  %129 = call i32 @mbedtls_mpi_mul_mpi(i32* %125, i32* %126, i32* %128)
  %130 = call i32 @MBEDTLS_MPI_CHK(i32 %129)
  %131 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %132 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @MOD_MUL(i32 %133)
  %135 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %136 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %135, i32 0, i32 1
  %137 = call i32 @mbedtls_mpi_mul_mpi(i32* %136, i32* %15, i32* %17)
  %138 = call i32 @MBEDTLS_MPI_CHK(i32 %137)
  %139 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %140 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @MOD_MUL(i32 %141)
  %143 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %144 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %143, i32 0, i32 0
  %145 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %146 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %145, i32 0, i32 0
  %147 = call i32 @mbedtls_mpi_mul_mpi(i32* %144, i32* %146, i32* %18)
  %148 = call i32 @MBEDTLS_MPI_CHK(i32 %147)
  %149 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %150 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @MOD_MUL(i32 %151)
  %153 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %154 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %153, i32 0, i32 0
  %155 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %156 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %155, i32 0, i32 0
  %157 = call i32 @mbedtls_mpi_add_mpi(i32* %154, i32* %17, i32* %156)
  %158 = call i32 @MBEDTLS_MPI_CHK(i32 %157)
  %159 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %160 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @MOD_ADD(i32 %161)
  %163 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %164 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %163, i32 0, i32 0
  %165 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %166 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %165, i32 0, i32 0
  %167 = call i32 @mbedtls_mpi_mul_mpi(i32* %164, i32* %18, i32* %166)
  %168 = call i32 @MBEDTLS_MPI_CHK(i32 %167)
  %169 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %170 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = call i32 @MOD_MUL(i32 %171)
  br label %173

173:                                              ; preds = %6
  %174 = call i32 @mbedtls_mpi_free(i32* %14)
  %175 = call i32 @mbedtls_mpi_free(i32* %15)
  %176 = call i32 @mbedtls_mpi_free(i32* %16)
  %177 = call i32 @mbedtls_mpi_free(i32* %17)
  %178 = call i32 @mbedtls_mpi_free(i32* %18)
  %179 = call i32 @mbedtls_mpi_free(i32* %19)
  %180 = call i32 @mbedtls_mpi_free(i32* %20)
  %181 = call i32 @mbedtls_mpi_free(i32* %21)
  %182 = call i32 @mbedtls_mpi_free(i32* %22)
  %183 = load i32, i32* %13, align 4
  ret i32 %183
}

declare dso_local i32 @mbedtls_mpi_init(i32*) #1

declare dso_local i32 @MBEDTLS_MPI_CHK(i32) #1

declare dso_local i32 @mbedtls_mpi_add_mpi(i32*, i32*, i32*) #1

declare dso_local i32 @MOD_ADD(i32) #1

declare dso_local i32 @mbedtls_mpi_mul_mpi(i32*, i32*, i32*) #1

declare dso_local i32 @MOD_MUL(i32) #1

declare dso_local i32 @mbedtls_mpi_sub_mpi(i32*, i32*, i32*) #1

declare dso_local i32 @MOD_SUB(i32) #1

declare dso_local i32 @mbedtls_mpi_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
