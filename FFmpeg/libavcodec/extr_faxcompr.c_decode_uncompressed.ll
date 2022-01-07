; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_faxcompr.c_decode_uncompressed.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_faxcompr.c_decode_uncompressed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Invalid uncompressed codeword\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"uncompressed run overrun\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"uncompressed run went out of bounds\0A\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"uncompressed run went out of boundsE\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*, i32**, i32*, i32*)* @decode_uncompressed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_uncompressed(i32* %0, i32* %1, i32* %2, i32** %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32**, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca [2 x i32], align 4
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32** %3, i32*** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %16, align 4
  br label %21

21:                                               ; preds = %126, %6
  store i32 0, i32* %19, align 4
  br label %22

22:                                               ; preds = %51, %21
  %23 = load i32*, i32** %9, align 8
  %24 = call i32 @show_bits(i32* %23, i32 11)
  store i32 %24, i32* %17, align 4
  %25 = load i32, i32* %17, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %22
  %28 = load i32*, i32** %8, align 8
  %29 = load i32, i32* @AV_LOG_ERROR, align 4
  %30 = call i32 @av_log(i32* %28, i32 %29, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %31, i32* %7, align 4
  br label %192

32:                                               ; preds = %22
  %33 = load i32, i32* %17, align 4
  %34 = call i32 @av_log2(i32 %33)
  %35 = sub nsw i32 10, %34
  store i32 %35, i32* %17, align 4
  %36 = load i32*, i32** %9, align 8
  %37 = load i32, i32* %17, align 4
  %38 = add nsw i32 %37, 1
  %39 = call i32 @skip_bits(i32* %36, i32 %38)
  %40 = load i32, i32* %17, align 4
  %41 = icmp sgt i32 %40, 5
  br i1 %41, label %42, label %47

42:                                               ; preds = %32
  %43 = load i32*, i32** %9, align 8
  %44 = call i32 @get_bits1(i32* %43)
  store i32 %44, i32* %15, align 4
  store i32 1, i32* %14, align 4
  %45 = load i32, i32* %17, align 4
  %46 = sub nsw i32 %45, 6
  store i32 %46, i32* %17, align 4
  br label %47

47:                                               ; preds = %42, %32
  %48 = load i32, i32* %17, align 4
  %49 = load i32, i32* %19, align 4
  %50 = add nsw i32 %49, %48
  store i32 %50, i32* %19, align 4
  br label %51

51:                                               ; preds = %47
  %52 = load i32, i32* %17, align 4
  %53 = icmp eq i32 %52, 5
  br i1 %53, label %22, label %54

54:                                               ; preds = %51
  %55 = load i32, i32* %19, align 4
  %56 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i64 0, i64 0
  store i32 %55, i32* %56, align 4
  %57 = load i32, i32* %14, align 4
  %58 = icmp ne i32 %57, 0
  %59 = xor i1 %58, true
  %60 = zext i1 %59 to i32
  %61 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i64 0, i64 1
  store i32 %60, i32* %61, align 4
  store i32 0, i32* %18, align 4
  br label %62

62:                                               ; preds = %122, %54
  %63 = load i32, i32* %18, align 4
  %64 = icmp slt i32 %63, 2
  br i1 %64, label %65, label %125

65:                                               ; preds = %62
  %66 = load i32, i32* %18, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i64 0, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %121

71:                                               ; preds = %65
  %72 = load i32*, i32** %13, align 8
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %18, align 4
  %75 = icmp ne i32 %74, 0
  %76 = xor i1 %75, true
  %77 = zext i1 %76 to i32
  %78 = icmp eq i32 %73, %77
  br i1 %78, label %79, label %114

79:                                               ; preds = %71
  %80 = load i32, i32* %16, align 4
  %81 = load i32**, i32*** %11, align 8
  %82 = load i32*, i32** %81, align 8
  %83 = getelementptr inbounds i32, i32* %82, i32 1
  store i32* %83, i32** %81, align 8
  store i32 %80, i32* %82, align 4
  %84 = load i32**, i32*** %11, align 8
  %85 = load i32*, i32** %84, align 8
  %86 = load i32*, i32** %12, align 8
  %87 = icmp uge i32* %85, %86
  br i1 %87, label %88, label %93

88:                                               ; preds = %79
  %89 = load i32*, i32** %8, align 8
  %90 = load i32, i32* @AV_LOG_ERROR, align 4
  %91 = call i32 @av_log(i32* %89, i32 %90, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %92 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %92, i32* %7, align 4
  br label %192

93:                                               ; preds = %79
  %94 = load i32*, i32** %10, align 8
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* %16, align 4
  %97 = icmp ule i32 %95, %96
  br i1 %97, label %98, label %103

98:                                               ; preds = %93
  %99 = load i32*, i32** %8, align 8
  %100 = load i32, i32* @AV_LOG_ERROR, align 4
  %101 = call i32 @av_log(i32* %99, i32 %100, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  %102 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %102, i32* %7, align 4
  br label %192

103:                                              ; preds = %93
  %104 = load i32, i32* %16, align 4
  %105 = load i32*, i32** %10, align 8
  %106 = load i32, i32* %105, align 4
  %107 = sub i32 %106, %104
  store i32 %107, i32* %105, align 4
  store i32 0, i32* %16, align 4
  %108 = load i32*, i32** %13, align 8
  %109 = load i32, i32* %108, align 4
  %110 = icmp ne i32 %109, 0
  %111 = xor i1 %110, true
  %112 = zext i1 %111 to i32
  %113 = load i32*, i32** %13, align 8
  store i32 %112, i32* %113, align 4
  br label %114

114:                                              ; preds = %103, %71
  %115 = load i32, i32* %18, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i64 0, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* %16, align 4
  %120 = add nsw i32 %119, %118
  store i32 %120, i32* %16, align 4
  br label %121

121:                                              ; preds = %114, %65
  br label %122

122:                                              ; preds = %121
  %123 = load i32, i32* %18, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %18, align 4
  br label %62

125:                                              ; preds = %62
  br label %126

126:                                              ; preds = %125
  %127 = load i32, i32* %14, align 4
  %128 = icmp ne i32 %127, 0
  %129 = xor i1 %128, true
  br i1 %129, label %21, label %130

130:                                              ; preds = %126
  %131 = load i32, i32* %16, align 4
  %132 = load i32**, i32*** %11, align 8
  %133 = load i32*, i32** %132, align 8
  %134 = getelementptr inbounds i32, i32* %133, i32 1
  store i32* %134, i32** %132, align 8
  store i32 %131, i32* %133, align 4
  %135 = load i32**, i32*** %11, align 8
  %136 = load i32*, i32** %135, align 8
  %137 = load i32*, i32** %12, align 8
  %138 = icmp uge i32* %136, %137
  br i1 %138, label %139, label %144

139:                                              ; preds = %130
  %140 = load i32*, i32** %8, align 8
  %141 = load i32, i32* @AV_LOG_ERROR, align 4
  %142 = call i32 @av_log(i32* %140, i32 %141, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %143 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %143, i32* %7, align 4
  br label %192

144:                                              ; preds = %130
  %145 = load i32*, i32** %10, align 8
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* %16, align 4
  %148 = icmp ule i32 %146, %147
  br i1 %148, label %149, label %160

149:                                              ; preds = %144
  %150 = load i32*, i32** %10, align 8
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* %16, align 4
  %153 = icmp eq i32 %151, %152
  br i1 %153, label %154, label %155

154:                                              ; preds = %149
  store i32 1, i32* %7, align 4
  br label %192

155:                                              ; preds = %149
  %156 = load i32*, i32** %8, align 8
  %157 = load i32, i32* @AV_LOG_ERROR, align 4
  %158 = call i32 @av_log(i32* %156, i32 %157, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  %159 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %159, i32* %7, align 4
  br label %192

160:                                              ; preds = %144
  %161 = load i32, i32* %16, align 4
  %162 = load i32*, i32** %10, align 8
  %163 = load i32, i32* %162, align 4
  %164 = sub i32 %163, %161
  store i32 %164, i32* %162, align 4
  store i32 0, i32* %16, align 4
  %165 = load i32*, i32** %13, align 8
  %166 = load i32, i32* %165, align 4
  %167 = icmp ne i32 %166, 0
  %168 = xor i1 %167, true
  %169 = zext i1 %168 to i32
  %170 = load i32*, i32** %13, align 8
  store i32 %169, i32* %170, align 4
  %171 = load i32, i32* %15, align 4
  %172 = load i32*, i32** %13, align 8
  %173 = load i32, i32* %172, align 4
  %174 = icmp ne i32 %171, %173
  br i1 %174, label %175, label %191

175:                                              ; preds = %160
  %176 = load i32**, i32*** %11, align 8
  %177 = load i32*, i32** %176, align 8
  %178 = getelementptr inbounds i32, i32* %177, i32 1
  store i32* %178, i32** %176, align 8
  store i32 0, i32* %177, align 4
  %179 = load i32**, i32*** %11, align 8
  %180 = load i32*, i32** %179, align 8
  %181 = load i32*, i32** %12, align 8
  %182 = icmp uge i32* %180, %181
  br i1 %182, label %183, label %188

183:                                              ; preds = %175
  %184 = load i32*, i32** %8, align 8
  %185 = load i32, i32* @AV_LOG_ERROR, align 4
  %186 = call i32 @av_log(i32* %184, i32 %185, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %187 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %187, i32* %7, align 4
  br label %192

188:                                              ; preds = %175
  %189 = load i32, i32* %15, align 4
  %190 = load i32*, i32** %13, align 8
  store i32 %189, i32* %190, align 4
  br label %191

191:                                              ; preds = %188, %160
  store i32 0, i32* %7, align 4
  br label %192

192:                                              ; preds = %191, %183, %155, %154, %139, %98, %88, %27
  %193 = load i32, i32* %7, align 4
  ret i32 %193
}

declare dso_local i32 @show_bits(i32*, i32) #1

declare dso_local i32 @av_log(i32*, i32, i8*) #1

declare dso_local i32 @av_log2(i32) #1

declare dso_local i32 @skip_bits(i32*, i32) #1

declare dso_local i32 @get_bits1(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
