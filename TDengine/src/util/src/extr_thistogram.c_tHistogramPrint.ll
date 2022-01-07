; ModuleID = '/home/carl/AnghaBench/TDengine/src/util/src/extr_thistogram.c_tHistogramPrint.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/util/src/extr_thistogram.c_tHistogramPrint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, %struct.TYPE_10__*, %struct.TYPE_8__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_11__** }
%struct.TYPE_11__ = type { %struct.TYPE_11__**, i64 }
%struct.TYPE_8__ = type { double, i32 }
%struct.TYPE_13__ = type { double, i32 }

@.str = private unnamed_addr constant [33 x i8] c"total entries: %d, elements: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"%d: (%f, %lld)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tHistogramPrint(%struct.TYPE_12__* %0) #0 {
  %2 = alloca %struct.TYPE_12__*, align 8
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %2, align 8
  %6 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = sitofp i32 %11 to double
  %13 = call i32 (i8*, i32, double, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %8, double %12)
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 2
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %19, i64 0
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %20, align 8
  store %struct.TYPE_11__* %21, %struct.TYPE_11__** %3, align 8
  store i32 0, i32* %4, align 4
  br label %22

22:                                               ; preds = %47, %1
  %23 = load i32, i32* %4, align 4
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp slt i32 %23, %26
  br i1 %27, label %28, label %50

28:                                               ; preds = %22
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = inttoptr i64 %31 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %32, %struct.TYPE_13__** %5, align 8
  %33 = load i32, i32* %4, align 4
  %34 = add nsw i32 %33, 1
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 0
  %37 = load double, double* %36, align 8
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = call i32 (i8*, i32, double, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %34, double %37, i32 %40)
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %44, i64 0
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %45, align 8
  store %struct.TYPE_11__* %46, %struct.TYPE_11__** %3, align 8
  br label %47

47:                                               ; preds = %28
  %48 = load i32, i32* %4, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %4, align 4
  br label %22

50:                                               ; preds = %22
  ret void
}

declare dso_local i32 @printf(i8*, i32, double, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
