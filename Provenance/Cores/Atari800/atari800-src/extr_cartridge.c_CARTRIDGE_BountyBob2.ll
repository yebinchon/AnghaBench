; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_cartridge.c_CARTRIDGE_BountyBob2.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_cartridge.c_CARTRIDGE_BountyBob2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64 }

@Atari800_machine_type = common dso_local global i64 0, align 8
@Atari800_MACHINE_5200 = common dso_local global i64 0, align 8
@active_cart = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CARTRIDGE_BountyBob2(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i64, i64* @Atari800_machine_type, align 8
  %4 = load i64, i64* @Atari800_MACHINE_5200, align 8
  %5 = icmp eq i64 %3, %4
  br i1 %5, label %6, label %34

6:                                                ; preds = %1
  %7 = load i32, i32* %2, align 4
  %8 = icmp sge i32 %7, 24566
  br i1 %8, label %9, label %33

9:                                                ; preds = %6
  %10 = load i32, i32* %2, align 4
  %11 = icmp sle i32 %10, 24569
  br i1 %11, label %12, label %33

12:                                               ; preds = %9
  %13 = load i32, i32* %2, align 4
  %14 = sub nsw i32 %13, 24566
  store i32 %14, i32* %2, align 4
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** @active_cart, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = add nsw i64 %17, 16384
  %19 = load i32, i32* %2, align 4
  %20 = mul nsw i32 %19, 4096
  %21 = sext i32 %20 to i64
  %22 = add nsw i64 %18, %21
  %23 = call i32 @MEMORY_CopyROM(i32 20480, i32 24575, i64 %22)
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** @active_cart, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = and i32 %26, 3
  %28 = load i32, i32* %2, align 4
  %29 = shl i32 %28, 2
  %30 = or i32 %27, %29
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** @active_cart, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  br label %33

33:                                               ; preds = %12, %9, %6
  br label %62

34:                                               ; preds = %1
  %35 = load i32, i32* %2, align 4
  %36 = icmp sge i32 %35, 40950
  br i1 %36, label %37, label %61

37:                                               ; preds = %34
  %38 = load i32, i32* %2, align 4
  %39 = icmp sle i32 %38, 40953
  br i1 %39, label %40, label %61

40:                                               ; preds = %37
  %41 = load i32, i32* %2, align 4
  %42 = sub nsw i32 %41, 40950
  store i32 %42, i32* %2, align 4
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** @active_cart, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = add nsw i64 %45, 16384
  %47 = load i32, i32* %2, align 4
  %48 = mul nsw i32 %47, 4096
  %49 = sext i32 %48 to i64
  %50 = add nsw i64 %46, %49
  %51 = call i32 @MEMORY_CopyROM(i32 36864, i32 40959, i64 %50)
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** @active_cart, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = and i32 %54, 3
  %56 = load i32, i32* %2, align 4
  %57 = shl i32 %56, 2
  %58 = or i32 %55, %57
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** @active_cart, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 8
  br label %61

61:                                               ; preds = %40, %37, %34
  br label %62

62:                                               ; preds = %61, %33
  ret void
}

declare dso_local i32 @MEMORY_CopyROM(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
