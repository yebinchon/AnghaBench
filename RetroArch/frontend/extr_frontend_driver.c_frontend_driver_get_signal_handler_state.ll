; ModuleID = '/home/carl/AnghaBench/RetroArch/frontend/extr_frontend_driver.c_frontend_driver_get_signal_handler_state.c'
source_filename = "/home/carl/AnghaBench/RetroArch/frontend/extr_frontend_driver.c_frontend_driver_get_signal_handler_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 (...)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @frontend_driver_get_signal_handler_state() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = call %struct.TYPE_3__* (...) @frontend_get_ptr()
  store %struct.TYPE_3__* %3, %struct.TYPE_3__** %2, align 8
  %4 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %5 = icmp ne %struct.TYPE_3__* %4, null
  br i1 %5, label %6, label %11

6:                                                ; preds = %0
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i32 (...)*, i32 (...)** %8, align 8
  %10 = icmp ne i32 (...)* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %6, %0
  store i32 -1, i32* %1, align 4
  br label %17

12:                                               ; preds = %6
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32 (...)*, i32 (...)** %14, align 8
  %16 = call i32 (...) %15()
  store i32 %16, i32* %1, align 4
  br label %17

17:                                               ; preds = %12, %11
  %18 = load i32, i32* %1, align 4
  ret i32 %18
}

declare dso_local %struct.TYPE_3__* @frontend_get_ptr(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
