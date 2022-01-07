; ModuleID = '/home/carl/AnghaBench/RetroArch/extr_retroarch.c_input_driver_get_joypad_driver.c'
source_filename = "/home/carl/AnghaBench/RetroArch/extr_retroarch.c_input_driver_get_joypad_driver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* (i32)* }

@current_input = common dso_local global %struct.TYPE_2__* null, align 8
@current_input_data = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @input_driver_get_joypad_driver() #0 {
  %1 = alloca i32*, align 8
  %2 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current_input, align 8
  %3 = icmp ne %struct.TYPE_2__* %2, null
  br i1 %3, label %4, label %9

4:                                                ; preds = %0
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current_input, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32* (i32)*, i32* (i32)** %6, align 8
  %8 = icmp ne i32* (i32)* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %4, %0
  store i32* null, i32** %1, align 8
  br label %16

10:                                               ; preds = %4
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current_input, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32* (i32)*, i32* (i32)** %12, align 8
  %14 = load i32, i32* @current_input_data, align 4
  %15 = call i32* %13(i32 %14)
  store i32* %15, i32** %1, align 8
  br label %16

16:                                               ; preds = %10, %9
  %17 = load i32*, i32** %1, align 8
  ret i32* %17
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
