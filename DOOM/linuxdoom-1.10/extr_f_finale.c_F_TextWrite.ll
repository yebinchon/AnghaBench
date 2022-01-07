; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_f_finale.c_F_TextWrite.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_f_finale.c_F_TextWrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@finaleflat = common dso_local global i32 0, align 4
@PU_CACHE = common dso_local global i32 0, align 4
@screens = common dso_local global i32** null, align 8
@SCREENHEIGHT = common dso_local global i32 0, align 4
@SCREENWIDTH = common dso_local global i32 0, align 4
@finaletext = common dso_local global i8* null, align 8
@finalecount = common dso_local global i32 0, align 4
@TEXTSPEED = common dso_local global i32 0, align 4
@HU_FONTSTART = common dso_local global i32 0, align 4
@HU_FONTSIZE = common dso_local global i32 0, align 4
@hu_font = common dso_local global %struct.TYPE_3__** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @F_TextWrite() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = load i32, i32* @finaleflat, align 4
  %12 = load i32, i32* @PU_CACHE, align 4
  %13 = call i32* @W_CacheLumpName(i32 %11, i32 %12)
  store i32* %13, i32** %1, align 8
  %14 = load i32**, i32*** @screens, align 8
  %15 = getelementptr inbounds i32*, i32** %14, i64 0
  %16 = load i32*, i32** %15, align 8
  store i32* %16, i32** %2, align 8
  store i32 0, i32* %4, align 4
  br label %17

17:                                               ; preds = %62, %0
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @SCREENHEIGHT, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %65

21:                                               ; preds = %17
  store i32 0, i32* %3, align 4
  br label %22

22:                                               ; preds = %38, %21
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* @SCREENWIDTH, align 4
  %25 = sdiv i32 %24, 64
  %26 = icmp slt i32 %23, %25
  br i1 %26, label %27, label %41

27:                                               ; preds = %22
  %28 = load i32*, i32** %2, align 8
  %29 = load i32*, i32** %1, align 8
  %30 = load i32, i32* %4, align 4
  %31 = and i32 %30, 63
  %32 = shl i32 %31, 6
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %29, i64 %33
  %35 = call i32 @memcpy(i32* %28, i32* %34, i32 64)
  %36 = load i32*, i32** %2, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 64
  store i32* %37, i32** %2, align 8
  br label %38

38:                                               ; preds = %27
  %39 = load i32, i32* %3, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %3, align 4
  br label %22

41:                                               ; preds = %22
  %42 = load i32, i32* @SCREENWIDTH, align 4
  %43 = and i32 %42, 63
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %61

45:                                               ; preds = %41
  %46 = load i32*, i32** %2, align 8
  %47 = load i32*, i32** %1, align 8
  %48 = load i32, i32* %4, align 4
  %49 = and i32 %48, 63
  %50 = shl i32 %49, 6
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %47, i64 %51
  %53 = load i32, i32* @SCREENWIDTH, align 4
  %54 = and i32 %53, 63
  %55 = call i32 @memcpy(i32* %46, i32* %52, i32 %54)
  %56 = load i32, i32* @SCREENWIDTH, align 4
  %57 = and i32 %56, 63
  %58 = load i32*, i32** %2, align 8
  %59 = sext i32 %57 to i64
  %60 = getelementptr inbounds i32, i32* %58, i64 %59
  store i32* %60, i32** %2, align 8
  br label %61

61:                                               ; preds = %45, %41
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %4, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %4, align 4
  br label %17

65:                                               ; preds = %17
  %66 = load i32, i32* @SCREENWIDTH, align 4
  %67 = load i32, i32* @SCREENHEIGHT, align 4
  %68 = call i32 @V_MarkRect(i32 0, i32 0, i32 %66, i32 %67)
  store i32 10, i32* %9, align 4
  store i32 10, i32* %10, align 4
  %69 = load i8*, i8** @finaletext, align 8
  store i8* %69, i8** %7, align 8
  %70 = load i32, i32* @finalecount, align 4
  %71 = sub nsw i32 %70, 10
  %72 = load i32, i32* @TEXTSPEED, align 4
  %73 = sdiv i32 %71, %72
  store i32 %73, i32* %6, align 4
  %74 = load i32, i32* %6, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %65
  store i32 0, i32* %6, align 4
  br label %77

