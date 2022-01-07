; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_sccenc.c_scc_write_packet.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_sccenc.c_scc_write_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i64 }
%struct.TYPE_8__ = type { i32, i32, i32* }

@AV_NOPTS_VALUE = common dso_local global i32 0, align 4
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Insufficient timestamps.\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"\0A%02d:%02d:%02d:%02d\09\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"%02x%02x\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, %struct.TYPE_8__*)* @scc_write_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scc_write_packet(%struct.TYPE_9__* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %5, align 8
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  store %struct.TYPE_7__* %15, %struct.TYPE_7__** %6, align 8
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @AV_NOPTS_VALUE, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %2
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %24 = load i32, i32* @AV_LOG_WARNING, align 4
  %25 = call i32 @av_log(%struct.TYPE_9__* %23, i32 %24, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %275

26:                                               ; preds = %2
  %27 = load i32, i32* %7, align 4
  %28 = sdiv i32 %27, 3600000
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %7, align 4
  %30 = sdiv i32 %29, 60000
  %31 = srem i32 %30, 60
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %7, align 4
  %33 = sdiv i32 %32, 1000
  %34 = srem i32 %33, 60
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %7, align 4
  %36 = srem i32 %35, 1000
  %37 = sdiv i32 %36, 33
  store i32 %37, i32* %12, align 4
  store i32 0, i32* %8, align 4
  br label %38

38:                                               ; preds = %75, %26
  %39 = load i32, i32* %8, align 4
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = icmp slt i32 %39, %42
  br i1 %43, label %44, label %78

44:                                               ; preds = %38
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 2
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %8, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = icmp eq i32 %51, 252
  br i1 %52, label %53, label %74

53:                                               ; preds = %44
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 2
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %8, align 4
  %58 = add nsw i32 %57, 1
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %56, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = icmp ne i32 %61, 128
  br i1 %62, label %73, label %63

63:                                               ; preds = %53
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 2
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* %8, align 4
  %68 = add nsw i32 %67, 2
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %66, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = icmp ne i32 %71, 128
  br i1 %72, label %73, label %74

73:                                               ; preds = %63, %53
  br label %78

74:                                               ; preds = %63, %44
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %8, align 4
  %77 = add nsw i32 %76, 3
  store i32 %77, i32* %8, align 4
  br label %38

78:                                               ; preds = %73, %38
  %79 = load i32, i32* %8, align 4
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = icmp sge i32 %79, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %78
  store i32 0, i32* %3, align 4
  br label %275

85:                                               ; preds = %78
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %125, label %90

90:                                               ; preds = %85
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* %9, align 4
  %95 = icmp ne i32 %93, %94
  br i1 %95, label %114, label %96

96:                                               ; preds = %90
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* %10, align 4
  %101 = icmp ne i32 %99, %100
  br i1 %101, label %114, label %102

102:                                              ; preds = %96
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* %11, align 4
  %107 = icmp ne i32 %105, %106
  br i1 %107, label %114, label %108

108:                                              ; preds = %102
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 4
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* %12, align 4
  %113 = icmp ne i32 %111, %112
  br i1 %113, label %114, label %125

114:                                              ; preds = %108, %102, %96, %90
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* %9, align 4
  %119 = load i32, i32* %10, align 4
  %120 = load i32, i32* %11, align 4
  %121 = load i32, i32* %12, align 4
  %122 = call i32 (i32, i8*, ...) @avio_printf(i32 %117, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %118, i32 %119, i32 %120, i32 %121)
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 0
  store i32 1, i32* %124, align 8
  br label %125

125:                                              ; preds = %114, %108, %85
  store i32 0, i32* %8, align 4
  br label %126

126:                                              ; preds = %221, %125
  %127 = load i32, i32* %8, align 4
  %128 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = icmp slt i32 %127, %130
  br i1 %131, label %132, label %224

132:                                              ; preds = %126
  %133 = load i32, i32* %8, align 4
  %134 = add nsw i32 %133, 3
  %135 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = icmp sgt i32 %134, %137
  br i1 %138, label %139, label %140

139:                                              ; preds = %132
  br label %224

140:                                              ; preds = %132
  %141 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 2
  %143 = load i32*, i32** %142, align 8
  %144 = load i32, i32* %8, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i32, i32* %143, i64 %145
  %147 = load i32, i32* %146, align 4
  %148 = icmp ne i32 %147, 252
  br i1 %148, label %169, label %149

149:                                              ; preds = %140
  %150 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 2
  %152 = load i32*, i32** %151, align 8
  %153 = load i32, i32* %8, align 4
  %154 = add nsw i32 %153, 1
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32, i32* %152, i64 %155
  %157 = load i32, i32* %156, align 4
  %158 = icmp eq i32 %157, 128
  br i1 %158, label %159, label %170

159:                                              ; preds = %149
  %160 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %161 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %160, i32 0, i32 2
  %162 = load i32*, i32** %161, align 8
  %163 = load i32, i32* %8, align 4
  %164 = add nsw i32 %163, 2
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i32, i32* %162, i64 %165
  %167 = load i32, i32* %166, align 4
  %168 = icmp eq i32 %167, 128
  br i1 %168, label %169, label %170

169:                                              ; preds = %159, %140
  br label %221

170:                                              ; preds = %159, %149
  %171 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %172 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %186, label %175

175:                                              ; preds = %170
  %176 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %177 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = load i32, i32* %9, align 4
  %180 = load i32, i32* %10, align 4
  %181 = load i32, i32* %11, align 4
  %182 = load i32, i32* %12, align 4
  %183 = call i32 (i32, i8*, ...) @avio_printf(i32 %178, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %179, i32 %180, i32 %181, i32 %182)
  %184 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %185 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %184, i32 0, i32 0
  store i32 1, i32* %185, align 8
  br label %186

186:                                              ; preds = %175, %170
  %187 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %188 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %187, i32 0, i32 5
  %189 = load i64, i64* %188, align 8
  %190 = icmp sgt i64 %189, 0
  br i1 %190, label %191, label %196

191:                                              ; preds = %186
  %192 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %193 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = call i32 (i32, i8*, ...) @avio_printf(i32 %194, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %196

196:                                              ; preds = %191, %186
  %197 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %198 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %201 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %200, i32 0, i32 2
  %202 = load i32*, i32** %201, align 8
  %203 = load i32, i32* %8, align 4
  %204 = add nsw i32 %203, 1
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i32, i32* %202, i64 %205
  %207 = load i32, i32* %206, align 4
  %208 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %209 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %208, i32 0, i32 2
  %210 = load i32*, i32** %209, align 8
  %211 = load i32, i32* %8, align 4
  %212 = add nsw i32 %211, 2
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i32, i32* %210, i64 %213
  %215 = load i32, i32* %214, align 4
  %216 = call i32 (i32, i8*, ...) @avio_printf(i32 %199, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 %207, i32 %215)
  %217 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %218 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %217, i32 0, i32 5
  %219 = load i64, i64* %218, align 8
  %220 = add nsw i64 %219, 1
  store i64 %220, i64* %218, align 8
  br label %221

221:                                              ; preds = %196, %169
  %222 = load i32, i32* %8, align 4
  %223 = add nsw i32 %222, 3
  store i32 %223, i32* %8, align 4
  br label %126

224:                                              ; preds = %139, %126
  %225 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %226 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 8
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %262

229:                                              ; preds = %224
  %230 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %231 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %230, i32 0, i32 1
  %232 = load i32, i32* %231, align 4
  %233 = load i32, i32* %9, align 4
  %234 = icmp ne i32 %232, %233
  br i1 %234, label %253, label %235

235:                                              ; preds = %229
  %236 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %237 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %236, i32 0, i32 2
  %238 = load i32, i32* %237, align 8
  %239 = load i32, i32* %10, align 4
  %240 = icmp ne i32 %238, %239
  br i1 %240, label %253, label %241

241:                                              ; preds = %235
  %242 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %243 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %242, i32 0, i32 3
  %244 = load i32, i32* %243, align 4
  %245 = load i32, i32* %11, align 4
  %246 = icmp ne i32 %244, %245
  br i1 %246, label %253, label %247

247:                                              ; preds = %241
  %248 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %249 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %248, i32 0, i32 4
  %250 = load i32, i32* %249, align 8
  %251 = load i32, i32* %12, align 4
  %252 = icmp ne i32 %250, %251
  br i1 %252, label %253, label %262

253:                                              ; preds = %247, %241, %235, %229
  %254 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %255 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 8
  %257 = call i32 (i32, i8*, ...) @avio_printf(i32 %256, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %258 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %259 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %258, i32 0, i32 5
  store i64 0, i64* %259, align 8
  %260 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %261 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %260, i32 0, i32 0
  store i32 0, i32* %261, align 8
  br label %262

262:                                              ; preds = %253, %247, %224
  %263 = load i32, i32* %9, align 4
  %264 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %265 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %264, i32 0, i32 1
  store i32 %263, i32* %265, align 4
  %266 = load i32, i32* %10, align 4
  %267 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %268 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %267, i32 0, i32 2
  store i32 %266, i32* %268, align 8
  %269 = load i32, i32* %11, align 4
  %270 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %271 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %270, i32 0, i32 3
  store i32 %269, i32* %271, align 4
  %272 = load i32, i32* %12, align 4
  %273 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %274 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %273, i32 0, i32 4
  store i32 %272, i32* %274, align 8
  store i32 0, i32* %3, align 4
  br label %275

275:                                              ; preds = %262, %84, %22
  %276 = load i32, i32* %3, align 4
  ret i32 %276
}

declare dso_local i32 @av_log(%struct.TYPE_9__*, i32, i8*) #1

declare dso_local i32 @avio_printf(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
