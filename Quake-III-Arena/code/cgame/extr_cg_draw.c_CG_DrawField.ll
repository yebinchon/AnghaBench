; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/cgame/extr_cg_draw.c_CG_DrawField.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/cgame/extr_cg_draw.c_CG_DrawField.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }

@.str = private unnamed_addr constant [3 x i8] c"%i\00", align 1
@CHAR_WIDTH = common dso_local global i32 0, align 4
@STAT_MINUS = common dso_local global i32 0, align 4
@CHAR_HEIGHT = common dso_local global i32 0, align 4
@cgs = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32)* @CG_DrawField to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CG_DrawField(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [16 x i8], align 16
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp slt i32 %13, 1
  br i1 %14, label %15, label %16

15:                                               ; preds = %4
  br label %143

16:                                               ; preds = %4
  %17 = load i32, i32* %7, align 4
  %18 = icmp sgt i32 %17, 5
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  store i32 5, i32* %7, align 4
  br label %20

20:                                               ; preds = %19, %16
  %21 = load i32, i32* %7, align 4
  switch i32 %21, label %82 [
    i32 1, label %22
    i32 2, label %37
    i32 3, label %52
    i32 4, label %67
  ]

22:                                               ; preds = %20
  %23 = load i32, i32* %8, align 4
  %24 = icmp sgt i32 %23, 9
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  br label %28

26:                                               ; preds = %22
  %27 = load i32, i32* %8, align 4
  br label %28

28:                                               ; preds = %26, %25
  %29 = phi i32 [ 9, %25 ], [ %27, %26 ]
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  br label %35

33:                                               ; preds = %28
  %34 = load i32, i32* %8, align 4
  br label %35

35:                                               ; preds = %33, %32
  %36 = phi i32 [ 0, %32 ], [ %34, %33 ]
  store i32 %36, i32* %8, align 4
  br label %82

37:                                               ; preds = %20
  %38 = load i32, i32* %8, align 4
  %39 = icmp sgt i32 %38, 99
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  br label %43

41:                                               ; preds = %37
  %42 = load i32, i32* %8, align 4
  br label %43

43:                                               ; preds = %41, %40
  %44 = phi i32 [ 99, %40 ], [ %42, %41 ]
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp slt i32 %45, -9
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  br label %50

48:                                               ; preds = %43
  %49 = load i32, i32* %8, align 4
  br label %50

50:                                               ; preds = %48, %47
  %51 = phi i32 [ -9, %47 ], [ %49, %48 ]
  store i32 %51, i32* %8, align 4
  br label %82

52:                                               ; preds = %20
  %53 = load i32, i32* %8, align 4
  %54 = icmp sgt i32 %53, 999
  br i1 %54, label %55, label %56

55:                                               ; preds = %52
  br label %58

56:                                               ; preds = %52
  %57 = load i32, i32* %8, align 4
  br label %58

58:                                               ; preds = %56, %55
  %59 = phi i32 [ 999, %55 ], [ %57, %56 ]
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* %8, align 4
  %61 = icmp slt i32 %60, -99
  br i1 %61, label %62, label %63

62:                                               ; preds = %58
  br label %65

63:                                               ; preds = %58
  %64 = load i32, i32* %8, align 4
  br label %65

65:                                               ; preds = %63, %62
  %66 = phi i32 [ -99, %62 ], [ %64, %63 ]
  store i32 %66, i32* %8, align 4
  br label %82

67:                                               ; preds = %20
  %68 = load i32, i32* %8, align 4
  %69 = icmp sgt i32 %68, 9999
  br i1 %69, label %70, label %71

70:                                               ; preds = %67
  br label %73

71:                                               ; preds = %67
  %72 = load i32, i32* %8, align 4
  br label %73

73:                                               ; preds = %71, %70
  %74 = phi i32 [ 9999, %70 ], [ %72, %71 ]
  store i32 %74, i32* %8, align 4
  %75 = load i32, i32* %8, align 4
  %76 = icmp slt i32 %75, -999
  br i1 %76, label %77, label %78

77:                                               ; preds = %73
  br label %80

78:                                               ; preds = %73
  %79 = load i32, i32* %8, align 4
  br label %80

80:                                               ; preds = %78, %77
  %81 = phi i32 [ -999, %77 ], [ %79, %78 ]
  store i32 %81, i32* %8, align 4
  br label %82

82:                                               ; preds = %20, %80, %65, %50, %35
  %83 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 0
  %84 = load i32, i32* %8, align 4
  %85 = call i32 @Com_sprintf(i8* %83, i32 16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %84)
  %86 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 0
  %87 = call i32 @strlen(i8* %86)
  store i32 %87, i32* %11, align 4
  %88 = load i32, i32* %11, align 4
  %89 = load i32, i32* %7, align 4
  %90 = icmp sgt i32 %88, %89
  br i1 %90, label %91, label %93

91:                                               ; preds = %82
  %92 = load i32, i32* %7, align 4
  store i32 %92, i32* %11, align 4
  br label %93

93:                                               ; preds = %91, %82
  %94 = load i32, i32* @CHAR_WIDTH, align 4
  %95 = load i32, i32* %7, align 4
  %96 = load i32, i32* %11, align 4
  %97 = sub nsw i32 %95, %96
  %98 = mul nsw i32 %94, %97
  %99 = add nsw i32 2, %98
  %100 = load i32, i32* %5, align 4
  %101 = add nsw i32 %100, %99
  store i32 %101, i32* %5, align 4
  %102 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 0
  store i8* %102, i8** %10, align 8
  br label %103

103:                                              ; preds = %125, %93
  %104 = load i8*, i8** %10, align 8
  %105 = load i8, i8* %104, align 1
  %106 = sext i8 %105 to i32
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %103
  %109 = load i32, i32* %11, align 4
  %110 = icmp ne i32 %109, 0
  br label %111

111:                                              ; preds = %108, %103
  %112 = phi i1 [ false, %103 ], [ %110, %108 ]
  br i1 %112, label %113, label %143

113:                                              ; preds = %111
  %114 = load i8*, i8** %10, align 8
  %115 = load i8, i8* %114, align 1
  %116 = sext i8 %115 to i32
  %117 = icmp eq i32 %116, 45
  br i1 %117, label %118, label %120

118:                                              ; preds = %113
  %119 = load i32, i32* @STAT_MINUS, align 4
  store i32 %119, i32* %12, align 4
  br label %125

120:                                              ; preds = %113
  %121 = load i8*, i8** %10, align 8
  %122 = load i8, i8* %121, align 1
  %123 = sext i8 %122 to i32
  %124 = sub nsw i32 %123, 48
  store i32 %124, i32* %12, align 4
  br label %125

125:                                              ; preds = %120, %118
  %126 = load i32, i32* %5, align 4
  %127 = load i32, i32* %6, align 4
  %128 = load i32, i32* @CHAR_WIDTH, align 4
  %129 = load i32, i32* @CHAR_HEIGHT, align 4
  %130 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cgs, i32 0, i32 0, i32 0), align 8
  %131 = load i32, i32* %12, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %130, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @CG_DrawPic(i32 %126, i32 %127, i32 %128, i32 %129, i32 %134)
  %136 = load i32, i32* @CHAR_WIDTH, align 4
  %137 = load i32, i32* %5, align 4
  %138 = add nsw i32 %137, %136
  store i32 %138, i32* %5, align 4
  %139 = load i8*, i8** %10, align 8
  %140 = getelementptr inbounds i8, i8* %139, i32 1
  store i8* %140, i8** %10, align 8
  %141 = load i32, i32* %11, align 4
  %142 = add nsw i32 %141, -1
  store i32 %142, i32* %11, align 4
  br label %103

143:                                              ; preds = %15, %111
  ret void
}

declare dso_local i32 @Com_sprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @CG_DrawPic(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
