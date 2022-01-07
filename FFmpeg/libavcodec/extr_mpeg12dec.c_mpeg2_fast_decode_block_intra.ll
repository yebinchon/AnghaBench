; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mpeg12dec.c_mpeg2_fast_decode_block_intra.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mpeg12dec.c_mpeg2_fast_decode_block_intra.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32* }
%struct.TYPE_10__ = type { i32, i32*, i32*, i32*, i32, i32*, i32, i64, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32* }

@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@ff_rl_mpeg2 = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@ff_rl_mpeg1 = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@re = common dso_local global i32 0, align 4
@TEX_VLC_BITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, i32*, i32)* @mpeg2_fast_decode_block_intra to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpeg2_fast_decode_block_intra(%struct.TYPE_10__* %0, i32* %1, i32 %2) #0 {
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
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  store i32* %22, i32** %16, align 8
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %18, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp slt i32 %26, 4
  br i1 %27, label %28, label %32

28:                                               ; preds = %3
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  store i32* %31, i32** %17, align 8
  store i32 0, i32* %14, align 4
  br label %39

32:                                               ; preds = %3
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 2
  %35 = load i32*, i32** %34, align 8
  store i32* %35, i32** %17, align 8
  %36 = load i32, i32* %7, align 4
  %37 = and i32 %36, 1
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %14, align 4
  br label %39

39:                                               ; preds = %32, %28
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 6
  %42 = load i32, i32* %14, align 4
  %43 = call i32 @decode_dc(i32* %41, i32 %42)
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %10, align 4
  %45 = icmp sge i32 %44, 65535
  br i1 %45, label %46, label %48

46:                                               ; preds = %39
  %47 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %47, i32* %4, align 4
  br label %225

48:                                               ; preds = %39
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 3
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %14, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* %9, align 4
  %58 = add nsw i32 %57, %56
  store i32 %58, i32* %9, align 4
  %59 = load i32, i32* %9, align 4
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 3
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %14, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  store i32 %59, i32* %65, align 4
  %66 = load i32, i32* %9, align 4
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 8
  %70 = sub nsw i32 3, %69
  %71 = shl i32 %66, %70
  %72 = load i32*, i32** %6, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 0
  store i32 %71, i32* %73, align 4
  store i32 0, i32* %11, align 4
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 7
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %48
  store %struct.TYPE_9__* @ff_rl_mpeg2, %struct.TYPE_9__** %15, align 8
  br label %80

79:                                               ; preds = %48
  store %struct.TYPE_9__* @ff_rl_mpeg1, %struct.TYPE_9__** %15, align 8
  br label %80

80:                                               ; preds = %79, %78
  %81 = load i32, i32* @re, align 4
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 6
  %84 = call i32 @OPEN_READER(i32 %81, i32* %83)
  br label %85

85:                                               ; preds = %204, %80
  %86 = load i32, i32* @re, align 4
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 6
  %89 = call i32 @UPDATE_CACHE(i32 %86, i32* %88)
  %90 = load i32, i32* %8, align 4
  %91 = load i32, i32* %13, align 4
  %92 = load i32, i32* @re, align 4
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 6
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @TEX_VLC_BITS, align 4
  %101 = call i32 @GET_RL_VLC(i32 %90, i32 %91, i32 %92, i32* %94, i32 %99, i32 %100, i32 2, i32 0)
  %102 = load i32, i32* %8, align 4
  %103 = icmp sge i32 %102, 64
  br i1 %103, label %107, label %104

104:                                              ; preds = %85
  %105 = load i32, i32* %11, align 4
  %106 = icmp sgt i32 %105, 63
  br i1 %106, label %107, label %108

107:                                              ; preds = %104, %85
  br label %210

108:                                              ; preds = %104
  %109 = load i32, i32* %8, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %145

111:                                              ; preds = %108
  %112 = load i32, i32* %13, align 4
  %113 = load i32, i32* %11, align 4
  %114 = add nsw i32 %113, %112
  store i32 %114, i32* %11, align 4
  %115 = load i32*, i32** %16, align 8
  %116 = load i32, i32* %11, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %115, i64 %117
  %119 = load i32, i32* %118, align 4
  store i32 %119, i32* %12, align 4
  %120 = load i32, i32* %8, align 4
  %121 = load i32, i32* %18, align 4
  %122 = mul nsw i32 %120, %121
  %123 = load i32*, i32** %17, align 8
  %124 = load i32, i32* %12, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %123, i64 %125
  %127 = load i32, i32* %126, align 4
  %128 = mul nsw i32 %122, %127
  %129 = ashr i32 %128, 4
  store i32 %129, i32* %8, align 4
  %130 = load i32, i32* %8, align 4
  %131 = load i32, i32* @re, align 4
  %132 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %132, i32 0, i32 6
  %134 = call i32 @SHOW_SBITS(i32 %131, i32* %133, i32 1)
  %135 = xor i32 %130, %134
  %136 = load i32, i32* @re, align 4
  %137 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %137, i32 0, i32 6
  %139 = call i32 @SHOW_SBITS(i32 %136, i32* %138, i32 1)
  %140 = sub nsw i32 %135, %139
  store i32 %140, i32* %8, align 4
  %141 = load i32, i32* @re, align 4
  %142 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %142, i32 0, i32 6
  %144 = call i32 @LAST_SKIP_BITS(i32 %141, i32* %143, i32 1)
  br label %203

