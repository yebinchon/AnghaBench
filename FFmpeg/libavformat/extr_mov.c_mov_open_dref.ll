; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_mov.c_mov_open_dref.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_mov.c_mov_open_dref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_10__*, i64 }
%struct.TYPE_10__ = type { i32 (%struct.TYPE_10__*, i32**, i8*, i32, i32*)* }
%struct.TYPE_8__ = type { i32, i64, i8* }

@.str = private unnamed_addr constant [4 x i8] c"../\00", align 1
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [127 x i8] c"Reference with mismatching origin, %s not tried for security reasons, set demuxer option use_absolute_path to allow it anyway\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c":\00", align 1
@AVIO_FLAG_READ = common dso_local global i32 0, align 4
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [72 x i8] c"Using absolute path on user request, this is a possible security issue\0A\00", align 1
@.str.5 = private unnamed_addr constant [111 x i8] c"Absolute path %s not tried for security reasons, set demuxer option use_absolute_path to allow absolute paths\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i32**, i8*, %struct.TYPE_8__*)* @mov_open_dref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mov_open_dref(%struct.TYPE_9__* %0, i32** %1, i8* %2, %struct.TYPE_8__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca [1025 x i8], align 16
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %6, align 8
  store i32** %1, i32*** %7, align 8
  store i8* %2, i8** %8, align 8
  store %struct.TYPE_8__* %3, %struct.TYPE_8__** %9, align 8
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %210

19:                                               ; preds = %4
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp sgt i64 %22, 0
  br i1 %23, label %24, label %210

24:                                               ; preds = %19
  %25 = load i8*, i8** %8, align 8
  %26 = call i8* @strrchr(i8* %25, i8 signext 47)
  store i8* %26, i8** %11, align 8
  %27 = load i8*, i8** %11, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load i8*, i8** %11, align 8
  %31 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %31, i8** %11, align 8
  br label %34

32:                                               ; preds = %24
  %33 = load i8*, i8** %8, align 8
  store i8* %33, i8** %11, align 8
  br label %34

34:                                               ; preds = %32, %29
  store i32 0, i32* %12, align 4
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 2
  %37 = load i8*, i8** %36, align 8
  %38 = call i32 @strlen(i8* %37)
  %39 = sub nsw i32 %38, 1
  store i32 %39, i32* %13, align 4
  br label %40

40:                                               ; preds = %66, %34
  %41 = load i32, i32* %13, align 4
  %42 = icmp sge i32 %41, 0
  br i1 %42, label %43, label %69

43:                                               ; preds = %40
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 2
  %46 = load i8*, i8** %45, align 8
  %47 = load i32, i32* %13, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8, i8* %46, i64 %48
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp eq i32 %51, 47
  br i1 %52, label %53, label %65

53:                                               ; preds = %43
  %54 = load i32, i32* %12, align 4
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = sub nsw i32 %57, 1
  %59 = icmp eq i32 %54, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %53
  br label %69

61:                                               ; preds = %53
  %62 = load i32, i32* %12, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %12, align 4
  br label %64

64:                                               ; preds = %61
  br label %65

65:                                               ; preds = %64, %43
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %13, align 4
  %68 = add nsw i32 %67, -1
  store i32 %68, i32* %13, align 4
  br label %40

69:                                               ; preds = %60, %40
  %70 = load i32, i32* %12, align 4
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = sub nsw i32 %73, 1
  %75 = icmp eq i32 %70, %74
  br i1 %75, label %76, label %209

76:                                               ; preds = %69
  %77 = load i8*, i8** %11, align 8
  %78 = load i8*, i8** %8, align 8
  %79 = ptrtoint i8* %77 to i64
  %80 = ptrtoint i8* %78 to i64
  %81 = sub i64 %79, %80
  %82 = icmp ult i64 %81, 1025
  br i1 %82, label %83, label %209

83:                                               ; preds = %76
  %84 = getelementptr inbounds [1025 x i8], [1025 x i8]* %10, i64 0, i64 0
  %85 = load i8*, i8** %8, align 8
  %86 = load i8*, i8** %11, align 8
  %87 = load i8*, i8** %8, align 8
  %88 = ptrtoint i8* %86 to i64
  %89 = ptrtoint i8* %87 to i64
  %90 = sub i64 %88, %89
  %91 = trunc i64 %90 to i32
  %92 = call i32 @memcpy(i8* %84, i8* %85, i32 %91)
  %93 = load i8*, i8** %11, align 8
  %94 = load i8*, i8** %8, align 8
  %95 = ptrtoint i8* %93 to i64
  %96 = ptrtoint i8* %94 to i64
  %97 = sub i64 %95, %96
  %98 = getelementptr inbounds [1025 x i8], [1025 x i8]* %10, i64 0, i64 %97
  store i8 0, i8* %98, align 1
  store i32 1, i32* %12, align 4
  br label %99

