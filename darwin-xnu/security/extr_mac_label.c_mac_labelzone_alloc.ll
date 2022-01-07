; ModuleID = '/home/carl/AnghaBench/darwin-xnu/security/extr_mac_label.c_mac_labelzone_alloc.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/security/extr_mac_label.c_mac_labelzone_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.label = type { i32 }

@MAC_NOWAIT = common dso_local global i32 0, align 4
@zone_label = common dso_local global i32 0, align 4
@MAC_FLAG_INITIALIZED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.label* @mac_labelzone_alloc(i32 %0) #0 {
  %2 = alloca %struct.label*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.label*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @MAC_NOWAIT, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = load i32, i32* @zone_label, align 4
  %11 = call i64 @zalloc_noblock(i32 %10)
  %12 = inttoptr i64 %11 to %struct.label*
  store %struct.label* %12, %struct.label** %4, align 8
  br label %17

13:                                               ; preds = %1
  %14 = load i32, i32* @zone_label, align 4
  %15 = call i64 @zalloc(i32 %14)
  %16 = inttoptr i64 %15 to %struct.label*
  store %struct.label* %16, %struct.label** %4, align 8
  br label %17

17:                                               ; preds = %13, %9
  %18 = load %struct.label*, %struct.label** %4, align 8
  %19 = icmp eq %struct.label* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  store %struct.label* null, %struct.label** %2, align 8
  br label %28

21:                                               ; preds = %17
  %22 = load %struct.label*, %struct.label** %4, align 8
  %23 = call i32 @bzero(%struct.label* %22, i32 4)
  %24 = load i32, i32* @MAC_FLAG_INITIALIZED, align 4
  %25 = load %struct.label*, %struct.label** %4, align 8
  %26 = getelementptr inbounds %struct.label, %struct.label* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  %27 = load %struct.label*, %struct.label** %4, align 8
  store %struct.label* %27, %struct.label** %2, align 8
  br label %28

28:                                               ; preds = %21, %20
  %29 = load %struct.label*, %struct.label** %2, align 8
  ret %struct.label* %29
}

declare dso_local i64 @zalloc_noblock(i32) #1

declare dso_local i64 @zalloc(i32) #1

declare dso_local i32 @bzero(%struct.label*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
