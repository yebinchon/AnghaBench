; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_cartridge.c_CARTRIDGE_BountyBob1.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_cartridge.c_CARTRIDGE_BountyBob1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64 }

@Atari800_machine_type = common dso_local global i64 0, align 8
@Atari800_MACHINE_5200 = common dso_local global i64 0, align 8
@active_cart = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CARTRIDGE_BountyBob1(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i64, i64* @Atari800_machine_type, align 8
  %4 = load i64, i64* @Atari800_MACHINE_5200, align 8
  %5 = icmp eq i64 %3, %4
  br i1 %5, label %6, label %32

6:                                                ; preds = %1
  %7 = load i32, i32* %2, align 4
  %8 = icmp sge i32 %7, 20470
  br i1 %8, label %9, label %31

9:                                                ; preds = %6
  %10 = load i32, i32* %2, align 4
  %11 = icmp sle i32 %10, 20473
  br i1 %11, label %12, label %31

12:                                               ; preds = %9
  %13 = load i32, i32* %2, align 4
  %14 = sub nsw i32 %13, 20470
  store i32 %14, i32* %2, align 4
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** @active_cart, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load i32, i32* %2, align 4
  %19 = mul nsw i32 %18, 4096
  %20 = sext i32 %19 to i64
  %21 = add nsw i64 %17, %20
  %22 = call i32 @MEMORY_CopyROM(i32 16384, i32 20479, i64 %21)
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** @active_cart, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = and i32 %25, 12
  %27 = load i32, i32* %2, align 4
  %28 = or i32 %26, %27
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** @active_cart, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  br label %31

31:                                               ; preds = %12, %9, %6
  br label %58

32:                                               ; preds = %1
  %33 = load i32, i32* %2, align 4
  %34 = icmp sge i32 %33, 36854
  br i1 %34, label %35, label %57

35:                                               ; preds = %32
  %36 = load i32, i32* %2, align 4
  %37 = icmp sle i32 %36, 36857
  br i1 %37, label %38, label %57

38:                                               ; preds = %35
  %39 = load i32, i32* %2, align 4
  %40 = sub nsw i32 %39, 36854
  store i32 %40, i32* %2, align 4
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** @active_cart, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i32, i32* %2, align 4
  %45 = mul nsw i32 %44, 4096
  %46 = sext i32 %45 to i64
  %47 = add nsw i64 %43, %46
  %48 = call i32 @MEMORY_CopyROM(i32 32768, i32 36863, i64 %47)
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** @active_cart, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = and i32 %51, 12
  %53 = load i32, i32* %2, align 4
  %54 = or i32 %52, %53
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** @active_cart, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  br label %57

57:                                               ; preds = %38, %35, %32
  br label %58

58:                                               ; preds = %57, %31
  ret void
}

declare dso_local i32 @MEMORY_CopyROM(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
