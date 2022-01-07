; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_4xm.c_decode_p_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_4xm.c_decode_p_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, %struct.TYPE_7__, i32, %struct.TYPE_9__*, i32*, i32* }
%struct.TYPE_7__ = type { i32 (i32, i32*, i32)* }
%struct.TYPE_9__ = type { i32, i32 }

@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"lengths %d %d %d %d\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i32*, i32)* @decode_p_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_p_frame(%struct.TYPE_8__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 7
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %10, align 4
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 7
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %11, align 4
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 9
  %33 = load i32*, i32** %32, align 8
  store i32* %33, i32** %12, align 8
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 8
  %36 = load i32*, i32** %35, align 8
  store i32* %36, i32** %13, align 8
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp sgt i32 %39, 1
  br i1 %40, label %41, label %57

41:                                               ; preds = %3
  store i32 20, i32* %17, align 4
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* %17, align 4
  %44 = icmp ult i32 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %46, i32* %4, align 4
  br label %232

47:                                               ; preds = %41
  %48 = load i32*, i32** %6, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 8
  %50 = call i32 @AV_RL32(i32* %49)
  store i32 %50, i32* %14, align 4
  %51 = load i32*, i32** %6, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 12
  %53 = call i32 @AV_RL32(i32* %52)
  store i32 %53, i32* %16, align 4
  %54 = load i32*, i32** %6, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 16
  %56 = call i32 @AV_RL32(i32* %55)
  store i32 %56, i32* %15, align 4
  br label %70

57:                                               ; preds = %3
  store i32 0, i32* %17, align 4
  %58 = load i32*, i32** %6, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 -4
  %60 = call i32 @AV_RL16(i32* %59)
  store i32 %60, i32* %14, align 4
  %61 = load i32*, i32** %6, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 -2
  %63 = call i32 @AV_RL16(i32* %62)
  store i32 %63, i32* %16, align 4
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* %14, align 4
  %66 = sub i32 %64, %65
  %67 = load i32, i32* %16, align 4
  %68 = sub i32 %66, %67
  %69 = call i32 @FFMAX(i32 %68, i32 0)
  store i32 %69, i32* %15, align 4
  br label %70

70:                                               ; preds = %57, %47
  %71 = load i32, i32* %14, align 4
  %72 = load i32, i32* %7, align 4
  %73 = icmp ugt i32 %71, %72
  br i1 %73, label %103, label %74

74:                                               ; preds = %70
  %75 = load i32, i32* %14, align 4
  %76 = load i32, i32* @INT_MAX, align 4
  %77 = sdiv i32 %76, 8
  %78 = icmp uge i32 %75, %77
  br i1 %78, label %103, label %79

79:                                               ; preds = %74
  %80 = load i32, i32* %15, align 4
  %81 = load i32, i32* %7, align 4
  %82 = load i32, i32* %14, align 4
  %83 = sub i32 %81, %82
  %84 = icmp ugt i32 %80, %83
  br i1 %84, label %103, label %85

85:                                               ; preds = %79
  %86 = load i32, i32* %16, align 4
  %87 = load i32, i32* %7, align 4
  %88 = load i32, i32* %15, align 4
  %89 = sub i32 %87, %88
  %90 = load i32, i32* %14, align 4
  %91 = sub i32 %89, %90
  %92 = icmp ugt i32 %86, %91
  br i1 %92, label %103, label %93

93:                                               ; preds = %85
  %94 = load i32, i32* %17, align 4
  %95 = load i32, i32* %7, align 4
  %96 = load i32, i32* %15, align 4
  %97 = sub i32 %95, %96
  %98 = load i32, i32* %14, align 4
  %99 = sub i32 %97, %98
  %100 = load i32, i32* %16, align 4
  %101 = sub i32 %99, %100
  %102 = icmp ugt i32 %94, %101
  br i1 %102, label %103, label %120

103:                                              ; preds = %93, %85, %79, %74, %70
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 7
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** %105, align 8
  %107 = load i32, i32* @AV_LOG_ERROR, align 4
  %108 = load i32, i32* %14, align 4
  %109 = load i32, i32* %15, align 4
  %110 = load i32, i32* %16, align 4
  %111 = load i32, i32* %14, align 4
  %112 = load i32, i32* %15, align 4
  %113 = add i32 %111, %112
  %114 = load i32, i32* %16, align 4
  %115 = add i32 %113, %114
  %116 = load i32, i32* %7, align 4
  %117 = sub i32 %115, %116
  %118 = call i32 @av_log(%struct.TYPE_9__* %106, i32 %107, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %108, i32 %109, i32 %110, i32 %117)
  %119 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %119, i32* %4, align 4
  br label %232

120:                                              ; preds = %93
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 3
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 6
  %125 = load i32, i32* %14, align 4
  %126 = call i32 @av_fast_padded_malloc(i32* %122, i32* %124, i32 %125)
  %127 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 3
  %129 = load i32, i32* %128, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %134, label %131

131:                                              ; preds = %120
  %132 = load i32, i32* @ENOMEM, align 4
  %133 = call i32 @AVERROR(i32 %132)
  store i32 %133, i32* %4, align 4
  br label %232

