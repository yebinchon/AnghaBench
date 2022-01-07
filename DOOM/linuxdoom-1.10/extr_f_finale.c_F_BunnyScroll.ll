; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_f_finale.c_F_BunnyScroll.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_f_finale.c_F_BunnyScroll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@F_BunnyScroll.laststage = internal global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"PFUB2\00", align 1
@PU_LEVEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"PFUB1\00", align 1
@SCREENWIDTH = common dso_local global i32 0, align 4
@SCREENHEIGHT = common dso_local global i32 0, align 4
@finalecount = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"END0\00", align 1
@PU_CACHE = common dso_local global i32 0, align 4
@sfx_pistol = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"END%i\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @F_BunnyScroll() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca [10 x i8], align 1
  %6 = alloca i32, align 4
  %7 = load i32, i32* @PU_LEVEL, align 4
  %8 = call i32* @W_CacheLumpName(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %7)
  store i32* %8, i32** %3, align 8
  %9 = load i32, i32* @PU_LEVEL, align 4
  %10 = call i32* @W_CacheLumpName(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %9)
  store i32* %10, i32** %4, align 8
  %11 = load i32, i32* @SCREENWIDTH, align 4
  %12 = load i32, i32* @SCREENHEIGHT, align 4
  %13 = call i32 @V_MarkRect(i32 0, i32 0, i32 %11, i32 %12)
  %14 = load i32, i32* @finalecount, align 4
  %15 = sub nsw i32 %14, 230
  %16 = sdiv i32 %15, 2
  %17 = sub nsw i32 320, %16
  store i32 %17, i32* %1, align 4
  %18 = load i32, i32* %1, align 4
  %19 = icmp sgt i32 %18, 320
  br i1 %19, label %20, label %21

20:                                               ; preds = %0
  store i32 320, i32* %1, align 4
  br label %21

21:                                               ; preds = %20, %0
  %22 = load i32, i32* %1, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  store i32 0, i32* %1, align 4
  br label %25

25:                                               ; preds = %24, %21
  store i32 0, i32* %2, align 4
  br label %26

26:                                               ; preds = %51, %25
  %27 = load i32, i32* %2, align 4
  %28 = load i32, i32* @SCREENWIDTH, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %54

30:                                               ; preds = %26
  %31 = load i32, i32* %2, align 4
  %32 = load i32, i32* %1, align 4
  %33 = add nsw i32 %31, %32
  %34 = icmp slt i32 %33, 320
  br i1 %34, label %35, label %42

35:                                               ; preds = %30
  %36 = load i32, i32* %2, align 4
  %37 = load i32*, i32** %3, align 8
  %38 = load i32, i32* %2, align 4
  %39 = load i32, i32* %1, align 4
  %40 = add nsw i32 %38, %39
  %41 = call i32 @F_DrawPatchCol(i32 %36, i32* %37, i32 %40)
  br label %50

42:                                               ; preds = %30
  %43 = load i32, i32* %2, align 4
  %44 = load i32*, i32** %4, align 8
  %45 = load i32, i32* %2, align 4
  %46 = load i32, i32* %1, align 4
  %47 = add nsw i32 %45, %46
  %48 = sub nsw i32 %47, 320
  %49 = call i32 @F_DrawPatchCol(i32 %43, i32* %44, i32 %48)
  br label %50

50:                                               ; preds = %42, %35
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %2, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %2, align 4
  br label %26

54:                                               ; preds = %26
  %55 = load i32, i32* @finalecount, align 4
  %56 = icmp slt i32 %55, 1130
  br i1 %56, label %57, label %58

57:                                               ; preds = %54
  br label %100

58:                                               ; preds = %54
  %59 = load i32, i32* @finalecount, align 4
  %60 = icmp slt i32 %59, 1180
  br i1 %60, label %61, label %71

61:                                               ; preds = %58
  %62 = load i32, i32* @SCREENWIDTH, align 4
  %63 = sub nsw i32 %62, 104
  %64 = sdiv i32 %63, 2
  %65 = load i32, i32* @SCREENHEIGHT, align 4
  %66 = sub nsw i32 %65, 64
  %67 = sdiv i32 %66, 2
  %68 = load i32, i32* @PU_CACHE, align 4
  %69 = call i32* @W_CacheLumpName(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %68)
  %70 = call i32 @V_DrawPatch(i32 %64, i32 %67, i32 0, i32* %69)
  store i32 0, i32* @F_BunnyScroll.laststage, align 4
  br label %100

71:                                               ; preds = %58
  %72 = load i32, i32* @finalecount, align 4
  %73 = sub nsw i32 %72, 1180
  %74 = sdiv i32 %73, 5
  store i32 %74, i32* %6, align 4
  %75 = load i32, i32* %6, align 4
  %76 = icmp sgt i32 %75, 6
  br i1 %76, label %77, label %78

77:                                               ; preds = %71
  store i32 6, i32* %6, align 4
  br label %78

78:                                               ; preds = %77, %71
  %79 = load i32, i32* %6, align 4
  %80 = load i32, i32* @F_BunnyScroll.laststage, align 4
  %81 = icmp sgt i32 %79, %80
  br i1 %81, label %82, label %86

82:                                               ; preds = %78
  %83 = load i32, i32* @sfx_pistol, align 4
  %84 = call i32 @S_StartSound(i32* null, i32 %83)
  %85 = load i32, i32* %6, align 4
  store i32 %85, i32* @F_BunnyScroll.laststage, align 4
  br label %86

86:                                               ; preds = %82, %78
  %87 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i64 0, i64 0
  %88 = load i32, i32* %6, align 4
  %89 = call i32 @sprintf(i8* %87, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %88)
  %90 = load i32, i32* @SCREENWIDTH, align 4
  %91 = sub nsw i32 %90, 104
  %92 = sdiv i32 %91, 2
  %93 = load i32, i32* @SCREENHEIGHT, align 4
  %94 = sub nsw i32 %93, 64
  %95 = sdiv i32 %94, 2
  %96 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i64 0, i64 0
  %97 = load i32, i32* @PU_CACHE, align 4
  %98 = call i32* @W_CacheLumpName(i8* %96, i32 %97)
  %99 = call i32 @V_DrawPatch(i32 %92, i32 %95, i32 0, i32* %98)
  br label %100

100:                                              ; preds = %86, %61, %57
  ret void
}

declare dso_local i32* @W_CacheLumpName(i8*, i32) #1

declare dso_local i32 @V_MarkRect(i32, i32, i32, i32) #1

declare dso_local i32 @F_DrawPatchCol(i32, i32*, i32) #1

declare dso_local i32 @V_DrawPatch(i32, i32, i32, i32*) #1

declare dso_local i32 @S_StartSound(i32*, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
