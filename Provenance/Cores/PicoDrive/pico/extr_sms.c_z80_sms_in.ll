; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/extr_sms.c_z80_sms_in.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/extr_sms.c_z80_sms_in.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i8 }

@EL_IO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"z80 port %04x read\00", align 1
@Pico = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@EL_HVCNT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"V counter read: %02x\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"H counter read: %02x\00", align 1
@PicoPad = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [11 x i8] c"ret = %02x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (i16)* @z80_sms_in to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @z80_sms_in(i16 zeroext %0) #0 {
  %2 = alloca i16, align 2
  %3 = alloca i8, align 1
  store i16 %0, i16* %2, align 2
  store i8 0, i8* %3, align 1
  %4 = load i32, i32* @EL_IO, align 4
  %5 = load i16, i16* %2, align 2
  %6 = trunc i16 %5 to i8
  %7 = call i32 @elprintf(i32 %4, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8 zeroext %6)
  %8 = load i16, i16* %2, align 2
  %9 = zext i16 %8 to i32
  %10 = and i32 %9, 193
  %11 = trunc i32 %10 to i16
  store i16 %11, i16* %2, align 2
  %12 = load i16, i16* %2, align 2
  %13 = zext i16 %12 to i32
  switch i32 %13, label %62 [
    i32 0, label %14
    i32 1, label %14
    i32 64, label %15
    i32 65, label %20
    i32 128, label %27
    i32 129, label %29
    i32 192, label %31
    i32 193, label %43
  ]

14:                                               ; preds = %1, %1
  store i8 -1, i8* %3, align 1
  br label %62

15:                                               ; preds = %1
  %16 = load i8, i8* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @Pico, i32 0, i32 2, i32 0), align 4
  store i8 %16, i8* %3, align 1
  %17 = load i32, i32* @EL_HVCNT, align 4
  %18 = load i8, i8* %3, align 1
  %19 = call i32 @elprintf(i32 %17, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8 zeroext %18)
  br label %62

20:                                               ; preds = %1
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @Pico, i32 0, i32 1, i32 0), align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @Pico, i32 0, i32 1, i32 0), align 4
  %23 = trunc i32 %21 to i8
  store i8 %23, i8* %3, align 1
  %24 = load i32, i32* @EL_HVCNT, align 4
  %25 = load i8, i8* %3, align 1
  %26 = call i32 @elprintf(i32 %24, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i8 zeroext %25)
  br label %62

27:                                               ; preds = %1
  %28 = call zeroext i8 (...) @vdp_data_read()
  store i8 %28, i8* %3, align 1
  br label %62

29:                                               ; preds = %1
  %30 = call zeroext i8 (...) @vdp_ctl_read()
  store i8 %30, i8* %3, align 1
  br label %62

31:                                               ; preds = %1
  %32 = load i32*, i32** @PicoPad, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  %34 = load i32, i32* %33, align 4
  %35 = and i32 %34, 63
  %36 = load i32*, i32** @PicoPad, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 1
  %38 = load i32, i32* %37, align 4
  %39 = shl i32 %38, 6
  %40 = or i32 %35, %39
  %41 = xor i32 %40, -1
  %42 = trunc i32 %41 to i8
  store i8 %42, i8* %3, align 1
  br label %62

43:                                               ; preds = %1
  %44 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @Pico, i32 0, i32 0, i32 0), align 4
  %45 = and i32 %44, 128
  %46 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @Pico, i32 0, i32 0, i32 0), align 4
  %47 = shl i32 %46, 1
  %48 = and i32 %47, 64
  %49 = or i32 %45, %48
  %50 = or i32 %49, 48
  %51 = trunc i32 %50 to i8
  store i8 %51, i8* %3, align 1
  %52 = load i32*, i32** @PicoPad, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 1
  %54 = load i32, i32* %53, align 4
  %55 = ashr i32 %54, 2
  %56 = xor i32 %55, -1
  %57 = and i32 %56, 15
  %58 = load i8, i8* %3, align 1
  %59 = zext i8 %58 to i32
  %60 = or i32 %59, %57
  %61 = trunc i32 %60 to i8
  store i8 %61, i8* %3, align 1
  br label %62

62:                                               ; preds = %1, %43, %31, %29, %27, %20, %15, %14
  %63 = load i32, i32* @EL_IO, align 4
  %64 = load i8, i8* %3, align 1
  %65 = call i32 @elprintf(i32 %63, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8 zeroext %64)
  %66 = load i8, i8* %3, align 1
  ret i8 %66
}

declare dso_local i32 @elprintf(i32, i8*, i8 zeroext) #1

declare dso_local zeroext i8 @vdp_data_read(...) #1

declare dso_local zeroext i8 @vdp_ctl_read(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
