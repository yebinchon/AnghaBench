; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/extr_videoport.c_DmaFill.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/extr_videoport.c_DmaFill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__, i64 }
%struct.TYPE_5__ = type { i16, i8*, i32 }
%struct.TYPE_4__ = type { i32 }

@Pico = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@EL_VDPDMA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"DmaFill len %i inc %i [%i]\00", align 1
@PDRAW_DIRTY_SPRITES = common dso_local global i32 0, align 4
@rendstatus = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @DmaFill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @DmaFill(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i16, align 2
  %5 = alloca i8*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  store i32 %0, i32* %2, align 4
  %8 = load i16, i16* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @Pico, i32 0, i32 0, i32 0), align 8
  store i16 %8, i16* %4, align 2
  %9 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @Pico, i32 0, i32 2), align 8
  %10 = inttoptr i64 %9 to i8*
  store i8* %10, i8** %5, align 8
  %11 = load i32, i32* %2, align 4
  %12 = ashr i32 %11, 8
  %13 = trunc i32 %12 to i8
  store i8 %13, i8* %6, align 1
  %14 = load i8*, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @Pico, i32 0, i32 0, i32 1), align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 15
  %16 = load i8, i8* %15, align 1
  store i8 %16, i8* %7, align 1
  %17 = call i32 (...) @GetDmaLength()
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* @EL_VDPDMA, align 4
  %19 = load i32, i32* %3, align 4
  %20 = load i8, i8* %7, align 1
  %21 = call i32 (...) @SekCyclesDone()
  %22 = call i32 @elprintf(i32 %18, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %19, i8 zeroext %20, i32 %21)
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @Pico, i32 0, i32 1, i32 0), align 8
  %25 = add nsw i32 %24, %23
  store i32 %25, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @Pico, i32 0, i32 1, i32 0), align 8
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @Pico, i32 0, i32 0, i32 2), align 8
  %27 = or i32 %26, 2
  store i32 %27, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @Pico, i32 0, i32 0, i32 2), align 8
  %28 = load i32, i32* %2, align 4
  %29 = trunc i32 %28 to i8
  %30 = load i8*, i8** %5, align 8
  %31 = load i16, i16* %4, align 2
  %32 = zext i16 %31 to i64
  %33 = getelementptr inbounds i8, i8* %30, i64 %32
  store i8 %29, i8* %33, align 1
  %34 = load i16, i16* %4, align 2
  %35 = zext i16 %34 to i32
  %36 = load i8, i8* %7, align 1
  %37 = zext i8 %36 to i32
  %38 = add nsw i32 %35, %37
  %39 = trunc i32 %38 to i16
  store i16 %39, i16* %4, align 2
  %40 = load i8, i8* %7, align 1
  %41 = icmp ne i8 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %1
  store i32 1, i32* %3, align 4
  br label %43

43:                                               ; preds = %42, %1
  br label %44

44:                                               ; preds = %59, %43
  %45 = load i32, i32* %3, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %62

47:                                               ; preds = %44
  %48 = load i8, i8* %6, align 1
  %49 = load i8*, i8** %5, align 8
  %50 = load i16, i16* %4, align 2
  %51 = zext i16 %50 to i64
  %52 = getelementptr inbounds i8, i8* %49, i64 %51
  store i8 %48, i8* %52, align 1
  %53 = load i16, i16* %4, align 2
  %54 = zext i16 %53 to i32
  %55 = load i8, i8* %7, align 1
  %56 = zext i8 %55 to i32
  %57 = add nsw i32 %54, %56
  %58 = trunc i32 %57 to i16
  store i16 %58, i16* %4, align 2
  br label %59

59:                                               ; preds = %47
  %60 = load i32, i32* %3, align 4
  %61 = add nsw i32 %60, -1
  store i32 %61, i32* %3, align 4
  br label %44

62:                                               ; preds = %44
  %63 = load i16, i16* %4, align 2
  store i16 %63, i16* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @Pico, i32 0, i32 0, i32 0), align 8
  %64 = load i8*, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @Pico, i32 0, i32 0, i32 1), align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 20
  store i8 0, i8* %65, align 1
  %66 = load i8*, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @Pico, i32 0, i32 0, i32 1), align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 19
  store i8 0, i8* %67, align 1
  %68 = load i32, i32* @PDRAW_DIRTY_SPRITES, align 4
  %69 = load i32, i32* @rendstatus, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* @rendstatus, align 4
  ret void
}

declare dso_local i32 @GetDmaLength(...) #1

declare dso_local i32 @elprintf(i32, i8*, i32, i8 zeroext, i32) #1

declare dso_local i32 @SekCyclesDone(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
