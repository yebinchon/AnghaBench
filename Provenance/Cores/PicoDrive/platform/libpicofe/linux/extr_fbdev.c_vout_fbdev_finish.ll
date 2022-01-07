; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/libpicofe/linux/extr_fbdev.c_vout_fbdev_finish.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/libpicofe/linux/extr_fbdev.c_vout_fbdev_finish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vout_fbdev = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vout_fbdev_finish(%struct.vout_fbdev* %0) #0 {
  %2 = alloca %struct.vout_fbdev*, align 8
  store %struct.vout_fbdev* %0, %struct.vout_fbdev** %2, align 8
  %3 = load %struct.vout_fbdev*, %struct.vout_fbdev** %2, align 8
  %4 = call i32 @vout_fbdev_release(%struct.vout_fbdev* %3)
  %5 = load %struct.vout_fbdev*, %struct.vout_fbdev** %2, align 8
  %6 = getelementptr inbounds %struct.vout_fbdev, %struct.vout_fbdev* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = icmp sge i32 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = load %struct.vout_fbdev*, %struct.vout_fbdev** %2, align 8
  %11 = getelementptr inbounds %struct.vout_fbdev, %struct.vout_fbdev* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @close(i32 %12)
  br label %14

14:                                               ; preds = %9, %1
  %15 = load %struct.vout_fbdev*, %struct.vout_fbdev** %2, align 8
  %16 = getelementptr inbounds %struct.vout_fbdev, %struct.vout_fbdev* %15, i32 0, i32 0
  store i32 -1, i32* %16, align 4
  %17 = load %struct.vout_fbdev*, %struct.vout_fbdev** %2, align 8
  %18 = call i32 @free(%struct.vout_fbdev* %17)
  ret void
}

declare dso_local i32 @vout_fbdev_release(%struct.vout_fbdev*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @free(%struct.vout_fbdev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
