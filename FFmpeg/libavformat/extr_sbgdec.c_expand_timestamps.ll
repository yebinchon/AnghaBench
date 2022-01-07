; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_sbgdec.c_expand_timestamps.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_sbgdec.c_expand_timestamps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbg_script = type { i32, i32, i32, i32, %struct.TYPE_4__*, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8, i32 }
%struct.tm = type { i32, i32, i32 }

@AV_NOPTS_VALUE = common dso_local global i32 0, align 4
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"Start time ignored in a purely relative script.\0A\00", align 1
@.str.1 = private unnamed_addr constant [117 x i8] c"Scripts with mixed absolute and relative timestamps can give unexpected results (pause, seeking, time zone change).\0A\00", align 1
@DAY = common dso_local global i32 0, align 4
@AV_LOG_INFO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"Using %02d:%02d:%02d as NOW.\0A\00", align 1
@AV_TIME_BASE = common dso_local global i32 0, align 4
@DAY_TS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.sbg_script*)* @expand_timestamps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @expand_timestamps(i8* %0, %struct.sbg_script* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.sbg_script*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.tm*, align 8
  %12 = alloca %struct.tm, align 4
  store i8* %0, i8** %3, align 8
  store %struct.sbg_script* %1, %struct.sbg_script** %4, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %5, align 4
  br label %13

13:                                               ; preds = %34, %2
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.sbg_script*, %struct.sbg_script** %4, align 8
  %16 = getelementptr inbounds %struct.sbg_script, %struct.sbg_script* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %37

19:                                               ; preds = %13
  %20 = load %struct.sbg_script*, %struct.sbg_script** %4, align 8
  %21 = getelementptr inbounds %struct.sbg_script, %struct.sbg_script* %20, i32 0, i32 4
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i8, i8* %27, align 4
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 78
  %31 = zext i1 %30 to i32
  %32 = load i32, i32* %6, align 4
  %33 = add nsw i32 %32, %31
  store i32 %33, i32* %6, align 4
  br label %34

34:                                               ; preds = %19
  %35 = load i32, i32* %5, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %5, align 4
  br label %13

37:                                               ; preds = %13
  %38 = load i32, i32* %6, align 4
  %39 = load %struct.sbg_script*, %struct.sbg_script** %4, align 8
  %40 = getelementptr inbounds %struct.sbg_script, %struct.sbg_script* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp eq i32 %38, %41
  br i1 %42, label %43, label %54

43:                                               ; preds = %37
  store i32 0, i32* %7, align 4
  %44 = load %struct.sbg_script*, %struct.sbg_script** %4, align 8
  %45 = getelementptr inbounds %struct.sbg_script, %struct.sbg_script* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @AV_NOPTS_VALUE, align 4
  %48 = icmp ne i32 %46, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %43
  %50 = load i8*, i8** %3, align 8
  %51 = load i32, i32* @AV_LOG_WARNING, align 4
  %52 = call i32 (i8*, i32, i8*, ...) @av_log(i8* %50, i32 %51, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  br label %53

53:                                               ; preds = %49, %43
  br label %173

54:                                               ; preds = %37
  %55 = load i32, i32* %6, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %54
  %58 = load %struct.sbg_script*, %struct.sbg_script** %4, align 8
  %59 = getelementptr inbounds %struct.sbg_script, %struct.sbg_script* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @AV_NOPTS_VALUE, align 4
  %62 = icmp ne i32 %60, %61
  br i1 %62, label %68, label %63

63:                                               ; preds = %57, %54
  %64 = load %struct.sbg_script*, %struct.sbg_script** %4, align 8
  %65 = getelementptr inbounds %struct.sbg_script, %struct.sbg_script* %64, i32 0, i32 5
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %88

68:                                               ; preds = %63, %57
  %69 = load %struct.sbg_script*, %struct.sbg_script** %4, align 8
  %70 = getelementptr inbounds %struct.sbg_script, %struct.sbg_script* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @AV_NOPTS_VALUE, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %84

74:                                               ; preds = %68
  %75 = load %struct.sbg_script*, %struct.sbg_script** %4, align 8
  %76 = getelementptr inbounds %struct.sbg_script, %struct.sbg_script* %75, i32 0, i32 4
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i64 0
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.sbg_script*, %struct.sbg_script** %4, align 8
  %83 = getelementptr inbounds %struct.sbg_script, %struct.sbg_script* %82, i32 0, i32 1
  store i32 %81, i32* %83, align 4
  br label %84

84:                                               ; preds = %74, %68
  %85 = load %struct.sbg_script*, %struct.sbg_script** %4, align 8
  %86 = getelementptr inbounds %struct.sbg_script, %struct.sbg_script* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  store i32 %87, i32* %7, align 4
  br label %172

88:                                               ; preds = %63
  %89 = load i8*, i8** %3, align 8
  %90 = load i32, i32* @AV_LOG_WARNING, align 4
  %91 = call i32 (i8*, i32, i8*, ...) @av_log(i8* %89, i32 %90, i8* getelementptr inbounds ([117 x i8], [117 x i8]* @.str.1, i64 0, i64 0))
  %92 = call i32 @time(i32* %10)
  %93 = call %struct.tm* @localtime_r(i32* %10, %struct.tm* %12)
  store %struct.tm* %93, %struct.tm** %11, align 8
  %94 = load %struct.tm*, %struct.tm** %11, align 8
  %95 = icmp ne %struct.tm* %94, null
  br i1 %95, label %96, label %110

96:                                               ; preds = %88
  %97 = load %struct.tm*, %struct.tm** %11, align 8
  %98 = getelementptr inbounds %struct.tm, %struct.tm* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = mul nsw i32 %99, 3600
  %101 = load %struct.tm*, %struct.tm** %11, align 8
  %102 = getelementptr inbounds %struct.tm, %struct.tm* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = mul nsw i32 %103, 60
  %105 = add nsw i32 %100, %104
  %106 = load %struct.tm*, %struct.tm** %11, align 8
  %107 = getelementptr inbounds %struct.tm, %struct.tm* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  %109 = add nsw i32 %105, %108
  br label %114

110:                                              ; preds = %88
  %111 = load i32, i32* %10, align 4
  %112 = load i32, i32* @DAY, align 4
  %113 = srem i32 %111, %112
  br label %114

114:                                              ; preds = %110, %96
  %115 = phi i32 [ %109, %96 ], [ %113, %110 ]
  store i32 %115, i32* %7, align 4
  %116 = load i8*, i8** %3, align 8
  %117 = load i32, i32* @AV_LOG_INFO, align 4
  %118 = load i32, i32* %7, align 4
  %119 = sdiv i32 %118, 3600
  %120 = load i32, i32* %7, align 4
  %121 = sdiv i32 %120, 60
  %122 = srem i32 %121, 60
  %123 = load i32, i32* %7, align 4
  %124 = srem i32 %123, 60
  %125 = call i32 (i8*, i32, i8*, ...) @av_log(i8* %116, i32 %117, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %119, i32 %122, i32 %124)
  %126 = load i32, i32* @AV_TIME_BASE, align 4
  %127 = load i32, i32* %7, align 4
  %128 = mul nsw i32 %127, %126
  store i32 %128, i32* %7, align 4
  store i32 0, i32* %5, align 4
  br label %129

129:                                              ; preds = %168, %114
  %130 = load i32, i32* %5, align 4
  %131 = load %struct.sbg_script*, %struct.sbg_script** %4, align 8
  %132 = getelementptr inbounds %struct.sbg_script, %struct.sbg_script* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = icmp slt i32 %130, %133
  br i1 %134, label %135, label %171

135:                                              ; preds = %129
  %136 = load %struct.sbg_script*, %struct.sbg_script** %4, align 8
  %137 = getelementptr inbounds %struct.sbg_script, %struct.sbg_script* %136, i32 0, i32 4
  %138 = load %struct.TYPE_4__*, %struct.TYPE_4__** %137, align 8
  %139 = load i32, i32* %5, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i32 0, i32 0
  %144 = load i8, i8* %143, align 4
  %145 = sext i8 %144 to i32
  %146 = icmp eq i32 %145, 78
  br i1 %146, label %147, label %167

147:                                              ; preds = %135
  %148 = load i32, i32* %7, align 4
  %149 = load %struct.sbg_script*, %struct.sbg_script** %4, align 8
  %150 = getelementptr inbounds %struct.sbg_script, %struct.sbg_script* %149, i32 0, i32 4
  %151 = load %struct.TYPE_4__*, %struct.TYPE_4__** %150, align 8
  %152 = load i32, i32* %5, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i64 %153
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = add nsw i32 %157, %148
  store i32 %158, i32* %156, align 4
  %159 = load %struct.sbg_script*, %struct.sbg_script** %4, align 8
  %160 = getelementptr inbounds %struct.sbg_script, %struct.sbg_script* %159, i32 0, i32 4
  %161 = load %struct.TYPE_4__*, %struct.TYPE_4__** %160, align 8
  %162 = load i32, i32* %5, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i64 %163
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %165, i32 0, i32 0
  store i8 84, i8* %166, align 4
  br label %167

167:                                              ; preds = %147, %135
  br label %168

168:                                              ; preds = %167
  %169 = load i32, i32* %5, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %5, align 4
  br label %129

171:                                              ; preds = %129
  br label %172

172:                                              ; preds = %171, %84
  br label %173

173:                                              ; preds = %172, %53
  %174 = load %struct.sbg_script*, %struct.sbg_script** %4, align 8
  %175 = getelementptr inbounds %struct.sbg_script, %struct.sbg_script* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = load i32, i32* @AV_NOPTS_VALUE, align 4
  %178 = icmp eq i32 %176, %177
  br i1 %178, label %179, label %203

179:                                              ; preds = %173
  %180 = load %struct.sbg_script*, %struct.sbg_script** %4, align 8
  %181 = getelementptr inbounds %struct.sbg_script, %struct.sbg_script* %180, i32 0, i32 5
  %182 = load i64, i64* %181, align 8
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %197

184:                                              ; preds = %179
  %185 = load %struct.sbg_script*, %struct.sbg_script** %4, align 8
  %186 = getelementptr inbounds %struct.sbg_script, %struct.sbg_script* %185, i32 0, i32 4
  %187 = load %struct.TYPE_4__*, %struct.TYPE_4__** %186, align 8
  %188 = icmp ne %struct.TYPE_4__* %187, null
  br i1 %188, label %189, label %197

189:                                              ; preds = %184
  %190 = load %struct.sbg_script*, %struct.sbg_script** %4, align 8
  %191 = getelementptr inbounds %struct.sbg_script, %struct.sbg_script* %190, i32 0, i32 4
  %192 = load %struct.TYPE_4__*, %struct.TYPE_4__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %192, i64 0
  %194 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 4
  br label %199

197:                                              ; preds = %184, %179
  %198 = load i32, i32* %7, align 4
  br label %199

199:                                              ; preds = %197, %189
  %200 = phi i32 [ %196, %189 ], [ %198, %197 ]
  %201 = load %struct.sbg_script*, %struct.sbg_script** %4, align 8
  %202 = getelementptr inbounds %struct.sbg_script, %struct.sbg_script* %201, i32 0, i32 1
  store i32 %200, i32* %202, align 4
  br label %203

203:                                              ; preds = %199, %173
  %204 = load %struct.sbg_script*, %struct.sbg_script** %4, align 8
  %205 = getelementptr inbounds %struct.sbg_script, %struct.sbg_script* %204, i32 0, i32 3
  %206 = load i32, i32* %205, align 4
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %216

208:                                              ; preds = %203
  %209 = load %struct.sbg_script*, %struct.sbg_script** %4, align 8
  %210 = getelementptr inbounds %struct.sbg_script, %struct.sbg_script* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 4
  %212 = load %struct.sbg_script*, %struct.sbg_script** %4, align 8
  %213 = getelementptr inbounds %struct.sbg_script, %struct.sbg_script* %212, i32 0, i32 3
  %214 = load i32, i32* %213, align 4
  %215 = add nsw i32 %211, %214
  br label %218

216:                                              ; preds = %203
  %217 = load i32, i32* @AV_NOPTS_VALUE, align 4
  br label %218

218:                                              ; preds = %216, %208
  %219 = phi i32 [ %215, %208 ], [ %217, %216 ]
  %220 = load %struct.sbg_script*, %struct.sbg_script** %4, align 8
  %221 = getelementptr inbounds %struct.sbg_script, %struct.sbg_script* %220, i32 0, i32 2
  store i32 %219, i32* %221, align 8
  %222 = load i32, i32* %7, align 4
  store i32 %222, i32* %8, align 4
  store i32 0, i32* %5, align 4
  br label %223

223:                                              ; preds = %261, %218
  %224 = load i32, i32* %5, align 4
  %225 = load %struct.sbg_script*, %struct.sbg_script** %4, align 8
  %226 = getelementptr inbounds %struct.sbg_script, %struct.sbg_script* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 8
  %228 = icmp slt i32 %224, %227
  br i1 %228, label %229, label %264

229:                                              ; preds = %223
  %230 = load %struct.sbg_script*, %struct.sbg_script** %4, align 8
  %231 = getelementptr inbounds %struct.sbg_script, %struct.sbg_script* %230, i32 0, i32 4
  %232 = load %struct.TYPE_4__*, %struct.TYPE_4__** %231, align 8
  %233 = load i32, i32* %5, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %232, i64 %234
  %236 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %235, i32 0, i32 0
  %237 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %236, i32 0, i32 1
  %238 = load i32, i32* %237, align 4
  %239 = load i32, i32* %9, align 4
  %240 = add nsw i32 %238, %239
  %241 = load i32, i32* %8, align 4
  %242 = icmp slt i32 %240, %241
  br i1 %242, label %243, label %249

243:                                              ; preds = %229
  %244 = load i64, i64* @DAY_TS, align 8
  %245 = load i32, i32* %9, align 4
  %246 = sext i32 %245 to i64
  %247 = add nsw i64 %246, %244
  %248 = trunc i64 %247 to i32
  store i32 %248, i32* %9, align 4
  br label %249

249:                                              ; preds = %243, %229
  %250 = load i32, i32* %9, align 4
  %251 = load %struct.sbg_script*, %struct.sbg_script** %4, align 8
  %252 = getelementptr inbounds %struct.sbg_script, %struct.sbg_script* %251, i32 0, i32 4
  %253 = load %struct.TYPE_4__*, %struct.TYPE_4__** %252, align 8
  %254 = load i32, i32* %5, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %253, i64 %255
  %257 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %256, i32 0, i32 0
  %258 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %257, i32 0, i32 1
  %259 = load i32, i32* %258, align 4
  %260 = add nsw i32 %259, %250
  store i32 %260, i32* %258, align 4
  store i32 %260, i32* %8, align 4
  br label %261

261:                                              ; preds = %249
  %262 = load i32, i32* %5, align 4
  %263 = add nsw i32 %262, 1
  store i32 %263, i32* %5, align 4
  br label %223

264:                                              ; preds = %223
  ret void
}

declare dso_local i32 @av_log(i8*, i32, i8*, ...) #1

declare dso_local i32 @time(i32*) #1

declare dso_local %struct.tm* @localtime_r(i32*, %struct.tm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
