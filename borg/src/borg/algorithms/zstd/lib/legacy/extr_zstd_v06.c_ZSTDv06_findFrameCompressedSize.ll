; ModuleID = '/home/carl/AnghaBench/borg/src/borg/algorithms/zstd/lib/legacy/extr_zstd_v06.c_ZSTDv06_findFrameCompressedSize.c'
source_filename = "/home/carl/AnghaBench/borg/src/borg/algorithms/zstd/lib/legacy/extr_zstd_v06.c_ZSTDv06_findFrameCompressedSize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@bt_compressed = common dso_local global i32 0, align 4
@ZSTDv06_frameHeaderSize_min = common dso_local global i32 0, align 4
@ZSTDv06_MAGICNUMBER = common dso_local global i64 0, align 8
@prefix_unknown = common dso_local global i32 0, align 4
@ZSTDv06_blockHeaderSize = common dso_local global i64 0, align 8
@srcSize_wrong = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ZSTDv06_findFrameCompressedSize(i8* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_3__, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to i32*
  store i32* %12, i32** %6, align 8
  %13 = load i64, i64* %5, align 8
  store i64 %13, i64* %7, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %15 = load i32, i32* @bt_compressed, align 4
  store i32 %15, i32* %14, align 4
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 1
  store i32 0, i32* %16, align 4
  %17 = load i8*, i8** %4, align 8
  %18 = load i32, i32* @ZSTDv06_frameHeaderSize_min, align 4
  %19 = call i64 @ZSTDv06_frameHeaderSize(i8* %17, i32 %18)
  store i64 %19, i64* %9, align 8
  %20 = load i64, i64* %9, align 8
  %21 = call i64 @ZSTDv06_isError(i64 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = load i64, i64* %9, align 8
  store i64 %24, i64* %3, align 8
  br label %90

25:                                               ; preds = %2
  %26 = load i8*, i8** %4, align 8
  %27 = call i64 @MEM_readLE32(i8* %26)
  %28 = load i64, i64* @ZSTDv06_MAGICNUMBER, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load i32, i32* @prefix_unknown, align 4
  %32 = call i64 @ERROR(i32 %31)
  store i64 %32, i64* %3, align 8
  br label %90

33:                                               ; preds = %25
  %34 = load i64, i64* %5, align 8
  %35 = load i64, i64* %9, align 8
  %36 = load i64, i64* @ZSTDv06_blockHeaderSize, align 8
  %37 = add i64 %35, %36
  %38 = icmp ult i64 %34, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %33
  %40 = load i32, i32* @srcSize_wrong, align 4
  %41 = call i64 @ERROR(i32 %40)
  store i64 %41, i64* %3, align 8
  br label %90

42:                                               ; preds = %33
  %43 = load i64, i64* %9, align 8
  %44 = load i32*, i32** %6, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 %43
  store i32* %45, i32** %6, align 8
  %46 = load i64, i64* %9, align 8
  %47 = load i64, i64* %7, align 8
  %48 = sub i64 %47, %46
  store i64 %48, i64* %7, align 8
  br label %49

49:                                               ; preds = %42, %75
  %50 = load i32*, i32** %6, align 8
  %51 = load i64, i64* %7, align 8
  %52 = call i64 @ZSTDv06_getcBlockSize(i32* %50, i64 %51, %struct.TYPE_3__* %8)
  store i64 %52, i64* %10, align 8
  %53 = load i64, i64* %10, align 8
  %54 = call i64 @ZSTDv06_isError(i64 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %49
  %57 = load i64, i64* %10, align 8
  store i64 %57, i64* %3, align 8
  br label %90

58:                                               ; preds = %49
  %59 = load i64, i64* @ZSTDv06_blockHeaderSize, align 8
  %60 = load i32*, i32** %6, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 %59
  store i32* %61, i32** %6, align 8
  %62 = load i64, i64* @ZSTDv06_blockHeaderSize, align 8
  %63 = load i64, i64* %7, align 8
  %64 = sub i64 %63, %62
  store i64 %64, i64* %7, align 8
  %65 = load i64, i64* %10, align 8
  %66 = load i64, i64* %7, align 8
  %67 = icmp ugt i64 %65, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %58
  %69 = load i32, i32* @srcSize_wrong, align 4
  %70 = call i64 @ERROR(i32 %69)
  store i64 %70, i64* %3, align 8
  br label %90

71:                                               ; preds = %58
  %72 = load i64, i64* %10, align 8
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %71
  br label %82

75:                                               ; preds = %71
  %76 = load i64, i64* %10, align 8
  %77 = load i32*, i32** %6, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 %76
  store i32* %78, i32** %6, align 8
  %79 = load i64, i64* %10, align 8
  %80 = load i64, i64* %7, align 8
  %81 = sub i64 %80, %79
  store i64 %81, i64* %7, align 8
  br label %49

82:                                               ; preds = %74
  %83 = load i32*, i32** %6, align 8
  %84 = load i8*, i8** %4, align 8
  %85 = bitcast i8* %84 to i32*
  %86 = ptrtoint i32* %83 to i64
  %87 = ptrtoint i32* %85 to i64
  %88 = sub i64 %86, %87
  %89 = sdiv exact i64 %88, 4
  store i64 %89, i64* %3, align 8
  br label %90

90:                                               ; preds = %82, %68, %56, %39, %30, %23
  %91 = load i64, i64* %3, align 8
  ret i64 %91
}

declare dso_local i64 @ZSTDv06_frameHeaderSize(i8*, i32) #1

declare dso_local i64 @ZSTDv06_isError(i64) #1

declare dso_local i64 @MEM_readLE32(i8*) #1

declare dso_local i64 @ERROR(i32) #1

declare dso_local i64 @ZSTDv06_getcBlockSize(i32*, i64, %struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
