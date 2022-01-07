; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mace.c_mace_decode_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mace.c_mace_decode_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32* }
%struct.TYPE_11__ = type { i32*, i32 }
%struct.TYPE_12__ = type { i32, i64 }

@AV_CODEC_ID_MACE3 = common dso_local global i64 0, align 8
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"buffer size %d is odd\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, i8*, i32*, %struct.TYPE_11__*)* @mace_decode_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mace_decode_frame(%struct.TYPE_13__* %0, i8* %1, i32* %2, %struct.TYPE_11__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32**, align 8
  %14 = alloca %struct.TYPE_10__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  %23 = alloca [2 x [3 x i32]], align 16
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_11__* %3, %struct.TYPE_11__** %9, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = bitcast i8* %24 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %25, %struct.TYPE_12__** %10, align 8
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  store i32* %28, i32** %11, align 8
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %12, align 4
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 2
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %33, align 8
  store %struct.TYPE_10__* %34, %struct.TYPE_10__** %14, align 8
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @AV_CODEC_ID_MACE3, align 8
  %39 = icmp eq i64 %37, %38
  %40 = zext i1 %39 to i32
  store i32 %40, i32* %20, align 4
  %41 = load i32, i32* %12, align 4
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* %20, align 4
  %46 = shl i32 %44, %45
  %47 = srem i32 %41, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %68

49:                                               ; preds = %4
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %51 = load i32, i32* @AV_LOG_ERROR, align 4
  %52 = load i32, i32* %12, align 4
  %53 = call i32 @av_log(%struct.TYPE_13__* %50, i32 %51, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %52)
  %54 = load i32, i32* %12, align 4
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* %20, align 4
  %59 = shl i32 %57, %58
  %60 = srem i32 %54, %59
  %61 = load i32, i32* %12, align 4
  %62 = sub nsw i32 %61, %60
  store i32 %62, i32* %12, align 4
  %63 = load i32, i32* %12, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %67, label %65

65:                                               ; preds = %49
  %66 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %66, i32* %5, align 4
  br label %220

67:                                               ; preds = %49
  br label %68

68:                                               ; preds = %67, %4
  %69 = load i32, i32* %12, align 4
  %70 = load i32, i32* %20, align 4
  %71 = sub nsw i32 1, %70
  %72 = shl i32 %69, %71
  %73 = mul nsw i32 3, %72
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = sdiv i32 %73, %76
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 8
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %82 = call i32 @ff_get_buffer(%struct.TYPE_13__* %80, %struct.TYPE_12__* %81, i32 0)
  store i32 %82, i32* %19, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %68
  %85 = load i32, i32* %19, align 4
  store i32 %85, i32* %5, align 4
  br label %220

86:                                               ; preds = %68
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = inttoptr i64 %89 to i32**
  store i32** %90, i32*** %13, align 8
  store i32 0, i32* %15, align 4
  br label %91

91:                                               ; preds = %214, %86
  %92 = load i32, i32* %15, align 4
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = icmp slt i32 %92, %95
  br i1 %96, label %97, label %217

97:                                               ; preds = %91
  %98 = load i32**, i32*** %13, align 8
  %99 = load i32, i32* %15, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32*, i32** %98, i64 %100
  %102 = load i32*, i32** %101, align 8
  store i32* %102, i32** %21, align 8
  store i32 0, i32* %16, align 4
  br label %103

103:                                              ; preds = %210, %97
  %104 = load i32, i32* %16, align 4
  %105 = load i32, i32* %12, align 4
  %106 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* %20, align 4
  %110 = shl i32 %108, %109
  %111 = sdiv i32 %105, %110
  %112 = icmp slt i32 %104, %111
  br i1 %112, label %113, label %213

113:                                              ; preds = %103
  store i32 0, i32* %17, align 4
  br label %114

114:                                              ; preds = %206, %113
  %115 = load i32, i32* %17, align 4
  %116 = load i32, i32* %20, align 4
  %117 = shl i32 1, %116
  %118 = icmp slt i32 %115, %117
  br i1 %118, label %119, label %209

