; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_mcache.c_mcache_bkt_ws_reap.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_mcache.c_mcache_bkt_ws_reap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_11__, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*)* @mcache_bkt_ws_reap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mcache_bkt_ws_reap(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  %6 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @MIN(i32 %9, i32 %13)
  store i64 %14, i64* %3, align 8
  br label %15

15:                                               ; preds = %27, %1
  %16 = load i64, i64* %3, align 8
  %17 = add nsw i64 %16, -1
  store i64 %17, i64* %3, align 8
  %18 = icmp ne i64 %16, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %15
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 1
  %23 = call i32* @mcache_bkt_alloc(%struct.TYPE_9__* %20, %struct.TYPE_11__* %22, %struct.TYPE_10__** %5)
  store i32* %23, i32** %4, align 8
  %24 = icmp ne i32* %23, null
  br label %25

25:                                               ; preds = %19, %15
  %26 = phi i1 [ false, %15 ], [ %24, %19 ]
  br i1 %26, label %27, label %35

27:                                               ; preds = %25
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %30 = load i32*, i32** %4, align 8
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @mcache_bkt_destroy(%struct.TYPE_9__* %28, %struct.TYPE_10__* %29, i32* %30, i32 %33)
  br label %15

35:                                               ; preds = %25
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @MIN(i32 %39, i32 %43)
  store i64 %44, i64* %3, align 8
  br label %45

45:                                               ; preds = %57, %35
  %46 = load i64, i64* %3, align 8
  %47 = add nsw i64 %46, -1
  store i64 %47, i64* %3, align 8
  %48 = icmp ne i64 %46, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %45
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  %53 = call i32* @mcache_bkt_alloc(%struct.TYPE_9__* %50, %struct.TYPE_11__* %52, %struct.TYPE_10__** %5)
  store i32* %53, i32** %4, align 8
  %54 = icmp ne i32* %53, null
  br label %55

55:                                               ; preds = %49, %45
  %56 = phi i1 [ false, %45 ], [ %54, %49 ]
  br i1 %56, label %57, label %62

57:                                               ; preds = %55
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %60 = load i32*, i32** %4, align 8
  %61 = call i32 @mcache_bkt_destroy(%struct.TYPE_9__* %58, %struct.TYPE_10__* %59, i32* %60, i32 0)
  br label %45

62:                                               ; preds = %55
  ret void
}

declare dso_local i64 @MIN(i32, i32) #1

declare dso_local i32* @mcache_bkt_alloc(%struct.TYPE_9__*, %struct.TYPE_11__*, %struct.TYPE_10__**) #1

declare dso_local i32 @mcache_bkt_destroy(%struct.TYPE_9__*, %struct.TYPE_10__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
