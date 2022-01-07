; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/smp/extr_p_256_multprecision.c_multiprecision_lshift_mod.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/smp/extr_p_256_multprecision.c_multiprecision_lshift_mod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64* }
%struct.TYPE_3__ = type { i64* }

@KEY_LENGTH_DWORDS_P192 = common dso_local global i32 0, align 4
@curve = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@KEY_LENGTH_DWORDS_P256 = common dso_local global i32 0, align 4
@curve_p256 = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @multiprecision_lshift_mod(i64* %0, i64* %1, i32 %2) #0 {
  %4 = alloca i64*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  store i64* %0, i64** %4, align 8
  store i64* %1, i64** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* @KEY_LENGTH_DWORDS_P192, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %3
  %13 = load i64*, i64** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @curve, i32 0, i32 0), align 8
  store i64* %13, i64** %8, align 8
  br label %22

14:                                               ; preds = %3
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @KEY_LENGTH_DWORDS_P256, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = load i64*, i64** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @curve_p256, i32 0, i32 0), align 8
  store i64* %19, i64** %8, align 8
  br label %21

20:                                               ; preds = %14
  br label %48

21:                                               ; preds = %18
  br label %22

22:                                               ; preds = %21, %12
  %23 = load i64*, i64** %4, align 8
  %24 = load i64*, i64** %5, align 8
  %25 = load i32, i32* %6, align 4
  %26 = call i64 @multiprecision_lshift(i64* %23, i64* %24, i32 %25)
  store i64 %26, i64* %7, align 8
  %27 = load i64, i64* %7, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %22
  %30 = load i64*, i64** %4, align 8
  %31 = load i64*, i64** %4, align 8
  %32 = load i64*, i64** %8, align 8
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @multiprecision_sub(i64* %30, i64* %31, i64* %32, i32 %33)
  br label %48

35:                                               ; preds = %22
  %36 = load i64*, i64** %4, align 8
  %37 = load i64*, i64** %8, align 8
  %38 = load i32, i32* %6, align 4
  %39 = call i64 @multiprecision_compare(i64* %36, i64* %37, i32 %38)
  %40 = icmp sge i64 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %35
  %42 = load i64*, i64** %4, align 8
  %43 = load i64*, i64** %4, align 8
  %44 = load i64*, i64** %8, align 8
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @multiprecision_sub(i64* %42, i64* %43, i64* %44, i32 %45)
  br label %47

47:                                               ; preds = %41, %35
  br label %48

48:                                               ; preds = %20, %47, %29
  ret void
}

declare dso_local i64 @multiprecision_lshift(i64*, i64*, i32) #1

declare dso_local i32 @multiprecision_sub(i64*, i64*, i64*, i32) #1

declare dso_local i64 @multiprecision_compare(i64*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
