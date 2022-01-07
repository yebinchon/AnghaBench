; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Layer3.c_L3GetNextIf.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Layer3.c_L3GetNextIf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_11__* @L3GetNextIf(%struct.TYPE_10__* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_11__*, align 8
  %12 = alloca %struct.TYPE_9__*, align 8
  %13 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %10, align 4
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %15 = icmp eq %struct.TYPE_10__* %14, null
  br i1 %15, label %22, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* %6, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %16
  %20 = load i32, i32* %6, align 4
  %21 = icmp eq i32 %20, -1
  br i1 %21, label %22, label %23

22:                                               ; preds = %19, %16, %3
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %4, align 8
  br label %119

23:                                               ; preds = %19
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %9, align 8
  store i32 0, i32* %8, align 4
  br label %24

24:                                               ; preds = %54, %23
  %25 = load i32, i32* %8, align 4
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @LIST_NUM(i32 %28)
  %30 = icmp slt i32 %25, %29
  br i1 %30, label %31, label %57

31:                                               ; preds = %24
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %8, align 4
  %36 = call %struct.TYPE_11__* @LIST_DATA(i32 %34, i32 %35)
  store %struct.TYPE_11__* %36, %struct.TYPE_11__** %11, align 8
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = and i32 %39, %42
  %44 = load i32, i32* %6, align 4
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = and i32 %44, %47
  %49 = icmp eq i32 %43, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %31
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  store %struct.TYPE_11__* %51, %struct.TYPE_11__** %9, align 8
  %52 = load i32, i32* %6, align 4
  store i32 %52, i32* %10, align 4
  br label %57

53:                                               ; preds = %31
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %8, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %8, align 4
  br label %24

57:                                               ; preds = %50, %24
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %59 = icmp eq %struct.TYPE_11__* %58, null
  br i1 %59, label %60, label %107

60:                                               ; preds = %57
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %62 = load i32, i32* %6, align 4
  %63 = call %struct.TYPE_9__* @L3GetBestRoute(%struct.TYPE_10__* %61, i32 %62)
  store %struct.TYPE_9__* %63, %struct.TYPE_9__** %12, align 8
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %65 = icmp eq %struct.TYPE_9__* %64, null
  br i1 %65, label %66, label %67

66:                                               ; preds = %60
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %4, align 8
  br label %119

67:                                               ; preds = %60
  store i32 0, i32* %8, align 4
  br label %68

68:                                               ; preds = %102, %67
  %69 = load i32, i32* %8, align 4
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @LIST_NUM(i32 %72)
  %74 = icmp slt i32 %69, %73
  br i1 %74, label %75, label %105

75:                                               ; preds = %68
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %8, align 4
  %80 = call %struct.TYPE_11__* @LIST_DATA(i32 %78, i32 %79)
  store %struct.TYPE_11__* %80, %struct.TYPE_11__** %13, align 8
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = and i32 %83, %86
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = and i32 %90, %93
  %95 = icmp eq i32 %87, %94
  br i1 %95, label %96, label %101

96:                                               ; preds = %75
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  store %struct.TYPE_11__* %97, %struct.TYPE_11__** %9, align 8
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  store i32 %100, i32* %10, align 4
  br label %105

101:                                              ; preds = %75
  br label %102

102:                                              ; preds = %101
  %103 = load i32, i32* %8, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %8, align 4
  br label %68

105:                                              ; preds = %96, %68
  br label %106

106:                                              ; preds = %105
  br label %107

107:                                              ; preds = %106, %57
  %108 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %109 = icmp eq %struct.TYPE_11__* %108, null
  br i1 %109, label %110, label %111

110:                                              ; preds = %107
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %4, align 8
  br label %119

111:                                              ; preds = %107
  %112 = load i32*, i32** %7, align 8
  %113 = icmp ne i32* %112, null
  br i1 %113, label %114, label %117

114:                                              ; preds = %111
  %115 = load i32, i32* %10, align 4
  %116 = load i32*, i32** %7, align 8
  store i32 %115, i32* %116, align 4
  br label %117

117:                                              ; preds = %114, %111
  %118 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  store %struct.TYPE_11__* %118, %struct.TYPE_11__** %4, align 8
  br label %119

119:                                              ; preds = %117, %110, %66, %22
  %120 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  ret %struct.TYPE_11__* %120
}

declare dso_local i32 @LIST_NUM(i32) #1

declare dso_local %struct.TYPE_11__* @LIST_DATA(i32, i32) #1

declare dso_local %struct.TYPE_9__* @L3GetBestRoute(%struct.TYPE_10__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
