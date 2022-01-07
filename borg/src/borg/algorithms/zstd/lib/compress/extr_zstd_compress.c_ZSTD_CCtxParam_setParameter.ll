; ModuleID = '/home/carl/AnghaBench/borg/src/borg/algorithms/zstd/lib/compress/extr_zstd_compress.c_ZSTD_CCtxParam_setParameter.c'
source_filename = "/home/carl/AnghaBench/borg/src/borg/algorithms/zstd/lib/compress/extr_zstd_compress.c_ZSTD_CCtxParam_setParameter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i32, %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__, i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [37 x i8] c"ZSTD_CCtxParam_setParameter (%i, %i)\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"set content size flag = %u\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"set dictIDFlag = %u\00", align 1
@parameter_unsupported = common dso_local global i32 0, align 4
@ZSTD_WINDOWLOG_MAX = common dso_local global i32 0, align 4
@ZSTD_HASHLOG_MIN = common dso_local global i32 0, align 4
@parameter_outOfBound = common dso_local global i32 0, align 4
@ZSTDMT_p_jobSize = common dso_local global i32 0, align 4
@ZSTDMT_p_overlapLog = common dso_local global i32 0, align 4
@ZSTDMT_p_rsyncable = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ZSTD_CCtxParam_setParameter(%struct.TYPE_11__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* %7, align 4
  %12 = call i32 (i32, i8*, i32, ...) @DEBUGLOG(i32 4, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %10, i32 %11)
  %13 = load i32, i32* %6, align 4
  switch i32 %13, label %324 [
    i32 142, label %14
    i32 148, label %24
    i32 128, label %55
    i32 141, label %71
    i32 150, label %87
    i32 131, label %103
    i32 135, label %116
    i32 129, label %132
    i32 130, label %144
    i32 147, label %160
    i32 149, label %176
    i32 146, label %188
    i32 143, label %208
    i32 144, label %218
    i32 134, label %229
    i32 140, label %236
    i32 133, label %239
    i32 132, label %242
    i32 145, label %245
    i32 138, label %257
    i32 136, label %273
    i32 139, label %289
    i32 137, label %305
  ]

14:                                               ; preds = %3
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @BOUNDCHECK(i32 142, i32 %15)
  %17 = load i32, i32* %7, align 4
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 6
  store i32 %17, i32* %19, align 4
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 6
  %22 = load i32, i32* %21, align 4
  %23 = sext i32 %22 to i64
  store i64 %23, i64* %4, align 8
  br label %327

24:                                               ; preds = %3
  %25 = load i32, i32* %7, align 4
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = call i32 (...) @ZSTD_maxCLevel()
  %28 = icmp sgt i32 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = call i32 (...) @ZSTD_maxCLevel()
  store i32 %30, i32* %8, align 4
  br label %31

31:                                               ; preds = %29, %24
  %32 = load i32, i32* %8, align 4
  %33 = call i32 (...) @ZSTD_minCLevel()
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = call i32 (...) @ZSTD_minCLevel()
  store i32 %36, i32* %8, align 4
  br label %37

37:                                               ; preds = %35, %31
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %37
  %41 = load i32, i32* %8, align 4
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  br label %44

44:                                               ; preds = %40, %37
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp sge i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %44
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = sext i32 %52 to i64
  store i64 %53, i64* %4, align 8
  br label %327

54:                                               ; preds = %44
  store i64 0, i64* %4, align 8
  br label %327

55:                                               ; preds = %3
  %56 = load i32, i32* %7, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %55
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @BOUNDCHECK(i32 128, i32 %59)
  br label %61

61:                                               ; preds = %58, %55
  %62 = load i32, i32* %7, align 4
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 5
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  store i32 %62, i32* %65, align 4
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 5
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = sext i32 %69 to i64
  store i64 %70, i64* %4, align 8
  br label %327

71:                                               ; preds = %3
  %72 = load i32, i32* %7, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %71
  %75 = load i32, i32* %7, align 4
  %76 = call i32 @BOUNDCHECK(i32 141, i32 %75)
  br label %77

77:                                               ; preds = %74, %71
  %78 = load i32, i32* %7, align 4
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 5
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 1
  store i32 %78, i32* %81, align 4
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 5
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = sext i32 %85 to i64
  store i64 %86, i64* %4, align 8
  br label %327

87:                                               ; preds = %3
  %88 = load i32, i32* %7, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %87
  %91 = load i32, i32* %7, align 4
  %92 = call i32 @BOUNDCHECK(i32 150, i32 %91)
  br label %93

93:                                               ; preds = %90, %87
  %94 = load i32, i32* %7, align 4
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 5
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 2
  store i32 %94, i32* %97, align 4
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 5
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = sext i32 %101 to i64
  store i64 %102, i64* %4, align 8
  br label %327

103:                                              ; preds = %3
  %104 = load i32, i32* %7, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %103
  %107 = load i32, i32* %7, align 4
  %108 = call i32 @BOUNDCHECK(i32 131, i32 %107)
  br label %109

109:                                              ; preds = %106, %103
  %110 = load i32, i32* %7, align 4
  %111 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 5
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 3
  store i32 %110, i32* %113, align 4
  %114 = load i32, i32* %7, align 4
  %115 = sext i32 %114 to i64
  store i64 %115, i64* %4, align 8
  br label %327

116:                                              ; preds = %3
  %117 = load i32, i32* %7, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %116
  %120 = load i32, i32* %7, align 4
  %121 = call i32 @BOUNDCHECK(i32 135, i32 %120)
  br label %122

122:                                              ; preds = %119, %116
  %123 = load i32, i32* %7, align 4
  %124 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %124, i32 0, i32 5
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 4
  store i32 %123, i32* %126, align 4
  %127 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %127, i32 0, i32 5
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 4
  %130 = load i32, i32* %129, align 4
  %131 = sext i32 %130 to i64
  store i64 %131, i64* %4, align 8
  br label %327

132:                                              ; preds = %3
  %133 = load i32, i32* %7, align 4
  %134 = call i32 @BOUNDCHECK(i32 129, i32 %133)
  %135 = load i32, i32* %7, align 4
  %136 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %136, i32 0, i32 5
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 5
  store i32 %135, i32* %138, align 4
  %139 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %140 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %139, i32 0, i32 5
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 5
  %142 = load i32, i32* %141, align 4
  %143 = sext i32 %142 to i64
  store i64 %143, i64* %4, align 8
  br label %327

144:                                              ; preds = %3
  %145 = load i32, i32* %7, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %150

147:                                              ; preds = %144
  %148 = load i32, i32* %7, align 4
  %149 = call i32 @BOUNDCHECK(i32 130, i32 %148)
  br label %150

150:                                              ; preds = %147, %144
  %151 = load i32, i32* %7, align 4
  %152 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %153 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %152, i32 0, i32 5
  %154 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %153, i32 0, i32 6
  store i32 %151, i32* %154, align 4
  %155 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %156 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %155, i32 0, i32 5
  %157 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %156, i32 0, i32 6
  %158 = load i32, i32* %157, align 4
  %159 = sext i32 %158 to i64
  store i64 %159, i64* %4, align 8
  br label %327

160:                                              ; preds = %3
  %161 = load i32, i32* %7, align 4
  %162 = icmp ne i32 %161, 0
  %163 = zext i1 %162 to i32
  %164 = call i32 (i32, i8*, i32, ...) @DEBUGLOG(i32 4, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %163)
  %165 = load i32, i32* %7, align 4
  %166 = icmp ne i32 %165, 0
  %167 = zext i1 %166 to i32
  %168 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %169 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %168, i32 0, i32 4
  %170 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %169, i32 0, i32 0
  store i32 %167, i32* %170, align 4
  %171 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %172 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %171, i32 0, i32 4
  %173 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = sext i32 %174 to i64
  store i64 %175, i64* %4, align 8
  br label %327

176:                                              ; preds = %3
  %177 = load i32, i32* %7, align 4
  %178 = icmp ne i32 %177, 0
  %179 = zext i1 %178 to i32
  %180 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %181 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %180, i32 0, i32 4
  %182 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %181, i32 0, i32 1
  store i32 %179, i32* %182, align 4
  %183 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %184 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %183, i32 0, i32 4
  %185 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = sext i32 %186 to i64
  store i64 %187, i64* %4, align 8
  br label %327

188:                                              ; preds = %3
  %189 = load i32, i32* %7, align 4
  %190 = icmp ne i32 %189, 0
  %191 = zext i1 %190 to i32
  %192 = call i32 (i32, i8*, i32, ...) @DEBUGLOG(i32 4, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %191)
  %193 = load i32, i32* %7, align 4
  %194 = icmp ne i32 %193, 0
  %195 = xor i1 %194, true
  %196 = zext i1 %195 to i32
  %197 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %198 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %197, i32 0, i32 4
  %199 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %198, i32 0, i32 2
  store i32 %196, i32* %199, align 4
  %200 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %201 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %200, i32 0, i32 4
  %202 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %201, i32 0, i32 2
  %203 = load i32, i32* %202, align 4
  %204 = icmp ne i32 %203, 0
  %205 = xor i1 %204, true
  %206 = zext i1 %205 to i32
  %207 = sext i32 %206 to i64
  store i64 %207, i64* %4, align 8
  br label %327

208:                                              ; preds = %3
  %209 = load i32, i32* %7, align 4
  %210 = icmp ne i32 %209, 0
  %211 = zext i1 %210 to i32
  %212 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %213 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %212, i32 0, i32 1
  store i32 %211, i32* %213, align 4
  %214 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %215 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %214, i32 0, i32 1
  %216 = load i32, i32* %215, align 4
  %217 = sext i32 %216 to i64
  store i64 %217, i64* %4, align 8
  br label %327

218:                                              ; preds = %3
  %219 = load i32, i32* %7, align 4
  store i32 %219, i32* %9, align 4
  %220 = load i32, i32* %9, align 4
  %221 = call i32 @BOUNDCHECK(i32 144, i32 %220)
  %222 = load i32, i32* %9, align 4
  %223 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %224 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %223, i32 0, i32 2
  store i32 %222, i32* %224, align 4
  %225 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %226 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %225, i32 0, i32 2
  %227 = load i32, i32* %226, align 4
  %228 = sext i32 %227 to i64
  store i64 %228, i64* %4, align 8
  br label %327

229:                                              ; preds = %3
  %230 = load i32, i32* %7, align 4
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %235

232:                                              ; preds = %229
  %233 = load i32, i32* @parameter_unsupported, align 4
  %234 = call i64 @ERROR(i32 %233)
  store i64 %234, i64* %4, align 8
  br label %327

235:                                              ; preds = %229
  store i64 0, i64* %4, align 8
  br label %327

236:                                              ; preds = %3
  %237 = load i32, i32* @parameter_unsupported, align 4
  %238 = call i64 @ERROR(i32 %237)
  store i64 %238, i64* %4, align 8
  br label %327

239:                                              ; preds = %3
  %240 = load i32, i32* @parameter_unsupported, align 4
  %241 = call i64 @ERROR(i32 %240)
  store i64 %241, i64* %4, align 8
  br label %327

242:                                              ; preds = %3
  %243 = load i32, i32* @parameter_unsupported, align 4
  %244 = call i64 @ERROR(i32 %243)
  store i64 %244, i64* %4, align 8
  br label %327

245:                                              ; preds = %3
  %246 = load i32, i32* %7, align 4
  %247 = icmp ne i32 %246, 0
  %248 = zext i1 %247 to i32
  %249 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %250 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %249, i32 0, i32 3
  %251 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %250, i32 0, i32 0
  store i32 %248, i32* %251, align 4
  %252 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %253 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %252, i32 0, i32 3
  %254 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 4
  %256 = sext i32 %255 to i64
  store i64 %256, i64* %4, align 8
  br label %327

257:                                              ; preds = %3
  %258 = load i32, i32* %7, align 4
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %263

260:                                              ; preds = %257
  %261 = load i32, i32* %7, align 4
  %262 = call i32 @BOUNDCHECK(i32 138, i32 %261)
  br label %263

263:                                              ; preds = %260, %257
  %264 = load i32, i32* %7, align 4
  %265 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %266 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %265, i32 0, i32 3
  %267 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %266, i32 0, i32 1
  store i32 %264, i32* %267, align 4
  %268 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %269 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %268, i32 0, i32 3
  %270 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %269, i32 0, i32 1
  %271 = load i32, i32* %270, align 4
  %272 = sext i32 %271 to i64
  store i64 %272, i64* %4, align 8
  br label %327

273:                                              ; preds = %3
  %274 = load i32, i32* %7, align 4
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %276, label %279

276:                                              ; preds = %273
  %277 = load i32, i32* %7, align 4
  %278 = call i32 @BOUNDCHECK(i32 136, i32 %277)
  br label %279

279:                                              ; preds = %276, %273
  %280 = load i32, i32* %7, align 4
  %281 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %282 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %281, i32 0, i32 3
  %283 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %282, i32 0, i32 2
  store i32 %280, i32* %283, align 4
  %284 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %285 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %284, i32 0, i32 3
  %286 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %285, i32 0, i32 2
  %287 = load i32, i32* %286, align 4
  %288 = sext i32 %287 to i64
  store i64 %288, i64* %4, align 8
  br label %327

289:                                              ; preds = %3
  %290 = load i32, i32* %7, align 4
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %292, label %295

292:                                              ; preds = %289
  %293 = load i32, i32* %7, align 4
  %294 = call i32 @BOUNDCHECK(i32 139, i32 %293)
  br label %295

295:                                              ; preds = %292, %289
  %296 = load i32, i32* %7, align 4
  %297 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %298 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %297, i32 0, i32 3
  %299 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %298, i32 0, i32 3
  store i32 %296, i32* %299, align 4
  %300 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %301 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %300, i32 0, i32 3
  %302 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %301, i32 0, i32 3
  %303 = load i32, i32* %302, align 4
  %304 = sext i32 %303 to i64
  store i64 %304, i64* %4, align 8
  br label %327

305:                                              ; preds = %3
  %306 = load i32, i32* %7, align 4
  %307 = load i32, i32* @ZSTD_WINDOWLOG_MAX, align 4
  %308 = load i32, i32* @ZSTD_HASHLOG_MIN, align 4
  %309 = sub nsw i32 %307, %308
  %310 = icmp sgt i32 %306, %309
  br i1 %310, label %311, label %314

311:                                              ; preds = %305
  %312 = load i32, i32* @parameter_outOfBound, align 4
  %313 = call i64 @ERROR(i32 %312)
  store i64 %313, i64* %4, align 8
  br label %327

314:                                              ; preds = %305
  %315 = load i32, i32* %7, align 4
  %316 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %317 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %316, i32 0, i32 3
  %318 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %317, i32 0, i32 4
  store i32 %315, i32* %318, align 4
  %319 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %320 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %319, i32 0, i32 3
  %321 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %320, i32 0, i32 4
  %322 = load i32, i32* %321, align 4
  %323 = sext i32 %322 to i64
  store i64 %323, i64* %4, align 8
  br label %327

324:                                              ; preds = %3
  %325 = load i32, i32* @parameter_unsupported, align 4
  %326 = call i64 @ERROR(i32 %325)
  store i64 %326, i64* %4, align 8
  br label %327

327:                                              ; preds = %324, %314, %311, %295, %279, %263, %245, %242, %239, %236, %235, %232, %218, %208, %188, %176, %160, %150, %132, %122, %109, %93, %77, %61, %54, %49, %14
  %328 = load i64, i64* %4, align 8
  ret i64 %328
}

declare dso_local i32 @DEBUGLOG(i32, i8*, i32, ...) #1

declare dso_local i32 @BOUNDCHECK(i32, i32) #1

declare dso_local i32 @ZSTD_maxCLevel(...) #1

declare dso_local i32 @ZSTD_minCLevel(...) #1

declare dso_local i64 @ERROR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
