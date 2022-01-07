; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_ecp.c_ecp_add_mixed.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_ecp.c_ecp_add_mixed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_31__ = type { %struct.TYPE_30__, %struct.TYPE_30__, %struct.TYPE_30__ }
%struct.TYPE_30__ = type { i32* }

@MBEDTLS_ERR_ECP_BAD_INPUT_DATA = common dso_local global i32 0, align 4
@add_count = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_31__*, %struct.TYPE_31__*, %struct.TYPE_31__*)* @ecp_add_mixed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecp_add_mixed(i32* %0, %struct.TYPE_31__* %1, %struct.TYPE_31__* %2, %struct.TYPE_31__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_31__*, align 8
  %8 = alloca %struct.TYPE_31__*, align 8
  %9 = alloca %struct.TYPE_31__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_30__, align 8
  %12 = alloca %struct.TYPE_30__, align 8
  %13 = alloca %struct.TYPE_30__, align 8
  %14 = alloca %struct.TYPE_30__, align 8
  %15 = alloca %struct.TYPE_30__, align 8
  %16 = alloca %struct.TYPE_30__, align 8
  %17 = alloca %struct.TYPE_30__, align 8
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_31__* %1, %struct.TYPE_31__** %7, align 8
  store %struct.TYPE_31__* %2, %struct.TYPE_31__** %8, align 8
  store %struct.TYPE_31__* %3, %struct.TYPE_31__** %9, align 8
  %18 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %18, i32 0, i32 0
  %20 = call i64 @mbedtls_mpi_cmp_int(%struct.TYPE_30__* %19, i32 0)
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %4
  %23 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %24 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %25 = call i32 @mbedtls_ecp_copy(%struct.TYPE_31__* %23, %struct.TYPE_31__* %24)
  store i32 %25, i32* %5, align 4
  br label %207

26:                                               ; preds = %4
  %27 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %28 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %41

32:                                               ; preds = %26
  %33 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %33, i32 0, i32 0
  %35 = call i64 @mbedtls_mpi_cmp_int(%struct.TYPE_30__* %34, i32 0)
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %32
  %38 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %39 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %40 = call i32 @mbedtls_ecp_copy(%struct.TYPE_31__* %38, %struct.TYPE_31__* %39)
  store i32 %40, i32* %5, align 4
  br label %207

41:                                               ; preds = %32, %26
  %42 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %47, label %54

47:                                               ; preds = %41
  %48 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %48, i32 0, i32 0
  %50 = call i64 @mbedtls_mpi_cmp_int(%struct.TYPE_30__* %49, i32 1)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %47
  %53 = load i32, i32* @MBEDTLS_ERR_ECP_BAD_INPUT_DATA, align 4
  store i32 %53, i32* %5, align 4
  br label %207

54:                                               ; preds = %47, %41
  %55 = call i32 @mbedtls_mpi_init(%struct.TYPE_30__* %11)
  %56 = call i32 @mbedtls_mpi_init(%struct.TYPE_30__* %12)
  %57 = call i32 @mbedtls_mpi_init(%struct.TYPE_30__* %13)
  %58 = call i32 @mbedtls_mpi_init(%struct.TYPE_30__* %14)
  %59 = call i32 @mbedtls_mpi_init(%struct.TYPE_30__* %15)
  %60 = call i32 @mbedtls_mpi_init(%struct.TYPE_30__* %16)
  %61 = call i32 @mbedtls_mpi_init(%struct.TYPE_30__* %17)
  %62 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %64, i32 0, i32 0
  %66 = call i32 @mbedtls_mpi_mul_mpi(%struct.TYPE_30__* %11, %struct.TYPE_30__* %63, %struct.TYPE_30__* %65)
  %67 = call i32 @MBEDTLS_MPI_CHK(i32 %66)
  %68 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %11, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = call i32 @MOD_MUL(i32* %69)
  %71 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %71, i32 0, i32 0
  %73 = call i32 @mbedtls_mpi_mul_mpi(%struct.TYPE_30__* %12, %struct.TYPE_30__* %11, %struct.TYPE_30__* %72)
  %74 = call i32 @MBEDTLS_MPI_CHK(i32 %73)
  %75 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %12, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = call i32 @MOD_MUL(i32* %76)
  %78 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %79 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %78, i32 0, i32 2
  %80 = call i32 @mbedtls_mpi_mul_mpi(%struct.TYPE_30__* %11, %struct.TYPE_30__* %11, %struct.TYPE_30__* %79)
  %81 = call i32 @MBEDTLS_MPI_CHK(i32 %80)
  %82 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %11, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = call i32 @MOD_MUL(i32* %83)
  %85 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %86 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %85, i32 0, i32 1
  %87 = call i32 @mbedtls_mpi_mul_mpi(%struct.TYPE_30__* %12, %struct.TYPE_30__* %12, %struct.TYPE_30__* %86)
  %88 = call i32 @MBEDTLS_MPI_CHK(i32 %87)
  %89 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %12, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = call i32 @MOD_MUL(i32* %90)
  %92 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %93 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %92, i32 0, i32 2
  %94 = call i32 @mbedtls_mpi_sub_mpi(%struct.TYPE_30__* %11, %struct.TYPE_30__* %11, %struct.TYPE_30__* %93)
  %95 = call i32 @MBEDTLS_MPI_CHK(i32 %94)
  %96 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %11, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = call i32 @MOD_SUB(i32* %97)
  %99 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %99, i32 0, i32 1
  %101 = call i32 @mbedtls_mpi_sub_mpi(%struct.TYPE_30__* %12, %struct.TYPE_30__* %12, %struct.TYPE_30__* %100)
  %102 = call i32 @MBEDTLS_MPI_CHK(i32 %101)
  %103 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %12, i32 0, i32 0
  %104 = load i32*, i32** %103, align 8
  %105 = call i32 @MOD_SUB(i32* %104)
  %106 = call i64 @mbedtls_mpi_cmp_int(%struct.TYPE_30__* %11, i32 0)
  %107 = icmp eq i64 %106, 0
  br i1 %107, label %108, label %119

108:                                              ; preds = %54
  %109 = call i64 @mbedtls_mpi_cmp_int(%struct.TYPE_30__* %12, i32 0)
  %110 = icmp eq i64 %109, 0
  br i1 %110, label %111, label %116

111:                                              ; preds = %108
  %112 = load i32*, i32** %6, align 8
  %113 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %114 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %115 = call i32 @ecp_double_jac(i32* %112, %struct.TYPE_31__* %113, %struct.TYPE_31__* %114)
  store i32 %115, i32* %10, align 4
  br label %198

116:                                              ; preds = %108
  %117 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %118 = call i32 @mbedtls_ecp_set_zero(%struct.TYPE_31__* %117)
  store i32 %118, i32* %10, align 4
  br label %198

119:                                              ; preds = %54
  %120 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %121 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %120, i32 0, i32 0
  %122 = call i32 @mbedtls_mpi_mul_mpi(%struct.TYPE_30__* %17, %struct.TYPE_30__* %121, %struct.TYPE_30__* %11)
  %123 = call i32 @MBEDTLS_MPI_CHK(i32 %122)
  %124 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %17, i32 0, i32 0
  %125 = load i32*, i32** %124, align 8
  %126 = call i32 @MOD_MUL(i32* %125)
  %127 = call i32 @mbedtls_mpi_mul_mpi(%struct.TYPE_30__* %13, %struct.TYPE_30__* %11, %struct.TYPE_30__* %11)
  %128 = call i32 @MBEDTLS_MPI_CHK(i32 %127)
  %129 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %13, i32 0, i32 0
  %130 = load i32*, i32** %129, align 8
  %131 = call i32 @MOD_MUL(i32* %130)
  %132 = call i32 @mbedtls_mpi_mul_mpi(%struct.TYPE_30__* %14, %struct.TYPE_30__* %13, %struct.TYPE_30__* %11)
  %133 = call i32 @MBEDTLS_MPI_CHK(i32 %132)
  %134 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %14, i32 0, i32 0
  %135 = load i32*, i32** %134, align 8
  %136 = call i32 @MOD_MUL(i32* %135)
  %137 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %138 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %137, i32 0, i32 2
  %139 = call i32 @mbedtls_mpi_mul_mpi(%struct.TYPE_30__* %13, %struct.TYPE_30__* %13, %struct.TYPE_30__* %138)
  %140 = call i32 @MBEDTLS_MPI_CHK(i32 %139)
  %141 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %13, i32 0, i32 0
  %142 = load i32*, i32** %141, align 8
  %143 = call i32 @MOD_MUL(i32* %142)
  %144 = call i32 @mbedtls_mpi_mul_int(%struct.TYPE_30__* %11, %struct.TYPE_30__* %13, i32 2)
  %145 = call i32 @MBEDTLS_MPI_CHK(i32 %144)
  %146 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %11, i32 0, i32 0
  %147 = load i32*, i32** %146, align 8
  %148 = call i32 @MOD_ADD(i32* %147)
  %149 = call i32 @mbedtls_mpi_mul_mpi(%struct.TYPE_30__* %15, %struct.TYPE_30__* %12, %struct.TYPE_30__* %12)
  %150 = call i32 @MBEDTLS_MPI_CHK(i32 %149)
  %151 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %15, i32 0, i32 0
  %152 = load i32*, i32** %151, align 8
  %153 = call i32 @MOD_MUL(i32* %152)
  %154 = call i32 @mbedtls_mpi_sub_mpi(%struct.TYPE_30__* %15, %struct.TYPE_30__* %15, %struct.TYPE_30__* %11)
  %155 = call i32 @MBEDTLS_MPI_CHK(i32 %154)
  %156 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %15, i32 0, i32 0
  %157 = load i32*, i32** %156, align 8
  %158 = call i32 @MOD_SUB(i32* %157)
  %159 = call i32 @mbedtls_mpi_sub_mpi(%struct.TYPE_30__* %15, %struct.TYPE_30__* %15, %struct.TYPE_30__* %14)
  %160 = call i32 @MBEDTLS_MPI_CHK(i32 %159)
  %161 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %15, i32 0, i32 0
  %162 = load i32*, i32** %161, align 8
  %163 = call i32 @MOD_SUB(i32* %162)
  %164 = call i32 @mbedtls_mpi_sub_mpi(%struct.TYPE_30__* %13, %struct.TYPE_30__* %13, %struct.TYPE_30__* %15)
  %165 = call i32 @MBEDTLS_MPI_CHK(i32 %164)
  %166 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %13, i32 0, i32 0
  %167 = load i32*, i32** %166, align 8
  %168 = call i32 @MOD_SUB(i32* %167)
  %169 = call i32 @mbedtls_mpi_mul_mpi(%struct.TYPE_30__* %13, %struct.TYPE_30__* %13, %struct.TYPE_30__* %12)
  %170 = call i32 @MBEDTLS_MPI_CHK(i32 %169)
  %171 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %13, i32 0, i32 0
  %172 = load i32*, i32** %171, align 8
  %173 = call i32 @MOD_MUL(i32* %172)
  %174 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %175 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %174, i32 0, i32 1
  %176 = call i32 @mbedtls_mpi_mul_mpi(%struct.TYPE_30__* %14, %struct.TYPE_30__* %14, %struct.TYPE_30__* %175)
  %177 = call i32 @MBEDTLS_MPI_CHK(i32 %176)
  %178 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %14, i32 0, i32 0
  %179 = load i32*, i32** %178, align 8
  %180 = call i32 @MOD_MUL(i32* %179)
  %181 = call i32 @mbedtls_mpi_sub_mpi(%struct.TYPE_30__* %16, %struct.TYPE_30__* %13, %struct.TYPE_30__* %14)
  %182 = call i32 @MBEDTLS_MPI_CHK(i32 %181)
  %183 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %16, i32 0, i32 0
  %184 = load i32*, i32** %183, align 8
  %185 = call i32 @MOD_SUB(i32* %184)
  %186 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %187 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %186, i32 0, i32 2
  %188 = call i32 @mbedtls_mpi_copy(%struct.TYPE_30__* %187, %struct.TYPE_30__* %15)
  %189 = call i32 @MBEDTLS_MPI_CHK(i32 %188)
  %190 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %191 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %190, i32 0, i32 1
  %192 = call i32 @mbedtls_mpi_copy(%struct.TYPE_30__* %191, %struct.TYPE_30__* %16)
  %193 = call i32 @MBEDTLS_MPI_CHK(i32 %192)
  %194 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %195 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %194, i32 0, i32 0
  %196 = call i32 @mbedtls_mpi_copy(%struct.TYPE_30__* %195, %struct.TYPE_30__* %17)
  %197 = call i32 @MBEDTLS_MPI_CHK(i32 %196)
  br label %198

198:                                              ; preds = %119, %116, %111
  %199 = call i32 @mbedtls_mpi_free(%struct.TYPE_30__* %11)
  %200 = call i32 @mbedtls_mpi_free(%struct.TYPE_30__* %12)
  %201 = call i32 @mbedtls_mpi_free(%struct.TYPE_30__* %13)
  %202 = call i32 @mbedtls_mpi_free(%struct.TYPE_30__* %14)
  %203 = call i32 @mbedtls_mpi_free(%struct.TYPE_30__* %15)
  %204 = call i32 @mbedtls_mpi_free(%struct.TYPE_30__* %16)
  %205 = call i32 @mbedtls_mpi_free(%struct.TYPE_30__* %17)
  %206 = load i32, i32* %10, align 4
  store i32 %206, i32* %5, align 4
  br label %207

207:                                              ; preds = %198, %52, %37, %22
  %208 = load i32, i32* %5, align 4
  ret i32 %208
}

