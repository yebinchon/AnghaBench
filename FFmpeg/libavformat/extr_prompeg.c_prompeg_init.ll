; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_prompeg.c_prompeg_init.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_prompeg.c_prompeg_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32*, %struct.TYPE_9__**, %struct.TYPE_9__**, %struct.TYPE_9__**, %struct.TYPE_9__*, i64 }
%struct.TYPE_9__ = type { i8* }

@UINT16_MAX = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Invalid RTP packet size\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@AVFMT_FLAG_BITEXACT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Failed to allocate the FEC buffer\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32*, i32)* @prompeg_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prompeg_init(%struct.TYPE_7__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 1
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  store %struct.TYPE_8__* %13, %struct.TYPE_8__** %8, align 8
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 13
  store %struct.TYPE_9__** null, %struct.TYPE_9__*** %15, align 8
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 12
  store i32* null, i32** %17, align 8
  %18 = load i32, i32* %7, align 4
  %19 = icmp slt i32 %18, 12
  br i1 %19, label %25, label %20

20:                                               ; preds = %3
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @UINT16_MAX, align 4
  %23 = add nsw i32 %22, 12
  %24 = icmp sgt i32 %21, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %20, %3
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %27 = load i32, i32* @AV_LOG_ERROR, align 4
  %28 = call i32 @av_log(%struct.TYPE_7__* %26, i32 %27, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %29, i32* %4, align 4
  br label %216

30:                                               ; preds = %20
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 17
  store i64 0, i64* %32, align 8
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = mul nsw i32 %35, %38
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load i32, i32* %7, align 4
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 3
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* %7, align 4
  %46 = sub nsw i32 %45, 12
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 4
  store i32 %46, i32* %48, align 8
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 8
  %52 = add nsw i32 28, %51
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 5
  store i32 %52, i32* %54, align 4
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 8
  %58 = add nsw i32 8, %57
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 6
  store i32 %58, i32* %60, align 8
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = mul nsw i32 2, %63
  %65 = add nsw i32 1, %64
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 7
  store i32 %65, i32* %67, align 4
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @AVFMT_FLAG_BITEXACT, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %30
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 8
  store i32 0, i32* %76, align 8
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 9
  store i32 0, i32* %78, align 4
  br label %90

79:                                               ; preds = %30
  %80 = call i32 (...) @av_get_random_seed()
  store i32 %80, i32* %9, align 4
  %81 = load i32, i32* %9, align 4
  %82 = and i32 %81, 4095
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 8
  store i32 %82, i32* %84, align 8
  %85 = load i32, i32* %9, align 4
  %86 = ashr i32 %85, 16
  %87 = and i32 %86, 4095
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 9
  store i32 %87, i32* %89, align 4
  br label %90

90:                                               ; preds = %79, %74
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 7
  %93 = load i32, i32* %92, align 4
  %94 = call i8* @av_malloc_array(i32 %93, i32 8)
  %95 = bitcast i8* %94 to %struct.TYPE_9__**
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 13
  store %struct.TYPE_9__** %95, %struct.TYPE_9__*** %97, align 8
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 13
  %100 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %99, align 8
  %101 = icmp ne %struct.TYPE_9__** %100, null
  br i1 %101, label %103, label %102

102:                                              ; preds = %90
  br label %210

103:                                              ; preds = %90
  store i32 0, i32* %10, align 4
  br label %104

104:                                              ; preds = %159, %103
  %105 = load i32, i32* %10, align 4
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 7
  %108 = load i32, i32* %107, align 4
  %109 = icmp slt i32 %105, %108
  br i1 %109, label %110, label %162

110:                                              ; preds = %104
  %111 = call %struct.TYPE_9__* @av_malloc(i32 4)
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 13
  %114 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %113, align 8
  %115 = load i32, i32* %10, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %114, i64 %116
  store %struct.TYPE_9__* %111, %struct.TYPE_9__** %117, align 8
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 13
  %120 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %119, align 8
  %121 = load i32, i32* %10, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %120, i64 %122
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** %123, align 8
  %125 = icmp ne %struct.TYPE_9__* %124, null
  br i1 %125, label %127, label %126

126:                                              ; preds = %110
  br label %210

127:                                              ; preds = %110
  %128 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 6
  %130 = load i32, i32* %129, align 8
  %131 = call i8* @av_malloc_array(i32 %130, i32 4)
  %132 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 13
  %134 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %133, align 8
  %135 = load i32, i32* %10, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %134, i64 %136
  %138 = load %struct.TYPE_9__*, %struct.TYPE_9__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %138, i32 0, i32 0
  store i8* %131, i8** %139, align 8
  %140 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 13
  %142 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %141, align 8
  %143 = load i32, i32* %10, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %142, i64 %144
  %146 = load %struct.TYPE_9__*, %struct.TYPE_9__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %146, i32 0, i32 0
  %148 = load i8*, i8** %147, align 8
  %149 = icmp ne i8* %148, null
  br i1 %149, label %158, label %150

150:                                              ; preds = %127
  %151 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %151, i32 0, i32 13
  %153 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %152, align 8
  %154 = load i32, i32* %10, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %153, i64 %155
  %157 = call i32 @av_freep(%struct.TYPE_9__** %156)
  br label %210

158:                                              ; preds = %127
  br label %159

159:                                              ; preds = %158
  %160 = load i32, i32* %10, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %10, align 4
  br label %104

162:                                              ; preds = %104
  %163 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %164 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %163, i32 0, i32 13
  %165 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %164, align 8
  %166 = load %struct.TYPE_9__*, %struct.TYPE_9__** %165, align 8
  %167 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %168 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %167, i32 0, i32 16
  store %struct.TYPE_9__* %166, %struct.TYPE_9__** %168, align 8
  %169 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %170 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %169, i32 0, i32 13
  %171 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %171, i64 1
  %173 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %174 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %173, i32 0, i32 15
  store %struct.TYPE_9__** %172, %struct.TYPE_9__*** %174, align 8
  %175 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %176 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %175, i32 0, i32 13
  %177 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %177, i64 1
  %179 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %180 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %178, i64 %182
  %184 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %185 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %184, i32 0, i32 14
  store %struct.TYPE_9__** %183, %struct.TYPE_9__*** %185, align 8
  %186 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %187 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %186, i32 0, i32 5
  %188 = load i32, i32* %187, align 4
  %189 = call i8* @av_malloc_array(i32 %188, i32 4)
  %190 = bitcast i8* %189 to i32*
  %191 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %192 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %191, i32 0, i32 12
  store i32* %190, i32** %192, align 8
  %193 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %194 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %193, i32 0, i32 12
  %195 = load i32*, i32** %194, align 8
  %196 = icmp ne i32* %195, null
  br i1 %196, label %198, label %197

197:                                              ; preds = %162
  br label %210

198:                                              ; preds = %162
  %199 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %200 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %199, i32 0, i32 12
  %201 = load i32*, i32** %200, align 8
  %202 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %203 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %202, i32 0, i32 5
  %204 = load i32, i32* %203, align 4
  %205 = call i32 @memset(i32* %201, i32 0, i32 %204)
  %206 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %207 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %206, i32 0, i32 11
  store i64 0, i64* %207, align 8
  %208 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %209 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %208, i32 0, i32 10
  store i32 1, i32* %209, align 8
  store i32 0, i32* %4, align 4
  br label %216

210:                                              ; preds = %197, %150, %126, %102
  %211 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %212 = load i32, i32* @AV_LOG_ERROR, align 4
  %213 = call i32 @av_log(%struct.TYPE_7__* %211, i32 %212, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %214 = load i32, i32* @ENOMEM, align 4
  %215 = call i32 @AVERROR(i32 %214)
  store i32 %215, i32* %4, align 4
  br label %216

216:                                              ; preds = %210, %198, %25
  %217 = load i32, i32* %4, align 4
  ret i32 %217
}

declare dso_local i32 @av_log(%struct.TYPE_7__*, i32, i8*) #1

declare dso_local i32 @av_get_random_seed(...) #1

declare dso_local i8* @av_malloc_array(i32, i32) #1

declare dso_local %struct.TYPE_9__* @av_malloc(i32) #1

declare dso_local i32 @av_freep(%struct.TYPE_9__**) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @AVERROR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