134:                                              ; preds = %120
  %135 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 5
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 0
  %138 = load i32 (i32, i32*, i32)*, i32 (i32, i32*, i32)** %137, align 8
  %139 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 3
  %141 = load i32, i32* %140, align 4
  %142 = load i32*, i32** %6, align 8
  %143 = load i32, i32* %17, align 4
  %144 = zext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %142, i64 %144
  %146 = load i32, i32* %14, align 4
  %147 = udiv i32 %146, 4
  %148 = call i32 %138(i32 %141, i32* %145, i32 %147)
  %149 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i32 0, i32 4
  %151 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %151, i32 0, i32 3
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* %14, align 4
  %155 = mul i32 8, %154
  %156 = call i32 @init_get_bits(i32* %150, i32 %153, i32 %155)
  %157 = load i32, i32* %17, align 4
  %158 = load i32, i32* %14, align 4
  %159 = add i32 %157, %158
  store i32 %159, i32* %19, align 4
  %160 = load i32, i32* %17, align 4
  %161 = load i32, i32* %14, align 4
  %162 = add i32 %160, %161
  %163 = load i32, i32* %16, align 4
  %164 = add i32 %162, %163
  store i32 %164, i32* %18, align 4
  %165 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %166 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %165, i32 0, i32 2
  %167 = load i32*, i32** %6, align 8
  %168 = load i32, i32* %19, align 4
  %169 = zext i32 %168 to i64
  %170 = getelementptr inbounds i32, i32* %167, i64 %169
  %171 = load i32, i32* %7, align 4
  %172 = load i32, i32* %19, align 4
  %173 = sub i32 %171, %172
  %174 = call i32 @bytestream2_init(i32* %166, i32* %170, i32 %173)
  %175 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %176 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %175, i32 0, i32 1
  %177 = load i32*, i32** %6, align 8
  %178 = load i32, i32* %18, align 4
  %179 = zext i32 %178 to i64
  %180 = getelementptr inbounds i32, i32* %177, i64 %179
  %181 = load i32, i32* %7, align 4
  %182 = load i32, i32* %18, align 4
  %183 = sub i32 %181, %182
  %184 = call i32 @bytestream2_init(i32* %176, i32* %180, i32 %183)
  %185 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %186 = load i32, i32* %10, align 4
  %187 = mul nsw i32 %186, 2
  %188 = call i32 @init_mv(%struct.TYPE_8__* %185, i32 %187)
  store i32 0, i32* %9, align 4
  br label %189

189:                                              ; preds = %228, %134
  %190 = load i32, i32* %9, align 4
  %191 = load i32, i32* %11, align 4
  %192 = icmp slt i32 %190, %191
  br i1 %192, label %193, label %231

193:                                              ; preds = %189
  store i32 0, i32* %8, align 4
  br label %194

194:                                              ; preds = %214, %193
  %195 = load i32, i32* %8, align 4
  %196 = load i32, i32* %10, align 4
  %197 = icmp slt i32 %195, %196
  br i1 %197, label %198, label %217

198:                                              ; preds = %194
  %199 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %200 = load i32*, i32** %12, align 8
  %201 = load i32, i32* %8, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i32, i32* %200, i64 %202
  %204 = load i32*, i32** %13, align 8
  %205 = load i32, i32* %8, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i32, i32* %204, i64 %206
  %208 = load i32, i32* %10, align 4
  %209 = call i32 @decode_p_block(%struct.TYPE_8__* %199, i32* %203, i32* %207, i32 3, i32 3, i32 %208)
  store i32 %209, i32* %20, align 4
  %210 = icmp slt i32 %209, 0
  br i1 %210, label %211, label %213

211:                                              ; preds = %198
  %212 = load i32, i32* %20, align 4
  store i32 %212, i32* %4, align 4
  br label %232

213:                                              ; preds = %198
  br label %214

214:                                              ; preds = %213
  %215 = load i32, i32* %8, align 4
  %216 = add nsw i32 %215, 8
  store i32 %216, i32* %8, align 4
  br label %194

217:                                              ; preds = %194
  %218 = load i32, i32* %10, align 4
  %219 = mul nsw i32 8, %218
  %220 = load i32*, i32** %13, align 8
  %221 = sext i32 %219 to i64
  %222 = getelementptr inbounds i32, i32* %220, i64 %221
  store i32* %222, i32** %13, align 8
  %223 = load i32, i32* %10, align 4
  %224 = mul nsw i32 8, %223
  %225 = load i32*, i32** %12, align 8
  %226 = sext i32 %224 to i64
  %227 = getelementptr inbounds i32, i32* %225, i64 %226
  store i32* %227, i32** %12, align 8
  br label %228

228:                                              ; preds = %217
  %229 = load i32, i32* %9, align 4
  %230 = add nsw i32 %229, 8
  store i32 %230, i32* %9, align 4
  br label %189

231:                                              ; preds = %189
  store i32 0, i32* %4, align 4
  br label %232

232:                                              ; preds = %231, %211, %131, %103, %45
  %233 = load i32, i32* %4, align 4
  ret i32 %233
}

declare dso_local i32 @AV_RL32(i32*) #1

declare dso_local i32 @AV_RL16(i32*) #1

declare dso_local i32 @FFMAX(i32, i32) #1

declare dso_local i32 @av_log(%struct.TYPE_9__*, i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @av_fast_padded_malloc(i32*, i32*, i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @init_get_bits(i32*, i32, i32) #1

declare dso_local i32 @bytestream2_init(i32*, i32*, i32) #1

declare dso_local i32 @init_mv(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @decode_p_block(%struct.TYPE_8__*, i32*, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
