; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_ecp.c_ecp_normalize_jac_many.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_ecp.c_ecp_normalize_jac_many.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_11__ = type { i32, i32, i32 }

@MBEDTLS_ERR_ECP_ALLOC_FAILED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, %struct.TYPE_11__**, i64)* @ecp_normalize_jac_many to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecp_normalize_jac_many(%struct.TYPE_12__* %0, %struct.TYPE_11__** %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.TYPE_11__**, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store %struct.TYPE_11__** %1, %struct.TYPE_11__*** %6, align 8
  store i64 %2, i64* %7, align 8
  %14 = load i64, i64* %7, align 8
  %15 = icmp ult i64 %14, 2
  br i1 %15, label %16, label %21

16:                                               ; preds = %3
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %18 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %6, align 8
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %20 = call i32 @ecp_normalize_jac(%struct.TYPE_12__* %17, %struct.TYPE_11__* %19)
  store i32 %20, i32* %4, align 4
  br label %220

21:                                               ; preds = %3
  %22 = load i64, i64* %7, align 8
  %23 = call i64 @mbedtls_calloc(i64 %22, i32 4)
  %24 = inttoptr i64 %23 to i32*
  store i32* %24, i32** %10, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = load i32, i32* @MBEDTLS_ERR_ECP_ALLOC_FAILED, align 4
  store i32 %27, i32* %4, align 4
  br label %220

28:                                               ; preds = %21
  %29 = call i32 @mbedtls_mpi_init(i32* %11)
  %30 = call i32 @mbedtls_mpi_init(i32* %12)
  %31 = call i32 @mbedtls_mpi_init(i32* %13)
  %32 = load i32*, i32** %10, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  %34 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %34, i64 0
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 0
  %38 = call i32 @mbedtls_mpi_copy(i32* %33, i32* %37)
  %39 = call i32 @MBEDTLS_MPI_CHK(i32 %38)
  store i64 1, i64* %9, align 8
  br label %40

40:                                               ; preds = %64, %28
  %41 = load i64, i64* %9, align 8
  %42 = load i64, i64* %7, align 8
  %43 = icmp ult i64 %41, %42
  br i1 %43, label %44, label %67

44:                                               ; preds = %40
  %45 = load i32*, i32** %10, align 8
  %46 = load i64, i64* %9, align 8
  %47 = getelementptr inbounds i32, i32* %45, i64 %46
  %48 = load i32*, i32** %10, align 8
  %49 = load i64, i64* %9, align 8
  %50 = sub i64 %49, 1
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %6, align 8
  %53 = load i64, i64* %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %52, i64 %53
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 0
  %57 = call i32 @mbedtls_mpi_mul_mpi(i32* %47, i32* %51, i32* %56)
  %58 = call i32 @MBEDTLS_MPI_CHK(i32 %57)
  %59 = load i32*, i32** %10, align 8
  %60 = load i64, i64* %9, align 8
  %61 = getelementptr inbounds i32, i32* %59, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @MOD_MUL(i32 %62)
  br label %64

64:                                               ; preds = %44
  %65 = load i64, i64* %9, align 8
  %66 = add i64 %65, 1
  store i64 %66, i64* %9, align 8
  br label %40

67:                                               ; preds = %40
  %68 = load i32*, i32** %10, align 8
  %69 = load i64, i64* %7, align 8
  %70 = sub i64 %69, 1
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 0
  %74 = call i32 @mbedtls_mpi_inv_mod(i32* %11, i32* %71, %struct.TYPE_13__* %73)
  %75 = call i32 @MBEDTLS_MPI_CHK(i32 %74)
  %76 = load i64, i64* %7, align 8
  %77 = sub i64 %76, 1
  store i64 %77, i64* %9, align 8
  br label %78

78:                                               ; preds = %196, %67
  %79 = load i64, i64* %9, align 8
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %78
  %82 = call i32 @mbedtls_mpi_copy(i32* %12, i32* %11)
  %83 = call i32 @MBEDTLS_MPI_CHK(i32 %82)
  br label %102

84:                                               ; preds = %78
  %85 = load i32*, i32** %10, align 8
  %86 = load i64, i64* %9, align 8
  %87 = sub i64 %86, 1
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  %89 = call i32 @mbedtls_mpi_mul_mpi(i32* %12, i32* %11, i32* %88)
  %90 = call i32 @MBEDTLS_MPI_CHK(i32 %89)
  %91 = load i32, i32* %12, align 4
  %92 = call i32 @MOD_MUL(i32 %91)
  %93 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %6, align 8
  %94 = load i64, i64* %9, align 8
  %95 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %93, i64 %94
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 0
  %98 = call i32 @mbedtls_mpi_mul_mpi(i32* %11, i32* %11, i32* %97)
  %99 = call i32 @MBEDTLS_MPI_CHK(i32 %98)
  %100 = load i32, i32* %11, align 4
  %101 = call i32 @MOD_MUL(i32 %100)
  br label %102

102:                                              ; preds = %84, %81
  %103 = call i32 @mbedtls_mpi_mul_mpi(i32* %13, i32* %12, i32* %12)
  %104 = call i32 @MBEDTLS_MPI_CHK(i32 %103)
  %105 = load i32, i32* %13, align 4
  %106 = call i32 @MOD_MUL(i32 %105)
  %107 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %6, align 8
  %108 = load i64, i64* %9, align 8
  %109 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %107, i64 %108
  %110 = load %struct.TYPE_11__*, %struct.TYPE_11__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 2
  %112 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %6, align 8
  %113 = load i64, i64* %9, align 8
  %114 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %112, i64 %113
  %115 = load %struct.TYPE_11__*, %struct.TYPE_11__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i32 0, i32 2
  %117 = call i32 @mbedtls_mpi_mul_mpi(i32* %111, i32* %116, i32* %13)
  %118 = call i32 @MBEDTLS_MPI_CHK(i32 %117)
  %119 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %6, align 8
  %120 = load i64, i64* %9, align 8
  %121 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %119, i64 %120
  %122 = load %struct.TYPE_11__*, %struct.TYPE_11__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @MOD_MUL(i32 %124)
  %126 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %6, align 8
  %127 = load i64, i64* %9, align 8
  %128 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %126, i64 %127
  %129 = load %struct.TYPE_11__*, %struct.TYPE_11__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %129, i32 0, i32 1
  %131 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %6, align 8
  %132 = load i64, i64* %9, align 8
  %133 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %131, i64 %132
  %134 = load %struct.TYPE_11__*, %struct.TYPE_11__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %134, i32 0, i32 1
  %136 = call i32 @mbedtls_mpi_mul_mpi(i32* %130, i32* %135, i32* %13)
  %137 = call i32 @MBEDTLS_MPI_CHK(i32 %136)
  %138 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %6, align 8
  %139 = load i64, i64* %9, align 8
  %140 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %138, i64 %139
  %141 = load %struct.TYPE_11__*, %struct.TYPE_11__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @MOD_MUL(i32 %143)
  %145 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %6, align 8
  %146 = load i64, i64* %9, align 8
  %147 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %145, i64 %146
  %148 = load %struct.TYPE_11__*, %struct.TYPE_11__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %148, i32 0, i32 1
  %150 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %6, align 8
  %151 = load i64, i64* %9, align 8
  %152 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %150, i64 %151
  %153 = load %struct.TYPE_11__*, %struct.TYPE_11__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %153, i32 0, i32 1
  %155 = call i32 @mbedtls_mpi_mul_mpi(i32* %149, i32* %154, i32* %12)
  %156 = call i32 @MBEDTLS_MPI_CHK(i32 %155)
  %157 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %6, align 8
  %158 = load i64, i64* %9, align 8
  %159 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %157, i64 %158
  %160 = load %struct.TYPE_11__*, %struct.TYPE_11__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @MOD_MUL(i32 %162)
  %164 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %6, align 8
  %165 = load i64, i64* %9, align 8
  %166 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %164, i64 %165
  %167 = load %struct.TYPE_11__*, %struct.TYPE_11__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %167, i32 0, i32 2
  %169 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %170 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = call i32 @mbedtls_mpi_shrink(i32* %168, i32 %172)
  %174 = call i32 @MBEDTLS_MPI_CHK(i32 %173)
  %175 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %6, align 8
  %176 = load i64, i64* %9, align 8
  %177 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %175, i64 %176
  %178 = load %struct.TYPE_11__*, %struct.TYPE_11__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %178, i32 0, i32 1
  %180 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %181 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = call i32 @mbedtls_mpi_shrink(i32* %179, i32 %183)
  %185 = call i32 @MBEDTLS_MPI_CHK(i32 %184)
  %186 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %6, align 8
  %187 = load i64, i64* %9, align 8
  %188 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %186, i64 %187
  %189 = load %struct.TYPE_11__*, %struct.TYPE_11__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %189, i32 0, i32 0
  %191 = call i32 @mbedtls_mpi_free(i32* %190)
  %192 = load i64, i64* %9, align 8
  %193 = icmp eq i64 %192, 0
  br i1 %193, label %194, label %195

194:                                              ; preds = %102
  br label %199

195:                                              ; preds = %102
  br label %196

196:                                              ; preds = %195
  %197 = load i64, i64* %9, align 8
  %198 = add i64 %197, -1
  store i64 %198, i64* %9, align 8
  br label %78

199:                                              ; preds = %194
  br label %200

200:                                              ; preds = %199
  %201 = call i32 @mbedtls_mpi_free(i32* %11)
  %202 = call i32 @mbedtls_mpi_free(i32* %12)
  %203 = call i32 @mbedtls_mpi_free(i32* %13)
  store i64 0, i64* %9, align 8
  br label %204

204:                                              ; preds = %213, %200
  %205 = load i64, i64* %9, align 8
  %206 = load i64, i64* %7, align 8
  %207 = icmp ult i64 %205, %206
  br i1 %207, label %208, label %216

208:                                              ; preds = %204
  %209 = load i32*, i32** %10, align 8
  %210 = load i64, i64* %9, align 8
  %211 = getelementptr inbounds i32, i32* %209, i64 %210
  %212 = call i32 @mbedtls_mpi_free(i32* %211)
  br label %213

213:                                              ; preds = %208
  %214 = load i64, i64* %9, align 8
  %215 = add i64 %214, 1
  store i64 %215, i64* %9, align 8
  br label %204

216:                                              ; preds = %204
  %217 = load i32*, i32** %10, align 8
  %218 = call i32 @mbedtls_free(i32* %217)
  %219 = load i32, i32* %8, align 4
  store i32 %219, i32* %4, align 4
  br label %220

220:                                              ; preds = %216, %26, %16
  %221 = load i32, i32* %4, align 4
  ret i32 %221
}

declare dso_local i32 @ecp_normalize_jac(%struct.TYPE_12__*, %struct.TYPE_11__*) #1

declare dso_local i64 @mbedtls_calloc(i64, i32) #1

declare dso_local i32 @mbedtls_mpi_init(i32*) #1

declare dso_local i32 @MBEDTLS_MPI_CHK(i32) #1

declare dso_local i32 @mbedtls_mpi_copy(i32*, i32*) #1

declare dso_local i32 @mbedtls_mpi_mul_mpi(i32*, i32*, i32*) #1

declare dso_local i32 @MOD_MUL(i32) #1

declare dso_local i32 @mbedtls_mpi_inv_mod(i32*, i32*, %struct.TYPE_13__*) #1

declare dso_local i32 @mbedtls_mpi_shrink(i32*, i32) #1

declare dso_local i32 @mbedtls_mpi_free(i32*) #1

declare dso_local i32 @mbedtls_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
