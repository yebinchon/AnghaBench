; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/extr_debug.c_PDebugShowSpriteStats.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/extr_debug.c_PDebugShowSpriteStats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32* }
%struct.TYPE_4__ = type { i32 }

@MAX_LINE_SPRITES = common dso_local global i32 0, align 4
@Pico = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@HighLnSpr = common dso_local global i8** null, align 8
@YELLOW1 = common dso_local global i32 0, align 4
@GREEN1 = common dso_local global i32 0, align 4
@BLUE1 = common dso_local global i32 0, align 4
@RED1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @PDebugShowSpriteStats(i16* %0, i32 %1) #0 {
  %3 = alloca i16*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i16*, align 8
  %10 = alloca i8*, align 8
  store i16* %0, i16** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load i32, i32* @MAX_LINE_SPRITES, align 4
  %12 = sdiv i32 303, %11
  store i32 %12, i32* %8, align 4
  store i32 240, i32* %5, align 4
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @Pico, i32 0, i32 1, i32 0), align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %2
  %16 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @Pico, i32 0, i32 0, i32 0), align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 1
  %18 = load i32, i32* %17, align 4
  %19 = and i32 %18, 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %15, %2
  store i32 224, i32* %5, align 4
  %22 = load i32, i32* %4, align 4
  %23 = mul nsw i32 %22, 8
  %24 = load i16*, i16** %3, align 8
  %25 = sext i32 %23 to i64
  %26 = getelementptr inbounds i16, i16* %24, i64 %25
  store i16* %26, i16** %3, align 8
  br label %27

27:                                               ; preds = %21, %15
  store i32 0, i32* %6, align 4
  br label %28

28:                                               ; preds = %136, %27
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* %5, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %139

32:                                               ; preds = %28
  %33 = load i16*, i16** %3, align 8
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* %6, align 4
  %36 = mul nsw i32 %34, %35
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i16, i16* %33, i64 %37
  store i16* %38, i16** %9, align 8
  %39 = load i8**, i8*** @HighLnSpr, align 8
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8*, i8** %39, i64 %41
  %43 = load i8*, i8** %42, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 0
  store i8* %44, i8** %10, align 8
  store i32 0, i32* %7, align 4
  br label %45

45:                                               ; preds = %76, %32
  %46 = load i32, i32* %7, align 4
  %47 = load i8*, i8** %10, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 0
  %49 = load i8, i8* %48, align 1
  %50 = zext i8 %49 to i32
  %51 = and i32 %50, 127
  %52 = icmp slt i32 %46, %51
  br i1 %52, label %53, label %79

53:                                               ; preds = %45
  %54 = load i16*, i16** %9, align 8
  %55 = load i8*, i8** %10, align 8
  %56 = load i32, i32* %7, align 4
  %57 = add nsw i32 3, %56
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8, i8* %55, i64 %58
  %60 = load i8, i8* %59, align 1
  %61 = zext i8 %60 to i32
  %62 = and i32 %61, 128
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %53
  %65 = load i32, i32* @YELLOW1, align 4
  br label %68

66:                                               ; preds = %53
  %67 = load i32, i32* @GREEN1, align 4
  br label %68

68:                                               ; preds = %66, %64
  %69 = phi i32 [ %65, %64 ], [ %67, %66 ]
  %70 = load i32, i32* %8, align 4
  %71 = call i32 @set16(i16* %54, i32 %69, i32 %70)
  %72 = load i32, i32* %8, align 4
  %73 = load i16*, i16** %9, align 8
  %74 = sext i32 %72 to i64
  %75 = getelementptr inbounds i16, i16* %73, i64 %74
  store i16* %75, i16** %9, align 8
  br label %76

76:                                               ; preds = %68
  %77 = load i32, i32* %7, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %7, align 4
  br label %45

