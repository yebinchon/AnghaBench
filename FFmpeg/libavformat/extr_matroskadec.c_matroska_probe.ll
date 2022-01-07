; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_matroskadec.c_matroska_probe.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_matroskadec.c_matroska_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32 }

@EBML_ID_HEADER = common dso_local global i64 0, align 8
@matroska_doctypes = common dso_local global i32* null, align 8
@AVPROBE_SCORE_MAX = common dso_local global i32 0, align 4
@AVPROBE_SCORE_EXTENSION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*)* @matroska_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @matroska_probe(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 128, i32* %5, align 4
  store i32 1, i32* %6, align 4
  store i32 1, i32* %7, align 4
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = call i64 @AV_RB32(i32* %12)
  %14 = load i64, i64* @EBML_ID_HEADER, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %151

17:                                               ; preds = %1
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 4
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %4, align 4
  br label %23

23:                                               ; preds = %34, %17
  %24 = load i32, i32* %6, align 4
  %25 = icmp sle i32 %24, 8
  br i1 %25, label %26, label %32

26:                                               ; preds = %23
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* %5, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  br label %32

32:                                               ; preds = %26, %23
  %33 = phi i1 [ false, %23 ], [ %31, %26 ]
  br i1 %33, label %34, label %39

34:                                               ; preds = %32
  %35 = load i32, i32* %6, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %5, align 4
  %38 = ashr i32 %37, 1
  store i32 %38, i32* %5, align 4
  br label %23

39:                                               ; preds = %32
  %40 = load i32, i32* %6, align 4
  %41 = icmp sgt i32 %40, 8
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  store i32 0, i32* %2, align 4
  br label %151

43:                                               ; preds = %39
  %44 = load i32, i32* %5, align 4
  %45 = sub nsw i32 %44, 1
  %46 = load i32, i32* %4, align 4
  %47 = and i32 %46, %45
  store i32 %47, i32* %4, align 4
  br label %48

48:                                               ; preds = %52, %43
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* %6, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %65

52:                                               ; preds = %48
  %53 = load i32, i32* %4, align 4
  %54 = shl i32 %53, 8
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %7, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %7, align 4
  %60 = add nsw i32 4, %58
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %57, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = or i32 %54, %63
  store i32 %64, i32* %4, align 4
  br label %48

65:                                               ; preds = %48
  %66 = load i32, i32* %4, align 4
  %67 = add nsw i32 %66, 1
  %68 = sext i32 %67 to i64
  %69 = load i32, i32* %6, align 4
  %70 = mul nsw i32 7, %69
  %71 = zext i32 %70 to i64
  %72 = shl i64 1, %71
  %73 = icmp eq i64 %68, %72
  br i1 %73, label %74, label %81

74:                                               ; preds = %65
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = sub nsw i32 %77, 4
  %79 = load i32, i32* %6, align 4
  %80 = sub nsw i32 %78, %79
  store i32 %80, i32* %4, align 4
  br label %92

81:                                               ; preds = %65
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* %6, align 4
  %86 = add nsw i32 4, %85
  %87 = load i32, i32* %4, align 4
  %88 = add nsw i32 %86, %87
  %89 = icmp slt i32 %84, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %81
  store i32 0, i32* %2, align 4
  br label %151

91:                                               ; preds = %81
  br label %92

92:                                               ; preds = %91, %74
  store i32 0, i32* %8, align 4
  br label %93

93:                                               ; preds = %146, %92
  %94 = load i32, i32* %8, align 4
  %95 = load i32*, i32** @matroska_doctypes, align 8
  %96 = call i32 @FF_ARRAY_ELEMS(i32* %95)
  %97 = icmp slt i32 %94, %96
  br i1 %97, label %98, label %149

98:                                               ; preds = %93
  %99 = load i32*, i32** @matroska_doctypes, align 8
  %100 = load i32, i32* %8, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = call i64 @strlen(i32 %103)
  store i64 %104, i64* %9, align 8
  %105 = load i32, i32* %4, align 4
  %106 = sext i32 %105 to i64
  %107 = load i64, i64* %9, align 8
  %108 = icmp ult i64 %106, %107
  br i1 %108, label %109, label %110

109:                                              ; preds = %98
  br label %146

110:                                              ; preds = %98
  %111 = load i32, i32* %6, align 4
  %112 = add nsw i32 4, %111
  store i32 %112, i32* %7, align 4
  br label %113

113:                                              ; preds = %142, %110
  %114 = load i32, i32* %7, align 4
  %115 = sext i32 %114 to i64
  %116 = load i32, i32* %6, align 4
  %117 = add nsw i32 4, %116
  %118 = load i32, i32* %4, align 4
  %119 = add nsw i32 %117, %118
  %120 = sext i32 %119 to i64
  %121 = load i64, i64* %9, align 8
  %122 = sub i64 %120, %121
  %123 = icmp ule i64 %115, %122
  br i1 %123, label %124, label %145

124:                                              ; preds = %113
  %125 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 0
  %127 = load i32*, i32** %126, align 8
  %128 = load i32, i32* %7, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %127, i64 %129
  %131 = load i32*, i32** @matroska_doctypes, align 8
  %132 = load i32, i32* %8, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %131, i64 %133
  %135 = load i32, i32* %134, align 4
  %136 = load i64, i64* %9, align 8
  %137 = call i32 @memcmp(i32* %130, i32 %135, i64 %136)
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %141, label %139

139:                                              ; preds = %124
  %140 = load i32, i32* @AVPROBE_SCORE_MAX, align 4
  store i32 %140, i32* %2, align 4
  br label %151

141:                                              ; preds = %124
  br label %142

142:                                              ; preds = %141
  %143 = load i32, i32* %7, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %7, align 4
  br label %113

145:                                              ; preds = %113
  br label %146

146:                                              ; preds = %145, %109
  %147 = load i32, i32* %8, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %8, align 4
  br label %93

149:                                              ; preds = %93
  %150 = load i32, i32* @AVPROBE_SCORE_EXTENSION, align 4
  store i32 %150, i32* %2, align 4
  br label %151

151:                                              ; preds = %149, %139, %90, %42, %16
  %152 = load i32, i32* %2, align 4
  ret i32 %152
}

declare dso_local i64 @AV_RB32(i32*) #1

declare dso_local i32 @FF_ARRAY_ELEMS(i32*) #1

declare dso_local i64 @strlen(i32) #1

declare dso_local i32 @memcmp(i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
