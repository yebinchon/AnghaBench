; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_parser.c_load_weights_upto.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_parser.c_load_weights_upto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32*, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64, i32, i32, i32, i32, i32, i32*, i32, i32*, %struct.TYPE_9__*, %struct.TYPE_9__*, %struct.TYPE_9__*, %struct.TYPE_9__*, %struct.TYPE_9__*, %struct.TYPE_9__*, %struct.TYPE_9__*, %struct.TYPE_9__*, %struct.TYPE_9__*, %struct.TYPE_9__*, %struct.TYPE_9__*, %struct.TYPE_9__*, %struct.TYPE_9__*, %struct.TYPE_9__*, %struct.TYPE_9__*, %struct.TYPE_9__*, %struct.TYPE_9__*, %struct.TYPE_9__*, %struct.TYPE_9__*, %struct.TYPE_9__*, i64 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Loading weights from %s...\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@CONVOLUTIONAL = common dso_local global i64 0, align 8
@DECONVOLUTIONAL = common dso_local global i64 0, align 8
@CONNECTED = common dso_local global i64 0, align 8
@BATCHNORM = common dso_local global i64 0, align 8
@CRNN = common dso_local global i64 0, align 8
@RNN = common dso_local global i64 0, align 8
@LSTM = common dso_local global i64 0, align 8
@GRU = common dso_local global i64 0, align 8
@LOCAL = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [7 x i8] c"Done!\0A\00", align 1
@gpu_index = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @load_weights_upto(%struct.TYPE_8__* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_9__, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %19 = load i32, i32* @stderr, align 4
  %20 = load i8*, i8** %6, align 8
  %21 = call i32 (i32, i8*, ...) @fprintf(i32 %19, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* %20)
  %22 = load i32, i32* @stdout, align 4
  %23 = call i32 @fflush(i32 %22)
  %24 = load i8*, i8** %6, align 8
  %25 = call i32* @fopen(i8* %24, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i32* %25, i32** %9, align 8
  %26 = load i32*, i32** %9, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %4
  %29 = load i8*, i8** %6, align 8
  %30 = call i32 @file_error(i8* %29)
  br label %31

31:                                               ; preds = %28, %4
  %32 = load i32*, i32** %9, align 8
  %33 = call i32 @fread(i32* %10, i32 4, i32 1, i32* %32)
  %34 = load i32*, i32** %9, align 8
  %35 = call i32 @fread(i32* %11, i32 4, i32 1, i32* %34)
  %36 = load i32*, i32** %9, align 8
  %37 = call i32 @fread(i32* %12, i32 4, i32 1, i32* %36)
  %38 = load i32, i32* %10, align 4
  %39 = mul nsw i32 %38, 10
  %40 = load i32, i32* %11, align 4
  %41 = add nsw i32 %39, %40
  %42 = icmp sge i32 %41, 2
  br i1 %42, label %43, label %55

43:                                               ; preds = %31
  %44 = load i32, i32* %10, align 4
  %45 = icmp slt i32 %44, 1000
  br i1 %45, label %46, label %55

46:                                               ; preds = %43
  %47 = load i32, i32* %11, align 4
  %48 = icmp slt i32 %47, 1000
  br i1 %48, label %49, label %55

49:                                               ; preds = %46
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = load i32*, i32** %9, align 8
  %54 = call i32 @fread(i32* %52, i32 8, i32 1, i32* %53)
  br label %62

55:                                               ; preds = %46, %43, %31
  store i32 0, i32* %13, align 4
  %56 = load i32*, i32** %9, align 8
  %57 = call i32 @fread(i32* %13, i32 4, i32 1, i32* %56)
  %58 = load i32, i32* %13, align 4
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  store i32 %58, i32* %61, align 4
  br label %62

62:                                               ; preds = %55, %49
  %63 = load i32, i32* %10, align 4
  %64 = icmp sgt i32 %63, 1000
  br i1 %64, label %68, label %65

65:                                               ; preds = %62
  %66 = load i32, i32* %11, align 4
  %67 = icmp sgt i32 %66, 1000
  br label %68

68:                                               ; preds = %65, %62
  %69 = phi i1 [ true, %62 ], [ %67, %65 ]
  %70 = zext i1 %69 to i32
  store i32 %70, i32* %14, align 4
  %71 = load i32, i32* %7, align 4
  store i32 %71, i32* %15, align 4
  br label %72

72:                                               ; preds = %284, %68
  %73 = load i32, i32* %15, align 4
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = icmp slt i32 %73, %76
  br i1 %77, label %78, label %82

78:                                               ; preds = %72
  %79 = load i32, i32* %15, align 4
  %80 = load i32, i32* %8, align 4
  %81 = icmp slt i32 %79, %80
  br label %82

82:                                               ; preds = %78, %72
  %83 = phi i1 [ false, %72 ], [ %81, %78 ]
  br i1 %83, label %84, label %287

84:                                               ; preds = %82
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 3
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %86, align 8
  %88 = load i32, i32* %15, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i64 %89
  %91 = bitcast %struct.TYPE_9__* %16 to i8*
  %92 = bitcast %struct.TYPE_9__* %90 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %91, i8* align 8 %92, i64 224, i1 false)
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 29
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %84
  br label %284

97:                                               ; preds = %84
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @CONVOLUTIONAL, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %107, label %102

102:                                              ; preds = %97
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @DECONVOLUTIONAL, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %110

107:                                              ; preds = %102, %97
  %108 = load i32*, i32** %9, align 8
  %109 = call i32 @load_convolutional_weights(%struct.TYPE_9__* byval(%struct.TYPE_9__) align 8 %16, i32* %108)
  br label %110

110:                                              ; preds = %107, %102
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @CONNECTED, align 8
  %114 = icmp eq i64 %112, %113
  br i1 %114, label %115, label %119

115:                                              ; preds = %110
  %116 = load i32*, i32** %9, align 8
  %117 = load i32, i32* %14, align 4
  %118 = call i32 @load_connected_weights(%struct.TYPE_9__* byval(%struct.TYPE_9__) align 8 %16, i32* %116, i32 %117)
  br label %119

119:                                              ; preds = %115, %110
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @BATCHNORM, align 8
  %123 = icmp eq i64 %121, %122
  br i1 %123, label %124, label %127

124:                                              ; preds = %119
  %125 = load i32*, i32** %9, align 8
  %126 = call i32 @load_batchnorm_weights(%struct.TYPE_9__* byval(%struct.TYPE_9__) align 8 %16, i32* %125)
  br label %127

127:                                              ; preds = %124, %119
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* @CRNN, align 8
  %131 = icmp eq i64 %129, %130
  br i1 %131, label %132, label %145

132:                                              ; preds = %127
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 28
  %134 = load %struct.TYPE_9__*, %struct.TYPE_9__** %133, align 8
  %135 = load i32*, i32** %9, align 8
  %136 = call i32 @load_convolutional_weights(%struct.TYPE_9__* byval(%struct.TYPE_9__) align 8 %134, i32* %135)
  %137 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 27
  %138 = load %struct.TYPE_9__*, %struct.TYPE_9__** %137, align 8
  %139 = load i32*, i32** %9, align 8
  %140 = call i32 @load_convolutional_weights(%struct.TYPE_9__* byval(%struct.TYPE_9__) align 8 %138, i32* %139)
  %141 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 26
  %142 = load %struct.TYPE_9__*, %struct.TYPE_9__** %141, align 8
  %143 = load i32*, i32** %9, align 8
  %144 = call i32 @load_convolutional_weights(%struct.TYPE_9__* byval(%struct.TYPE_9__) align 8 %142, i32* %143)
  br label %145

145:                                              ; preds = %132, %127
  %146 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* @RNN, align 8
  %149 = icmp eq i64 %147, %148
  br i1 %149, label %150, label %166

150:                                              ; preds = %145
  %151 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 28
  %152 = load %struct.TYPE_9__*, %struct.TYPE_9__** %151, align 8
  %153 = load i32*, i32** %9, align 8
  %154 = load i32, i32* %14, align 4
  %155 = call i32 @load_connected_weights(%struct.TYPE_9__* byval(%struct.TYPE_9__) align 8 %152, i32* %153, i32 %154)
  %156 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 27
  %157 = load %struct.TYPE_9__*, %struct.TYPE_9__** %156, align 8
  %158 = load i32*, i32** %9, align 8
  %159 = load i32, i32* %14, align 4
  %160 = call i32 @load_connected_weights(%struct.TYPE_9__* byval(%struct.TYPE_9__) align 8 %157, i32* %158, i32 %159)
  %161 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 26
  %162 = load %struct.TYPE_9__*, %struct.TYPE_9__** %161, align 8
  %163 = load i32*, i32** %9, align 8
  %164 = load i32, i32* %14, align 4
  %165 = call i32 @load_connected_weights(%struct.TYPE_9__* byval(%struct.TYPE_9__) align 8 %162, i32* %163, i32 %164)
  br label %166

166:                                              ; preds = %150, %145
  %167 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = load i64, i64* @LSTM, align 8
  %170 = icmp eq i64 %168, %169
  br i1 %170, label %171, label %212

171:                                              ; preds = %166
  %172 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 25
  %173 = load %struct.TYPE_9__*, %struct.TYPE_9__** %172, align 8
  %174 = load i32*, i32** %9, align 8
  %175 = load i32, i32* %14, align 4
  %176 = call i32 @load_connected_weights(%struct.TYPE_9__* byval(%struct.TYPE_9__) align 8 %173, i32* %174, i32 %175)
  %177 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 24
  %178 = load %struct.TYPE_9__*, %struct.TYPE_9__** %177, align 8
  %179 = load i32*, i32** %9, align 8
  %180 = load i32, i32* %14, align 4
  %181 = call i32 @load_connected_weights(%struct.TYPE_9__* byval(%struct.TYPE_9__) align 8 %178, i32* %179, i32 %180)
  %182 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 23
  %183 = load %struct.TYPE_9__*, %struct.TYPE_9__** %182, align 8
  %184 = load i32*, i32** %9, align 8
  %185 = load i32, i32* %14, align 4
  %186 = call i32 @load_connected_weights(%struct.TYPE_9__* byval(%struct.TYPE_9__) align 8 %183, i32* %184, i32 %185)
  %187 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 22
  %188 = load %struct.TYPE_9__*, %struct.TYPE_9__** %187, align 8
  %189 = load i32*, i32** %9, align 8
  %190 = load i32, i32* %14, align 4
  %191 = call i32 @load_connected_weights(%struct.TYPE_9__* byval(%struct.TYPE_9__) align 8 %188, i32* %189, i32 %190)
  %192 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 21
  %193 = load %struct.TYPE_9__*, %struct.TYPE_9__** %192, align 8
  %194 = load i32*, i32** %9, align 8
  %195 = load i32, i32* %14, align 4
  %196 = call i32 @load_connected_weights(%struct.TYPE_9__* byval(%struct.TYPE_9__) align 8 %193, i32* %194, i32 %195)
  %197 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 20
  %198 = load %struct.TYPE_9__*, %struct.TYPE_9__** %197, align 8
  %199 = load i32*, i32** %9, align 8
  %200 = load i32, i32* %14, align 4
  %201 = call i32 @load_connected_weights(%struct.TYPE_9__* byval(%struct.TYPE_9__) align 8 %198, i32* %199, i32 %200)
  %202 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 19
  %203 = load %struct.TYPE_9__*, %struct.TYPE_9__** %202, align 8
  %204 = load i32*, i32** %9, align 8
  %205 = load i32, i32* %14, align 4
  %206 = call i32 @load_connected_weights(%struct.TYPE_9__* byval(%struct.TYPE_9__) align 8 %203, i32* %204, i32 %205)
  %207 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 18
  %208 = load %struct.TYPE_9__*, %struct.TYPE_9__** %207, align 8
  %209 = load i32*, i32** %9, align 8
  %210 = load i32, i32* %14, align 4
  %211 = call i32 @load_connected_weights(%struct.TYPE_9__* byval(%struct.TYPE_9__) align 8 %208, i32* %209, i32 %210)
  br label %212

212:                                              ; preds = %171, %166
  %213 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %214 = load i64, i64* %213, align 8
  %215 = load i64, i64* @GRU, align 8
  %216 = icmp eq i64 %214, %215
  br i1 %216, label %217, label %248

217:                                              ; preds = %212
  %218 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 17
  %219 = load %struct.TYPE_9__*, %struct.TYPE_9__** %218, align 8
  %220 = load i32*, i32** %9, align 8
  %221 = load i32, i32* %14, align 4
  %222 = call i32 @load_connected_weights(%struct.TYPE_9__* byval(%struct.TYPE_9__) align 8 %219, i32* %220, i32 %221)
  %223 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 16
  %224 = load %struct.TYPE_9__*, %struct.TYPE_9__** %223, align 8
  %225 = load i32*, i32** %9, align 8
  %226 = load i32, i32* %14, align 4
  %227 = call i32 @load_connected_weights(%struct.TYPE_9__* byval(%struct.TYPE_9__) align 8 %224, i32* %225, i32 %226)
  %228 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 15
  %229 = load %struct.TYPE_9__*, %struct.TYPE_9__** %228, align 8
  %230 = load i32*, i32** %9, align 8
  %231 = load i32, i32* %14, align 4
  %232 = call i32 @load_connected_weights(%struct.TYPE_9__* byval(%struct.TYPE_9__) align 8 %229, i32* %230, i32 %231)
  %233 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 14
  %234 = load %struct.TYPE_9__*, %struct.TYPE_9__** %233, align 8
  %235 = load i32*, i32** %9, align 8
  %236 = load i32, i32* %14, align 4
  %237 = call i32 @load_connected_weights(%struct.TYPE_9__* byval(%struct.TYPE_9__) align 8 %234, i32* %235, i32 %236)
  %238 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 13
  %239 = load %struct.TYPE_9__*, %struct.TYPE_9__** %238, align 8
  %240 = load i32*, i32** %9, align 8
  %241 = load i32, i32* %14, align 4
  %242 = call i32 @load_connected_weights(%struct.TYPE_9__* byval(%struct.TYPE_9__) align 8 %239, i32* %240, i32 %241)
  %243 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 12
  %244 = load %struct.TYPE_9__*, %struct.TYPE_9__** %243, align 8
  %245 = load i32*, i32** %9, align 8
  %246 = load i32, i32* %14, align 4
  %247 = call i32 @load_connected_weights(%struct.TYPE_9__* byval(%struct.TYPE_9__) align 8 %244, i32* %245, i32 %246)
  br label %248

248:                                              ; preds = %217, %212
  %249 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %250 = load i64, i64* %249, align 8
  %251 = load i64, i64* @LOCAL, align 8
  %252 = icmp eq i64 %250, %251
  br i1 %252, label %253, label %283

253:                                              ; preds = %248
  %254 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 1
  %255 = load i32, i32* %254, align 8
  %256 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 2
  %257 = load i32, i32* %256, align 4
  %258 = mul nsw i32 %255, %257
  store i32 %258, i32* %17, align 4
  %259 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 3
  %260 = load i32, i32* %259, align 8
  %261 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 3
  %262 = load i32, i32* %261, align 8
  %263 = mul nsw i32 %260, %262
  %264 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 4
  %265 = load i32, i32* %264, align 4
  %266 = mul nsw i32 %263, %265
  %267 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 5
  %268 = load i32, i32* %267, align 8
  %269 = mul nsw i32 %266, %268
  %270 = load i32, i32* %17, align 4
  %271 = mul nsw i32 %269, %270
  store i32 %271, i32* %18, align 4
  %272 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 6
  %273 = load i32*, i32** %272, align 8
  %274 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 7
  %275 = load i32, i32* %274, align 8
  %276 = load i32*, i32** %9, align 8
  %277 = call i32 @fread(i32* %273, i32 4, i32 %275, i32* %276)
  %278 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 8
  %279 = load i32*, i32** %278, align 8
  %280 = load i32, i32* %18, align 4
  %281 = load i32*, i32** %9, align 8
  %282 = call i32 @fread(i32* %279, i32 4, i32 %280, i32* %281)
  br label %283

283:                                              ; preds = %253, %248
  br label %284

284:                                              ; preds = %283, %96
  %285 = load i32, i32* %15, align 4
  %286 = add nsw i32 %285, 1
  store i32 %286, i32* %15, align 4
  br label %72

287:                                              ; preds = %82
  %288 = load i32, i32* @stderr, align 4
  %289 = call i32 (i32, i8*, ...) @fprintf(i32 %288, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %290 = load i32*, i32** %9, align 8
  %291 = call i32 @fclose(i32* %290)
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @file_error(i8*) #1

declare dso_local i32 @fread(i32*, i32, i32, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @load_convolutional_weights(%struct.TYPE_9__* byval(%struct.TYPE_9__) align 8, i32*) #1

declare dso_local i32 @load_connected_weights(%struct.TYPE_9__* byval(%struct.TYPE_9__) align 8, i32*, i32) #1

declare dso_local i32 @load_batchnorm_weights(%struct.TYPE_9__* byval(%struct.TYPE_9__) align 8, i32*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
