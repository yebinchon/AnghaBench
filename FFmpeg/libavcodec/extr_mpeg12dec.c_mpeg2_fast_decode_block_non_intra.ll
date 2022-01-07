; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mpeg12dec.c_mpeg2_fast_decode_block_non_intra.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mpeg12dec.c_mpeg2_fast_decode_block_non_intra.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32* }
%struct.TYPE_9__ = type { i32, i32*, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32* }

@ff_rl_mpeg1 = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@re = common dso_local global i32 0, align 4
@TEX_VLC_BITS = common dso_local global i32 0, align 4
@MAX_INDEX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i32*, i32)* @mpeg2_fast_decode_block_non_intra to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpeg2_fast_decode_block_non_intra(%struct.TYPE_9__* %0, i32* %1, i32 %2) #0 {
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
  br i1 %34, label %35, label %66

35:                                               ; preds = %3
  %36 = load i32, i32* %13, align 4
  %37 = mul nsw i32 3, %36
  %38 = ashr i32 %37, 1
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* @re, align 4
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 2
  %42 = call i32 @GET_CACHE(i32 %39, i32* %41)
  %43 = and i32 %42, 1073741824
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %35
  %46 = load i32, i32* %7, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %7, align 4
  br label %48

48:                                               ; preds = %45, %35
  %49 = load i32, i32* %7, align 4
  %50 = load i32*, i32** %5, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 0
  store i32 %49, i32* %51, align 4
  %52 = load i32, i32* %8, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* @re, align 4
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 2
  %57 = call i32 @SKIP_BITS(i32 %54, i32* %56, i32 2)
  %58 = load i32, i32* @re, align 4
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 2
  %61 = call i32 @GET_CACHE(i32 %58, i32* %60)
  %62 = sext i32 %61 to i64
  %63 = icmp sle i64 %62, 3221225471
  br i1 %63, label %64, label %65

64:                                               ; preds = %48
  br label %194

65:                                               ; preds = %48
  br label %66

66:                                               ; preds = %65, %3
  br label %67

67:                                               ; preds = %188, %66
  %68 = load i32, i32* %7, align 4
  %69 = load i32, i32* %10, align 4
  %70 = load i32, i32* @re, align 4
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 2
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @TEX_VLC_BITS, align 4
  %79 = call i32 @GET_RL_VLC(i32 %68, i32 %69, i32 %70, i32* %72, i32 %77, i32 %78, i32 2, i32 0)
  %80 = load i32, i32* %7, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %117

82:                                               ; preds = %67
  %83 = load i32, i32* %10, align 4
  %84 = load i32, i32* %8, align 4
  %85 = add nsw i32 %84, %83
  store i32 %85, i32* %8, align 4
  %86 = load i32, i32* %8, align 4
  %87 = load i32, i32* @MAX_INDEX, align 4
  %88 = icmp sgt i32 %86, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %82
  br label %193

90:                                               ; preds = %82
  %91 = load i32*, i32** %12, align 8
  %92 = load i32, i32* %8, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  %95 = load i32, i32* %94, align 4
  store i32 %95, i32* %9, align 4
  %96 = load i32, i32* %7, align 4
  %97 = mul nsw i32 %96, 2
  %98 = add nsw i32 %97, 1
  %99 = load i32, i32* %13, align 4
  %100 = mul nsw i32 %98, %99
  %101 = ashr i32 %100, 1
  store i32 %101, i32* %7, align 4
  %102 = load i32, i32* %7, align 4
  %103 = load i32, i32* @re, align 4
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 2
  %106 = call i32 @SHOW_SBITS(i32 %103, i32* %105, i32 1)
  %107 = xor i32 %102, %106
  %108 = load i32, i32* @re, align 4
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 2
  %111 = call i32 @SHOW_SBITS(i32 %108, i32* %110, i32 1)
  %112 = sub nsw i32 %107, %111
  store i32 %112, i32* %7, align 4
  %113 = load i32, i32* @re, align 4
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 2
  %116 = call i32 @SKIP_BITS(i32 %113, i32* %115, i32 1)
  br label %172

