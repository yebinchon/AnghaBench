; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_scsp.c_keyon.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_scsp.c_keyon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }
%struct.Slot = type { %struct.TYPE_4__, %struct.TYPE_5__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i64, i32, i64, i64, i64, i64 }

@RELEASE = common dso_local global i64 0, align 8
@ATTACK = common dso_local global i64 0, align 8
@new_scsp = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @keyon(%struct.Slot* %0) #0 {
  %2 = alloca %struct.Slot*, align 8
  store %struct.Slot* %0, %struct.Slot** %2, align 8
  %3 = load %struct.Slot*, %struct.Slot** %2, align 8
  %4 = getelementptr inbounds %struct.Slot, %struct.Slot* %3, i32 0, i32 1
  %5 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @RELEASE, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %38

9:                                                ; preds = %1
  %10 = load i64, i64* @ATTACK, align 8
  %11 = load %struct.Slot*, %struct.Slot** %2, align 8
  %12 = getelementptr inbounds %struct.Slot, %struct.Slot* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  store i64 %10, i64* %13, align 8
  %14 = load %struct.Slot*, %struct.Slot** %2, align 8
  %15 = getelementptr inbounds %struct.Slot, %struct.Slot* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 1
  store i32 640, i32* %16, align 8
  %17 = load %struct.Slot*, %struct.Slot** %2, align 8
  %18 = getelementptr inbounds %struct.Slot, %struct.Slot* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 5
  store i64 0, i64* %19, align 8
  %20 = load %struct.Slot*, %struct.Slot** %2, align 8
  %21 = getelementptr inbounds %struct.Slot, %struct.Slot* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 4
  store i64 0, i64* %22, align 8
  %23 = load %struct.Slot*, %struct.Slot** %2, align 8
  %24 = getelementptr inbounds %struct.Slot, %struct.Slot* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 3
  store i64 0, i64* %25, align 8
  %26 = load %struct.Slot*, %struct.Slot** %2, align 8
  %27 = getelementptr inbounds %struct.Slot, %struct.Slot* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 2
  store i64 0, i64* %28, align 8
  %29 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @new_scsp, i32 0, i32 0), align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %9
  %32 = load %struct.Slot*, %struct.Slot** %2, align 8
  %33 = getelementptr inbounds %struct.Slot, %struct.Slot* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @scsp_debug_add_instrument(i32 %35)
  br label %37

37:                                               ; preds = %31, %9
  br label %38

38:                                               ; preds = %37, %1
  ret void
}

declare dso_local i32 @scsp_debug_add_instrument(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
