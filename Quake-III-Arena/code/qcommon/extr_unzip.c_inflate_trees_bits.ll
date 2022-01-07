; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/qcommon/extr_unzip.c_inflate_trees_bits.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/qcommon/extr_unzip.c_inflate_trees_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8* }

@Z_NULL = common dso_local global i64* null, align 8
@Z_MEM_ERROR = common dso_local global i32 0, align 4
@Z_DATA_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"oversubscribed dynamic bit lengths tree\00", align 1
@Z_BUF_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"incomplete dynamic bit lengths tree\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @inflate_trees_bits(i64* %0, i64* %1, i32** %2, i32* %3, %struct.TYPE_5__* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_5__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64*, align 8
  store i64* %0, i64** %7, align 8
  store i64* %1, i64** %8, align 8
  store i32** %2, i32*** %9, align 8
  store i32* %3, i32** %10, align 8
  store %struct.TYPE_5__* %4, %struct.TYPE_5__** %11, align 8
  store i64 0, i64* %13, align 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %16 = call i64 @ZALLOC(%struct.TYPE_5__* %15, i32 19, i32 8)
  %17 = inttoptr i64 %16 to i64*
  store i64* %17, i64** %14, align 8
  %18 = load i64*, i64** @Z_NULL, align 8
  %19 = icmp eq i64* %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %5
  %21 = load i32, i32* @Z_MEM_ERROR, align 4
  store i32 %21, i32* %6, align 4
  br label %55

22:                                               ; preds = %5
  %23 = load i64*, i64** %7, align 8
  %24 = load i64*, i64** @Z_NULL, align 8
  %25 = load i64*, i64** @Z_NULL, align 8
  %26 = load i32**, i32*** %9, align 8
  %27 = load i64*, i64** %8, align 8
  %28 = load i32*, i32** %10, align 8
  %29 = load i64*, i64** %14, align 8
  %30 = call i32 @huft_build(i64* %23, i32 19, i32 19, i64* %24, i64* %25, i32** %26, i64* %27, i32* %28, i64* %13, i64* %29)
  store i32 %30, i32* %12, align 4
  %31 = load i32, i32* %12, align 4
  %32 = load i32, i32* @Z_DATA_ERROR, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %22
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  store i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i8** %36, align 8
  br label %50

37:                                               ; preds = %22
  %38 = load i32, i32* %12, align 4
  %39 = load i32, i32* @Z_BUF_ERROR, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %45, label %41

41:                                               ; preds = %37
  %42 = load i64*, i64** %8, align 8
  %43 = load i64, i64* %42, align 8
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %41, %37
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  store i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i8** %47, align 8
  %48 = load i32, i32* @Z_DATA_ERROR, align 4
  store i32 %48, i32* %12, align 4
  br label %49

49:                                               ; preds = %45, %41
  br label %50

50:                                               ; preds = %49, %34
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %52 = load i64*, i64** %14, align 8
  %53 = call i32 @ZFREE(%struct.TYPE_5__* %51, i64* %52)
  %54 = load i32, i32* %12, align 4
  store i32 %54, i32* %6, align 4
  br label %55

55:                                               ; preds = %50, %20
  %56 = load i32, i32* %6, align 4
  ret i32 %56
}

declare dso_local i64 @ZALLOC(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @huft_build(i64*, i32, i32, i64*, i64*, i32**, i64*, i32*, i64*, i64*) #1

declare dso_local i32 @ZFREE(%struct.TYPE_5__*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
