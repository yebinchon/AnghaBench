; ModuleID = '/home/carl/AnghaBench/Mirai-Source-Code/mirai/bot/extr_resolv.c_resolv_entries_free.c'
source_filename = "/home/carl/AnghaBench/Mirai-Source-Code/mirai/bot/extr_resolv.c_resolv_entries_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resolv_entries = type { %struct.resolv_entries* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @resolv_entries_free(%struct.resolv_entries* %0) #0 {
  %2 = alloca %struct.resolv_entries*, align 8
  store %struct.resolv_entries* %0, %struct.resolv_entries** %2, align 8
  %3 = load %struct.resolv_entries*, %struct.resolv_entries** %2, align 8
  %4 = icmp eq %struct.resolv_entries* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %19

6:                                                ; preds = %1
  %7 = load %struct.resolv_entries*, %struct.resolv_entries** %2, align 8
  %8 = getelementptr inbounds %struct.resolv_entries, %struct.resolv_entries* %7, i32 0, i32 0
  %9 = load %struct.resolv_entries*, %struct.resolv_entries** %8, align 8
  %10 = icmp ne %struct.resolv_entries* %9, null
  br i1 %10, label %11, label %16

11:                                               ; preds = %6
  %12 = load %struct.resolv_entries*, %struct.resolv_entries** %2, align 8
  %13 = getelementptr inbounds %struct.resolv_entries, %struct.resolv_entries* %12, i32 0, i32 0
  %14 = load %struct.resolv_entries*, %struct.resolv_entries** %13, align 8
  %15 = call i32 @free(%struct.resolv_entries* %14)
  br label %16

16:                                               ; preds = %11, %6
  %17 = load %struct.resolv_entries*, %struct.resolv_entries** %2, align 8
  %18 = call i32 @free(%struct.resolv_entries* %17)
  br label %19

19:                                               ; preds = %16, %5
  ret void
}

declare dso_local i32 @free(%struct.resolv_entries*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
