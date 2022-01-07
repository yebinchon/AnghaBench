; ModuleID = '/home/carl/AnghaBench/darwin-xnu/security/extr_mac_pipe.c_mac_pipe_label_update.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/security/extr_mac_pipe.c_mac_pipe_label_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pipe = type { i32 }
%struct.label = type { i32 }

@pipe_label_update = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mac_pipe_label_update(i32 %0, %struct.pipe* %1, %struct.label* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.pipe*, align 8
  %7 = alloca %struct.label*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.pipe* %1, %struct.pipe** %6, align 8
  store %struct.label* %2, %struct.label** %7, align 8
  %9 = load i32, i32* %5, align 4
  %10 = load %struct.pipe*, %struct.pipe** %6, align 8
  %11 = load %struct.label*, %struct.label** %7, align 8
  %12 = call i32 @mac_pipe_check_label_update(i32 %9, %struct.pipe* %10, %struct.label* %11)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i32, i32* %8, align 4
  store i32 %16, i32* %4, align 4
  br label %26

17:                                               ; preds = %3
  %18 = load i32, i32* @pipe_label_update, align 4
  %19 = load i32, i32* %5, align 4
  %20 = load %struct.pipe*, %struct.pipe** %6, align 8
  %21 = load %struct.pipe*, %struct.pipe** %6, align 8
  %22 = getelementptr inbounds %struct.pipe, %struct.pipe* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.label*, %struct.label** %7, align 8
  %25 = call i32 @MAC_PERFORM(i32 %18, i32 %19, %struct.pipe* %20, i32 %23, %struct.label* %24)
  store i32 0, i32* %4, align 4
  br label %26

26:                                               ; preds = %17, %15
  %27 = load i32, i32* %4, align 4
  ret i32 %27
}

declare dso_local i32 @mac_pipe_check_label_update(i32, %struct.pipe*, %struct.label*) #1

declare dso_local i32 @MAC_PERFORM(i32, i32, %struct.pipe*, i32, %struct.label*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
