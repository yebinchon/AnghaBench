; ModuleID = '/home/carl/AnghaBench/TDengine/src/client/src/extr_tscStream.c_tscSetTimestampForRes.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/client/src/extr_tscStream.c_tscSetTimestampForRes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i64 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 }

@.str = private unnamed_addr constant [57 x i8] c"%p stream:%p, timestamp of points is:%lld, reset to %lld\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, %struct.TYPE_10__*)* @tscSetTimestampForRes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tscSetTimestampForRes(%struct.TYPE_8__* %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %4, align 8
  %8 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  store %struct.TYPE_9__* %9, %struct.TYPE_9__** %5, align 8
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to i64*
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %6, align 8
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = sub nsw i64 %17, %20
  store i64 %21, i64* %7, align 8
  %22 = load i64, i64* %6, align 8
  %23 = load i64, i64* %7, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %36

25:                                               ; preds = %2
  %26 = load i64, i64* %7, align 8
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to i64*
  store i64 %26, i64* %30, align 8
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %33 = load i64, i64* %6, align 8
  %34 = load i64, i64* %7, align 8
  %35 = call i32 @tscWarn(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), %struct.TYPE_10__* %31, %struct.TYPE_8__* %32, i64 %33, i64 %34)
  br label %36

36:                                               ; preds = %25, %2
  ret void
}

declare dso_local i32 @tscWarn(i8*, %struct.TYPE_10__*, %struct.TYPE_8__*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
