; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/ui/extr_ui_main.c_AssetCache.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/ui/extr_ui_main.c_AssetCache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8**, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8**, i8*, i8* }

@ASSET_GRADIENTBAR = common dso_local global i32 0, align 4
@uiInfo = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@ART_FX_BASE = common dso_local global i32 0, align 4
@ART_FX_RED = common dso_local global i32 0, align 4
@ART_FX_YELLOW = common dso_local global i32 0, align 4
@ART_FX_GREEN = common dso_local global i32 0, align 4
@ART_FX_TEAL = common dso_local global i32 0, align 4
@ART_FX_BLUE = common dso_local global i32 0, align 4
@ART_FX_CYAN = common dso_local global i32 0, align 4
@ART_FX_WHITE = common dso_local global i32 0, align 4
@ASSET_SCROLLBAR = common dso_local global i32 0, align 4
@ASSET_SCROLLBAR_ARROWDOWN = common dso_local global i32 0, align 4
@ASSET_SCROLLBAR_ARROWUP = common dso_local global i32 0, align 4
@ASSET_SCROLLBAR_ARROWLEFT = common dso_local global i32 0, align 4
@ASSET_SCROLLBAR_ARROWRIGHT = common dso_local global i32 0, align 4
@ASSET_SCROLL_THUMB = common dso_local global i32 0, align 4
@ASSET_SLIDER_BAR = common dso_local global i32 0, align 4
@ASSET_SLIDER_THUMB = common dso_local global i32 0, align 4
@NUM_CROSSHAIRS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"gfx/2d/crosshair%c\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"sound/feedback/voc_newhighscore.wav\00", align 1
@qfalse = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AssetCache() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @ASSET_GRADIENTBAR, align 4
  %3 = call i8* @trap_R_RegisterShaderNoMip(i32 %2)
  store i8* %3, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @uiInfo, i32 0, i32 1, i32 0, i32 11), align 8
  %4 = load i32, i32* @ART_FX_BASE, align 4
  %5 = call i8* @trap_R_RegisterShaderNoMip(i32 %4)
  store i8* %5, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @uiInfo, i32 0, i32 1, i32 0, i32 10), align 8
  %6 = load i32, i32* @ART_FX_RED, align 4
  %7 = call i8* @trap_R_RegisterShaderNoMip(i32 %6)
  %8 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @uiInfo, i32 0, i32 1, i32 0, i32 9), align 8
  %9 = getelementptr inbounds i8*, i8** %8, i64 0
  store i8* %7, i8** %9, align 8
  %10 = load i32, i32* @ART_FX_YELLOW, align 4
  %11 = call i8* @trap_R_RegisterShaderNoMip(i32 %10)
  %12 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @uiInfo, i32 0, i32 1, i32 0, i32 9), align 8
  %13 = getelementptr inbounds i8*, i8** %12, i64 1
  store i8* %11, i8** %13, align 8
  %14 = load i32, i32* @ART_FX_GREEN, align 4
  %15 = call i8* @trap_R_RegisterShaderNoMip(i32 %14)
  %16 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @uiInfo, i32 0, i32 1, i32 0, i32 9), align 8
  %17 = getelementptr inbounds i8*, i8** %16, i64 2
  store i8* %15, i8** %17, align 8
  %18 = load i32, i32* @ART_FX_TEAL, align 4
  %19 = call i8* @trap_R_RegisterShaderNoMip(i32 %18)
  %20 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @uiInfo, i32 0, i32 1, i32 0, i32 9), align 8
  %21 = getelementptr inbounds i8*, i8** %20, i64 3
  store i8* %19, i8** %21, align 8
  %22 = load i32, i32* @ART_FX_BLUE, align 4
  %23 = call i8* @trap_R_RegisterShaderNoMip(i32 %22)
  %24 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @uiInfo, i32 0, i32 1, i32 0, i32 9), align 8
  %25 = getelementptr inbounds i8*, i8** %24, i64 4
  store i8* %23, i8** %25, align 8
  %26 = load i32, i32* @ART_FX_CYAN, align 4
  %27 = call i8* @trap_R_RegisterShaderNoMip(i32 %26)
  %28 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @uiInfo, i32 0, i32 1, i32 0, i32 9), align 8
  %29 = getelementptr inbounds i8*, i8** %28, i64 5
  store i8* %27, i8** %29, align 8
  %30 = load i32, i32* @ART_FX_WHITE, align 4
  %31 = call i8* @trap_R_RegisterShaderNoMip(i32 %30)
  %32 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @uiInfo, i32 0, i32 1, i32 0, i32 9), align 8
  %33 = getelementptr inbounds i8*, i8** %32, i64 6
  store i8* %31, i8** %33, align 8
  %34 = load i32, i32* @ASSET_SCROLLBAR, align 4
  %35 = call i8* @trap_R_RegisterShaderNoMip(i32 %34)
  store i8* %35, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @uiInfo, i32 0, i32 1, i32 0, i32 8), align 8
  %36 = load i32, i32* @ASSET_SCROLLBAR_ARROWDOWN, align 4
  %37 = call i8* @trap_R_RegisterShaderNoMip(i32 %36)
  store i8* %37, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @uiInfo, i32 0, i32 1, i32 0, i32 7), align 8
  %38 = load i32, i32* @ASSET_SCROLLBAR_ARROWUP, align 4
  %39 = call i8* @trap_R_RegisterShaderNoMip(i32 %38)
  store i8* %39, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @uiInfo, i32 0, i32 1, i32 0, i32 6), align 8
  %40 = load i32, i32* @ASSET_SCROLLBAR_ARROWLEFT, align 4
  %41 = call i8* @trap_R_RegisterShaderNoMip(i32 %40)
  store i8* %41, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @uiInfo, i32 0, i32 1, i32 0, i32 5), align 8
  %42 = load i32, i32* @ASSET_SCROLLBAR_ARROWRIGHT, align 4
  %43 = call i8* @trap_R_RegisterShaderNoMip(i32 %42)
  store i8* %43, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @uiInfo, i32 0, i32 1, i32 0, i32 4), align 8
  %44 = load i32, i32* @ASSET_SCROLL_THUMB, align 4
  %45 = call i8* @trap_R_RegisterShaderNoMip(i32 %44)
  store i8* %45, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @uiInfo, i32 0, i32 1, i32 0, i32 3), align 8
  %46 = load i32, i32* @ASSET_SLIDER_BAR, align 4
  %47 = call i8* @trap_R_RegisterShaderNoMip(i32 %46)
  store i8* %47, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @uiInfo, i32 0, i32 1, i32 0, i32 2), align 8
  %48 = load i32, i32* @ASSET_SLIDER_THUMB, align 4
  %49 = call i8* @trap_R_RegisterShaderNoMip(i32 %48)
  store i8* %49, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @uiInfo, i32 0, i32 1, i32 0, i32 1), align 8
  store i32 0, i32* %1, align 4
  br label %50

50:                                               ; preds = %64, %0
  %51 = load i32, i32* %1, align 4
  %52 = load i32, i32* @NUM_CROSSHAIRS, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %67

54:                                               ; preds = %50
  %55 = load i32, i32* %1, align 4
  %56 = add nsw i32 97, %55
  %57 = trunc i32 %56 to i8
  %58 = call i32 @va(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8 signext %57)
  %59 = call i8* @trap_R_RegisterShaderNoMip(i32 %58)
  %60 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @uiInfo, i32 0, i32 1, i32 0, i32 0), align 8
  %61 = load i32, i32* %1, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8*, i8** %60, i64 %62
  store i8* %59, i8** %63, align 8
  br label %64

64:                                               ; preds = %54
  %65 = load i32, i32* %1, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %1, align 4
  br label %50

67:                                               ; preds = %50
  %68 = load i32, i32* @qfalse, align 4
  %69 = call i32 @trap_S_RegisterSound(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %68)
  store i32 %69, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @uiInfo, i32 0, i32 0), align 8
  ret void
}

declare dso_local i8* @trap_R_RegisterShaderNoMip(i32) #1

declare dso_local i32 @va(i8*, i8 signext) #1

declare dso_local i32 @trap_S_RegisterSound(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
