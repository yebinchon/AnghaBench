; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_rsa.c_mbedtls_rsa_private.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_rsa.c_mbedtls_rsa_private.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_30__ = type { i64, i32, %struct.TYPE_31__, %struct.TYPE_31__, %struct.TYPE_31__, %struct.TYPE_31__, %struct.TYPE_31__, i32, i32, i32, %struct.TYPE_31__, %struct.TYPE_31__, %struct.TYPE_31__, %struct.TYPE_31__ }
%struct.TYPE_31__ = type { i32* }

@MBEDTLS_ERR_RSA_BAD_INPUT_DATA = common dso_local global i32 0, align 4
@MBEDTLS_ERR_MPI_BAD_INPUT_DATA = common dso_local global i32 0, align 4
@RSA_EXPONENT_BLINDING = common dso_local global i32 0, align 4
@MBEDTLS_ERR_RSA_PRIVATE_FAILED = common dso_local global i32 0, align 4
@MBEDTLS_ERR_THREADING_MUTEX_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_rsa_private(%struct.TYPE_30__* %0, i32 (i8*, i8*, i64)* %1, i8* %2, i8* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_30__*, align 8
  %8 = alloca i32 (i8*, i8*, i64)*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_31__, align 8
  %15 = alloca %struct.TYPE_31__, align 8
  %16 = alloca %struct.TYPE_31__, align 8
  %17 = alloca %struct.TYPE_31__, align 8
  %18 = alloca %struct.TYPE_31__, align 8
  %19 = alloca %struct.TYPE_31__, align 8
  %20 = alloca %struct.TYPE_31__, align 8
  %21 = alloca %struct.TYPE_31__, align 8
  %22 = alloca %struct.TYPE_31__*, align 8
  %23 = alloca %struct.TYPE_31__*, align 8
  store %struct.TYPE_30__* %0, %struct.TYPE_30__** %7, align 8
  store i32 (i8*, i8*, i64)* %1, i32 (i8*, i8*, i64)** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  %24 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %24, i32 0, i32 11
  store %struct.TYPE_31__* %25, %struct.TYPE_31__** %22, align 8
  %26 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %26, i32 0, i32 10
  store %struct.TYPE_31__* %27, %struct.TYPE_31__** %23, align 8
  %28 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %28, i32 0, i32 5
  %30 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %45, label %33

33:                                               ; preds = %5
  %34 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %34, i32 0, i32 4
  %36 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = icmp eq i32* %37, null
  br i1 %38, label %45, label %39

39:                                               ; preds = %33
  %40 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %40, i32 0, i32 12
  %42 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = icmp eq i32* %43, null
  br i1 %44, label %45, label %47

45:                                               ; preds = %39, %33, %5
  %46 = load i32, i32* @MBEDTLS_ERR_RSA_BAD_INPUT_DATA, align 4
  store i32 %46, i32* %6, align 4
  br label %189

47:                                               ; preds = %39
  %48 = call i32 @mbedtls_mpi_init(%struct.TYPE_31__* %14)
  %49 = call i32 @mbedtls_mpi_init(%struct.TYPE_31__* %15)
  %50 = call i32 @mbedtls_mpi_init(%struct.TYPE_31__* %16)
  %51 = call i32 @mbedtls_mpi_init(%struct.TYPE_31__* %17)
  %52 = call i32 @mbedtls_mpi_init(%struct.TYPE_31__* %18)
  %53 = call i32 @mbedtls_mpi_init(%struct.TYPE_31__* %19)
  %54 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %8, align 8
  %55 = icmp ne i32 (i8*, i8*, i64)* %54, null
  br i1 %55, label %56, label %59

56:                                               ; preds = %47
  %57 = call i32 @mbedtls_mpi_init(%struct.TYPE_31__* %20)
  %58 = call i32 @mbedtls_mpi_init(%struct.TYPE_31__* %21)
  br label %59

59:                                               ; preds = %56, %47
  %60 = load i8*, i8** %10, align 8
  %61 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = call i32 @mbedtls_mpi_read_binary(%struct.TYPE_31__* %14, i8* %60, i64 %63)
  %65 = call i32 @MBEDTLS_MPI_CHK(i32 %64)
  %66 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %66, i32 0, i32 2
  %68 = call i64 @mbedtls_mpi_cmp_mpi(%struct.TYPE_31__* %14, %struct.TYPE_31__* %67)
  %69 = icmp sge i64 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %59
  %71 = load i32, i32* @MBEDTLS_ERR_MPI_BAD_INPUT_DATA, align 4
  store i32 %71, i32* %12, align 4
  br label %169

72:                                               ; preds = %59
  %73 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %8, align 8
  %74 = icmp ne i32 (i8*, i8*, i64)* %73, null
  br i1 %74, label %75, label %119

75:                                               ; preds = %72
  %76 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %77 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %8, align 8
  %78 = load i8*, i8** %9, align 8
  %79 = call i32 @rsa_prepare_blinding(%struct.TYPE_30__* %76, i32 (i8*, i8*, i64)* %77, i8* %78)
  %80 = call i32 @MBEDTLS_MPI_CHK(i32 %79)
  %81 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %81, i32 0, i32 13
  %83 = call i32 @mbedtls_mpi_mul_mpi(%struct.TYPE_31__* %14, %struct.TYPE_31__* %14, %struct.TYPE_31__* %82)
  %84 = call i32 @MBEDTLS_MPI_CHK(i32 %83)
  %85 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %85, i32 0, i32 2
  %87 = call i32 @mbedtls_mpi_mod_mpi(%struct.TYPE_31__* %14, %struct.TYPE_31__* %14, %struct.TYPE_31__* %86)
  %88 = call i32 @MBEDTLS_MPI_CHK(i32 %87)
  %89 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %89, i32 0, i32 5
  %91 = call i32 @mbedtls_mpi_sub_int(%struct.TYPE_31__* %17, %struct.TYPE_31__* %90, i32 1)
  %92 = call i32 @MBEDTLS_MPI_CHK(i32 %91)
  %93 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %93, i32 0, i32 4
  %95 = call i32 @mbedtls_mpi_sub_int(%struct.TYPE_31__* %18, %struct.TYPE_31__* %94, i32 1)
  %96 = call i32 @MBEDTLS_MPI_CHK(i32 %95)
  %97 = load i32, i32* @RSA_EXPONENT_BLINDING, align 4
  %98 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %8, align 8
  %99 = load i8*, i8** %9, align 8
  %100 = call i32 @mbedtls_mpi_fill_random(%struct.TYPE_31__* %19, i32 %97, i32 (i8*, i8*, i64)* %98, i8* %99)
  %101 = call i32 @MBEDTLS_MPI_CHK(i32 %100)
  %102 = call i32 @mbedtls_mpi_mul_mpi(%struct.TYPE_31__* %20, %struct.TYPE_31__* %17, %struct.TYPE_31__* %19)
  %103 = call i32 @MBEDTLS_MPI_CHK(i32 %102)
  %104 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %105 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %104, i32 0, i32 11
  %106 = call i32 @mbedtls_mpi_add_mpi(%struct.TYPE_31__* %20, %struct.TYPE_31__* %20, %struct.TYPE_31__* %105)
  %107 = call i32 @MBEDTLS_MPI_CHK(i32 %106)
  store %struct.TYPE_31__* %20, %struct.TYPE_31__** %22, align 8
  %108 = load i32, i32* @RSA_EXPONENT_BLINDING, align 4
  %109 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %8, align 8
  %110 = load i8*, i8** %9, align 8
  %111 = call i32 @mbedtls_mpi_fill_random(%struct.TYPE_31__* %19, i32 %108, i32 (i8*, i8*, i64)* %109, i8* %110)
  %112 = call i32 @MBEDTLS_MPI_CHK(i32 %111)
  %113 = call i32 @mbedtls_mpi_mul_mpi(%struct.TYPE_31__* %21, %struct.TYPE_31__* %18, %struct.TYPE_31__* %19)
  %114 = call i32 @MBEDTLS_MPI_CHK(i32 %113)
  %115 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %116 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %115, i32 0, i32 10
  %117 = call i32 @mbedtls_mpi_add_mpi(%struct.TYPE_31__* %21, %struct.TYPE_31__* %21, %struct.TYPE_31__* %116)
  %118 = call i32 @MBEDTLS_MPI_CHK(i32 %117)
  store %struct.TYPE_31__* %21, %struct.TYPE_31__** %23, align 8
  br label %119

119:                                              ; preds = %75, %72
  %120 = load %struct.TYPE_31__*, %struct.TYPE_31__** %22, align 8
  %121 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %122 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %121, i32 0, i32 5
  %123 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %124 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %123, i32 0, i32 8
  %125 = call i32 @mbedtls_mpi_exp_mod(%struct.TYPE_31__* %15, %struct.TYPE_31__* %14, %struct.TYPE_31__* %120, %struct.TYPE_31__* %122, i32* %124)
  %126 = call i32 @MBEDTLS_MPI_CHK(i32 %125)
  %127 = load %struct.TYPE_31__*, %struct.TYPE_31__** %23, align 8
  %128 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %129 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %128, i32 0, i32 4
  %130 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %131 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %130, i32 0, i32 7
  %132 = call i32 @mbedtls_mpi_exp_mod(%struct.TYPE_31__* %16, %struct.TYPE_31__* %14, %struct.TYPE_31__* %127, %struct.TYPE_31__* %129, i32* %131)
  %133 = call i32 @MBEDTLS_MPI_CHK(i32 %132)
  %134 = call i32 @mbedtls_mpi_sub_mpi(%struct.TYPE_31__* %14, %struct.TYPE_31__* %15, %struct.TYPE_31__* %16)
  %135 = call i32 @MBEDTLS_MPI_CHK(i32 %134)
  %136 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %137 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %136, i32 0, i32 6
  %138 = call i32 @mbedtls_mpi_mul_mpi(%struct.TYPE_31__* %15, %struct.TYPE_31__* %14, %struct.TYPE_31__* %137)
  %139 = call i32 @MBEDTLS_MPI_CHK(i32 %138)
  %140 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %141 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %140, i32 0, i32 5
  %142 = call i32 @mbedtls_mpi_mod_mpi(%struct.TYPE_31__* %14, %struct.TYPE_31__* %15, %struct.TYPE_31__* %141)
  %143 = call i32 @MBEDTLS_MPI_CHK(i32 %142)
  %144 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %145 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %144, i32 0, i32 4
  %146 = call i32 @mbedtls_mpi_mul_mpi(%struct.TYPE_31__* %15, %struct.TYPE_31__* %14, %struct.TYPE_31__* %145)
  %147 = call i32 @MBEDTLS_MPI_CHK(i32 %146)
  %148 = call i32 @mbedtls_mpi_add_mpi(%struct.TYPE_31__* %14, %struct.TYPE_31__* %16, %struct.TYPE_31__* %15)
  %149 = call i32 @MBEDTLS_MPI_CHK(i32 %148)
  %150 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %8, align 8
  %151 = icmp ne i32 (i8*, i8*, i64)* %150, null
  br i1 %151, label %152, label %161

152:                                              ; preds = %119
  %153 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %154 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %153, i32 0, i32 3
  %155 = call i32 @mbedtls_mpi_mul_mpi(%struct.TYPE_31__* %14, %struct.TYPE_31__* %14, %struct.TYPE_31__* %154)
  %156 = call i32 @MBEDTLS_MPI_CHK(i32 %155)
  %157 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %158 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %157, i32 0, i32 2
  %159 = call i32 @mbedtls_mpi_mod_mpi(%struct.TYPE_31__* %14, %struct.TYPE_31__* %14, %struct.TYPE_31__* %158)
  %160 = call i32 @MBEDTLS_MPI_CHK(i32 %159)
  br label %161

161:                                              ; preds = %152, %119
  %162 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %163 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  store i64 %164, i64* %13, align 8
  %165 = load i8*, i8** %11, align 8
  %166 = load i64, i64* %13, align 8
  %167 = call i32 @mbedtls_mpi_write_binary(%struct.TYPE_31__* %14, i8* %165, i64 %166)
  %168 = call i32 @MBEDTLS_MPI_CHK(i32 %167)
  br label %169

169:                                              ; preds = %161, %70
  %170 = call i32 @mbedtls_mpi_free(%struct.TYPE_31__* %14)
  %171 = call i32 @mbedtls_mpi_free(%struct.TYPE_31__* %15)
  %172 = call i32 @mbedtls_mpi_free(%struct.TYPE_31__* %16)
  %173 = call i32 @mbedtls_mpi_free(%struct.TYPE_31__* %17)
  %174 = call i32 @mbedtls_mpi_free(%struct.TYPE_31__* %18)
  %175 = call i32 @mbedtls_mpi_free(%struct.TYPE_31__* %19)
  %176 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %8, align 8
  %177 = icmp ne i32 (i8*, i8*, i64)* %176, null
  br i1 %177, label %178, label %181

178:                                              ; preds = %169
  %179 = call i32 @mbedtls_mpi_free(%struct.TYPE_31__* %20)
  %180 = call i32 @mbedtls_mpi_free(%struct.TYPE_31__* %21)
  br label %181

181:                                              ; preds = %178, %169
  %182 = load i32, i32* %12, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %188

184:                                              ; preds = %181
  %185 = load i32, i32* @MBEDTLS_ERR_RSA_PRIVATE_FAILED, align 4
  %186 = load i32, i32* %12, align 4
  %187 = add nsw i32 %185, %186
  store i32 %187, i32* %6, align 4
  br label %189

188:                                              ; preds = %181
  store i32 0, i32* %6, align 4
  br label %189

189:                                              ; preds = %188, %184, %45
  %190 = load i32, i32* %6, align 4
  ret i32 %190
}

