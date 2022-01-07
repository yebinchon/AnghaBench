; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/gx/gui/extr_gui.c_GUI_MsgBoxOpen.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/gx/gui/extr_gui.c_GUI_MsgBoxOpen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, %struct.TYPE_8__*, %struct.TYPE_8__*, %struct.TYPE_9__*, i8* }
%struct.TYPE_8__ = type { i32, i64 }
%struct.TYPE_9__ = type { %struct.TYPE_6__** }
%struct.TYPE_6__ = type { i64 }

@SILENT = common dso_local global i64 0, align 8
@message_box = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@Frame_s2_png = common dso_local global i32 0, align 4
@Frame_s2_title_png = common dso_local global i32 0, align 4
@Frame_throbber_png = common dso_local global i32 0, align 4
@bg_color = common dso_local global i32 0, align 4
@WHITE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@msgboxthread = common dso_local global i32 0, align 4
@MsgBox_Thread = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @GUI_MsgBoxOpen(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load i64, i64* @SILENT, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  br label %158

14:                                               ; preds = %3
  %15 = load i8*, i8** %4, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = call i32 @GUI_MsgBoxUpdate(i8* %15, i8* %16)
  %18 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @message_box, i32 0, i32 0), align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %158, label %20

20:                                               ; preds = %14
  %21 = load i32, i32* @Frame_s2_png, align 4
  %22 = call i8* @gxTextureOpenPNG(i32 %21, i32 0)
  %23 = bitcast i8* %22 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %23, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @message_box, i32 0, i32 1), align 8
  %24 = load i32, i32* @Frame_s2_title_png, align 4
  %25 = call i8* @gxTextureOpenPNG(i32 %24, i32 0)
  %26 = bitcast i8* %25 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %26, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @message_box, i32 0, i32 2), align 8
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %20
  %30 = load i32, i32* @Frame_throbber_png, align 4
  %31 = call i8* @gxTextureOpenPNG(i32 %30, i32 0)
  store i8* %31, i8** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @message_box, i32 0, i32 4), align 8
  br label %32

32:                                               ; preds = %29, %20
  store i32 166, i32* %7, align 4
  store i32 160, i32* %8, align 4
  store i32 248, i32* %9, align 4
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @message_box, i32 0, i32 3), align 8
  %34 = icmp ne %struct.TYPE_9__* %33, null
  br i1 %34, label %35, label %64

35:                                               ; preds = %32
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @message_box, i32 0, i32 3), align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %38, i64 0
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = icmp ne %struct.TYPE_6__* %40, null
  br i1 %41, label %42, label %49

42:                                               ; preds = %35
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @message_box, i32 0, i32 3), align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %45, i64 0
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  store i64 0, i64* %48, align 8
  br label %49

49:                                               ; preds = %42, %35
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @message_box, i32 0, i32 3), align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %52, i64 1
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %53, align 8
  %55 = icmp ne %struct.TYPE_6__* %54, null
  br i1 %55, label %56, label %63

56:                                               ; preds = %49
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @message_box, i32 0, i32 3), align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %59, i64 1
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  store i64 0, i64* %62, align 8
  br label %63

63:                                               ; preds = %56, %49
  br label %64

64:                                               ; preds = %63, %32
  %65 = load i32, i32* %8, align 4
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @message_box, i32 0, i32 1), align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = add nsw i32 %65, %68
  store i32 %69, i32* %10, align 4
  br label %70

70:                                               ; preds = %149, %64
  %71 = load i32, i32* %10, align 4
  %72 = icmp sgt i32 %71, 0
  br i1 %72, label %73, label %153

73:                                               ; preds = %70
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @message_box, i32 0, i32 3), align 8
  %75 = icmp ne %struct.TYPE_9__* %74, null
  br i1 %75, label %76, label %79

76:                                               ; preds = %73
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @message_box, i32 0, i32 3), align 8
  %78 = call i32 @GUI_DrawMenu(%struct.TYPE_9__* %77)
  br label %82

79:                                               ; preds = %73
  %80 = load i32, i32* @bg_color, align 4
  %81 = call i32 @gxClearScreen(i32 %80)
  br label %82

