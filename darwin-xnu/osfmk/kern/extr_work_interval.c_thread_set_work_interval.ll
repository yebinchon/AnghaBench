; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_work_interval.c_thread_set_work_interval.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_work_interval.c_thread_set_work_interval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.work_interval* }
%struct.work_interval = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, %struct.work_interval*)* @thread_set_work_interval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @thread_set_work_interval(%struct.TYPE_4__* %0, %struct.work_interval* %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca %struct.work_interval*, align 8
  %5 = alloca %struct.work_interval*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store %struct.work_interval* %1, %struct.work_interval** %4, align 8
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %7 = call %struct.TYPE_4__* (...) @current_thread()
  %8 = icmp eq %struct.TYPE_4__* %6, %7
  %9 = zext i1 %8 to i32
  %10 = call i32 @assert(i32 %9)
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.work_interval*, %struct.work_interval** %12, align 8
  store %struct.work_interval* %13, %struct.work_interval** %5, align 8
  %14 = load %struct.work_interval*, %struct.work_interval** %4, align 8
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  store %struct.work_interval* %14, %struct.work_interval** %16, align 8
  %17 = load %struct.work_interval*, %struct.work_interval** %5, align 8
  %18 = icmp ne %struct.work_interval* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load %struct.work_interval*, %struct.work_interval** %5, align 8
  %21 = call i32 @wi_release(%struct.work_interval* %20)
  br label %22

22:                                               ; preds = %19, %2
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.TYPE_4__* @current_thread(...) #1

declare dso_local i32 @wi_release(%struct.work_interval*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