119:                                              ; preds = %114
  %120 = load i32*, i32** %11, align 8
  %121 = load i32, i32* %15, align 4
  %122 = load i32, i32* %20, align 4
  %123 = shl i32 %121, %122
  %124 = load i32, i32* %16, align 4
  %125 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %126 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 8
  %128 = mul nsw i32 %124, %127
  %129 = load i32, i32* %20, align 4
  %130 = shl i32 %128, %129
  %131 = add nsw i32 %123, %130
  %132 = load i32, i32* %17, align 4
  %133 = add nsw i32 %131, %132
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %120, i64 %134
  %136 = load i32, i32* %135, align 4
  store i32 %136, i32* %22, align 4
  %137 = getelementptr inbounds [2 x [3 x i32]], [2 x [3 x i32]]* %23, i64 0, i64 0
  %138 = getelementptr inbounds [3 x i32], [3 x i32]* %137, i64 0, i64 0
  %139 = load i32, i32* %22, align 4
  %140 = ashr i32 %139, 5
  store i32 %140, i32* %138, align 4
  %141 = getelementptr inbounds i32, i32* %138, i64 1
  %142 = load i32, i32* %22, align 4
  %143 = ashr i32 %142, 3
  %144 = and i32 %143, 3
  store i32 %144, i32* %141, align 4
  %145 = getelementptr inbounds i32, i32* %141, i64 1
  %146 = load i32, i32* %22, align 4
  %147 = and i32 %146, 7
  store i32 %147, i32* %145, align 4
  %148 = getelementptr inbounds [3 x i32], [3 x i32]* %137, i64 1
  %149 = getelementptr inbounds [3 x i32], [3 x i32]* %148, i64 0, i64 0
  %150 = load i32, i32* %22, align 4
  %151 = and i32 %150, 7
  store i32 %151, i32* %149, align 4
  %152 = getelementptr inbounds i32, i32* %149, i64 1
  %153 = load i32, i32* %22, align 4
  %154 = ashr i32 %153, 3
  %155 = and i32 %154, 3
  store i32 %155, i32* %152, align 4
  %156 = getelementptr inbounds i32, i32* %152, i64 1
  %157 = load i32, i32* %22, align 4
  %158 = ashr i32 %157, 5
  store i32 %158, i32* %156, align 4
  store i32 0, i32* %18, align 4
  br label %159

159:                                              ; preds = %202, %119
  %160 = load i32, i32* %18, align 4
  %161 = icmp slt i32 %160, 3
  br i1 %161, label %162, label %205

162:                                              ; preds = %159
  %163 = load i32, i32* %20, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %180

165:                                              ; preds = %162
  %166 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %167 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %166, i32 0, i32 0
  %168 = load i32*, i32** %167, align 8
  %169 = load i32, i32* %15, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i32, i32* %168, i64 %170
  %172 = load i32*, i32** %21, align 8
  %173 = getelementptr inbounds [2 x [3 x i32]], [2 x [3 x i32]]* %23, i64 0, i64 1
  %174 = load i32, i32* %18, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds [3 x i32], [3 x i32]* %173, i64 0, i64 %175
  %177 = load i32, i32* %176, align 4
  %178 = load i32, i32* %18, align 4
  %179 = call i32 @chomp3(i32* %171, i32* %172, i32 %177, i32 %178)
  br label %195

180:                                              ; preds = %162
  %181 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %182 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %181, i32 0, i32 0
  %183 = load i32*, i32** %182, align 8
  %184 = load i32, i32* %15, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i32, i32* %183, i64 %185
  %187 = load i32*, i32** %21, align 8
  %188 = getelementptr inbounds [2 x [3 x i32]], [2 x [3 x i32]]* %23, i64 0, i64 0
  %189 = load i32, i32* %18, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds [3 x i32], [3 x i32]* %188, i64 0, i64 %190
  %192 = load i32, i32* %191, align 4
  %193 = load i32, i32* %18, align 4
  %194 = call i32 @chomp6(i32* %186, i32* %187, i32 %192, i32 %193)
  br label %195

195:                                              ; preds = %180, %165
  %196 = load i32, i32* %20, align 4
  %197 = sub nsw i32 1, %196
  %198 = shl i32 1, %197
  %199 = load i32*, i32** %21, align 8
  %200 = sext i32 %198 to i64
  %201 = getelementptr inbounds i32, i32* %199, i64 %200
  store i32* %201, i32** %21, align 8
  br label %202

202:                                              ; preds = %195
  %203 = load i32, i32* %18, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %18, align 4
  br label %159

205:                                              ; preds = %159
  br label %206

206:                                              ; preds = %205
  %207 = load i32, i32* %17, align 4
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %17, align 4
  br label %114

209:                                              ; preds = %114
  br label %210

210:                                              ; preds = %209
  %211 = load i32, i32* %16, align 4
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %16, align 4
  br label %103

213:                                              ; preds = %103
  br label %214

214:                                              ; preds = %213
  %215 = load i32, i32* %15, align 4
  %216 = add nsw i32 %215, 1
  store i32 %216, i32* %15, align 4
  br label %91

217:                                              ; preds = %91
  %218 = load i32*, i32** %8, align 8
  store i32 1, i32* %218, align 4
  %219 = load i32, i32* %12, align 4
  store i32 %219, i32* %5, align 4
  br label %220

220:                                              ; preds = %217, %84, %65
  %221 = load i32, i32* %5, align 4
  ret i32 %221
}

declare dso_local i32 @av_log(%struct.TYPE_13__*, i32, i8*, i32) #1

declare dso_local i32 @ff_get_buffer(%struct.TYPE_13__*, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @chomp3(i32*, i32*, i32, i32) #1

declare dso_local i32 @chomp6(i32*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
