; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_subr_log.c_oslog_streamwakeup_locked.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_subr_log.c_oslog_streamwakeup_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@oslog_stream_lock = common dso_local global i32 0, align 4
@LCK_ASSERT_OWNED = common dso_local global i32 0, align 4
@oslog_stream_open = common dso_local global i32 0, align 4
@oslog_streamsoftc = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@LOG_RDWAIT = common dso_local global i32 0, align 4
@oslog_streambufp = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @oslog_streamwakeup_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @oslog_streamwakeup_locked() #0 {
  %1 = load i32, i32* @LCK_ASSERT_OWNED, align 4
  %2 = call i32 @LCK_SPIN_ASSERT(i32* @oslog_stream_lock, i32 %1)
  %3 = load i32, i32* @oslog_stream_open, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %0
  br label %20

6:                                                ; preds = %0
  %7 = call i32 @selwakeup(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @oslog_streamsoftc, i32 0, i32 1))
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @oslog_streamsoftc, i32 0, i32 0), align 4
  %9 = load i32, i32* @LOG_RDWAIT, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %20

12:                                               ; preds = %6
  %13 = load i64, i64* @oslog_streambufp, align 8
  %14 = trunc i64 %13 to i32
  %15 = call i32 @wakeup(i32 %14)
  %16 = load i32, i32* @LOG_RDWAIT, align 4
  %17 = xor i32 %16, -1
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @oslog_streamsoftc, i32 0, i32 0), align 4
  %19 = and i32 %18, %17
  store i32 %19, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @oslog_streamsoftc, i32 0, i32 0), align 4
  br label %20

20:                                               ; preds = %5, %12, %6
  ret void
}

declare dso_local i32 @LCK_SPIN_ASSERT(i32*, i32) #1

declare dso_local i32 @selwakeup(i32*) #1

declare dso_local i32 @wakeup(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
