; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_m_menu.c_M_DrawOptions.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_m_menu.c_M_DrawOptions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"M_OPTTTL\00", align 1
@PU_CACHE = common dso_local global i32 0, align 4
@OptionsDef = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@LINEHEIGHT = common dso_local global i32 0, align 4
@detail = common dso_local global i32 0, align 4
@detailNames = common dso_local global i8** null, align 8
@detailLevel = common dso_local global i64 0, align 8
@messages = common dso_local global i32 0, align 4
@msgNames = common dso_local global i8** null, align 8
@showMessages = common dso_local global i64 0, align 8
@mousesens = common dso_local global i32 0, align 4
@mouseSensitivity = common dso_local global i32 0, align 4
@scrnsize = common dso_local global i32 0, align 4
@screenSize = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @M_DrawOptions() #0 {
  %1 = load i32, i32* @PU_CACHE, align 4
  %2 = call i32 @W_CacheLumpName(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %1)
  %3 = call i32 @V_DrawPatchDirect(i32 108, i32 15, i32 0, i32 %2)
  %4 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @OptionsDef, i32 0, i32 0), align 4
  %5 = add nsw i32 %4, 175
  %6 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @OptionsDef, i32 0, i32 1), align 4
  %7 = load i32, i32* @LINEHEIGHT, align 4
  %8 = load i32, i32* @detail, align 4
  %9 = mul nsw i32 %7, %8
  %10 = add nsw i32 %6, %9
  %11 = load i8**, i8*** @detailNames, align 8
  %12 = load i64, i64* @detailLevel, align 8
  %13 = getelementptr inbounds i8*, i8** %11, i64 %12
  %14 = load i8*, i8** %13, align 8
  %15 = load i32, i32* @PU_CACHE, align 4
  %16 = call i32 @W_CacheLumpName(i8* %14, i32 %15)
  %17 = call i32 @V_DrawPatchDirect(i32 %5, i32 %10, i32 0, i32 %16)
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @OptionsDef, i32 0, i32 0), align 4
  %19 = add nsw i32 %18, 120
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @OptionsDef, i32 0, i32 1), align 4
  %21 = load i32, i32* @LINEHEIGHT, align 4
  %22 = load i32, i32* @messages, align 4
  %23 = mul nsw i32 %21, %22
  %24 = add nsw i32 %20, %23
  %25 = load i8**, i8*** @msgNames, align 8
  %26 = load i64, i64* @showMessages, align 8
  %27 = getelementptr inbounds i8*, i8** %25, i64 %26
  %28 = load i8*, i8** %27, align 8
  %29 = load i32, i32* @PU_CACHE, align 4
  %30 = call i32 @W_CacheLumpName(i8* %28, i32 %29)
  %31 = call i32 @V_DrawPatchDirect(i32 %19, i32 %24, i32 0, i32 %30)
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @OptionsDef, i32 0, i32 0), align 4
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @OptionsDef, i32 0, i32 1), align 4
  %34 = load i32, i32* @LINEHEIGHT, align 4
  %35 = load i32, i32* @mousesens, align 4
  %36 = add nsw i32 %35, 1
  %37 = mul nsw i32 %34, %36
  %38 = add nsw i32 %33, %37
  %39 = load i32, i32* @mouseSensitivity, align 4
  %40 = call i32 @M_DrawThermo(i32 %32, i32 %38, i32 10, i32 %39)
  %41 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @OptionsDef, i32 0, i32 0), align 4
  %42 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @OptionsDef, i32 0, i32 1), align 4
  %43 = load i32, i32* @LINEHEIGHT, align 4
  %44 = load i32, i32* @scrnsize, align 4
  %45 = add nsw i32 %44, 1
  %46 = mul nsw i32 %43, %45
  %47 = add nsw i32 %42, %46
  %48 = load i32, i32* @screenSize, align 4
  %49 = call i32 @M_DrawThermo(i32 %41, i32 %47, i32 9, i32 %48)
  ret void
}

declare dso_local i32 @V_DrawPatchDirect(i32, i32, i32, i32) #1

declare dso_local i32 @W_CacheLumpName(i8*, i32) #1

declare dso_local i32 @M_DrawThermo(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
