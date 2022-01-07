; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_ecp.c_mbedtls_ecp_mul_shortcuts.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_ecp.c_mbedtls_ecp_mul_shortcuts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, %struct.TYPE_11__*, i32*, %struct.TYPE_11__*)* @mbedtls_ecp_mul_shortcuts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mbedtls_ecp_mul_shortcuts(%struct.TYPE_12__* %0, %struct.TYPE_11__* %1, i32* %2, %struct.TYPE_11__* %3) #0 {
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %6, align 8
  store i32* %2, i32** %7, align 8
  store %struct.TYPE_11__* %3, %struct.TYPE_11__** %8, align 8
  %10 = load i32*, i32** %7, align 8
  %11 = call i64 @mbedtls_mpi_cmp_int(i32* %10, i32 1)
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %4
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %16 = call i32 @mbedtls_ecp_copy(%struct.TYPE_11__* %14, %struct.TYPE_11__* %15)
  %17 = call i32 @MBEDTLS_MPI_CHK(i32 %16)
  br label %49

18:                                               ; preds = %4
  %19 = load i32*, i32** %7, align 8
  %20 = call i64 @mbedtls_mpi_cmp_int(i32* %19, i32 -1)
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %41

22:                                               ; preds = %18
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %25 = call i32 @mbedtls_ecp_copy(%struct.TYPE_11__* %23, %struct.TYPE_11__* %24)
  %26 = call i32 @MBEDTLS_MPI_CHK(i32 %25)
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 0
  %29 = call i64 @mbedtls_mpi_cmp_int(i32* %28, i32 0)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %22
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 0
  %38 = call i32 @mbedtls_mpi_sub_mpi(i32* %33, i32* %35, i32* %37)
  %39 = call i32 @MBEDTLS_MPI_CHK(i32 %38)
  br label %40

40:                                               ; preds = %31, %22
  br label %48

41:                                               ; preds = %18
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %44 = load i32*, i32** %7, align 8
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %46 = call i32 @mbedtls_ecp_mul(%struct.TYPE_12__* %42, %struct.TYPE_11__* %43, i32* %44, %struct.TYPE_11__* %45, i32* null, i32* null)
  %47 = call i32 @MBEDTLS_MPI_CHK(i32 %46)
  br label %48

48:                                               ; preds = %41, %40
  br label %49

49:                                               ; preds = %48, %13
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %9, align 4
  ret i32 %51
}

declare dso_local i64 @mbedtls_mpi_cmp_int(i32*, i32) #1

declare dso_local i32 @MBEDTLS_MPI_CHK(i32) #1

declare dso_local i32 @mbedtls_ecp_copy(%struct.TYPE_11__*, %struct.TYPE_11__*) #1

declare dso_local i32 @mbedtls_mpi_sub_mpi(i32*, i32*, i32*) #1

declare dso_local i32 @mbedtls_ecp_mul(%struct.TYPE_12__*, %struct.TYPE_11__*, i32*, %struct.TYPE_11__*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
