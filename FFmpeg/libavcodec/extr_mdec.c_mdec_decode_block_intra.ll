; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mdec.c_mdec_decode_block_intra.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mdec.c_mdec_decode_block_intra.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32* }
%struct.TYPE_8__ = type { i32*, i32, i32, i32*, i32*, i32, i32, i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32* }

@ff_rl_mpeg1 = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@re = common dso_local global i32 0, align 4
@TEX_VLC_BITS = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"ac-tex damaged at %d %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i32*, i32)* @mdec_decode_block_intra to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mdec_decode_block_intra(%struct.TYPE_8__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_7__*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.TYPE_7__* @ff_rl_mpeg1, %struct.TYPE_7__** %14, align 8
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 9
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  store i32* %21, i32** %15, align 8
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  store i32* %24, i32** %16, align 8
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %17, align 4
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = icmp eq i32 %30, 2
  br i1 %31, label %32, label %40

32:                                               ; preds = %3
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 5
  %35 = call i32 @get_sbits(i32* %34, i32 10)
  %36 = mul nsw i32 2, %35
  %37 = add nsw i32 %36, 1024
  %38 = load i32*, i32** %6, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  store i32 %37, i32* %39, align 4
  br label %78

40:                                               ; preds = %3
  %41 = load i32, i32* %7, align 4
  %42 = icmp sle i32 %41, 3
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  br label %48

44:                                               ; preds = %40
  %45 = load i32, i32* %7, align 4
  %46 = sub nsw i32 %45, 4
  %47 = add nsw i32 %46, 1
  br label %48

48:                                               ; preds = %44, %43
  %49 = phi i32 [ 0, %43 ], [ %47, %44 ]
  store i32 %49, i32* %13, align 4
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 5
  %52 = load i32, i32* %13, align 4
  %53 = call i32 @decode_dc(i32* %51, i32 %52)
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %9, align 4
  %55 = icmp sge i32 %54, 65535
  br i1 %55, label %56, label %58

56:                                               ; preds = %48
  %57 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %57, i32* %4, align 4
  br label %256

58:                                               ; preds = %48
  %59 = load i32, i32* %9, align 4
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 3
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %13, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = add nsw i32 %66, %59
  store i32 %67, i32* %65, align 4
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 3
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %13, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = mul nsw i32 %74, 8
  %76 = load i32*, i32** %6, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 0
  store i32 %75, i32* %77, align 4
  br label %78

78:                                               ; preds = %58, %32
  store i32 0, i32* %10, align 4
  %79 = load i32, i32* @re, align 4
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 5
  %82 = call i32 @OPEN_READER(i32 %79, i32* %81)
  br label %83

83:                                               ; preds = %238, %78
  %84 = load i32, i32* @re, align 4
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 5
  %87 = call i32 @UPDATE_CACHE(i32 %84, i32* %86)
  %88 = load i32, i32* %8, align 4
  %89 = load i32, i32* %12, align 4
  %90 = load i32, i32* @re, align 4
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 5
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 0
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @TEX_VLC_BITS, align 4
  %99 = call i32 @GET_RL_VLC(i32 %88, i32 %89, i32 %90, i32* %92, i32 %97, i32 %98, i32 2, i32 0)
  %100 = load i32, i32* %8, align 4
  %101 = icmp eq i32 %100, 127
  br i1 %101, label %102, label %103

102:                                              ; preds = %83
  br label %244

103:                                              ; preds = %83
  %104 = load i32, i32* %8, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %156

106:                                              ; preds = %103
  %107 = load i32, i32* %12, align 4
  %108 = load i32, i32* %10, align 4
  %109 = add nsw i32 %108, %107
  store i32 %109, i32* %10, align 4
  %110 = load i32, i32* %10, align 4
  %111 = icmp sgt i32 %110, 63
  br i1 %111, label %112, label %125

112:                                              ; preds = %106
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 8
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @AV_LOG_ERROR, align 4
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 7
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 6
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @av_log(i32 %115, i32 %116, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %119, i32 %122)
  %124 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %124, i32* %4, align 4
  br label %256

125:                                              ; preds = %106
  %126 = load i32*, i32** %15, align 8
  %127 = load i32, i32* %10, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %126, i64 %128
  %130 = load i32, i32* %129, align 4
  store i32 %130, i32* %11, align 4
  %131 = load i32, i32* %8, align 4
  %132 = load i32, i32* %17, align 4
  %133 = mul nsw i32 %131, %132
  %134 = load i32*, i32** %16, align 8
  %135 = load i32, i32* %11, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %134, i64 %136
  %138 = load i32, i32* %137, align 4
  %139 = mul nsw i32 %133, %138
  %140 = ashr i32 %139, 3
  store i32 %140, i32* %8, align 4
  %141 = load i32, i32* %8, align 4
  %142 = load i32, i32* @re, align 4
  %143 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 5
  %145 = call i32 @SHOW_SBITS(i32 %142, i32* %144, i32 1)
  %146 = xor i32 %141, %145
  %147 = load i32, i32* @re, align 4
  %148 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i32 0, i32 5
  %150 = call i32 @SHOW_SBITS(i32 %147, i32* %149, i32 1)
  %151 = sub nsw i32 %146, %150
  store i32 %151, i32* %8, align 4
  %152 = load i32, i32* @re, align 4
  %153 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %154 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %153, i32 0, i32 5
  %155 = call i32 @LAST_SKIP_BITS(i32 %152, i32* %154, i32 1)
  br label %237

