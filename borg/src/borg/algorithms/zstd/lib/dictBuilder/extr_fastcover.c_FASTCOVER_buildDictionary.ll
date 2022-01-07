; ModuleID = '/home/carl/AnghaBench/borg/src/borg/algorithms/zstd/lib/dictBuilder/extr_fastcover.c_FASTCOVER_buildDictionary.c'
source_filename = "/home/carl/AnghaBench/borg/src/borg/algorithms/zstd/lib/dictBuilder/extr_fastcover.c_FASTCOVER_buildDictionary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i64 }
%struct.TYPE_9__ = type { i64, i64 }
%struct.TYPE_11__ = type { i64, i64, i64 }

@.str = private unnamed_addr constant [44 x i8] c"Breaking content into %u epochs of size %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"\0D%u%%       \00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"\0D%79s\0D\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_10__*, i8**, i8*, i64, i64, i64, i32*)* @FASTCOVER_buildDictionary to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @FASTCOVER_buildDictionary(%struct.TYPE_10__* %0, i8** %1, i8* %2, i64 %3, i64 %4, i64 %5, i32* %6) #0 {
  %8 = alloca %struct.TYPE_9__, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  %22 = alloca %struct.TYPE_11__, align 8
  %23 = bitcast %struct.TYPE_9__* %8 to { i64, i64 }*
  %24 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %23, i32 0, i32 0
  store i64 %4, i64* %24, align 8
  %25 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %23, i32 0, i32 1
  store i64 %5, i64* %25, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %9, align 8
  store i8** %1, i8*** %10, align 8
  store i8* %2, i8** %11, align 8
  store i64 %3, i64* %12, align 8
  store i32* %6, i32** %13, align 8
  %26 = load i8*, i8** %11, align 8
  %27 = bitcast i8* %26 to i32*
  store i32* %27, i32** %14, align 8
  %28 = load i64, i64* %12, align 8
  store i64 %28, i64* %15, align 8
  %29 = load i64, i64* %12, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = udiv i64 %29, %31
  %33 = inttoptr i64 %32 to i8*
  %34 = call i32 @MAX(i32 1, i8* %33)
  store i32 %34, i32* %16, align 4
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* %16, align 4
  %39 = udiv i32 %37, %38
  %40 = zext i32 %39 to i64
  %41 = inttoptr i64 %40 to i8*
  %42 = ptrtoint i8* %41 to i32
  store i32 %42, i32* %17, align 4
  %43 = load i32, i32* %16, align 4
  %44 = load i32, i32* %17, align 4
  %45 = call i32 (i32, i8*, ...) @DISPLAYLEVEL(i32 2, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %43, i32 %44)
  store i64 0, i64* %18, align 8
  br label %46

46:                                               ; preds = %108, %7
  %47 = load i64, i64* %15, align 8
  %48 = icmp ugt i64 %47, 0
  br i1 %48, label %49, label %114

49:                                               ; preds = %46
  %50 = load i64, i64* %18, align 8
  %51 = load i32, i32* %17, align 4
  %52 = zext i32 %51 to i64
  %53 = mul i64 %50, %52
  %54 = inttoptr i64 %53 to i8*
  store i8* %54, i8** %19, align 8
  %55 = load i8*, i8** %19, align 8
  %56 = load i32, i32* %17, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr i8, i8* %55, i64 %57
  store i8* %58, i8** %20, align 8
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %60 = load i8**, i8*** %10, align 8
  %61 = load i8*, i8** %19, align 8
  %62 = load i8*, i8** %20, align 8
  %63 = load i32*, i32** %13, align 8
  call void @FASTCOVER_selectSegment(%struct.TYPE_11__* sret %22, %struct.TYPE_10__* %59, i8** %60, i8* %61, i8* %62, %struct.TYPE_9__* byval(%struct.TYPE_9__) align 8 %8, i32* %63)
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %49
  br label %114

68:                                               ; preds = %49
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = sub nsw i64 %70, %72
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = add i64 %73, %75
  %77 = sub i64 %76, 1
  %78 = load i64, i64* %15, align 8
  %79 = call i64 @MIN(i64 %77, i64 %78)
  store i64 %79, i64* %21, align 8
  %80 = load i64, i64* %21, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = icmp ult i64 %80, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %68
  br label %114

85:                                               ; preds = %68
  %86 = load i64, i64* %21, align 8
  %87 = load i64, i64* %15, align 8
  %88 = sub i64 %87, %86
  store i64 %88, i64* %15, align 8
  %89 = load i32*, i32** %14, align 8
  %90 = load i64, i64* %15, align 8
  %91 = getelementptr inbounds i32, i32* %89, i64 %90
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = add nsw i64 %94, %96
  %98 = load i64, i64* %21, align 8
  %99 = call i32 @memcpy(i32* %91, i64 %97, i64 %98)
  %100 = load i64, i64* %12, align 8
  %101 = load i64, i64* %15, align 8
  %102 = sub i64 %100, %101
  %103 = mul i64 %102, 100
  %104 = load i64, i64* %12, align 8
  %105 = udiv i64 %103, %104
  %106 = trunc i64 %105 to i32
  %107 = call i32 @DISPLAYUPDATE(i32 2, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %106)
  br label %108

108:                                              ; preds = %85
  %109 = load i64, i64* %18, align 8
  %110 = add i64 %109, 1
  %111 = load i32, i32* %16, align 4
  %112 = zext i32 %111 to i64
  %113 = urem i64 %110, %112
  store i64 %113, i64* %18, align 8
  br label %46

114:                                              ; preds = %84, %67, %46
  %115 = call i32 (i32, i8*, ...) @DISPLAYLEVEL(i32 2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0))
  %116 = load i64, i64* %15, align 8
  ret i64 %116
}

declare dso_local i32 @MAX(i32, i8*) #1

declare dso_local i32 @DISPLAYLEVEL(i32, i8*, ...) #1

declare dso_local void @FASTCOVER_selectSegment(%struct.TYPE_11__* sret, %struct.TYPE_10__*, i8**, i8*, i8*, %struct.TYPE_9__* byval(%struct.TYPE_9__) align 8, i32*) #1

declare dso_local i64 @MIN(i64, i64) #1

declare dso_local i32 @memcpy(i32*, i64, i64) #1

declare dso_local i32 @DISPLAYUPDATE(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
