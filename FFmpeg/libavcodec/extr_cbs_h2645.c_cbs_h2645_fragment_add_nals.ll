; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_cbs_h2645.c_cbs_h2645_fragment_add_nals.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_cbs_h2645.c_cbs_h2645_fragment_add_nals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32* }
%struct.TYPE_9__ = type { i32, %struct.TYPE_8__, %struct.TYPE_10__* }
%struct.TYPE_8__ = type { i32* }
%struct.TYPE_10__ = type { i64, i64*, i64*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_11__*, %struct.TYPE_9__*)* @cbs_h2645_fragment_add_nals to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cbs_h2645_fragment_add_nals(i32* %0, %struct.TYPE_11__* %1, %struct.TYPE_9__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %6, align 8
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %7, align 8
  store i32 0, i32* %9, align 4
  br label %13

13:                                               ; preds = %86, %3
  %14 = load i32, i32* %9, align 4
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %89

19:                                               ; preds = %13
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 2
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %23 = load i32, i32* %9, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i64 %24
  store %struct.TYPE_10__* %25, %struct.TYPE_10__** %10, align 8
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %12, align 8
  br label %29

29:                                               ; preds = %43, %19
  %30 = load i64, i64* %12, align 8
  %31 = icmp ugt i64 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %29
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 1
  %35 = load i64*, i64** %34, align 8
  %36 = load i64, i64* %12, align 8
  %37 = sub i64 %36, 1
  %38 = getelementptr inbounds i64, i64* %35, i64 %37
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %39, 0
  br label %41

41:                                               ; preds = %32, %29
  %42 = phi i1 [ false, %29 ], [ %40, %32 ]
  br i1 %42, label %43, label %46

43:                                               ; preds = %41
  %44 = load i64, i64* %12, align 8
  %45 = add i64 %44, -1
  store i64 %45, i64* %12, align 8
  br label %29

46:                                               ; preds = %41
  %47 = load i64, i64* %12, align 8
  %48 = icmp ugt i64 %47, 0
  %49 = zext i1 %48 to i32
  %50 = call i32 @av_assert0(i32 %49)
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 1
  %53 = load i64*, i64** %52, align 8
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 2
  %56 = load i64*, i64** %55, align 8
  %57 = icmp eq i64* %53, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %46
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  br label %67

62:                                               ; preds = %46
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  br label %67

67:                                               ; preds = %62, %58
  %68 = phi i32* [ %61, %58 ], [ %66, %62 ]
  store i32* %68, i32** %11, align 8
  %69 = load i32*, i32** %5, align 8
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 1
  %76 = load i64*, i64** %75, align 8
  %77 = bitcast i64* %76 to i32*
  %78 = load i64, i64* %12, align 8
  %79 = load i32*, i32** %11, align 8
  %80 = call i32 @ff_cbs_insert_unit_data(i32* %69, %struct.TYPE_11__* %70, i32 -1, i32 %73, i32* %77, i64 %78, i32* %79)
  store i32 %80, i32* %8, align 4
  %81 = load i32, i32* %8, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %67
  %84 = load i32, i32* %8, align 4
  store i32 %84, i32* %4, align 4
  br label %90

85:                                               ; preds = %67
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %9, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %9, align 4
  br label %13

89:                                               ; preds = %13
  store i32 0, i32* %4, align 4
  br label %90

90:                                               ; preds = %89, %83
  %91 = load i32, i32* %4, align 4
  ret i32 %91
}

declare dso_local i32 @av_assert0(i32) #1

declare dso_local i32 @ff_cbs_insert_unit_data(i32*, %struct.TYPE_11__*, i32, i32, i32*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
