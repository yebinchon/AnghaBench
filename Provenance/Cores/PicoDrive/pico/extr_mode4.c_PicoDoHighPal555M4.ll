; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/extr_mode4.c_PicoDoHighPal555M4.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/extr_mode4.c_PicoDoHighPal555M4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__, i64 }
%struct.TYPE_3__ = type { i64 }

@Pico = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@HighPal = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @PicoDoHighPal555M4() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @Pico, i32 0, i32 1), align 8
  %6 = inttoptr i64 %5 to i8*
  %7 = bitcast i8* %6 to i32*
  store i32* %7, i32** %1, align 8
  %8 = load i64*, i64** @HighPal, align 8
  %9 = bitcast i64* %8 to i8*
  %10 = bitcast i8* %9 to i32*
  store i32* %10, i32** %2, align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @Pico, i32 0, i32 0, i32 0), align 8
  store i32 16, i32* %4, align 4
  br label %11

11:                                               ; preds = %39, %0
  %12 = load i32, i32* %4, align 4
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %46

14:                                               ; preds = %11
  %15 = load i32*, i32** %1, align 8
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* %3, align 4
  %18 = and i32 %17, 196611
  %19 = shl i32 %18, 14
  %20 = load i32, i32* %3, align 4
  %21 = and i32 %20, 786444
  %22 = shl i32 %21, 7
  %23 = or i32 %19, %22
  %24 = load i32, i32* %3, align 4
  %25 = and i32 %24, 3145776
  %26 = lshr i32 %25, 1
  %27 = or i32 %23, %26
  store i32 %27, i32* %3, align 4
  %28 = load i32, i32* %3, align 4
  %29 = lshr i32 %28, 2
  %30 = load i32, i32* %3, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %3, align 4
  %32 = load i32, i32* %3, align 4
  %33 = lshr i32 %32, 4
  %34 = and i32 %33, 140576865
  %35 = load i32, i32* %3, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %3, align 4
  %37 = load i32, i32* %3, align 4
  %38 = load i32*, i32** %2, align 8
  store i32 %37, i32* %38, align 4
  br label %39

39:                                               ; preds = %14
  %40 = load i32, i32* %4, align 4
  %41 = add nsw i32 %40, -1
  store i32 %41, i32* %4, align 4
  %42 = load i32*, i32** %1, align 8
  %43 = getelementptr inbounds i32, i32* %42, i32 1
  store i32* %43, i32** %1, align 8
  %44 = load i32*, i32** %2, align 8
  %45 = getelementptr inbounds i32, i32* %44, i32 1
  store i32* %45, i32** %2, align 8
  br label %11

46:                                               ; preds = %11
  %47 = load i64*, i64** @HighPal, align 8
  %48 = getelementptr inbounds i64, i64* %47, i64 224
  store i64 0, i64* %48, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
