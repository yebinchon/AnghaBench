; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_pokey.c_POKEY_StateRead.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_pokey.c_POKEY_StateRead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@POKEY_KBCODE = common dso_local global i32 0, align 4
@POKEY_IRQST = common dso_local global i32 0, align 4
@POKEY_IRQEN = common dso_local global i32 0, align 4
@POKEY_SKCTL = common dso_local global i32 0, align 4
@POKEY_DELAYED_SERIN_IRQ = common dso_local global i32 0, align 4
@POKEY_DELAYED_SEROUT_IRQ = common dso_local global i32 0, align 4
@POKEY_DELAYED_XMTDONE_IRQ = common dso_local global i32 0, align 4
@POKEY_AUDF = common dso_local global i32* null, align 8
@POKEY_AUDC = common dso_local global i32* null, align 8
@POKEY_AUDCTL = common dso_local global i32* null, align 8
@POKEY_OFFSET_AUDF1 = common dso_local global i64 0, align 8
@POKEY_OFFSET_AUDC1 = common dso_local global i64 0, align 8
@POKEY_OFFSET_AUDCTL = common dso_local global i32 0, align 4
@POKEY_DivNIRQ = common dso_local global i32* null, align 8
@POKEY_DivNMax = common dso_local global i32* null, align 8
@POKEY_Base_mult = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @POKEY_StateRead() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = call i32 @StateSav_ReadUBYTE(i32* @POKEY_KBCODE, i32 1)
  %5 = call i32 @StateSav_ReadUBYTE(i32* @POKEY_IRQST, i32 1)
  %6 = call i32 @StateSav_ReadUBYTE(i32* @POKEY_IRQEN, i32 1)
  %7 = call i32 @StateSav_ReadUBYTE(i32* @POKEY_SKCTL, i32 1)
  %8 = call i32 @StateSav_ReadINT(i32* %2, i32 1)
  %9 = call i32 @StateSav_ReadINT(i32* %3, i32 1)
  %10 = call i32 @StateSav_ReadINT(i32* @POKEY_DELAYED_SERIN_IRQ, i32 1)
  %11 = call i32 @StateSav_ReadINT(i32* @POKEY_DELAYED_SEROUT_IRQ, i32 1)
  %12 = call i32 @StateSav_ReadINT(i32* @POKEY_DELAYED_XMTDONE_IRQ, i32 1)
  %13 = load i32*, i32** @POKEY_AUDF, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 0
  %15 = call i32 @StateSav_ReadUBYTE(i32* %14, i32 4)
  %16 = load i32*, i32** @POKEY_AUDC, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  %18 = call i32 @StateSav_ReadUBYTE(i32* %17, i32 4)
  %19 = load i32*, i32** @POKEY_AUDCTL, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = call i32 @StateSav_ReadUBYTE(i32* %20, i32 1)
  store i32 0, i32* %1, align 4
  br label %22

22:                                               ; preds = %50, %0
  %23 = load i32, i32* %1, align 4
  %24 = icmp slt i32 %23, 4
  br i1 %24, label %25, label %53

25:                                               ; preds = %22
  %26 = load i64, i64* @POKEY_OFFSET_AUDF1, align 8
  %27 = load i32, i32* %1, align 4
  %28 = mul nsw i32 %27, 2
  %29 = sext i32 %28 to i64
  %30 = add nsw i64 %26, %29
  %31 = trunc i64 %30 to i32
  %32 = load i32*, i32** @POKEY_AUDF, align 8
  %33 = load i32, i32* %1, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @POKEY_PutByte(i32 %31, i32 %36)
  %38 = load i64, i64* @POKEY_OFFSET_AUDC1, align 8
  %39 = load i32, i32* %1, align 4
  %40 = mul nsw i32 %39, 2
  %41 = sext i32 %40 to i64
  %42 = add nsw i64 %38, %41
  %43 = trunc i64 %42 to i32
  %44 = load i32*, i32** @POKEY_AUDC, align 8
  %45 = load i32, i32* %1, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @POKEY_PutByte(i32 %43, i32 %48)
  br label %50

50:                                               ; preds = %25
  %51 = load i32, i32* %1, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %1, align 4
  br label %22

53:                                               ; preds = %22
  %54 = load i32, i32* @POKEY_OFFSET_AUDCTL, align 4
  %55 = load i32*, i32** @POKEY_AUDCTL, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @POKEY_PutByte(i32 %54, i32 %57)
  %59 = load i32*, i32** @POKEY_DivNIRQ, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 0
  %61 = call i32 @StateSav_ReadINT(i32* %60, i32 4)
  %62 = load i32*, i32** @POKEY_DivNMax, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 0
  %64 = call i32 @StateSav_ReadINT(i32* %63, i32 4)
  %65 = load i32*, i32** @POKEY_Base_mult, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 0
  %67 = call i32 @StateSav_ReadINT(i32* %66, i32 1)
  ret void
}

declare dso_local i32 @StateSav_ReadUBYTE(i32*, i32) #1

declare dso_local i32 @StateSav_ReadINT(i32*, i32) #1

declare dso_local i32 @POKEY_PutByte(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
