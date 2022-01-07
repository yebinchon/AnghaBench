; ModuleID = '/home/carl/AnghaBench/ZipArchive/SSZipArchive/minizip/extr_mz_strm_wzaes.c_mz_stream_wzaes_ctr_encrypt.c'
source_filename = "/home/carl/AnghaBench/ZipArchive/SSZipArchive/minizip/extr_mz_strm_wzaes.c_mz_stream_wzaes_ctr_encrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32*, i32, i32* }

@MZ_OK = common dso_local global i64 0, align 8
@MZ_AES_BLOCK_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i32*, i64)* @mz_stream_wzaes_ctr_encrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mz_stream_wzaes_ctr_encrypt(i8* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_2__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = bitcast i8* %12 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %13, %struct.TYPE_2__** %7, align 8
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %8, align 8
  store i64 0, i64* %9, align 8
  %17 = load i64, i64* @MZ_OK, align 8
  store i64 %17, i64* %10, align 8
  br label %18

18:                                               ; preds = %61, %3
  %19 = load i64, i64* %9, align 8
  %20 = load i64, i64* %6, align 8
  %21 = icmp slt i64 %19, %20
  br i1 %21, label %22, label %75

22:                                               ; preds = %18
  %23 = load i64, i64* %8, align 8
  %24 = load i64, i64* @MZ_AES_BLOCK_SIZE, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %61

26:                                               ; preds = %22
  store i64 0, i64* %11, align 8
  br label %27

27:                                               ; preds = %42, %26
  %28 = load i64, i64* %11, align 8
  %29 = icmp slt i64 %28, 8
  br i1 %29, label %30, label %40

30:                                               ; preds = %27
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 3
  %33 = load i32*, i32** %32, align 8
  %34 = load i64, i64* %11, align 8
  %35 = getelementptr inbounds i32, i32* %33, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %35, align 4
  %38 = icmp ne i32 %37, 0
  %39 = xor i1 %38, true
  br label %40

40:                                               ; preds = %30, %27
  %41 = phi i1 [ false, %27 ], [ %39, %30 ]
  br i1 %41, label %42, label %45

42:                                               ; preds = %40
  %43 = load i64, i64* %11, align 8
  %44 = add nsw i64 %43, 1
  store i64 %44, i64* %11, align 8
  br label %27

45:                                               ; preds = %40
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 3
  %51 = load i32*, i32** %50, align 8
  %52 = load i64, i64* @MZ_AES_BLOCK_SIZE, align 8
  %53 = call i32 @memcpy(i32* %48, i32* %51, i64 %52)
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = call i32 @mz_crypt_aes_encrypt(i32 %56, i32* %59, i32 8)
  store i64 0, i64* %8, align 8
  br label %61

61:                                               ; preds = %45, %22
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = load i64, i64* %8, align 8
  %66 = add nsw i64 %65, 1
  store i64 %66, i64* %8, align 8
  %67 = getelementptr inbounds i32, i32* %64, i64 %65
  %68 = load i32, i32* %67, align 4
  %69 = load i32*, i32** %5, align 8
  %70 = load i64, i64* %9, align 8
  %71 = add nsw i64 %70, 1
  store i64 %71, i64* %9, align 8
  %72 = getelementptr inbounds i32, i32* %69, i64 %70
  %73 = load i32, i32* %72, align 4
  %74 = xor i32 %73, %68
  store i32 %74, i32* %72, align 4
  br label %18

75:                                               ; preds = %18
  %76 = load i64, i64* %8, align 8
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  store i64 %76, i64* %78, align 8
  %79 = load i64, i64* %10, align 8
  ret i64 %79
}

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

declare dso_local i32 @mz_crypt_aes_encrypt(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
