; ModuleID = '/home/carl/AnghaBench/ZipArchive/SSZipArchive/minizip/extr_mz_crypt_apple.c_mz_crypt_sha_end.c'
source_filename = "/home/carl/AnghaBench/ZipArchive/SSZipArchive/minizip/extr_mz_crypt_apple.c_mz_crypt_sha_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32, i32, i32, i32 }

@MZ_PARAM_ERROR = common dso_local global i64 0, align 8
@MZ_HASH_SHA1 = common dso_local global i64 0, align 8
@MZ_HASH_SHA1_SIZE = common dso_local global i64 0, align 8
@MZ_BUF_ERROR = common dso_local global i64 0, align 8
@MZ_HASH_SHA256_SIZE = common dso_local global i64 0, align 8
@MZ_HASH_ERROR = common dso_local global i64 0, align 8
@MZ_OK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mz_crypt_sha_end(i8* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_2__*, align 8
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %10, %struct.TYPE_2__** %8, align 8
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %12 = icmp eq %struct.TYPE_2__* %11, null
  br i1 %12, label %21, label %13

13:                                               ; preds = %3
  %14 = load i32*, i32** %6, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %21, label %16

16:                                               ; preds = %13
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %16, %13, %3
  %22 = load i64, i64* @MZ_PARAM_ERROR, align 8
  store i64 %22, i64* %4, align 8
  br label %64

23:                                               ; preds = %16
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @MZ_HASH_SHA1, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %42

29:                                               ; preds = %23
  %30 = load i64, i64* %7, align 8
  %31 = load i64, i64* @MZ_HASH_SHA1_SIZE, align 8
  %32 = icmp slt i64 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = load i64, i64* @MZ_BUF_ERROR, align 8
  store i64 %34, i64* %4, align 8
  br label %64

35:                                               ; preds = %29
  %36 = load i32*, i32** %6, align 8
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 3
  %39 = call i32 @CC_SHA1_Final(i32* %36, i32* %38)
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 8
  br label %55

42:                                               ; preds = %23
  %43 = load i64, i64* %7, align 8
  %44 = load i64, i64* @MZ_HASH_SHA256_SIZE, align 8
  %45 = icmp slt i64 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %42
  %47 = load i64, i64* @MZ_BUF_ERROR, align 8
  store i64 %47, i64* %4, align 8
  br label %64

48:                                               ; preds = %42
  %49 = load i32*, i32** %6, align 8
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 2
  %52 = call i32 @CC_SHA256_Final(i32* %49, i32* %51)
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 8
  br label %55

55:                                               ; preds = %48, %35
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %62, label %60

60:                                               ; preds = %55
  %61 = load i64, i64* @MZ_HASH_ERROR, align 8
  store i64 %61, i64* %4, align 8
  br label %64

62:                                               ; preds = %55
  %63 = load i64, i64* @MZ_OK, align 8
  store i64 %63, i64* %4, align 8
  br label %64

64:                                               ; preds = %62, %60, %46, %33, %21
  %65 = load i64, i64* %4, align 8
  ret i64 %65
}

declare dso_local i32 @CC_SHA1_Final(i32*, i32*) #1

declare dso_local i32 @CC_SHA256_Final(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
