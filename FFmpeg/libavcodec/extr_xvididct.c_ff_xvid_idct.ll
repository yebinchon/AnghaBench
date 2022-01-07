; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_xvididct.c_ff_xvid_idct.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_xvididct.c_ff_xvid_idct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TAB04 = common dso_local global i32 0, align 4
@RND0 = common dso_local global i32 0, align 4
@TAB17 = common dso_local global i32 0, align 4
@RND1 = common dso_local global i32 0, align 4
@TAB26 = common dso_local global i32 0, align 4
@RND2 = common dso_local global i32 0, align 4
@TAB35 = common dso_local global i32 0, align 4
@RND3 = common dso_local global i32 0, align 4
@RND4 = common dso_local global i32 0, align 4
@RND5 = common dso_local global i32 0, align 4
@RND6 = common dso_local global i32 0, align 4
@RND7 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_xvid_idct(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  store i32 7, i32* %4, align 4
  %5 = load i32*, i32** %2, align 8
  %6 = getelementptr inbounds i32, i32* %5, i64 0
  %7 = load i32, i32* @TAB04, align 4
  %8 = load i32, i32* @RND0, align 4
  %9 = call i64 @idct_row(i32* %6, i32 %7, i32 %8)
  %10 = load i32*, i32** %2, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 8
  %12 = load i32, i32* @TAB17, align 4
  %13 = load i32, i32* @RND1, align 4
  %14 = call i64 @idct_row(i32* %11, i32 %12, i32 %13)
  %15 = load i32*, i32** %2, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 16
  %17 = load i32, i32* @TAB26, align 4
  %18 = load i32, i32* @RND2, align 4
  %19 = call i64 @idct_row(i32* %16, i32 %17, i32 %18)
  %20 = load i32*, i32** %2, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 24
  %22 = load i32, i32* @TAB35, align 4
  %23 = load i32, i32* @RND3, align 4
  %24 = call i64 @idct_row(i32* %21, i32 %22, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %1
  %27 = load i32, i32* %4, align 4
  %28 = or i32 %27, 8
  store i32 %28, i32* %4, align 4
  br label %29

29:                                               ; preds = %26, %1
  %30 = load i32*, i32** %2, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 32
  %32 = load i32, i32* @TAB04, align 4
  %33 = load i32, i32* @RND4, align 4
  %34 = call i64 @idct_row(i32* %31, i32 %32, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %29
  %37 = load i32, i32* %4, align 4
  %38 = or i32 %37, 16
  store i32 %38, i32* %4, align 4
  br label %39

39:                                               ; preds = %36, %29
  %40 = load i32*, i32** %2, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 40
  %42 = load i32, i32* @TAB35, align 4
  %43 = load i32, i32* @RND5, align 4
  %44 = call i64 @idct_row(i32* %41, i32 %42, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %39
  %47 = load i32, i32* %4, align 4
  %48 = or i32 %47, 32
  store i32 %48, i32* %4, align 4
  br label %49

49:                                               ; preds = %46, %39
  %50 = load i32*, i32** %2, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 48
  %52 = load i32, i32* @TAB26, align 4
  %53 = load i32, i32* @RND6, align 4
  %54 = call i64 @idct_row(i32* %51, i32 %52, i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %49
  %57 = load i32, i32* %4, align 4
  %58 = or i32 %57, 64
  store i32 %58, i32* %4, align 4
  br label %59

59:                                               ; preds = %56, %49
  %60 = load i32*, i32** %2, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 56
  %62 = load i32, i32* @TAB17, align 4
  %63 = load i32, i32* @RND7, align 4
  %64 = call i64 @idct_row(i32* %61, i32 %62, i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %59
  %67 = load i32, i32* %4, align 4
  %68 = or i32 %67, 128
  store i32 %68, i32* %4, align 4
  br label %69

69:                                               ; preds = %66, %59
  %70 = load i32, i32* %4, align 4
  %71 = and i32 %70, 240
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %87

73:                                               ; preds = %69
  store i32 0, i32* %3, align 4
  br label %74

74:                                               ; preds = %83, %73
  %75 = load i32, i32* %3, align 4
  %76 = icmp slt i32 %75, 8
  br i1 %76, label %77, label %86

77:                                               ; preds = %74
  %78 = load i32*, i32** %2, align 8
  %79 = load i32, i32* %3, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = call i32 @idct_col_8(i32* %81)
  br label %83

83:                                               ; preds = %77
  %84 = load i32, i32* %3, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %3, align 4
  br label %74

86:                                               ; preds = %74
  br label %120

87:                                               ; preds = %69
  %88 = load i32, i32* %4, align 4
  %89 = and i32 %88, 8
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %105

91:                                               ; preds = %87
  store i32 0, i32* %3, align 4
  br label %92

92:                                               ; preds = %101, %91
  %93 = load i32, i32* %3, align 4
  %94 = icmp slt i32 %93, 8
  br i1 %94, label %95, label %104

95:                                               ; preds = %92
  %96 = load i32*, i32** %2, align 8
  %97 = load i32, i32* %3, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  %100 = call i32 @idct_col_4(i32* %99)
  br label %101

101:                                              ; preds = %95
  %102 = load i32, i32* %3, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %3, align 4
  br label %92

104:                                              ; preds = %92
  br label %119

105:                                              ; preds = %87
  store i32 0, i32* %3, align 4
  br label %106

106:                                              ; preds = %115, %105
  %107 = load i32, i32* %3, align 4
  %108 = icmp slt i32 %107, 8
  br i1 %108, label %109, label %118

109:                                              ; preds = %106
  %110 = load i32*, i32** %2, align 8
  %111 = load i32, i32* %3, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %110, i64 %112
  %114 = call i32 @idct_col_3(i32* %113)
  br label %115

115:                                              ; preds = %109
  %116 = load i32, i32* %3, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %3, align 4
  br label %106

118:                                              ; preds = %106
  br label %119

119:                                              ; preds = %118, %104
  br label %120

120:                                              ; preds = %119, %86
  ret void
}

declare dso_local i64 @idct_row(i32*, i32, i32) #1

declare dso_local i32 @idct_col_8(i32*) #1

declare dso_local i32 @idct_col_4(i32*) #1

declare dso_local i32 @idct_col_3(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
