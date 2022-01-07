; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_r_things.c_R_DrawVisSprite.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_r_things.c_R_DrawVisSprite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i64, i64, i64, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32*, i32 }

@firstspritelump = common dso_local global i32 0, align 4
@PU_CACHE = common dso_local global i32 0, align 4
@dc_colormap = common dso_local global i32 0, align 4
@fuzzcolfunc = common dso_local global i32 0, align 4
@colfunc = common dso_local global i32 0, align 4
@MF_TRANSLATION = common dso_local global i32 0, align 4
@R_DrawTranslatedColumn = common dso_local global i32 0, align 4
@translationtables = common dso_local global i32 0, align 4
@MF_TRANSSHIFT = common dso_local global i32 0, align 4
@dc_translation = common dso_local global i32 0, align 4
@detailshift = common dso_local global i32 0, align 4
@dc_iscale = common dso_local global i32 0, align 4
@dc_texturemid = common dso_local global i32 0, align 4
@spryscale = common dso_local global i32 0, align 4
@centeryfrac = common dso_local global i64 0, align 8
@sprtopscreen = common dso_local global i64 0, align 8
@dc_x = common dso_local global i64 0, align 8
@FRACBITS = common dso_local global i32 0, align 4
@basecolfunc = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @R_DrawVisSprite(%struct.TYPE_5__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 8
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @firstspritelump, align 4
  %15 = add nsw i32 %13, %14
  %16 = load i32, i32* @PU_CACHE, align 4
  %17 = call %struct.TYPE_6__* @W_CacheLumpNum(i32 %15, i32 %16)
  store %struct.TYPE_6__* %17, %struct.TYPE_6__** %10, align 8
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 7
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* @dc_colormap, align 4
  %21 = load i32, i32* @dc_colormap, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %3
  %24 = load i32, i32* @fuzzcolfunc, align 4
  store i32 %24, i32* @colfunc, align 4
  br label %46

25:                                               ; preds = %3
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @MF_TRANSLATION, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %45

32:                                               ; preds = %25
  %33 = load i32, i32* @R_DrawTranslatedColumn, align 4
  store i32 %33, i32* @colfunc, align 4
  %34 = load i32, i32* @translationtables, align 4
  %35 = sub nsw i32 %34, 256
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @MF_TRANSLATION, align 4
  %40 = and i32 %38, %39
  %41 = load i32, i32* @MF_TRANSSHIFT, align 4
  %42 = sub nsw i32 %41, 8
  %43 = ashr i32 %40, %42
  %44 = add nsw i32 %35, %43
  store i32 %44, i32* @dc_translation, align 4
  br label %45

45:                                               ; preds = %32, %25
  br label %46

46:                                               ; preds = %45, %23
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 4
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @abs(i64 %49)
  %51 = load i32, i32* @detailshift, align 4
  %52 = ashr i32 %50, %51
  store i32 %52, i32* @dc_iscale, align 4
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 6
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* @dc_texturemid, align 4
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %9, align 4
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 5
  %61 = load i32, i32* %60, align 8
  store i32 %61, i32* @spryscale, align 4
  %62 = load i64, i64* @centeryfrac, align 8
  %63 = load i32, i32* @dc_texturemid, align 4
  %64 = load i32, i32* @spryscale, align 4
  %65 = call i64 @FixedMul(i32 %63, i32 %64)
  %66 = sub nsw i64 %62, %65
  store i64 %66, i64* @sprtopscreen, align 8
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  store i64 %69, i64* @dc_x, align 8
  br label %70

70:                                               ; preds = %94, %46
  %71 = load i64, i64* @dc_x, align 8
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 3
  %74 = load i64, i64* %73, align 8
  %75 = icmp sle i64 %71, %74
  br i1 %75, label %76, label %104

76:                                               ; preds = %70
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* @FRACBITS, align 4
  %79 = ashr i32 %77, %78
  store i32 %79, i32* %8, align 4
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %81 = bitcast %struct.TYPE_6__* %80 to i32*
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = load i32, i32* %8, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @LONG(i32 %88)
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %81, i64 %90
  store i32* %91, i32** %7, align 8
  %92 = load i32*, i32** %7, align 8
  %93 = call i32 @R_DrawMaskedColumn(i32* %92)
  br label %94

94:                                               ; preds = %76
  %95 = load i64, i64* @dc_x, align 8
  %96 = add nsw i64 %95, 1
  store i64 %96, i64* @dc_x, align 8
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 4
  %99 = load i64, i64* %98, align 8
  %100 = load i32, i32* %9, align 4
  %101 = sext i32 %100 to i64
  %102 = add nsw i64 %101, %99
  %103 = trunc i64 %102 to i32
  store i32 %103, i32* %9, align 4
  br label %70

104:                                              ; preds = %70
  %105 = load i32, i32* @basecolfunc, align 4
  store i32 %105, i32* @colfunc, align 4
  ret void
}

declare dso_local %struct.TYPE_6__* @W_CacheLumpNum(i32, i32) #1

declare dso_local i32 @abs(i64) #1

declare dso_local i64 @FixedMul(i32, i32) #1

declare dso_local i32 @LONG(i32) #1

declare dso_local i32 @R_DrawMaskedColumn(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
