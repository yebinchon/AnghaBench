; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_lwp_messages.c___lwpmq_msg_insert.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_lwp_messages.c___lwpmq_msg_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32, i32 (i32)*, %struct.TYPE_17__ }
%struct.TYPE_17__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32, %struct.TYPE_18__* }
%struct.TYPE_16__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__lwpmq_msg_insert(%struct.TYPE_15__* %0, %struct.TYPE_16__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca %struct.TYPE_18__*, align 8
  %9 = alloca %struct.TYPE_17__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %4, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* %11, align 8
  %14 = load i32, i32* %6, align 4
  %15 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  %17 = load i32, i32* %6, align 4
  switch i32 %17, label %26 [
    i32 129, label %18
    i32 128, label %22
  ]

18:                                               ; preds = %3
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %21 = call i32 @__lwpmq_msg_append(%struct.TYPE_15__* %19, %struct.TYPE_16__* %20)
  br label %60

22:                                               ; preds = %3
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %24 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %25 = call i32 @__lwpmq_msg_prepend(%struct.TYPE_15__* %23, %struct.TYPE_16__* %24)
  br label %60

26:                                               ; preds = %3
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %27, i32 0, i32 3
  store %struct.TYPE_17__* %28, %struct.TYPE_17__** %9, align 8
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_18__*, %struct.TYPE_18__** %30, align 8
  store %struct.TYPE_18__* %31, %struct.TYPE_18__** %8, align 8
  br label %32

32:                                               ; preds = %48, %26
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %34 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %35 = call i32 @__lwp_queue_istail(%struct.TYPE_17__* %33, %struct.TYPE_18__* %34)
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  br i1 %37, label %38, label %53

38:                                               ; preds = %32
  %39 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %40 = bitcast %struct.TYPE_18__* %39 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %40, %struct.TYPE_16__** %7, align 8
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp sle i32 %43, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %38
  %49 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %49, i32 0, i32 1
  %51 = load %struct.TYPE_18__*, %struct.TYPE_18__** %50, align 8
  store %struct.TYPE_18__* %51, %struct.TYPE_18__** %8, align 8
  br label %32

52:                                               ; preds = %38
  br label %53

53:                                               ; preds = %52, %32
  %54 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %57, i32 0, i32 1
  %59 = call i32 @__lwp_queue_insert(i32 %56, i32* %58)
  br label %60

60:                                               ; preds = %53, %22, %18
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp eq i32 %63, 1
  br i1 %64, label %65, label %78

65:                                               ; preds = %60
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %66, i32 0, i32 2
  %68 = load i32 (i32)*, i32 (i32)** %67, align 8
  %69 = icmp ne i32 (i32)* %68, null
  br i1 %69, label %70, label %78

70:                                               ; preds = %65
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i32 0, i32 2
  %73 = load i32 (i32)*, i32 (i32)** %72, align 8
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i32 %73(i32 %76)
  br label %78

78:                                               ; preds = %70, %65, %60
  ret void
}

declare dso_local i32 @__lwpmq_msg_append(%struct.TYPE_15__*, %struct.TYPE_16__*) #1

declare dso_local i32 @__lwpmq_msg_prepend(%struct.TYPE_15__*, %struct.TYPE_16__*) #1

declare dso_local i32 @__lwp_queue_istail(%struct.TYPE_17__*, %struct.TYPE_18__*) #1

declare dso_local i32 @__lwp_queue_insert(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
