; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_cartridge.c_set_bank_809F.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_cartridge.c_set_bank_809F.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64 }

@active_cart = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @set_bank_809F to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_bank_809F(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** @active_cart, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = and i32 %7, 128
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = call i32 (...) @MEMORY_Cart809fDisable()
  %12 = call i32 (...) @MEMORY_CartA0bfDisable()
  br label %38

13:                                               ; preds = %2
  %14 = call i32 (...) @MEMORY_Cart809fEnable()
  %15 = call i32 (...) @MEMORY_CartA0bfEnable()
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @active_cart, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** @active_cart, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = mul nsw i32 %21, 8192
  %23 = sext i32 %22 to i64
  %24 = add nsw i64 %18, %23
  %25 = call i32 @MEMORY_CopyROM(i32 32768, i32 40959, i64 %24)
  %26 = load i32, i32* %4, align 4
  %27 = and i32 %26, 128
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %13
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** @active_cart, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i32, i32* %3, align 4
  %34 = sext i32 %33 to i64
  %35 = add nsw i64 %32, %34
  %36 = call i32 @MEMORY_CopyROM(i32 40960, i32 49151, i64 %35)
  br label %37

37:                                               ; preds = %29, %13
  br label %38

38:                                               ; preds = %37, %10
  ret void
}

declare dso_local i32 @MEMORY_Cart809fDisable(...) #1

declare dso_local i32 @MEMORY_CartA0bfDisable(...) #1

declare dso_local i32 @MEMORY_Cart809fEnable(...) #1

declare dso_local i32 @MEMORY_CartA0bfEnable(...) #1

declare dso_local i32 @MEMORY_CopyROM(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
