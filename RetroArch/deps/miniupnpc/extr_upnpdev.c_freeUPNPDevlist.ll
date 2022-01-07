; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/miniupnpc/extr_upnpdev.c_freeUPNPDevlist.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/miniupnpc/extr_upnpdev.c_freeUPNPDevlist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.UPNPDev = type { %struct.UPNPDev* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @freeUPNPDevlist(%struct.UPNPDev* %0) #0 {
  %2 = alloca %struct.UPNPDev*, align 8
  %3 = alloca %struct.UPNPDev*, align 8
  store %struct.UPNPDev* %0, %struct.UPNPDev** %2, align 8
  br label %4

4:                                                ; preds = %7, %1
  %5 = load %struct.UPNPDev*, %struct.UPNPDev** %2, align 8
  %6 = icmp ne %struct.UPNPDev* %5, null
  br i1 %6, label %7, label %14

7:                                                ; preds = %4
  %8 = load %struct.UPNPDev*, %struct.UPNPDev** %2, align 8
  %9 = getelementptr inbounds %struct.UPNPDev, %struct.UPNPDev* %8, i32 0, i32 0
  %10 = load %struct.UPNPDev*, %struct.UPNPDev** %9, align 8
  store %struct.UPNPDev* %10, %struct.UPNPDev** %3, align 8
  %11 = load %struct.UPNPDev*, %struct.UPNPDev** %2, align 8
  %12 = call i32 @free(%struct.UPNPDev* %11)
  %13 = load %struct.UPNPDev*, %struct.UPNPDev** %3, align 8
  store %struct.UPNPDev* %13, %struct.UPNPDev** %2, align 8
  br label %4

14:                                               ; preds = %4
  ret void
}

declare dso_local i32 @free(%struct.UPNPDev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
