; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/gx/gui/extr_gui.c_GUI_MsgBoxClose.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/gx/gui/extr_gui.c_GUI_MsgBoxClose.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_8__*, %struct.TYPE_8__*, %struct.TYPE_8__*, %struct.TYPE_8__*, %struct.TYPE_9__*, i64, i64, i64 }
%struct.TYPE_8__ = type { i32, i64 }
%struct.TYPE_9__ = type { %struct.TYPE_6__** }
%struct.TYPE_6__ = type { i32 }

@message_box = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@FALSE = common dso_local global i64 0, align 8
@msgboxthread = common dso_local global i32 0, align 4
@bg_color = common dso_local global i32 0, align 4
@WHITE = common dso_local global i64 0, align 8
@Key_B_png = common dso_local global i32 0, align 4
@Key_A_png = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @GUI_MsgBoxClose() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @message_box, i32 0, i32 7), align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %144

7:                                                ; preds = %0
  %8 = load i64, i64* @FALSE, align 8
  store i64 %8, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @message_box, i32 0, i32 7), align 8
  %9 = load i32, i32* @msgboxthread, align 4
  %10 = call i32 @LWP_JoinThread(i32 %9, i32* null)
  store i32 166, i32* %1, align 4
  store i32 160, i32* %2, align 4
  store i32 248, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %11

11:                                               ; preds = %95, %7
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* %2, align 4
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @message_box, i32 0, i32 3), align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = add nsw i32 %13, %16
  %18 = icmp slt i32 %12, %17
  br i1 %18, label %19, label %99

19:                                               ; preds = %11
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @message_box, i32 0, i32 4), align 8
  %21 = icmp ne %struct.TYPE_9__* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @message_box, i32 0, i32 4), align 8
  %24 = call i32 @GUI_DrawMenu(%struct.TYPE_9__* %23)
  br label %28

25:                                               ; preds = %19
  %26 = load i32, i32* @bg_color, align 4
  %27 = call i32 @gxClearScreen(i32 %26)
  br label %28

28:                                               ; preds = %25, %22
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @message_box, i32 0, i32 3), align 8
  %30 = load i32, i32* %1, align 4
  %31 = load i32, i32* %2, align 4
  %32 = load i32, i32* %4, align 4
  %33 = sub nsw i32 %31, %32
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @message_box, i32 0, i32 3), align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @message_box, i32 0, i32 3), align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @gxDrawTexture(%struct.TYPE_8__* %29, i32 %30, i32 %33, i64 %36, i32 %39, i32 230)
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @message_box, i32 0, i32 2), align 8
  %42 = load i32, i32* %1, align 4
  %43 = load i32, i32* %2, align 4
  %44 = load i32, i32* %4, align 4
  %45 = sub nsw i32 %43, %44
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @message_box, i32 0, i32 2), align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @message_box, i32 0, i32 2), align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @gxDrawTexture(%struct.TYPE_8__* %41, i32 %42, i32 %45, i64 %48, i32 %51, i32 255)
  %53 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @message_box, i32 0, i32 6), align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %77

55:                                               ; preds = %28
  %56 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @message_box, i32 0, i32 6), align 8
  %57 = load i32, i32* %1, align 4
  %58 = load i32, i32* %1, align 4
  %59 = sext i32 %58 to i64
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @message_box, i32 0, i32 3), align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = add nsw i64 %59, %62
  %64 = load i32, i32* %2, align 4
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @message_box, i32 0, i32 2), align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = sub nsw i32 %67, 20
  %69 = sdiv i32 %68, 2
  %70 = add nsw i32 %64, %69
  %71 = add nsw i32 %70, 20
  %72 = load i32, i32* %4, align 4
  %73 = sub nsw i32 %71, %72
  %74 = load i64, i64* @WHITE, align 8
  %75 = trunc i64 %74 to i32
  %76 = call i32 @FONT_writeCenter(i64 %56, i32 20, i32 %57, i64 %63, i32 %73, i32 %75)
  br label %77

