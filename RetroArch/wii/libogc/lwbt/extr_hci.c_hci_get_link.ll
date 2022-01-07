; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/lwbt/extr_hci.c_hci_get_link.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/lwbt/extr_hci.c_hci_get_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_link = type { i32, %struct.hci_link* }
%struct.bd_addr = type { i32 }

@hci_active_links = common dso_local global %struct.hci_link* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.hci_link* @hci_get_link(%struct.bd_addr* %0) #0 {
  %2 = alloca %struct.bd_addr*, align 8
  %3 = alloca %struct.hci_link*, align 8
  store %struct.bd_addr* %0, %struct.bd_addr** %2, align 8
  %4 = load %struct.hci_link*, %struct.hci_link** @hci_active_links, align 8
  store %struct.hci_link* %4, %struct.hci_link** %3, align 8
  br label %5

5:                                                ; preds = %16, %1
  %6 = load %struct.hci_link*, %struct.hci_link** %3, align 8
  %7 = icmp ne %struct.hci_link* %6, null
  br i1 %7, label %8, label %20

8:                                                ; preds = %5
  %9 = load %struct.hci_link*, %struct.hci_link** %3, align 8
  %10 = getelementptr inbounds %struct.hci_link, %struct.hci_link* %9, i32 0, i32 0
  %11 = load %struct.bd_addr*, %struct.bd_addr** %2, align 8
  %12 = call i64 @bd_addr_cmp(i32* %10, %struct.bd_addr* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %8
  br label %20

15:                                               ; preds = %8
  br label %16

16:                                               ; preds = %15
  %17 = load %struct.hci_link*, %struct.hci_link** %3, align 8
  %18 = getelementptr inbounds %struct.hci_link, %struct.hci_link* %17, i32 0, i32 1
  %19 = load %struct.hci_link*, %struct.hci_link** %18, align 8
  store %struct.hci_link* %19, %struct.hci_link** %3, align 8
  br label %5

20:                                               ; preds = %14, %5
  %21 = load %struct.hci_link*, %struct.hci_link** %3, align 8
  ret %struct.hci_link* %21
}

declare dso_local i64 @bd_addr_cmp(i32*, %struct.bd_addr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
