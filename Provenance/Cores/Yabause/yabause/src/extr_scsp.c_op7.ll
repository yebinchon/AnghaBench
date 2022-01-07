; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_scsp.c_op7.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_scsp.c_op7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Slot = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.Scsp = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @op7(%struct.Slot* %0, %struct.Scsp* %1) #0 {
  %3 = alloca %struct.Slot*, align 8
  %4 = alloca %struct.Scsp*, align 8
  %5 = alloca i32, align 4
  store %struct.Slot* %0, %struct.Slot** %3, align 8
  store %struct.Scsp* %1, %struct.Scsp** %4, align 8
  %6 = load %struct.Scsp*, %struct.Scsp** %4, align 8
  %7 = getelementptr inbounds %struct.Scsp, %struct.Scsp* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  %9 = load %struct.Slot*, %struct.Slot** %3, align 8
  %10 = getelementptr inbounds %struct.Slot, %struct.Slot* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = add nsw i32 %12, 32
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32, i32* %8, i64 %14
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %5, align 4
  %17 = load %struct.Slot*, %struct.Slot** %3, align 8
  %18 = getelementptr inbounds %struct.Slot, %struct.Slot* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.Scsp*, %struct.Scsp** %4, align 8
  %22 = getelementptr inbounds %struct.Scsp, %struct.Scsp* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load %struct.Slot*, %struct.Slot** %3, align 8
  %25 = getelementptr inbounds %struct.Slot, %struct.Slot* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %27, 32
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %23, i64 %29
  store i32 %20, i32* %30, align 4
  %31 = load i32, i32* %5, align 4
  %32 = load %struct.Scsp*, %struct.Scsp** %4, align 8
  %33 = getelementptr inbounds %struct.Scsp, %struct.Scsp* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = load %struct.Slot*, %struct.Slot** %3, align 8
  %36 = getelementptr inbounds %struct.Slot, %struct.Slot* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %34, i64 %39
  store i32 %31, i32* %40, align 4
  %41 = load %struct.Slot*, %struct.Slot** %3, align 8
  %42 = getelementptr inbounds %struct.Slot, %struct.Slot* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %43, align 4
  %46 = load %struct.Slot*, %struct.Slot** %3, align 8
  %47 = getelementptr inbounds %struct.Slot, %struct.Slot* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %48, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
