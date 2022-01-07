; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_scsp.c_do_decay.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_scsp.c_do_decay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Slot = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@decay_rate_table = common dso_local global i32** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @do_decay(%struct.Slot* %0, i32 %1) #0 {
  %3 = alloca %struct.Slot*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.Slot* %0, %struct.Slot** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.Slot*, %struct.Slot** %3, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @get_rate(%struct.Slot* %8, i32 %9)
  store i32 %10, i32* %5, align 4
  %11 = load %struct.Slot*, %struct.Slot** %3, align 8
  %12 = getelementptr inbounds %struct.Slot, %struct.Slot* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = and i32 %14, 3
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp sle i32 %16, 48
  br i1 %17, label %18, label %26

18:                                               ; preds = %2
  %19 = load i32**, i32*** @decay_rate_table, align 8
  %20 = getelementptr inbounds i32*, i32** %19, i64 0
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %7, align 4
  br label %37

26:                                               ; preds = %2
  %27 = load i32**, i32*** @decay_rate_table, align 8
  %28 = load i32, i32* %5, align 4
  %29 = sub nsw i32 %28, 48
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32*, i32** %27, i64 %30
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %7, align 4
  br label %37

37:                                               ; preds = %26, %18
  %38 = load i32, i32* %5, align 4
  %39 = load %struct.Slot*, %struct.Slot** %3, align 8
  %40 = getelementptr inbounds %struct.Slot, %struct.Slot* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.Slot*, %struct.Slot** %3, align 8
  %44 = call i64 @need_envelope_step(i32 %38, i32 %42, %struct.Slot* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %60

46:                                               ; preds = %37
  %47 = load %struct.Slot*, %struct.Slot** %3, align 8
  %48 = getelementptr inbounds %struct.Slot, %struct.Slot* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = icmp slt i32 %50, 959
  br i1 %51, label %52, label %59

52:                                               ; preds = %46
  %53 = load i32, i32* %7, align 4
  %54 = load %struct.Slot*, %struct.Slot** %3, align 8
  %55 = getelementptr inbounds %struct.Slot, %struct.Slot* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = add nsw i32 %57, %53
  store i32 %58, i32* %56, align 4
  br label %59

59:                                               ; preds = %52, %46
  br label %60

60:                                               ; preds = %59, %37
  ret void
}

declare dso_local i32 @get_rate(%struct.Slot*, i32) #1

declare dso_local i64 @need_envelope_step(i32, i32, %struct.Slot*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
