; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_wi_stuff.c_WI_drawStats.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_wi_stuff.c_WI_drawStats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@num = common dso_local global %struct.TYPE_4__** null, align 8
@SP_STATSX = common dso_local global i64 0, align 8
@SP_STATSY = common dso_local global i64 0, align 8
@FB = common dso_local global i32 0, align 4
@kills = common dso_local global i32 0, align 4
@SCREENWIDTH = common dso_local global i32 0, align 4
@cnt_kills = common dso_local global i32* null, align 8
@items = common dso_local global i32 0, align 4
@cnt_items = common dso_local global i32* null, align 8
@sp_secret = common dso_local global i32 0, align 4
@cnt_secret = common dso_local global i32* null, align 8
@SP_TIMEX = common dso_local global i64 0, align 8
@SP_TIMEY = common dso_local global i64 0, align 8
@time = common dso_local global i32 0, align 4
@cnt_time = common dso_local global i32 0, align 4
@wbs = common dso_local global %struct.TYPE_3__* null, align 8
@par = common dso_local global i32 0, align 4
@cnt_par = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @WI_drawStats() #0 {
  %1 = alloca i32, align 4
  %2 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @num, align 8
  %3 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %2, i64 0
  %4 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @SHORT(i32 %6)
  %8 = mul nsw i32 3, %7
  %9 = sdiv i32 %8, 2
  store i32 %9, i32* %1, align 4
  %10 = call i32 (...) @WI_slamBackground()
  %11 = call i32 (...) @WI_drawAnimatedBack()
  %12 = call i32 (...) @WI_drawLF()
  %13 = load i64, i64* @SP_STATSX, align 8
  %14 = load i64, i64* @SP_STATSY, align 8
  %15 = load i32, i32* @FB, align 4
  %16 = load i32, i32* @kills, align 4
  %17 = call i32 @V_DrawPatch(i64 %13, i64 %14, i32 %15, i32 %16)
  %18 = load i32, i32* @SCREENWIDTH, align 4
  %19 = sext i32 %18 to i64
  %20 = load i64, i64* @SP_STATSX, align 8
  %21 = sub nsw i64 %19, %20
  %22 = load i64, i64* @SP_STATSY, align 8
  %23 = load i32*, i32** @cnt_kills, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @WI_drawPercent(i64 %21, i64 %22, i32 %25)
  %27 = load i64, i64* @SP_STATSX, align 8
  %28 = load i64, i64* @SP_STATSY, align 8
  %29 = load i32, i32* %1, align 4
  %30 = sext i32 %29 to i64
  %31 = add nsw i64 %28, %30
  %32 = load i32, i32* @FB, align 4
  %33 = load i32, i32* @items, align 4
  %34 = call i32 @V_DrawPatch(i64 %27, i64 %31, i32 %32, i32 %33)
  %35 = load i32, i32* @SCREENWIDTH, align 4
  %36 = sext i32 %35 to i64
  %37 = load i64, i64* @SP_STATSX, align 8
  %38 = sub nsw i64 %36, %37
  %39 = load i64, i64* @SP_STATSY, align 8
  %40 = load i32, i32* %1, align 4
  %41 = sext i32 %40 to i64
  %42 = add nsw i64 %39, %41
  %43 = load i32*, i32** @cnt_items, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @WI_drawPercent(i64 %38, i64 %42, i32 %45)
  %47 = load i64, i64* @SP_STATSX, align 8
  %48 = load i64, i64* @SP_STATSY, align 8
  %49 = load i32, i32* %1, align 4
  %50 = mul nsw i32 2, %49
  %51 = sext i32 %50 to i64
  %52 = add nsw i64 %48, %51
  %53 = load i32, i32* @FB, align 4
  %54 = load i32, i32* @sp_secret, align 4
  %55 = call i32 @V_DrawPatch(i64 %47, i64 %52, i32 %53, i32 %54)
  %56 = load i32, i32* @SCREENWIDTH, align 4
  %57 = sext i32 %56 to i64
  %58 = load i64, i64* @SP_STATSX, align 8
  %59 = sub nsw i64 %57, %58
  %60 = load i64, i64* @SP_STATSY, align 8
  %61 = load i32, i32* %1, align 4
  %62 = mul nsw i32 2, %61
  %63 = sext i32 %62 to i64
  %64 = add nsw i64 %60, %63
  %65 = load i32*, i32** @cnt_secret, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @WI_drawPercent(i64 %59, i64 %64, i32 %67)
  %69 = load i64, i64* @SP_TIMEX, align 8
  %70 = load i64, i64* @SP_TIMEY, align 8
  %71 = load i32, i32* @FB, align 4
  %72 = load i32, i32* @time, align 4
  %73 = call i32 @V_DrawPatch(i64 %69, i64 %70, i32 %71, i32 %72)
  %74 = load i32, i32* @SCREENWIDTH, align 4
  %75 = sdiv i32 %74, 2
  %76 = sext i32 %75 to i64
  %77 = load i64, i64* @SP_TIMEX, align 8
  %78 = sub nsw i64 %76, %77
  %79 = load i64, i64* @SP_TIMEY, align 8
  %80 = load i32, i32* @cnt_time, align 4
  %81 = call i32 @WI_drawTime(i64 %78, i64 %79, i32 %80)
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** @wbs, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = icmp slt i32 %84, 3
  br i1 %85, label %86, label %103

86:                                               ; preds = %0
  %87 = load i32, i32* @SCREENWIDTH, align 4
  %88 = sdiv i32 %87, 2
  %89 = sext i32 %88 to i64
  %90 = load i64, i64* @SP_TIMEX, align 8
  %91 = add nsw i64 %89, %90
  %92 = load i64, i64* @SP_TIMEY, align 8
  %93 = load i32, i32* @FB, align 4
  %94 = load i32, i32* @par, align 4
  %95 = call i32 @V_DrawPatch(i64 %91, i64 %92, i32 %93, i32 %94)
  %96 = load i32, i32* @SCREENWIDTH, align 4
  %97 = sext i32 %96 to i64
  %98 = load i64, i64* @SP_TIMEX, align 8
  %99 = sub nsw i64 %97, %98
  %100 = load i64, i64* @SP_TIMEY, align 8
  %101 = load i32, i32* @cnt_par, align 4
  %102 = call i32 @WI_drawTime(i64 %99, i64 %100, i32 %101)
  br label %103

103:                                              ; preds = %86, %0
  ret void
}

declare dso_local i32 @SHORT(i32) #1

declare dso_local i32 @WI_slamBackground(...) #1

declare dso_local i32 @WI_drawAnimatedBack(...) #1

declare dso_local i32 @WI_drawLF(...) #1

declare dso_local i32 @V_DrawPatch(i64, i64, i32, i32) #1

declare dso_local i32 @WI_drawPercent(i64, i64, i32) #1

declare dso_local i32 @WI_drawTime(i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
