; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_dhm.c_mbedtls_dhm_make_params.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_dhm.c_mbedtls_dhm_make_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i32, i32, i32, i32 }

@MBEDTLS_ERR_DHM_BAD_INPUT_DATA = common dso_local global i32 0, align 4
@MBEDTLS_ERR_DHM_MAKE_PARAMS_FAILED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_dhm_make_params(%struct.TYPE_3__* %0, i32 %1, i8* %2, i64* %3, i32 (i8*, i8*, i64)* %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32 (i8*, i8*, i64)*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i8*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i64* %3, i64** %11, align 8
  store i32 (i8*, i8*, i64)* %4, i32 (i8*, i8*, i64)** %12, align 8
  store i8* %5, i8** %13, align 8
  store i32 0, i32* %15, align 4
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 3
  %22 = call i64 @mbedtls_mpi_cmp_int(i32* %21, i32 0)
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %6
  %25 = load i32, i32* @MBEDTLS_ERR_DHM_BAD_INPUT_DATA, align 4
  store i32 %25, i32* %7, align 4
  br label %167

26:                                               ; preds = %6
  br label %27

27:                                               ; preds = %54, %26
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 5
  %30 = load i32, i32* %9, align 4
  %31 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %12, align 8
  %32 = load i8*, i8** %13, align 8
  %33 = call i32 @mbedtls_mpi_fill_random(i32* %29, i32 %30, i32 (i8*, i8*, i64)* %31, i8* %32)
  %34 = call i32 @MBEDTLS_MPI_CHK(i32 %33)
  br label %35

35:                                               ; preds = %42, %27
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 5
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 3
  %40 = call i64 @mbedtls_mpi_cmp_mpi(i32* %37, i32* %39)
  %41 = icmp sge i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %35
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 5
  %45 = call i32 @mbedtls_mpi_shift_r(i32* %44, i32 1)
  %46 = call i32 @MBEDTLS_MPI_CHK(i32 %45)
  br label %35

47:                                               ; preds = %35
  %48 = load i32, i32* %15, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %15, align 4
  %50 = icmp sgt i32 %48, 10
  br i1 %50, label %51, label %53

51:                                               ; preds = %47
  %52 = load i32, i32* @MBEDTLS_ERR_DHM_MAKE_PARAMS_FAILED, align 4
  store i32 %52, i32* %7, align 4
  br label %167

53:                                               ; preds = %47
  br label %54

54:                                               ; preds = %53
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 5
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 3
  %59 = call i32 @dhm_check_range(i32* %56, i32* %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %27, label %61

61:                                               ; preds = %54
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 1
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 2
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 5
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 3
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 4
  %72 = call i32 @mbedtls_mpi_exp_mod(i32* %63, i32* %65, i32* %67, i32* %69, i32* %71)
  %73 = call i32 @MBEDTLS_MPI_CHK(i32 %72)
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 1
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 3
  %78 = call i32 @dhm_check_range(i32* %75, i32* %77)
  store i32 %78, i32* %14, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %61
  %81 = load i32, i32* %14, align 4
  store i32 %81, i32* %7, align 4
  br label %167

82:                                               ; preds = %61
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 3
  %85 = call i64 @mbedtls_mpi_size(i32* %84)
  store i64 %85, i64* %16, align 8
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 2
  %88 = call i64 @mbedtls_mpi_size(i32* %87)
  store i64 %88, i64* %17, align 8
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 1
  %91 = call i64 @mbedtls_mpi_size(i32* %90)
  store i64 %91, i64* %18, align 8
  %92 = load i8*, i8** %10, align 8
  store i8* %92, i8** %19, align 8
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 3
  %95 = load i8*, i8** %19, align 8
  %96 = getelementptr inbounds i8, i8* %95, i64 2
  %97 = load i64, i64* %16, align 8
  %98 = call i32 (i32*, i8*, i64, ...) bitcast (i32 (...)* @mbedtls_mpi_write_binary to i32 (i32*, i8*, i64, ...)*)(i32* %94, i8* %96, i64 %97)
  %99 = call i32 @MBEDTLS_MPI_CHK(i32 %98)
  %100 = load i64, i64* %16, align 8
  %101 = lshr i64 %100, 8
  %102 = trunc i64 %101 to i8
  %103 = load i8*, i8** %19, align 8
  %104 = getelementptr inbounds i8, i8* %103, i32 1
  store i8* %104, i8** %19, align 8
  store i8 %102, i8* %103, align 1
  %105 = load i64, i64* %16, align 8
  %106 = trunc i64 %105 to i8
  %107 = load i8*, i8** %19, align 8
  %108 = getelementptr inbounds i8, i8* %107, i32 1
  store i8* %108, i8** %19, align 8
  store i8 %106, i8* %107, align 1
  %109 = load i64, i64* %16, align 8
  %110 = load i8*, i8** %19, align 8
  %111 = getelementptr inbounds i8, i8* %110, i64 %109
  store i8* %111, i8** %19, align 8
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 2
  %114 = load i8*, i8** %19, align 8
  %115 = getelementptr inbounds i8, i8* %114, i64 2
  %116 = load i64, i64* %17, align 8
  %117 = call i32 (i32*, i8*, i64, ...) bitcast (i32 (...)* @mbedtls_mpi_write_binary to i32 (i32*, i8*, i64, ...)*)(i32* %113, i8* %115, i64 %116)
  %118 = call i32 @MBEDTLS_MPI_CHK(i32 %117)
  %119 = load i64, i64* %17, align 8
  %120 = lshr i64 %119, 8
  %121 = trunc i64 %120 to i8
  %122 = load i8*, i8** %19, align 8
  %123 = getelementptr inbounds i8, i8* %122, i32 1
  store i8* %123, i8** %19, align 8
  store i8 %121, i8* %122, align 1
  %124 = load i64, i64* %17, align 8
  %125 = trunc i64 %124 to i8
  %126 = load i8*, i8** %19, align 8
  %127 = getelementptr inbounds i8, i8* %126, i32 1
  store i8* %127, i8** %19, align 8
  store i8 %125, i8* %126, align 1
  %128 = load i64, i64* %17, align 8
  %129 = load i8*, i8** %19, align 8
  %130 = getelementptr inbounds i8, i8* %129, i64 %128
  store i8* %130, i8** %19, align 8
  %131 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i32 0, i32 1
  %133 = load i8*, i8** %19, align 8
  %134 = getelementptr inbounds i8, i8* %133, i64 2
  %135 = load i64, i64* %18, align 8
  %136 = call i32 (i32*, i8*, i64, ...) bitcast (i32 (...)* @mbedtls_mpi_write_binary to i32 (i32*, i8*, i64, ...)*)(i32* %132, i8* %134, i64 %135)
  %137 = call i32 @MBEDTLS_MPI_CHK(i32 %136)
  %138 = load i64, i64* %18, align 8
  %139 = lshr i64 %138, 8
  %140 = trunc i64 %139 to i8
  %141 = load i8*, i8** %19, align 8
  %142 = getelementptr inbounds i8, i8* %141, i32 1
  store i8* %142, i8** %19, align 8
  store i8 %140, i8* %141, align 1
  %143 = load i64, i64* %18, align 8
  %144 = trunc i64 %143 to i8
  %145 = load i8*, i8** %19, align 8
  %146 = getelementptr inbounds i8, i8* %145, i32 1
  store i8* %146, i8** %19, align 8
  store i8 %144, i8* %145, align 1
  %147 = load i64, i64* %18, align 8
  %148 = load i8*, i8** %19, align 8
  %149 = getelementptr inbounds i8, i8* %148, i64 %147
  store i8* %149, i8** %19, align 8
  %150 = load i8*, i8** %19, align 8
  %151 = load i8*, i8** %10, align 8
  %152 = ptrtoint i8* %150 to i64
  %153 = ptrtoint i8* %151 to i64
  %154 = sub i64 %152, %153
  %155 = load i64*, i64** %11, align 8
  store i64 %154, i64* %155, align 8
  %156 = load i64, i64* %16, align 8
  %157 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %158 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %157, i32 0, i32 0
  store i64 %156, i64* %158, align 8
  br label %159

159:                                              ; preds = %82
  %160 = load i32, i32* %14, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %166

162:                                              ; preds = %159
  %163 = load i32, i32* @MBEDTLS_ERR_DHM_MAKE_PARAMS_FAILED, align 4
  %164 = load i32, i32* %14, align 4
  %165 = add nsw i32 %163, %164
  store i32 %165, i32* %7, align 4
  br label %167

166:                                              ; preds = %159
  store i32 0, i32* %7, align 4
  br label %167

167:                                              ; preds = %166, %162, %80, %51, %24
  %168 = load i32, i32* %7, align 4
  ret i32 %168
}

declare dso_local i64 @mbedtls_mpi_cmp_int(i32*, i32) #1

declare dso_local i32 @MBEDTLS_MPI_CHK(i32) #1

declare dso_local i32 @mbedtls_mpi_fill_random(i32*, i32, i32 (i8*, i8*, i64)*, i8*) #1

declare dso_local i64 @mbedtls_mpi_cmp_mpi(i32*, i32*) #1

declare dso_local i32 @mbedtls_mpi_shift_r(i32*, i32) #1

declare dso_local i32 @dhm_check_range(i32*, i32*) #1

declare dso_local i32 @mbedtls_mpi_exp_mod(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i64 @mbedtls_mpi_size(i32*) #1

declare dso_local i32 @mbedtls_mpi_write_binary(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
