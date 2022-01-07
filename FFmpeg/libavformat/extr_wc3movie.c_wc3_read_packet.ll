; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_wc3movie.c_wc3_read_packet.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_wc3movie.c_wc3_read_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32*, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32, i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32, i32, i32* }

@EIO = common dso_local global i32 0, align 4
@SEEK_CUR = common dso_local global i32 0, align 4
@AV_LOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"Subtitle time!\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"  inglish: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"  doytsch: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"  fronsay: %s\0A\00", align 1
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"unrecognized WC3 chunk: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, %struct.TYPE_10__*)* @wc3_read_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wc3_read_packet(%struct.TYPE_11__* %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [1024 x i8], align 16
  %13 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %5, align 8
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  store %struct.TYPE_9__* %16, %struct.TYPE_9__** %6, align 8
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %7, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %20

20:                                               ; preds = %231, %2
  %21 = load i32, i32* %10, align 4
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  br i1 %23, label %24, label %232

24:                                               ; preds = %20
  %25 = load i32*, i32** %7, align 8
  %26 = call i32 @avio_rl32(i32* %25)
  store i32 %26, i32* %8, align 4
  %27 = load i32*, i32** %7, align 8
  %28 = call i32 @avio_rb32(i32* %27)
  %29 = add nsw i32 %28, 1
  %30 = and i32 %29, -2
  store i32 %30, i32* %9, align 4
  %31 = load i32*, i32** %7, align 8
  %32 = call i64 @avio_feof(i32* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %24
  %35 = load i32, i32* @EIO, align 4
  %36 = call i32 @AVERROR(i32 %35)
  store i32 %36, i32* %3, align 4
  br label %234

37:                                               ; preds = %24
  %38 = load i32, i32* %8, align 4
  switch i32 %38, label %224 [
    i32 131, label %39
    i32 130, label %40
    i32 128, label %48
    i32 129, label %86
    i32 132, label %205
  ]

39:                                               ; preds = %37
  br label %231

40:                                               ; preds = %37
  %41 = load i32*, i32** %7, align 8
  %42 = load i32, i32* @SEEK_CUR, align 4
  %43 = call i32 @avio_seek(i32* %41, i32 -8, i32 %42)
  %44 = load i32*, i32** %7, align 8
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 3
  %47 = call i32 @av_append_packet(i32* %44, %struct.TYPE_10__* %46, i32 12)
  br label %231

48:                                               ; preds = %37
  %49 = load i32*, i32** %7, align 8
  %50 = load i32, i32* @SEEK_CUR, align 4
  %51 = call i32 @avio_seek(i32* %49, i32 -8, i32 %50)
  %52 = load i32*, i32** %7, align 8
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 3
  %55 = load i32, i32* %9, align 4
  %56 = add i32 8, %55
  %57 = call i32 @av_append_packet(i32* %52, %struct.TYPE_10__* %54, i32 %56)
  store i32 %57, i32* %11, align 4
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 3
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = icmp sgt i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %48
  store i32 0, i32* %11, align 4
  br label %64

64:                                               ; preds = %63, %48
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 3
  %68 = bitcast %struct.TYPE_10__* %65 to i8*
  %69 = bitcast %struct.TYPE_10__* %67 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %68, i8* align 8 %69, i64 24, i1 false)
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 3
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 3
  store i32* null, i32** %72, align 8
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 3
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 2
  store i32 0, i32* %75, align 8
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 1
  store i32 %78, i32* %80, align 4
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 8
  store i32 1, i32* %10, align 4
  br label %231

86:                                               ; preds = %37
  %87 = load i32, i32* %9, align 4
  %88 = zext i32 %87 to i64
  %89 = icmp ugt i64 %88, 1024
  br i1 %89, label %97, label %90

90:                                               ; preds = %86
  %91 = load i32*, i32** %7, align 8
  %92 = getelementptr inbounds [1024 x i8], [1024 x i8]* %12, i64 0, i64 0
  %93 = load i32, i32* %9, align 4
  %94 = call i32 @avio_read(i32* %91, i8* %92, i32 %93)
  store i32 %94, i32* %11, align 4
  %95 = load i32, i32* %9, align 4
  %96 = icmp ne i32 %94, %95
  br i1 %96, label %97, label %100

