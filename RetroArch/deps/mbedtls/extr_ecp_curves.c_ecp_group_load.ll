; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_ecp_curves.c_ecp_group_load.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_ecp_curves.c_ecp_group_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i8*, i32, i8*, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32*, i64, i32*, i64, i32*, i64, i32*, i64, i32*, i64, i32*, i64)* @ecp_group_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecp_group_load(%struct.TYPE_5__* %0, i32* %1, i64 %2, i32* %3, i64 %4, i32* %5, i64 %6, i32* %7, i64 %8, i32* %9, i64 %10, i32* %11, i64 %12) #0 {
  %14 = alloca %struct.TYPE_5__*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i64, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %14, align 8
  store i32* %1, i32** %15, align 8
  store i64 %2, i64* %16, align 8
  store i32* %3, i32** %17, align 8
  store i64 %4, i64* %18, align 8
  store i32* %5, i32** %19, align 8
  store i64 %6, i64* %20, align 8
  store i32* %7, i32** %21, align 8
  store i64 %8, i64* %22, align 8
  store i32* %9, i32** %23, align 8
  store i64 %10, i64* %24, align 8
  store i32* %11, i32** %25, align 8
  store i64 %12, i64* %26, align 8
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 3
  %29 = load i32*, i32** %15, align 8
  %30 = load i64, i64* %16, align 8
  %31 = call i32 @ecp_mpi_load(i32* %28, i32* %29, i64 %30)
  %32 = load i32*, i32** %17, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %40

34:                                               ; preds = %13
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 7
  %37 = load i32*, i32** %17, align 8
  %38 = load i64, i64* %18, align 8
  %39 = call i32 @ecp_mpi_load(i32* %36, i32* %37, i64 %38)
  br label %40

40:                                               ; preds = %34, %13
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 6
  %43 = load i32*, i32** %19, align 8
  %44 = load i64, i64* %20, align 8
  %45 = call i32 @ecp_mpi_load(i32* %42, i32* %43, i64 %44)
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  %48 = load i32*, i32** %25, align 8
  %49 = load i64, i64* %26, align 8
  %50 = call i32 @ecp_mpi_load(i32* %47, i32* %48, i64 %49)
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 5
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 2
  %54 = load i32*, i32** %21, align 8
  %55 = load i64, i64* %22, align 8
  %56 = call i32 @ecp_mpi_load(i32* %53, i32* %54, i64 %55)
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 5
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 1
  %60 = load i32*, i32** %23, align 8
  %61 = load i64, i64* %24, align 8
  %62 = call i32 @ecp_mpi_load(i32* %59, i32* %60, i64 %61)
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 5
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = call i32 @ecp_mpi_set1(i32* %65)
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 3
  %69 = call i8* @mbedtls_mpi_bitlen(i32* %68)
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 4
  store i8* %69, i8** %71, align 8
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 1
  %74 = call i8* @mbedtls_mpi_bitlen(i32* %73)
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 2
  store i8* %74, i8** %76, align 8
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  store i32 1, i32* %78, align 8
  ret i32 0
}

declare dso_local i32 @ecp_mpi_load(i32*, i32*, i64) #1

declare dso_local i32 @ecp_mpi_set1(i32*) #1

declare dso_local i8* @mbedtls_mpi_bitlen(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