82:                                               ; preds = %79, %76
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @message_box, i32 0, i32 1), align 8
  %84 = load i32, i32* %7, align 4
  %85 = load i32, i32* %8, align 4
  %86 = load i32, i32* %10, align 4
  %87 = sub nsw i32 %85, %86
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @message_box, i32 0, i32 1), align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @message_box, i32 0, i32 1), align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @gxDrawTexture(%struct.TYPE_8__* %83, i32 %84, i32 %87, i64 %90, i32 %93, i32 230)
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @message_box, i32 0, i32 2), align 8
  %96 = load i32, i32* %7, align 4
  %97 = load i32, i32* %8, align 4
  %98 = load i32, i32* %10, align 4
  %99 = sub nsw i32 %97, %98
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @message_box, i32 0, i32 2), align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @message_box, i32 0, i32 2), align 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @gxDrawTexture(%struct.TYPE_8__* %95, i32 %96, i32 %99, i64 %102, i32 %105, i32 255)
  %107 = load i8*, i8** %4, align 8
  %108 = icmp ne i8* %107, null
  br i1 %108, label %109, label %131

109:                                              ; preds = %82
  %110 = load i8*, i8** %4, align 8
  %111 = load i32, i32* %7, align 4
  %112 = load i32, i32* %7, align 4
  %113 = sext i32 %112 to i64
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @message_box, i32 0, i32 1), align 8
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = add nsw i64 %113, %116
  %118 = load i32, i32* %8, align 4
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @message_box, i32 0, i32 2), align 8
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = sub nsw i32 %121, 20
  %123 = sdiv i32 %122, 2
  %124 = add nsw i32 %118, %123
  %125 = add nsw i32 %124, 20
  %126 = load i32, i32* %10, align 4
  %127 = sub nsw i32 %125, %126
  %128 = load i64, i64* @WHITE, align 8
  %129 = trunc i64 %128 to i32
  %130 = call i32 @FONT_writeCenter(i8* %110, i32 20, i32 %111, i64 %117, i32 %127, i32 %129)
  br label %131

131:                                              ; preds = %109, %82
  %132 = load i8*, i8** %5, align 8
  %133 = icmp ne i8* %132, null
  br i1 %133, label %134, label %149

134:                                              ; preds = %131
  %135 = load i8*, i8** %5, align 8
  %136 = load i32, i32* %7, align 4
  %137 = load i32, i32* %7, align 4
  %138 = sext i32 %137 to i64
  %139 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @message_box, i32 0, i32 1), align 8
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = add nsw i64 %138, %141
  %143 = load i32, i32* %9, align 4
  %144 = load i32, i32* %10, align 4
  %145 = sub nsw i32 %143, %144
  %146 = load i64, i64* @WHITE, align 8
  %147 = trunc i64 %146 to i32
  %148 = call i32 @FONT_writeCenter(i8* %135, i32 18, i32 %136, i64 %142, i32 %145, i32 %147)
  br label %149

149:                                              ; preds = %134, %131
  %150 = call i32 (...) @gxSetScreen()
  %151 = load i32, i32* %10, align 4
  %152 = sub nsw i32 %151, 60
  store i32 %152, i32* %10, align 4
  br label %70

153:                                              ; preds = %70
  %154 = load i64, i64* @TRUE, align 8
  store i64 %154, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @message_box, i32 0, i32 0), align 8
  %155 = load i64, i64* @MsgBox_Thread, align 8
  %156 = inttoptr i64 %155 to i8*
  %157 = call i32 @LWP_CreateThread(i32* @msgboxthread, i8* %156, %struct.TYPE_7__* @message_box, i32* null, i32 0, i32 70)
  br label %158

158:                                              ; preds = %13, %153, %14
  ret void
}

declare dso_local i32 @GUI_MsgBoxUpdate(i8*, i8*) #1

declare dso_local i8* @gxTextureOpenPNG(i32, i32) #1

declare dso_local i32 @GUI_DrawMenu(%struct.TYPE_9__*) #1

declare dso_local i32 @gxClearScreen(i32) #1

declare dso_local i32 @gxDrawTexture(%struct.TYPE_8__*, i32, i32, i64, i32, i32) #1

declare dso_local i32 @FONT_writeCenter(i8*, i32, i32, i64, i32, i32) #1

declare dso_local i32 @gxSetScreen(...) #1

declare dso_local i32 @LWP_CreateThread(i32*, i8*, %struct.TYPE_7__*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