declare dso_local i64 @mbedtls_mpi_cmp_int(%struct.TYPE_30__*, i32) #1

declare dso_local i32 @mbedtls_ecp_copy(%struct.TYPE_31__*, %struct.TYPE_31__*) #1

declare dso_local i32 @mbedtls_mpi_init(%struct.TYPE_30__*) #1

declare dso_local i32 @MBEDTLS_MPI_CHK(i32) #1

declare dso_local i32 @mbedtls_mpi_mul_mpi(%struct.TYPE_30__*, %struct.TYPE_30__*, %struct.TYPE_30__*) #1

declare dso_local i32 @MOD_MUL(i32*) #1

declare dso_local i32 @mbedtls_mpi_sub_mpi(%struct.TYPE_30__*, %struct.TYPE_30__*, %struct.TYPE_30__*) #1

declare dso_local i32 @MOD_SUB(i32*) #1

declare dso_local i32 @ecp_double_jac(i32*, %struct.TYPE_31__*, %struct.TYPE_31__*) #1

declare dso_local i32 @mbedtls_ecp_set_zero(%struct.TYPE_31__*) #1

declare dso_local i32 @mbedtls_mpi_mul_int(%struct.TYPE_30__*, %struct.TYPE_30__*, i32) #1

declare dso_local i32 @MOD_ADD(i32*) #1

declare dso_local i32 @mbedtls_mpi_copy(%struct.TYPE_30__*, %struct.TYPE_30__*) #1

declare dso_local i32 @mbedtls_mpi_free(%struct.TYPE_30__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
