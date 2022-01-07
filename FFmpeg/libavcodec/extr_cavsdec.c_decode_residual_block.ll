; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_cavsdec.c_decode_residual_block.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_cavsdec.c_decode_residual_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32*, %struct.TYPE_7__, %struct.TYPE_6__, i32 }
%struct.TYPE_7__ = type { i32 (i32*)* }
%struct.TYPE_6__ = type { i32 (i32*, i32*, i32)* }
%struct.dec_2dvlc = type { i32, i32, i32*, i32, i32** }

@ESCAPE_CODE = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"run %d is too large\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"esc_code invalid\0A\00", align 1
@dequant_mul = common dso_local global i32* null, align 8
@dequant_shift = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i32*, %struct.dec_2dvlc*, i32, i32, i32*, i32)* @decode_residual_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_residual_block(%struct.TYPE_8__* %0, i32* %1, %struct.dec_2dvlc* %2, i32 %3, i32 %4, i32* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.dec_2dvlc*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca [65 x i32], align 16
  %24 = alloca [65 x i32], align 16
  %25 = alloca i32*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %9, align 8
  store i32* %1, i32** %10, align 8
  store %struct.dec_2dvlc* %2, %struct.dec_2dvlc** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32* %5, i32** %14, align 8
  store i32 %6, i32* %15, align 4
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  store i32* %28, i32** %25, align 8
  store i32 0, i32* %16, align 4
  br label %29

29:                                               ; preds = %156, %7
  %30 = load i32, i32* %16, align 4
  %31 = icmp slt i32 %30, 65
  br i1 %31, label %32, label %159

32:                                               ; preds = %29
  %33 = load i32*, i32** %10, align 8
  %34 = load %struct.dec_2dvlc*, %struct.dec_2dvlc** %11, align 8
  %35 = getelementptr inbounds %struct.dec_2dvlc, %struct.dec_2dvlc* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i8* @get_ue_code(i32* %33, i32 %36)
  %38 = ptrtoint i8* %37 to i32
  store i32 %38, i32* %21, align 4
  %39 = load i32, i32* %21, align 4
  %40 = load i32, i32* @ESCAPE_CODE, align 4
  %41 = icmp uge i32 %39, %40
  br i1 %41, label %42, label %112

42:                                               ; preds = %32
  %43 = load i32, i32* %21, align 4
  %44 = load i32, i32* @ESCAPE_CODE, align 4
  %45 = sub i32 %43, %44
  %46 = lshr i32 %45, 1
  %47 = add i32 %46, 1
  store i32 %47, i32* %22, align 4
  %48 = load i32, i32* %22, align 4
  %49 = icmp ugt i32 %48, 64
  br i1 %49, label %50, label %58

50:                                               ; preds = %42
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @AV_LOG_ERROR, align 4
  %55 = load i32, i32* %22, align 4
  %56 = call i32 (i32, i32, i8*, ...) @av_log(i32 %53, i32 %54, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %55)
  %57 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %57, i32* %8, align 4
  br label %194

58:                                               ; preds = %42
  %59 = load i32*, i32** %10, align 8
  %60 = load i32, i32* %12, align 4
  %61 = call i8* @get_ue_code(i32* %59, i32 %60)
  %62 = ptrtoint i8* %61 to i32
  store i32 %62, i32* %17, align 4
  %63 = load i32, i32* %17, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %58
  %66 = load i32, i32* %17, align 4
  %67 = icmp sgt i32 %66, 32767
  br i1 %67, label %68, label %75

68:                                               ; preds = %65, %58
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @AV_LOG_ERROR, align 4
  %73 = call i32 (i32, i32, i8*, ...) @av_log(i32 %71, i32 %72, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %74 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %74, i32* %8, align 4
  br label %194

75:                                               ; preds = %65
  %76 = load i32, i32* %17, align 4
  %77 = load i32, i32* %22, align 4
  %78 = load %struct.dec_2dvlc*, %struct.dec_2dvlc** %11, align 8
  %79 = getelementptr inbounds %struct.dec_2dvlc, %struct.dec_2dvlc* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = icmp ugt i32 %77, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %75
  br label %91

83:                                               ; preds = %75
  %84 = load %struct.dec_2dvlc*, %struct.dec_2dvlc** %11, align 8
  %85 = getelementptr inbounds %struct.dec_2dvlc, %struct.dec_2dvlc* %84, i32 0, i32 2
  %86 = load i32*, i32** %85, align 8
  %87 = load i32, i32* %22, align 4
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  %90 = load i32, i32* %89, align 4
  br label %91

91:                                               ; preds = %83, %82
  %92 = phi i32 [ 1, %82 ], [ %90, %83 ]
  %93 = add nsw i32 %76, %92
  store i32 %93, i32* %18, align 4
  br label %94

94:                                               ; preds = %100, %91
  %95 = load i32, i32* %18, align 4
  %96 = load %struct.dec_2dvlc*, %struct.dec_2dvlc** %11, align 8
  %97 = getelementptr inbounds %struct.dec_2dvlc, %struct.dec_2dvlc* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 8
  %99 = icmp sgt i32 %95, %98
  br i1 %99, label %100, label %103

100:                                              ; preds = %94
  %101 = load %struct.dec_2dvlc*, %struct.dec_2dvlc** %11, align 8
  %102 = getelementptr inbounds %struct.dec_2dvlc, %struct.dec_2dvlc* %101, i32 1
  store %struct.dec_2dvlc* %102, %struct.dec_2dvlc** %11, align 8
  br label %94

103:                                              ; preds = %94
  %104 = load i32, i32* %21, align 4
  %105 = and i32 %104, 1
  %106 = sub i32 0, %105
  store i32 %106, i32* %19, align 4
  %107 = load i32, i32* %18, align 4
  %108 = load i32, i32* %19, align 4
  %109 = xor i32 %107, %108
  %110 = load i32, i32* %19, align 4
  %111 = sub nsw i32 %109, %110
  store i32 %111, i32* %18, align 4
  br label %147

112:                                              ; preds = %32
  %113 = load %struct.dec_2dvlc*, %struct.dec_2dvlc** %11, align 8
  %114 = getelementptr inbounds %struct.dec_2dvlc, %struct.dec_2dvlc* %113, i32 0, i32 4
  %115 = load i32**, i32*** %114, align 8
  %116 = load i32, i32* %21, align 4
  %117 = zext i32 %116 to i64
  %118 = getelementptr inbounds i32*, i32** %115, i64 %117
  %119 = load i32*, i32** %118, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 0
  %121 = load i32, i32* %120, align 4
  store i32 %121, i32* %18, align 4
  %122 = load i32, i32* %18, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %125, label %124

124:                                              ; preds = %112
  br label %159

125:                                              ; preds = %112
  %126 = load %struct.dec_2dvlc*, %struct.dec_2dvlc** %11, align 8
  %127 = getelementptr inbounds %struct.dec_2dvlc, %struct.dec_2dvlc* %126, i32 0, i32 4
  %128 = load i32**, i32*** %127, align 8
  %129 = load i32, i32* %21, align 4
  %130 = zext i32 %129 to i64
  %131 = getelementptr inbounds i32*, i32** %128, i64 %130
  %132 = load i32*, i32** %131, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 1
  %134 = load i32, i32* %133, align 4
  store i32 %134, i32* %22, align 4
  %135 = load %struct.dec_2dvlc*, %struct.dec_2dvlc** %11, align 8
  %136 = getelementptr inbounds %struct.dec_2dvlc, %struct.dec_2dvlc* %135, i32 0, i32 4
  %137 = load i32**, i32*** %136, align 8
  %138 = load i32, i32* %21, align 4
  %139 = zext i32 %138 to i64
  %140 = getelementptr inbounds i32*, i32** %137, i64 %139
  %141 = load i32*, i32** %140, align 8
  %142 = getelementptr inbounds i32, i32* %141, i64 2
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.dec_2dvlc*, %struct.dec_2dvlc** %11, align 8
  %145 = sext i32 %143 to i64
  %146 = getelementptr inbounds %struct.dec_2dvlc, %struct.dec_2dvlc* %144, i64 %145
  store %struct.dec_2dvlc* %146, %struct.dec_2dvlc** %11, align 8
  br label %147

147:                                              ; preds = %125, %103
  %148 = load i32, i32* %18, align 4
  %149 = load i32, i32* %16, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds [65 x i32], [65 x i32]* %23, i64 0, i64 %150
  store i32 %148, i32* %151, align 4
  %152 = load i32, i32* %22, align 4
  %153 = load i32, i32* %16, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds [65 x i32], [65 x i32]* %24, i64 0, i64 %154
  store i32 %152, i32* %155, align 4
  br label %156

156:                                              ; preds = %147
  %157 = load i32, i32* %16, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %16, align 4
  br label %29

159:                                              ; preds = %124, %29
  %160 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %161 = getelementptr inbounds [65 x i32], [65 x i32]* %23, i64 0, i64 0
  %162 = getelementptr inbounds [65 x i32], [65 x i32]* %24, i64 0, i64 0
  %163 = load i32*, i32** %25, align 8
  %164 = load i32*, i32** @dequant_mul, align 8
  %165 = load i32, i32* %13, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i32, i32* %164, i64 %166
  %168 = load i32, i32* %167, align 4
  %169 = load i32*, i32** @dequant_shift, align 8
  %170 = load i32, i32* %13, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i32, i32* %169, i64 %171
  %173 = load i32, i32* %172, align 4
  %174 = load i32, i32* %16, align 4
  %175 = call i32 @dequant(%struct.TYPE_8__* %160, i32* %161, i32* %162, i32* %163, i32 %168, i32 %173, i32 %174)
  store i32 %175, i32* %20, align 4
  %176 = icmp slt i32 %175, 0
  br i1 %176, label %177, label %179

177:                                              ; preds = %159
  %178 = load i32, i32* %20, align 4
  store i32 %178, i32* %8, align 4
  br label %194

179:                                              ; preds = %159
  %180 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %181 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %180, i32 0, i32 2
  %182 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %181, i32 0, i32 0
  %183 = load i32 (i32*, i32*, i32)*, i32 (i32*, i32*, i32)** %182, align 8
  %184 = load i32*, i32** %14, align 8
  %185 = load i32*, i32** %25, align 8
  %186 = load i32, i32* %15, align 4
  %187 = call i32 %183(i32* %184, i32* %185, i32 %186)
  %188 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %189 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %188, i32 0, i32 1
  %190 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %189, i32 0, i32 0
  %191 = load i32 (i32*)*, i32 (i32*)** %190, align 8
  %192 = load i32*, i32** %25, align 8
  %193 = call i32 %191(i32* %192)
  store i32 0, i32* %8, align 4
  br label %194

194:                                              ; preds = %179, %177, %68, %50
  %195 = load i32, i32* %8, align 4
  ret i32 %195
}

declare dso_local i8* @get_ue_code(i32*, i32) #1

declare dso_local i32 @av_log(i32, i32, i8*, ...) #1

declare dso_local i32 @dequant(%struct.TYPE_8__*, i32*, i32*, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
