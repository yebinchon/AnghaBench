; ModuleID = '/home/carl/AnghaBench/borg/src/borg/algorithms/zstd/lib/common/extr_fse_decompress.c_FSE_decompress_wksp.c'
source_filename = "/home/carl/AnghaBench/borg/src/borg/algorithms/zstd/lib/common/extr_fse_decompress.c_FSE_decompress_wksp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FSE_MAX_SYMBOL_VALUE = common dso_local global i32 0, align 4
@tableLog_tooLarge = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @FSE_decompress_wksp(i8* %0, i64 %1, i8* %2, i64 %3, i32* %4, i32 %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i64 %1, i64* %9, align 8
  store i8* %2, i8** %10, align 8
  store i64 %3, i64* %11, align 8
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  %22 = load i8*, i8** %10, align 8
  %23 = bitcast i8* %22 to i32*
  store i32* %23, i32** %14, align 8
  %24 = load i32*, i32** %14, align 8
  store i32* %24, i32** %15, align 8
  %25 = load i32, i32* @FSE_MAX_SYMBOL_VALUE, align 4
  %26 = add nsw i32 %25, 1
  %27 = zext i32 %26 to i64
  %28 = call i8* @llvm.stacksave()
  store i8* %28, i8** %16, align 8
  %29 = alloca i16, i64 %27, align 16
  store i64 %27, i64* %17, align 8
  %30 = load i32, i32* @FSE_MAX_SYMBOL_VALUE, align 4
  store i32 %30, i32* %19, align 4
  %31 = load i32*, i32** %14, align 8
  %32 = load i64, i64* %11, align 8
  %33 = call i64 @FSE_readNCount(i16* %29, i32* %19, i32* %18, i32* %31, i64 %32)
  store i64 %33, i64* %20, align 8
  %34 = load i64, i64* %20, align 8
  %35 = call i64 @FSE_isError(i64 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %6
  %38 = load i64, i64* %20, align 8
  store i64 %38, i64* %7, align 8
  store i32 1, i32* %21, align 4
  br label %64

39:                                               ; preds = %6
  %40 = load i32, i32* %18, align 4
  %41 = load i32, i32* %13, align 4
  %42 = icmp ugt i32 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %39
  %44 = load i32, i32* @tableLog_tooLarge, align 4
  %45 = call i64 @ERROR(i32 %44)
  store i64 %45, i64* %7, align 8
  store i32 1, i32* %21, align 4
  br label %64

46:                                               ; preds = %39
  %47 = load i64, i64* %20, align 8
  %48 = load i32*, i32** %15, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 %47
  store i32* %49, i32** %15, align 8
  %50 = load i64, i64* %20, align 8
  %51 = load i64, i64* %11, align 8
  %52 = sub i64 %51, %50
  store i64 %52, i64* %11, align 8
  %53 = load i32*, i32** %12, align 8
  %54 = load i32, i32* %19, align 4
  %55 = load i32, i32* %18, align 4
  %56 = call i32 @FSE_buildDTable(i32* %53, i16* %29, i32 %54, i32 %55)
  %57 = call i32 @CHECK_F(i32 %56)
  %58 = load i8*, i8** %8, align 8
  %59 = load i64, i64* %9, align 8
  %60 = load i32*, i32** %15, align 8
  %61 = load i64, i64* %11, align 8
  %62 = load i32*, i32** %12, align 8
  %63 = call i64 @FSE_decompress_usingDTable(i8* %58, i64 %59, i32* %60, i64 %61, i32* %62)
  store i64 %63, i64* %7, align 8
  store i32 1, i32* %21, align 4
  br label %64

64:                                               ; preds = %46, %43, %37
  %65 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %65)
  %66 = load i64, i64* %7, align 8
  ret i64 %66
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @FSE_readNCount(i16*, i32*, i32*, i32*, i64) #2

declare dso_local i64 @FSE_isError(i64) #2

declare dso_local i64 @ERROR(i32) #2

declare dso_local i32 @CHECK_F(i32) #2

declare dso_local i32 @FSE_buildDTable(i32*, i16*, i32, i32) #2

declare dso_local i64 @FSE_decompress_usingDTable(i8*, i64, i32*, i64, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
