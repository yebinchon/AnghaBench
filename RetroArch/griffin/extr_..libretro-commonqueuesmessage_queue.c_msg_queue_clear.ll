; ModuleID = '/home/carl/AnghaBench/RetroArch/griffin/extr_..libretro-commonqueuesmessage_queue.c_msg_queue_clear.c'
source_filename = "/home/carl/AnghaBench/RetroArch/griffin/extr_..libretro-commonqueuesmessage_queue.c_msg_queue_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, %struct.TYPE_5__*, %struct.TYPE_5__** }
%struct.TYPE_5__ = type { %struct.TYPE_5__* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @msg_queue_clear(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %4 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %5 = icmp ne %struct.TYPE_4__* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %57

7:                                                ; preds = %1
  store i64 1, i64* %3, align 8
  br label %8

8:                                                ; preds = %45, %7
  %9 = load i64, i64* %3, align 8
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ult i64 %9, %12
  br i1 %13, label %14, label %48

14:                                               ; preds = %8
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 2
  %17 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %16, align 8
  %18 = load i64, i64* %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %17, i64 %18
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = icmp ne %struct.TYPE_5__* %20, null
  br i1 %21, label %22, label %44

22:                                               ; preds = %14
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 2
  %25 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %24, align 8
  %26 = load i64, i64* %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %25, i64 %26
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = call i32 @free(%struct.TYPE_5__* %30)
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 2
  %34 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %33, align 8
  %35 = load i64, i64* %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %34, i64 %35
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = call i32 @free(%struct.TYPE_5__* %37)
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 2
  %41 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %40, align 8
  %42 = load i64, i64* %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %41, i64 %42
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %43, align 8
  br label %44

44:                                               ; preds = %22, %14
  br label %45

45:                                               ; preds = %44
  %46 = load i64, i64* %3, align 8
  %47 = add i64 %46, 1
  store i64 %47, i64* %3, align 8
  br label %8

48:                                               ; preds = %8
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  store i64 1, i64* %50, align 8
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %52, align 8
  %54 = call i32 @free(%struct.TYPE_5__* %53)
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 1
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %56, align 8
  br label %57

57:                                               ; preds = %48, %6
  ret void
}

declare dso_local i32 @free(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
