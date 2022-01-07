; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/32x/extr_memory.c_bank_switch.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/32x/extr_memory.c_bank_switch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i64 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i64* }

@Pico = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@SRR_MAPPED = common dso_local global i32 0, align 4
@SRam = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@EL_32X = common dso_local global i32 0, align 4
@EL_ANOMALY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"missing bank @ %06x\00", align 1
@M68K_BANK_MASK = common dso_local global i32 0, align 4
@m68k_read8_map = common dso_local global i32 0, align 4
@m68k_read16_map = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"bank %06x-%06x -> %06x\00", align 1
@PicoCpuFM68k = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @bank_switch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bank_switch(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @Pico, i32 0, i32 2, i32 1), align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %70

8:                                                ; preds = %1
  %9 = load i32, i32* %2, align 4
  %10 = shl i32 %9, 20
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @Pico, i32 0, i32 2, i32 0), align 8
  %12 = load i32, i32* @SRR_MAPPED, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %8
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @SRam, i32 0, i32 0), align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = call i32 (...) @bank_map_handler()
  br label %70

21:                                               ; preds = %15, %8
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @Pico, i32 0, i32 0), align 8
  %24 = icmp uge i32 %22, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %21
  %26 = load i32, i32* @EL_32X, align 4
  %27 = load i32, i32* @EL_ANOMALY, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* %4, align 4
  %30 = call i32 (i32, i8*, i32, ...) @elprintf(i32 %28, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = call i32 (...) @bank_map_handler()
  br label %70

32:                                               ; preds = %21
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @Pico, i32 0, i32 0), align 8
  %34 = load i32, i32* @M68K_BANK_MASK, align 4
  %35 = add i32 %33, %34
  %36 = load i32, i32* @M68K_BANK_MASK, align 4
  %37 = xor i32 %36, -1
  %38 = and i32 %35, %37
  store i32 %38, i32* %3, align 4
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* %3, align 4
  %41 = sub i32 %40, %39
  store i32 %41, i32* %3, align 4
  %42 = load i32, i32* %3, align 4
  %43 = icmp ugt i32 %42, 1048576
  br i1 %43, label %44, label %45

44:                                               ; preds = %32
  store i32 1048576, i32* %3, align 4
  br label %45

45:                                               ; preds = %44, %32
  %46 = load i32, i32* @m68k_read8_map, align 4
  %47 = load i32, i32* %3, align 4
  %48 = add i32 9437184, %47
  %49 = sub i32 %48, 1
  %50 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @Pico, i32 0, i32 1), align 8
  %51 = load i32, i32* %4, align 4
  %52 = zext i32 %51 to i64
  %53 = add nsw i64 %50, %52
  %54 = call i32 @cpu68k_map_set(i32 %46, i32 9437184, i32 %49, i64 %53, i32 0)
  %55 = load i32, i32* @m68k_read16_map, align 4
  %56 = load i32, i32* %3, align 4
  %57 = add i32 9437184, %56
  %58 = sub i32 %57, 1
  %59 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @Pico, i32 0, i32 1), align 8
  %60 = load i32, i32* %4, align 4
  %61 = zext i32 %60 to i64
  %62 = add nsw i64 %59, %61
  %63 = call i32 @cpu68k_map_set(i32 %55, i32 9437184, i32 %58, i64 %62, i32 0)
  %64 = load i32, i32* @EL_32X, align 4
  %65 = load i32, i32* %3, align 4
  %66 = add i32 9437184, %65
  %67 = sub i32 %66, 1
  %68 = load i32, i32* %4, align 4
  %69 = call i32 (i32, i8*, i32, ...) @elprintf(i32 %64, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 9437184, i32 %67, i32 %68)
  br label %70

70:                                               ; preds = %45, %25, %19, %7
  ret void
}

declare dso_local i32 @bank_map_handler(...) #1

declare dso_local i32 @elprintf(i32, i8*, i32, ...) #1

declare dso_local i32 @cpu68k_map_set(i32, i32, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
