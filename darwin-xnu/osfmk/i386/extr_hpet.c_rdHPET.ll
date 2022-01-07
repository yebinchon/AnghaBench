; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_hpet.c_rdHPET.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_hpet.c_rdHPET.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@hpetArea = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rdHPET() #0 {
  %1 = alloca %struct.TYPE_2__*, align 8
  %2 = alloca i64*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = load i64, i64* @hpetArea, align 8
  %6 = inttoptr i64 %5 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %6, %struct.TYPE_2__** %1, align 8
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %1, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = bitcast i32* %8 to i64*
  store i64* %9, i64** %2, align 8
  br label %10

10:                                               ; preds = %16, %0
  %11 = load i64*, i64** %2, align 8
  %12 = getelementptr inbounds i64, i64* %11, i64 1
  %13 = load volatile i64, i64* %12, align 8
  store volatile i64 %13, i64* %3, align 8
  %14 = load i64*, i64** %2, align 8
  %15 = load volatile i64, i64* %14, align 8
  store volatile i64 %15, i64* %4, align 8
  br label %16

16:                                               ; preds = %10
  %17 = load volatile i64, i64* %3, align 8
  %18 = load i64*, i64** %2, align 8
  %19 = getelementptr inbounds i64, i64* %18, i64 1
  %20 = load volatile i64, i64* %19, align 8
  %21 = icmp ne i64 %17, %20
  br i1 %21, label %10, label %22

22:                                               ; preds = %16
  %23 = load volatile i64, i64* %3, align 8
  %24 = trunc i64 %23 to i32
  %25 = shl i32 %24, 32
  %26 = sext i32 %25 to i64
  %27 = load volatile i64, i64* %4, align 8
  %28 = or i64 %26, %27
  %29 = trunc i64 %28 to i32
  ret i32 %29
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