77:                                               ; preds = %55, %28
  %78 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @message_box, i32 0, i32 5), align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %95

80:                                               ; preds = %77
  %81 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @message_box, i32 0, i32 5), align 8
  %82 = load i32, i32* %1, align 4
  %83 = load i32, i32* %1, align 4
  %84 = sext i32 %83 to i64
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @message_box, i32 0, i32 3), align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = add nsw i64 %84, %87
  %89 = load i32, i32* %3, align 4
  %90 = load i32, i32* %4, align 4
  %91 = sub nsw i32 %89, %90
  %92 = load i64, i64* @WHITE, align 8
  %93 = trunc i64 %92 to i32
  %94 = call i32 @FONT_writeCenter(i64 %81, i32 18, i32 %82, i64 %88, i32 %91, i32 %93)
  br label %95

95:                                               ; preds = %80, %77
  %96 = call i32 (...) @gxSetScreen()
  %97 = load i32, i32* %4, align 4
  %98 = add nsw i32 %97, 60
  store i32 %98, i32* %4, align 4
  br label %11

99:                                               ; preds = %11
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @message_box, i32 0, i32 4), align 8
  %101 = icmp ne %struct.TYPE_9__* %100, null
  br i1 %101, label %102, label %135

102:                                              ; preds = %99
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @message_box, i32 0, i32 4), align 8
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 0
  %105 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %105, i64 0
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %106, align 8
  %108 = icmp ne %struct.TYPE_6__* %107, null
  br i1 %108, label %109, label %117

109:                                              ; preds = %102
  %110 = load i32, i32* @Key_B_png, align 4
  %111 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @message_box, i32 0, i32 4), align 8
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 0
  %113 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %113, i64 0
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 0
  store i32 %110, i32* %116, align 4
  br label %117

117:                                              ; preds = %109, %102
  %118 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @message_box, i32 0, i32 4), align 8
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 0
  %120 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %120, i64 1
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %121, align 8
  %123 = icmp ne %struct.TYPE_6__* %122, null
  br i1 %123, label %124, label %132

124:                                              ; preds = %117
  %125 = load i32, i32* @Key_A_png, align 4
  %126 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @message_box, i32 0, i32 4), align 8
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 0
  %128 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %128, i64 1
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 0
  store i32 %125, i32* %131, align 4
  br label %132

132:                                              ; preds = %124, %117
  %133 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @message_box, i32 0, i32 4), align 8
  %134 = call i32 @GUI_DrawMenu(%struct.TYPE_9__* %133)
  br label %138

135:                                              ; preds = %99
  %136 = load i32, i32* @bg_color, align 4
  %137 = call i32 @gxClearScreen(i32 %136)
  br label %138

138:                                              ; preds = %135, %132
  %139 = call i32 (...) @gxSetScreen()
  %140 = call i32 @gxTextureClose(%struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @message_box, i32 0, i32 3))
  %141 = call i32 @gxTextureClose(%struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @message_box, i32 0, i32 2))
  %142 = call i32 @gxTextureClose(%struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @message_box, i32 0, i32 1))
  %143 = call i32 @gxTextureClose(%struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @message_box, i32 0, i32 0))
  br label %144

144:                                              ; preds = %138, %0
  ret void
}

declare dso_local i32 @LWP_JoinThread(i32, i32*) #1

declare dso_local i32 @GUI_DrawMenu(%struct.TYPE_9__*) #1

declare dso_local i32 @gxClearScreen(i32) #1

declare dso_local i32 @gxDrawTexture(%struct.TYPE_8__*, i32, i32, i64, i32, i32) #1

declare dso_local i32 @FONT_writeCenter(i64, i32, i32, i64, i32, i32) #1

declare dso_local i32 @gxSetScreen(...) #1

declare dso_local i32 @gxTextureClose(%struct.TYPE_8__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
