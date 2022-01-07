; ModuleID = '/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_vnodeCache.c_vnodeGetFirstKey.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_vnodeCache.c_vnodeGetFirstKey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_7__**, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_9__** }
%struct.TYPE_9__ = type { i64, i64* }

@vnodeList = common dso_local global %struct.TYPE_10__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @vnodeGetFirstKey(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** @vnodeList, align 8
  %10 = load i32, i32* %2, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i64 %11
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 1
  store %struct.TYPE_6__* %13, %struct.TYPE_6__** %6, align 8
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @taosGetTimestamp(i32 %16)
  store i64 %17, i64* %7, align 8
  store i32 0, i32* %8, align 4
  br label %18

18:                                               ; preds = %80, %1
  %19 = load i32, i32* %8, align 4
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp slt i32 %19, %22
  br i1 %23, label %24, label %83

24:                                               ; preds = %18
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** @vnodeList, align 8
  %26 = load i32, i32* %2, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %29, align 8
  %31 = load i32, i32* %8, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %30, i64 %32
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %33, align 8
  store %struct.TYPE_7__* %34, %struct.TYPE_7__** %3, align 8
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %36 = icmp eq %struct.TYPE_7__* %35, null
  br i1 %36, label %42, label %37

37:                                               ; preds = %24
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = icmp eq i32* %40, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %37, %24
  br label %80

43:                                               ; preds = %37
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = bitcast i32* %46 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %47, %struct.TYPE_8__** %4, align 8
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %50, i64 0
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %51, align 8
  store %struct.TYPE_9__* %52, %struct.TYPE_9__** %5, align 8
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %54 = icmp eq %struct.TYPE_9__* %53, null
  br i1 %54, label %60, label %55

55:                                               ; preds = %43
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp sle i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %55, %43
  br label %80

61:                                               ; preds = %55
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 1
  %64 = load i64*, i64** %63, align 8
  %65 = getelementptr inbounds i64, i64* %64, i64 0
  %66 = load i64, i64* %65, align 8
  %67 = inttoptr i64 %66 to i64*
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* %7, align 8
  %70 = icmp slt i64 %68, %69
  br i1 %70, label %71, label %79

71:                                               ; preds = %61
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 1
  %74 = load i64*, i64** %73, align 8
  %75 = getelementptr inbounds i64, i64* %74, i64 0
  %76 = load i64, i64* %75, align 8
  %77 = inttoptr i64 %76 to i64*
  %78 = load i64, i64* %77, align 8
  store i64 %78, i64* %7, align 8
  br label %79

79:                                               ; preds = %71, %61
  br label %80

80:                                               ; preds = %79, %60, %42
  %81 = load i32, i32* %8, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %8, align 4
  br label %18

83:                                               ; preds = %18
  %84 = load i64, i64* %7, align 8
  ret i64 %84
}

declare dso_local i64 @taosGetTimestamp(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
