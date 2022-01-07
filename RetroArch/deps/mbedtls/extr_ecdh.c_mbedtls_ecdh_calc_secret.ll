; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_ecdh.c_mbedtls_ecdh_calc_secret.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_ecdh.c_mbedtls_ecdh_calc_secret.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_5__, i32, i32 }
%struct.TYPE_5__ = type { i32 }

@MBEDTLS_ERR_ECP_BAD_INPUT_DATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_ecdh_calc_secret(%struct.TYPE_4__* %0, i64* %1, i8* %2, i64 %3, i32 (i8*, i8*, i64)* %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32 (i8*, i8*, i64)*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %8, align 8
  store i64* %1, i64** %9, align 8
  store i8* %2, i8** %10, align 8
  store i64 %3, i64* %11, align 8
  store i32 (i8*, i8*, i64)* %4, i32 (i8*, i8*, i64)** %12, align 8
  store i8* %5, i8** %13, align 8
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %16 = icmp eq %struct.TYPE_4__* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %6
  %18 = load i32, i32* @MBEDTLS_ERR_ECP_BAD_INPUT_DATA, align 4
  store i32 %18, i32* %7, align 4
  br label %64

19:                                               ; preds = %6
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 3
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 2
  %28 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %12, align 8
  %29 = load i8*, i8** %13, align 8
  %30 = call i32 @mbedtls_ecdh_compute_shared(%struct.TYPE_5__* %21, i32* %23, i32* %25, i32* %27, i32 (i8*, i8*, i64)* %28, i8* %29)
  store i32 %30, i32* %14, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %19
  %33 = load i32, i32* %14, align 4
  store i32 %33, i32* %7, align 4
  br label %64

34:                                               ; preds = %19
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = call i64 @mbedtls_mpi_size(i32* %36)
  %38 = load i64, i64* %11, align 8
  %39 = icmp ugt i64 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = load i32, i32* @MBEDTLS_ERR_ECP_BAD_INPUT_DATA, align 4
  store i32 %41, i32* %7, align 4
  br label %64

42:                                               ; preds = %34
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = sdiv i32 %46, 8
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = srem i32 %51, 8
  %53 = icmp ne i32 %52, 0
  %54 = zext i1 %53 to i32
  %55 = add nsw i32 %47, %54
  %56 = sext i32 %55 to i64
  %57 = load i64*, i64** %9, align 8
  store i64 %56, i64* %57, align 8
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i8*, i8** %10, align 8
  %61 = load i64*, i64** %9, align 8
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @mbedtls_mpi_write_binary(i32* %59, i8* %60, i64 %62)
  store i32 %63, i32* %7, align 4
  br label %64

64:                                               ; preds = %42, %40, %32, %17
  %65 = load i32, i32* %7, align 4
  ret i32 %65
}

declare dso_local i32 @mbedtls_ecdh_compute_shared(%struct.TYPE_5__*, i32*, i32*, i32*, i32 (i8*, i8*, i64)*, i8*) #1

declare dso_local i64 @mbedtls_mpi_size(i32*) #1

declare dso_local i32 @mbedtls_mpi_write_binary(i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
