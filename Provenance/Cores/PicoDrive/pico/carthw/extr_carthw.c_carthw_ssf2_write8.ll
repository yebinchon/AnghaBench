; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/carthw/extr_carthw.c_carthw_ssf2_write8.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/carthw/extr_carthw.c_carthw_ssf2_write8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64 }

@ssf2_banks = common dso_local global i32* null, align 8
@Pico = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@EL_ANOMALY = common dso_local global i32 0, align 4
@EL_STATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"ssf2: missing bank @ %06x\00", align 1
@m68k_read8_map = common dso_local global i32 0, align 4
@m68k_read16_map = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @carthw_ssf2_write8 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @carthw_ssf2_write8(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %3, align 4
  %8 = and i32 %7, 16777200
  %9 = icmp ne i32 %8, 10563824
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @PicoWrite8_io(i32 %11, i32 %12)
  br label %62

14:                                               ; preds = %2
  %15 = load i32, i32* %3, align 4
  %16 = and i32 %15, 14
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* %3, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  br label %62

20:                                               ; preds = %14
  %21 = load i32, i32* %4, align 4
  %22 = load i32*, i32** @ssf2_banks, align 8
  %23 = load i32, i32* %3, align 4
  %24 = ashr i32 %23, 1
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %22, i64 %25
  store i32 %21, i32* %26, align 4
  %27 = load i32, i32* %4, align 4
  %28 = shl i32 %27, 19
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %3, align 4
  %30 = shl i32 %29, 18
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %6, align 4
  %32 = add nsw i32 %31, 524288
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Pico, i32 0, i32 0), align 8
  %34 = icmp sgt i32 %32, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %20
  %36 = load i32, i32* @EL_ANOMALY, align 4
  %37 = load i32, i32* @EL_STATUS, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @elprintf(i32 %38, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %39)
  br label %62

41:                                               ; preds = %20
  %42 = load i32, i32* @m68k_read8_map, align 4
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* %5, align 4
  %45 = add nsw i32 %44, 524288
  %46 = sub nsw i32 %45, 1
  %47 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Pico, i32 0, i32 1), align 8
  %48 = load i32, i32* %6, align 4
  %49 = sext i32 %48 to i64
  %50 = add nsw i64 %47, %49
  %51 = call i32 @cpu68k_map_set(i32 %42, i32 %43, i32 %46, i64 %50, i32 0)
  %52 = load i32, i32* @m68k_read16_map, align 4
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* %5, align 4
  %55 = add nsw i32 %54, 524288
  %56 = sub nsw i32 %55, 1
  %57 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Pico, i32 0, i32 1), align 8
  %58 = load i32, i32* %6, align 4
  %59 = sext i32 %58 to i64
  %60 = add nsw i64 %57, %59
  %61 = call i32 @cpu68k_map_set(i32 %52, i32 %53, i32 %56, i64 %60, i32 0)
  br label %62

62:                                               ; preds = %41, %35, %19, %10
  ret void
}

declare dso_local i32 @PicoWrite8_io(i32, i32) #1

declare dso_local i32 @elprintf(i32, i8*, i32) #1

declare dso_local i32 @cpu68k_map_set(i32, i32, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
