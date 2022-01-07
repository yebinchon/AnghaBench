; ModuleID = '/home/carl/AnghaBench/TDengine/src/util/src/extr_tskiplist.c_mergeResult.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/util/src/extr_tskiplist.c_mergeResult.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_4__**, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mergeResult(i32* %0, i64 %1, %struct.TYPE_4__*** %2, i64 (i32*, i32*)* %3, %struct.TYPE_4__* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_4__***, align 8
  %9 = alloca i64 (i32*, i32*)*, align 8
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.TYPE_4__*** %2, %struct.TYPE_4__**** %8, align 8
  store i64 (i32*, i32*)* %3, i64 (i32*, i32*)** %9, align 8
  store %struct.TYPE_4__* %4, %struct.TYPE_4__** %10, align 8
  store i64 0, i64* %11, align 8
  store i64 0, i64* %12, align 8
  br label %14

14:                                               ; preds = %58, %5
  %15 = load i64, i64* %11, align 8
  %16 = load i64, i64* %7, align 8
  %17 = icmp ult i64 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %14
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %20 = icmp ne %struct.TYPE_4__* %19, null
  br label %21

21:                                               ; preds = %18, %14
  %22 = phi i1 [ false, %14 ], [ %20, %18 ]
  br i1 %22, label %23, label %59

23:                                               ; preds = %21
  %24 = load i64 (i32*, i32*)*, i64 (i32*, i32*)** %9, align 8
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = load i32*, i32** %6, align 8
  %28 = load i64, i64* %11, align 8
  %29 = getelementptr inbounds i32, i32* %27, i64 %28
  %30 = call i64 %24(i32* %26, i32* %29)
  store i64 %30, i64* %13, align 8
  %31 = load i64, i64* %13, align 8
  %32 = icmp ult i64 %31, 0
  br i1 %32, label %33, label %45

33:                                               ; preds = %23
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %35 = load %struct.TYPE_4__***, %struct.TYPE_4__**** %8, align 8
  %36 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %35, align 8
  %37 = load i64, i64* %12, align 8
  %38 = add i64 %37, 1
  store i64 %38, i64* %12, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %36, i64 %37
  store %struct.TYPE_4__* %34, %struct.TYPE_4__** %39, align 8
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %42, i64 0
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  store %struct.TYPE_4__* %44, %struct.TYPE_4__** %10, align 8
  br label %58

45:                                               ; preds = %23
  %46 = load i64, i64* %13, align 8
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %45
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %51, i64 0
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  store %struct.TYPE_4__* %53, %struct.TYPE_4__** %10, align 8
  br label %57

54:                                               ; preds = %45
  %55 = load i64, i64* %11, align 8
  %56 = add i64 %55, 1
  store i64 %56, i64* %11, align 8
  br label %57

57:                                               ; preds = %54, %48
  br label %58

58:                                               ; preds = %57, %33
  br label %14

59:                                               ; preds = %21
  br label %60

60:                                               ; preds = %63, %59
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %62 = icmp ne %struct.TYPE_4__* %61, null
  br i1 %62, label %63, label %75

63:                                               ; preds = %60
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %65 = load %struct.TYPE_4__***, %struct.TYPE_4__**** %8, align 8
  %66 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %65, align 8
  %67 = load i64, i64* %12, align 8
  %68 = add i64 %67, 1
  store i64 %68, i64* %12, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %66, i64 %67
  store %struct.TYPE_4__* %64, %struct.TYPE_4__** %69, align 8
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %72, i64 0
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  store %struct.TYPE_4__* %74, %struct.TYPE_4__** %10, align 8
  br label %60

75:                                               ; preds = %60
  %76 = load i64, i64* %12, align 8
  ret i64 %76
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
