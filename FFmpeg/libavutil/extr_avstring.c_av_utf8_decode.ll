; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/extr_avstring.c_av_utf8_decode.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/extr_avstring.c_av_utf8_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.av_utf8_decode.overlong_encoding_mins = private unnamed_addr constant [6 x i32] [i32 0, i32 128, i32 2048, i32 65536, i32 2097152, i32 67108864], align 16
@EILSEQ = common dso_local global i32 0, align 4
@AV_UTF8_FLAG_ACCEPT_INVALID_BIG_CODES = common dso_local global i32 0, align 4
@AV_UTF8_FLAG_EXCLUDE_XML_INVALID_CONTROL_CODES = common dso_local global i32 0, align 4
@AV_UTF8_FLAG_ACCEPT_SURROGATES = common dso_local global i32 0, align 4
@AV_UTF8_FLAG_ACCEPT_NON_CHARACTERS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @av_utf8_decode(i32* %0, i32** %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca [6 x i32], align 16
  %16 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32** %1, i32*** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %17 = load i32**, i32*** %7, align 8
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %10, align 8
  store i32 0, i32* %13, align 4
  %19 = bitcast [6 x i32]* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %19, i8* align 16 bitcast ([6 x i32]* @__const.av_utf8_decode.overlong_encoding_mins to i8*), i64 24, i1 false)
  %20 = load i32*, i32** %10, align 8
  %21 = load i32*, i32** %8, align 8
  %22 = icmp uge i32* %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %170

24:                                               ; preds = %4
  %25 = load i32*, i32** %10, align 8
  %26 = getelementptr inbounds i32, i32* %25, i32 1
  store i32* %26, i32** %10, align 8
  %27 = load i32, i32* %25, align 4
  store i32 %27, i32* %12, align 4
  %28 = load i32, i32* %12, align 4
  %29 = and i32 %28, 192
  %30 = icmp eq i32 %29, 128
  br i1 %30, label %34, label %31

31:                                               ; preds = %24
  %32 = load i32, i32* %12, align 4
  %33 = icmp sge i32 %32, 254
  br i1 %33, label %34, label %37

34:                                               ; preds = %31, %24
  %35 = load i32, i32* @EILSEQ, align 4
  %36 = call i32 @AVERROR(i32 %35)
  store i32 %36, i32* %13, align 4
  br label %166

37:                                               ; preds = %31
  %38 = load i32, i32* %12, align 4
  %39 = and i32 %38, 128
  %40 = ashr i32 %39, 1
  store i32 %40, i32* %11, align 4
  store i32 0, i32* %14, align 4
  br label %41

41:                                               ; preds = %72, %37
  %42 = load i32, i32* %12, align 4
  %43 = load i32, i32* %11, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %79

46:                                               ; preds = %41
  %47 = load i32, i32* %14, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %14, align 4
  %49 = load i32*, i32** %10, align 8
  %50 = load i32*, i32** %8, align 8
  %51 = icmp uge i32* %49, %50
  br i1 %51, label %52, label %58

52:                                               ; preds = %46
  %53 = load i32**, i32*** %7, align 8
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i32 1
  store i32* %55, i32** %53, align 8
  %56 = load i32, i32* @EILSEQ, align 4
  %57 = call i32 @AVERROR(i32 %56)
  store i32 %57, i32* %5, align 4
  br label %170

58:                                               ; preds = %46
  %59 = load i32*, i32** %10, align 8
  %60 = getelementptr inbounds i32, i32* %59, i32 1
  store i32* %60, i32** %10, align 8
  %61 = load i32, i32* %59, align 4
  %62 = sub nsw i32 %61, 128
  store i32 %62, i32* %16, align 4
  %63 = load i32, i32* %16, align 4
  %64 = ashr i32 %63, 6
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %58
  %67 = load i32**, i32*** %7, align 8
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i32 1
  store i32* %69, i32** %67, align 8
  %70 = load i32, i32* @EILSEQ, align 4
  %71 = call i32 @AVERROR(i32 %70)
  store i32 %71, i32* %5, align 4
  br label %170

72:                                               ; preds = %58
  %73 = load i32, i32* %12, align 4
  %74 = shl i32 %73, 6
  %75 = load i32, i32* %16, align 4
  %76 = add nsw i32 %74, %75
  store i32 %76, i32* %12, align 4
  %77 = load i32, i32* %11, align 4
  %78 = shl i32 %77, 5
  store i32 %78, i32* %11, align 4
  br label %41

79:                                               ; preds = %41
  %80 = load i32, i32* %11, align 4
  %81 = shl i32 %80, 1
  %82 = sub nsw i32 %81, 1
  %83 = load i32, i32* %12, align 4
  %84 = and i32 %83, %82
  store i32 %84, i32* %12, align 4
  %85 = load i32, i32* %14, align 4
  %86 = icmp sle i32 %85, 5
  %87 = zext i1 %86 to i32
  %88 = call i32 @av_assert0(i32 %87)
  %89 = load i32, i32* %12, align 4
  %90 = load i32, i32* %14, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds [6 x i32], [6 x i32]* %15, i64 0, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = icmp slt i32 %89, %93
  br i1 %94, label %95, label %98

