; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/cbs/extr_menu_cbs_ok.c_action_ok_reset_core_association.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/cbs/extr_menu_cbs_ok.c_action_ok_reset_core_association.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@CMD_EVENT_RESET_CORE_ASSOCIATION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32, i64, i64)* @action_ok_reset_core_association to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @action_ok_reset_core_association(i8* %0, i8* %1, i32 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_3__*, align 8
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %13 = call %struct.TYPE_3__* (...) @menu_driver_get_ptr()
  store %struct.TYPE_3__* %13, %struct.TYPE_3__** %12, align 8
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %15 = icmp ne %struct.TYPE_3__* %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %5
  %17 = call i32 (...) @menu_cbs_exit()
  store i32 %17, i32* %6, align 4
  br label %28

18:                                               ; preds = %5
  %19 = load i32, i32* @CMD_EVENT_RESET_CORE_ASSOCIATION, align 4
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = bitcast i32* %21 to i8*
  %23 = call i32 @command_event(i32 %19, i8* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %18
  %26 = call i32 (...) @menu_cbs_exit()
  store i32 %26, i32* %6, align 4
  br label %28

27:                                               ; preds = %18
  store i32 0, i32* %6, align 4
  br label %28

28:                                               ; preds = %27, %25, %16
  %29 = load i32, i32* %6, align 4
  ret i32 %29
}

declare dso_local %struct.TYPE_3__* @menu_driver_get_ptr(...) #1

declare dso_local i32 @menu_cbs_exit(...) #1

declare dso_local i32 @command_event(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
