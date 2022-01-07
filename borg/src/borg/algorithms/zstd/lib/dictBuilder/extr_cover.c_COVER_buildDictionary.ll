; ModuleID = '/home/carl/AnghaBench/borg/src/borg/algorithms/zstd/lib/dictBuilder/extr_cover.c_COVER_buildDictionary.c'
source_filename = "/home/carl/AnghaBench/borg/src/borg/algorithms/zstd/lib/dictBuilder/extr_cover.c_COVER_buildDictionary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i64 }
%struct.TYPE_9__ = type { i64, i64 }
%struct.TYPE_10__ = type { i64, i64, i64 }

@.str = private unnamed_addr constant [44 x i8] c"Breaking content into %u epochs of size %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"\0D%u%%       \00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"\0D%79s\0D\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_11__*, i8**, i32*, i8*, i64, %struct.TYPE_9__*)* @COVER_buildDictionary to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @COVER_buildDictionary(%struct.TYPE_11__* %0, i8** %1, i32* %2, i8* %3, i64 %4, %struct.TYPE_9__* byval(%struct.TYPE_9__) align 8 %5) #0 {
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca %struct.TYPE_10__, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %7, align 8
  store i8** %1, i8*** %8, align 8
  store i32* %2, i32** %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %21 = load i8*, i8** %10, align 8
  %22 = bitcast i8* %21 to i32*
  store i32* %22, i32** %12, align 8
  %23 = load i64, i64* %11, align 8
  store i64 %23, i64* %13, align 8
  %24 = load i64, i64* %11, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = udiv i64 %24, %26
  %28 = udiv i64 %27, 4
  %29 = inttoptr i64 %28 to i8*
  %30 = call i32 @MAX(i32 1, i8* %29)
  store i32 %30, i32* %14, align 4
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* %14, align 4
  %35 = udiv i32 %33, %34
  %36 = zext i32 %35 to i64
  %37 = inttoptr i64 %36 to i8*
  %38 = ptrtoint i8* %37 to i32
  store i32 %38, i32* %15, align 4
  %39 = load i32, i32* %14, align 4
  %40 = load i32, i32* %15, align 4
  %41 = call i32 (i32, i8*, ...) @DISPLAYLEVEL(i32 2, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %39, i32 %40)
  store i64 0, i64* %16, align 8
  br label %42

42:                                               ; preds = %104, %6
  %43 = load i64, i64* %13, align 8
  %44 = icmp ugt i64 %43, 0
  br i1 %44, label %45, label %110

45:                                               ; preds = %42
  %46 = load i64, i64* %16, align 8
  %47 = load i32, i32* %15, align 4
  %48 = zext i32 %47 to i64
  %49 = mul i64 %46, %48
  %50 = inttoptr i64 %49 to i8*
  store i8* %50, i8** %17, align 8
  %51 = load i8*, i8** %17, align 8
  %52 = load i32, i32* %15, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr i8, i8* %51, i64 %53
  store i8* %54, i8** %18, align 8
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %56 = load i8**, i8*** %8, align 8
  %57 = load i32*, i32** %9, align 8
  %58 = load i8*, i8** %17, align 8
  %59 = load i8*, i8** %18, align 8
  call void @COVER_selectSegment(%struct.TYPE_10__* sret %20, %struct.TYPE_11__* %55, i8** %56, i32* %57, i8* %58, i8* %59, %struct.TYPE_9__* byval(%struct.TYPE_9__) align 8 %5)
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %45
  br label %110

64:                                               ; preds = %45
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = sub nsw i64 %66, %68
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = add i64 %69, %71
  %73 = sub i64 %72, 1
  %74 = load i64, i64* %13, align 8
  %75 = call i64 @MIN(i64 %73, i64 %74)
  store i64 %75, i64* %19, align 8
  %76 = load i64, i64* %19, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = icmp ult i64 %76, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %64
  br label %110

81:                                               ; preds = %64
  %82 = load i64, i64* %19, align 8
  %83 = load i64, i64* %13, align 8
  %84 = sub i64 %83, %82
  store i64 %84, i64* %13, align 8
  %85 = load i32*, i32** %12, align 8
  %86 = load i64, i64* %13, align 8
  %87 = getelementptr inbounds i32, i32* %85, i64 %86
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = add nsw i64 %90, %92
  %94 = load i64, i64* %19, align 8
  %95 = call i32 @memcpy(i32* %87, i64 %93, i64 %94)
  %96 = load i64, i64* %11, align 8
  %97 = load i64, i64* %13, align 8
  %98 = sub i64 %96, %97
  %99 = mul i64 %98, 100
  %100 = load i64, i64* %11, align 8
  %101 = udiv i64 %99, %100
  %102 = trunc i64 %101 to i32
  %103 = call i32 @DISPLAYUPDATE(i32 2, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %102)
  br label %104

104:                                              ; preds = %81
  %105 = load i64, i64* %16, align 8
  %106 = add i64 %105, 1
  %107 = load i32, i32* %14, align 4
  %108 = zext i32 %107 to i64
  %109 = urem i64 %106, %108
  store i64 %109, i64* %16, align 8
  br label %42

110:                                              ; preds = %80, %63, %42
  %111 = call i32 (i32, i8*, ...) @DISPLAYLEVEL(i32 2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0))
  %112 = load i64, i64* %13, align 8
  ret i64 %112
}

declare dso_local i32 @MAX(i32, i8*) #1

declare dso_local i32 @DISPLAYLEVEL(i32, i8*, ...) #1

declare dso_local void @COVER_selectSegment(%struct.TYPE_10__* sret, %struct.TYPE_11__*, i8**, i32*, i8*, i8*, %struct.TYPE_9__* byval(%struct.TYPE_9__) align 8) #1

declare dso_local i64 @MIN(i64, i64) #1

declare dso_local i32 @memcpy(i32*, i64, i64) #1

declare dso_local i32 @DISPLAYUPDATE(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
