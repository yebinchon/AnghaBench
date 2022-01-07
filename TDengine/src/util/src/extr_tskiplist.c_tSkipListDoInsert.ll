; ModuleID = '/home/carl/AnghaBench/TDengine/src/util/src/extr_tskiplist.c_tSkipListDoInsert.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/util/src/extr_tskiplist.c_tSkipListDoInsert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_6__**, %struct.TYPE_6__** }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tSkipListDoInsert(%struct.TYPE_7__* %0, %struct.TYPE_6__** %1, i64 %2, %struct.TYPE_6__* %3) #0 {
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca %struct.TYPE_6__**, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store %struct.TYPE_6__** %1, %struct.TYPE_6__*** %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.TYPE_6__* %3, %struct.TYPE_6__** %8, align 8
  store i64 0, i64* %9, align 8
  br label %11

11:                                               ; preds = %82, %4
  %12 = load i64, i64* %9, align 8
  %13 = load i64, i64* %7, align 8
  %14 = icmp ult i64 %12, %13
  br i1 %14, label %15, label %85

15:                                               ; preds = %11
  %16 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %6, align 8
  %17 = load i64, i64* %9, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %16, i64 %17
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  store %struct.TYPE_6__* %19, %struct.TYPE_6__** %10, align 8
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %21 = icmp ne %struct.TYPE_6__* %20, null
  br i1 %21, label %22, label %66

22:                                               ; preds = %15
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %25, align 8
  %27 = load i64, i64* %9, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %26, i64 %27
  store %struct.TYPE_6__* %23, %struct.TYPE_6__** %28, align 8
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %30, align 8
  %32 = load i64, i64* %9, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %31, i64 %32
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = icmp ne %struct.TYPE_6__* %34, null
  br i1 %35, label %36, label %48

36:                                               ; preds = %22
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %39, align 8
  %41 = load i64, i64* %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %40, i64 %41
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %44, align 8
  %46 = load i64, i64* %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %45, i64 %46
  store %struct.TYPE_6__* %37, %struct.TYPE_6__** %47, align 8
  br label %48

48:                                               ; preds = %36, %22
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 1
  %51 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %50, align 8
  %52 = load i64, i64* %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %51, i64 %52
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %53, align 8
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 1
  %57 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %56, align 8
  %58 = load i64, i64* %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %57, i64 %58
  store %struct.TYPE_6__* %54, %struct.TYPE_6__** %59, align 8
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 1
  %63 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %62, align 8
  %64 = load i64, i64* %9, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %63, i64 %64
  store %struct.TYPE_6__* %60, %struct.TYPE_6__** %65, align 8
  br label %81

66:                                               ; preds = %15
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 1
  %71 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %70, align 8
  %72 = load i64, i64* %9, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %71, i64 %72
  store %struct.TYPE_6__* %67, %struct.TYPE_6__** %73, align 8
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %77, align 8
  %79 = load i64, i64* %9, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %78, i64 %79
  store %struct.TYPE_6__* %75, %struct.TYPE_6__** %80, align 8
  br label %81

81:                                               ; preds = %66, %48
  br label %82

82:                                               ; preds = %81
  %83 = load i64, i64* %9, align 8
  %84 = add i64 %83, 1
  store i64 %84, i64* %9, align 8
  br label %11

85:                                               ; preds = %11
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
