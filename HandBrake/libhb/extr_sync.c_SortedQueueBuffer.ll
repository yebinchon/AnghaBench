; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_sync.c_SortedQueueBuffer.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_sync.c_SortedQueueBuffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, i64, i64 }

@AV_NOPTS_VALUE = common dso_local global i64 0, align 8
@SYNC_TYPE_VIDEO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, %struct.TYPE_10__*)* @SortedQueueBuffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SortedQueueBuffer(%struct.TYPE_9__* %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %4, align 8
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %5, align 8
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %19 = call i32 @hb_list_add(i32 %17, %struct.TYPE_10__* %18)
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @hb_list_count(i32 %22)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = sub nsw i32 %24, 2
  store i32 %25, i32* %6, align 4
  br label %26

26:                                               ; preds = %47, %2
  %27 = load i32, i32* %6, align 4
  %28 = icmp sge i32 %27, 0
  br i1 %28, label %29, label %50

29:                                               ; preds = %26
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %6, align 4
  %34 = call %struct.TYPE_10__* @hb_list_item(i32 %32, i32 %33)
  store %struct.TYPE_10__* %34, %struct.TYPE_10__** %4, align 8
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* %5, align 8
  %40 = icmp slt i64 %38, %39
  br i1 %40, label %45, label %41

41:                                               ; preds = %29
  %42 = load i64, i64* %5, align 8
  %43 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %41, %29
  br label %50

46:                                               ; preds = %41
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %6, align 4
  %49 = add nsw i32 %48, -1
  store i32 %49, i32* %6, align 4
  br label %26

50:                                               ; preds = %45, %26
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* %7, align 4
  %53 = sub nsw i32 %52, 2
  %54 = icmp slt i32 %51, %53
  br i1 %54, label %55, label %120

55:                                               ; preds = %50
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %8, align 8
  %56 = load i32, i32* %6, align 4
  %57 = icmp sge i32 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %55
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* %6, align 4
  %63 = call %struct.TYPE_10__* @hb_list_item(i32 %61, i32 %62)
  store %struct.TYPE_10__* %63, %struct.TYPE_10__** %8, align 8
  br label %64

64:                                               ; preds = %58, %55
  %65 = load i32, i32* %6, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %9, align 4
  br label %67

67:                                               ; preds = %116, %64
  %68 = load i32, i32* %9, align 4
  %69 = load i32, i32* %7, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %119

71:                                               ; preds = %67
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* %9, align 4
  %76 = call %struct.TYPE_10__* @hb_list_item(i32 %74, i32 %75)
  store %struct.TYPE_10__* %76, %struct.TYPE_10__** %4, align 8
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  store i64 %80, i64* %10, align 8
  %81 = load i64, i64* %5, align 8
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 0
  store i64 %81, i64* %84, align 8
  %85 = load i64, i64* %10, align 8
  store i64 %85, i64* %5, align 8
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @SYNC_TYPE_VIDEO, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %114

91:                                               ; preds = %71
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %93 = icmp ne %struct.TYPE_10__* %92, null
  br i1 %93, label %94, label %114

94:                                               ; preds = %91
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = sub nsw i64 %98, %102
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 1
  store i64 %103, i64* %106, align 8
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 2
  store i64 %110, i64* %113, align 8
  br label %114

114:                                              ; preds = %94, %91, %71
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  store %struct.TYPE_10__* %115, %struct.TYPE_10__** %8, align 8
  br label %116

116:                                              ; preds = %114
  %117 = load i32, i32* %9, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %9, align 4
  br label %67

119:                                              ; preds = %67
  br label %120

120:                                              ; preds = %119, %50
  ret void
}

declare dso_local i32 @hb_list_add(i32, %struct.TYPE_10__*) #1

declare dso_local i32 @hb_list_count(i32) #1

declare dso_local %struct.TYPE_10__* @hb_list_item(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
