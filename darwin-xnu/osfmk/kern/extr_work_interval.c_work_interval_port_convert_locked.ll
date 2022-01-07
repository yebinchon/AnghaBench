; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_work_interval.c_work_interval_port_convert_locked.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_work_interval.c_work_interval_port_convert_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.work_interval = type { i32 }
%struct.TYPE_6__ = type { i64 }

@IKOT_WORK_INTERVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.work_interval* (%struct.TYPE_6__*)* @work_interval_port_convert_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.work_interval* @work_interval_port_convert_locked(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.work_interval*, align 8
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca %struct.work_interval*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store %struct.work_interval* null, %struct.work_interval** %4, align 8
  %5 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %6 = call i32 @IP_VALID(%struct.TYPE_6__* %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  store %struct.work_interval* null, %struct.work_interval** %2, align 8
  br label %28

9:                                                ; preds = %1
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %11 = call i32 @ip_active(%struct.TYPE_6__* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %9
  store %struct.work_interval* null, %struct.work_interval** %2, align 8
  br label %28

14:                                               ; preds = %9
  %15 = load i64, i64* @IKOT_WORK_INTERVAL, align 8
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %17 = call i64 @ip_kotype(%struct.TYPE_6__* %16)
  %18 = icmp ne i64 %15, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  store %struct.work_interval* null, %struct.work_interval** %2, align 8
  br label %28

20:                                               ; preds = %14
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to %struct.work_interval*
  store %struct.work_interval* %24, %struct.work_interval** %4, align 8
  %25 = load %struct.work_interval*, %struct.work_interval** %4, align 8
  %26 = call i32 @wi_retain(%struct.work_interval* %25)
  %27 = load %struct.work_interval*, %struct.work_interval** %4, align 8
  store %struct.work_interval* %27, %struct.work_interval** %2, align 8
  br label %28

28:                                               ; preds = %20, %19, %13, %8
  %29 = load %struct.work_interval*, %struct.work_interval** %2, align 8
  ret %struct.work_interval* %29
}

declare dso_local i32 @IP_VALID(%struct.TYPE_6__*) #1

declare dso_local i32 @ip_active(%struct.TYPE_6__*) #1

declare dso_local i64 @ip_kotype(%struct.TYPE_6__*) #1

declare dso_local i32 @wi_retain(%struct.work_interval*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
