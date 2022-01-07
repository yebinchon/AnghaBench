; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mpeg12dec.c_mpeg2_decode_block_non_intra.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mpeg12dec.c_mpeg2_decode_block_non_intra.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32* }
%struct.TYPE_9__ = type { i32, i32*, i32*, i32*, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32* }

@ff_rl_mpeg1 = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@re = common dso_local global i32 0, align 4
@TEX_VLC_BITS = common dso_local global i32 0, align 4
@MAX_INDEX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i32*, i32)* @mpeg2_decode_block_non_intra to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpeg2_decode_block_non_intra(%struct.TYPE_9__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_8__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  store %struct.TYPE_8__* @ff_rl_mpeg1, %struct.TYPE_8__** %11, align 8
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 5
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %12, align 8
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %14, align 4
  store i32 1, i32* %15, align 4
  %23 = load i32, i32* @re, align 4
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 4
  %26 = call i32 @OPEN_READER(i32 %23, i32* %25)
  store i32 -1, i32* %8, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp slt i32 %27, 4
  br i1 %28, label %29, label %33

29:                                               ; preds = %3
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  store i32* %32, i32** %13, align 8
  br label %37

33:                                               ; preds = %3
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 2
  %36 = load i32*, i32** %35, align 8
  store i32* %36, i32** %13, align 8
  br label %37

37:                                               ; preds = %33, %29
  %38 = load i32, i32* @re, align 4
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 4
  %41 = call i32 @UPDATE_CACHE(i32 %38, i32* %40)
  %42 = load i32, i32* @re, align 4
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 4
  %45 = call i32 @GET_CACHE(i32 %42, i32* %44)
  %46 = sext i32 %45 to i64
  %47 = icmp slt i64 %46, 0
  br i1 %47, label %48, label %86

48:                                               ; preds = %37
  %49 = load i32, i32* %14, align 4
  %50 = mul nsw i32 3, %49
  %51 = load i32*, i32** %13, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 0
  %53 = load i32, i32* %52, align 4
  %54 = mul nsw i32 %50, %53
  %55 = ashr i32 %54, 5
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* @re, align 4
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 4
  %59 = call i32 @GET_CACHE(i32 %56, i32* %58)
  %60 = and i32 %59, 1073741824
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %48
  %63 = load i32, i32* %7, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %7, align 4
  br label %65

65:                                               ; preds = %62, %48
  %66 = load i32, i32* %7, align 4
  %67 = load i32*, i32** %5, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 0
  store i32 %66, i32* %68, align 4
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* %15, align 4
  %71 = xor i32 %70, %69
  store i32 %71, i32* %15, align 4
  %72 = load i32, i32* %8, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %8, align 4
  %74 = load i32, i32* @re, align 4
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 4
  %77 = call i32 @SKIP_BITS(i32 %74, i32* %76, i32 2)
  %78 = load i32, i32* @re, align 4
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 4
  %81 = call i32 @GET_CACHE(i32 %78, i32* %80)
  %82 = sext i32 %81 to i64
  %83 = icmp sle i64 %82, 3221225471
  br i1 %83, label %84, label %85

84:                                               ; preds = %65
  br label %232

85:                                               ; preds = %65
  br label %86

86:                                               ; preds = %85, %37
  br label %87

87:                                               ; preds = %226, %86
  %88 = load i32, i32* %7, align 4
  %89 = load i32, i32* %10, align 4
  %90 = load i32, i32* @re, align 4
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 4
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 0
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @TEX_VLC_BITS, align 4
  %99 = call i32 @GET_RL_VLC(i32 %88, i32 %89, i32 %90, i32* %92, i32 %97, i32 %98, i32 2, i32 0)
  %100 = load i32, i32* %7, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %143

102:                                              ; preds = %87
  %103 = load i32, i32* %10, align 4
  %104 = load i32, i32* %8, align 4
  %105 = add nsw i32 %104, %103
  store i32 %105, i32* %8, align 4
  %106 = load i32, i32* %8, align 4
  %107 = load i32, i32* @MAX_INDEX, align 4
  %108 = icmp sgt i32 %106, %107
  br i1 %108, label %109, label %110

109:                                              ; preds = %102
  br label %231

110:                                              ; preds = %102
  %111 = load i32*, i32** %12, align 8
  %112 = load i32, i32* %8, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %111, i64 %113
  %115 = load i32, i32* %114, align 4
  store i32 %115, i32* %9, align 4
  %116 = load i32, i32* %7, align 4
  %117 = mul nsw i32 %116, 2
  %118 = add nsw i32 %117, 1
  %119 = load i32, i32* %14, align 4
  %120 = mul nsw i32 %118, %119
  %121 = load i32*, i32** %13, align 8
  %122 = load i32, i32* %9, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %121, i64 %123
  %125 = load i32, i32* %124, align 4
  %126 = mul nsw i32 %120, %125
  %127 = ashr i32 %126, 5
  store i32 %127, i32* %7, align 4
  %128 = load i32, i32* %7, align 4
  %129 = load i32, i32* @re, align 4
  %130 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i32 0, i32 4
  %132 = call i32 @SHOW_SBITS(i32 %129, i32* %131, i32 1)
  %133 = xor i32 %128, %132
  %134 = load i32, i32* @re, align 4
  %135 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %135, i32 0, i32 4
  %137 = call i32 @SHOW_SBITS(i32 %134, i32* %136, i32 1)
  %138 = sub nsw i32 %133, %137
  store i32 %138, i32* %7, align 4
  %139 = load i32, i32* @re, align 4
  %140 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %141 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %140, i32 0, i32 4
  %142 = call i32 @SKIP_BITS(i32 %139, i32* %141, i32 1)
  br label %210

143:                                              ; preds = %87
  %144 = load i32, i32* @re, align 4
  %145 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %146 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %145, i32 0, i32 4
  %147 = call i32 @SHOW_UBITS(i32 %144, i32* %146, i32 6)
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %10, align 4
  %149 = load i32, i32* @re, align 4
  %150 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %151 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %150, i32 0, i32 4
  %152 = call i32 @LAST_SKIP_BITS(i32 %149, i32* %151, i32 6)
  %153 = load i32, i32* @re, align 4
  %154 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %155 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %154, i32 0, i32 4
  %156 = call i32 @UPDATE_CACHE(i32 %153, i32* %155)
  %157 = load i32, i32* @re, align 4
  %158 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %159 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %158, i32 0, i32 4
  %160 = call i32 @SHOW_SBITS(i32 %157, i32* %159, i32 12)
  store i32 %160, i32* %7, align 4
  %161 = load i32, i32* @re, align 4
  %162 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %163 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %162, i32 0, i32 4
  %164 = call i32 @SKIP_BITS(i32 %161, i32* %163, i32 12)
  %165 = load i32, i32* %10, align 4
  %166 = load i32, i32* %8, align 4
  %167 = add nsw i32 %166, %165
  store i32 %167, i32* %8, align 4
  %168 = load i32, i32* %8, align 4
  %169 = load i32, i32* @MAX_INDEX, align 4
  %170 = icmp sgt i32 %168, %169
  br i1 %170, label %171, label %172

171:                                              ; preds = %143
  br label %231

172:                                              ; preds = %143
  %173 = load i32*, i32** %12, align 8
  %174 = load i32, i32* %8, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i32, i32* %173, i64 %175
  %177 = load i32, i32* %176, align 4
  store i32 %177, i32* %9, align 4
  %178 = load i32, i32* %7, align 4
  %179 = icmp slt i32 %178, 0
  br i1 %179, label %180, label %196

180:                                              ; preds = %172
  %181 = load i32, i32* %7, align 4
  %182 = sub nsw i32 0, %181
  %183 = mul nsw i32 %182, 2
  %184 = add nsw i32 %183, 1
  %185 = load i32, i32* %14, align 4
  %186 = mul nsw i32 %184, %185
  %187 = load i32*, i32** %13, align 8
  %188 = load i32, i32* %9, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i32, i32* %187, i64 %189
  %191 = load i32, i32* %190, align 4
  %192 = mul nsw i32 %186, %191
  %193 = ashr i32 %192, 5
  store i32 %193, i32* %7, align 4
  %194 = load i32, i32* %7, align 4
  %195 = sub nsw i32 0, %194
  store i32 %195, i32* %7, align 4
  br label %209

196:                                              ; preds = %172
  %197 = load i32, i32* %7, align 4
  %198 = mul nsw i32 %197, 2
  %199 = add nsw i32 %198, 1
  %200 = load i32, i32* %14, align 4
  %201 = mul nsw i32 %199, %200
  %202 = load i32*, i32** %13, align 8
  %203 = load i32, i32* %9, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i32, i32* %202, i64 %204
  %206 = load i32, i32* %205, align 4
  %207 = mul nsw i32 %201, %206
  %208 = ashr i32 %207, 5
  store i32 %208, i32* %7, align 4
  br label %209

209:                                              ; preds = %196, %180
  br label %210

210:                                              ; preds = %209, %110
  %211 = load i32, i32* %7, align 4
  %212 = load i32, i32* %15, align 4
  %213 = xor i32 %212, %211
  store i32 %213, i32* %15, align 4
  %214 = load i32, i32* %7, align 4
  %215 = load i32*, i32** %5, align 8
  %216 = load i32, i32* %9, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i32, i32* %215, i64 %217
  store i32 %214, i32* %218, align 4
  %219 = load i32, i32* @re, align 4
  %220 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %221 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %220, i32 0, i32 4
  %222 = call i32 @GET_CACHE(i32 %219, i32* %221)
  %223 = sext i32 %222 to i64
  %224 = icmp sle i64 %223, 3221225471
  br i1 %224, label %225, label %226

225:                                              ; preds = %210
  br label %231

226:                                              ; preds = %210
  %227 = load i32, i32* @re, align 4
  %228 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %229 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %228, i32 0, i32 4
  %230 = call i32 @UPDATE_CACHE(i32 %227, i32* %229)
  br label %87

231:                                              ; preds = %225, %171, %109
  br label %232

232:                                              ; preds = %231, %84
  %233 = load i32, i32* @re, align 4
  %234 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %235 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %234, i32 0, i32 4
  %236 = call i32 @LAST_SKIP_BITS(i32 %233, i32* %235, i32 2)
  %237 = load i32, i32* @re, align 4
  %238 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %239 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %238, i32 0, i32 4
  %240 = call i32 @CLOSE_READER(i32 %237, i32* %239)
  %241 = load i32, i32* %15, align 4
  %242 = and i32 %241, 1
  %243 = load i32*, i32** %5, align 8
  %244 = getelementptr inbounds i32, i32* %243, i64 63
  %245 = load i32, i32* %244, align 4
  %246 = xor i32 %245, %242
  store i32 %246, i32* %244, align 4
  %247 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %248 = load i32, i32* %8, align 4
  %249 = call i32 @check_scantable_index(%struct.TYPE_9__* %247, i32 %248)
  %250 = load i32, i32* %8, align 4
  %251 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %252 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %251, i32 0, i32 3
  %253 = load i32*, i32** %252, align 8
  %254 = load i32, i32* %6, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds i32, i32* %253, i64 %255
  store i32 %250, i32* %256, align 4
  ret i32 0
}

declare dso_local i32 @OPEN_READER(i32, i32*) #1

declare dso_local i32 @UPDATE_CACHE(i32, i32*) #1

declare dso_local i32 @GET_CACHE(i32, i32*) #1

declare dso_local i32 @SKIP_BITS(i32, i32*, i32) #1

declare dso_local i32 @GET_RL_VLC(i32, i32, i32, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @SHOW_SBITS(i32, i32*, i32) #1

declare dso_local i32 @SHOW_UBITS(i32, i32*, i32) #1

declare dso_local i32 @LAST_SKIP_BITS(i32, i32*, i32) #1

declare dso_local i32 @CLOSE_READER(i32, i32*) #1

declare dso_local i32 @check_scantable_index(%struct.TYPE_9__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
