; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_grayscale.c_grayscale_filter_thread.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_grayscale.c_grayscale_filter_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32, i32* }
%struct.TYPE_7__ = type { i32, i32, %struct.TYPE_10__* }
%struct.TYPE_9__ = type { i32, %struct.TYPE_7__* }

@.str = private unnamed_addr constant [40 x i8] c"Grayscale thread started for segment %d\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"Thread started when no work available\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @grayscale_filter_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca %struct.TYPE_8__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %3, align 8
  store i32 1, i32* %5, align 4
  %14 = load i8*, i8** %2, align 8
  %15 = bitcast i8* %14 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %15, %struct.TYPE_9__** %10, align 8
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  store %struct.TYPE_7__* %18, %struct.TYPE_7__** %4, align 8
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @hb_deep_log(i32 3, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %22)
  br label %24

24:                                               ; preds = %124, %1
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %129

27:                                               ; preds = %24
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 1
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @taskset_thread_wait4start(i32* %29, i32 %30)
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 1
  %34 = load i32, i32* %7, align 4
  %35 = call i64 @taskset_thread_stop(i32* %33, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %27
  store i32 0, i32* %5, align 4
  br label %124

38:                                               ; preds = %27
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 2
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %40, align 8
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i64 %43
  store %struct.TYPE_10__* %44, %struct.TYPE_10__** %3, align 8
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %46, align 8
  %48 = icmp eq %struct.TYPE_8__* %47, null
  br i1 %48, label %49, label %52

49:                                               ; preds = %38
  %50 = call i32 @hb_error(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %51 = call i32 @hb_snooze(i32 500)
  br label %124

52:                                               ; preds = %38
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %54, align 8
  store %struct.TYPE_8__* %55, %struct.TYPE_8__** %11, align 8
  store i32 1, i32* %6, align 4
  br label %56

56:                                               ; preds = %120, %52
  %57 = load i32, i32* %6, align 4
  %58 = icmp slt i32 %57, 3
  br i1 %58, label %59, label %123

59:                                               ; preds = %56
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %61, align 8
  %63 = load i32, i32* %6, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  store i32 %67, i32* %12, align 4
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %69, align 8
  %71 = load i32, i32* %6, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  store i32 %75, i32* %13, align 4
  %76 = load i32, i32* %13, align 4
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = sdiv i32 %76, %79
  %81 = load i32, i32* %7, align 4
  %82 = mul nsw i32 %80, %81
  store i32 %82, i32* %8, align 4
  %83 = load i32, i32* %7, align 4
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = sub nsw i32 %86, 1
  %88 = icmp eq i32 %83, %87
  br i1 %88, label %89, label %91

89:                                               ; preds = %59
  %90 = load i32, i32* %13, align 4
  store i32 %90, i32* %9, align 4
  br label %100

91:                                               ; preds = %59
  %92 = load i32, i32* %13, align 4
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = sdiv i32 %92, %95
  %97 = load i32, i32* %7, align 4
  %98 = add nsw i32 %97, 1
  %99 = mul nsw i32 %96, %98
  store i32 %99, i32* %9, align 4
  br label %100

100:                                              ; preds = %91, %89
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 0
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %102, align 8
  %104 = load i32, i32* %6, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 2
  %108 = load i32*, i32** %107, align 8
  %109 = load i32, i32* %8, align 4
  %110 = load i32, i32* %12, align 4
  %111 = mul nsw i32 %109, %110
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %108, i64 %112
  %114 = load i32, i32* %9, align 4
  %115 = load i32, i32* %8, align 4
  %116 = sub nsw i32 %114, %115
  %117 = load i32, i32* %12, align 4
  %118 = mul nsw i32 %116, %117
  %119 = call i32 @memset(i32* %113, i32 128, i32 %118)
  br label %120

120:                                              ; preds = %100
  %121 = load i32, i32* %6, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %6, align 4
  br label %56

123:                                              ; preds = %56
  br label %124

124:                                              ; preds = %123, %49, %37
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 1
  %127 = load i32, i32* %7, align 4
  %128 = call i32 @taskset_thread_complete(i32* %126, i32 %127)
  br label %24

129:                                              ; preds = %24
  ret void
}

declare dso_local i32 @hb_deep_log(i32, i8*, i32) #1

declare dso_local i32 @taskset_thread_wait4start(i32*, i32) #1

declare dso_local i64 @taskset_thread_stop(i32*, i32) #1

declare dso_local i32 @hb_error(i8*) #1

declare dso_local i32 @hb_snooze(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @taskset_thread_complete(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
