; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf_ioctl.c_pf_start.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf_ioctl.c_pf_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }

@pf_lock = common dso_local global i32 0, align 4
@LCK_MTX_ASSERT_OWNED = common dso_local global i32 0, align 4
@pf_is_enabled = common dso_local global i32 0, align 4
@pf_status = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@pf_purge_thread_fn = common dso_local global i32 0, align 4
@PF_DEBUG_MISC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"pf: started\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @pf_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pf_start() #0 {
  %1 = load i32, i32* @pf_lock, align 4
  %2 = load i32, i32* @LCK_MTX_ASSERT_OWNED, align 4
  %3 = call i32 @LCK_MTX_ASSERT(i32 %1, i32 %2)
  %4 = load i32, i32* @pf_is_enabled, align 4
  %5 = icmp eq i32 %4, 0
  %6 = zext i1 %5 to i32
  %7 = call i32 @VERIFY(i32 %6)
  store i32 1, i32* @pf_is_enabled, align 4
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pf_status, i32 0, i32 0), align 4
  %8 = call i32 (...) @pf_calendar_time_second()
  store i32 %8, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pf_status, i32 0, i32 2), align 4
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pf_status, i32 0, i32 1), align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %0
  %12 = call i32 (...) @pf_time_second()
  store i32 %12, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pf_status, i32 0, i32 1), align 4
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pf_status, i32 0, i32 1), align 4
  %14 = shl i32 %13, 32
  store i32 %14, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pf_status, i32 0, i32 1), align 4
  br label %15

15:                                               ; preds = %11, %0
  %16 = load i32, i32* @pf_purge_thread_fn, align 4
  %17 = call i32 @wakeup(i32 %16)
  %18 = load i32, i32* @PF_DEBUG_MISC, align 4
  %19 = call i32 @DPFPRINTF(i32 %18, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @LCK_MTX_ASSERT(i32, i32) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i32 @pf_calendar_time_second(...) #1

declare dso_local i32 @pf_time_second(...) #1

declare dso_local i32 @wakeup(i32) #1

declare dso_local i32 @DPFPRINTF(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
