; ModuleID = '/home/carl/AnghaBench/TDengine/src/util/src/extr_textbuffer.c_getMinMaxEntryOfNextSlotWithData.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/util/src/extr_textbuffer.c_getMinMaxEntryOfNextSlotWithData.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i64*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i64, i64)* @getMinMaxEntryOfNextSlotWithData to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getMinMaxEntryOfNextSlotWithData(%struct.TYPE_6__* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 1
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = load i64, i64* %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i64 %14
  store %struct.TYPE_5__* %15, %struct.TYPE_5__** %8, align 8
  %16 = load i64, i64* %7, align 8
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = sub nsw i32 %19, 1
  %21 = sext i32 %20 to i64
  %22 = icmp eq i64 %16, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %3
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %25 = load i64, i64* %6, align 8
  %26 = call i32 @getMinMaxEntryOfNearestSlotInNextSegment(%struct.TYPE_6__* %24, i64 %25)
  store i32 %26, i32* %4, align 4
  br label %86

27:                                               ; preds = %3
  %28 = load i64, i64* %7, align 8
  %29 = add i64 %28, 1
  store i64 %29, i64* %10, align 8
  br label %30

30:                                               ; preds = %51, %27
  %31 = load i64, i64* %10, align 8
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ult i64 %31, %34
  br i1 %35, label %36, label %48

36:                                               ; preds = %30
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  %40 = load i64, i64* %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 1
  %43 = load i64*, i64** %42, align 8
  %44 = load i64, i64* %10, align 8
  %45 = getelementptr inbounds i64, i64* %43, i64 %44
  %46 = load i64, i64* %45, align 8
  %47 = icmp eq i64 %46, 0
  br label %48

48:                                               ; preds = %36, %30
  %49 = phi i1 [ false, %30 ], [ %47, %36 ]
  br i1 %49, label %50, label %54

50:                                               ; preds = %48
  br label %51

51:                                               ; preds = %50
  %52 = load i64, i64* %10, align 8
  %53 = add i64 %52, 1
  store i64 %53, i64* %10, align 8
  br label %30

54:                                               ; preds = %48
  %55 = load i64, i64* %10, align 8
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp eq i64 %55, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %54
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %62 = load i64, i64* %6, align 8
  %63 = call i32 @getMinMaxEntryOfNearestSlotInNextSegment(%struct.TYPE_6__* %61, i64 %62)
  store i32 %63, i32* %4, align 4
  br label %86

64:                                               ; preds = %54
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 2
  %67 = load i32*, i32** %66, align 8
  %68 = load i64, i64* %7, align 8
  %69 = add i64 %68, 1
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %9, align 4
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 1
  %74 = load i64*, i64** %73, align 8
  %75 = load i64, i64* %7, align 8
  %76 = add i64 %75, 1
  %77 = getelementptr inbounds i64, i64* %74, i64 %76
  %78 = load i64, i64* %77, align 8
  %79 = inttoptr i64 %78 to i8*
  %80 = icmp ne i8* %79, null
  %81 = zext i1 %80 to i32
  %82 = call i32 @assert(i32 %81)
  br label %83

83:                                               ; preds = %64
  br label %84

84:                                               ; preds = %83
  %85 = load i32, i32* %9, align 4
  store i32 %85, i32* %4, align 4
  br label %86

86:                                               ; preds = %84, %60, %23
  %87 = load i32, i32* %4, align 4
  ret i32 %87
}

declare dso_local i32 @getMinMaxEntryOfNearestSlotInNextSegment(%struct.TYPE_6__*, i64) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
