; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/console/extr_video_console.c_gc_reset_tabs.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/console/extr_video_console.c_gc_reset_tabs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@gc_buffer_tab_stops = common dso_local global i32* null, align 8
@vinfo = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @gc_reset_tabs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gc_reset_tabs() #0 {
  %1 = alloca i32, align 4
  %2 = load i32*, i32** @gc_buffer_tab_stops, align 8
  %3 = icmp ne i32* %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %0
  br label %22

5:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %6

6:                                                ; preds = %19, %5
  %7 = load i32, i32* %1, align 4
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vinfo, i32 0, i32 0), align 4
  %9 = icmp ult i32 %7, %8
  br i1 %9, label %10, label %22

10:                                               ; preds = %6
  %11 = load i32, i32* %1, align 4
  %12 = urem i32 %11, 8
  %13 = icmp eq i32 %12, 0
  %14 = zext i1 %13 to i32
  %15 = load i32*, i32** @gc_buffer_tab_stops, align 8
  %16 = load i32, i32* %1, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  store i32 %14, i32* %18, align 4
  br label %19

19:                                               ; preds = %10
  %20 = load i32, i32* %1, align 4
  %21 = add i32 %20, 1
  store i32 %21, i32* %1, align 4
  br label %6

22:                                               ; preds = %4, %6
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
