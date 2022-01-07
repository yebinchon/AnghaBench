; ModuleID = '/home/carl/AnghaBench/RetroArch/input/drivers/extr_dinput.c_dinput_clear_pointers.c'
source_filename = "/home/carl/AnghaBench/RetroArch/input/drivers/extr_dinput.c_dinput_clear_pointers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dinput_input = type { %struct.pointer_status }
%struct.pointer_status = type { %struct.pointer_status* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dinput_input*)* @dinput_clear_pointers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dinput_clear_pointers(%struct.dinput_input* %0) #0 {
  %2 = alloca %struct.dinput_input*, align 8
  %3 = alloca %struct.pointer_status*, align 8
  %4 = alloca %struct.pointer_status*, align 8
  store %struct.dinput_input* %0, %struct.dinput_input** %2, align 8
  %5 = load %struct.dinput_input*, %struct.dinput_input** %2, align 8
  %6 = getelementptr inbounds %struct.dinput_input, %struct.dinput_input* %5, i32 0, i32 0
  store %struct.pointer_status* %6, %struct.pointer_status** %3, align 8
  br label %7

7:                                                ; preds = %12, %1
  %8 = load %struct.pointer_status*, %struct.pointer_status** %3, align 8
  %9 = getelementptr inbounds %struct.pointer_status, %struct.pointer_status* %8, i32 0, i32 0
  %10 = load %struct.pointer_status*, %struct.pointer_status** %9, align 8
  %11 = icmp ne %struct.pointer_status* %10, null
  br i1 %11, label %12, label %25

12:                                               ; preds = %7
  %13 = load %struct.pointer_status*, %struct.pointer_status** %3, align 8
  %14 = getelementptr inbounds %struct.pointer_status, %struct.pointer_status* %13, i32 0, i32 0
  %15 = load %struct.pointer_status*, %struct.pointer_status** %14, align 8
  store %struct.pointer_status* %15, %struct.pointer_status** %4, align 8
  %16 = load %struct.pointer_status*, %struct.pointer_status** %3, align 8
  %17 = getelementptr inbounds %struct.pointer_status, %struct.pointer_status* %16, i32 0, i32 0
  %18 = load %struct.pointer_status*, %struct.pointer_status** %17, align 8
  %19 = getelementptr inbounds %struct.pointer_status, %struct.pointer_status* %18, i32 0, i32 0
  %20 = load %struct.pointer_status*, %struct.pointer_status** %19, align 8
  %21 = load %struct.pointer_status*, %struct.pointer_status** %3, align 8
  %22 = getelementptr inbounds %struct.pointer_status, %struct.pointer_status* %21, i32 0, i32 0
  store %struct.pointer_status* %20, %struct.pointer_status** %22, align 8
  %23 = load %struct.pointer_status*, %struct.pointer_status** %4, align 8
  %24 = call i32 @free(%struct.pointer_status* %23)
  br label %7

25:                                               ; preds = %7
  ret void
}

declare dso_local i32 @free(%struct.pointer_status*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
