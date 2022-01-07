; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/console/extr_video_console.c_gc_initialize.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/console/extr_video_console.c_gc_initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (%struct.vc_info*)* }
%struct.vc_info = type { i32 }

@gc_initialized = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@gc_ops = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@gc_y = common dso_local global i64 0, align 8
@gc_x = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vc_info*)* @gc_initialize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gc_initialize(%struct.vc_info* %0) #0 {
  %2 = alloca %struct.vc_info*, align 8
  store %struct.vc_info* %0, %struct.vc_info** %2, align 8
  %3 = load i64, i64* @gc_initialized, align 8
  %4 = load i64, i64* @FALSE, align 8
  %5 = icmp eq i64 %3, %4
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = call i32 (...) @VCPUTC_LOCK_INIT()
  %8 = load i64, i64* @TRUE, align 8
  store i64 %8, i64* @gc_initialized, align 8
  br label %9

9:                                                ; preds = %6, %1
  %10 = load i32 (%struct.vc_info*)*, i32 (%struct.vc_info*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gc_ops, i32 0, i32 0), align 8
  %11 = load %struct.vc_info*, %struct.vc_info** %2, align 8
  %12 = call i32 %10(%struct.vc_info* %11)
  %13 = call i32 (...) @gc_reset_vt100()
  store i64 0, i64* @gc_y, align 8
  store i64 0, i64* @gc_x, align 8
  ret void
}

declare dso_local i32 @VCPUTC_LOCK_INIT(...) #1

declare dso_local i32 @gc_reset_vt100(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
