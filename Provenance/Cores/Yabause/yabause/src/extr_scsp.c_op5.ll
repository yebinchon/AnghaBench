; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_scsp.c_op5.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_scsp.c_op5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32*, i32*, i32*, i32* }
%struct.Slot = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, i64, i64 }
%struct.TYPE_4__ = type { i32, i32, i32 }

@alfo = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @op5(%struct.Slot* %0) #0 {
  %2 = alloca %struct.Slot*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.Slot* %0, %struct.Slot** %2, align 8
  %6 = load %struct.Slot*, %struct.Slot** %2, align 8
  %7 = getelementptr inbounds %struct.Slot, %struct.Slot* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp sgt i32 %9, 959
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = load %struct.Slot*, %struct.Slot** %2, align 8
  %13 = getelementptr inbounds %struct.Slot, %struct.Slot* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 2
  store i64 0, i64* %14, align 8
  br label %103

15:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  store i64 0, i64* %5, align 8
  %16 = load %struct.Slot*, %struct.Slot** %2, align 8
  %17 = getelementptr inbounds %struct.Slot, %struct.Slot* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %15
  %22 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @alfo, i32 0, i32 0), align 8
  %23 = load %struct.Slot*, %struct.Slot** %2, align 8
  %24 = getelementptr inbounds %struct.Slot, %struct.Slot* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds i32, i32* %22, i64 %26
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %3, align 4
  br label %74

29:                                               ; preds = %15
  %30 = load %struct.Slot*, %struct.Slot** %2, align 8
  %31 = getelementptr inbounds %struct.Slot, %struct.Slot* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp eq i32 %33, 1
  br i1 %34, label %35, label %43

35:                                               ; preds = %29
  %36 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @alfo, i32 0, i32 1), align 8
  %37 = load %struct.Slot*, %struct.Slot** %2, align 8
  %38 = getelementptr inbounds %struct.Slot, %struct.Slot* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds i32, i32* %36, i64 %40
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %3, align 4
  br label %73

43:                                               ; preds = %29
  %44 = load %struct.Slot*, %struct.Slot** %2, align 8
  %45 = getelementptr inbounds %struct.Slot, %struct.Slot* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp eq i32 %47, 2
  br i1 %48, label %49, label %57

49:                                               ; preds = %43
  %50 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @alfo, i32 0, i32 2), align 8
  %51 = load %struct.Slot*, %struct.Slot** %2, align 8
  %52 = getelementptr inbounds %struct.Slot, %struct.Slot* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = getelementptr inbounds i32, i32* %50, i64 %54
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %3, align 4
  br label %72

57:                                               ; preds = %43
  %58 = load %struct.Slot*, %struct.Slot** %2, align 8
  %59 = getelementptr inbounds %struct.Slot, %struct.Slot* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp eq i32 %61, 3
  br i1 %62, label %63, label %71

63:                                               ; preds = %57
  %64 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @alfo, i32 0, i32 3), align 8
  %65 = load %struct.Slot*, %struct.Slot** %2, align 8
  %66 = getelementptr inbounds %struct.Slot, %struct.Slot* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = getelementptr inbounds i32, i32* %64, i64 %68
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %3, align 4
  br label %71

71:                                               ; preds = %63, %57
  br label %72

72:                                               ; preds = %71, %49
  br label %73

73:                                               ; preds = %72, %35
  br label %74

74:                                               ; preds = %73, %21
  %75 = load i32, i32* %3, align 4
  %76 = add nsw i32 %75, 1
  %77 = load %struct.Slot*, %struct.Slot** %2, align 8
  %78 = getelementptr inbounds %struct.Slot, %struct.Slot* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = sub nsw i32 7, %80
  %82 = ashr i32 %76, %81
  %83 = shl i32 %82, 1
  store i32 %83, i32* %4, align 4
  %84 = load %struct.Slot*, %struct.Slot** %2, align 8
  %85 = getelementptr inbounds %struct.Slot, %struct.Slot* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.Slot*, %struct.Slot** %2, align 8
  %89 = getelementptr inbounds %struct.Slot, %struct.Slot* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* %4, align 4
  %93 = add nsw i32 %91, %92
  %94 = load %struct.Slot*, %struct.Slot** %2, align 8
  %95 = getelementptr inbounds %struct.Slot, %struct.Slot* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  %98 = call i64 @apply_volume(i32 %87, i32 %93, i64 %97)
  store i64 %98, i64* %5, align 8
  %99 = load i64, i64* %5, align 8
  %100 = load %struct.Slot*, %struct.Slot** %2, align 8
  %101 = getelementptr inbounds %struct.Slot, %struct.Slot* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 2
  store i64 %99, i64* %102, align 8
  br label %103

103:                                              ; preds = %11, %74
  ret void
}

declare dso_local i64 @apply_volume(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
