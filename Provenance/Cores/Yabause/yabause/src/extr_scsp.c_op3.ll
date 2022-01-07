; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_scsp.c_op3.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_scsp.c_op3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Slot = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @op3(%struct.Slot* %0) #0 {
  %2 = alloca %struct.Slot*, align 8
  %3 = alloca i32, align 4
  store %struct.Slot* %0, %struct.Slot** %2, align 8
  %4 = load %struct.Slot*, %struct.Slot** %2, align 8
  %5 = getelementptr inbounds %struct.Slot, %struct.Slot* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = and i32 %7, 524287
  store i32 %8, i32* %3, align 4
  %9 = load %struct.Slot*, %struct.Slot** %2, align 8
  %10 = getelementptr inbounds %struct.Slot, %struct.Slot* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = icmp sgt i32 %12, 959
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %42

15:                                               ; preds = %1
  %16 = load %struct.Slot*, %struct.Slot** %2, align 8
  %17 = getelementptr inbounds %struct.Slot, %struct.Slot* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %15
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @SoundRamReadWord(i32 %22)
  %24 = load %struct.Slot*, %struct.Slot** %2, align 8
  %25 = getelementptr inbounds %struct.Slot, %struct.Slot* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 2
  store i32 %23, i32* %26, align 4
  br label %34

27:                                               ; preds = %15
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @SoundRamReadByte(i32 %28)
  %30 = shl i32 %29, 8
  %31 = load %struct.Slot*, %struct.Slot** %2, align 8
  %32 = getelementptr inbounds %struct.Slot, %struct.Slot* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 2
  store i32 %30, i32* %33, align 4
  br label %34

34:                                               ; preds = %27, %21
  %35 = load %struct.Slot*, %struct.Slot** %2, align 8
  %36 = getelementptr inbounds %struct.Slot, %struct.Slot* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.Slot*, %struct.Slot** %2, align 8
  %40 = getelementptr inbounds %struct.Slot, %struct.Slot* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 3
  store i32 %38, i32* %41, align 4
  br label %42

42:                                               ; preds = %34, %14
  ret void
}

declare dso_local i32 @SoundRamReadWord(i32) #1

declare dso_local i32 @SoundRamReadByte(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
