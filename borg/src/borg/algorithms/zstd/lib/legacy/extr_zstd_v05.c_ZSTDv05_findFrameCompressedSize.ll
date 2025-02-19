; ModuleID = '/home/carl/AnghaBench/borg/src/borg/algorithms/zstd/lib/legacy/extr_zstd_v05.c_ZSTDv05_findFrameCompressedSize.c'
source_filename = "/home/carl/AnghaBench/borg/src/borg/algorithms/zstd/lib/legacy/extr_zstd_v05.c_ZSTDv05_findFrameCompressedSize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ZSTDv05_frameHeaderSize_min = common dso_local global i64 0, align 8
@srcSize_wrong = common dso_local global i32 0, align 4
@ZSTDv05_MAGICNUMBER = common dso_local global i64 0, align 8
@prefix_unknown = common dso_local global i32 0, align 4
@ZSTDv05_blockHeaderSize = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ZSTDv05_findFrameCompressedSize(i8* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to i32*
  store i32* %11, i32** %6, align 8
  %12 = load i64, i64* %5, align 8
  store i64 %12, i64* %7, align 8
  %13 = load i64, i64* %5, align 8
  %14 = load i64, i64* @ZSTDv05_frameHeaderSize_min, align 8
  %15 = icmp ult i64 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32, i32* @srcSize_wrong, align 4
  %18 = call i64 @ERROR(i32 %17)
  store i64 %18, i64* %3, align 8
  br label %75

19:                                               ; preds = %2
  %20 = load i8*, i8** %4, align 8
  %21 = call i64 @MEM_readLE32(i8* %20)
  %22 = load i64, i64* @ZSTDv05_MAGICNUMBER, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load i32, i32* @prefix_unknown, align 4
  %26 = call i64 @ERROR(i32 %25)
  store i64 %26, i64* %3, align 8
  br label %75

27:                                               ; preds = %19
  %28 = load i64, i64* @ZSTDv05_frameHeaderSize_min, align 8
  %29 = load i32*, i32** %6, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 %28
  store i32* %30, i32** %6, align 8
  %31 = load i64, i64* @ZSTDv05_frameHeaderSize_min, align 8
  %32 = load i64, i64* %7, align 8
  %33 = sub i64 %32, %31
  store i64 %33, i64* %7, align 8
  br label %34

34:                                               ; preds = %27, %60
  %35 = load i32*, i32** %6, align 8
  %36 = load i64, i64* %7, align 8
  %37 = call i64 @ZSTDv05_getcBlockSize(i32* %35, i64 %36, i32* %8)
  store i64 %37, i64* %9, align 8
  %38 = load i64, i64* %9, align 8
  %39 = call i64 @ZSTDv05_isError(i64 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %34
  %42 = load i64, i64* %9, align 8
  store i64 %42, i64* %3, align 8
  br label %75

43:                                               ; preds = %34
  %44 = load i64, i64* @ZSTDv05_blockHeaderSize, align 8
  %45 = load i32*, i32** %6, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 %44
  store i32* %46, i32** %6, align 8
  %47 = load i64, i64* @ZSTDv05_blockHeaderSize, align 8
  %48 = load i64, i64* %7, align 8
  %49 = sub i64 %48, %47
  store i64 %49, i64* %7, align 8
  %50 = load i64, i64* %9, align 8
  %51 = load i64, i64* %7, align 8
  %52 = icmp ugt i64 %50, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %43
  %54 = load i32, i32* @srcSize_wrong, align 4
  %55 = call i64 @ERROR(i32 %54)
  store i64 %55, i64* %3, align 8
  br label %75

56:                                               ; preds = %43
  %57 = load i64, i64* %9, align 8
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %56
  br label %67

60:                                               ; preds = %56
  %61 = load i64, i64* %9, align 8
  %62 = load i32*, i32** %6, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 %61
  store i32* %63, i32** %6, align 8
  %64 = load i64, i64* %9, align 8
  %65 = load i64, i64* %7, align 8
  %66 = sub i64 %65, %64
  store i64 %66, i64* %7, align 8
  br label %34

67:                                               ; preds = %59
  %68 = load i32*, i32** %6, align 8
  %69 = load i8*, i8** %4, align 8
  %70 = bitcast i8* %69 to i32*
  %71 = ptrtoint i32* %68 to i64
  %72 = ptrtoint i32* %70 to i64
  %73 = sub i64 %71, %72
  %74 = sdiv exact i64 %73, 4
  store i64 %74, i64* %3, align 8
  br label %75

75:                                               ; preds = %67, %53, %41, %24, %16
  %76 = load i64, i64* %3, align 8
  ret i64 %76
}

declare dso_local i64 @ERROR(i32) #1

declare dso_local i64 @MEM_readLE32(i8*) #1

declare dso_local i64 @ZSTDv05_getcBlockSize(i32*, i64, i32*) #1

declare dso_local i64 @ZSTDv05_isError(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
