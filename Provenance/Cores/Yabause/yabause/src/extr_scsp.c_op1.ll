; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_scsp.c_op1.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_scsp.c_op1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32*, i32*, i32*, i32* }
%struct.Slot = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i64, i32, i32 }

@lfo_step_table = common dso_local global i32* null, align 8
@plfo = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @op1(%struct.Slot* %0) #0 {
  %2 = alloca %struct.Slot*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.Slot* %0, %struct.Slot** %2, align 8
  %8 = load %struct.Slot*, %struct.Slot** %2, align 8
  %9 = getelementptr inbounds %struct.Slot, %struct.Slot* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = xor i32 %11, 8
  store i32 %12, i32* %3, align 4
  %13 = load %struct.Slot*, %struct.Slot** %2, align 8
  %14 = getelementptr inbounds %struct.Slot, %struct.Slot* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = xor i32 %16, 1024
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* %3, align 4
  %20 = shl i32 %18, %19
  store i32 %20, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %21 = load %struct.Slot*, %struct.Slot** %2, align 8
  %22 = getelementptr inbounds %struct.Slot, %struct.Slot* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp sgt i32 %24, 959
  br i1 %25, label %26, label %27

26:                                               ; preds = %1
  br label %144

27:                                               ; preds = %1
  %28 = load %struct.Slot*, %struct.Slot** %2, align 8
  %29 = getelementptr inbounds %struct.Slot, %struct.Slot* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32*, i32** @lfo_step_table, align 8
  %33 = load %struct.Slot*, %struct.Slot** %2, align 8
  %34 = getelementptr inbounds %struct.Slot, %struct.Slot* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds i32, i32* %32, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = srem i32 %31, %38
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %60

41:                                               ; preds = %27
  %42 = load %struct.Slot*, %struct.Slot** %2, align 8
  %43 = getelementptr inbounds %struct.Slot, %struct.Slot* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 1
  store i32 0, i32* %44, align 4
  %45 = load %struct.Slot*, %struct.Slot** %2, align 8
  %46 = getelementptr inbounds %struct.Slot, %struct.Slot* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %47, align 8
  %50 = load %struct.Slot*, %struct.Slot** %2, align 8
  %51 = getelementptr inbounds %struct.Slot, %struct.Slot* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = icmp sgt i32 %53, 255
  br i1 %54, label %55, label %59

55:                                               ; preds = %41
  %56 = load %struct.Slot*, %struct.Slot** %2, align 8
  %57 = getelementptr inbounds %struct.Slot, %struct.Slot* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 2
  store i32 0, i32* %58, align 8
  br label %59

59:                                               ; preds = %55, %41
  br label %60

60:                                               ; preds = %59, %27
  %61 = load %struct.Slot*, %struct.Slot** %2, align 8
  %62 = getelementptr inbounds %struct.Slot, %struct.Slot* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 8
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %75

66:                                               ; preds = %60
  %67 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @plfo, i32 0, i32 0), align 8
  %68 = load %struct.Slot*, %struct.Slot** %2, align 8
  %69 = getelementptr inbounds %struct.Slot, %struct.Slot* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %67, i64 %72
  %74 = load i32, i32* %73, align 4
  store i32 %74, i32* %6, align 4
  br label %123

75:                                               ; preds = %60
  %76 = load %struct.Slot*, %struct.Slot** %2, align 8
  %77 = getelementptr inbounds %struct.Slot, %struct.Slot* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 8
  %80 = icmp eq i32 %79, 1
  br i1 %80, label %81, label %90

81:                                               ; preds = %75
  %82 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @plfo, i32 0, i32 1), align 8
  %83 = load %struct.Slot*, %struct.Slot** %2, align 8
  %84 = getelementptr inbounds %struct.Slot, %struct.Slot* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %82, i64 %87
  %89 = load i32, i32* %88, align 4
  store i32 %89, i32* %6, align 4
  br label %122

90:                                               ; preds = %75
  %91 = load %struct.Slot*, %struct.Slot** %2, align 8
  %92 = getelementptr inbounds %struct.Slot, %struct.Slot* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 8
  %95 = icmp eq i32 %94, 2
  br i1 %95, label %96, label %105

96:                                               ; preds = %90
  %97 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @plfo, i32 0, i32 2), align 8
  %98 = load %struct.Slot*, %struct.Slot** %2, align 8
  %99 = getelementptr inbounds %struct.Slot, %struct.Slot* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %97, i64 %102
  %104 = load i32, i32* %103, align 4
  store i32 %104, i32* %6, align 4
  br label %121

105:                                              ; preds = %90
  %106 = load %struct.Slot*, %struct.Slot** %2, align 8
  %107 = getelementptr inbounds %struct.Slot, %struct.Slot* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 8
  %110 = icmp eq i32 %109, 3
  br i1 %110, label %111, label %120

111:                                              ; preds = %105
  %112 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @plfo, i32 0, i32 3), align 8
  %113 = load %struct.Slot*, %struct.Slot** %2, align 8
  %114 = getelementptr inbounds %struct.Slot, %struct.Slot* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %112, i64 %117
  %119 = load i32, i32* %118, align 4
  store i32 %119, i32* %6, align 4
  br label %120

120:                                              ; preds = %111, %105
  br label %121

121:                                              ; preds = %120, %96
  br label %122

122:                                              ; preds = %121, %81
  br label %123

123:                                              ; preds = %122, %66
  %124 = load i32, i32* %6, align 4
  %125 = load %struct.Slot*, %struct.Slot** %2, align 8
  %126 = getelementptr inbounds %struct.Slot, %struct.Slot* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 4
  %128 = load i32, i32* %127, align 4
  %129 = shl i32 %124, %128
  %130 = ashr i32 %129, 2
  store i32 %130, i32* %7, align 4
  %131 = load %struct.Slot*, %struct.Slot** %2, align 8
  %132 = getelementptr inbounds %struct.Slot, %struct.Slot* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 4
  %135 = and i32 %134, 262143
  store i32 %135, i32* %133, align 4
  %136 = load i32, i32* %5, align 4
  %137 = load i32, i32* %7, align 4
  %138 = add nsw i32 %136, %137
  %139 = load %struct.Slot*, %struct.Slot** %2, align 8
  %140 = getelementptr inbounds %struct.Slot, %struct.Slot* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 3
  %142 = load i32, i32* %141, align 4
  %143 = add nsw i32 %142, %138
  store i32 %143, i32* %141, align 4
  br label %144

144:                                              ; preds = %123, %26
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
