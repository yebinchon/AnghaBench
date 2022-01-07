; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/7zip/extr_LzmaEnc.c_LzmaEnc_CodeOneMemBlock.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/7zip/extr_LzmaEnc.c_LzmaEnc_CodeOneMemBlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i64, %struct.TYPE_11__, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i8*, i64, i32, %struct.TYPE_8__ }

@MyWrite = common dso_local global i32 0, align 4
@SZ_OK = common dso_local global i32 0, align 4
@SZ_ERROR_OUTPUT_EOF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @LzmaEnc_CodeOneMemBlock(i64 %0, i32 %1, i8* %2, i64* %3, i64 %4, i64* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64*, align 8
  %14 = alloca %struct.TYPE_10__*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_9__, align 8
  store i64 %0, i64* %8, align 8
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i64* %3, i64** %11, align 8
  store i64 %4, i64* %12, align 8
  store i64* %5, i64** %13, align 8
  %18 = load i64, i64* %8, align 8
  %19 = inttoptr i64 %18 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %19, %struct.TYPE_10__** %14, align 8
  %20 = load i32, i32* @MyWrite, align 4
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 3
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  %23 = load i8*, i8** %10, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  store i8* %23, i8** %24, align 8
  %25 = load i64*, i64** %11, align 8
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 1
  store i64 %26, i64* %27, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 2
  store i32 0, i32* %28, align 8
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  store i32 0, i32* %30, align 8
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 1
  store i32 0, i32* %32, align 4
  %33 = load i32, i32* @SZ_OK, align 4
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 4
  store i32 %33, i32* %35, align 8
  %36 = load i32, i32* %9, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %6
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %40 = call i32 @LzmaEnc_Init(%struct.TYPE_10__* %39)
  br label %41

41:                                               ; preds = %38, %6
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %43 = call i32 @LzmaEnc_InitPrices(%struct.TYPE_10__* %42)
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  store i64 %46, i64* %15, align 8
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 3
  %49 = call i32 @RangeEnc_Init(%struct.TYPE_11__* %48)
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 3
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 3
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 0
  store %struct.TYPE_8__* %50, %struct.TYPE_8__** %53, align 8
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %55 = load i64, i64* %12, align 8
  %56 = load i64*, i64** %13, align 8
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @LzmaEnc_CodeOneBlock(%struct.TYPE_10__* %54, i32 1, i64 %55, i64 %57)
  store i32 %58, i32* %16, align 4
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* %15, align 8
  %63 = sub nsw i64 %61, %62
  %64 = load i64*, i64** %13, align 8
  store i64 %63, i64* %64, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load i64*, i64** %11, align 8
  %68 = load i64, i64* %67, align 8
  %69 = sub i64 %68, %66
  store i64 %69, i64* %67, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %41
  %74 = load i32, i32* @SZ_ERROR_OUTPUT_EOF, align 4
  store i32 %74, i32* %7, align 4
  br label %77

75:                                               ; preds = %41
  %76 = load i32, i32* %16, align 4
  store i32 %76, i32* %7, align 4
  br label %77

77:                                               ; preds = %75, %73
  %78 = load i32, i32* %7, align 4
  ret i32 %78
}

declare dso_local i32 @LzmaEnc_Init(%struct.TYPE_10__*) #1

declare dso_local i32 @LzmaEnc_InitPrices(%struct.TYPE_10__*) #1

declare dso_local i32 @RangeEnc_Init(%struct.TYPE_11__*) #1

declare dso_local i32 @LzmaEnc_CodeOneBlock(%struct.TYPE_10__*, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
