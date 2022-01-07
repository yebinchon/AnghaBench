; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_eamad.c_decode_block_intra.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_eamad.c_decode_block_intra.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32* }
%struct.TYPE_8__ = type { i32*, i32, i32, i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32* }

@ff_rl_mpeg1 = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@re = common dso_local global i32 0, align 4
@TEX_VLC_BITS = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"ac-tex damaged at %d %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i32*)* @decode_block_intra to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_block_intra(%struct.TYPE_8__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.TYPE_7__* @ff_rl_mpeg1, %struct.TYPE_7__** %10, align 8
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 5
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  store i32* %16, i32** %11, align 8
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %12, align 8
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 1
  %22 = call i32 @get_sbits(i32* %21, i32 8)
  %23 = add nsw i32 128, %22
  %24 = load i32*, i32** %12, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  %26 = load i32, i32* %25, align 4
  %27 = mul nsw i32 %23, %26
  %28 = load i32*, i32** %5, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  store i32 %27, i32* %29, align 4
  store i32 0, i32* %7, align 4
  %30 = load i32, i32* @re, align 4
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 1
  %33 = call i32 @OPEN_READER(i32 %30, i32* %32)
  br label %34

34:                                               ; preds = %188, %2
  %35 = load i32, i32* @re, align 4
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 1
  %38 = call i32 @UPDATE_CACHE(i32 %35, i32* %37)
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* @re, align 4
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @TEX_VLC_BITS, align 4
  %50 = call i32 @GET_RL_VLC(i32 %39, i32 %40, i32 %41, i32* %43, i32 %48, i32 %49, i32 2, i32 0)
  %51 = load i32, i32* %6, align 4
  %52 = icmp eq i32 %51, 127
  br i1 %52, label %53, label %54

53:                                               ; preds = %34
  br label %194

54:                                               ; preds = %34
  %55 = load i32, i32* %6, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %107

57:                                               ; preds = %54
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* %7, align 4
  %60 = add nsw i32 %59, %58
  store i32 %60, i32* %7, align 4
  %61 = load i32, i32* %7, align 4
  %62 = icmp sgt i32 %61, 63
  br i1 %62, label %63, label %75

63:                                               ; preds = %57
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @AV_LOG_ERROR, align 4
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @av_log(i32 %66, i32 %67, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %70, i32 %73)
  store i32 -1, i32* %3, align 4
  br label %199

75:                                               ; preds = %57
  %76 = load i32*, i32** %11, align 8
  %77 = load i32, i32* %7, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  %80 = load i32, i32* %79, align 4
  store i32 %80, i32* %8, align 4
  %81 = load i32, i32* %6, align 4
  %82 = load i32*, i32** %12, align 8
  %83 = load i32, i32* %8, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = mul nsw i32 %81, %86
  %88 = ashr i32 %87, 4
  store i32 %88, i32* %6, align 4
  %89 = load i32, i32* %6, align 4
  %90 = sub nsw i32 %89, 1
  %91 = or i32 %90, 1
  store i32 %91, i32* %6, align 4
  %92 = load i32, i32* %6, align 4
  %93 = load i32, i32* @re, align 4
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 1
  %96 = call i32 @SHOW_SBITS(i32 %93, i32* %95, i32 1)
  %97 = xor i32 %92, %96
  %98 = load i32, i32* @re, align 4
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 1
  %101 = call i32 @SHOW_SBITS(i32 %98, i32* %100, i32 1)
  %102 = sub nsw i32 %97, %101
  store i32 %102, i32* %6, align 4
  %103 = load i32, i32* @re, align 4
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 1
  %106 = call i32 @LAST_SKIP_BITS(i32 %103, i32* %105, i32 1)
  br label %187

