; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_ecp.c_mbedtls_ecp_mul.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_ecp.c_mbedtls_ecp_mul.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }

@MBEDTLS_ERR_ECP_BAD_INPUT_DATA = common dso_local global i32 0, align 4
@ECP_TYPE_MONTGOMERY = common dso_local global i64 0, align 8
@ECP_TYPE_SHORT_WEIERSTRASS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_ecp_mul(i32* %0, %struct.TYPE_9__* %1, i32* %2, %struct.TYPE_9__* %3, i32 (i8*, i8*, i64)* %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_9__*, align 8
  %12 = alloca i32 (i8*, i8*, i64)*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %9, align 8
  store i32* %2, i32** %10, align 8
  store %struct.TYPE_9__* %3, %struct.TYPE_9__** %11, align 8
  store i32 (i8*, i8*, i64)* %4, i32 (i8*, i8*, i64)** %12, align 8
  store i8* %5, i8** %13, align 8
  %15 = load i32, i32* @MBEDTLS_ERR_ECP_BAD_INPUT_DATA, align 4
  store i32 %15, i32* %14, align 4
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = call i64 @mbedtls_mpi_cmp_int(i32* %17, i32 1)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %6
  %21 = load i32, i32* @MBEDTLS_ERR_ECP_BAD_INPUT_DATA, align 4
  store i32 %21, i32* %7, align 4
  br label %36

22:                                               ; preds = %6
  %23 = load i32*, i32** %8, align 8
  %24 = load i32*, i32** %10, align 8
  %25 = call i32 @mbedtls_ecp_check_privkey(i32* %23, i32* %24)
  store i32 %25, i32* %14, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %22
  %28 = load i32*, i32** %8, align 8
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %30 = call i32 @mbedtls_ecp_check_pubkey(i32* %28, %struct.TYPE_9__* %29)
  store i32 %30, i32* %14, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %27, %22
  %33 = load i32, i32* %14, align 4
  store i32 %33, i32* %7, align 4
  br label %36

34:                                               ; preds = %27
  %35 = load i32, i32* %14, align 4
  store i32 %35, i32* %7, align 4
  br label %36

36:                                               ; preds = %34, %32, %20
  %37 = load i32, i32* %7, align 4
  ret i32 %37
}

declare dso_local i64 @mbedtls_mpi_cmp_int(i32*, i32) #1

declare dso_local i32 @mbedtls_ecp_check_privkey(i32*, i32*) #1

declare dso_local i32 @mbedtls_ecp_check_pubkey(i32*, %struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
