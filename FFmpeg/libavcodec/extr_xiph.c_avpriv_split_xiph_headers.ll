; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_xiph.c_avpriv_split_xiph_headers.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_xiph.c_avpriv_split_xiph_headers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INT_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @avpriv_split_xiph_headers(i32* %0, i32 %1, i32 %2, i32** %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32** %3, i32*** %10, align 8
  store i32* %4, i32** %11, align 8
  %15 = load i32, i32* %8, align 4
  %16 = icmp sge i32 %15, 6
  br i1 %16, label %17, label %70

17:                                               ; preds = %5
  %18 = load i32*, i32** %7, align 8
  %19 = call i32 @AV_RB16(i32* %18)
  %20 = load i32, i32* %9, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %70

22:                                               ; preds = %17
  store i32 6, i32* %13, align 4
  store i32 0, i32* %12, align 4
  br label %23

23:                                               ; preds = %66, %22
  %24 = load i32, i32* %12, align 4
  %25 = icmp slt i32 %24, 3
  br i1 %25, label %26, label %69

26:                                               ; preds = %23
  %27 = load i32*, i32** %7, align 8
  %28 = call i32 @AV_RB16(i32* %27)
  %29 = load i32*, i32** %11, align 8
  %30 = load i32, i32* %12, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  store i32 %28, i32* %32, align 4
  %33 = load i32*, i32** %7, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 2
  store i32* %34, i32** %7, align 8
  %35 = load i32*, i32** %7, align 8
  %36 = load i32**, i32*** %10, align 8
  %37 = load i32, i32* %12, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32*, i32** %36, i64 %38
  store i32* %35, i32** %39, align 8
  %40 = load i32*, i32** %11, align 8
  %41 = load i32, i32* %12, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = load i32*, i32** %7, align 8
  %46 = sext i32 %44 to i64
  %47 = getelementptr inbounds i32, i32* %45, i64 %46
  store i32* %47, i32** %7, align 8
  %48 = load i32, i32* %13, align 4
  %49 = load i32, i32* %8, align 4
  %50 = load i32*, i32** %11, align 8
  %51 = load i32, i32* %12, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = sub nsw i32 %49, %54
  %56 = icmp sgt i32 %48, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %26
  store i32 -1, i32* %6, align 4
  br label %171

58:                                               ; preds = %26
  %59 = load i32*, i32** %11, align 8
  %60 = load i32, i32* %12, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %13, align 4
  %65 = add nsw i32 %64, %63
  store i32 %65, i32* %13, align 4
  br label %66

66:                                               ; preds = %58
  %67 = load i32, i32* %12, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %12, align 4
  br label %23

69:                                               ; preds = %23
  br label %170

70:                                               ; preds = %17, %5
  %71 = load i32, i32* %8, align 4
  %72 = icmp sge i32 %71, 3
  br i1 %72, label %73, label %168

73:                                               ; preds = %70
  %74 = load i32, i32* %8, align 4
  %75 = load i32, i32* @INT_MAX, align 4
  %76 = sub nsw i32 %75, 511
  %77 = icmp slt i32 %74, %76
  br i1 %77, label %78, label %168

78:                                               ; preds = %73
  %79 = load i32*, i32** %7, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 0
  %81 = load i32, i32* %80, align 4
  %82 = icmp eq i32 %81, 2
  br i1 %82, label %83, label %168

83:                                               ; preds = %78
  store i32 3, i32* %14, align 4
  %84 = load i32*, i32** %7, align 8
  %85 = getelementptr inbounds i32, i32* %84, i32 1
  store i32* %85, i32** %7, align 8
  store i32 0, i32* %12, align 4
  br label %86

86:                                               ; preds = %134, %83
  %87 = load i32, i32* %12, align 4
  %88 = icmp slt i32 %87, 2
  br i1 %88, label %89, label %139

89:                                               ; preds = %86
  %90 = load i32*, i32** %11, align 8
  %91 = load i32, i32* %12, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  store i32 0, i32* %93, align 4
  br label %94

94:                                               ; preds = %113, %89
  %95 = load i32, i32* %14, align 4
  %96 = load i32, i32* %8, align 4
  %97 = icmp slt i32 %95, %96
  br i1 %97, label %98, label %102

98:                                               ; preds = %94
  %99 = load i32*, i32** %7, align 8
  %100 = load i32, i32* %99, align 4
  %101 = icmp eq i32 %100, 255
  br label %102

102:                                              ; preds = %98, %94
  %103 = phi i1 [ false, %94 ], [ %101, %98 ]
  br i1 %103, label %104, label %116

104:                                              ; preds = %102
  %105 = load i32*, i32** %11, align 8
  %106 = load i32, i32* %12, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = add nsw i32 %109, 255
  store i32 %110, i32* %108, align 4
  %111 = load i32, i32* %14, align 4
  %112 = add nsw i32 %111, 256
  store i32 %112, i32* %14, align 4
  br label %113

113:                                              ; preds = %104
  %114 = load i32*, i32** %7, align 8
  %115 = getelementptr inbounds i32, i32* %114, i32 1
  store i32* %115, i32** %7, align 8
  br label %94

116:                                              ; preds = %102
  %117 = load i32*, i32** %7, align 8
  %118 = load i32, i32* %117, align 4
  %119 = load i32*, i32** %11, align 8
  %120 = load i32, i32* %12, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %119, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = add nsw i32 %123, %118
  store i32 %124, i32* %122, align 4
  %125 = load i32*, i32** %7, align 8
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* %14, align 4
  %128 = add nsw i32 %127, %126
  store i32 %128, i32* %14, align 4
  %129 = load i32, i32* %14, align 4
  %130 = load i32, i32* %8, align 4
  %131 = icmp sgt i32 %129, %130
  br i1 %131, label %132, label %133

132:                                              ; preds = %116
  store i32 -1, i32* %6, align 4
  br label %171

133:                                              ; preds = %116
  br label %134

134:                                              ; preds = %133
  %135 = load i32, i32* %12, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %12, align 4
  %137 = load i32*, i32** %7, align 8
  %138 = getelementptr inbounds i32, i32* %137, i32 1
  store i32* %138, i32** %7, align 8
  br label %86

139:                                              ; preds = %86
  %140 = load i32, i32* %8, align 4
  %141 = load i32, i32* %14, align 4
  %142 = sub nsw i32 %140, %141
  %143 = load i32*, i32** %11, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 2
  store i32 %142, i32* %144, align 4
  %145 = load i32*, i32** %7, align 8
  %146 = load i32**, i32*** %10, align 8
  %147 = getelementptr inbounds i32*, i32** %146, i64 0
  store i32* %145, i32** %147, align 8
  %148 = load i32**, i32*** %10, align 8
  %149 = getelementptr inbounds i32*, i32** %148, i64 0
  %150 = load i32*, i32** %149, align 8
  %151 = load i32*, i32** %11, align 8
  %152 = getelementptr inbounds i32, i32* %151, i64 0
  %153 = load i32, i32* %152, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %150, i64 %154
  %156 = load i32**, i32*** %10, align 8
  %157 = getelementptr inbounds i32*, i32** %156, i64 1
  store i32* %155, i32** %157, align 8
  %158 = load i32**, i32*** %10, align 8
  %159 = getelementptr inbounds i32*, i32** %158, i64 1
  %160 = load i32*, i32** %159, align 8
  %161 = load i32*, i32** %11, align 8
  %162 = getelementptr inbounds i32, i32* %161, i64 1
  %163 = load i32, i32* %162, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i32, i32* %160, i64 %164
  %166 = load i32**, i32*** %10, align 8
  %167 = getelementptr inbounds i32*, i32** %166, i64 2
  store i32* %165, i32** %167, align 8
  br label %169

168:                                              ; preds = %78, %73, %70
  store i32 -1, i32* %6, align 4
  br label %171

169:                                              ; preds = %139
  br label %170

170:                                              ; preds = %169, %69
  store i32 0, i32* %6, align 4
  br label %171

171:                                              ; preds = %170, %168, %132, %57
  %172 = load i32, i32* %6, align 4
  ret i32 %172
}

declare dso_local i32 @AV_RB16(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
