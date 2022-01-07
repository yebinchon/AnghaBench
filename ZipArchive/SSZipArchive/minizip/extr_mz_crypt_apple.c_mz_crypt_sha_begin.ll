; ModuleID = '/home/carl/AnghaBench/ZipArchive/SSZipArchive/minizip/extr_mz_crypt_apple.c_mz_crypt_sha_begin.c'
source_filename = "/home/carl/AnghaBench/ZipArchive/SSZipArchive/minizip/extr_mz_crypt_apple.c_mz_crypt_sha_begin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32, i32, i32, i32 }

@MZ_PARAM_ERROR = common dso_local global i32 0, align 4
@MZ_HASH_SHA1 = common dso_local global i64 0, align 8
@MZ_HASH_SHA256 = common dso_local global i64 0, align 8
@MZ_HASH_ERROR = common dso_local global i32 0, align 4
@MZ_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mz_crypt_sha_begin(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_2__*, align 8
  store i8* %0, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = bitcast i8* %5 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %6, %struct.TYPE_2__** %4, align 8
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %8 = icmp eq %struct.TYPE_2__* %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* @MZ_PARAM_ERROR, align 4
  store i32 %10, i32* %2, align 4
  br label %51

11:                                               ; preds = %1
  %12 = load i8*, i8** %3, align 8
  %13 = call i32 @mz_crypt_sha_reset(i8* %12)
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @MZ_HASH_SHA1, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %25

19:                                               ; preds = %11
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 4
  %22 = call i32 @CC_SHA1_Init(i32* %21)
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 2
  store i32 %22, i32* %24, align 4
  br label %40

25:                                               ; preds = %11
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @MZ_HASH_SHA256, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %25
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 3
  %34 = call i32 @CC_SHA256_Init(i32* %33)
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 4
  br label %39

37:                                               ; preds = %25
  %38 = load i32, i32* @MZ_PARAM_ERROR, align 4
  store i32 %38, i32* %2, align 4
  br label %51

39:                                               ; preds = %31
  br label %40

40:                                               ; preds = %39, %19
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %40
  %46 = load i32, i32* @MZ_HASH_ERROR, align 4
  store i32 %46, i32* %2, align 4
  br label %51

47:                                               ; preds = %40
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  store i32 1, i32* %49, align 8
  %50 = load i32, i32* @MZ_OK, align 4
  store i32 %50, i32* %2, align 4
  br label %51

51:                                               ; preds = %47, %45, %37, %9
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local i32 @mz_crypt_sha_reset(i8*) #1

declare dso_local i32 @CC_SHA1_Init(i32*) #1

declare dso_local i32 @CC_SHA256_Init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