156:                                              ; preds = %103
  %157 = load i32, i32* @re, align 4
  %158 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %159 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %158, i32 0, i32 5
  %160 = call i32 @SHOW_UBITS(i32 %157, i32* %159, i32 6)
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %12, align 4
  %162 = load i32, i32* @re, align 4
  %163 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %164 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %163, i32 0, i32 5
  %165 = call i32 @LAST_SKIP_BITS(i32 %162, i32* %164, i32 6)
  %166 = load i32, i32* @re, align 4
  %167 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %168 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %167, i32 0, i32 5
  %169 = call i32 @UPDATE_CACHE(i32 %166, i32* %168)
  %170 = load i32, i32* @re, align 4
  %171 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %172 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %171, i32 0, i32 5
  %173 = call i32 @SHOW_SBITS(i32 %170, i32* %172, i32 10)
  store i32 %173, i32* %8, align 4
  %174 = load i32, i32* @re, align 4
  %175 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %176 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %175, i32 0, i32 5
  %177 = call i32 @SKIP_BITS(i32 %174, i32* %176, i32 10)
  %178 = load i32, i32* %12, align 4
  %179 = load i32, i32* %10, align 4
  %180 = add nsw i32 %179, %178
  store i32 %180, i32* %10, align 4
  %181 = load i32, i32* %10, align 4
  %182 = icmp sgt i32 %181, 63
  br i1 %182, label %183, label %196

183:                                              ; preds = %156
  %184 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %185 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %184, i32 0, i32 8
  %186 = load i32, i32* %185, align 4
  %187 = load i32, i32* @AV_LOG_ERROR, align 4
  %188 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %189 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %188, i32 0, i32 7
  %190 = load i32, i32* %189, align 8
  %191 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %192 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %191, i32 0, i32 6
  %193 = load i32, i32* %192, align 4
  %194 = call i32 @av_log(i32 %186, i32 %187, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %190, i32 %193)
  %195 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %195, i32* %4, align 4
  br label %256

196:                                              ; preds = %156
  %197 = load i32*, i32** %15, align 8
  %198 = load i32, i32* %10, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i32, i32* %197, i64 %199
  %201 = load i32, i32* %200, align 4
  store i32 %201, i32* %11, align 4
  %202 = load i32, i32* %8, align 4
  %203 = icmp slt i32 %202, 0
  br i1 %203, label %204, label %222

204:                                              ; preds = %196
  %205 = load i32, i32* %8, align 4
  %206 = sub nsw i32 0, %205
  store i32 %206, i32* %8, align 4
  %207 = load i32, i32* %8, align 4
  %208 = load i32, i32* %17, align 4
  %209 = mul i32 %207, %208
  %210 = load i32*, i32** %16, align 8
  %211 = load i32, i32* %11, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds i32, i32* %210, i64 %212
  %214 = load i32, i32* %213, align 4
  %215 = mul i32 %209, %214
  %216 = lshr i32 %215, 3
  store i32 %216, i32* %8, align 4
  %217 = load i32, i32* %8, align 4
  %218 = sub nsw i32 %217, 1
  %219 = or i32 %218, 1
  store i32 %219, i32* %8, align 4
  %220 = load i32, i32* %8, align 4
  %221 = sub nsw i32 0, %220
  store i32 %221, i32* %8, align 4
  br label %236

222:                                              ; preds = %196
  %223 = load i32, i32* %8, align 4
  %224 = load i32, i32* %17, align 4
  %225 = mul i32 %223, %224
  %226 = load i32*, i32** %16, align 8
  %227 = load i32, i32* %11, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds i32, i32* %226, i64 %228
  %230 = load i32, i32* %229, align 4
  %231 = mul i32 %225, %230
  %232 = lshr i32 %231, 3
  store i32 %232, i32* %8, align 4
  %233 = load i32, i32* %8, align 4
  %234 = sub nsw i32 %233, 1
  %235 = or i32 %234, 1
  store i32 %235, i32* %8, align 4
  br label %236

236:                                              ; preds = %222, %204
  br label %237

237:                                              ; preds = %236, %125
  br label %238

238:                                              ; preds = %237
  %239 = load i32, i32* %8, align 4
  %240 = load i32*, i32** %6, align 8
  %241 = load i32, i32* %11, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds i32, i32* %240, i64 %242
  store i32 %239, i32* %243, align 4
  br label %83

244:                                              ; preds = %102
  %245 = load i32, i32* @re, align 4
  %246 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %247 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %246, i32 0, i32 5
  %248 = call i32 @CLOSE_READER(i32 %245, i32* %247)
  %249 = load i32, i32* %10, align 4
  %250 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %251 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %250, i32 0, i32 4
  %252 = load i32*, i32** %251, align 8
  %253 = load i32, i32* %7, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds i32, i32* %252, i64 %254
  store i32 %249, i32* %255, align 4
  store i32 0, i32* %4, align 4
  br label %256

256:                                              ; preds = %244, %183, %112, %56
  %257 = load i32, i32* %4, align 4
  ret i32 %257
}

declare dso_local i32 @get_sbits(i32*, i32) #1

declare dso_local i32 @decode_dc(i32*, i32) #1

declare dso_local i32 @OPEN_READER(i32, i32*) #1

declare dso_local i32 @UPDATE_CACHE(i32, i32*) #1

declare dso_local i32 @GET_RL_VLC(i32, i32, i32, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @av_log(i32, i32, i8*, i32, i32) #1

declare dso_local i32 @SHOW_SBITS(i32, i32*, i32) #1

declare dso_local i32 @LAST_SKIP_BITS(i32, i32*, i32) #1

declare dso_local i32 @SHOW_UBITS(i32, i32*, i32) #1

declare dso_local i32 @SKIP_BITS(i32, i32*, i32) #1

declare dso_local i32 @CLOSE_READER(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
