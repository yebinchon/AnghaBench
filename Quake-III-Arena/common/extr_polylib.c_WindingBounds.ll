; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/common/extr_polylib.c_WindingBounds.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/common/extr_polylib.c_WindingBounds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64** }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @WindingBounds(%struct.TYPE_3__* %0, i64* %1, i64* %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64* %2, i64** %6, align 8
  %10 = load i64*, i64** %5, align 8
  %11 = getelementptr inbounds i64, i64* %10, i64 2
  store i64 99999, i64* %11, align 8
  %12 = load i64*, i64** %5, align 8
  %13 = getelementptr inbounds i64, i64* %12, i64 1
  store i64 99999, i64* %13, align 8
  %14 = load i64*, i64** %5, align 8
  %15 = getelementptr inbounds i64, i64* %14, i64 0
  store i64 99999, i64* %15, align 8
  %16 = load i64*, i64** %6, align 8
  %17 = getelementptr inbounds i64, i64* %16, i64 2
  store i64 -99999, i64* %17, align 8
  %18 = load i64*, i64** %6, align 8
  %19 = getelementptr inbounds i64, i64* %18, i64 1
  store i64 -99999, i64* %19, align 8
  %20 = load i64*, i64** %6, align 8
  %21 = getelementptr inbounds i64, i64* %20, i64 0
  store i64 -99999, i64* %21, align 8
  store i32 0, i32* %8, align 4
  br label %22

22:                                               ; preds = %76, %3
  %23 = load i32, i32* %8, align 4
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp slt i32 %23, %26
  br i1 %27, label %28, label %79

28:                                               ; preds = %22
  store i32 0, i32* %9, align 4
  br label %29

29:                                               ; preds = %72, %28
  %30 = load i32, i32* %9, align 4
  %31 = icmp slt i32 %30, 3
  br i1 %31, label %32, label %75

32:                                               ; preds = %29
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  %35 = load i64**, i64*** %34, align 8
  %36 = load i32, i32* %8, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i64*, i64** %35, i64 %37
  %39 = load i64*, i64** %38, align 8
  %40 = load i32, i32* %9, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i64, i64* %39, i64 %41
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* %7, align 8
  %44 = load i64, i64* %7, align 8
  %45 = load i64*, i64** %5, align 8
  %46 = load i32, i32* %9, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i64, i64* %45, i64 %47
  %49 = load i64, i64* %48, align 8
  %50 = icmp slt i64 %44, %49
  br i1 %50, label %51, label %57

51:                                               ; preds = %32
  %52 = load i64, i64* %7, align 8
  %53 = load i64*, i64** %5, align 8
  %54 = load i32, i32* %9, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i64, i64* %53, i64 %55
  store i64 %52, i64* %56, align 8
  br label %57

57:                                               ; preds = %51, %32
  %58 = load i64, i64* %7, align 8
  %59 = load i64*, i64** %6, align 8
  %60 = load i32, i32* %9, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i64, i64* %59, i64 %61
  %63 = load i64, i64* %62, align 8
  %64 = icmp sgt i64 %58, %63
  br i1 %64, label %65, label %71

65:                                               ; preds = %57
  %66 = load i64, i64* %7, align 8
  %67 = load i64*, i64** %6, align 8
  %68 = load i32, i32* %9, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i64, i64* %67, i64 %69
  store i64 %66, i64* %70, align 8
  br label %71

71:                                               ; preds = %65, %57
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %9, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %9, align 4
  br label %29

75:                                               ; preds = %29
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %8, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %8, align 4
  br label %22

79:                                               ; preds = %22
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
