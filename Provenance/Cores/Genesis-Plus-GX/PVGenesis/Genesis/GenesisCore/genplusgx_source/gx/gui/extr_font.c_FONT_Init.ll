; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/gx/gui/extr_font.c_FONT_Init.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/gx/gui/extr_font.c_FONT_Init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32 }

@ipl_fontarea = common dso_local global i8* null, align 8
@fontHeader = common dso_local global %struct.TYPE_3__* null, align 8
@fontImage = common dso_local global i32* null, align 8
@font_size = common dso_local global i32* null, align 8
@fheight = common dso_local global i32 0, align 4
@fontTexture = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @FONT_Init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = call i32 @ipl_set_config(i32 6)
  %5 = call i8* @memalign(i32 32, i32 131360)
  store i8* %5, i8** @ipl_fontarea, align 8
  %6 = load i8*, i8** @ipl_fontarea, align 8
  %7 = icmp ne i8* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %102

9:                                                ; preds = %0
  %10 = load i8*, i8** @ipl_fontarea, align 8
  %11 = call i32 @memset(i8* %10, i32 0, i32 131360)
  %12 = load i8*, i8** @ipl_fontarea, align 8
  %13 = getelementptr i8, i8* %12, i64 119072
  %14 = call i32 @__SYS_ReadROM(i8* %13, i32 12288, i32 2084608)
  %15 = load i8*, i8** @ipl_fontarea, align 8
  %16 = getelementptr i8, i8* %15, i64 119072
  %17 = load i8*, i8** @ipl_fontarea, align 8
  %18 = call i32 @decode_szp(i8* %16, i8* %17)
  %19 = load i8*, i8** @ipl_fontarea, align 8
  %20 = bitcast i8* %19 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %20, %struct.TYPE_3__** @fontHeader, align 8
  %21 = load i8*, i8** @ipl_fontarea, align 8
  %22 = ptrtoint i8* %21 to i32
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** @fontHeader, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = add nsw i32 %22, %25
  %27 = add nsw i32 %26, 31
  %28 = and i32 %27, -32
  %29 = sext i32 %28 to i64
  %30 = inttoptr i64 %29 to i32*
  store i32* %30, i32** @fontImage, align 8
  %31 = load i8*, i8** @ipl_fontarea, align 8
  %32 = bitcast i8* %31 to i32*
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** @fontHeader, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %32, i64 %36
  %38 = load i32*, i32** @fontImage, align 8
  %39 = call i32 @expand_font(i32* %37, i32* %38)
  store i32 0, i32* %2, align 4
  br label %40

40:                                               ; preds = %80, %9
  %41 = load i32, i32* %2, align 4
  %42 = icmp slt i32 %41, 256
  br i1 %42, label %43, label %83

43:                                               ; preds = %40
  %44 = load i32, i32* %2, align 4
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** @fontHeader, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = icmp slt i32 %44, %47
  br i1 %48, label %55, label %49

49:                                               ; preds = %43
  %50 = load i32, i32* %2, align 4
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** @fontHeader, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = icmp sgt i32 %50, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %49, %43
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** @fontHeader, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %3, align 4
  br label %65

59:                                               ; preds = %49
  %60 = load i32, i32* %2, align 4
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** @fontHeader, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = sub nsw i32 %60, %63
  store i32 %64, i32* %3, align 4
  br label %65

65:                                               ; preds = %59, %55
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** @fontHeader, align 8
  %67 = bitcast %struct.TYPE_3__* %66 to i32*
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** @fontHeader, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %3, align 4
  %72 = add nsw i32 %70, %71
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %67, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = load i32*, i32** @font_size, align 8
  %77 = load i32, i32* %2, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  store i32 %75, i32* %79, align 4
  br label %80

80:                                               ; preds = %65
  %81 = load i32, i32* %2, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %2, align 4
  br label %40

83:                                               ; preds = %40
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** @fontHeader, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 5
  %86 = load i32, i32* %85, align 4
  store i32 %86, i32* @fheight, align 4
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** @fontHeader, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 6
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** @fontHeader, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 5
  %92 = load i32, i32* %91, align 4
  %93 = mul nsw i32 %89, %92
  %94 = sdiv i32 %93, 2
  %95 = call i8* @memalign(i32 32, i32 %94)
  store i8* %95, i8** @fontTexture, align 8
  %96 = load i8*, i8** @fontTexture, align 8
  %97 = icmp ne i8* %96, null
  br i1 %97, label %101, label %98

98:                                               ; preds = %83
  %99 = load i8*, i8** @ipl_fontarea, align 8
  %100 = call i32 @free(i8* %99)
  store i32 0, i32* %1, align 4
  br label %102

101:                                              ; preds = %83
  store i32 1, i32* %1, align 4
  br label %102

102:                                              ; preds = %101, %98, %8
  %103 = load i32, i32* %1, align 4
  ret i32 %103
}

declare dso_local i32 @ipl_set_config(i32) #1

declare dso_local i8* @memalign(i32, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @__SYS_ReadROM(i8*, i32, i32) #1

declare dso_local i32 @decode_szp(i8*, i8*) #1

declare dso_local i32 @expand_font(i32*, i32*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
