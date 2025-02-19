; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_ntstat.c_nstat_control_send_removed.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_ntstat.c_nstat_control_send_removed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i64, i32 }

@NSTAT_MSG_TYPE_SRC_REMOVED = common dso_local global i32 0, align 4
@CTL_DATA_EOR = common dso_local global i32 0, align 4
@CTL_DATA_CRIT = common dso_local global i32 0, align 4
@nstat_stats = common dso_local global %struct.TYPE_14__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_13__*, %struct.TYPE_11__*)* @nstat_control_send_removed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @nstat_control_send_removed(%struct.TYPE_13__* %0, %struct.TYPE_11__* %1) #0 {
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_12__, align 8
  %6 = alloca i64, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %4, align 8
  %7 = call i32 @bzero(%struct.TYPE_12__* %5, i32 32)
  %8 = load i32, i32* @NSTAT_MSG_TYPE_SRC_REMOVED, align 4
  %9 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 2
  store i32 %8, i32* %10, align 8
  %11 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  store i32 32, i32* %12, align 8
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 1
  store i64 0, i64* %14, align 8
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 0
  store i32 %17, i32* %18, align 8
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @CTL_DATA_EOR, align 4
  %26 = load i32, i32* @CTL_DATA_CRIT, align 4
  %27 = or i32 %25, %26
  %28 = call i64 @ctl_enqueuedata(i32 %21, i32 %24, %struct.TYPE_12__* %5, i32 32, i32 %27)
  store i64 %28, i64* %6, align 8
  %29 = load i64, i64* %6, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %2
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @nstat_stats, i32 0, i32 0), align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @nstat_stats, i32 0, i32 0), align 4
  br label %34

34:                                               ; preds = %31, %2
  %35 = load i64, i64* %6, align 8
  ret i64 %35
}

declare dso_local i32 @bzero(%struct.TYPE_12__*, i32) #1

declare dso_local i64 @ctl_enqueuedata(i32, i32, %struct.TYPE_12__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
