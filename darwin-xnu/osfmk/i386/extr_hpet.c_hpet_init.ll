; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_hpet.c_hpet_init.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_hpet.c_hpet_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@rcbaArea = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"    current RCBA.HPTC:  %08X\0A\00", align 1
@hptcAE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [83 x i8] c"HPET memory is not enabled, enabling and assigning to 0xFED00000 (hope that's ok)\0A\00", align 1
@hpetAddr = common dso_local global i32 0, align 4
@hpetAreap = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@VM_WIMG_IO = common dso_local global i32 0, align 4
@hpetArea = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [33 x i8] c"HPET: vaddr = %lX, paddr = %08X\0A\00", align 1
@hpetFemto = common dso_local global i32 0, align 4
@Peta = common dso_local global i32 0, align 4
@hpetFreq = common dso_local global i32 0, align 4
@hpetCvtt2n = common dso_local global i64 0, align 8
@hpetCvtn2t = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [71 x i8] c"HPET: Frequency = %6d.%04dMHz, cvtt2n = %08X.%08X, cvtn2t = %08X.%08X\0A\00", align 1
@Mega = common dso_local global i32 0, align 4
@hpetCvt = common dso_local global i64 0, align 8
@tscFCvtt2n = common dso_local global i64 0, align 8
@tsc2hpet = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c" CVT: TSC to HPET = %08X.%08X\0A\00", align 1
@tscFCvtn2t = common dso_local global i32 0, align 4
@hpet2tsc = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [31 x i8] c" CVT: HPET to TSC = %08X.%08X\0A\00", align 1
@busFCvtt2n = common dso_local global i64 0, align 8
@bus2hpet = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [31 x i8] c" CVT: BUS to HPET = %08X.%08X\0A\00", align 1
@busFCvtn2t = common dso_local global i32 0, align 4
@hpet2bus = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [31 x i8] c" CVT: HPET to BUS = %08X.%08X\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hpet_init() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = call i32 (...) @map_rcbaArea()
  %4 = load i64, i64* @rcbaArea, align 8
  %5 = add nsw i64 %4, 13316
  %6 = inttoptr i64 %5 to i32*
  store i32* %6, i32** %1, align 8
  %7 = load i32*, i32** %1, align 8
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %2, align 4
  %9 = load i32*, i32** %1, align 8
  %10 = load i32, i32* %9, align 4
  %11 = call i32 (i8*, ...) @DBG(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = load i32, i32* %2, align 4
  %13 = load i32, i32* @hptcAE, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %23, label %16

16:                                               ; preds = %0
  %17 = call i32 (i8*, ...) @DBG(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.1, i64 0, i64 0))
  %18 = load i32, i32* %2, align 4
  %19 = and i32 %18, -4
  %20 = load i32, i32* @hptcAE, align 4
  %21 = or i32 %19, %20
  %22 = load i32*, i32** %1, align 8
  store i32 %21, i32* %22, align 4
  br label %23

