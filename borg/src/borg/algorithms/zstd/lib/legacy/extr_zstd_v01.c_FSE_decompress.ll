; ModuleID = '/home/carl/AnghaBench/borg/src/borg/algorithms/zstd/lib/legacy/extr_zstd_v01.c_FSE_decompress.c'
source_filename = "/home/carl/AnghaBench/borg/src/borg/algorithms/zstd/lib/legacy/extr_zstd_v01.c_FSE_decompress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FSE_MAX_SYMBOL_VALUE = common dso_local global i32 0, align 4
@FSE_ERROR_srcSize_wrong = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i64, i8*, i64)* @FSE_decompress to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @FSE_decompress(i8* %0, i64 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = bitcast i8* %19 to i32*
  store i32* %20, i32** %10, align 8
  %21 = load i32*, i32** %10, align 8
  store i32* %21, i32** %11, align 8
  %22 = load i32, i32* @FSE_MAX_SYMBOL_VALUE, align 4
  %23 = add nsw i32 %22, 1
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %12, align 8
  %26 = alloca i16, i64 %24, align 16
  store i64 %24, i64* %13, align 8
  %27 = load i32, i32* @FSE_MAX_SYMBOL_VALUE, align 4
  store i32 %27, i32* %16, align 4
  %28 = load i64, i64* %9, align 8
  %29 = icmp ult i64 %28, 2
  br i1 %29, label %30, label %34

30:                                               ; preds = %4
  %31 = load i32, i32* @FSE_ERROR_srcSize_wrong, align 4
  %32 = sub nsw i32 0, %31
  %33 = sext i32 %32 to i64
  store i64 %33, i64* %5, align 8
  store i32 1, i32* %18, align 4
  br label %74

34:                                               ; preds = %4
  %35 = load i32*, i32** %10, align 8
  %36 = load i64, i64* %9, align 8
  %37 = call i64 @FSE_readNCount(i16* %26, i32* %16, i32* %15, i32* %35, i64 %36)
  store i64 %37, i64* %17, align 8
  %38 = load i64, i64* %17, align 8
  %39 = call i64 @FSE_isError(i64 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %34
  %42 = load i64, i64* %17, align 8
  store i64 %42, i64* %5, align 8
  store i32 1, i32* %18, align 4
  br label %74

43:                                               ; preds = %34
  %44 = load i64, i64* %17, align 8
  %45 = load i64, i64* %9, align 8
  %46 = icmp uge i64 %44, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %43
  %48 = load i32, i32* @FSE_ERROR_srcSize_wrong, align 4
  %49 = sub nsw i32 0, %48
  %50 = sext i32 %49 to i64
  store i64 %50, i64* %5, align 8
  store i32 1, i32* %18, align 4
  br label %74

51:                                               ; preds = %43
  %52 = load i64, i64* %17, align 8
  %53 = load i32*, i32** %11, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 %52
  store i32* %54, i32** %11, align 8
  %55 = load i64, i64* %17, align 8
  %56 = load i64, i64* %9, align 8
  %57 = sub i64 %56, %55
  store i64 %57, i64* %9, align 8
  %58 = load i32, i32* %14, align 4
  %59 = load i32, i32* %16, align 4
  %60 = load i32, i32* %15, align 4
  %61 = call i64 @FSE_buildDTable(i32 %58, i16* %26, i32 %59, i32 %60)
  store i64 %61, i64* %17, align 8
  %62 = load i64, i64* %17, align 8
  %63 = call i64 @FSE_isError(i64 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %51
  %66 = load i64, i64* %17, align 8
  store i64 %66, i64* %5, align 8
  store i32 1, i32* %18, align 4
  br label %74

67:                                               ; preds = %51
  %68 = load i8*, i8** %6, align 8
  %69 = load i64, i64* %7, align 8
  %70 = load i32*, i32** %11, align 8
  %71 = load i64, i64* %9, align 8
  %72 = load i32, i32* %14, align 4
  %73 = call i64 @FSE_decompress_usingDTable(i8* %68, i64 %69, i32* %70, i64 %71, i32 %72)
  store i64 %73, i64* %5, align 8
  store i32 1, i32* %18, align 4
  br label %74

74:                                               ; preds = %67, %65, %47, %41, %30
  %75 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %75)
  %76 = load i64, i64* %5, align 8
  ret i64 %76
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @FSE_readNCount(i16*, i32*, i32*, i32*, i64) #2

declare dso_local i64 @FSE_isError(i64) #2

declare dso_local i64 @FSE_buildDTable(i32, i16*, i32, i32) #2

declare dso_local i64 @FSE_decompress_usingDTable(i8*, i64, i32*, i64, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