declare dso_local i32 @mbedtls_mpi_init(%struct.TYPE_31__*) #1

declare dso_local i32 @MBEDTLS_MPI_CHK(i32) #1

declare dso_local i32 @mbedtls_mpi_read_binary(%struct.TYPE_31__*, i8*, i64) #1

declare dso_local i64 @mbedtls_mpi_cmp_mpi(%struct.TYPE_31__*, %struct.TYPE_31__*) #1

declare dso_local i32 @rsa_prepare_blinding(%struct.TYPE_30__*, i32 (i8*, i8*, i64)*, i8*) #1

declare dso_local i32 @mbedtls_mpi_mul_mpi(%struct.TYPE_31__*, %struct.TYPE_31__*, %struct.TYPE_31__*) #1

declare dso_local i32 @mbedtls_mpi_mod_mpi(%struct.TYPE_31__*, %struct.TYPE_31__*, %struct.TYPE_31__*) #1

declare dso_local i32 @mbedtls_mpi_sub_int(%struct.TYPE_31__*, %struct.TYPE_31__*, i32) #1

declare dso_local i32 @mbedtls_mpi_fill_random(%struct.TYPE_31__*, i32, i32 (i8*, i8*, i64)*, i8*) #1

declare dso_local i32 @mbedtls_mpi_add_mpi(%struct.TYPE_31__*, %struct.TYPE_31__*, %struct.TYPE_31__*) #1

declare dso_local i32 @mbedtls_mpi_exp_mod(%struct.TYPE_31__*, %struct.TYPE_31__*, %struct.TYPE_31__*, %struct.TYPE_31__*, i32*) #1

declare dso_local i32 @mbedtls_mpi_sub_mpi(%struct.TYPE_31__*, %struct.TYPE_31__*, %struct.TYPE_31__*) #1

declare dso_local i32 @mbedtls_mpi_write_binary(%struct.TYPE_31__*, i8*, i64) #1

declare dso_local i32 @mbedtls_mpi_free(%struct.TYPE_31__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