95:                                               ; preds = %79
  %96 = load i32, i32* @EILSEQ, align 4
  %97 = call i32 @AVERROR(i32 %96)
  store i32 %97, i32* %13, align 4
  br label %166

98:                                               ; preds = %79
  %99 = load i32, i32* %12, align 4
  %100 = icmp uge i32 %99, -2147483648
  br i1 %100, label %101, label %104

101:                                              ; preds = %98
  %102 = load i32, i32* @EILSEQ, align 4
  %103 = call i32 @AVERROR(i32 %102)
  store i32 %103, i32* %13, align 4
  br label %166

104:                                              ; preds = %98
  %105 = load i32, i32* %12, align 4
  %106 = load i32*, i32** %6, align 8
  store i32 %105, i32* %106, align 4
  %107 = load i32, i32* %12, align 4
  %108 = icmp sgt i32 %107, 1114111
  br i1 %108, label %109, label %117

109:                                              ; preds = %104
  %110 = load i32, i32* %9, align 4
  %111 = load i32, i32* @AV_UTF8_FLAG_ACCEPT_INVALID_BIG_CODES, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %117, label %114

114:                                              ; preds = %109
  %115 = load i32, i32* @EILSEQ, align 4
  %116 = call i32 @AVERROR(i32 %115)
  store i32 %116, i32* %13, align 4
  br label %117

117:                                              ; preds = %114, %109, %104
  %118 = load i32, i32* %12, align 4
  %119 = icmp slt i32 %118, 32
  br i1 %119, label %120, label %137

120:                                              ; preds = %117
  %121 = load i32, i32* %12, align 4
  %122 = icmp ne i32 %121, 9
  br i1 %122, label %123, label %137

123:                                              ; preds = %120
  %124 = load i32, i32* %12, align 4
  %125 = icmp ne i32 %124, 10
  br i1 %125, label %126, label %137

126:                                              ; preds = %123
  %127 = load i32, i32* %12, align 4
  %128 = icmp ne i32 %127, 13
  br i1 %128, label %129, label %137

129:                                              ; preds = %126
  %130 = load i32, i32* %9, align 4
  %131 = load i32, i32* @AV_UTF8_FLAG_EXCLUDE_XML_INVALID_CONTROL_CODES, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %129
  %135 = load i32, i32* @EILSEQ, align 4
  %136 = call i32 @AVERROR(i32 %135)
  store i32 %136, i32* %13, align 4
  br label %137

137:                                              ; preds = %134, %129, %126, %123, %120, %117
  %138 = load i32, i32* %12, align 4
  %139 = icmp sge i32 %138, 55296
  br i1 %139, label %140, label %151

140:                                              ; preds = %137
  %141 = load i32, i32* %12, align 4
  %142 = icmp sle i32 %141, 57343
  br i1 %142, label %143, label %151

143:                                              ; preds = %140
  %144 = load i32, i32* %9, align 4
  %145 = load i32, i32* @AV_UTF8_FLAG_ACCEPT_SURROGATES, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %151, label %148

148:                                              ; preds = %143
  %149 = load i32, i32* @EILSEQ, align 4
  %150 = call i32 @AVERROR(i32 %149)
  store i32 %150, i32* %13, align 4
  br label %151

151:                                              ; preds = %148, %143, %140, %137
  %152 = load i32, i32* %12, align 4
  %153 = icmp eq i32 %152, 65534
  br i1 %153, label %157, label %154

154:                                              ; preds = %151
  %155 = load i32, i32* %12, align 4
  %156 = icmp eq i32 %155, 65535
  br i1 %156, label %157, label %165

157:                                              ; preds = %154, %151
  %158 = load i32, i32* %9, align 4
  %159 = load i32, i32* @AV_UTF8_FLAG_ACCEPT_NON_CHARACTERS, align 4
  %160 = and i32 %158, %159
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %165, label %162

162:                                              ; preds = %157
  %163 = load i32, i32* @EILSEQ, align 4
  %164 = call i32 @AVERROR(i32 %163)
  store i32 %164, i32* %13, align 4
  br label %165

165:                                              ; preds = %162, %157, %154
  br label %166

166:                                              ; preds = %165, %101, %95, %34
  %167 = load i32*, i32** %10, align 8
  %168 = load i32**, i32*** %7, align 8
  store i32* %167, i32** %168, align 8
  %169 = load i32, i32* %13, align 4
  store i32 %169, i32* %5, align 4
  br label %170

170:                                              ; preds = %166, %66, %52, %23
  %171 = load i32, i32* %5, align 4
  ret i32 %171
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @AVERROR(i32) #2

declare dso_local i32 @av_assert0(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
