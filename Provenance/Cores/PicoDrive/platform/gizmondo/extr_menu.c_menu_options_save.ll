; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/gizmondo/extr_menu.c_menu_options_save.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/gizmondo/extr_menu.c_menu_options_save.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@PicoRegionOverride = common dso_local global i32 0, align 4
@Pico = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@PicoOpt = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @menu_options_save to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @menu_options_save() #0 {
  %1 = load i32, i32* @PicoRegionOverride, align 4
  %2 = icmp ne i32 %1, 0
  br i1 %2, label %3, label %13

3:                                                ; preds = %0
  %4 = load i32, i32* @PicoRegionOverride, align 4
  %5 = icmp eq i32 %4, 2
  br i1 %5, label %9, label %6

6:                                                ; preds = %3
  %7 = load i32, i32* @PicoRegionOverride, align 4
  %8 = icmp eq i32 %7, 8
  br label %9

9:                                                ; preds = %6, %3
  %10 = phi i1 [ true, %3 ], [ %8, %6 ]
  %11 = zext i1 %10 to i64
  %12 = select i1 %10, i32 1, i32 0
  store i32 %12, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @Pico, i32 0, i32 0, i32 0), align 4
  br label %13

13:                                               ; preds = %9, %0
  %14 = load i32, i32* @PicoOpt, align 4
  %15 = and i32 %14, 32
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %13
  %18 = call i32 @unbind_action(i32 3840)
  br label %19

19:                                               ; preds = %17, %13
  ret void
}

declare dso_local i32 @unbind_action(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
