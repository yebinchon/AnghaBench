; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/tests/extr_pixelutils.c_main.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/tests/extr_pixelutils.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@W1 = common dso_local global i32 0, align 4
@H1 = common dso_local global i32 0, align 4
@W2 = common dso_local global i32 0, align 4
@H2 = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"malloc failure\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"random\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"max\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"min\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"small\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %14 = load i32, i32* @W1, align 4
  %15 = load i32, i32* @H1, align 4
  %16 = mul nsw i32 %14, %15
  %17 = call i32* @av_malloc(i32 %16)
  store i32* %17, i32** %5, align 8
  %18 = load i32, i32* @W2, align 4
  %19 = load i32, i32* @H2, align 4
  %20 = mul nsw i32 %18, %19
  %21 = call i32* @av_malloc(i32 %20)
  store i32* %21, i32** %6, align 8
  store i32 0, i32* %7, align 4
  %22 = load i32*, i32** %5, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %0
  %25 = load i32*, i32** %6, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %24, %0
  %28 = load i32, i32* @stderr, align 4
  %29 = call i32 @fprintf(i32 %28, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %4, align 4
  br label %215

30:                                               ; preds = %24
  %31 = call i32 (...) @ff_check_pixfmt_descriptors()
  br label %32

32:                                               ; preds = %30
  store i32 0, i32* %8, align 4
  br label %33

33:                                               ; preds = %49, %32
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* @W1, align 4
  %36 = load i32, i32* @H1, align 4
  %37 = mul nsw i32 %35, %36
  %38 = icmp slt i32 %34, %37
  br i1 %38, label %39, label %52

39:                                               ; preds = %33
  %40 = load i32, i32* %7, align 4
  %41 = mul nsw i32 %40, 1664525
  %42 = add nsw i32 %41, 1013904223
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = ashr i32 %43, 24
  %45 = load i32*, i32** %5, align 8
  %46 = load i32, i32* %8, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  store i32 %44, i32* %48, align 4
  br label %49

49:                                               ; preds = %39
  %50 = load i32, i32* %8, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %8, align 4
  br label %33

52:                                               ; preds = %33
  br label %53

53:                                               ; preds = %52
  br label %54

54:                                               ; preds = %53
  store i32 0, i32* %9, align 4
  br label %55

55:                                               ; preds = %71, %54
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* @W2, align 4
  %58 = load i32, i32* @H2, align 4
  %59 = mul nsw i32 %57, %58
  %60 = icmp slt i32 %56, %59
  br i1 %60, label %61, label %74

61:                                               ; preds = %55
  %62 = load i32, i32* %7, align 4
  %63 = mul nsw i32 %62, 1664525
  %64 = add nsw i32 %63, 1013904223
  store i32 %64, i32* %7, align 4
  %65 = load i32, i32* %7, align 4
  %66 = ashr i32 %65, 24
  %67 = load i32*, i32** %6, align 8
  %68 = load i32, i32* %9, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  store i32 %66, i32* %70, align 4
  br label %71

71:                                               ; preds = %61
  %72 = load i32, i32* %9, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %9, align 4
  br label %55

74:                                               ; preds = %55
  br label %75

75:                                               ; preds = %74
  %76 = load i32*, i32** %5, align 8
  %77 = load i32*, i32** %6, align 8
  %78 = call i32 @run_test(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32* %76, i32* %77)
  store i32 %78, i32* %4, align 4
  %79 = load i32, i32* %4, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %75
  br label %215

82:                                               ; preds = %75
  %83 = load i32*, i32** %5, align 8
  %84 = load i32, i32* @W1, align 4
  %85 = load i32, i32* @H1, align 4
  %86 = mul nsw i32 %84, %85
  %87 = call i32 @memset(i32* %83, i32 255, i32 %86)
  %88 = load i32*, i32** %6, align 8
  %89 = load i32, i32* @W2, align 4
  %90 = load i32, i32* @H2, align 4
  %91 = mul nsw i32 %89, %90
  %92 = call i32 @memset(i32* %88, i32 0, i32 %91)
  %93 = load i32*, i32** %5, align 8
  %94 = load i32*, i32** %6, align 8
  %95 = call i32 @run_test(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32* %93, i32* %94)
  store i32 %95, i32* %4, align 4
  %96 = load i32, i32* %4, align 4
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %82
  br label %215

99:                                               ; preds = %82
  %100 = load i32*, i32** %5, align 8
  %101 = load i32, i32* @W1, align 4
  %102 = load i32, i32* @H1, align 4
  %103 = mul nsw i32 %101, %102
  %104 = call i32 @memset(i32* %100, i32 144, i32 %103)
  %105 = load i32*, i32** %6, align 8
  %106 = load i32, i32* @W2, align 4
  %107 = load i32, i32* @H2, align 4
  %108 = mul nsw i32 %106, %107
  %109 = call i32 @memset(i32* %105, i32 144, i32 %108)
  %110 = load i32*, i32** %5, align 8
  %111 = load i32*, i32** %6, align 8
  %112 = call i32 @run_test(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32* %110, i32* %111)
  store i32 %112, i32* %4, align 4
  %113 = load i32, i32* %4, align 4
  %114 = icmp slt i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %99
  br label %215

116:                                              ; preds = %99
  store i32 1, i32* %2, align 4
  br label %117

117:                                              ; preds = %211, %116
  %118 = load i32, i32* %2, align 4
  %119 = icmp sle i32 %118, 5
  br i1 %119, label %120, label %214

120:                                              ; preds = %117
  store i32 0, i32* %3, align 4
  br label %121

121:                                              ; preds = %207, %120
  %122 = load i32, i32* %3, align 4
  %123 = icmp slt i32 %122, 3
  br i1 %123, label %124, label %210

124:                                              ; preds = %121
  %125 = call i32 @av_freep(i32** %5)
  %126 = call i32 @av_freep(i32** %6)
  %127 = load i32, i32* %2, align 4
  %128 = shl i32 %127, 1
  %129 = shl i32 1, %128
  store i32 %129, i32* %11, align 4
  store i32 %129, i32* %10, align 4
  %130 = load i32, i32* %3, align 4
  switch i32 %130, label %140 [
    i32 0, label %131
    i32 1, label %136
    i32 2, label %139
  ]

131:                                              ; preds = %124
  %132 = load i32, i32* %10, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %10, align 4
  %134 = load i32, i32* %11, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %11, align 4
  br label %140

136:                                              ; preds = %124
  %137 = load i32, i32* %11, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %11, align 4
  br label %140

139:                                              ; preds = %124
  br label %140

140:                                              ; preds = %124, %139, %136, %131
  %141 = load i32, i32* %10, align 4
  %142 = call i32* @av_malloc(i32 %141)
  store i32* %142, i32** %5, align 8
  %143 = load i32, i32* %11, align 4
  %144 = call i32* @av_malloc(i32 %143)
  store i32* %144, i32** %6, align 8
  %145 = load i32*, i32** %5, align 8
  %146 = icmp ne i32* %145, null
  br i1 %146, label %147, label %150

147:                                              ; preds = %140
  %148 = load i32*, i32** %6, align 8
  %149 = icmp ne i32* %148, null
  br i1 %149, label %153, label %150

150:                                              ; preds = %147, %140
  %151 = load i32, i32* @stderr, align 4
  %152 = call i32 @fprintf(i32 %151, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %4, align 4
  br label %215

153:                                              ; preds = %147
  br label %154

154:                                              ; preds = %153
  store i32 0, i32* %12, align 4
  br label %155

155:                                              ; preds = %169, %154
  %156 = load i32, i32* %12, align 4
  %157 = load i32, i32* %10, align 4
  %158 = icmp slt i32 %156, %157
  br i1 %158, label %159, label %172

159:                                              ; preds = %155
  %160 = load i32, i32* %7, align 4
  %161 = mul nsw i32 %160, 1664525
  %162 = add nsw i32 %161, 1013904223
  store i32 %162, i32* %7, align 4
  %163 = load i32, i32* %7, align 4
  %164 = ashr i32 %163, 24
  %165 = load i32*, i32** %5, align 8
  %166 = load i32, i32* %12, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i32, i32* %165, i64 %167
  store i32 %164, i32* %168, align 4
  br label %169

169:                                              ; preds = %159
  %170 = load i32, i32* %12, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %12, align 4
  br label %155

172:                                              ; preds = %155
  br label %173

173:                                              ; preds = %172
  br label %174

174:                                              ; preds = %173
  store i32 0, i32* %13, align 4
  br label %175

175:                                              ; preds = %189, %174
  %176 = load i32, i32* %13, align 4
  %177 = load i32, i32* %11, align 4
  %178 = icmp slt i32 %176, %177
  br i1 %178, label %179, label %192

179:                                              ; preds = %175
  %180 = load i32, i32* %7, align 4
  %181 = mul nsw i32 %180, 1664525
  %182 = add nsw i32 %181, 1013904223
  store i32 %182, i32* %7, align 4
  %183 = load i32, i32* %7, align 4
  %184 = ashr i32 %183, 24
  %185 = load i32*, i32** %6, align 8
  %186 = load i32, i32* %13, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i32, i32* %185, i64 %187
  store i32 %184, i32* %188, align 4
  br label %189

189:                                              ; preds = %179
  %190 = load i32, i32* %13, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %13, align 4
  br label %175

192:                                              ; preds = %175
  br label %193

193:                                              ; preds = %192
  %194 = load i32*, i32** %5, align 8
  %195 = load i32, i32* %2, align 4
  %196 = shl i32 1, %195
  %197 = load i32*, i32** %6, align 8
  %198 = load i32, i32* %2, align 4
  %199 = shl i32 1, %198
  %200 = load i32, i32* %3, align 4
  %201 = load i32, i32* %2, align 4
  %202 = call i32 @run_single_test(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32* %194, i32 %196, i32* %197, i32 %199, i32 %200, i32 %201)
  store i32 %202, i32* %4, align 4
  %203 = load i32, i32* %4, align 4
  %204 = icmp slt i32 %203, 0
  br i1 %204, label %205, label %206

205:                                              ; preds = %193
  br label %215

206:                                              ; preds = %193
  br label %207

207:                                              ; preds = %206
  %208 = load i32, i32* %3, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %3, align 4
  br label %121

210:                                              ; preds = %121
  br label %211

211:                                              ; preds = %210
  %212 = load i32, i32* %2, align 4
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* %2, align 4
  br label %117

214:                                              ; preds = %117
  br label %215

215:                                              ; preds = %214, %205, %150, %115, %98, %81, %27
  %216 = load i32*, i32** %5, align 8
  %217 = call i32 @av_free(i32* %216)
  %218 = load i32*, i32** %6, align 8
  %219 = call i32 @av_free(i32* %218)
  %220 = load i32, i32* %4, align 4
  ret i32 %220
}

declare dso_local i32* @av_malloc(i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @ff_check_pixfmt_descriptors(...) #1

declare dso_local i32 @run_test(i8*, i32*, i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @av_freep(i32**) #1

declare dso_local i32 @run_single_test(i8*, i32*, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @av_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
