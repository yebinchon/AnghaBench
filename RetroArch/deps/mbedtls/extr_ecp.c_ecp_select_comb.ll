; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_ecp.c_ecp_select_comb.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_ecp.c_ecp_select_comb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_5__*, %struct.TYPE_5__*, i8, i8)* @ecp_select_comb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecp_select_comb(i32* %0, %struct.TYPE_5__* %1, %struct.TYPE_5__* %2, i8 zeroext %3, i8 zeroext %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i32, align 4
  %12 = alloca i8, align 1
  %13 = alloca i8, align 1
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %7, align 8
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %8, align 8
  store i8 %3, i8* %9, align 1
  store i8 %4, i8* %10, align 1
  %14 = load i8, i8* %10, align 1
  %15 = zext i8 %14 to i32
  %16 = and i32 %15, 127
  %17 = lshr i32 %16, 1
  %18 = trunc i32 %17 to i8
  store i8 %18, i8* %12, align 1
  store i8 0, i8* %13, align 1
  br label %19

19:                                               ; preds = %56, %5
  %20 = load i8, i8* %13, align 1
  %21 = zext i8 %20 to i32
  %22 = load i8, i8* %9, align 1
  %23 = zext i8 %22 to i32
  %24 = icmp slt i32 %21, %23
  br i1 %24, label %25, label %59

25:                                               ; preds = %19
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %29 = load i8, i8* %13, align 1
  %30 = zext i8 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
  %33 = load i8, i8* %13, align 1
  %34 = zext i8 %33 to i32
  %35 = load i8, i8* %12, align 1
  %36 = zext i8 %35 to i32
  %37 = icmp eq i32 %34, %36
  %38 = zext i1 %37 to i32
  %39 = call i32 @mbedtls_mpi_safe_cond_assign(i32* %27, i32* %32, i32 %38)
  %40 = call i32 @MBEDTLS_MPI_CHK(i32 %39)
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %44 = load i8, i8* %13, align 1
  %45 = zext i8 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i8, i8* %13, align 1
  %49 = zext i8 %48 to i32
  %50 = load i8, i8* %12, align 1
  %51 = zext i8 %50 to i32
  %52 = icmp eq i32 %49, %51
  %53 = zext i1 %52 to i32
  %54 = call i32 @mbedtls_mpi_safe_cond_assign(i32* %42, i32* %47, i32 %53)
  %55 = call i32 @MBEDTLS_MPI_CHK(i32 %54)
  br label %56

56:                                               ; preds = %25
  %57 = load i8, i8* %13, align 1
  %58 = add i8 %57, 1
  store i8 %58, i8* %13, align 1
  br label %19

59:                                               ; preds = %19
  %60 = load i32*, i32** %6, align 8
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %62 = load i8, i8* %10, align 1
  %63 = zext i8 %62 to i32
  %64 = ashr i32 %63, 7
  %65 = trunc i32 %64 to i8
  %66 = call i32 @ecp_safe_invert_jac(i32* %60, %struct.TYPE_5__* %61, i8 zeroext %65)
  %67 = call i32 @MBEDTLS_MPI_CHK(i32 %66)
  br label %68

68:                                               ; preds = %59
  %69 = load i32, i32* %11, align 4
  ret i32 %69
}

declare dso_local i32 @MBEDTLS_MPI_CHK(i32) #1

declare dso_local i32 @mbedtls_mpi_safe_cond_assign(i32*, i32*, i32) #1

declare dso_local i32 @ecp_safe_invert_jac(i32*, %struct.TYPE_5__*, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