97:                                               ; preds = %90, %86
  %98 = load i32, i32* @EIO, align 4
  %99 = call i32 @AVERROR(i32 %98)
  store i32 %99, i32* %11, align 4
  br label %204

100:                                              ; preds = %90
  store i32 0, i32* %13, align 4
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %102 = load i32, i32* @AV_LOG_DEBUG, align 4
  %103 = call i32 (%struct.TYPE_11__*, i32, i8*, ...) @av_log(%struct.TYPE_11__* %101, i32 %102, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %104 = load i32, i32* %13, align 4
  %105 = load i32, i32* %9, align 4
  %106 = icmp uge i32 %104, %105
  br i1 %106, label %122, label %107

107:                                              ; preds = %100
  %108 = load i32, i32* %13, align 4
  %109 = add nsw i32 %108, 1
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds [1024 x i8], [1024 x i8]* %12, i64 0, i64 %110
  %112 = load i32, i32* %9, align 4
  %113 = load i32, i32* %13, align 4
  %114 = sub i32 %112, %113
  %115 = sub i32 %114, 1
  %116 = call i32 @av_strnlen(i8* %111, i32 %115)
  %117 = load i32, i32* %9, align 4
  %118 = load i32, i32* %13, align 4
  %119 = sub i32 %117, %118
  %120 = sub i32 %119, 1
  %121 = icmp uge i32 %116, %120
  br i1 %121, label %122, label %124

122:                                              ; preds = %107, %100
  %123 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %123, i32* %3, align 4
  br label %234

124:                                              ; preds = %107
  %125 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %126 = load i32, i32* @AV_LOG_DEBUG, align 4
  %127 = load i32, i32* %13, align 4
  %128 = add nsw i32 %127, 1
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds [1024 x i8], [1024 x i8]* %12, i64 0, i64 %129
  %131 = call i32 (%struct.TYPE_11__*, i32, i8*, ...) @av_log(%struct.TYPE_11__* %125, i32 %126, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* %130)
  %132 = load i32, i32* %13, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds [1024 x i8], [1024 x i8]* %12, i64 0, i64 %133
  %135 = load i8, i8* %134, align 1
  %136 = zext i8 %135 to i32
  %137 = add nsw i32 %136, 1
  %138 = load i32, i32* %13, align 4
  %139 = add nsw i32 %138, %137
  store i32 %139, i32* %13, align 4
  %140 = load i32, i32* %13, align 4
  %141 = load i32, i32* %9, align 4
  %142 = icmp uge i32 %140, %141
  br i1 %142, label %158, label %143

143:                                              ; preds = %124
  %144 = load i32, i32* %13, align 4
  %145 = add nsw i32 %144, 1
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds [1024 x i8], [1024 x i8]* %12, i64 0, i64 %146
  %148 = load i32, i32* %9, align 4
  %149 = load i32, i32* %13, align 4
  %150 = sub i32 %148, %149
  %151 = sub i32 %150, 1
  %152 = call i32 @av_strnlen(i8* %147, i32 %151)
  %153 = load i32, i32* %9, align 4
  %154 = load i32, i32* %13, align 4
  %155 = sub i32 %153, %154
  %156 = sub i32 %155, 1
  %157 = icmp uge i32 %152, %156
  br i1 %157, label %158, label %160

158:                                              ; preds = %143, %124
  %159 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %159, i32* %3, align 4
  br label %234

160:                                              ; preds = %143
  %161 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %162 = load i32, i32* @AV_LOG_DEBUG, align 4
  %163 = load i32, i32* %13, align 4
  %164 = add nsw i32 %163, 1
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds [1024 x i8], [1024 x i8]* %12, i64 0, i64 %165
  %167 = call i32 (%struct.TYPE_11__*, i32, i8*, ...) @av_log(%struct.TYPE_11__* %161, i32 %162, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* %166)
  %168 = load i32, i32* %13, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds [1024 x i8], [1024 x i8]* %12, i64 0, i64 %169
  %171 = load i8, i8* %170, align 1
  %172 = zext i8 %171 to i32
  %173 = add nsw i32 %172, 1
  %174 = load i32, i32* %13, align 4
  %175 = add nsw i32 %174, %173
  store i32 %175, i32* %13, align 4
  %176 = load i32, i32* %13, align 4
  %177 = load i32, i32* %9, align 4
  %178 = icmp uge i32 %176, %177
  br i1 %178, label %194, label %179

179:                                              ; preds = %160
  %180 = load i32, i32* %13, align 4
  %181 = add nsw i32 %180, 1
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds [1024 x i8], [1024 x i8]* %12, i64 0, i64 %182
  %184 = load i32, i32* %9, align 4
  %185 = load i32, i32* %13, align 4
  %186 = sub i32 %184, %185
  %187 = sub i32 %186, 1
  %188 = call i32 @av_strnlen(i8* %183, i32 %187)
  %189 = load i32, i32* %9, align 4
  %190 = load i32, i32* %13, align 4
  %191 = sub i32 %189, %190
  %192 = sub i32 %191, 1
  %193 = icmp uge i32 %188, %192
  br i1 %193, label %194, label %196

194:                                              ; preds = %179, %160
  %195 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %195, i32* %3, align 4
  br label %234

196:                                              ; preds = %179
  %197 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %198 = load i32, i32* @AV_LOG_DEBUG, align 4
  %199 = load i32, i32* %13, align 4
  %200 = add nsw i32 %199, 1
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds [1024 x i8], [1024 x i8]* %12, i64 0, i64 %201
  %203 = call i32 (%struct.TYPE_11__*, i32, i8*, ...) @av_log(%struct.TYPE_11__* %197, i32 %198, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i8* %202)
  br label %204

204:                                              ; preds = %196, %97
  br label %231

205:                                              ; preds = %37
  %206 = load i32*, i32** %7, align 8
  %207 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %208 = load i32, i32* %9, align 4
  %209 = call i32 @av_get_packet(i32* %206, %struct.TYPE_10__* %207, i32 %208)
  store i32 %209, i32* %11, align 4
  %210 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %211 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 4
  %213 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %214 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %213, i32 0, i32 1
  store i32 %212, i32* %214, align 4
  %215 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %216 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  %218 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %219 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %218, i32 0, i32 0
  store i32 %217, i32* %219, align 8
  %220 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %221 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 8
  %223 = add nsw i32 %222, 1
  store i32 %223, i32* %221, align 8
  store i32 1, i32* %10, align 4
  br label %231

224:                                              ; preds = %37
  %225 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %226 = load i32, i32* @AV_LOG_ERROR, align 4
  %227 = load i32, i32* %8, align 4
  %228 = call i8* @av_fourcc2str(i32 %227)
  %229 = call i32 (%struct.TYPE_11__*, i32, i8*, ...) @av_log(%struct.TYPE_11__* %225, i32 %226, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i8* %228)
  %230 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %230, i32* %11, align 4
  store i32 1, i32* %10, align 4
  br label %231

231:                                              ; preds = %224, %205, %204, %64, %40, %39
  br label %20

232:                                              ; preds = %20
  %233 = load i32, i32* %11, align 4
  store i32 %233, i32* %3, align 4
  br label %234

234:                                              ; preds = %232, %194, %158, %122, %34
  %235 = load i32, i32* %3, align 4
  ret i32 %235
}

declare dso_local i32 @avio_rl32(i32*) #1

declare dso_local i32 @avio_rb32(i32*) #1

declare dso_local i64 @avio_feof(i32*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @avio_seek(i32*, i32, i32) #1

declare dso_local i32 @av_append_packet(i32*, %struct.TYPE_10__*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @avio_read(i32*, i8*, i32) #1

declare dso_local i32 @av_log(%struct.TYPE_11__*, i32, i8*, ...) #1

declare dso_local i32 @av_strnlen(i8*, i32) #1

declare dso_local i32 @av_get_packet(i32*, %struct.TYPE_10__*, i32) #1

declare dso_local i8* @av_fourcc2str(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
