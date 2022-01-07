; ModuleID = '/home/carl/AnghaBench/disque/src/extr_dict.c__dictKeyIndex.c'
source_filename = "/home/carl/AnghaBench/disque/src/extr_dict.c__dictKeyIndex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, %struct.TYPE_10__** }
%struct.TYPE_10__ = type { %struct.TYPE_10__*, i32 }

@DICT_ERR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, i8*)* @_dictKeyIndex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_dictKeyIndex(%struct.TYPE_11__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %11 = call i64 @_dictExpandIfNeeded(%struct.TYPE_11__* %10)
  %12 = load i64, i64* @DICT_ERR, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %72

15:                                               ; preds = %2
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = call i32 @dictHashKey(%struct.TYPE_11__* %16, i8* %17)
  store i32 %18, i32* %6, align 4
  store i32 0, i32* %8, align 4
  br label %19

19:                                               ; preds = %67, %15
  %20 = load i32, i32* %8, align 4
  %21 = icmp ule i32 %20, 1
  br i1 %21, label %22, label %70

22:                                               ; preds = %19
  %23 = load i32, i32* %6, align 4
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %25, align 8
  %27 = load i32, i32* %8, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = and i32 %23, %31
  store i32 %32, i32* %7, align 4
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %34, align 8
  %36 = load i32, i32* %8, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %39, align 8
  %41 = load i32, i32* %7, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %40, i64 %42
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %43, align 8
  store %struct.TYPE_10__* %44, %struct.TYPE_10__** %9, align 8
  br label %45

45:                                               ; preds = %57, %22
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %47 = icmp ne %struct.TYPE_10__* %46, null
  br i1 %47, label %48, label %61

48:                                               ; preds = %45
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %50 = load i8*, i8** %5, align 8
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = call i64 @dictCompareKeys(%struct.TYPE_11__* %49, i8* %50, i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %48
  store i32 -1, i32* %3, align 4
  br label %72

57:                                               ; preds = %48
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %59, align 8
  store %struct.TYPE_10__* %60, %struct.TYPE_10__** %9, align 8
  br label %45

61:                                               ; preds = %45
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %63 = call i32 @dictIsRehashing(%struct.TYPE_11__* %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %61
  br label %70

66:                                               ; preds = %61
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %8, align 4
  %69 = add i32 %68, 1
  store i32 %69, i32* %8, align 4
  br label %19

70:                                               ; preds = %65, %19
  %71 = load i32, i32* %7, align 4
  store i32 %71, i32* %3, align 4
  br label %72

72:                                               ; preds = %70, %56, %14
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i64 @_dictExpandIfNeeded(%struct.TYPE_11__*) #1

declare dso_local i32 @dictHashKey(%struct.TYPE_11__*, i8*) #1

declare dso_local i64 @dictCompareKeys(%struct.TYPE_11__*, i8*, i32) #1

declare dso_local i32 @dictIsRehashing(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