99:                                               ; preds = %109, %83
  %100 = load i32, i32* %12, align 4
  %101 = sext i32 %100 to i64
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = icmp slt i64 %101, %104
  br i1 %105, label %106, label %112

106:                                              ; preds = %99
  %107 = getelementptr inbounds [1025 x i8], [1025 x i8]* %10, i64 0, i64 0
  %108 = call i32 @av_strlcat(i8* %107, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 1025)
  br label %109

109:                                              ; preds = %106
  %110 = load i32, i32* %12, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %12, align 4
  br label %99

112:                                              ; preds = %99
  %113 = getelementptr inbounds [1025 x i8], [1025 x i8]* %10, i64 0, i64 0
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 2
  %116 = load i8*, i8** %115, align 8
  %117 = load i32, i32* %13, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i8, i8* %116, i64 %118
  %120 = getelementptr inbounds i8, i8* %119, i64 1
  %121 = call i32 @av_strlcat(i8* %113, i8* %120, i32 1025)
  %122 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %184, label %126

126:                                              ; preds = %112
  %127 = load i8*, i8** %8, align 8
  %128 = getelementptr inbounds [1025 x i8], [1025 x i8]* %10, i64 0, i64 0
  %129 = call i32 @test_same_origin(i8* %127, i8* %128)
  store i32 %129, i32* %14, align 4
  %130 = load i32, i32* %14, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %143, label %132

132:                                              ; preds = %126
  %133 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i32 0, i32 0
  %135 = load %struct.TYPE_10__*, %struct.TYPE_10__** %134, align 8
  %136 = load i32, i32* @AV_LOG_ERROR, align 4
  %137 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 2
  %139 = load i8*, i8** %138, align 8
  %140 = call i32 (%struct.TYPE_10__*, i32, i8*, ...) @av_log(%struct.TYPE_10__* %135, i32 %136, i8* getelementptr inbounds ([127 x i8], [127 x i8]* @.str.1, i64 0, i64 0), i8* %139)
  %141 = load i32, i32* @ENOENT, align 4
  %142 = call i32 @AVERROR(i32 %141)
  store i32 %142, i32* %5, align 4
  br label %251

