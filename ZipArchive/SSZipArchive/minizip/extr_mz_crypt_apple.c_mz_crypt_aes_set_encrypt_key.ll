; ModuleID = '/home/carl/AnghaBench/ZipArchive/SSZipArchive/minizip/extr_mz_crypt_apple.c_mz_crypt_aes_set_encrypt_key.c'
source_filename = "/home/carl/AnghaBench/ZipArchive/SSZipArchive/minizip/extr_mz_crypt_apple.c_mz_crypt_aes_set_encrypt_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32 }

@MZ_PARAM_ERROR = common dso_local global i64 0, align 8
@kCCEncrypt = common dso_local global i32 0, align 4
@kCCAlgorithmAES = common dso_local global i32 0, align 4
@kCCOptionECBMode = common dso_local global i32 0, align 4
@kCCSuccess = common dso_local global i64 0, align 8
@MZ_HASH_ERROR = common dso_local global i64 0, align 8
@MZ_OK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mz_crypt_aes_set_encrypt_key(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_2__*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %10, %struct.TYPE_2__** %8, align 8
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %12 = icmp eq %struct.TYPE_2__* %11, null
  br i1 %12, label %19, label %13

13:                                               ; preds = %3
  %14 = load i8*, i8** %6, align 8
  %15 = icmp eq i8* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %13
  %17 = load i64, i64* %7, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %16, %13, %3
  %20 = load i64, i64* @MZ_PARAM_ERROR, align 8
  store i64 %20, i64* %4, align 8
  br label %43

21:                                               ; preds = %16
  %22 = load i8*, i8** %5, align 8
  %23 = call i32 @mz_crypt_aes_reset(i8* %22)
  %24 = load i32, i32* @kCCEncrypt, align 4
  %25 = load i32, i32* @kCCAlgorithmAES, align 4
  %26 = load i32, i32* @kCCOptionECBMode, align 4
  %27 = load i8*, i8** %6, align 8
  %28 = load i64, i64* %7, align 8
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = call i64 @CCCryptorCreate(i32 %24, i32 %25, i32 %26, i8* %27, i64 %28, i32* null, i32* %30)
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  store i64 %31, i64* %33, align 8
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @kCCSuccess, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %21
  %40 = load i64, i64* @MZ_HASH_ERROR, align 8
  store i64 %40, i64* %4, align 8
  br label %43

41:                                               ; preds = %21
  %42 = load i64, i64* @MZ_OK, align 8
  store i64 %42, i64* %4, align 8
  br label %43

43:                                               ; preds = %41, %39, %19
  %44 = load i64, i64* %4, align 8
  ret i64 %44
}

declare dso_local i32 @mz_crypt_aes_reset(i8*) #1

declare dso_local i64 @CCCryptorCreate(i32, i32, i32, i8*, i64, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
