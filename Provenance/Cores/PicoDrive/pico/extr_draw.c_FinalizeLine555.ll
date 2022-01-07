; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/extr_draw.c_FinalizeLine555.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/extr_draw.c_FinalizeLine555.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32* }
%struct.TYPE_4__ = type { i64 }

@DrawLineDest = common dso_local global i16* null, align 8
@HighCol = common dso_local global i8* null, align 8
@HighPal = common dso_local global i16* null, align 8
@Pico = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@PicoOpt = common dso_local global i32 0, align 4
@POPT_DIS_32C_BORDER = common dso_local global i32 0, align 4
@rendstatus = common dso_local global i32 0, align 4
@PDRAW_SPR_LO_ON_HI = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @FinalizeLine555(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i16*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i16*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %11 = load i16*, i16** @DrawLineDest, align 8
  store i16* %11, i16** %5, align 8
  %12 = load i8*, i8** @HighCol, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 8
  store i8* %13, i8** %6, align 8
  %14 = load i16*, i16** @HighPal, align 8
  store i16* %14, i16** %7, align 8
  %15 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @Pico, i32 0, i32 1, i32 0), align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @PicoDoHighPal555(i32 %18)
  br label %20

20:                                               ; preds = %17, %2
  %21 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @Pico, i32 0, i32 0, i32 0), align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 12
  %23 = load i32, i32* %22, align 4
  %24 = and i32 %23, 1
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  store i32 320, i32* %8, align 4
  br label %36

27:                                               ; preds = %20
  %28 = load i32, i32* @PicoOpt, align 4
  %29 = load i32, i32* @POPT_DIS_32C_BORDER, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %27
  %33 = load i16*, i16** %5, align 8
  %34 = getelementptr inbounds i16, i16* %33, i64 32
  store i16* %34, i16** %5, align 8
  br label %35

35:                                               ; preds = %32, %27
  store i32 256, i32* %8, align 4
  br label %36

36:                                               ; preds = %35, %26
  store i32 255, i32* %10, align 4
  %37 = load i32, i32* %3, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %45, label %39

39:                                               ; preds = %36
  %40 = load i32, i32* @rendstatus, align 4
  %41 = load i32, i32* @PDRAW_SPR_LO_ON_HI, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  store i32 63, i32* %10, align 4
  br label %45

45:                                               ; preds = %44, %39, %36
  store i32 0, i32* %9, align 4
  br label %46

46:                                               ; preds = %67, %45
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* %8, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %70

50:                                               ; preds = %46
  %51 = load i16*, i16** %7, align 8
  %52 = load i8*, i8** %6, align 8
  %53 = load i32, i32* %9, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8, i8* %52, i64 %54
  %56 = load i8, i8* %55, align 1
  %57 = zext i8 %56 to i32
  %58 = load i32, i32* %10, align 4
  %59 = and i32 %57, %58
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i16, i16* %51, i64 %60
  %62 = load i16, i16* %61, align 2
  %63 = load i16*, i16** %5, align 8
  %64 = load i32, i32* %9, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i16, i16* %63, i64 %65
  store i16 %62, i16* %66, align 2
  br label %67

67:                                               ; preds = %50
  %68 = load i32, i32* %9, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %9, align 4
  br label %46

70:                                               ; preds = %46
  ret void
}

declare dso_local i32 @PicoDoHighPal555(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
