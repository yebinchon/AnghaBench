; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_x509write_crt.c_mbedtls_x509write_crt_pem.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_x509write_crt.c_mbedtls_x509write_crt_pem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PEM_BEGIN_CRT = common dso_local global i32 0, align 4
@PEM_END_CRT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_x509write_crt_pem(i32* %0, i8* %1, i64 %2, i32 (i8*, i8*, i64)* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32 (i8*, i8*, i64)*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca [4096 x i8], align 16
  %14 = alloca i64, align 8
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 (i8*, i8*, i64)* %3, i32 (i8*, i8*, i64)** %10, align 8
  store i8* %4, i8** %11, align 8
  store i64 0, i64* %14, align 8
  %15 = load i32*, i32** %7, align 8
  %16 = getelementptr inbounds [4096 x i8], [4096 x i8]* %13, i64 0, i64 0
  %17 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %10, align 8
  %18 = load i8*, i8** %11, align 8
  %19 = call i32 @mbedtls_x509write_crt_der(i32* %15, i8* %16, i32 4096, i32 (i8*, i8*, i64)* %17, i8* %18)
  store i32 %19, i32* %12, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %5
  %22 = load i32, i32* %12, align 4
  store i32 %22, i32* %6, align 4
  br label %40

23:                                               ; preds = %5
  %24 = load i32, i32* @PEM_BEGIN_CRT, align 4
  %25 = load i32, i32* @PEM_END_CRT, align 4
  %26 = getelementptr inbounds [4096 x i8], [4096 x i8]* %13, i64 0, i64 0
  %27 = getelementptr inbounds i8, i8* %26, i64 4096
  %28 = load i32, i32* %12, align 4
  %29 = sext i32 %28 to i64
  %30 = sub i64 0, %29
  %31 = getelementptr inbounds i8, i8* %27, i64 %30
  %32 = load i32, i32* %12, align 4
  %33 = load i8*, i8** %8, align 8
  %34 = load i64, i64* %9, align 8
  %35 = call i32 @mbedtls_pem_write_buffer(i32 %24, i32 %25, i8* %31, i32 %32, i8* %33, i64 %34, i64* %14)
  store i32 %35, i32* %12, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %23
  %38 = load i32, i32* %12, align 4
  store i32 %38, i32* %6, align 4
  br label %40

39:                                               ; preds = %23
  store i32 0, i32* %6, align 4
  br label %40

40:                                               ; preds = %39, %37, %21
  %41 = load i32, i32* %6, align 4
  ret i32 %41
}

declare dso_local i32 @mbedtls_x509write_crt_der(i32*, i8*, i32, i32 (i8*, i8*, i64)*, i8*) #1

declare dso_local i32 @mbedtls_pem_write_buffer(i32, i32, i8*, i32, i8*, i64, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
