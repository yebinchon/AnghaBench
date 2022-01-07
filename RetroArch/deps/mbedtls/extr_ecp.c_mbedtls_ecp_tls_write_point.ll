; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_ecp.c_mbedtls_ecp_tls_write_point.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_ecp.c_mbedtls_ecp_tls_write_point.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MBEDTLS_ERR_ECP_BAD_INPUT_DATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_ecp_tls_write_point(i32* %0, i32* %1, i32 %2, i64* %3, i8* %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i64* %3, i64** %11, align 8
  store i8* %4, i8** %12, align 8
  store i64 %5, i64* %13, align 8
  %15 = load i64, i64* %13, align 8
  %16 = icmp ult i64 %15, 1
  br i1 %16, label %17, label %19

17:                                               ; preds = %6
  %18 = load i32, i32* @MBEDTLS_ERR_ECP_BAD_INPUT_DATA, align 4
  store i32 %18, i32* %7, align 4
  br label %41

19:                                               ; preds = %6
  %20 = load i32*, i32** %8, align 8
  %21 = load i32*, i32** %9, align 8
  %22 = load i32, i32* %10, align 4
  %23 = load i64*, i64** %11, align 8
  %24 = load i8*, i8** %12, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 1
  %26 = load i64, i64* %13, align 8
  %27 = sub i64 %26, 1
  %28 = call i32 @mbedtls_ecp_point_write_binary(i32* %20, i32* %21, i32 %22, i64* %23, i8* %25, i64 %27)
  store i32 %28, i32* %14, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %19
  %31 = load i32, i32* %14, align 4
  store i32 %31, i32* %7, align 4
  br label %41

32:                                               ; preds = %19
  %33 = load i64*, i64** %11, align 8
  %34 = load i64, i64* %33, align 8
  %35 = trunc i64 %34 to i8
  %36 = load i8*, i8** %12, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 0
  store i8 %35, i8* %37, align 1
  %38 = load i64*, i64** %11, align 8
  %39 = load i64, i64* %38, align 8
  %40 = add i64 %39, 1
  store i64 %40, i64* %38, align 8
  store i32 0, i32* %7, align 4
  br label %41

41:                                               ; preds = %32, %30, %17
  %42 = load i32, i32* %7, align 4
  ret i32 %42
}

declare dso_local i32 @mbedtls_ecp_point_write_binary(i32*, i32*, i32, i64*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
