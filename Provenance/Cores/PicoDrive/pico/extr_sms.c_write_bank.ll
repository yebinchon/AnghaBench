; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/extr_sms.c_write_bank.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/extr_sms.c_write_bank.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i8* }

@EL_Z80BNK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"bank %04x %02x @ %04x\00", align 1
@EL_STATUS = common dso_local global i32 0, align 4
@EL_ANOMALY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"%02x written to control reg!\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"bank0 changed to %d!\00", align 1
@bank_mask = common dso_local global i8 0, align 1
@z80_read_map = common dso_local global i32 0, align 4
@Pico = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@CZ80 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i16, i8)* @write_bank to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_bank(i16 zeroext %0, i8 zeroext %1) #0 {
  %3 = alloca i16, align 2
  %4 = alloca i8, align 1
  store i16 %0, i16* %3, align 2
  store i8 %1, i8* %4, align 1
  %5 = load i32, i32* @EL_Z80BNK, align 4
  %6 = load i16, i16* %3, align 2
  %7 = trunc i16 %6 to i8
  %8 = load i8, i8* %4, align 1
  %9 = zext i8 %8 to i32
  %10 = call i32 (...) @z80_pc()
  %11 = call i32 (i32, i8*, i8, ...) @elprintf(i32 %5, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8 zeroext %7, i32 %9, i32 %10)
  %12 = load i16, i16* %3, align 2
  %13 = zext i16 %12 to i32
  %14 = and i32 %13, 15
  switch i32 %14, label %60 [
    i32 12, label %15
    i32 13, label %21
    i32 14, label %32
    i32 15, label %46
  ]

15:                                               ; preds = %2
  %16 = load i32, i32* @EL_STATUS, align 4
  %17 = load i32, i32* @EL_ANOMALY, align 4
  %18 = or i32 %16, %17
  %19 = load i8, i8* %4, align 1
  %20 = call i32 (i32, i8*, i8, ...) @elprintf(i32 %18, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i8 zeroext %19)
  br label %60

21:                                               ; preds = %2
  %22 = load i8, i8* %4, align 1
  %23 = zext i8 %22 to i32
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %21
  %26 = load i32, i32* @EL_STATUS, align 4
  %27 = load i32, i32* @EL_ANOMALY, align 4
  %28 = or i32 %26, %27
  %29 = load i8, i8* %4, align 1
  %30 = call i32 (i32, i8*, i8, ...) @elprintf(i32 %28, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i8 zeroext %29)
  br label %31

31:                                               ; preds = %25, %21
  br label %60

32:                                               ; preds = %2
  %33 = load i8, i8* @bank_mask, align 1
  %34 = zext i8 %33 to i32
  %35 = load i8, i8* %4, align 1
  %36 = zext i8 %35 to i32
  %37 = and i32 %36, %34
  %38 = trunc i32 %37 to i8
  store i8 %38, i8* %4, align 1
  %39 = load i32, i32* @z80_read_map, align 4
  %40 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @Pico, i32 0, i32 1), align 8
  %41 = load i8, i8* %4, align 1
  %42 = zext i8 %41 to i32
  %43 = shl i32 %42, 14
  %44 = add nsw i32 %40, %43
  %45 = call i32 @z80_map_set(i32 %39, i32 16384, i32 32767, i32 %44, i32 0)
  br label %60

46:                                               ; preds = %2
  %47 = load i8, i8* @bank_mask, align 1
  %48 = zext i8 %47 to i32
  %49 = load i8, i8* %4, align 1
  %50 = zext i8 %49 to i32
  %51 = and i32 %50, %48
  %52 = trunc i32 %51 to i8
  store i8 %52, i8* %4, align 1
  %53 = load i32, i32* @z80_read_map, align 4
  %54 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @Pico, i32 0, i32 1), align 8
  %55 = load i8, i8* %4, align 1
  %56 = zext i8 %55 to i32
  %57 = shl i32 %56, 14
  %58 = add nsw i32 %54, %57
  %59 = call i32 @z80_map_set(i32 %53, i32 32768, i32 49151, i32 %58, i32 0)
  br label %60

60:                                               ; preds = %2, %46, %32, %31, %15
  %61 = load i8, i8* %4, align 1
  %62 = load i8*, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @Pico, i32 0, i32 0, i32 0), align 8
  %63 = load i16, i16* %3, align 2
  %64 = zext i16 %63 to i32
  %65 = and i32 %64, 15
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8, i8* %62, i64 %66
  store i8 %61, i8* %67, align 1
  ret void
}

declare dso_local i32 @elprintf(i32, i8*, i8 zeroext, ...) #1

declare dso_local i32 @z80_pc(...) #1

declare dso_local i32 @z80_map_set(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