107:                                              ; preds = %54
  %108 = load i32, i32* @re, align 4
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 1
  %111 = call i32 @UPDATE_CACHE(i32 %108, i32* %110)
  %112 = load i32, i32* @re, align 4
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 1
  %115 = call i32 @SHOW_SBITS(i32 %112, i32* %114, i32 10)
  store i32 %115, i32* %6, align 4
  %116 = load i32, i32* @re, align 4
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 1
  %119 = call i32 @SKIP_BITS(i32 %116, i32* %118, i32 10)
  %120 = load i32, i32* @re, align 4
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 1
  %123 = call i32 @UPDATE_CACHE(i32 %120, i32* %122)
  %124 = load i32, i32* @re, align 4
  %125 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 1
  %127 = call i32 @SHOW_UBITS(i32 %124, i32* %126, i32 6)
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %9, align 4
  %129 = load i32, i32* @re, align 4
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 1
  %132 = call i32 @LAST_SKIP_BITS(i32 %129, i32* %131, i32 6)
  %133 = load i32, i32* %9, align 4
  %134 = load i32, i32* %7, align 4
  %135 = add nsw i32 %134, %133
  store i32 %135, i32* %7, align 4
  %136 = load i32, i32* %7, align 4
  %137 = icmp sgt i32 %136, 63
  br i1 %137, label %138, label %150

138:                                              ; preds = %107
  %139 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 4
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* @AV_LOG_ERROR, align 4
  %143 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 3
  %145 = load i32, i32* %144, align 8
  %146 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @av_log(i32 %141, i32 %142, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %145, i32 %148)
  store i32 -1, i32* %3, align 4
  br label %199

150:                                              ; preds = %107
  %151 = load i32*, i32** %11, align 8
  %152 = load i32, i32* %7, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i32, i32* %151, i64 %153
  %155 = load i32, i32* %154, align 4
  store i32 %155, i32* %8, align 4
  %156 = load i32, i32* %6, align 4
  %157 = icmp slt i32 %156, 0
  br i1 %157, label %158, label %174

158:                                              ; preds = %150
  %159 = load i32, i32* %6, align 4
  %160 = sub nsw i32 0, %159
  store i32 %160, i32* %6, align 4
  %161 = load i32, i32* %6, align 4
  %162 = load i32*, i32** %12, align 8
  %163 = load i32, i32* %8, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i32, i32* %162, i64 %164
  %166 = load i32, i32* %165, align 4
  %167 = mul nsw i32 %161, %166
  %168 = ashr i32 %167, 4
  store i32 %168, i32* %6, align 4
  %169 = load i32, i32* %6, align 4
  %170 = sub nsw i32 %169, 1
  %171 = or i32 %170, 1
  store i32 %171, i32* %6, align 4
  %172 = load i32, i32* %6, align 4
  %173 = sub nsw i32 0, %172
  store i32 %173, i32* %6, align 4
  br label %186

174:                                              ; preds = %150
  %175 = load i32, i32* %6, align 4
  %176 = load i32*, i32** %12, align 8
  %177 = load i32, i32* %8, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i32, i32* %176, i64 %178
  %180 = load i32, i32* %179, align 4
  %181 = mul nsw i32 %175, %180
  %182 = ashr i32 %181, 4
  store i32 %182, i32* %6, align 4
  %183 = load i32, i32* %6, align 4
  %184 = sub nsw i32 %183, 1
  %185 = or i32 %184, 1
  store i32 %185, i32* %6, align 4
  br label %186

186:                                              ; preds = %174, %158
  br label %187

187:                                              ; preds = %186, %75
  br label %188

188:                                              ; preds = %187
  %189 = load i32, i32* %6, align 4
  %190 = load i32*, i32** %5, align 8
  %191 = load i32, i32* %8, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i32, i32* %190, i64 %192
  store i32 %189, i32* %193, align 4
  br label %34

194:                                              ; preds = %53
  %195 = load i32, i32* @re, align 4
  %196 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %197 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %196, i32 0, i32 1
  %198 = call i32 @CLOSE_READER(i32 %195, i32* %197)
  store i32 0, i32* %3, align 4
  br label %199

199:                                              ; preds = %194, %138, %63
  %200 = load i32, i32* %3, align 4
  ret i32 %200
}

declare dso_local i32 @get_sbits(i32*, i32) #1

declare dso_local i32 @OPEN_READER(i32, i32*) #1

declare dso_local i32 @UPDATE_CACHE(i32, i32*) #1

declare dso_local i32 @GET_RL_VLC(i32, i32, i32, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @av_log(i32, i32, i8*, i32, i32) #1

declare dso_local i32 @SHOW_SBITS(i32, i32*, i32) #1

declare dso_local i32 @LAST_SKIP_BITS(i32, i32*, i32) #1

declare dso_local i32 @SKIP_BITS(i32, i32*, i32) #1

declare dso_local i32 @SHOW_UBITS(i32, i32*, i32) #1

declare dso_local i32 @CLOSE_READER(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
