; ModuleID = '/home/carl/AnghaBench/TDengine/src/client/src/extr_tscStream.c_tscSetNextLaunchTimer.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/client/src/extr_tscStream.c_tscSetNextLaunchTimer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i64, i64, i64, i64, i32, i32 (i32)*, i32 }
%struct.TYPE_10__ = type { i32 }

@.str = private unnamed_addr constant [72 x i8] c"%p stream:%p, stime:%lld is larger than end time: %lld, stop the stream\00", align 1
@.str.1 = private unnamed_addr constant [70 x i8] c"%p stream:%p, stime:%ld is larger than end time: %ld, stop the stream\00", align 1
@TSDB_TIME_PRECISION_MICRO = common dso_local global i64 0, align 8
@tsMaxStreamComputDelay = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, %struct.TYPE_10__*)* @tscSetNextLaunchTimer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tscSetNextLaunchTimer(%struct.TYPE_9__* %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %4, align 8
  store i64 0, i64* %5, align 8
  %8 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  %10 = call i64 @isProjectStream(i32* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %51

12:                                               ; preds = %2
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %5, align 8
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = icmp sgt i64 %18, %21
  br i1 %22, label %23, label %50

23:                                               ; preds = %12
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 7
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @tscTrace(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str, i64 0, i64 0), i32 %26, %struct.TYPE_9__* %27, i64 %30, i64 %33)
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %36 = call i32 @taos_close_stream(%struct.TYPE_9__* %35)
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 6
  %39 = load i32 (i32)*, i32 (i32)** %38, align 8
  %40 = icmp ne i32 (i32)* %39, null
  br i1 %40, label %41, label %49

41:                                               ; preds = %23
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 6
  %44 = load i32 (i32)*, i32 (i32)** %43, align 8
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 5
  %47 = load i32, i32* %46, align 8
  %48 = call i32 %44(i32 %47)
  br label %49

49:                                               ; preds = %41, %23
  br label %154

50:                                               ; preds = %12
  br label %110

51:                                               ; preds = %2
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = add nsw i64 %57, %54
  store i64 %58, i64* %56, align 8
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 3
  %64 = load i64, i64* %63, align 8
  %65 = sub nsw i64 %61, %64
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = icmp sge i64 %65, %68
  br i1 %69, label %70, label %97

70:                                               ; preds = %51
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 7
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = call i32 @tscTrace(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.1, i64 0, i64 0), i32 %73, %struct.TYPE_9__* %74, i64 %77, i64 %80)
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %83 = call i32 @taos_close_stream(%struct.TYPE_9__* %82)
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 6
  %86 = load i32 (i32)*, i32 (i32)** %85, align 8
  %87 = icmp ne i32 (i32)* %86, null
  br i1 %87, label %88, label %96

88:                                               ; preds = %70
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 6
  %91 = load i32 (i32)*, i32 (i32)** %90, align 8
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 5
  %94 = load i32, i32* %93, align 8
  %95 = call i32 %91(i32 %94)
  br label %96

96:                                               ; preds = %88, %70
  br label %154

97:                                               ; preds = %51
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 4
  %103 = load i64, i64* %102, align 8
  %104 = call i64 @taosGetTimestamp(i64 %103)
  %105 = sub nsw i64 %100, %104
  store i64 %105, i64* %5, align 8
  %106 = load i64, i64* %5, align 8
  %107 = icmp slt i64 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %97
  store i64 0, i64* %5, align 8
  br label %109

109:                                              ; preds = %108, %97
  br label %110

110:                                              ; preds = %109, %50
  %111 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = sitofp i64 %113 to double
  %115 = fmul double %114, 1.000000e-01
  %116 = fptosi double %115 to i64
  store i64 %116, i64* %6, align 8
  %117 = call i64 (...) @rand()
  %118 = load i64, i64* %6, align 8
  %119 = srem i64 %117, %118
  store i64 %119, i64* %6, align 8
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 4
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @TSDB_TIME_PRECISION_MICRO, align 8
  %124 = icmp eq i64 %122, %123
  br i1 %124, label %125, label %128

125:                                              ; preds = %110
  %126 = load i64, i64* @tsMaxStreamComputDelay, align 8
  %127 = mul nsw i64 %126, 1000
  br label %130

128:                                              ; preds = %110
  %129 = load i64, i64* @tsMaxStreamComputDelay, align 8
  br label %130

130:                                              ; preds = %128, %125
  %131 = phi i64 [ %127, %125 ], [ %129, %128 ]
  store i64 %131, i64* %7, align 8
  %132 = load i64, i64* %6, align 8
  %133 = load i64, i64* %7, align 8
  %134 = icmp sgt i64 %132, %133
  br i1 %134, label %135, label %137

135:                                              ; preds = %130
  %136 = load i64, i64* %7, align 8
  store i64 %136, i64* %6, align 8
  br label %137

137:                                              ; preds = %135, %130
  %138 = load i64, i64* %6, align 8
  %139 = load i64, i64* %5, align 8
  %140 = add nsw i64 %139, %138
  store i64 %140, i64* %5, align 8
  %141 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %142 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %141, i32 0, i32 4
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* @TSDB_TIME_PRECISION_MICRO, align 8
  %145 = icmp eq i64 %143, %144
  br i1 %145, label %146, label %149

146:                                              ; preds = %137
  %147 = load i64, i64* %5, align 8
  %148 = sdiv i64 %147, 1000
  store i64 %148, i64* %5, align 8
  br label %149

149:                                              ; preds = %146, %137
  %150 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %151 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %152 = load i64, i64* %5, align 8
  %153 = call i32 @tscSetRetryTimer(%struct.TYPE_9__* %150, %struct.TYPE_10__* %151, i64 %152)
  br label %154

154:                                              ; preds = %149, %96, %49
  ret void
}

declare dso_local i64 @isProjectStream(i32*) #1

declare dso_local i32 @tscTrace(i8*, i32, %struct.TYPE_9__*, i64, i64) #1

declare dso_local i32 @taos_close_stream(%struct.TYPE_9__*) #1

declare dso_local i64 @taosGetTimestamp(i64) #1

declare dso_local i64 @rand(...) #1

declare dso_local i32 @tscSetRetryTimer(%struct.TYPE_9__*, %struct.TYPE_10__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