143:                                              ; preds = %126
  %144 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i32 0, i32 2
  %146 = load i8*, i8** %145, align 8
  %147 = load i32, i32* %13, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i8, i8* %146, i64 %148
  %150 = getelementptr inbounds i8, i8* %149, i64 1
  %151 = call i64 @strstr(i8* %150, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %180, label %153

153:                                              ; preds = %143
  %154 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i32 0, i32 2
  %156 = load i8*, i8** %155, align 8
  %157 = load i32, i32* %13, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i8, i8* %156, i64 %158
  %160 = getelementptr inbounds i8, i8* %159, i64 1
  %161 = call i64 @strstr(i8* %160, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %180, label %163

163:                                              ; preds = %153
  %164 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %165 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %164, i32 0, i32 1
  %166 = load i64, i64* %165, align 8
  %167 = icmp sgt i64 %166, 1
  br i1 %167, label %168, label %171

168:                                              ; preds = %163
  %169 = load i32, i32* %14, align 4
  %170 = icmp slt i32 %169, 0
  br i1 %170, label %180, label %171

171:                                              ; preds = %168, %163
  %172 = getelementptr inbounds [1025 x i8], [1025 x i8]* %10, i64 0, i64 0
  %173 = load i8, i8* %172, align 16
  %174 = sext i8 %173 to i32
  %175 = icmp eq i32 %174, 47
  br i1 %175, label %176, label %183

176:                                              ; preds = %171
  %177 = load i8*, i8** %11, align 8
  %178 = load i8*, i8** %8, align 8
  %179 = icmp eq i8* %177, %178
  br i1 %179, label %180, label %183

180:                                              ; preds = %176, %168, %153, %143
  %181 = load i32, i32* @ENOENT, align 4
  %182 = call i32 @AVERROR(i32 %181)
  store i32 %182, i32* %5, align 4
  br label %251

183:                                              ; preds = %176, %171
  br label %184

184:                                              ; preds = %183, %112
  %185 = getelementptr inbounds [1025 x i8], [1025 x i8]* %10, i64 0, i64 0
  %186 = call i32 @strlen(i8* %185)
  %187 = add nsw i32 %186, 1
  %188 = sext i32 %187 to i64
  %189 = icmp eq i64 %188, 1025
  br i1 %189, label %190, label %193

190:                                              ; preds = %184
  %191 = load i32, i32* @ENOENT, align 4
  %192 = call i32 @AVERROR(i32 %191)
  store i32 %192, i32* %5, align 4
  br label %251

193:                                              ; preds = %184
  %194 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %195 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %194, i32 0, i32 0
  %196 = load %struct.TYPE_10__*, %struct.TYPE_10__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %196, i32 0, i32 0
  %198 = load i32 (%struct.TYPE_10__*, i32**, i8*, i32, i32*)*, i32 (%struct.TYPE_10__*, i32**, i8*, i32, i32*)** %197, align 8
  %199 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %200 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %199, i32 0, i32 0
  %201 = load %struct.TYPE_10__*, %struct.TYPE_10__** %200, align 8
  %202 = load i32**, i32*** %7, align 8
  %203 = getelementptr inbounds [1025 x i8], [1025 x i8]* %10, i64 0, i64 0
  %204 = load i32, i32* @AVIO_FLAG_READ, align 4
  %205 = call i32 %198(%struct.TYPE_10__* %201, i32** %202, i8* %203, i32 %204, i32* null)
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %208, label %207

207:                                              ; preds = %193
  store i32 0, i32* %5, align 4
  br label %251

208:                                              ; preds = %193
  br label %209

209:                                              ; preds = %208, %76, %69
  br label %248

210:                                              ; preds = %19, %4
  %211 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %212 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %211, i32 0, i32 1
  %213 = load i64, i64* %212, align 8
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %238

215:                                              ; preds = %210
  %216 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %217 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %216, i32 0, i32 0
  %218 = load %struct.TYPE_10__*, %struct.TYPE_10__** %217, align 8
  %219 = load i32, i32* @AV_LOG_WARNING, align 4
  %220 = call i32 (%struct.TYPE_10__*, i32, i8*, ...) @av_log(%struct.TYPE_10__* %218, i32 %219, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.4, i64 0, i64 0))
  %221 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %222 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %221, i32 0, i32 0
  %223 = load %struct.TYPE_10__*, %struct.TYPE_10__** %222, align 8
  %224 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %223, i32 0, i32 0
  %225 = load i32 (%struct.TYPE_10__*, i32**, i8*, i32, i32*)*, i32 (%struct.TYPE_10__*, i32**, i8*, i32, i32*)** %224, align 8
  %226 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %227 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %226, i32 0, i32 0
  %228 = load %struct.TYPE_10__*, %struct.TYPE_10__** %227, align 8
  %229 = load i32**, i32*** %7, align 8
  %230 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %231 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %230, i32 0, i32 2
  %232 = load i8*, i8** %231, align 8
  %233 = load i32, i32* @AVIO_FLAG_READ, align 4
  %234 = call i32 %225(%struct.TYPE_10__* %228, i32** %229, i8* %232, i32 %233, i32* null)
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %237, label %236

236:                                              ; preds = %215
  store i32 0, i32* %5, align 4
  br label %251

237:                                              ; preds = %215
  br label %247

238:                                              ; preds = %210
  %239 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %240 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %239, i32 0, i32 0
  %241 = load %struct.TYPE_10__*, %struct.TYPE_10__** %240, align 8
  %242 = load i32, i32* @AV_LOG_ERROR, align 4
  %243 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %244 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %243, i32 0, i32 2
  %245 = load i8*, i8** %244, align 8
  %246 = call i32 (%struct.TYPE_10__*, i32, i8*, ...) @av_log(%struct.TYPE_10__* %241, i32 %242, i8* getelementptr inbounds ([111 x i8], [111 x i8]* @.str.5, i64 0, i64 0), i8* %245)
  br label %247

247:                                              ; preds = %238, %237
  br label %248

248:                                              ; preds = %247, %209
  %249 = load i32, i32* @ENOENT, align 4
  %250 = call i32 @AVERROR(i32 %249)
  store i32 %250, i32* %5, align 4
  br label %251

251:                                              ; preds = %248, %236, %207, %190, %180, %132
  %252 = load i32, i32* %5, align 4
  ret i32 %252
}

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @av_strlcat(i8*, i8*, i32) #1

declare dso_local i32 @test_same_origin(i8*, i8*) #1

declare dso_local i32 @av_log(%struct.TYPE_10__*, i32, i8*, ...) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i64 @strstr(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