79:                                               ; preds = %45
  %80 = load i16*, i16** %3, align 8
  %81 = load i32, i32* %4, align 4
  %82 = load i32, i32* %6, align 4
  %83 = mul nsw i32 %81, %82
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i16, i16* %80, i64 %84
  %86 = getelementptr inbounds i16, i16* %85, i64 320
  %87 = getelementptr inbounds i16, i16* %86, i64 -16
  store i16* %87, i16** %9, align 8
  %88 = load i8*, i8** %10, align 8
  %89 = getelementptr inbounds i8, i8* %88, i64 1
  %90 = load i8, i8* %89, align 1
  %91 = zext i8 %90 to i32
  %92 = and i32 %91, 64
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %79
  %95 = load i16*, i16** %9, align 8
  %96 = getelementptr inbounds i16, i16* %95, i64 0
  %97 = load i32, i32* @GREEN1, align 4
  %98 = call i32 @set16(i16* %96, i32 %97, i32 4)
  br label %99

99:                                               ; preds = %94, %79
  %100 = load i8*, i8** %10, align 8
  %101 = getelementptr inbounds i8, i8* %100, i64 1
  %102 = load i8, i8* %101, align 1
  %103 = zext i8 %102 to i32
  %104 = and i32 %103, 128
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %99
  %107 = load i16*, i16** %9, align 8
  %108 = getelementptr inbounds i16, i16* %107, i64 4
  %109 = load i32, i32* @YELLOW1, align 4
  %110 = call i32 @set16(i16* %108, i32 %109, i32 4)
  br label %111

111:                                              ; preds = %106, %99
  %112 = load i8*, i8** %10, align 8
  %113 = getelementptr inbounds i8, i8* %112, i64 1
  %114 = load i8, i8* %113, align 1
  %115 = zext i8 %114 to i32
  %116 = and i32 %115, 32
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %123

118:                                              ; preds = %111
  %119 = load i16*, i16** %9, align 8
  %120 = getelementptr inbounds i16, i16* %119, i64 8
  %121 = load i32, i32* @BLUE1, align 4
  %122 = call i32 @set16(i16* %120, i32 %121, i32 4)
  br label %123

123:                                              ; preds = %118, %111
  %124 = load i8*, i8** %10, align 8
  %125 = getelementptr inbounds i8, i8* %124, i64 1
  %126 = load i8, i8* %125, align 1
  %127 = zext i8 %126 to i32
  %128 = and i32 %127, 16
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %135

130:                                              ; preds = %123
  %131 = load i16*, i16** %9, align 8
  %132 = getelementptr inbounds i16, i16* %131, i64 12
  %133 = load i32, i32* @RED1, align 4
  %134 = call i32 @set16(i16* %132, i32 %133, i32 4)
  br label %135

135:                                              ; preds = %130, %123
  br label %136

136:                                              ; preds = %135
  %137 = load i32, i32* %6, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %6, align 4
  br label %28

139:                                              ; preds = %28
  %140 = load i32, i32* %8, align 4
  %141 = mul nsw i32 %140, 5
  store i32 %141, i32* %6, align 4
  br label %142

142:                                              ; preds = %163, %139
  %143 = load i32, i32* %6, align 4
  %144 = icmp sle i32 %143, 303
  br i1 %144, label %145, label %168

145:                                              ; preds = %142
  store i32 0, i32* %7, align 4
  br label %146

146:                                              ; preds = %159, %145
  %147 = load i32, i32* %7, align 4
  %148 = load i32, i32* %5, align 4
  %149 = icmp slt i32 %147, %148
  br i1 %149, label %150, label %162

150:                                              ; preds = %146
  %151 = load i16*, i16** %3, align 8
  %152 = load i32, i32* %6, align 4
  %153 = load i32, i32* %7, align 4
  %154 = load i32, i32* %4, align 4
  %155 = mul nsw i32 %153, %154
  %156 = add nsw i32 %152, %155
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i16, i16* %151, i64 %157
  store i16 386, i16* %158, align 2
  br label %159

159:                                              ; preds = %150
  %160 = load i32, i32* %7, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %7, align 4
  br label %146

162:                                              ; preds = %146
  br label %163

163:                                              ; preds = %162
  %164 = load i32, i32* %8, align 4
  %165 = mul nsw i32 %164, 5
  %166 = load i32, i32* %6, align 4
  %167 = add nsw i32 %166, %165
  store i32 %167, i32* %6, align 4
  br label %142

168:                                              ; preds = %142
  ret void
}

declare dso_local i32 @set16(i16*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
