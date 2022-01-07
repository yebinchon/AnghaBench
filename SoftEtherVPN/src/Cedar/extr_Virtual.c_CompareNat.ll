; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Virtual.c_CompareNat.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Virtual.c_CompareNat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i64, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CompareNat(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_2__*, align 8
  %7 = alloca %struct.TYPE_2__*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = icmp eq i8* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = load i8*, i8** %5, align 8
  %12 = icmp eq i8* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %10, %2
  store i32 0, i32* %3, align 4
  br label %116

14:                                               ; preds = %10
  %15 = load i8*, i8** %4, align 8
  %16 = bitcast i8* %15 to %struct.TYPE_2__**
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  store %struct.TYPE_2__* %17, %struct.TYPE_2__** %6, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = bitcast i8* %18 to %struct.TYPE_2__**
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  store %struct.TYPE_2__* %20, %struct.TYPE_2__** %7, align 8
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %23 = icmp eq %struct.TYPE_2__* %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %116

25:                                               ; preds = %14
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp sgt i64 %28, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %25
  store i32 1, i32* %3, align 4
  br label %116

34:                                               ; preds = %25
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp slt i64 %37, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %34
  store i32 -1, i32* %3, align 4
  br label %116

43:                                               ; preds = %34
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp sgt i64 %46, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %43
  store i32 1, i32* %3, align 4
  br label %116

52:                                               ; preds = %43
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp slt i64 %55, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %52
  store i32 -1, i32* %3, align 4
  br label %116

61:                                               ; preds = %52
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = icmp sgt i64 %64, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %61
  store i32 1, i32* %3, align 4
  br label %116

70:                                               ; preds = %61
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = icmp slt i64 %73, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %70
  store i32 -1, i32* %3, align 4
  br label %116

79:                                               ; preds = %70
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 3
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 3
  %85 = load i64, i64* %84, align 8
  %86 = icmp sgt i64 %82, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %79
  store i32 1, i32* %3, align 4
  br label %116

88:                                               ; preds = %79
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 3
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 3
  %94 = load i64, i64* %93, align 8
  %95 = icmp slt i64 %91, %94
  br i1 %95, label %96, label %97

96:                                               ; preds = %88
  store i32 -1, i32* %3, align 4
  br label %116

97:                                               ; preds = %88
  %98 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 4
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 4
  %103 = load i64, i64* %102, align 8
  %104 = icmp sgt i64 %100, %103
  br i1 %104, label %105, label %106

105:                                              ; preds = %97
  store i32 1, i32* %3, align 4
  br label %116

106:                                              ; preds = %97
  %107 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 4
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 4
  %112 = load i64, i64* %111, align 8
  %113 = icmp slt i64 %109, %112
  br i1 %113, label %114, label %115

114:                                              ; preds = %106
  store i32 -1, i32* %3, align 4
  br label %116

115:                                              ; preds = %106
  store i32 0, i32* %3, align 4
  br label %116

116:                                              ; preds = %115, %114, %105, %96, %87, %78, %69, %60, %51, %42, %33, %24, %13
  %117 = load i32, i32* %3, align 4
  ret i32 %117
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
