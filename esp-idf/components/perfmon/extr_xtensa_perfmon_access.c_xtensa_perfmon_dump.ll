; ModuleID = '/home/carl/AnghaBench/esp-idf/components/perfmon/extr_xtensa_perfmon_access.c_xtensa_perfmon_dump.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/perfmon/extr_xtensa_perfmon_access.c_xtensa_perfmon_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERI_PERFMON_PGM = common dso_local global i64 0, align 8
@ERI_PERFMON_INTPC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"perfmon: PGM=%08x, INTPC=%08x\0A\00", align 1
@ERI_PERFMON_MAX = common dso_local global i32 0, align 4
@ERI_PERFMON_PM0 = common dso_local global i64 0, align 8
@ERI_PERFMON_PMCTRL0 = common dso_local global i64 0, align 8
@ERI_PERFMON_PMSTAT0 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [50 x i8] c"perfmon: pm%i=%08x, pmctrl%i=%08x, pmstat%i=%08x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xtensa_perfmon_dump() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = load i64, i64* @ERI_PERFMON_PGM, align 8
  %8 = call i32 @eri_read(i64 %7)
  store i32 %8, i32* %1, align 4
  %9 = load i64, i64* @ERI_PERFMON_INTPC, align 8
  %10 = call i32 @eri_read(i64 %9)
  store i32 %10, i32* %2, align 4
  %11 = load i32, i32* %1, align 4
  %12 = load i32, i32* %2, align 4
  %13 = call i32 (i8*, i32, i32, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %11, i32 %12)
  store i32 0, i32* %3, align 4
  br label %14

14:                                               ; preds = %44, %0
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @ERI_PERFMON_MAX, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %47

18:                                               ; preds = %14
  %19 = load i64, i64* @ERI_PERFMON_PM0, align 8
  %20 = load i32, i32* %3, align 4
  %21 = sext i32 %20 to i64
  %22 = mul i64 %21, 4
  %23 = add i64 %19, %22
  %24 = call i32 @eri_read(i64 %23)
  store i32 %24, i32* %4, align 4
  %25 = load i64, i64* @ERI_PERFMON_PMCTRL0, align 8
  %26 = load i32, i32* %3, align 4
  %27 = sext i32 %26 to i64
  %28 = mul i64 %27, 4
  %29 = add i64 %25, %28
  %30 = call i32 @eri_read(i64 %29)
  store i32 %30, i32* %5, align 4
  %31 = load i64, i64* @ERI_PERFMON_PMSTAT0, align 8
  %32 = load i32, i32* %3, align 4
  %33 = sext i32 %32 to i64
  %34 = mul i64 %33, 4
  %35 = add i64 %31, %34
  %36 = call i32 @eri_read(i64 %35)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %3, align 4
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* %3, align 4
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* %3, align 4
  %42 = load i32, i32* %6, align 4
  %43 = call i32 (i8*, i32, i32, ...) @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %37, i32 %38, i32 %39, i32 %40, i32 %41, i32 %42)
  br label %44

44:                                               ; preds = %18
  %45 = load i32, i32* %3, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %3, align 4
  br label %14

47:                                               ; preds = %14
  ret void
}

declare dso_local i32 @eri_read(i64) #1

declare dso_local i32 @printf(i8*, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
