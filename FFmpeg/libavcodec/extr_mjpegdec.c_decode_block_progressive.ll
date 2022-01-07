; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mjpegdec.c_decode_block_progressive.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mjpegdec.c_decode_block_progressive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, %struct.TYPE_6__, %struct.TYPE_5__** }
%struct.TYPE_6__ = type { i32* }
%struct.TYPE_5__ = type { i32 }

@re = common dso_local global i32 0, align 4
@MIN_CACHE_BITS = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"error count: %d\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"ZRL overflow: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32*, i32*, i32, i32*, i32, i32, i32, i32*)* @decode_block_progressive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_block_progressive(%struct.TYPE_7__* %0, i32* %1, i32* %2, i32 %3, i32* %4, i32 %5, i32 %6, i32 %7, i32* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_7__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %11, align 8
  store i32* %1, i32** %12, align 8
  store i32* %2, i32** %13, align 8
  store i32 %3, i32* %14, align 4
  store i32* %4, i32** %15, align 8
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i32* %8, i32** %19, align 8
  %28 = load i32*, i32** %19, align 8
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %9
  %32 = load i32*, i32** %19, align 8
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %33, -1
  store i32 %34, i32* %32, align 4
  store i32 0, i32* %10, align 4
  br label %224

35:                                               ; preds = %9
  %36 = load i32, i32* @re, align 4
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = call i32 @OPEN_READER(i32 %36, i32* %38)
  %40 = load i32, i32* %16, align 4
  store i32 %40, i32* %21, align 4
  br label %41

41:                                               ; preds = %208, %35
  %42 = load i32, i32* @re, align 4
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = call i32 @UPDATE_CACHE(i32 %42, i32* %44)
  %46 = load i32, i32* %20, align 4
  %47 = load i32, i32* @re, align 4
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 3
  %52 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %52, i64 2
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %53, align 8
  %55 = load i32, i32* %14, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @GET_VLC(i32 %46, i32 %47, i32* %49, i32 %59, i32 9, i32 2)
  %61 = load i32, i32* %20, align 4
  %62 = lshr i32 %61, 4
  store i32 %62, i32* %24, align 4
  %63 = load i32, i32* %20, align 4
  %64 = and i32 %63, 15
  store i32 %64, i32* %20, align 4
  %65 = load i32, i32* %20, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %161

67:                                               ; preds = %41
  %68 = load i32, i32* %24, align 4
  %69 = load i32, i32* %21, align 4
  %70 = add nsw i32 %69, %68
  store i32 %70, i32* %21, align 4
  %71 = load i32, i32* %20, align 4
  %72 = load i32, i32* @MIN_CACHE_BITS, align 4
  %73 = sub nsw i32 %72, 16
  %74 = icmp sgt i32 %71, %73
  br i1 %74, label %75, label %80

75:                                               ; preds = %67
  %76 = load i32, i32* @re, align 4
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  %79 = call i32 @UPDATE_CACHE(i32 %76, i32* %78)
  br label %80

80:                                               ; preds = %75, %67
  %81 = load i32, i32* @re, align 4
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 0
  %84 = call i32 @GET_CACHE(i32 %81, i32* %83)
  store i32 %84, i32* %26, align 4
  %85 = load i32, i32* %26, align 4
  %86 = xor i32 %85, -1
  %87 = ashr i32 %86, 31
  store i32 %87, i32* %27, align 4
  %88 = load i32, i32* %27, align 4
  %89 = load i32, i32* %26, align 4
  %90 = xor i32 %88, %89
  %91 = load i32, i32* %20, align 4
  %92 = call i32 @NEG_USR32(i32 %90, i32 %91)
  %93 = load i32, i32* %27, align 4
  %94 = xor i32 %92, %93
  %95 = load i32, i32* %27, align 4
  %96 = sub nsw i32 %94, %95
  store i32 %96, i32* %25, align 4
  %97 = load i32, i32* @re, align 4
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 0
  %100 = load i32, i32* %20, align 4
  %101 = call i32 @LAST_SKIP_BITS(i32 %97, i32* %99, i32 %100)
  %102 = load i32, i32* %21, align 4
  %103 = load i32, i32* %17, align 4
  %104 = icmp sge i32 %102, %103
  br i1 %104, label %105, label %139

105:                                              ; preds = %80
  %106 = load i32, i32* %21, align 4
  %107 = load i32, i32* %17, align 4
  %108 = icmp eq i32 %106, %107
  br i1 %108, label %109, label %131

109:                                              ; preds = %105
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 2
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 0
  %113 = load i32*, i32** %112, align 8
  %114 = load i32, i32* %17, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %113, i64 %115
  %117 = load i32, i32* %116, align 4
  store i32 %117, i32* %22, align 4
  %118 = load i32, i32* %25, align 4
  %119 = load i32*, i32** %15, align 8
  %120 = load i32, i32* %17, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %119, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* %18, align 4
  %125 = shl i32 %123, %124
  %126 = mul i32 %118, %125
  %127 = load i32*, i32** %12, align 8
  %128 = load i32, i32* %22, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %127, i64 %129
  store i32 %126, i32* %130, align 4
  br label %211

131:                                              ; preds = %105
  %132 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* @AV_LOG_ERROR, align 4
  %136 = load i32, i32* %21, align 4
  %137 = call i32 @av_log(i32 %134, i32 %135, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %136)
  %138 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %138, i32* %10, align 4
  br label %224

139:                                              ; preds = %80
  %140 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i32 0, i32 2
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 0
  %143 = load i32*, i32** %142, align 8
  %144 = load i32, i32* %21, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i32, i32* %143, i64 %145
  %147 = load i32, i32* %146, align 4
  store i32 %147, i32* %22, align 4
  %148 = load i32, i32* %25, align 4
  %149 = load i32*, i32** %15, align 8
  %150 = load i32, i32* %21, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %149, i64 %151
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* %18, align 4
  %155 = shl i32 %153, %154
  %156 = mul i32 %148, %155
  %157 = load i32*, i32** %12, align 8
  %158 = load i32, i32* %22, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i32, i32* %157, i64 %159
  store i32 %156, i32* %160, align 4
  br label %207

161:                                              ; preds = %41
  %162 = load i32, i32* %24, align 4
  %163 = icmp eq i32 %162, 15
  br i1 %163, label %164, label %179

164:                                              ; preds = %161
  %165 = load i32, i32* %21, align 4
  %166 = add nsw i32 %165, 15
  store i32 %166, i32* %21, align 4
  %167 = load i32, i32* %21, align 4
  %168 = load i32, i32* %17, align 4
  %169 = icmp sge i32 %167, %168
  br i1 %169, label %170, label %178

170:                                              ; preds = %164
  %171 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %172 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = load i32, i32* @AV_LOG_ERROR, align 4
  %175 = load i32, i32* %21, align 4
  %176 = call i32 @av_log(i32 %173, i32 %174, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %175)
  %177 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %177, i32* %10, align 4
  br label %224

178:                                              ; preds = %164
  br label %206

179:                                              ; preds = %161
  %180 = load i32, i32* %24, align 4
  %181 = shl i32 1, %180
  store i32 %181, i32* %23, align 4
  %182 = load i32, i32* %24, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %202

184:                                              ; preds = %179
  %185 = load i32, i32* @re, align 4
  %186 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %187 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %186, i32 0, i32 0
  %188 = call i32 @UPDATE_CACHE(i32 %185, i32* %187)
  %189 = load i32, i32* @re, align 4
  %190 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %191 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %190, i32 0, i32 0
  %192 = call i32 @GET_CACHE(i32 %189, i32* %191)
  %193 = load i32, i32* %24, align 4
  %194 = call i32 @NEG_USR32(i32 %192, i32 %193)
  %195 = load i32, i32* %23, align 4
  %196 = add nsw i32 %195, %194
  store i32 %196, i32* %23, align 4
  %197 = load i32, i32* @re, align 4
  %198 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %199 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %198, i32 0, i32 0
  %200 = load i32, i32* %24, align 4
  %201 = call i32 @LAST_SKIP_BITS(i32 %197, i32* %199, i32 %200)
  br label %202

202:                                              ; preds = %184, %179
  %203 = load i32, i32* %23, align 4
  %204 = sub nsw i32 %203, 1
  %205 = load i32*, i32** %19, align 8
  store i32 %204, i32* %205, align 4
  br label %211

206:                                              ; preds = %178
  br label %207

207:                                              ; preds = %206, %139
  br label %208

208:                                              ; preds = %207
  %209 = load i32, i32* %21, align 4
  %210 = add nsw i32 %209, 1
  store i32 %210, i32* %21, align 4
  br label %41

211:                                              ; preds = %202, %109
  %212 = load i32, i32* @re, align 4
  %213 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %214 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %213, i32 0, i32 0
  %215 = call i32 @CLOSE_READER(i32 %212, i32* %214)
  %216 = load i32, i32* %21, align 4
  %217 = load i32*, i32** %13, align 8
  %218 = load i32, i32* %217, align 4
  %219 = icmp sgt i32 %216, %218
  br i1 %219, label %220, label %223

220:                                              ; preds = %211
  %221 = load i32, i32* %21, align 4
  %222 = load i32*, i32** %13, align 8
  store i32 %221, i32* %222, align 4
  br label %223

223:                                              ; preds = %220, %211
  store i32 0, i32* %10, align 4
  br label %224

224:                                              ; preds = %223, %170, %131, %31
  %225 = load i32, i32* %10, align 4
  ret i32 %225
}

declare dso_local i32 @OPEN_READER(i32, i32*) #1

declare dso_local i32 @UPDATE_CACHE(i32, i32*) #1

declare dso_local i32 @GET_VLC(i32, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @GET_CACHE(i32, i32*) #1

declare dso_local i32 @NEG_USR32(i32, i32) #1

declare dso_local i32 @LAST_SKIP_BITS(i32, i32*, i32) #1

declare dso_local i32 @av_log(i32, i32, i8*, i32) #1

declare dso_local i32 @CLOSE_READER(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
