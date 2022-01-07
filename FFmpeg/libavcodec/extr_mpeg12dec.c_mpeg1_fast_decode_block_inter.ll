; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mpeg12dec.c_mpeg1_fast_decode_block_inter.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mpeg12dec.c_mpeg1_fast_decode_block_inter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32* }
%struct.TYPE_9__ = type { i32, i32*, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32* }

@ff_rl_mpeg1 = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@re = common dso_local global i32 0, align 4
@TEX_VLC_BITS = common dso_local global i32 0, align 4
@MAX_INDEX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i32*, i32)* @mpeg1_fast_decode_block_inter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpeg1_fast_decode_block_inter(%struct.TYPE_9__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_8__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  store %struct.TYPE_8__* @ff_rl_mpeg1, %struct.TYPE_8__** %11, align 8
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 3
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  store i32* %17, i32** %12, align 8
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %13, align 4
  %21 = load i32, i32* @re, align 4
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 2
  %24 = call i32 @OPEN_READER(i32 %21, i32* %23)
  store i32 -1, i32* %8, align 4
  %25 = load i32, i32* @re, align 4
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 2
  %28 = call i32 @UPDATE_CACHE(i32 %25, i32* %27)
  %29 = load i32, i32* @re, align 4
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 2
  %32 = call i32 @GET_CACHE(i32 %29, i32* %31)
  %33 = sext i32 %32 to i64
  %34 = icmp slt i64 %33, 0
  br i1 %34, label %35, label %69

35:                                               ; preds = %3
  %36 = load i32, i32* %13, align 4
  %37 = mul nsw i32 3, %36
  %38 = ashr i32 %37, 1
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = sub nsw i32 %39, 1
  %41 = or i32 %40, 1
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* @re, align 4
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 2
  %45 = call i32 @GET_CACHE(i32 %42, i32* %44)
  %46 = and i32 %45, 1073741824
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %35
  %49 = load i32, i32* %7, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %7, align 4
  br label %51

51:                                               ; preds = %48, %35
  %52 = load i32, i32* %7, align 4
  %53 = load i32*, i32** %5, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 0
  store i32 %52, i32* %54, align 4
  %55 = load i32, i32* %8, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %8, align 4
  %57 = load i32, i32* @re, align 4
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 2
  %60 = call i32 @SKIP_BITS(i32 %57, i32* %59, i32 2)
  %61 = load i32, i32* @re, align 4
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 2
  %64 = call i32 @GET_CACHE(i32 %61, i32* %63)
  %65 = sext i32 %64 to i64
  %66 = icmp sle i64 %65, 3221225471
  br i1 %66, label %67, label %68

67:                                               ; preds = %51
  br label %230

68:                                               ; preds = %51
  br label %69

69:                                               ; preds = %68, %3
  br label %70

70:                                               ; preds = %224, %69
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* %10, align 4
  %73 = load i32, i32* @re, align 4
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 2
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @TEX_VLC_BITS, align 4
  %82 = call i32 @GET_RL_VLC(i32 %71, i32 %72, i32 %73, i32* %75, i32 %80, i32 %81, i32 2, i32 0)
  %83 = load i32, i32* %7, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %123

85:                                               ; preds = %70
  %86 = load i32, i32* %10, align 4
  %87 = load i32, i32* %8, align 4
  %88 = add nsw i32 %87, %86
  store i32 %88, i32* %8, align 4
  %89 = load i32, i32* %8, align 4
  %90 = load i32, i32* @MAX_INDEX, align 4
  %91 = icmp sgt i32 %89, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %85
  br label %229

93:                                               ; preds = %85
  %94 = load i32*, i32** %12, align 8
  %95 = load i32, i32* %8, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  %98 = load i32, i32* %97, align 4
  store i32 %98, i32* %9, align 4
  %99 = load i32, i32* %7, align 4
  %100 = mul nsw i32 %99, 2
  %101 = add nsw i32 %100, 1
  %102 = load i32, i32* %13, align 4
  %103 = mul nsw i32 %101, %102
  %104 = ashr i32 %103, 1
  store i32 %104, i32* %7, align 4
  %105 = load i32, i32* %7, align 4
  %106 = sub nsw i32 %105, 1
  %107 = or i32 %106, 1
  store i32 %107, i32* %7, align 4
  %108 = load i32, i32* %7, align 4
  %109 = load i32, i32* @re, align 4
  %110 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 2
  %112 = call i32 @SHOW_SBITS(i32 %109, i32* %111, i32 1)
  %113 = xor i32 %108, %112
  %114 = load i32, i32* @re, align 4
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 2
  %117 = call i32 @SHOW_SBITS(i32 %114, i32* %116, i32 1)
  %118 = sub nsw i32 %113, %117
  store i32 %118, i32* %7, align 4
  %119 = load i32, i32* @re, align 4
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 2
  %122 = call i32 @SKIP_BITS(i32 %119, i32* %121, i32 1)
  br label %211

123:                                              ; preds = %70
  %124 = load i32, i32* @re, align 4
  %125 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i32 0, i32 2
  %127 = call i32 @SHOW_UBITS(i32 %124, i32* %126, i32 6)
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %10, align 4
  %129 = load i32, i32* @re, align 4
  %130 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i32 0, i32 2
  %132 = call i32 @LAST_SKIP_BITS(i32 %129, i32* %131, i32 6)
  %133 = load i32, i32* @re, align 4
  %134 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 2
  %136 = call i32 @UPDATE_CACHE(i32 %133, i32* %135)
  %137 = load i32, i32* @re, align 4
  %138 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %138, i32 0, i32 2
  %140 = call i32 @SHOW_SBITS(i32 %137, i32* %139, i32 8)
  store i32 %140, i32* %7, align 4
  %141 = load i32, i32* @re, align 4
  %142 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %143 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %142, i32 0, i32 2
  %144 = call i32 @SKIP_BITS(i32 %141, i32* %143, i32 8)
  %145 = load i32, i32* %7, align 4
  %146 = icmp eq i32 %145, -128
  br i1 %146, label %147, label %157

147:                                              ; preds = %123
  %148 = load i32, i32* @re, align 4
  %149 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %150 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %149, i32 0, i32 2
  %151 = call i32 @SHOW_UBITS(i32 %148, i32* %150, i32 8)
  %152 = sub nsw i32 %151, 256
  store i32 %152, i32* %7, align 4
  %153 = load i32, i32* @re, align 4
  %154 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %155 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %154, i32 0, i32 2
  %156 = call i32 @SKIP_BITS(i32 %153, i32* %155, i32 8)
  br label %170

157:                                              ; preds = %123
  %158 = load i32, i32* %7, align 4
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %160, label %169

160:                                              ; preds = %157
  %161 = load i32, i32* @re, align 4
  %162 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %163 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %162, i32 0, i32 2
  %164 = call i32 @SHOW_UBITS(i32 %161, i32* %163, i32 8)
  store i32 %164, i32* %7, align 4
  %165 = load i32, i32* @re, align 4
  %166 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %167 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %166, i32 0, i32 2
  %168 = call i32 @SKIP_BITS(i32 %165, i32* %167, i32 8)
  br label %169

169:                                              ; preds = %160, %157
  br label %170

170:                                              ; preds = %169, %147
  %171 = load i32, i32* %10, align 4
  %172 = load i32, i32* %8, align 4
  %173 = add nsw i32 %172, %171
  store i32 %173, i32* %8, align 4
  %174 = load i32, i32* %8, align 4
  %175 = load i32, i32* @MAX_INDEX, align 4
  %176 = icmp sgt i32 %174, %175
  br i1 %176, label %177, label %178

177:                                              ; preds = %170
  br label %229

178:                                              ; preds = %170
  %179 = load i32*, i32** %12, align 8
  %180 = load i32, i32* %8, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i32, i32* %179, i64 %181
  %183 = load i32, i32* %182, align 4
  store i32 %183, i32* %9, align 4
  %184 = load i32, i32* %7, align 4
  %185 = icmp slt i32 %184, 0
  br i1 %185, label %186, label %200

186:                                              ; preds = %178
  %187 = load i32, i32* %7, align 4
  %188 = sub nsw i32 0, %187
  store i32 %188, i32* %7, align 4
  %189 = load i32, i32* %7, align 4
  %190 = mul nsw i32 %189, 2
  %191 = add nsw i32 %190, 1
  %192 = load i32, i32* %13, align 4
  %193 = mul nsw i32 %191, %192
  %194 = ashr i32 %193, 1
  store i32 %194, i32* %7, align 4
  %195 = load i32, i32* %7, align 4
  %196 = sub nsw i32 %195, 1
  %197 = or i32 %196, 1
  store i32 %197, i32* %7, align 4
  %198 = load i32, i32* %7, align 4
  %199 = sub nsw i32 0, %198
  store i32 %199, i32* %7, align 4
  br label %210

200:                                              ; preds = %178
  %201 = load i32, i32* %7, align 4
  %202 = mul nsw i32 %201, 2
  %203 = add nsw i32 %202, 1
  %204 = load i32, i32* %13, align 4
  %205 = mul nsw i32 %203, %204
  %206 = ashr i32 %205, 1
  store i32 %206, i32* %7, align 4
  %207 = load i32, i32* %7, align 4
  %208 = sub nsw i32 %207, 1
  %209 = or i32 %208, 1
  store i32 %209, i32* %7, align 4
  br label %210

210:                                              ; preds = %200, %186
  br label %211

211:                                              ; preds = %210, %93
  %212 = load i32, i32* %7, align 4
  %213 = load i32*, i32** %5, align 8
  %214 = load i32, i32* %9, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds i32, i32* %213, i64 %215
  store i32 %212, i32* %216, align 4
  %217 = load i32, i32* @re, align 4
  %218 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %219 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %218, i32 0, i32 2
  %220 = call i32 @GET_CACHE(i32 %217, i32* %219)
  %221 = sext i32 %220 to i64
  %222 = icmp sle i64 %221, 3221225471
  br i1 %222, label %223, label %224

223:                                              ; preds = %211
  br label %229

224:                                              ; preds = %211
  %225 = load i32, i32* @re, align 4
  %226 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %227 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %226, i32 0, i32 2
  %228 = call i32 @UPDATE_CACHE(i32 %225, i32* %227)
  br label %70

229:                                              ; preds = %223, %177, %92
  br label %230

230:                                              ; preds = %229, %67
  %231 = load i32, i32* @re, align 4
  %232 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %233 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %232, i32 0, i32 2
  %234 = call i32 @LAST_SKIP_BITS(i32 %231, i32* %233, i32 2)
  %235 = load i32, i32* @re, align 4
  %236 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %237 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %236, i32 0, i32 2
  %238 = call i32 @CLOSE_READER(i32 %235, i32* %237)
  %239 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %240 = load i32, i32* %8, align 4
  %241 = call i32 @check_scantable_index(%struct.TYPE_9__* %239, i32 %240)
  %242 = load i32, i32* %8, align 4
  %243 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %244 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %243, i32 0, i32 1
  %245 = load i32*, i32** %244, align 8
  %246 = load i32, i32* %6, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds i32, i32* %245, i64 %247
  store i32 %242, i32* %248, align 4
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
