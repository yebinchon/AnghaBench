; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/titan/extr_titan.c_TitanRenderThreads.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/titan/extr_titan.c_TitanRenderThreads.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_4__*, i32* }
%struct.TYPE_4__ = type { i32, i32 }

@vidsoft_num_priority_threads = common dso_local global i32 0, align 4
@tt_context = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@priority_thread_context = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @TitanRenderThreads(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [6 x i32], align 16
  %10 = alloca [6 x i32], align 16
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load i32, i32* @vidsoft_num_priority_threads, align 4
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @tt_context, i32 0, i32 0), align 4
  %14 = load i32, i32* %6, align 4
  %15 = sdiv i32 %13, %14
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @tt_context, i32 0, i32 0), align 4
  %17 = load i32, i32* %6, align 4
  %18 = srem i32 %16, %17
  store i32 %18, i32* %8, align 4
  %19 = bitcast [6 x i32]* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %19, i8 0, i64 24, i1 false)
  %20 = bitcast [6 x i32]* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %20, i8 0, i64 24, i1 false)
  %21 = load i32*, i32** %3, align 8
  store i32* %21, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @priority_thread_context, i32 0, i32 2), align 8
  %22 = load i32, i32* %4, align 4
  store i32 %22, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @priority_thread_context, i32 0, i32 0), align 8
  store i32 0, i32* %5, align 4
  br label %23

23:                                               ; preds = %41, %2
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %44

27:                                               ; preds = %23
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* %5, align 4
  %30 = mul nsw i32 %28, %29
  %31 = load i32, i32* %5, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 %32
  store i32 %30, i32* %33, align 4
  %34 = load i32, i32* %5, align 4
  %35 = add nsw i32 %34, 1
  %36 = load i32, i32* %7, align 4
  %37 = mul nsw i32 %35, %36
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [6 x i32], [6 x i32]* %10, i64 0, i64 %39
  store i32 %37, i32* %40, align 4
  br label %41

41:                                               ; preds = %27
  %42 = load i32, i32* %5, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %5, align 4
  br label %23

44:                                               ; preds = %23
  store i32 0, i32* %5, align 4
  br label %45

45:                                               ; preds = %70, %44
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* @vidsoft_num_priority_threads, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %73

49:                                               ; preds = %45
  %50 = load i32, i32* %5, align 4
  %51 = add nsw i32 %50, 1
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @priority_thread_context, i32 0, i32 1), align 8
  %56 = load i32, i32* %5, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  store i32 %54, i32* %59, align 4
  %60 = load i32, i32* %5, align 4
  %61 = add nsw i32 %60, 1
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [6 x i32], [6 x i32]* %10, i64 0, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @priority_thread_context, i32 0, i32 1), align 8
  %66 = load i32, i32* %5, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 1
  store i32 %64, i32* %69, align 4
  br label %70

70:                                               ; preds = %49
  %71 = load i32, i32* %5, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %5, align 4
  br label %45

73:                                               ; preds = %45
  %74 = load i32, i32* %8, align 4
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @priority_thread_context, i32 0, i32 1), align 8
  %76 = load i32, i32* @vidsoft_num_priority_threads, align 4
  %77 = sub nsw i32 %76, 1
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = add nsw i32 %81, %74
  store i32 %82, i32* %80, align 4
  store i32 0, i32* %5, align 4
  br label %83

83:                                               ; preds = %90, %73
  %84 = load i32, i32* %5, align 4
  %85 = load i32, i32* @vidsoft_num_priority_threads, align 4
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %87, label %93

87:                                               ; preds = %83
  %88 = load i32, i32* %5, align 4
  %89 = call i32 @TitanStartPriorityThread(i32 %88)
  br label %90

90:                                               ; preds = %87
  %91 = load i32, i32* %5, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %5, align 4
  br label %83

93:                                               ; preds = %83
  %94 = load i32*, i32** %3, align 8
  %95 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 0
  %96 = load i32, i32* %95, align 16
  %97 = getelementptr inbounds [6 x i32], [6 x i32]* %10, i64 0, i64 0
  %98 = load i32, i32* %97, align 16
  %99 = load i32, i32* %4, align 4
  %100 = call i32 @TitanRenderSimplifiedCheck(i32* %94, i32 %96, i32 %98, i32 %99)
  store i32 0, i32* %5, align 4
  br label %101

101:                                              ; preds = %108, %93
  %102 = load i32, i32* %5, align 4
  %103 = load i32, i32* @vidsoft_num_priority_threads, align 4
  %104 = icmp slt i32 %102, %103
  br i1 %104, label %105, label %111

105:                                              ; preds = %101
  %106 = load i32, i32* %5, align 4
  %107 = call i32 @TitanWaitForPriorityThread(i32 %106)
  br label %108

108:                                              ; preds = %105
  %109 = load i32, i32* %5, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %5, align 4
  br label %101

111:                                              ; preds = %101
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @TitanStartPriorityThread(i32) #2

declare dso_local i32 @TitanRenderSimplifiedCheck(i32*, i32, i32, i32) #2

declare dso_local i32 @TitanWaitForPriorityThread(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