23:                                               ; preds = %16, %0
  %24 = load i32, i32* @hpetAddr, align 4
  %25 = load i32, i32* %2, align 4
  %26 = and i32 %25, 3
  %27 = shl i32 %26, 12
  %28 = or i32 %24, %27
  store i32 %28, i32* @hpetAreap, align 4
  %29 = load i32, i32* @hpetAreap, align 4
  %30 = and i32 %29, -4096
  %31 = load i32, i32* @PAGE_SIZE, align 4
  %32 = mul nsw i32 %31, 4
  %33 = load i32, i32* @VM_WIMG_IO, align 4
  %34 = call i64 @io_map_spec(i32 %30, i32 %32, i32 %33)
  store i64 %34, i64* @hpetArea, align 8
  %35 = load i64, i64* @hpetArea, align 8
  %36 = trunc i64 %35 to i32
  %37 = load i32, i32* @hpetAreap, align 4
  %38 = call i32 (i8*, i32, i32, ...) @kprintf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %36, i32 %37)
  %39 = load i64, i64* @hpetArea, align 8
  %40 = inttoptr i64 %39 to %struct.TYPE_2__*
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = ashr i32 %42, 32
  store i32 %43, i32* @hpetFemto, align 4
  %44 = load i32, i32* @Peta, align 4
  %45 = mul nsw i32 1, %44
  %46 = load i32, i32* @hpetFemto, align 4
  %47 = sdiv i32 %45, %46
  store i32 %47, i32* @hpetFreq, align 4
  %48 = load i32, i32* @hpetFemto, align 4
  %49 = shl i32 %48, 32
  %50 = sext i32 %49 to i64
  store i64 %50, i64* @hpetCvtt2n, align 8
  %51 = load i64, i64* @hpetCvtt2n, align 8
  %52 = udiv i64 %51, 1000000
  store i64 %52, i64* @hpetCvtt2n, align 8
  %53 = load i64, i64* @hpetCvtt2n, align 8
  %54 = udiv i64 -1, %53
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* @hpetCvtn2t, align 4
  %56 = load i32, i32* @hpetFreq, align 4
  %57 = load i32, i32* @Mega, align 4
  %58 = sdiv i32 %56, %57
  %59 = load i32, i32* @hpetFreq, align 4
  %60 = load i32, i32* @Mega, align 4
  %61 = srem i32 %59, %60
  %62 = load i64, i64* @hpetCvtt2n, align 8
  %63 = lshr i64 %62, 32
  %64 = trunc i64 %63 to i32
  %65 = load i64, i64* @hpetCvtt2n, align 8
  %66 = trunc i64 %65 to i32
  %67 = load i32, i32* @hpetCvtn2t, align 4
  %68 = ashr i32 %67, 32
  %69 = load i32, i32* @hpetCvtn2t, align 4
  %70 = call i32 (i8*, i32, i32, ...) @kprintf(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.3, i64 0, i64 0), i32 %58, i32 %61, i32 %64, i32 %66, i32 %68, i32 %69)
  %71 = load i32, i32* @hpetFemto, align 4
  %72 = shl i32 %71, 20
  %73 = sext i32 %72 to i64
  store i64 %73, i64* @hpetCvt, align 8
  %74 = load i64, i64* @hpetCvt, align 8
  %75 = udiv i64 %74, 1000000
  store i64 %75, i64* @hpetCvt, align 8
  %76 = load i64, i64* @tscFCvtt2n, align 8
  %77 = load i32, i32* @hpetCvtn2t, align 4
  %78 = call i32 @tmrCvt(i64 %76, i32 %77)
  store i32 %78, i32* @tsc2hpet, align 4
  %79 = load i32, i32* @tsc2hpet, align 4
  %80 = ashr i32 %79, 32
  %81 = load i32, i32* @tsc2hpet, align 4
  %82 = call i32 (i8*, ...) @DBG(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %80, i32 %81)
  %83 = load i64, i64* @hpetCvtt2n, align 8
  %84 = load i32, i32* @tscFCvtn2t, align 4
  %85 = call i32 @tmrCvt(i64 %83, i32 %84)
  store i32 %85, i32* @hpet2tsc, align 4
  %86 = load i32, i32* @hpet2tsc, align 4
  %87 = ashr i32 %86, 32
  %88 = load i32, i32* @hpet2tsc, align 4
  %89 = call i32 (i8*, ...) @DBG(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i32 %87, i32 %88)
  %90 = load i64, i64* @busFCvtt2n, align 8
  %91 = load i32, i32* @hpetCvtn2t, align 4
  %92 = call i32 @tmrCvt(i64 %90, i32 %91)
  store i32 %92, i32* @bus2hpet, align 4
  %93 = load i32, i32* @bus2hpet, align 4
  %94 = ashr i32 %93, 32
  %95 = load i32, i32* @bus2hpet, align 4
  %96 = call i32 (i8*, ...) @DBG(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0), i32 %94, i32 %95)
  %97 = load i64, i64* @hpetCvtt2n, align 8
  %98 = load i32, i32* @busFCvtn2t, align 4
  %99 = call i32 @tmrCvt(i64 %97, i32 %98)
  store i32 %99, i32* @hpet2bus, align 4
  %100 = load i32, i32* @hpet2bus, align 4
  %101 = ashr i32 %100, 32
  %102 = load i32, i32* @hpet2bus, align 4
  %103 = call i32 (i8*, ...) @DBG(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0), i32 %101, i32 %102)
  ret void
}

declare dso_local i32 @map_rcbaArea(...) #1

declare dso_local i32 @DBG(i8*, ...) #1

declare dso_local i64 @io_map_spec(i32, i32, i32) #1

declare dso_local i32 @kprintf(i8*, i32, i32, ...) #1

declare dso_local i32 @tmrCvt(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
