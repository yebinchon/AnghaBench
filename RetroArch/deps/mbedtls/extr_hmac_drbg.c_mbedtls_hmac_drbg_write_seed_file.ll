; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_hmac_drbg.c_mbedtls_hmac_drbg_write_seed_file.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_hmac_drbg.c_mbedtls_hmac_drbg_write_seed_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MBEDTLS_HMAC_DRBG_MAX_INPUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@MBEDTLS_ERR_HMAC_DRBG_FILE_IO_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_hmac_drbg_write_seed_file(i32* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load i32, i32* @MBEDTLS_HMAC_DRBG_MAX_INPUT, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %8, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %9, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = call i32* @fopen(i8* %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %16, i32** %7, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* @MBEDTLS_ERR_HMAC_DRBG_FILE_IO_ERROR, align 4
  store i32 %19, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %39

20:                                               ; preds = %2
  %21 = load i32*, i32** %4, align 8
  %22 = trunc i64 %12 to i32
  %23 = call i32 @mbedtls_hmac_drbg_random(i32* %21, i8* %14, i32 %22)
  store i32 %23, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  br label %35

26:                                               ; preds = %20
  %27 = trunc i64 %12 to i32
  %28 = load i32*, i32** %7, align 8
  %29 = call i32 @fwrite(i8* %14, i32 1, i32 %27, i32* %28)
  %30 = sext i32 %29 to i64
  %31 = icmp ne i64 %30, %12
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = load i32, i32* @MBEDTLS_ERR_HMAC_DRBG_FILE_IO_ERROR, align 4
  store i32 %33, i32* %6, align 4
  br label %35

34:                                               ; preds = %26
  store i32 0, i32* %6, align 4
  br label %35

35:                                               ; preds = %34, %32, %25
  %36 = load i32*, i32** %7, align 8
  %37 = call i32 @fclose(i32* %36)
  %38 = load i32, i32* %6, align 4
  store i32 %38, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %39

39:                                               ; preds = %35, %18
  %40 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %40)
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @fopen(i8*, i8*) #2

declare dso_local i32 @mbedtls_hmac_drbg_random(i32*, i8*, i32) #2

declare dso_local i32 @fwrite(i8*, i32, i32, i32*) #2

declare dso_local i32 @fclose(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
