; ModuleID = '/home/carl/AnghaBench/RetroArch/input/drivers/extr_dinput.c_dinput_add_pointer.c'
source_filename = "/home/carl/AnghaBench/RetroArch/input/drivers/extr_dinput.c_dinput_add_pointer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dinput_input = type { %struct.pointer_status }
%struct.pointer_status = type { %struct.pointer_status* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dinput_input*, %struct.pointer_status*)* @dinput_add_pointer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dinput_add_pointer(%struct.dinput_input* %0, %struct.pointer_status* %1) #0 {
  %3 = alloca %struct.dinput_input*, align 8
  %4 = alloca %struct.pointer_status*, align 8
  %5 = alloca %struct.pointer_status*, align 8
  store %struct.dinput_input* %0, %struct.dinput_input** %3, align 8
  store %struct.pointer_status* %1, %struct.pointer_status** %4, align 8
  store %struct.pointer_status* null, %struct.pointer_status** %5, align 8
  %6 = load %struct.pointer_status*, %struct.pointer_status** %4, align 8
  %7 = getelementptr inbounds %struct.pointer_status, %struct.pointer_status* %6, i32 0, i32 0
  store %struct.pointer_status* null, %struct.pointer_status** %7, align 8
  %8 = load %struct.dinput_input*, %struct.dinput_input** %3, align 8
  %9 = getelementptr inbounds %struct.dinput_input, %struct.dinput_input* %8, i32 0, i32 0
  store %struct.pointer_status* %9, %struct.pointer_status** %5, align 8
  br label %10

10:                                               ; preds = %15, %2
  %11 = load %struct.pointer_status*, %struct.pointer_status** %5, align 8
  %12 = getelementptr inbounds %struct.pointer_status, %struct.pointer_status* %11, i32 0, i32 0
  %13 = load %struct.pointer_status*, %struct.pointer_status** %12, align 8
  %14 = icmp ne %struct.pointer_status* %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %10
  %16 = load %struct.pointer_status*, %struct.pointer_status** %5, align 8
  %17 = getelementptr inbounds %struct.pointer_status, %struct.pointer_status* %16, i32 0, i32 0
  %18 = load %struct.pointer_status*, %struct.pointer_status** %17, align 8
  store %struct.pointer_status* %18, %struct.pointer_status** %5, align 8
  br label %10

19:                                               ; preds = %10
  %20 = load %struct.pointer_status*, %struct.pointer_status** %4, align 8
  %21 = load %struct.pointer_status*, %struct.pointer_status** %5, align 8
  %22 = getelementptr inbounds %struct.pointer_status, %struct.pointer_status* %21, i32 0, i32 0
  store %struct.pointer_status* %20, %struct.pointer_status** %22, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
