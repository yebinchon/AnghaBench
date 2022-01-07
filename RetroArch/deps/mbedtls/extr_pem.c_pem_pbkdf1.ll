; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_pem.c_pem_pbkdf1.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_pem.c_pem_pbkdf1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64, i8*, i8*, i64)* @pem_pbkdf1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pem_pbkdf1(i8* %0, i64 %1, i8* %2, i8* %3, i64 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca [16 x i8], align 16
  %13 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i64 %4, i64* %10, align 8
  %14 = call i32 @mbedtls_md5_init(i32* %11)
  %15 = call i32 @mbedtls_md5_starts(i32* %11)
  %16 = load i8*, i8** %9, align 8
  %17 = load i64, i64* %10, align 8
  %18 = trunc i64 %17 to i32
  %19 = call i32 @mbedtls_md5_update(i32* %11, i8* %16, i32 %18)
  %20 = load i8*, i8** %8, align 8
  %21 = call i32 @mbedtls_md5_update(i32* %11, i8* %20, i32 8)
  %22 = getelementptr inbounds [16 x i8], [16 x i8]* %12, i64 0, i64 0
  %23 = call i32 @mbedtls_md5_finish(i32* %11, i8* %22)
  %24 = load i64, i64* %7, align 8
  %25 = icmp ule i64 %24, 16
  br i1 %25, label %26, label %34

26:                                               ; preds = %5
  %27 = load i8*, i8** %6, align 8
  %28 = getelementptr inbounds [16 x i8], [16 x i8]* %12, i64 0, i64 0
  %29 = load i64, i64* %7, align 8
  %30 = call i32 @memcpy(i8* %27, i8* %28, i64 %29)
  %31 = call i32 @mbedtls_md5_free(i32* %11)
  %32 = getelementptr inbounds [16 x i8], [16 x i8]* %12, i64 0, i64 0
  %33 = call i32 @mbedtls_zeroize(i8* %32, i32 16)
  br label %63

34:                                               ; preds = %5
  %35 = load i8*, i8** %6, align 8
  %36 = getelementptr inbounds [16 x i8], [16 x i8]* %12, i64 0, i64 0
  %37 = call i32 @memcpy(i8* %35, i8* %36, i64 16)
  %38 = call i32 @mbedtls_md5_starts(i32* %11)
  %39 = getelementptr inbounds [16 x i8], [16 x i8]* %12, i64 0, i64 0
  %40 = call i32 @mbedtls_md5_update(i32* %11, i8* %39, i32 16)
  %41 = load i8*, i8** %9, align 8
  %42 = load i64, i64* %10, align 8
  %43 = trunc i64 %42 to i32
  %44 = call i32 @mbedtls_md5_update(i32* %11, i8* %41, i32 %43)
  %45 = load i8*, i8** %8, align 8
  %46 = call i32 @mbedtls_md5_update(i32* %11, i8* %45, i32 8)
  %47 = getelementptr inbounds [16 x i8], [16 x i8]* %12, i64 0, i64 0
  %48 = call i32 @mbedtls_md5_finish(i32* %11, i8* %47)
  store i64 16, i64* %13, align 8
  %49 = load i64, i64* %7, align 8
  %50 = icmp ult i64 %49, 32
  br i1 %50, label %51, label %54

51:                                               ; preds = %34
  %52 = load i64, i64* %7, align 8
  %53 = sub i64 %52, 16
  store i64 %53, i64* %13, align 8
  br label %54

54:                                               ; preds = %51, %34
  %55 = load i8*, i8** %6, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 16
  %57 = getelementptr inbounds [16 x i8], [16 x i8]* %12, i64 0, i64 0
  %58 = load i64, i64* %13, align 8
  %59 = call i32 @memcpy(i8* %56, i8* %57, i64 %58)
  %60 = call i32 @mbedtls_md5_free(i32* %11)
  %61 = getelementptr inbounds [16 x i8], [16 x i8]* %12, i64 0, i64 0
  %62 = call i32 @mbedtls_zeroize(i8* %61, i32 16)
  br label %63

63:                                               ; preds = %54, %26
  ret void
}

declare dso_local i32 @mbedtls_md5_init(i32*) #1

declare dso_local i32 @mbedtls_md5_starts(i32*) #1

declare dso_local i32 @mbedtls_md5_update(i32*, i8*, i32) #1

declare dso_local i32 @mbedtls_md5_finish(i32*, i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @mbedtls_md5_free(i32*) #1

declare dso_local i32 @mbedtls_zeroize(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
