; ModuleID = '/home/carl/AnghaBench/TDengine/src/client/src/extr_tscStream.c_taos_close_stream.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/client/src/extr_tscStream.c_taos_close_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32*, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_10__* }

@.str = private unnamed_addr constant [23 x i8] c"%p stream:%p is closed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @taos_close_stream(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  store i32* %0, i32** %2, align 8
  %5 = load i32*, i32** %2, align 8
  %6 = bitcast i32* %5 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %6, %struct.TYPE_9__** %3, align 8
  %7 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  %9 = call i64 @atomic_exchange_ptr(i32** %8, i32 0)
  %10 = inttoptr i64 %9 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %10, %struct.TYPE_10__** %4, align 8
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %12 = icmp eq %struct.TYPE_10__* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %36

14:                                               ; preds = %1
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %19 = icmp eq %struct.TYPE_10__* %17, %18
  br i1 %19, label %20, label %36

20:                                               ; preds = %14
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %23 = call i32 @tscRemoveFromStreamList(%struct.TYPE_9__* %21, %struct.TYPE_10__* %22)
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 1
  %26 = call i32 @taosTmrStopA(i32* %25)
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %28 = call i32 @tscFreeSqlObj(%struct.TYPE_10__* %27)
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  store i32* null, i32** %30, align 8
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %33 = call i32 @tscTrace(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), %struct.TYPE_10__* %31, %struct.TYPE_9__* %32)
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %35 = call i32 @tfree(%struct.TYPE_9__* %34)
  br label %36

36:                                               ; preds = %13, %20, %14
  ret void
}

declare dso_local i64 @atomic_exchange_ptr(i32**, i32) #1

declare dso_local i32 @tscRemoveFromStreamList(%struct.TYPE_9__*, %struct.TYPE_10__*) #1

declare dso_local i32 @taosTmrStopA(i32*) #1

declare dso_local i32 @tscFreeSqlObj(%struct.TYPE_10__*) #1

declare dso_local i32 @tscTrace(i8*, %struct.TYPE_10__*, %struct.TYPE_9__*) #1

declare dso_local i32 @tfree(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