77:                                               ; preds = %76, %65
  br label %78

78:                                               ; preds = %136, %77
  %79 = load i32, i32* %6, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %139

81:                                               ; preds = %78
  %82 = load i8*, i8** %7, align 8
  %83 = getelementptr inbounds i8, i8* %82, i32 1
  store i8* %83, i8** %7, align 8
  %84 = load i8, i8* %82, align 1
  %85 = sext i8 %84 to i32
  store i32 %85, i32* %8, align 4
  %86 = load i32, i32* %8, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %89, label %88

88:                                               ; preds = %81
  br label %139

89:                                               ; preds = %81
  %90 = load i32, i32* %8, align 4
  %91 = icmp eq i32 %90, 10
  br i1 %91, label %92, label %95

92:                                               ; preds = %89
  store i32 10, i32* %9, align 4
  %93 = load i32, i32* %10, align 4
  %94 = add nsw i32 %93, 11
  store i32 %94, i32* %10, align 4
  br label %136

95:                                               ; preds = %89
  %96 = load i32, i32* %8, align 4
  %97 = call i32 @toupper(i32 %96) #3
  %98 = load i32, i32* @HU_FONTSTART, align 4
  %99 = sub nsw i32 %97, %98
  store i32 %99, i32* %8, align 4
  %100 = load i32, i32* %8, align 4
  %101 = icmp slt i32 %100, 0
  br i1 %101, label %106, label %102

102:                                              ; preds = %95
  %103 = load i32, i32* %8, align 4
  %104 = load i32, i32* @HU_FONTSIZE, align 4
  %105 = icmp sgt i32 %103, %104
  br i1 %105, label %106, label %109

106:                                              ; preds = %102, %95
  %107 = load i32, i32* %9, align 4
  %108 = add nsw i32 %107, 4
  store i32 %108, i32* %9, align 4
  br label %136

109:                                              ; preds = %102
  %110 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @hu_font, align 8
  %111 = load i32, i32* %8, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %110, i64 %112
  %114 = load %struct.TYPE_3__*, %struct.TYPE_3__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @SHORT(i32 %116)
  store i32 %117, i32* %5, align 4
  %118 = load i32, i32* %9, align 4
  %119 = load i32, i32* %5, align 4
  %120 = add nsw i32 %118, %119
  %121 = load i32, i32* @SCREENWIDTH, align 4
  %122 = icmp sgt i32 %120, %121
  br i1 %122, label %123, label %124

123:                                              ; preds = %109
  br label %139

124:                                              ; preds = %109
  %125 = load i32, i32* %9, align 4
  %126 = load i32, i32* %10, align 4
  %127 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @hu_font, align 8
  %128 = load i32, i32* %8, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %127, i64 %129
  %131 = load %struct.TYPE_3__*, %struct.TYPE_3__** %130, align 8
  %132 = call i32 @V_DrawPatch(i32 %125, i32 %126, i32 0, %struct.TYPE_3__* %131)
  %133 = load i32, i32* %5, align 4
  %134 = load i32, i32* %9, align 4
  %135 = add nsw i32 %134, %133
  store i32 %135, i32* %9, align 4
  br label %136

136:                                              ; preds = %124, %106, %92
  %137 = load i32, i32* %6, align 4
  %138 = add nsw i32 %137, -1
  store i32 %138, i32* %6, align 4
  br label %78

139:                                              ; preds = %123, %88, %78
  ret void
}

declare dso_local i32* @W_CacheLumpName(i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @V_MarkRect(i32, i32, i32, i32) #1

; Function Attrs: nounwind readonly
declare dso_local i32 @toupper(i32) #2

declare dso_local i32 @SHORT(i32) #1

declare dso_local i32 @V_DrawPatch(i32, i32, i32, %struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