145:                                              ; preds = %108
  %146 = load i32, i32* @re, align 4
  %147 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %148 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %147, i32 0, i32 6
  %149 = call i32 @SHOW_UBITS(i32 %146, i32* %148, i32 6)
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %13, align 4
  %151 = load i32, i32* @re, align 4
  %152 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %153 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %152, i32 0, i32 6
  %154 = call i32 @LAST_SKIP_BITS(i32 %151, i32* %153, i32 6)
  %155 = load i32, i32* @re, align 4
  %156 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %157 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %156, i32 0, i32 6
  %158 = call i32 @UPDATE_CACHE(i32 %155, i32* %157)
  %159 = load i32, i32* @re, align 4
  %160 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %161 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %160, i32 0, i32 6
  %162 = call i32 @SHOW_SBITS(i32 %159, i32* %161, i32 12)
  store i32 %162, i32* %8, align 4
  %163 = load i32, i32* @re, align 4
  %164 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %165 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %164, i32 0, i32 6
  %166 = call i32 @SKIP_BITS(i32 %163, i32* %165, i32 12)
  %167 = load i32, i32* %13, align 4
  %168 = load i32, i32* %11, align 4
  %169 = add nsw i32 %168, %167
  store i32 %169, i32* %11, align 4
  %170 = load i32*, i32** %16, align 8
  %171 = load i32, i32* %11, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i32, i32* %170, i64 %172
  %174 = load i32, i32* %173, align 4
  store i32 %174, i32* %12, align 4
  %175 = load i32, i32* %8, align 4
  %176 = icmp slt i32 %175, 0
  br i1 %176, label %177, label %191

177:                                              ; preds = %145
  %178 = load i32, i32* %8, align 4
  %179 = sub nsw i32 0, %178
  %180 = load i32, i32* %18, align 4
  %181 = mul nsw i32 %179, %180
  %182 = load i32*, i32** %17, align 8
  %183 = load i32, i32* %12, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i32, i32* %182, i64 %184
  %186 = load i32, i32* %185, align 4
  %187 = mul nsw i32 %181, %186
  %188 = ashr i32 %187, 4
  store i32 %188, i32* %8, align 4
  %189 = load i32, i32* %8, align 4
  %190 = sub nsw i32 0, %189
  store i32 %190, i32* %8, align 4
  br label %202

191:                                              ; preds = %145
  %192 = load i32, i32* %8, align 4
  %193 = load i32, i32* %18, align 4
  %194 = mul nsw i32 %192, %193
  %195 = load i32*, i32** %17, align 8
  %196 = load i32, i32* %12, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i32, i32* %195, i64 %197
  %199 = load i32, i32* %198, align 4
  %200 = mul nsw i32 %194, %199
  %201 = ashr i32 %200, 4
  store i32 %201, i32* %8, align 4
  br label %202

202:                                              ; preds = %191, %177
  br label %203

203:                                              ; preds = %202, %111
  br label %204

204:                                              ; preds = %203
  %205 = load i32, i32* %8, align 4
  %206 = load i32*, i32** %6, align 8
  %207 = load i32, i32* %12, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i32, i32* %206, i64 %208
  store i32 %205, i32* %209, align 4
  br label %85

210:                                              ; preds = %107
  %211 = load i32, i32* @re, align 4
  %212 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %213 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %212, i32 0, i32 6
  %214 = call i32 @CLOSE_READER(i32 %211, i32* %213)
  %215 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %216 = load i32, i32* %11, align 4
  %217 = call i32 @check_scantable_index(%struct.TYPE_10__* %215, i32 %216)
  %218 = load i32, i32* %11, align 4
  %219 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %220 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %219, i32 0, i32 5
  %221 = load i32*, i32** %220, align 8
  %222 = load i32, i32* %7, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds i32, i32* %221, i64 %223
  store i32 %218, i32* %224, align 4
  store i32 0, i32* %4, align 4
  br label %225

225:                                              ; preds = %210, %46
  %226 = load i32, i32* %4, align 4
  ret i32 %226
}

declare dso_local i32 @decode_dc(i32*, i32) #1

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
