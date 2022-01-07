; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_st_stuff.c_ST_doPaletteStuff.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_st_stuff.c_ST_doPaletteStuff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32*, i32 }

@plyr = common dso_local global %struct.TYPE_2__* null, align 8
@pw_strength = common dso_local global i64 0, align 8
@NUMREDPALS = common dso_local global i32 0, align 4
@STARTREDPALS = common dso_local global i64 0, align 8
@NUMBONUSPALS = common dso_local global i32 0, align 4
@STARTBONUSPALS = common dso_local global i64 0, align 8
@pw_ironfeet = common dso_local global i64 0, align 8
@RADIATIONPAL = common dso_local global i32 0, align 4
@st_palette = common dso_local global i32 0, align 4
@lu_palette = common dso_local global i32 0, align 4
@PU_CACHE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ST_doPaletteStuff() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** @plyr, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  store i32 %7, i32* %3, align 4
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** @plyr, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 1
  %10 = load i32*, i32** %9, align 8
  %11 = load i64, i64* @pw_strength, align 8
  %12 = getelementptr inbounds i32, i32* %10, i64 %11
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %30

15:                                               ; preds = %0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @plyr, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = load i64, i64* @pw_strength, align 8
  %20 = getelementptr inbounds i32, i32* %18, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = ashr i32 %21, 6
  %23 = sub nsw i32 12, %22
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* %3, align 4
  %26 = icmp sgt i32 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %15
  %28 = load i32, i32* %4, align 4
  store i32 %28, i32* %3, align 4
  br label %29

29:                                               ; preds = %27, %15
  br label %30

30:                                               ; preds = %29, %0
  %31 = load i32, i32* %3, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %49

33:                                               ; preds = %30
  %34 = load i32, i32* %3, align 4
  %35 = add nsw i32 %34, 7
  %36 = ashr i32 %35, 3
  store i32 %36, i32* %1, align 4
  %37 = load i32, i32* %1, align 4
  %38 = load i32, i32* @NUMREDPALS, align 4
  %39 = icmp sge i32 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %33
  %41 = load i32, i32* @NUMREDPALS, align 4
  %42 = sub nsw i32 %41, 1
  store i32 %42, i32* %1, align 4
  br label %43

43:                                               ; preds = %40, %33
  %44 = load i64, i64* @STARTREDPALS, align 8
  %45 = load i32, i32* %1, align 4
  %46 = sext i32 %45 to i64
  %47 = add nsw i64 %46, %44
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %1, align 4
  br label %94

49:                                               ; preds = %30
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** @plyr, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %72

54:                                               ; preds = %49
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** @plyr, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = add nsw i32 %57, 7
  %59 = ashr i32 %58, 3
  store i32 %59, i32* %1, align 4
  %60 = load i32, i32* %1, align 4
  %61 = load i32, i32* @NUMBONUSPALS, align 4
  %62 = icmp sge i32 %60, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %54
  %64 = load i32, i32* @NUMBONUSPALS, align 4
  %65 = sub nsw i32 %64, 1
  store i32 %65, i32* %1, align 4
  br label %66

66:                                               ; preds = %63, %54
  %67 = load i64, i64* @STARTBONUSPALS, align 8
  %68 = load i32, i32* %1, align 4
  %69 = sext i32 %68 to i64
  %70 = add nsw i64 %69, %67
  %71 = trunc i64 %70 to i32
  store i32 %71, i32* %1, align 4
  br label %93

72:                                               ; preds = %49
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** @plyr, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 1
  %75 = load i32*, i32** %74, align 8
  %76 = load i64, i64* @pw_ironfeet, align 8
  %77 = getelementptr inbounds i32, i32* %75, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = icmp sgt i32 %78, 128
  br i1 %79, label %89, label %80

80:                                               ; preds = %72
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** @plyr, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  %84 = load i64, i64* @pw_ironfeet, align 8
  %85 = getelementptr inbounds i32, i32* %83, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = and i32 %86, 8
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %80, %72
  %90 = load i32, i32* @RADIATIONPAL, align 4
  store i32 %90, i32* %1, align 4
  br label %92

91:                                               ; preds = %80
  store i32 0, i32* %1, align 4
  br label %92

92:                                               ; preds = %91, %89
  br label %93

93:                                               ; preds = %92, %66
  br label %94

94:                                               ; preds = %93, %43
  %95 = load i32, i32* %1, align 4
  %96 = load i32, i32* @st_palette, align 4
  %97 = icmp ne i32 %95, %96
  br i1 %97, label %98, label %110

98:                                               ; preds = %94
  %99 = load i32, i32* %1, align 4
  store i32 %99, i32* @st_palette, align 4
  %100 = load i32, i32* @lu_palette, align 4
  %101 = load i32, i32* @PU_CACHE, align 4
  %102 = call i64 @W_CacheLumpNum(i32 %100, i32 %101)
  %103 = inttoptr i64 %102 to i32*
  %104 = load i32, i32* %1, align 4
  %105 = mul nsw i32 %104, 768
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %103, i64 %106
  store i32* %107, i32** %2, align 8
  %108 = load i32*, i32** %2, align 8
  %109 = call i32 @I_SetPalette(i32* %108)
  br label %110

110:                                              ; preds = %98, %94
  ret void
}

declare dso_local i64 @W_CacheLumpNum(i32, i32) #1

declare dso_local i32 @I_SetPalette(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
