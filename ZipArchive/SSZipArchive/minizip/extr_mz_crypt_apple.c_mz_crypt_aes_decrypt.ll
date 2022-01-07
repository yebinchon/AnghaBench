; ModuleID = '/home/carl/AnghaBench/ZipArchive/SSZipArchive/minizip/extr_mz_crypt_apple.c_mz_crypt_aes_decrypt.c'
source_filename = "/home/carl/AnghaBench/ZipArchive/SSZipArchive/minizip/extr_mz_crypt_apple.c_mz_crypt_aes_decrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32 }

@MZ_PARAM_ERROR = common dso_local global i32 0, align 4
@MZ_AES_BLOCK_SIZE = common dso_local global i32 0, align 4
@kCCSuccess = common dso_local global i64 0, align 8
@MZ_HASH_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mz_crypt_aes_decrypt(i8* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_2__*, align 8
  %9 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %11, %struct.TYPE_2__** %8, align 8
  store i64 0, i64* %9, align 8
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %13 = icmp eq %struct.TYPE_2__* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = load i32*, i32** %6, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %14, %3
  %18 = load i32, i32* @MZ_PARAM_ERROR, align 4
  store i32 %18, i32* %4, align 4
  br label %45

19:                                               ; preds = %14
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @MZ_AES_BLOCK_SIZE, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = load i32, i32* @MZ_PARAM_ERROR, align 4
  store i32 %24, i32* %4, align 4
  br label %45

25:                                               ; preds = %19
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load i32*, i32** %6, align 8
  %30 = load i32, i32* %7, align 4
  %31 = load i32*, i32** %6, align 8
  %32 = load i32, i32* %7, align 4
  %33 = call i64 @CCCryptorUpdate(i32 %28, i32* %29, i32 %30, i32* %31, i32 %32, i64* %9)
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  store i64 %33, i64* %35, align 8
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @kCCSuccess, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %25
  %42 = load i32, i32* @MZ_HASH_ERROR, align 4
  store i32 %42, i32* %4, align 4
  br label %45

43:                                               ; preds = %25
  %44 = load i32, i32* %7, align 4
  store i32 %44, i32* %4, align 4
  br label %45

45:                                               ; preds = %43, %41, %23, %17
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local i64 @CCCryptorUpdate(i32, i32*, i32, i32*, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
