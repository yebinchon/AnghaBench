; ModuleID = '/home/carl/AnghaBench/borg/src/borg/algorithms/zstd/lib/legacy/extr_zstd_v03.c_ZSTD_decompressContinue.c'
source_filename = "/home/carl/AnghaBench/borg/src/borg/algorithms/zstd/lib/legacy/extr_zstd_v03.c_ZSTD_decompressContinue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i8*, i32, i64, i8* }
%struct.TYPE_6__ = type { i64 }

@srcSize_wrong = common dso_local global i32 0, align 4
@ZSTD_magicNumber = common dso_local global i64 0, align 8
@prefix_unknown = common dso_local global i32 0, align 4
@ZSTD_blockHeaderSize = common dso_local global i8* null, align 8
@GENERIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_7__*, i8*, i64, i8*, i64)* @ZSTD_decompressContinue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ZSTD_decompressContinue(%struct.TYPE_7__* %0, i8* %1, i64 %2, i8* %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_6__, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %16 = load i64, i64* %11, align 8
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %16, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %5
  %22 = load i32, i32* @srcSize_wrong, align 4
  %23 = call i64 @ERROR(i32 %22)
  store i64 %23, i64* %6, align 8
  br label %126

24:                                               ; preds = %5
  %25 = load i8*, i8** %8, align 8
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 1
  %28 = load i8*, i8** %27, align 8
  %29 = icmp ne i8* %25, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %24
  %31 = load i8*, i8** %8, align 8
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 4
  store i8* %31, i8** %33, align 8
  br label %34

34:                                               ; preds = %30, %24
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %55

39:                                               ; preds = %34
  %40 = load i8*, i8** %10, align 8
  %41 = call i64 @MEM_readLE32(i8* %40)
  store i64 %41, i64* %12, align 8
  %42 = load i64, i64* %12, align 8
  %43 = load i64, i64* @ZSTD_magicNumber, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %39
  %46 = load i32, i32* @prefix_unknown, align 4
  %47 = call i64 @ERROR(i32 %46)
  store i64 %47, i64* %6, align 8
  br label %126

48:                                               ; preds = %39
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 2
  store i32 1, i32* %50, align 8
  %51 = load i8*, i8** @ZSTD_blockHeaderSize, align 8
  %52 = ptrtoint i8* %51 to i64
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  store i64 %52, i64* %54, align 8
  store i64 0, i64* %6, align 8
  br label %126

55:                                               ; preds = %34
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = icmp eq i32 %58, 1
  br i1 %59, label %60, label %89

60:                                               ; preds = %55
  %61 = load i8*, i8** %10, align 8
  %62 = load i8*, i8** @ZSTD_blockHeaderSize, align 8
  %63 = call i64 @ZSTD_getcBlockSize(i8* %61, i8* %62, %struct.TYPE_6__* %13)
  store i64 %63, i64* %14, align 8
  %64 = load i64, i64* %14, align 8
  %65 = call i64 @ZSTD_isError(i64 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %60
  %68 = load i64, i64* %14, align 8
  store i64 %68, i64* %6, align 8
  br label %126

69:                                               ; preds = %60
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp eq i64 %71, 130
  br i1 %72, label %73, label %78

73:                                               ; preds = %69
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  store i64 0, i64* %75, align 8
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 2
  store i32 0, i32* %77, align 8
  br label %88

78:                                               ; preds = %69
  %79 = load i64, i64* %14, align 8
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 0
  store i64 %79, i64* %81, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 3
  store i64 %83, i64* %85, align 8
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 2
  store i32 2, i32* %87, align 8
  br label %88

88:                                               ; preds = %78, %73
  store i64 0, i64* %6, align 8
  br label %126

89:                                               ; preds = %55
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 3
  %92 = load i64, i64* %91, align 8
  switch i64 %92, label %110 [
    i64 131, label %93
    i64 129, label %100
    i64 128, label %106
    i64 130, label %109
  ]

93:                                               ; preds = %89
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %95 = load i8*, i8** %8, align 8
  %96 = load i64, i64* %9, align 8
  %97 = load i8*, i8** %10, align 8
  %98 = load i64, i64* %11, align 8
  %99 = call i64 @ZSTD_decompressBlock(%struct.TYPE_7__* %94, i8* %95, i64 %96, i8* %97, i64 %98)
  store i64 %99, i64* %15, align 8
  br label %113

100:                                              ; preds = %89
  %101 = load i8*, i8** %8, align 8
  %102 = load i64, i64* %9, align 8
  %103 = load i8*, i8** %10, align 8
  %104 = load i64, i64* %11, align 8
  %105 = call i64 @ZSTD_copyUncompressedBlock(i8* %101, i64 %102, i8* %103, i64 %104)
  store i64 %105, i64* %15, align 8
  br label %113

106:                                              ; preds = %89
  %107 = load i32, i32* @GENERIC, align 4
  %108 = call i64 @ERROR(i32 %107)
  store i64 %108, i64* %6, align 8
  br label %126

109:                                              ; preds = %89
  store i64 0, i64* %15, align 8
  br label %113

110:                                              ; preds = %89
  %111 = load i32, i32* @GENERIC, align 4
  %112 = call i64 @ERROR(i32 %111)
  store i64 %112, i64* %6, align 8
  br label %126

113:                                              ; preds = %109, %100, %93
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 2
  store i32 1, i32* %115, align 8
  %116 = load i8*, i8** @ZSTD_blockHeaderSize, align 8
  %117 = ptrtoint i8* %116 to i64
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 0
  store i64 %117, i64* %119, align 8
  %120 = load i8*, i8** %8, align 8
  %121 = load i64, i64* %15, align 8
  %122 = getelementptr inbounds i8, i8* %120, i64 %121
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 1
  store i8* %122, i8** %124, align 8
  %125 = load i64, i64* %15, align 8
  store i64 %125, i64* %6, align 8
  br label %126

126:                                              ; preds = %113, %110, %106, %88, %67, %48, %45, %21
  %127 = load i64, i64* %6, align 8
  ret i64 %127
}

declare dso_local i64 @ERROR(i32) #1

declare dso_local i64 @MEM_readLE32(i8*) #1

declare dso_local i64 @ZSTD_getcBlockSize(i8*, i8*, %struct.TYPE_6__*) #1

declare dso_local i64 @ZSTD_isError(i64) #1

declare dso_local i64 @ZSTD_decompressBlock(%struct.TYPE_7__*, i8*, i64, i8*, i64) #1

declare dso_local i64 @ZSTD_copyUncompressedBlock(i8*, i64, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