117:                                              ; preds = %67
  %118 = load i32, i32* @re, align 4
  %119 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 2
  %121 = call i32 @SHOW_UBITS(i32 %118, i32* %120, i32 6)
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %10, align 4
  %123 = load i32, i32* @re, align 4
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 2
  %126 = call i32 @LAST_SKIP_BITS(i32 %123, i32* %125, i32 6)
  %127 = load i32, i32* @re, align 4
  %128 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i32 0, i32 2
  %130 = call i32 @UPDATE_CACHE(i32 %127, i32* %129)
  %131 = load i32, i32* @re, align 4
  %132 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 2
  %134 = call i32 @SHOW_SBITS(i32 %131, i32* %133, i32 12)
  store i32 %134, i32* %7, align 4
  %135 = load i32, i32* @re, align 4
  %136 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %136, i32 0, i32 2
  %138 = call i32 @SKIP_BITS(i32 %135, i32* %137, i32 12)
  %139 = load i32, i32* %10, align 4
  %140 = load i32, i32* %8, align 4
  %141 = add nsw i32 %140, %139
  store i32 %141, i32* %8, align 4
  %142 = load i32, i32* %8, align 4
  %143 = load i32, i32* @MAX_INDEX, align 4
  %144 = icmp sgt i32 %142, %143
  br i1 %144, label %145, label %146

145:                                              ; preds = %117
  br label %193

146:                                              ; preds = %117
  %147 = load i32*, i32** %12, align 8
  %148 = load i32, i32* %8, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32, i32* %147, i64 %149
  %151 = load i32, i32* %150, align 4
  store i32 %151, i32* %9, align 4
  %152 = load i32, i32* %7, align 4
  %153 = icmp slt i32 %152, 0
  br i1 %153, label %154, label %164

154:                                              ; preds = %146
  %155 = load i32, i32* %7, align 4
  %156 = sub nsw i32 0, %155
  %157 = mul nsw i32 %156, 2
  %158 = add nsw i32 %157, 1
  %159 = load i32, i32* %13, align 4
  %160 = mul nsw i32 %158, %159
  %161 = ashr i32 %160, 1
  store i32 %161, i32* %7, align 4
  %162 = load i32, i32* %7, align 4
  %163 = sub nsw i32 0, %162
  store i32 %163, i32* %7, align 4
  br label %171

164:                                              ; preds = %146
  %165 = load i32, i32* %7, align 4
  %166 = mul nsw i32 %165, 2
  %167 = add nsw i32 %166, 1
  %168 = load i32, i32* %13, align 4
  %169 = mul nsw i32 %167, %168
  %170 = ashr i32 %169, 1
  store i32 %170, i32* %7, align 4
  br label %171

171:                                              ; preds = %164, %154
  br label %172

172:                                              ; preds = %171, %90
  %173 = load i32, i32* %7, align 4
  %174 = load i32*, i32** %5, align 8
  %175 = load i32, i32* %9, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i32, i32* %174, i64 %176
  store i32 %173, i32* %177, align 4
  %178 = load i32, i32* @re, align 4
  %179 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %180 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %179, i32 0, i32 2
  %181 = call i32 @GET_CACHE(i32 %178, i32* %180)
  %182 = sext i32 %181 to i64
  %183 = icmp sle i64 %182, 3221225471
  br i1 %183, label %187, label %184

184:                                              ; preds = %172
  %185 = load i32, i32* %8, align 4
  %186 = icmp sgt i32 %185, 63
  br i1 %186, label %187, label %188

187:                                              ; preds = %184, %172
  br label %193

188:                                              ; preds = %184
  %189 = load i32, i32* @re, align 4
  %190 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %191 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %190, i32 0, i32 2
  %192 = call i32 @UPDATE_CACHE(i32 %189, i32* %191)
  br label %67

193:                                              ; preds = %187, %145, %89
  br label %194

194:                                              ; preds = %193, %64
  %195 = load i32, i32* @re, align 4
  %196 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %197 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %196, i32 0, i32 2
  %198 = call i32 @LAST_SKIP_BITS(i32 %195, i32* %197, i32 2)
  %199 = load i32, i32* @re, align 4
  %200 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %201 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %200, i32 0, i32 2
  %202 = call i32 @CLOSE_READER(i32 %199, i32* %201)
  %203 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %204 = load i32, i32* %8, align 4
  %205 = call i32 @check_scantable_index(%struct.TYPE_9__* %203, i32 %204)
  %206 = load i32, i32* %8, align 4
  %207 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %208 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %207, i32 0, i32 1
  %209 = load i32*, i32** %208, align 8
  %210 = load i32, i32* %6, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i32, i32* %209, i64 %211
  store i32 %206, i32* %212, align 4
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
