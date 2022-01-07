; ModuleID = '/home/carl/AnghaBench/RetroArch/input/drivers/extr_dinput.c_dinput_find_pointer.c'
source_filename = "/home/carl/AnghaBench/RetroArch/input/drivers/extr_dinput.c_dinput_find_pointer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pointer_status = type { i32, %struct.pointer_status* }
%struct.dinput_input = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.pointer_status* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pointer_status* (%struct.dinput_input*, i32)* @dinput_find_pointer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pointer_status* @dinput_find_pointer(%struct.dinput_input* %0, i32 %1) #0 {
  %3 = alloca %struct.dinput_input*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pointer_status*, align 8
  store %struct.dinput_input* %0, %struct.dinput_input** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.dinput_input*, %struct.dinput_input** %3, align 8
  %7 = getelementptr inbounds %struct.dinput_input, %struct.dinput_input* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load %struct.pointer_status*, %struct.pointer_status** %8, align 8
  store %struct.pointer_status* %9, %struct.pointer_status** %5, align 8
  br label %10

10:                                               ; preds = %20, %2
  %11 = load %struct.pointer_status*, %struct.pointer_status** %5, align 8
  %12 = icmp ne %struct.pointer_status* %11, null
  br i1 %12, label %13, label %24

13:                                               ; preds = %10
  %14 = load %struct.pointer_status*, %struct.pointer_status** %5, align 8
  %15 = getelementptr inbounds %struct.pointer_status, %struct.pointer_status* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* %4, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  br label %24

20:                                               ; preds = %13
  %21 = load %struct.pointer_status*, %struct.pointer_status** %5, align 8
  %22 = getelementptr inbounds %struct.pointer_status, %struct.pointer_status* %21, i32 0, i32 1
  %23 = load %struct.pointer_status*, %struct.pointer_status** %22, align 8
  store %struct.pointer_status* %23, %struct.pointer_status** %5, align 8
  br label %10

24:                                               ; preds = %19, %10
  %25 = load %struct.pointer_status*, %struct.pointer_status** %5, align 8
  ret %struct.pointer_status* %25
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
