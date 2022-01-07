; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mpeg12dec.c_mpeg2_decode_block_intra.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mpeg12dec.c_mpeg2_decode_block_intra.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32* }
%struct.TYPE_10__ = type { i32, i32*, i32*, i32*, i32, i32*, i32, i64, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32* }

@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"dc=%d\0A\00", align 1
@ff_rl_mpeg2 = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@ff_rl_mpeg1 = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@re = common dso_local global i32 0, align 4
@TEX_VLC_BITS = common dso_local global i32 0, align 4
@MAX_INDEX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, i32*, i32)* @mpeg2_decode_block_intra to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpeg2_decode_block_intra(%struct.TYPE_10__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_9__*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 9
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  store i32* %23, i32** %16, align 8
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %18, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp slt i32 %27, 4
  br i1 %28, label %29, label %33

29:                                               ; preds = %3
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  store i32* %32, i32** %17, align 8
  store i32 0, i32* %14, align 4
  br label %40

33:                                               ; preds = %3
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 2
  %36 = load i32*, i32** %35, align 8
  store i32* %36, i32** %17, align 8
  %37 = load i32, i32* %7, align 4
  %38 = and i32 %37, 1
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %14, align 4
  br label %40

40:                                               ; preds = %33, %29
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 6
  %43 = load i32, i32* %14, align 4
  %44 = call i32 @decode_dc(i32* %42, i32 %43)
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %10, align 4
  %46 = icmp sge i32 %45, 65535
  br i1 %46, label %47, label %49

47:                                               ; preds = %40
  %48 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %48, i32* %4, align 4
  br label %254

49:                                               ; preds = %40
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 3
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %14, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* %9, align 4
  %59 = add nsw i32 %58, %57
  store i32 %59, i32* %9, align 4
  %60 = load i32, i32* %9, align 4
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 3
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %14, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  store i32 %60, i32* %66, align 4
  %67 = load i32, i32* %9, align 4
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 8
  %71 = sub nsw i32 3, %70
  %72 = shl i32 1, %71
  %73 = mul nsw i32 %67, %72
  %74 = load i32*, i32** %6, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 0
  store i32 %73, i32* %75, align 4
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 8
  %78 = load i32, i32* %77, align 8
  %79 = load i32*, i32** %6, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @ff_tlog(i32 %78, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %81)
  %83 = load i32*, i32** %6, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 0
  %85 = load i32, i32* %84, align 4
  %86 = xor i32 %85, 1
  store i32 %86, i32* %19, align 4
  store i32 0, i32* %11, align 4
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 7
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %49
  store %struct.TYPE_9__* @ff_rl_mpeg2, %struct.TYPE_9__** %15, align 8
  br label %93

92:                                               ; preds = %49
  store %struct.TYPE_9__* @ff_rl_mpeg1, %struct.TYPE_9__** %15, align 8
  br label %93

93:                                               ; preds = %92, %91
  %94 = load i32, i32* @re, align 4
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 6
  %97 = call i32 @OPEN_READER(i32 %94, i32* %96)
  br label %98

98:                                               ; preds = %224, %93
  %99 = load i32, i32* @re, align 4
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 6
  %102 = call i32 @UPDATE_CACHE(i32 %99, i32* %101)
  %103 = load i32, i32* %8, align 4
  %104 = load i32, i32* %13, align 4
  %105 = load i32, i32* @re, align 4
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 6
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 0
  %110 = load i32*, i32** %109, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 0
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @TEX_VLC_BITS, align 4
  %114 = call i32 @GET_RL_VLC(i32 %103, i32 %104, i32 %105, i32* %107, i32 %112, i32 %113, i32 2, i32 0)
  %115 = load i32, i32* %8, align 4
  %116 = icmp eq i32 %115, 127
  br i1 %116, label %117, label %118

117:                                              ; preds = %98
  br label %233

118:                                              ; preds = %98
  %119 = load i32, i32* %8, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %160

121:                                              ; preds = %118
  %122 = load i32, i32* %13, align 4
  %123 = load i32, i32* %11, align 4
  %124 = add nsw i32 %123, %122
  store i32 %124, i32* %11, align 4
  %125 = load i32, i32* %11, align 4
  %126 = load i32, i32* @MAX_INDEX, align 4
  %127 = icmp sgt i32 %125, %126
  br i1 %127, label %128, label %129

128:                                              ; preds = %121
  br label %233

129:                                              ; preds = %121
  %130 = load i32*, i32** %16, align 8
  %131 = load i32, i32* %11, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %130, i64 %132
  %134 = load i32, i32* %133, align 4
  store i32 %134, i32* %12, align 4
  %135 = load i32, i32* %8, align 4
  %136 = load i32, i32* %18, align 4
  %137 = mul nsw i32 %135, %136
  %138 = load i32*, i32** %17, align 8
  %139 = load i32, i32* %12, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32, i32* %138, i64 %140
  %142 = load i32, i32* %141, align 4
  %143 = mul nsw i32 %137, %142
  %144 = ashr i32 %143, 4
  store i32 %144, i32* %8, align 4
  %145 = load i32, i32* %8, align 4
  %146 = load i32, i32* @re, align 4
  %147 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %148 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %147, i32 0, i32 6
  %149 = call i32 @SHOW_SBITS(i32 %146, i32* %148, i32 1)
  %150 = xor i32 %145, %149
  %151 = load i32, i32* @re, align 4
  %152 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %153 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %152, i32 0, i32 6
  %154 = call i32 @SHOW_SBITS(i32 %151, i32* %153, i32 1)
  %155 = sub nsw i32 %150, %154
  store i32 %155, i32* %8, align 4
  %156 = load i32, i32* @re, align 4
  %157 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %158 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %157, i32 0, i32 6
  %159 = call i32 @LAST_SKIP_BITS(i32 %156, i32* %158, i32 1)
  br label %223

160:                                              ; preds = %118
  %161 = load i32, i32* @re, align 4
  %162 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %163 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %162, i32 0, i32 6
  %164 = call i32 @SHOW_UBITS(i32 %161, i32* %163, i32 6)
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %13, align 4
  %166 = load i32, i32* @re, align 4
  %167 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %168 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %167, i32 0, i32 6
  %169 = call i32 @LAST_SKIP_BITS(i32 %166, i32* %168, i32 6)
  %170 = load i32, i32* @re, align 4
  %171 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %172 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %171, i32 0, i32 6
  %173 = call i32 @UPDATE_CACHE(i32 %170, i32* %172)
  %174 = load i32, i32* @re, align 4
  %175 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %176 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %175, i32 0, i32 6
  %177 = call i32 @SHOW_SBITS(i32 %174, i32* %176, i32 12)
  store i32 %177, i32* %8, align 4
  %178 = load i32, i32* @re, align 4
  %179 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %180 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %179, i32 0, i32 6
  %181 = call i32 @SKIP_BITS(i32 %178, i32* %180, i32 12)
  %182 = load i32, i32* %13, align 4
  %183 = load i32, i32* %11, align 4
  %184 = add nsw i32 %183, %182
  store i32 %184, i32* %11, align 4
  %185 = load i32, i32* %11, align 4
  %186 = load i32, i32* @MAX_INDEX, align 4
  %187 = icmp sgt i32 %185, %186
  br i1 %187, label %188, label %189

188:                                              ; preds = %160
  br label %233

189:                                              ; preds = %160
  %190 = load i32*, i32** %16, align 8
  %191 = load i32, i32* %11, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i32, i32* %190, i64 %192
  %194 = load i32, i32* %193, align 4
  store i32 %194, i32* %12, align 4
  %195 = load i32, i32* %8, align 4
  %196 = icmp slt i32 %195, 0
  br i1 %196, label %197, label %211

197:                                              ; preds = %189
  %198 = load i32, i32* %8, align 4
  %199 = sub nsw i32 0, %198
  %200 = load i32, i32* %18, align 4
  %201 = mul nsw i32 %199, %200
  %202 = load i32*, i32** %17, align 8
  %203 = load i32, i32* %12, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i32, i32* %202, i64 %204
  %206 = load i32, i32* %205, align 4
  %207 = mul nsw i32 %201, %206
  %208 = ashr i32 %207, 4
  store i32 %208, i32* %8, align 4
  %209 = load i32, i32* %8, align 4
  %210 = sub nsw i32 0, %209
  store i32 %210, i32* %8, align 4
  br label %222

211:                                              ; preds = %189
  %212 = load i32, i32* %8, align 4
  %213 = load i32, i32* %18, align 4
  %214 = mul nsw i32 %212, %213
  %215 = load i32*, i32** %17, align 8
  %216 = load i32, i32* %12, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i32, i32* %215, i64 %217
  %219 = load i32, i32* %218, align 4
  %220 = mul nsw i32 %214, %219
  %221 = ashr i32 %220, 4
  store i32 %221, i32* %8, align 4
  br label %222

222:                                              ; preds = %211, %197
  br label %223

223:                                              ; preds = %222, %129
  br label %224

224:                                              ; preds = %223
  %225 = load i32, i32* %8, align 4
  %226 = load i32, i32* %19, align 4
  %227 = xor i32 %226, %225
  store i32 %227, i32* %19, align 4
  %228 = load i32, i32* %8, align 4
  %229 = load i32*, i32** %6, align 8
  %230 = load i32, i32* %12, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds i32, i32* %229, i64 %231
  store i32 %228, i32* %232, align 4
  br label %98

233:                                              ; preds = %188, %128, %117
  %234 = load i32, i32* @re, align 4
  %235 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %236 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %235, i32 0, i32 6
  %237 = call i32 @CLOSE_READER(i32 %234, i32* %236)
  %238 = load i32, i32* %19, align 4
  %239 = and i32 %238, 1
  %240 = load i32*, i32** %6, align 8
  %241 = getelementptr inbounds i32, i32* %240, i64 63
  %242 = load i32, i32* %241, align 4
  %243 = xor i32 %242, %239
  store i32 %243, i32* %241, align 4
  %244 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %245 = load i32, i32* %11, align 4
  %246 = call i32 @check_scantable_index(%struct.TYPE_10__* %244, i32 %245)
  %247 = load i32, i32* %11, align 4
  %248 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %249 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %248, i32 0, i32 5
  %250 = load i32*, i32** %249, align 8
  %251 = load i32, i32* %7, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds i32, i32* %250, i64 %252
  store i32 %247, i32* %253, align 4
  store i32 0, i32* %4, align 4
  br label %254

254:                                              ; preds = %233, %47
  %255 = load i32, i32* %4, align 4
  ret i32 %255
}

declare dso_local i32 @decode_dc(i32*, i32) #1

declare dso_local i32 @ff_tlog(i32, i8*, i32) #1

declare dso_local i32 @OPEN_READER(i32, i32*) #1

declare dso_local i32 @UPDATE_CACHE(i32, i32*) #1

declare dso_local i32 @GET_RL_VLC(i32, i32, i32, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @SHOW_SBITS(i32, i32*, i32) #1

declare dso_local i32 @LAST_SKIP_BITS(i32, i32*, i32) #1

declare dso_local i32 @SHOW_UBITS(i32, i32*, i32) #1

declare dso_local i32 @SKIP_BITS(i32, i32*, i32) #1

declare dso_local i32 @CLOSE_READER(i32, i32*) #1

declare dso_local i32 @check_scantable_index(%struct.TYPE_10__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
