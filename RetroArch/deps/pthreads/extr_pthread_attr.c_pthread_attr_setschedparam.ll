; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/pthreads/extr_pthread_attr.c_pthread_attr_setschedparam.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/pthreads/extr_pthread_attr.c_pthread_attr_setschedparam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.sched_param = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@SCHED_OTHER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pthread_attr_setschedparam(%struct.TYPE_4__** %0, %struct.sched_param* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__**, align 8
  %5 = alloca %struct.sched_param*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_4__** %0, %struct.TYPE_4__*** %4, align 8
  store %struct.sched_param* %1, %struct.sched_param** %5, align 8
  %7 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %4, align 8
  %8 = call i64 @pte_is_attr(%struct.TYPE_4__** %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = load %struct.sched_param*, %struct.sched_param** %5, align 8
  %12 = icmp eq %struct.sched_param* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %10, %2
  %14 = load i32, i32* @EINVAL, align 4
  store i32 %14, i32* %3, align 4
  br label %36

15:                                               ; preds = %10
  %16 = load %struct.sched_param*, %struct.sched_param** %5, align 8
  %17 = getelementptr inbounds %struct.sched_param, %struct.sched_param* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @SCHED_OTHER, align 4
  %21 = call i32 @sched_get_priority_min(i32 %20)
  %22 = icmp slt i32 %19, %21
  br i1 %22, label %28, label %23

23:                                               ; preds = %15
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @SCHED_OTHER, align 4
  %26 = call i32 @sched_get_priority_max(i32 %25)
  %27 = icmp sgt i32 %24, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %23, %15
  %29 = load i32, i32* @EINVAL, align 4
  store i32 %29, i32* %3, align 4
  br label %36

30:                                               ; preds = %23
  %31 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %4, align 8
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load %struct.sched_param*, %struct.sched_param** %5, align 8
  %35 = call i32 @memcpy(i32* %33, %struct.sched_param* %34, i32 4)
  store i32 0, i32* %3, align 4
  br label %36

36:                                               ; preds = %30, %28, %13
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i64 @pte_is_attr(%struct.TYPE_4__**) #1

declare dso_local i32 @sched_get_priority_min(i32) #1

declare dso_local i32 @sched_get_priority_max(i32) #1

declare dso_local i32 @memcpy(i32*, %struct.sched_param*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
