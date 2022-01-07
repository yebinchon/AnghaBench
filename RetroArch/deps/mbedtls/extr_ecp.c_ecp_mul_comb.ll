; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_ecp.c_ecp_mul_comb.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_ecp.c_ecp_mul_comb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32, i8, i32, %struct.TYPE_20__*, %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i32, i32 }
%struct.TYPE_20__ = type { i32, i32 }

@COMB_MAX_D = common dso_local global i32 0, align 4
@MBEDTLS_ERR_ECP_BAD_INPUT_DATA = common dso_local global i32 0, align 4
@MBEDTLS_ECP_WINDOW_SIZE = common dso_local global i8 0, align 1
@MBEDTLS_ERR_ECP_ALLOC_FAILED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_21__*, %struct.TYPE_20__*, i32*, %struct.TYPE_20__*, i32 (i8*, i8*, i64)*, i8*)* @ecp_mul_comb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecp_mul_comb(%struct.TYPE_21__* %0, %struct.TYPE_20__* %1, i32* %2, %struct.TYPE_20__* %3, i32 (i8*, i8*, i64)* %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_21__*, align 8
  %9 = alloca %struct.TYPE_20__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_20__*, align 8
  %12 = alloca i32 (i8*, i8*, i64)*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8, align 1
  %16 = alloca i8, align 1
  %17 = alloca i8, align 1
  %18 = alloca i8, align 1
  %19 = alloca i8, align 1
  %20 = alloca i64, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i64, align 8
  %23 = alloca %struct.TYPE_20__*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %8, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %9, align 8
  store i32* %2, i32** %10, align 8
  store %struct.TYPE_20__* %3, %struct.TYPE_20__** %11, align 8
  store i32 (i8*, i8*, i64)* %4, i32 (i8*, i8*, i64)** %12, align 8
  store i8* %5, i8** %13, align 8
  %27 = load i32, i32* @COMB_MAX_D, align 4
  %28 = add nsw i32 %27, 1
  %29 = zext i32 %28 to i64
  %30 = call i8* @llvm.stacksave()
  store i8* %30, i8** %21, align 8
  %31 = alloca i8, i64 %29, align 16
  store i64 %29, i64* %22, align 8
  %32 = call i32 @mbedtls_mpi_init(i32* %24)
  %33 = call i32 @mbedtls_mpi_init(i32* %25)
  %34 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %34, i32 0, i32 2
  %36 = call i32 @mbedtls_mpi_get_bit(i32* %35, i32 0)
  %37 = icmp ne i32 %36, 1
  br i1 %37, label %38, label %40

38:                                               ; preds = %6
  %39 = load i32, i32* @MBEDTLS_ERR_ECP_BAD_INPUT_DATA, align 4
  store i32 %39, i32* %7, align 4
  store i32 1, i32* %26, align 4
  br label %197

40:                                               ; preds = %6
  %41 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp sge i32 %43, 384
  %45 = zext i1 %44 to i64
  %46 = select i1 %44, i32 5, i32 4
  %47 = trunc i32 %46 to i8
  store i8 %47, i8* %15, align 1
  store i8 0, i8* %17, align 1
  %48 = load i8, i8* %15, align 1
  %49 = zext i8 %48 to i32
  %50 = load i8, i8* @MBEDTLS_ECP_WINDOW_SIZE, align 1
  %51 = zext i8 %50 to i32
  %52 = icmp sgt i32 %49, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %40
  %54 = load i8, i8* @MBEDTLS_ECP_WINDOW_SIZE, align 1
  store i8 %54, i8* %15, align 1
  br label %55

55:                                               ; preds = %53, %40
  %56 = load i8, i8* %15, align 1
  %57 = zext i8 %56 to i32
  %58 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp sge i32 %57, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %55
  store i8 2, i8* %15, align 1
  br label %63

63:                                               ; preds = %62, %55
  %64 = load i8, i8* %15, align 1
  %65 = zext i8 %64 to i32
  %66 = sub nsw i32 %65, 1
  %67 = shl i32 1, %66
  %68 = trunc i32 %67 to i8
  store i8 %68, i8* %18, align 1
  %69 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i8, i8* %15, align 1
  %73 = zext i8 %72 to i32
  %74 = add nsw i32 %71, %73
  %75 = sub nsw i32 %74, 1
  %76 = load i8, i8* %15, align 1
  %77 = zext i8 %76 to i32
  %78 = sdiv i32 %75, %77
  %79 = sext i32 %78 to i64
  store i64 %79, i64* %20, align 8
  %80 = load i8, i8* %17, align 1
  %81 = zext i8 %80 to i32
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %63
  %84 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %84, i32 0, i32 3
  %86 = load %struct.TYPE_20__*, %struct.TYPE_20__** %85, align 8
  br label %88

87:                                               ; preds = %63
  br label %88

88:                                               ; preds = %87, %83
  %89 = phi %struct.TYPE_20__* [ %86, %83 ], [ null, %87 ]
  store %struct.TYPE_20__* %89, %struct.TYPE_20__** %23, align 8
  %90 = load %struct.TYPE_20__*, %struct.TYPE_20__** %23, align 8
  %91 = icmp eq %struct.TYPE_20__* %90, null
  br i1 %91, label %92, label %118

92:                                               ; preds = %88
  %93 = load i8, i8* %18, align 1
  %94 = call i64 @mbedtls_calloc(i8 zeroext %93, i32 8)
  %95 = inttoptr i64 %94 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %95, %struct.TYPE_20__** %23, align 8
  %96 = load %struct.TYPE_20__*, %struct.TYPE_20__** %23, align 8
  %97 = icmp eq %struct.TYPE_20__* %96, null
  br i1 %97, label %98, label %100

98:                                               ; preds = %92
  %99 = load i32, i32* @MBEDTLS_ERR_ECP_ALLOC_FAILED, align 4
  store i32 %99, i32* %14, align 4
  br label %162

100:                                              ; preds = %92
  %101 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %102 = load %struct.TYPE_20__*, %struct.TYPE_20__** %23, align 8
  %103 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %104 = load i8, i8* %15, align 1
  %105 = load i64, i64* %20, align 8
  %106 = call i32 @ecp_precompute_comb(%struct.TYPE_21__* %101, %struct.TYPE_20__* %102, %struct.TYPE_20__* %103, i8 zeroext %104, i64 %105)
  %107 = call i32 @MBEDTLS_MPI_CHK(i32 %106)
  %108 = load i8, i8* %17, align 1
  %109 = icmp ne i8 %108, 0
  br i1 %109, label %110, label %117

110:                                              ; preds = %100
  %111 = load %struct.TYPE_20__*, %struct.TYPE_20__** %23, align 8
  %112 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %113 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %112, i32 0, i32 3
  store %struct.TYPE_20__* %111, %struct.TYPE_20__** %113, align 8
  %114 = load i8, i8* %18, align 1
  %115 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %116 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %115, i32 0, i32 1
  store i8 %114, i8* %116, align 4
  br label %117

117:                                              ; preds = %110, %100
  br label %118

118:                                              ; preds = %117, %88
  %119 = load i32*, i32** %10, align 8
  %120 = call i32 @mbedtls_mpi_get_bit(i32* %119, i32 0)
  %121 = icmp eq i32 %120, 1
  %122 = zext i1 %121 to i32
  %123 = trunc i32 %122 to i8
  store i8 %123, i8* %16, align 1
  %124 = load i32*, i32** %10, align 8
  %125 = call i32 @mbedtls_mpi_copy(i32* %24, i32* %124)
  %126 = call i32 @MBEDTLS_MPI_CHK(i32 %125)
  %127 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %128 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %127, i32 0, i32 2
  %129 = load i32*, i32** %10, align 8
  %130 = call i32 @mbedtls_mpi_sub_mpi(i32* %25, i32* %128, i32* %129)
  %131 = call i32 @MBEDTLS_MPI_CHK(i32 %130)
  %132 = load i8, i8* %16, align 1
  %133 = icmp ne i8 %132, 0
  %134 = xor i1 %133, true
  %135 = zext i1 %134 to i32
  %136 = call i32 @mbedtls_mpi_safe_cond_assign(i32* %24, i32* %25, i32 %135)
  %137 = call i32 @MBEDTLS_MPI_CHK(i32 %136)
  %138 = load i64, i64* %20, align 8
  %139 = load i8, i8* %15, align 1
  %140 = call i32 @ecp_comb_fixed(i8* %31, i64 %138, i8 zeroext %139, i32* %24)
  %141 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %142 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %143 = load %struct.TYPE_20__*, %struct.TYPE_20__** %23, align 8
  %144 = load i8, i8* %18, align 1
  %145 = load i64, i64* %20, align 8
  %146 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %12, align 8
  %147 = load i8*, i8** %13, align 8
  %148 = call i32 @ecp_mul_comb_core(%struct.TYPE_21__* %141, %struct.TYPE_20__* %142, %struct.TYPE_20__* %143, i8 zeroext %144, i8* %31, i64 %145, i32 (i8*, i8*, i64)* %146, i8* %147)
  %149 = call i32 @MBEDTLS_MPI_CHK(i32 %148)
  %150 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %151 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %152 = load i8, i8* %16, align 1
  %153 = icmp ne i8 %152, 0
  %154 = xor i1 %153, true
  %155 = zext i1 %154 to i32
  %156 = call i32 @ecp_safe_invert_jac(%struct.TYPE_21__* %150, %struct.TYPE_20__* %151, i32 %155)
  %157 = call i32 @MBEDTLS_MPI_CHK(i32 %156)
  %158 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %159 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %160 = call i32 @ecp_normalize_jac(%struct.TYPE_21__* %158, %struct.TYPE_20__* %159)
  %161 = call i32 @MBEDTLS_MPI_CHK(i32 %160)
  br label %162

162:                                              ; preds = %118, %98
  %163 = load %struct.TYPE_20__*, %struct.TYPE_20__** %23, align 8
  %164 = icmp ne %struct.TYPE_20__* %163, null
  br i1 %164, label %165, label %187

165:                                              ; preds = %162
  %166 = load i8, i8* %17, align 1
  %167 = icmp ne i8 %166, 0
  br i1 %167, label %187, label %168

168:                                              ; preds = %165
  store i8 0, i8* %19, align 1
  br label %169

169:                                              ; preds = %181, %168
  %170 = load i8, i8* %19, align 1
  %171 = zext i8 %170 to i32
  %172 = load i8, i8* %18, align 1
  %173 = zext i8 %172 to i32
  %174 = icmp slt i32 %171, %173
  br i1 %174, label %175, label %184

175:                                              ; preds = %169
  %176 = load %struct.TYPE_20__*, %struct.TYPE_20__** %23, align 8
  %177 = load i8, i8* %19, align 1
  %178 = zext i8 %177 to i64
  %179 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %176, i64 %178
  %180 = call i32 @mbedtls_ecp_point_free(%struct.TYPE_20__* %179)
  br label %181

181:                                              ; preds = %175
  %182 = load i8, i8* %19, align 1
  %183 = add i8 %182, 1
  store i8 %183, i8* %19, align 1
  br label %169

184:                                              ; preds = %169
  %185 = load %struct.TYPE_20__*, %struct.TYPE_20__** %23, align 8
  %186 = call i32 @mbedtls_free(%struct.TYPE_20__* %185)
  br label %187

187:                                              ; preds = %184, %165, %162
  %188 = call i32 @mbedtls_mpi_free(i32* %24)
  %189 = call i32 @mbedtls_mpi_free(i32* %25)
  %190 = load i32, i32* %14, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %195

192:                                              ; preds = %187
  %193 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %194 = call i32 @mbedtls_ecp_point_free(%struct.TYPE_20__* %193)
  br label %195

195:                                              ; preds = %192, %187
  %196 = load i32, i32* %14, align 4
  store i32 %196, i32* %7, align 4
  store i32 1, i32* %26, align 4
  br label %197

197:                                              ; preds = %195, %38
  %198 = load i8*, i8** %21, align 8
  call void @llvm.stackrestore(i8* %198)
  %199 = load i32, i32* %7, align 4
  ret i32 %199
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @mbedtls_mpi_init(i32*) #2

declare dso_local i32 @mbedtls_mpi_get_bit(i32*, i32) #2

declare dso_local i64 @mbedtls_calloc(i8 zeroext, i32) #2

declare dso_local i32 @MBEDTLS_MPI_CHK(i32) #2

declare dso_local i32 @ecp_precompute_comb(%struct.TYPE_21__*, %struct.TYPE_20__*, %struct.TYPE_20__*, i8 zeroext, i64) #2

declare dso_local i32 @mbedtls_mpi_copy(i32*, i32*) #2

declare dso_local i32 @mbedtls_mpi_sub_mpi(i32*, i32*, i32*) #2

declare dso_local i32 @mbedtls_mpi_safe_cond_assign(i32*, i32*, i32) #2

declare dso_local i32 @ecp_comb_fixed(i8*, i64, i8 zeroext, i32*) #2

declare dso_local i32 @ecp_mul_comb_core(%struct.TYPE_21__*, %struct.TYPE_20__*, %struct.TYPE_20__*, i8 zeroext, i8*, i64, i32 (i8*, i8*, i64)*, i8*) #2

declare dso_local i32 @ecp_safe_invert_jac(%struct.TYPE_21__*, %struct.TYPE_20__*, i32) #2

declare dso_local i32 @ecp_normalize_jac(%struct.TYPE_21__*, %struct.TYPE_20__*) #2

declare dso_local i32 @mbedtls_ecp_point_free(%struct.TYPE_20__*) #2

declare dso_local i32 @mbedtls_free(%struct.TYPE_20__*) #2

declare dso_local i32 @mbedtls_mpi_free(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
