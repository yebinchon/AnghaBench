; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Encrypt.c_GetAllNameFromX.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Encrypt.c_GetAllNameFromX.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32, i32* }

@MD5_SIZE = common dso_local global i32 0, align 4
@SHA1_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i32] [i32 44, i32 32, i32 83, i32 69, i32 82, i32 73, i32 65, i32 76, i32 61, i32 34, i32 37, i32 83, i32 34, i32 0], align 4
@.str.1 = private unnamed_addr constant [31 x i32] [i32 32, i32 40, i32 68, i32 105, i32 103, i32 101, i32 115, i32 116, i32 58, i32 32, i32 77, i32 68, i32 53, i32 61, i32 34, i32 37, i32 83, i32 34, i32 44, i32 32, i32 83, i32 72, i32 65, i32 49, i32 61, i32 34, i32 37, i32 83, i32 34, i32 41, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @GetAllNameFromX(i32* %0, i32 %1, %struct.TYPE_6__* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca [128 x i8], align 16
  %15 = alloca [128 x i32], align 16
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %6, align 8
  %16 = load i32, i32* @MD5_SIZE, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %7, align 8
  %19 = alloca i32, i64 %17, align 16
  store i64 %17, i64* %8, align 8
  %20 = load i32, i32* @SHA1_SIZE, align 4
  %21 = zext i32 %20 to i64
  %22 = alloca i32, i64 %21, align 16
  store i64 %21, i64* %9, align 8
  %23 = load i32, i32* @MD5_SIZE, align 4
  %24 = mul nsw i32 %23, 3
  %25 = add nsw i32 %24, 8
  %26 = zext i32 %25 to i64
  %27 = alloca i8, i64 %26, align 16
  store i64 %26, i64* %10, align 8
  %28 = load i32, i32* @SHA1_SIZE, align 4
  %29 = mul nsw i32 %28, 3
  %30 = add nsw i32 %29, 8
  %31 = zext i32 %30 to i64
  %32 = alloca i8, i64 %31, align 16
  store i64 %31, i64* %11, align 8
  %33 = add i64 %26, %31
  %34 = add i64 %33, 64
  %35 = alloca i32, i64 %34, align 16
  store i64 %34, i64* %12, align 8
  %36 = load i32*, i32** %4, align 8
  %37 = icmp eq i32* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %3
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %40 = icmp eq %struct.TYPE_6__* %39, null
  br i1 %40, label %41, label %42

41:                                               ; preds = %38, %3
  store i32 1, i32* %13, align 4
  br label %97

42:                                               ; preds = %38
  %43 = load i32*, i32** %4, align 8
  %44 = load i32, i32* %5, align 4
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @GetAllNameFromName(i32* %43, i32 %44, i32 %47)
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %50, align 8
  %52 = icmp ne %struct.TYPE_5__* %51, null
  br i1 %52, label %53, label %80

53:                                               ; preds = %42
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp sge i32 %58, 1
  br i1 %59, label %60, label %80

60:                                               ; preds = %53
  %61 = getelementptr inbounds [128 x i8], [128 x i8]* %14, i64 0, i64 0
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @BinToStr(i8* %61, i32 128, i32* %66, i32 %71)
  %73 = getelementptr inbounds [128 x i32], [128 x i32]* %15, i64 0, i64 0
  %74 = getelementptr inbounds [128 x i8], [128 x i8]* %14, i64 0, i64 0
  %75 = call i32 (i32*, i32, i8*, i8*, ...) @UniFormat(i32* %73, i32 512, i8* bitcast ([14 x i32]* @.str to i8*), i8* %74)
  %76 = load i32*, i32** %4, align 8
  %77 = load i32, i32* %5, align 4
  %78 = getelementptr inbounds [128 x i32], [128 x i32]* %15, i64 0, i64 0
  %79 = call i32 @UniStrCat(i32* %76, i32 %77, i32* %78)
  br label %80

80:                                               ; preds = %60, %53, %42
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %82 = call i32 @GetXDigest(%struct.TYPE_6__* %81, i32* %19, i32 0)
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %84 = call i32 @GetXDigest(%struct.TYPE_6__* %83, i32* %22, i32 1)
  %85 = trunc i64 %26 to i32
  %86 = load i32, i32* @MD5_SIZE, align 4
  %87 = call i32 @BinToStr(i8* %27, i32 %85, i32* %19, i32 %86)
  %88 = trunc i64 %31 to i32
  %89 = load i32, i32* @SHA1_SIZE, align 4
  %90 = call i32 @BinToStr(i8* %32, i32 %88, i32* %22, i32 %89)
  %91 = mul nuw i64 4, %34
  %92 = trunc i64 %91 to i32
  %93 = call i32 (i32*, i32, i8*, i8*, ...) @UniFormat(i32* %35, i32 %92, i8* bitcast ([31 x i32]* @.str.1 to i8*), i8* %27, i8* %32)
  %94 = load i32*, i32** %4, align 8
  %95 = load i32, i32* %5, align 4
  %96 = call i32 @UniStrCat(i32* %94, i32 %95, i32* %35)
  store i32 0, i32* %13, align 4
  br label %97

97:                                               ; preds = %80, %41
  %98 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %98)
  %99 = load i32, i32* %13, align 4
  switch i32 %99, label %101 [
    i32 0, label %100
    i32 1, label %100
  ]

100:                                              ; preds = %97, %97
  ret void

101:                                              ; preds = %97
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @GetAllNameFromName(i32*, i32, i32) #2

declare dso_local i32 @BinToStr(i8*, i32, i32*, i32) #2

declare dso_local i32 @UniFormat(i32*, i32, i8*, i8*, ...) #2

declare dso_local i32 @UniStrCat(i32*, i32, i32*) #2

declare dso_local i32 @GetXDigest(%struct.TYPE_6__*, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
