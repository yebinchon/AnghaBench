; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_sgirledec.c_decode_sgirle8.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_sgirledec.c_decode_sgirle8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"opcode %d\00", align 1
@AVERROR_PATCHWELCOME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*, i32, i32, i32, i32)* @decode_sgirle8 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_sgirle8(i32* %0, i32* %1, i32* %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32* %2, i32** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %22 = load i32*, i32** %11, align 8
  %23 = load i32, i32* %12, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  store i32* %25, i32** %16, align 8
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  br label %26

26:                                               ; preds = %169, %7
  %27 = load i32*, i32** %16, align 8
  %28 = load i32*, i32** %11, align 8
  %29 = ptrtoint i32* %27 to i64
  %30 = ptrtoint i32* %28 to i64
  %31 = sub i64 %29, %30
  %32 = sdiv exact i64 %31, 4
  %33 = icmp sge i64 %32, 2
  br i1 %33, label %34, label %170

34:                                               ; preds = %26
  %35 = load i32*, i32** %11, align 8
  %36 = getelementptr inbounds i32, i32* %35, i32 1
  store i32* %36, i32** %11, align 8
  %37 = load i32, i32* %35, align 4
  store i32 %37, i32* %19, align 4
  %38 = load i32, i32* %19, align 4
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %40, label %92

40:                                               ; preds = %34
  %41 = load i32, i32* %19, align 4
  %42 = icmp slt i32 %41, 192
  br i1 %42, label %43, label %92

43:                                               ; preds = %40
  br label %44

44:                                               ; preds = %86, %43
  %45 = load i32, i32* %19, align 4
  %46 = load i32, i32* %13, align 4
  %47 = load i32, i32* %17, align 4
  %48 = sub nsw i32 %46, %47
  %49 = call i32 @FFMIN(i32 %45, i32 %48)
  store i32 %49, i32* %20, align 4
  %50 = load i32, i32* %20, align 4
  %51 = icmp sle i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %44
  br label %89

53:                                               ; preds = %44
  %54 = load i32*, i32** %10, align 8
  %55 = load i32, i32* %18, align 4
  %56 = load i32, i32* %15, align 4
  %57 = mul nsw i32 %55, %56
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %54, i64 %58
  %60 = load i32, i32* %17, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32*, i32** %11, align 8
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @RBG323_TO_BGR8(i32 %64)
  %66 = load i32, i32* %20, align 4
  %67 = call i32 @memset(i32* %62, i32 %65, i32 %66)
  %68 = load i32, i32* %20, align 4
  %69 = load i32, i32* %17, align 4
  %70 = add nsw i32 %69, %68
  store i32 %70, i32* %17, align 4
  %71 = load i32, i32* %17, align 4
  %72 = load i32, i32* %13, align 4
  %73 = icmp sge i32 %71, %72
  br i1 %73, label %74, label %82

74:                                               ; preds = %53
  %75 = load i32, i32* %18, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %18, align 4
  %77 = load i32, i32* %18, align 4
  %78 = load i32, i32* %14, align 4
  %79 = icmp sge i32 %77, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %74
  store i32 0, i32* %8, align 4
  br label %171

81:                                               ; preds = %74
  store i32 0, i32* %17, align 4
  br label %82

82:                                               ; preds = %81, %53
  %83 = load i32, i32* %20, align 4
  %84 = load i32, i32* %19, align 4
  %85 = sub nsw i32 %84, %83
  store i32 %85, i32* %19, align 4
  br label %86

86:                                               ; preds = %82
  %87 = load i32, i32* %19, align 4
  %88 = icmp sgt i32 %87, 0
  br i1 %88, label %44, label %89

89:                                               ; preds = %86, %52
  %90 = load i32*, i32** %11, align 8
  %91 = getelementptr inbounds i32, i32* %90, i32 1
  store i32* %91, i32** %11, align 8
  br label %169

92:                                               ; preds = %40, %34
  %93 = load i32, i32* %19, align 4
  %94 = icmp sge i32 %93, 193
  br i1 %94, label %95, label %163

95:                                               ; preds = %92
  %96 = load i32, i32* %19, align 4
  %97 = sub nsw i32 %96, 192
  store i32 %97, i32* %19, align 4
  br label %98

98:                                               ; preds = %159, %95
  %99 = load i32, i32* %19, align 4
  %100 = load i32, i32* %13, align 4
  %101 = load i32, i32* %17, align 4
  %102 = sub nsw i32 %100, %101
  %103 = load i32*, i32** %16, align 8
  %104 = load i32*, i32** %11, align 8
  %105 = ptrtoint i32* %103 to i64
  %106 = ptrtoint i32* %104 to i64
  %107 = sub i64 %105, %106
  %108 = sdiv exact i64 %107, 4
  %109 = trunc i64 %108 to i32
  %110 = call i32 @FFMIN3(i32 %99, i32 %102, i32 %109)
  store i32 %110, i32* %21, align 4
  %111 = load i32*, i32** %16, align 8
  %112 = load i32*, i32** %11, align 8
  %113 = ptrtoint i32* %111 to i64
  %114 = ptrtoint i32* %112 to i64
  %115 = sub i64 %113, %114
  %116 = sdiv exact i64 %115, 4
  %117 = load i32, i32* %21, align 4
  %118 = sext i32 %117 to i64
  %119 = icmp slt i64 %116, %118
  br i1 %119, label %123, label %120

120:                                              ; preds = %98
  %121 = load i32, i32* %21, align 4
  %122 = icmp sle i32 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %120, %98
  br label %162

124:                                              ; preds = %120
  %125 = load i32*, i32** %10, align 8
  %126 = load i32, i32* %18, align 4
  %127 = load i32, i32* %15, align 4
  %128 = mul nsw i32 %126, %127
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %125, i64 %129
  %131 = load i32, i32* %17, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %130, i64 %132
  %134 = load i32*, i32** %11, align 8
  %135 = load i32, i32* %21, align 4
  %136 = call i32 @rbg323_to_bgr8(i32* %133, i32* %134, i32 %135)
  %137 = load i32, i32* %21, align 4
  %138 = load i32, i32* %17, align 4
  %139 = add nsw i32 %138, %137
  store i32 %139, i32* %17, align 4
  %140 = load i32, i32* %17, align 4
  %141 = load i32, i32* %13, align 4
  %142 = icmp sge i32 %140, %141
  br i1 %142, label %143, label %151

143:                                              ; preds = %124
  %144 = load i32, i32* %18, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %18, align 4
  %146 = load i32, i32* %18, align 4
  %147 = load i32, i32* %14, align 4
  %148 = icmp sge i32 %146, %147
  br i1 %148, label %149, label %150

149:                                              ; preds = %143
  store i32 0, i32* %8, align 4
  br label %171

150:                                              ; preds = %143
  store i32 0, i32* %17, align 4
  br label %151

151:                                              ; preds = %150, %124
  %152 = load i32, i32* %21, align 4
  %153 = load i32*, i32** %11, align 8
  %154 = sext i32 %152 to i64
  %155 = getelementptr inbounds i32, i32* %153, i64 %154
  store i32* %155, i32** %11, align 8
  %156 = load i32, i32* %21, align 4
  %157 = load i32, i32* %19, align 4
  %158 = sub nsw i32 %157, %156
  store i32 %158, i32* %19, align 4
  br label %159

159:                                              ; preds = %151
  %160 = load i32, i32* %19, align 4
  %161 = icmp sgt i32 %160, 0
  br i1 %161, label %98, label %162

162:                                              ; preds = %159, %123
  br label %168

163:                                              ; preds = %92
  %164 = load i32*, i32** %9, align 8
  %165 = load i32, i32* %19, align 4
  %166 = call i32 @avpriv_request_sample(i32* %164, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %165)
  %167 = load i32, i32* @AVERROR_PATCHWELCOME, align 4
  store i32 %167, i32* %8, align 4
  br label %171

168:                                              ; preds = %162
  br label %169

169:                                              ; preds = %168, %89
  br label %26

170:                                              ; preds = %26
  store i32 0, i32* %8, align 4
  br label %171

171:                                              ; preds = %170, %163, %149, %80
  %172 = load i32, i32* %8, align 4
  ret i32 %172
}

declare dso_local i32 @FFMIN(i32, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @RBG323_TO_BGR8(i32) #1

declare dso_local i32 @FFMIN3(i32, i32, i32) #1

declare dso_local i32 @rbg323_to_bgr8(i32*, i32*, i32) #1

declare dso_local i32 @avpriv_request_sample(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
