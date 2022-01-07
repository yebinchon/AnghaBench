; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/smp/extr_p_256_multprecision.c_multiprecision_sub_mod.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/smp/extr_p_256_multprecision.c_multiprecision_sub_mod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64* }
%struct.TYPE_3__ = type { i64* }

@KEY_LENGTH_DWORDS_P192 = common dso_local global i32 0, align 4
@curve = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@KEY_LENGTH_DWORDS_P256 = common dso_local global i32 0, align 4
@curve_p256 = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @multiprecision_sub_mod(i64* %0, i64* %1, i64* %2, i32 %3) #0 {
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  store i64* %0, i64** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64* %2, i64** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* %8, align 4
  %12 = load i32, i32* @KEY_LENGTH_DWORDS_P192, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %4
  %15 = load i64*, i64** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @curve, i32 0, i32 0), align 8
  store i64* %15, i64** %10, align 8
  br label %24

16:                                               ; preds = %4
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* @KEY_LENGTH_DWORDS_P256, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = load i64*, i64** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @curve_p256, i32 0, i32 0), align 8
  store i64* %21, i64** %10, align 8
  br label %23

22:                                               ; preds = %16
  br label %38

23:                                               ; preds = %20
  br label %24

24:                                               ; preds = %23, %14
  %25 = load i64*, i64** %5, align 8
  %26 = load i64*, i64** %6, align 8
  %27 = load i64*, i64** %7, align 8
  %28 = load i32, i32* %8, align 4
  %29 = call i64 @multiprecision_sub(i64* %25, i64* %26, i64* %27, i32 %28)
  store i64 %29, i64* %9, align 8
  %30 = load i64, i64* %9, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %24
  %33 = load i64*, i64** %5, align 8
  %34 = load i64*, i64** %5, align 8
  %35 = load i64*, i64** %10, align 8
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @multiprecision_add(i64* %33, i64* %34, i64* %35, i32 %36)
  br label %38

38:                                               ; preds = %22, %32, %24
  ret void
}

declare dso_local i64 @multiprecision_sub(i64*, i64*, i64*, i32) #1

declare dso_local i32 @multiprecision_add(i64*, i64*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
