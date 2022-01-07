; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_stb_image.h_load_jpeg_image.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_stb_image.h_load_jpeg_image.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i64, i32, i32, i32* (i32*, i32, i32, i32, i32)*, %struct.TYPE_9__*, i32 (i32*, i32*, i32*, i32*, i32, i32)*, %struct.TYPE_8__*, i32 }
%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.TYPE_8__ = type { i32*, i32, i32, i64, i64, i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i64, i32* (i32*, i32, i32, i32, i32)*, i32, i32 }

@.str = private unnamed_addr constant [13 x i8] c"bad req_comp\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"Internal error\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"outofmem\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"Out of memory\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_11__*, i32*, i32*, i32*, i32)* @load_jpeg_image to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @load_jpeg_image(%struct.TYPE_11__* %0, i32* %1, i32* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca [4 x i32*], align 16
  %20 = alloca [4 x %struct.TYPE_10__], align 16
  %21 = alloca %struct.TYPE_10__*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca %struct.TYPE_10__*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 5
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  store i32 0, i32* %36, align 4
  %37 = load i32, i32* %11, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %5
  %40 = load i32, i32* %11, align 4
  %41 = icmp sgt i32 %40, 4
  br i1 %41, label %42, label %44

42:                                               ; preds = %39, %5
  %43 = call i32* @stbi__errpuc(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  store i32* %43, i32** %6, align 8
  br label %987

44:                                               ; preds = %39
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %46 = call i32 @stbi__decode_jpeg_image(%struct.TYPE_11__* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %44
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %50 = call i32 @stbi__cleanup_jpeg(%struct.TYPE_11__* %49)
  store i32* null, i32** %6, align 8
  br label %987

51:                                               ; preds = %44
  %52 = load i32, i32* %11, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %51
  %55 = load i32, i32* %11, align 4
  br label %65

56:                                               ; preds = %51
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 5
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = icmp sge i32 %61, 3
  %63 = zext i1 %62 to i64
  %64 = select i1 %62, i32 3, i32 1
  br label %65

65:                                               ; preds = %56, %54
  %66 = phi i32 [ %55, %54 ], [ %64, %56 ]
  store i32 %66, i32* %12, align 4
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 5
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = icmp eq i32 %71, 3
  br i1 %72, label %73, label %93

73:                                               ; preds = %65
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = icmp eq i32 %76, 3
  br i1 %77, label %91, label %78

78:                                               ; preds = %73
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %78
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 8
  %86 = load i32, i32* %85, align 8
  %87 = icmp ne i32 %86, 0
  %88 = xor i1 %87, true
  br label %89

89:                                               ; preds = %83, %78
  %90 = phi i1 [ false, %78 ], [ %88, %83 ]
  br label %91

91:                                               ; preds = %89, %73
  %92 = phi i1 [ true, %73 ], [ %90, %89 ]
  br label %93

93:                                               ; preds = %91, %65
  %94 = phi i1 [ false, %65 ], [ %92, %91 ]
  %95 = zext i1 %94 to i32
  store i32 %95, i32* %14, align 4
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 5
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = icmp eq i32 %100, 3
  br i1 %101, label %102, label %109

102:                                              ; preds = %93
  %103 = load i32, i32* %12, align 4
  %104 = icmp slt i32 %103, 3
  br i1 %104, label %105, label %109

105:                                              ; preds = %102
  %106 = load i32, i32* %14, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %109, label %108

108:                                              ; preds = %105
  store i32 1, i32* %13, align 4
  br label %115

109:                                              ; preds = %105, %102, %93
  %110 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 5
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  store i32 %114, i32* %13, align 4
  br label %115

115:                                              ; preds = %109, %108
  store i32 0, i32* %15, align 4
  br label %116

116:                                              ; preds = %278, %115
  %117 = load i32, i32* %15, align 4
  %118 = load i32, i32* %13, align 4
  %119 = icmp slt i32 %117, %118
  br i1 %119, label %120, label %281

120:                                              ; preds = %116
  %121 = load i32, i32* %15, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds [4 x %struct.TYPE_10__], [4 x %struct.TYPE_10__]* %20, i64 0, i64 %122
  store %struct.TYPE_10__* %123, %struct.TYPE_10__** %21, align 8
  %124 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %125 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %124, i32 0, i32 5
  %126 = load %struct.TYPE_9__*, %struct.TYPE_9__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = add nsw i32 %128, 3
  %130 = call i64 @stbi__malloc(i32 %129)
  %131 = inttoptr i64 %130 to i32*
  %132 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %133 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %132, i32 0, i32 7
  %134 = load %struct.TYPE_8__*, %struct.TYPE_8__** %133, align 8
  %135 = load i32, i32* %15, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 0
  store i32* %131, i32** %138, align 8
  %139 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %140 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %139, i32 0, i32 7
  %141 = load %struct.TYPE_8__*, %struct.TYPE_8__** %140, align 8
  %142 = load i32, i32* %15, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i32 0, i32 0
  %146 = load i32*, i32** %145, align 8
  %147 = icmp ne i32* %146, null
  br i1 %147, label %152, label %148

148:                                              ; preds = %120
  %149 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %150 = call i32 @stbi__cleanup_jpeg(%struct.TYPE_11__* %149)
  %151 = call i32* @stbi__errpuc(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  store i32* %151, i32** %6, align 8
  br label %987

152:                                              ; preds = %120
  %153 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %154 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 8
  %156 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %157 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %156, i32 0, i32 7
  %158 = load %struct.TYPE_8__*, %struct.TYPE_8__** %157, align 8
  %159 = load i32, i32* %15, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %158, i64 %160
  %162 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 8
  %164 = sdiv i32 %155, %163
  %165 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %166 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %165, i32 0, i32 0
  store i32 %164, i32* %166, align 8
  %167 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %168 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %167, i32 0, i32 3
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %171 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %170, i32 0, i32 7
  %172 = load %struct.TYPE_8__*, %struct.TYPE_8__** %171, align 8
  %173 = load i32, i32* %15, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %172, i64 %174
  %176 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %175, i32 0, i32 2
  %177 = load i32, i32* %176, align 4
  %178 = sdiv i32 %169, %177
  %179 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %180 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %179, i32 0, i32 1
  store i32 %178, i32* %180, align 4
  %181 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %182 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = ashr i32 %183, 1
  %185 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %186 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %185, i32 0, i32 2
  store i32 %184, i32* %186, align 8
  %187 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %188 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %187, i32 0, i32 5
  %189 = load %struct.TYPE_9__*, %struct.TYPE_9__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %193 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = add nsw i32 %191, %194
  %196 = sub nsw i32 %195, 1
  %197 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %198 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = sdiv i32 %196, %199
  %201 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %202 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %201, i32 0, i32 3
  store i32 %200, i32* %202, align 4
  %203 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %204 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %203, i32 0, i32 4
  store i64 0, i64* %204, align 8
  %205 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %206 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %205, i32 0, i32 7
  %207 = load %struct.TYPE_8__*, %struct.TYPE_8__** %206, align 8
  %208 = load i32, i32* %15, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %207, i64 %209
  %211 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %210, i32 0, i32 5
  %212 = load i32, i32* %211, align 8
  %213 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %214 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %213, i32 0, i32 6
  store i32 %212, i32* %214, align 8
  %215 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %216 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %215, i32 0, i32 7
  store i32 %212, i32* %216, align 4
  %217 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %218 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 8
  %220 = icmp eq i32 %219, 1
  br i1 %220, label %221, label %229

221:                                              ; preds = %152
  %222 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %223 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %222, i32 0, i32 1
  %224 = load i32, i32* %223, align 4
  %225 = icmp eq i32 %224, 1
  br i1 %225, label %226, label %229

226:                                              ; preds = %221
  %227 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %228 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %227, i32 0, i32 5
  store i32* (i32*, i32, i32, i32, i32)* @resample_row_1, i32* (i32*, i32, i32, i32, i32)** %228, align 8
  br label %277

229:                                              ; preds = %221, %152
  %230 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %231 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 8
  %233 = icmp eq i32 %232, 1
  br i1 %233, label %234, label %242

234:                                              ; preds = %229
  %235 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %236 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %235, i32 0, i32 1
  %237 = load i32, i32* %236, align 4
  %238 = icmp eq i32 %237, 2
  br i1 %238, label %239, label %242

239:                                              ; preds = %234
  %240 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %241 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %240, i32 0, i32 5
  store i32* (i32*, i32, i32, i32, i32)* @stbi__resample_row_v_2, i32* (i32*, i32, i32, i32, i32)** %241, align 8
  br label %276

242:                                              ; preds = %234, %229
  %243 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %244 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 8
  %246 = icmp eq i32 %245, 2
  br i1 %246, label %247, label %255

247:                                              ; preds = %242
  %248 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %249 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %248, i32 0, i32 1
  %250 = load i32, i32* %249, align 4
  %251 = icmp eq i32 %250, 1
  br i1 %251, label %252, label %255

252:                                              ; preds = %247
  %253 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %254 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %253, i32 0, i32 5
  store i32* (i32*, i32, i32, i32, i32)* @stbi__resample_row_h_2, i32* (i32*, i32, i32, i32, i32)** %254, align 8
  br label %275

255:                                              ; preds = %247, %242
  %256 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %257 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %256, i32 0, i32 0
  %258 = load i32, i32* %257, align 8
  %259 = icmp eq i32 %258, 2
  br i1 %259, label %260, label %271

260:                                              ; preds = %255
  %261 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %262 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %261, i32 0, i32 1
  %263 = load i32, i32* %262, align 4
  %264 = icmp eq i32 %263, 2
  br i1 %264, label %265, label %271

265:                                              ; preds = %260
  %266 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %267 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %266, i32 0, i32 4
  %268 = load i32* (i32*, i32, i32, i32, i32)*, i32* (i32*, i32, i32, i32, i32)** %267, align 8
  %269 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %270 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %269, i32 0, i32 5
  store i32* (i32*, i32, i32, i32, i32)* %268, i32* (i32*, i32, i32, i32, i32)** %270, align 8
  br label %274

271:                                              ; preds = %260, %255
  %272 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %273 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %272, i32 0, i32 5
  store i32* (i32*, i32, i32, i32, i32)* @stbi__resample_row_generic, i32* (i32*, i32, i32, i32, i32)** %273, align 8
  br label %274

274:                                              ; preds = %271, %265
  br label %275

275:                                              ; preds = %274, %252
  br label %276

276:                                              ; preds = %275, %239
  br label %277

277:                                              ; preds = %276, %226
  br label %278

278:                                              ; preds = %277
  %279 = load i32, i32* %15, align 4
  %280 = add nsw i32 %279, 1
  store i32 %280, i32* %15, align 4
  br label %116

281:                                              ; preds = %116
  %282 = load i32, i32* %12, align 4
  %283 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %284 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %283, i32 0, i32 5
  %285 = load %struct.TYPE_9__*, %struct.TYPE_9__** %284, align 8
  %286 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %285, i32 0, i32 1
  %287 = load i32, i32* %286, align 4
  %288 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %289 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %288, i32 0, i32 5
  %290 = load %struct.TYPE_9__*, %struct.TYPE_9__** %289, align 8
  %291 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %290, i32 0, i32 2
  %292 = load i32, i32* %291, align 4
  %293 = call i64 @stbi__malloc_mad3(i32 %282, i32 %287, i32 %292, i32 1)
  %294 = inttoptr i64 %293 to i32*
  store i32* %294, i32** %18, align 8
  %295 = load i32*, i32** %18, align 8
  %296 = icmp ne i32* %295, null
  br i1 %296, label %301, label %297

297:                                              ; preds = %281
  %298 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %299 = call i32 @stbi__cleanup_jpeg(%struct.TYPE_11__* %298)
  %300 = call i32* @stbi__errpuc(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  store i32* %300, i32** %6, align 8
  br label %987

301:                                              ; preds = %281
  store i32 0, i32* %17, align 4
  br label %302

302:                                              ; preds = %955, %301
  %303 = load i32, i32* %17, align 4
  %304 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %305 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %304, i32 0, i32 5
  %306 = load %struct.TYPE_9__*, %struct.TYPE_9__** %305, align 8
  %307 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %306, i32 0, i32 2
  %308 = load i32, i32* %307, align 4
  %309 = icmp ult i32 %303, %308
  br i1 %309, label %310, label %958

310:                                              ; preds = %302
  %311 = load i32*, i32** %18, align 8
  %312 = load i32, i32* %12, align 4
  %313 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %314 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %313, i32 0, i32 5
  %315 = load %struct.TYPE_9__*, %struct.TYPE_9__** %314, align 8
  %316 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %315, i32 0, i32 1
  %317 = load i32, i32* %316, align 4
  %318 = mul nsw i32 %312, %317
  %319 = load i32, i32* %17, align 4
  %320 = mul i32 %318, %319
  %321 = zext i32 %320 to i64
  %322 = getelementptr inbounds i32, i32* %311, i64 %321
  store i32* %322, i32** %22, align 8
  store i32 0, i32* %15, align 4
  br label %323

323:                                              ; preds = %431, %310
  %324 = load i32, i32* %15, align 4
  %325 = load i32, i32* %13, align 4
  %326 = icmp slt i32 %324, %325
  br i1 %326, label %327, label %434

327:                                              ; preds = %323
  %328 = load i32, i32* %15, align 4
  %329 = sext i32 %328 to i64
  %330 = getelementptr inbounds [4 x %struct.TYPE_10__], [4 x %struct.TYPE_10__]* %20, i64 0, i64 %329
  store %struct.TYPE_10__* %330, %struct.TYPE_10__** %23, align 8
  %331 = load %struct.TYPE_10__*, %struct.TYPE_10__** %23, align 8
  %332 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %331, i32 0, i32 2
  %333 = load i32, i32* %332, align 8
  %334 = load %struct.TYPE_10__*, %struct.TYPE_10__** %23, align 8
  %335 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %334, i32 0, i32 1
  %336 = load i32, i32* %335, align 4
  %337 = ashr i32 %336, 1
  %338 = icmp sge i32 %333, %337
  %339 = zext i1 %338 to i32
  store i32 %339, i32* %24, align 4
  %340 = load %struct.TYPE_10__*, %struct.TYPE_10__** %23, align 8
  %341 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %340, i32 0, i32 5
  %342 = load i32* (i32*, i32, i32, i32, i32)*, i32* (i32*, i32, i32, i32, i32)** %341, align 8
  %343 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %344 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %343, i32 0, i32 7
  %345 = load %struct.TYPE_8__*, %struct.TYPE_8__** %344, align 8
  %346 = load i32, i32* %15, align 4
  %347 = sext i32 %346 to i64
  %348 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %345, i64 %347
  %349 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %348, i32 0, i32 0
  %350 = load i32*, i32** %349, align 8
  %351 = load i32, i32* %24, align 4
  %352 = icmp ne i32 %351, 0
  br i1 %352, label %353, label %357

353:                                              ; preds = %327
  %354 = load %struct.TYPE_10__*, %struct.TYPE_10__** %23, align 8
  %355 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %354, i32 0, i32 6
  %356 = load i32, i32* %355, align 8
  br label %361

357:                                              ; preds = %327
  %358 = load %struct.TYPE_10__*, %struct.TYPE_10__** %23, align 8
  %359 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %358, i32 0, i32 7
  %360 = load i32, i32* %359, align 4
  br label %361

361:                                              ; preds = %357, %353
  %362 = phi i32 [ %356, %353 ], [ %360, %357 ]
  %363 = load i32, i32* %24, align 4
  %364 = icmp ne i32 %363, 0
  br i1 %364, label %365, label %369

365:                                              ; preds = %361
  %366 = load %struct.TYPE_10__*, %struct.TYPE_10__** %23, align 8
  %367 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %366, i32 0, i32 7
  %368 = load i32, i32* %367, align 4
  br label %373

369:                                              ; preds = %361
  %370 = load %struct.TYPE_10__*, %struct.TYPE_10__** %23, align 8
  %371 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %370, i32 0, i32 6
  %372 = load i32, i32* %371, align 8
  br label %373

373:                                              ; preds = %369, %365
  %374 = phi i32 [ %368, %365 ], [ %372, %369 ]
  %375 = load %struct.TYPE_10__*, %struct.TYPE_10__** %23, align 8
  %376 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %375, i32 0, i32 3
  %377 = load i32, i32* %376, align 4
  %378 = load %struct.TYPE_10__*, %struct.TYPE_10__** %23, align 8
  %379 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %378, i32 0, i32 0
  %380 = load i32, i32* %379, align 8
  %381 = call i32* %342(i32* %350, i32 %362, i32 %374, i32 %377, i32 %380)
  %382 = load i32, i32* %15, align 4
  %383 = sext i32 %382 to i64
  %384 = getelementptr inbounds [4 x i32*], [4 x i32*]* %19, i64 0, i64 %383
  store i32* %381, i32** %384, align 8
  %385 = load %struct.TYPE_10__*, %struct.TYPE_10__** %23, align 8
  %386 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %385, i32 0, i32 2
  %387 = load i32, i32* %386, align 8
  %388 = add nsw i32 %387, 1
  store i32 %388, i32* %386, align 8
  %389 = load %struct.TYPE_10__*, %struct.TYPE_10__** %23, align 8
  %390 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %389, i32 0, i32 1
  %391 = load i32, i32* %390, align 4
  %392 = icmp sge i32 %388, %391
  br i1 %392, label %393, label %430

393:                                              ; preds = %373
  %394 = load %struct.TYPE_10__*, %struct.TYPE_10__** %23, align 8
  %395 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %394, i32 0, i32 2
  store i32 0, i32* %395, align 8
  %396 = load %struct.TYPE_10__*, %struct.TYPE_10__** %23, align 8
  %397 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %396, i32 0, i32 6
  %398 = load i32, i32* %397, align 8
  %399 = load %struct.TYPE_10__*, %struct.TYPE_10__** %23, align 8
  %400 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %399, i32 0, i32 7
  store i32 %398, i32* %400, align 4
  %401 = load %struct.TYPE_10__*, %struct.TYPE_10__** %23, align 8
  %402 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %401, i32 0, i32 4
  %403 = load i64, i64* %402, align 8
  %404 = add nsw i64 %403, 1
  store i64 %404, i64* %402, align 8
  %405 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %406 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %405, i32 0, i32 7
  %407 = load %struct.TYPE_8__*, %struct.TYPE_8__** %406, align 8
  %408 = load i32, i32* %15, align 4
  %409 = sext i32 %408 to i64
  %410 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %407, i64 %409
  %411 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %410, i32 0, i32 3
  %412 = load i64, i64* %411, align 8
  %413 = icmp slt i64 %404, %412
  br i1 %413, label %414, label %429

414:                                              ; preds = %393
  %415 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %416 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %415, i32 0, i32 7
  %417 = load %struct.TYPE_8__*, %struct.TYPE_8__** %416, align 8
  %418 = load i32, i32* %15, align 4
  %419 = sext i32 %418 to i64
  %420 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %417, i64 %419
  %421 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %420, i32 0, i32 4
  %422 = load i64, i64* %421, align 8
  %423 = load %struct.TYPE_10__*, %struct.TYPE_10__** %23, align 8
  %424 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %423, i32 0, i32 6
  %425 = load i32, i32* %424, align 8
  %426 = sext i32 %425 to i64
  %427 = add nsw i64 %426, %422
  %428 = trunc i64 %427 to i32
  store i32 %428, i32* %424, align 8
  br label %429

429:                                              ; preds = %414, %393
  br label %430

430:                                              ; preds = %429, %373
  br label %431

431:                                              ; preds = %430
  %432 = load i32, i32* %15, align 4
  %433 = add nsw i32 %432, 1
  store i32 %433, i32* %15, align 4
  br label %323

434:                                              ; preds = %323
  %435 = load i32, i32* %12, align 4
  %436 = icmp sge i32 %435, 3
  br i1 %436, label %437, label %699

437:                                              ; preds = %434
  %438 = getelementptr inbounds [4 x i32*], [4 x i32*]* %19, i64 0, i64 0
  %439 = load i32*, i32** %438, align 16
  store i32* %439, i32** %25, align 8
  %440 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %441 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %440, i32 0, i32 5
  %442 = load %struct.TYPE_9__*, %struct.TYPE_9__** %441, align 8
  %443 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %442, i32 0, i32 0
  %444 = load i32, i32* %443, align 4
  %445 = icmp eq i32 %444, 3
  br i1 %445, label %446, label %510

446:                                              ; preds = %437
  %447 = load i32, i32* %14, align 4
  %448 = icmp ne i32 %447, 0
  br i1 %448, label %449, label %492

449:                                              ; preds = %446
  store i32 0, i32* %16, align 4
  br label %450

450:                                              ; preds = %488, %449
  %451 = load i32, i32* %16, align 4
  %452 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %453 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %452, i32 0, i32 5
  %454 = load %struct.TYPE_9__*, %struct.TYPE_9__** %453, align 8
  %455 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %454, i32 0, i32 1
  %456 = load i32, i32* %455, align 4
  %457 = icmp ult i32 %451, %456
  br i1 %457, label %458, label %491

458:                                              ; preds = %450
  %459 = load i32*, i32** %25, align 8
  %460 = load i32, i32* %16, align 4
  %461 = zext i32 %460 to i64
  %462 = getelementptr inbounds i32, i32* %459, i64 %461
  %463 = load i32, i32* %462, align 4
  %464 = load i32*, i32** %22, align 8
  %465 = getelementptr inbounds i32, i32* %464, i64 0
  store i32 %463, i32* %465, align 4
  %466 = getelementptr inbounds [4 x i32*], [4 x i32*]* %19, i64 0, i64 1
  %467 = load i32*, i32** %466, align 8
  %468 = load i32, i32* %16, align 4
  %469 = zext i32 %468 to i64
  %470 = getelementptr inbounds i32, i32* %467, i64 %469
  %471 = load i32, i32* %470, align 4
  %472 = load i32*, i32** %22, align 8
  %473 = getelementptr inbounds i32, i32* %472, i64 1
  store i32 %471, i32* %473, align 4
  %474 = getelementptr inbounds [4 x i32*], [4 x i32*]* %19, i64 0, i64 2
  %475 = load i32*, i32** %474, align 16
  %476 = load i32, i32* %16, align 4
  %477 = zext i32 %476 to i64
  %478 = getelementptr inbounds i32, i32* %475, i64 %477
  %479 = load i32, i32* %478, align 4
  %480 = load i32*, i32** %22, align 8
  %481 = getelementptr inbounds i32, i32* %480, i64 2
  store i32 %479, i32* %481, align 4
  %482 = load i32*, i32** %22, align 8
  %483 = getelementptr inbounds i32, i32* %482, i64 3
  store i32 255, i32* %483, align 4
  %484 = load i32, i32* %12, align 4
  %485 = load i32*, i32** %22, align 8
  %486 = sext i32 %484 to i64
  %487 = getelementptr inbounds i32, i32* %485, i64 %486
  store i32* %487, i32** %22, align 8
  br label %488

488:                                              ; preds = %458
  %489 = load i32, i32* %16, align 4
  %490 = add i32 %489, 1
  store i32 %490, i32* %16, align 4
  br label %450

491:                                              ; preds = %450
  br label %509

492:                                              ; preds = %446
  %493 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %494 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %493, i32 0, i32 6
  %495 = load i32 (i32*, i32*, i32*, i32*, i32, i32)*, i32 (i32*, i32*, i32*, i32*, i32, i32)** %494, align 8
  %496 = load i32*, i32** %22, align 8
  %497 = load i32*, i32** %25, align 8
  %498 = getelementptr inbounds [4 x i32*], [4 x i32*]* %19, i64 0, i64 1
  %499 = load i32*, i32** %498, align 8
  %500 = getelementptr inbounds [4 x i32*], [4 x i32*]* %19, i64 0, i64 2
  %501 = load i32*, i32** %500, align 16
  %502 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %503 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %502, i32 0, i32 5
  %504 = load %struct.TYPE_9__*, %struct.TYPE_9__** %503, align 8
  %505 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %504, i32 0, i32 1
  %506 = load i32, i32* %505, align 4
  %507 = load i32, i32* %12, align 4
  %508 = call i32 %495(i32* %496, i32* %497, i32* %499, i32* %501, i32 %506, i32 %507)
  br label %509

509:                                              ; preds = %492, %491
  br label %698

510:                                              ; preds = %437
  %511 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %512 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %511, i32 0, i32 5
  %513 = load %struct.TYPE_9__*, %struct.TYPE_9__** %512, align 8
  %514 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %513, i32 0, i32 0
  %515 = load i32, i32* %514, align 4
  %516 = icmp eq i32 %515, 4
  br i1 %516, label %517, label %666

517:                                              ; preds = %510
  %518 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %519 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %518, i32 0, i32 1
  %520 = load i64, i64* %519, align 8
  %521 = icmp eq i64 %520, 0
  br i1 %521, label %522, label %578

522:                                              ; preds = %517
  store i32 0, i32* %16, align 4
  br label %523

523:                                              ; preds = %574, %522
  %524 = load i32, i32* %16, align 4
  %525 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %526 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %525, i32 0, i32 5
  %527 = load %struct.TYPE_9__*, %struct.TYPE_9__** %526, align 8
  %528 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %527, i32 0, i32 1
  %529 = load i32, i32* %528, align 4
  %530 = icmp ult i32 %524, %529
  br i1 %530, label %531, label %577

531:                                              ; preds = %523
  %532 = getelementptr inbounds [4 x i32*], [4 x i32*]* %19, i64 0, i64 3
  %533 = load i32*, i32** %532, align 8
  %534 = load i32, i32* %16, align 4
  %535 = zext i32 %534 to i64
  %536 = getelementptr inbounds i32, i32* %533, i64 %535
  %537 = load i32, i32* %536, align 4
  store i32 %537, i32* %26, align 4
  %538 = getelementptr inbounds [4 x i32*], [4 x i32*]* %19, i64 0, i64 0
  %539 = load i32*, i32** %538, align 16
  %540 = load i32, i32* %16, align 4
  %541 = zext i32 %540 to i64
  %542 = getelementptr inbounds i32, i32* %539, i64 %541
  %543 = load i32, i32* %542, align 4
  %544 = load i32, i32* %26, align 4
  %545 = call i32 @stbi__blinn_8x8(i32 %543, i32 %544)
  %546 = load i32*, i32** %22, align 8
  %547 = getelementptr inbounds i32, i32* %546, i64 0
  store i32 %545, i32* %547, align 4
  %548 = getelementptr inbounds [4 x i32*], [4 x i32*]* %19, i64 0, i64 1
  %549 = load i32*, i32** %548, align 8
  %550 = load i32, i32* %16, align 4
  %551 = zext i32 %550 to i64
  %552 = getelementptr inbounds i32, i32* %549, i64 %551
  %553 = load i32, i32* %552, align 4
  %554 = load i32, i32* %26, align 4
  %555 = call i32 @stbi__blinn_8x8(i32 %553, i32 %554)
  %556 = load i32*, i32** %22, align 8
  %557 = getelementptr inbounds i32, i32* %556, i64 1
  store i32 %555, i32* %557, align 4
  %558 = getelementptr inbounds [4 x i32*], [4 x i32*]* %19, i64 0, i64 2
  %559 = load i32*, i32** %558, align 16
  %560 = load i32, i32* %16, align 4
  %561 = zext i32 %560 to i64
  %562 = getelementptr inbounds i32, i32* %559, i64 %561
  %563 = load i32, i32* %562, align 4
  %564 = load i32, i32* %26, align 4
  %565 = call i32 @stbi__blinn_8x8(i32 %563, i32 %564)
  %566 = load i32*, i32** %22, align 8
  %567 = getelementptr inbounds i32, i32* %566, i64 2
  store i32 %565, i32* %567, align 4
  %568 = load i32*, i32** %22, align 8
  %569 = getelementptr inbounds i32, i32* %568, i64 3
  store i32 255, i32* %569, align 4
  %570 = load i32, i32* %12, align 4
  %571 = load i32*, i32** %22, align 8
  %572 = sext i32 %570 to i64
  %573 = getelementptr inbounds i32, i32* %571, i64 %572
  store i32* %573, i32** %22, align 8
  br label %574

574:                                              ; preds = %531
  %575 = load i32, i32* %16, align 4
  %576 = add i32 %575, 1
  store i32 %576, i32* %16, align 4
  br label %523

577:                                              ; preds = %523
  br label %665

578:                                              ; preds = %517
  %579 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %580 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %579, i32 0, i32 1
  %581 = load i64, i64* %580, align 8
  %582 = icmp eq i64 %581, 2
  br i1 %582, label %583, label %647

583:                                              ; preds = %578
  %584 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %585 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %584, i32 0, i32 6
  %586 = load i32 (i32*, i32*, i32*, i32*, i32, i32)*, i32 (i32*, i32*, i32*, i32*, i32, i32)** %585, align 8
  %587 = load i32*, i32** %22, align 8
  %588 = load i32*, i32** %25, align 8
  %589 = getelementptr inbounds [4 x i32*], [4 x i32*]* %19, i64 0, i64 1
  %590 = load i32*, i32** %589, align 8
  %591 = getelementptr inbounds [4 x i32*], [4 x i32*]* %19, i64 0, i64 2
  %592 = load i32*, i32** %591, align 16
  %593 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %594 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %593, i32 0, i32 5
  %595 = load %struct.TYPE_9__*, %struct.TYPE_9__** %594, align 8
  %596 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %595, i32 0, i32 1
  %597 = load i32, i32* %596, align 4
  %598 = load i32, i32* %12, align 4
  %599 = call i32 %586(i32* %587, i32* %588, i32* %590, i32* %592, i32 %597, i32 %598)
  store i32 0, i32* %16, align 4
  br label %600

600:                                              ; preds = %643, %583
  %601 = load i32, i32* %16, align 4
  %602 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %603 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %602, i32 0, i32 5
  %604 = load %struct.TYPE_9__*, %struct.TYPE_9__** %603, align 8
  %605 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %604, i32 0, i32 1
  %606 = load i32, i32* %605, align 4
  %607 = icmp ult i32 %601, %606
  br i1 %607, label %608, label %646

608:                                              ; preds = %600
  %609 = getelementptr inbounds [4 x i32*], [4 x i32*]* %19, i64 0, i64 3
  %610 = load i32*, i32** %609, align 8
  %611 = load i32, i32* %16, align 4
  %612 = zext i32 %611 to i64
  %613 = getelementptr inbounds i32, i32* %610, i64 %612
  %614 = load i32, i32* %613, align 4
  store i32 %614, i32* %27, align 4
  %615 = load i32*, i32** %22, align 8
  %616 = getelementptr inbounds i32, i32* %615, i64 0
  %617 = load i32, i32* %616, align 4
  %618 = sub nsw i32 255, %617
  %619 = load i32, i32* %27, align 4
  %620 = call i32 @stbi__blinn_8x8(i32 %618, i32 %619)
  %621 = load i32*, i32** %22, align 8
  %622 = getelementptr inbounds i32, i32* %621, i64 0
  store i32 %620, i32* %622, align 4
  %623 = load i32*, i32** %22, align 8
  %624 = getelementptr inbounds i32, i32* %623, i64 1
  %625 = load i32, i32* %624, align 4
  %626 = sub nsw i32 255, %625
  %627 = load i32, i32* %27, align 4
  %628 = call i32 @stbi__blinn_8x8(i32 %626, i32 %627)
  %629 = load i32*, i32** %22, align 8
  %630 = getelementptr inbounds i32, i32* %629, i64 1
  store i32 %628, i32* %630, align 4
  %631 = load i32*, i32** %22, align 8
  %632 = getelementptr inbounds i32, i32* %631, i64 2
  %633 = load i32, i32* %632, align 4
  %634 = sub nsw i32 255, %633
  %635 = load i32, i32* %27, align 4
  %636 = call i32 @stbi__blinn_8x8(i32 %634, i32 %635)
  %637 = load i32*, i32** %22, align 8
  %638 = getelementptr inbounds i32, i32* %637, i64 2
  store i32 %636, i32* %638, align 4
  %639 = load i32, i32* %12, align 4
  %640 = load i32*, i32** %22, align 8
  %641 = sext i32 %639 to i64
  %642 = getelementptr inbounds i32, i32* %640, i64 %641
  store i32* %642, i32** %22, align 8
  br label %643

643:                                              ; preds = %608
  %644 = load i32, i32* %16, align 4
  %645 = add i32 %644, 1
  store i32 %645, i32* %16, align 4
  br label %600

646:                                              ; preds = %600
  br label %664

647:                                              ; preds = %578
  %648 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %649 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %648, i32 0, i32 6
  %650 = load i32 (i32*, i32*, i32*, i32*, i32, i32)*, i32 (i32*, i32*, i32*, i32*, i32, i32)** %649, align 8
  %651 = load i32*, i32** %22, align 8
  %652 = load i32*, i32** %25, align 8
  %653 = getelementptr inbounds [4 x i32*], [4 x i32*]* %19, i64 0, i64 1
  %654 = load i32*, i32** %653, align 8
  %655 = getelementptr inbounds [4 x i32*], [4 x i32*]* %19, i64 0, i64 2
  %656 = load i32*, i32** %655, align 16
  %657 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %658 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %657, i32 0, i32 5
  %659 = load %struct.TYPE_9__*, %struct.TYPE_9__** %658, align 8
  %660 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %659, i32 0, i32 1
  %661 = load i32, i32* %660, align 4
  %662 = load i32, i32* %12, align 4
  %663 = call i32 %650(i32* %651, i32* %652, i32* %654, i32* %656, i32 %661, i32 %662)
  br label %664

664:                                              ; preds = %647, %646
  br label %665

665:                                              ; preds = %664, %577
  br label %697

666:                                              ; preds = %510
  store i32 0, i32* %16, align 4
  br label %667

667:                                              ; preds = %693, %666
  %668 = load i32, i32* %16, align 4
  %669 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %670 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %669, i32 0, i32 5
  %671 = load %struct.TYPE_9__*, %struct.TYPE_9__** %670, align 8
  %672 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %671, i32 0, i32 1
  %673 = load i32, i32* %672, align 4
  %674 = icmp ult i32 %668, %673
  br i1 %674, label %675, label %696

675:                                              ; preds = %667
  %676 = load i32*, i32** %25, align 8
  %677 = load i32, i32* %16, align 4
  %678 = zext i32 %677 to i64
  %679 = getelementptr inbounds i32, i32* %676, i64 %678
  %680 = load i32, i32* %679, align 4
  %681 = load i32*, i32** %22, align 8
  %682 = getelementptr inbounds i32, i32* %681, i64 2
  store i32 %680, i32* %682, align 4
  %683 = load i32*, i32** %22, align 8
  %684 = getelementptr inbounds i32, i32* %683, i64 1
  store i32 %680, i32* %684, align 4
  %685 = load i32*, i32** %22, align 8
  %686 = getelementptr inbounds i32, i32* %685, i64 0
  store i32 %680, i32* %686, align 4
  %687 = load i32*, i32** %22, align 8
  %688 = getelementptr inbounds i32, i32* %687, i64 3
  store i32 255, i32* %688, align 4
  %689 = load i32, i32* %12, align 4
  %690 = load i32*, i32** %22, align 8
  %691 = sext i32 %689 to i64
  %692 = getelementptr inbounds i32, i32* %690, i64 %691
  store i32* %692, i32** %22, align 8
  br label %693

693:                                              ; preds = %675
  %694 = load i32, i32* %16, align 4
  %695 = add i32 %694, 1
  store i32 %695, i32* %16, align 4
  br label %667

696:                                              ; preds = %667
  br label %697

697:                                              ; preds = %696, %665
  br label %698

698:                                              ; preds = %697, %509
  br label %954

699:                                              ; preds = %434
  %700 = load i32, i32* %14, align 4
  %701 = icmp ne i32 %700, 0
  br i1 %701, label %702, label %782

702:                                              ; preds = %699
  %703 = load i32, i32* %12, align 4
  %704 = icmp eq i32 %703, 1
  br i1 %704, label %705, label %741

705:                                              ; preds = %702
  store i32 0, i32* %16, align 4
  br label %706

706:                                              ; preds = %737, %705
  %707 = load i32, i32* %16, align 4
  %708 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %709 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %708, i32 0, i32 5
  %710 = load %struct.TYPE_9__*, %struct.TYPE_9__** %709, align 8
  %711 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %710, i32 0, i32 1
  %712 = load i32, i32* %711, align 4
  %713 = icmp ult i32 %707, %712
  br i1 %713, label %714, label %740

714:                                              ; preds = %706
  %715 = getelementptr inbounds [4 x i32*], [4 x i32*]* %19, i64 0, i64 0
  %716 = load i32*, i32** %715, align 16
  %717 = load i32, i32* %16, align 4
  %718 = zext i32 %717 to i64
  %719 = getelementptr inbounds i32, i32* %716, i64 %718
  %720 = load i32, i32* %719, align 4
  %721 = getelementptr inbounds [4 x i32*], [4 x i32*]* %19, i64 0, i64 1
  %722 = load i32*, i32** %721, align 8
  %723 = load i32, i32* %16, align 4
  %724 = zext i32 %723 to i64
  %725 = getelementptr inbounds i32, i32* %722, i64 %724
  %726 = load i32, i32* %725, align 4
  %727 = getelementptr inbounds [4 x i32*], [4 x i32*]* %19, i64 0, i64 2
  %728 = load i32*, i32** %727, align 16
  %729 = load i32, i32* %16, align 4
  %730 = zext i32 %729 to i64
  %731 = getelementptr inbounds i32, i32* %728, i64 %730
  %732 = load i32, i32* %731, align 4
  %733 = call i8* @stbi__compute_y(i32 %720, i32 %726, i32 %732)
  %734 = ptrtoint i8* %733 to i32
  %735 = load i32*, i32** %22, align 8
  %736 = getelementptr inbounds i32, i32* %735, i32 1
  store i32* %736, i32** %22, align 8
  store i32 %734, i32* %735, align 4
  br label %737

737:                                              ; preds = %714
  %738 = load i32, i32* %16, align 4
  %739 = add i32 %738, 1
  store i32 %739, i32* %16, align 4
  br label %706

740:                                              ; preds = %706
  br label %781

741:                                              ; preds = %702
  store i32 0, i32* %16, align 4
  br label %742

742:                                              ; preds = %775, %741
  %743 = load i32, i32* %16, align 4
  %744 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %745 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %744, i32 0, i32 5
  %746 = load %struct.TYPE_9__*, %struct.TYPE_9__** %745, align 8
  %747 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %746, i32 0, i32 1
  %748 = load i32, i32* %747, align 4
  %749 = icmp ult i32 %743, %748
  br i1 %749, label %750, label %780

750:                                              ; preds = %742
  %751 = getelementptr inbounds [4 x i32*], [4 x i32*]* %19, i64 0, i64 0
  %752 = load i32*, i32** %751, align 16
  %753 = load i32, i32* %16, align 4
  %754 = zext i32 %753 to i64
  %755 = getelementptr inbounds i32, i32* %752, i64 %754
  %756 = load i32, i32* %755, align 4
  %757 = getelementptr inbounds [4 x i32*], [4 x i32*]* %19, i64 0, i64 1
  %758 = load i32*, i32** %757, align 8
  %759 = load i32, i32* %16, align 4
  %760 = zext i32 %759 to i64
  %761 = getelementptr inbounds i32, i32* %758, i64 %760
  %762 = load i32, i32* %761, align 4
  %763 = getelementptr inbounds [4 x i32*], [4 x i32*]* %19, i64 0, i64 2
  %764 = load i32*, i32** %763, align 16
  %765 = load i32, i32* %16, align 4
  %766 = zext i32 %765 to i64
  %767 = getelementptr inbounds i32, i32* %764, i64 %766
  %768 = load i32, i32* %767, align 4
  %769 = call i8* @stbi__compute_y(i32 %756, i32 %762, i32 %768)
  %770 = ptrtoint i8* %769 to i32
  %771 = load i32*, i32** %22, align 8
  %772 = getelementptr inbounds i32, i32* %771, i64 0
  store i32 %770, i32* %772, align 4
  %773 = load i32*, i32** %22, align 8
  %774 = getelementptr inbounds i32, i32* %773, i64 1
  store i32 255, i32* %774, align 4
  br label %775

775:                                              ; preds = %750
  %776 = load i32, i32* %16, align 4
  %777 = add i32 %776, 1
  store i32 %777, i32* %16, align 4
  %778 = load i32*, i32** %22, align 8
  %779 = getelementptr inbounds i32, i32* %778, i64 2
  store i32* %779, i32** %22, align 8
  br label %742

780:                                              ; preds = %742
  br label %781

781:                                              ; preds = %780, %740
  br label %953

782:                                              ; preds = %699
  %783 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %784 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %783, i32 0, i32 5
  %785 = load %struct.TYPE_9__*, %struct.TYPE_9__** %784, align 8
  %786 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %785, i32 0, i32 0
  %787 = load i32, i32* %786, align 4
  %788 = icmp eq i32 %787, 4
  br i1 %788, label %789, label %851

789:                                              ; preds = %782
  %790 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %791 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %790, i32 0, i32 1
  %792 = load i64, i64* %791, align 8
  %793 = icmp eq i64 %792, 0
  br i1 %793, label %794, label %851

794:                                              ; preds = %789
  store i32 0, i32* %16, align 4
  br label %795

795:                                              ; preds = %847, %794
  %796 = load i32, i32* %16, align 4
  %797 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %798 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %797, i32 0, i32 5
  %799 = load %struct.TYPE_9__*, %struct.TYPE_9__** %798, align 8
  %800 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %799, i32 0, i32 1
  %801 = load i32, i32* %800, align 4
  %802 = icmp ult i32 %796, %801
  br i1 %802, label %803, label %850

803:                                              ; preds = %795
  %804 = getelementptr inbounds [4 x i32*], [4 x i32*]* %19, i64 0, i64 3
  %805 = load i32*, i32** %804, align 8
  %806 = load i32, i32* %16, align 4
  %807 = zext i32 %806 to i64
  %808 = getelementptr inbounds i32, i32* %805, i64 %807
  %809 = load i32, i32* %808, align 4
  store i32 %809, i32* %28, align 4
  %810 = getelementptr inbounds [4 x i32*], [4 x i32*]* %19, i64 0, i64 0
  %811 = load i32*, i32** %810, align 16
  %812 = load i32, i32* %16, align 4
  %813 = zext i32 %812 to i64
  %814 = getelementptr inbounds i32, i32* %811, i64 %813
  %815 = load i32, i32* %814, align 4
  %816 = load i32, i32* %28, align 4
  %817 = call i32 @stbi__blinn_8x8(i32 %815, i32 %816)
  store i32 %817, i32* %29, align 4
  %818 = getelementptr inbounds [4 x i32*], [4 x i32*]* %19, i64 0, i64 1
  %819 = load i32*, i32** %818, align 8
  %820 = load i32, i32* %16, align 4
  %821 = zext i32 %820 to i64
  %822 = getelementptr inbounds i32, i32* %819, i64 %821
  %823 = load i32, i32* %822, align 4
  %824 = load i32, i32* %28, align 4
  %825 = call i32 @stbi__blinn_8x8(i32 %823, i32 %824)
  store i32 %825, i32* %30, align 4
  %826 = getelementptr inbounds [4 x i32*], [4 x i32*]* %19, i64 0, i64 2
  %827 = load i32*, i32** %826, align 16
  %828 = load i32, i32* %16, align 4
  %829 = zext i32 %828 to i64
  %830 = getelementptr inbounds i32, i32* %827, i64 %829
  %831 = load i32, i32* %830, align 4
  %832 = load i32, i32* %28, align 4
  %833 = call i32 @stbi__blinn_8x8(i32 %831, i32 %832)
  store i32 %833, i32* %31, align 4
  %834 = load i32, i32* %29, align 4
  %835 = load i32, i32* %30, align 4
  %836 = load i32, i32* %31, align 4
  %837 = call i8* @stbi__compute_y(i32 %834, i32 %835, i32 %836)
  %838 = ptrtoint i8* %837 to i32
  %839 = load i32*, i32** %22, align 8
  %840 = getelementptr inbounds i32, i32* %839, i64 0
  store i32 %838, i32* %840, align 4
  %841 = load i32*, i32** %22, align 8
  %842 = getelementptr inbounds i32, i32* %841, i64 1
  store i32 255, i32* %842, align 4
  %843 = load i32, i32* %12, align 4
  %844 = load i32*, i32** %22, align 8
  %845 = sext i32 %843 to i64
  %846 = getelementptr inbounds i32, i32* %844, i64 %845
  store i32* %846, i32** %22, align 8
  br label %847

847:                                              ; preds = %803
  %848 = load i32, i32* %16, align 4
  %849 = add i32 %848, 1
  store i32 %849, i32* %16, align 4
  br label %795

850:                                              ; preds = %795
  br label %952

851:                                              ; preds = %789, %782
  %852 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %853 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %852, i32 0, i32 5
  %854 = load %struct.TYPE_9__*, %struct.TYPE_9__** %853, align 8
  %855 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %854, i32 0, i32 0
  %856 = load i32, i32* %855, align 4
  %857 = icmp eq i32 %856, 4
  br i1 %857, label %858, label %899

858:                                              ; preds = %851
  %859 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %860 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %859, i32 0, i32 1
  %861 = load i64, i64* %860, align 8
  %862 = icmp eq i64 %861, 2
  br i1 %862, label %863, label %899

863:                                              ; preds = %858
  store i32 0, i32* %16, align 4
  br label %864

864:                                              ; preds = %895, %863
  %865 = load i32, i32* %16, align 4
  %866 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %867 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %866, i32 0, i32 5
  %868 = load %struct.TYPE_9__*, %struct.TYPE_9__** %867, align 8
  %869 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %868, i32 0, i32 1
  %870 = load i32, i32* %869, align 4
  %871 = icmp ult i32 %865, %870
  br i1 %871, label %872, label %898

872:                                              ; preds = %864
  %873 = getelementptr inbounds [4 x i32*], [4 x i32*]* %19, i64 0, i64 0
  %874 = load i32*, i32** %873, align 16
  %875 = load i32, i32* %16, align 4
  %876 = zext i32 %875 to i64
  %877 = getelementptr inbounds i32, i32* %874, i64 %876
  %878 = load i32, i32* %877, align 4
  %879 = sub nsw i32 255, %878
  %880 = getelementptr inbounds [4 x i32*], [4 x i32*]* %19, i64 0, i64 3
  %881 = load i32*, i32** %880, align 8
  %882 = load i32, i32* %16, align 4
  %883 = zext i32 %882 to i64
  %884 = getelementptr inbounds i32, i32* %881, i64 %883
  %885 = load i32, i32* %884, align 4
  %886 = call i32 @stbi__blinn_8x8(i32 %879, i32 %885)
  %887 = load i32*, i32** %22, align 8
  %888 = getelementptr inbounds i32, i32* %887, i64 0
  store i32 %886, i32* %888, align 4
  %889 = load i32*, i32** %22, align 8
  %890 = getelementptr inbounds i32, i32* %889, i64 1
  store i32 255, i32* %890, align 4
  %891 = load i32, i32* %12, align 4
  %892 = load i32*, i32** %22, align 8
  %893 = sext i32 %891 to i64
  %894 = getelementptr inbounds i32, i32* %892, i64 %893
  store i32* %894, i32** %22, align 8
  br label %895

895:                                              ; preds = %872
  %896 = load i32, i32* %16, align 4
  %897 = add i32 %896, 1
  store i32 %897, i32* %16, align 4
  br label %864

898:                                              ; preds = %864
  br label %951

899:                                              ; preds = %858, %851
  %900 = getelementptr inbounds [4 x i32*], [4 x i32*]* %19, i64 0, i64 0
  %901 = load i32*, i32** %900, align 16
  store i32* %901, i32** %32, align 8
  %902 = load i32, i32* %12, align 4
  %903 = icmp eq i32 %902, 1
  br i1 %903, label %904, label %927

904:                                              ; preds = %899
  store i32 0, i32* %16, align 4
  br label %905

905:                                              ; preds = %923, %904
  %906 = load i32, i32* %16, align 4
  %907 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %908 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %907, i32 0, i32 5
  %909 = load %struct.TYPE_9__*, %struct.TYPE_9__** %908, align 8
  %910 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %909, i32 0, i32 1
  %911 = load i32, i32* %910, align 4
  %912 = icmp ult i32 %906, %911
  br i1 %912, label %913, label %926

913:                                              ; preds = %905
  %914 = load i32*, i32** %32, align 8
  %915 = load i32, i32* %16, align 4
  %916 = zext i32 %915 to i64
  %917 = getelementptr inbounds i32, i32* %914, i64 %916
  %918 = load i32, i32* %917, align 4
  %919 = load i32*, i32** %22, align 8
  %920 = load i32, i32* %16, align 4
  %921 = zext i32 %920 to i64
  %922 = getelementptr inbounds i32, i32* %919, i64 %921
  store i32 %918, i32* %922, align 4
  br label %923

923:                                              ; preds = %913
  %924 = load i32, i32* %16, align 4
  %925 = add i32 %924, 1
  store i32 %925, i32* %16, align 4
  br label %905

926:                                              ; preds = %905
  br label %950

927:                                              ; preds = %899
  store i32 0, i32* %16, align 4
  br label %928

928:                                              ; preds = %946, %927
  %929 = load i32, i32* %16, align 4
  %930 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %931 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %930, i32 0, i32 5
  %932 = load %struct.TYPE_9__*, %struct.TYPE_9__** %931, align 8
  %933 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %932, i32 0, i32 1
  %934 = load i32, i32* %933, align 4
  %935 = icmp ult i32 %929, %934
  br i1 %935, label %936, label %949

936:                                              ; preds = %928
  %937 = load i32*, i32** %32, align 8
  %938 = load i32, i32* %16, align 4
  %939 = zext i32 %938 to i64
  %940 = getelementptr inbounds i32, i32* %937, i64 %939
  %941 = load i32, i32* %940, align 4
  %942 = load i32*, i32** %22, align 8
  %943 = getelementptr inbounds i32, i32* %942, i32 1
  store i32* %943, i32** %22, align 8
  store i32 %941, i32* %942, align 4
  %944 = load i32*, i32** %22, align 8
  %945 = getelementptr inbounds i32, i32* %944, i32 1
  store i32* %945, i32** %22, align 8
  store i32 255, i32* %944, align 4
  br label %946

946:                                              ; preds = %936
  %947 = load i32, i32* %16, align 4
  %948 = add i32 %947, 1
  store i32 %948, i32* %16, align 4
  br label %928

949:                                              ; preds = %928
  br label %950

950:                                              ; preds = %949, %926
  br label %951

951:                                              ; preds = %950, %898
  br label %952

952:                                              ; preds = %951, %850
  br label %953

953:                                              ; preds = %952, %781
  br label %954

954:                                              ; preds = %953, %698
  br label %955

955:                                              ; preds = %954
  %956 = load i32, i32* %17, align 4
  %957 = add i32 %956, 1
  store i32 %957, i32* %17, align 4
  br label %302

958:                                              ; preds = %302
  %959 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %960 = call i32 @stbi__cleanup_jpeg(%struct.TYPE_11__* %959)
  %961 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %962 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %961, i32 0, i32 5
  %963 = load %struct.TYPE_9__*, %struct.TYPE_9__** %962, align 8
  %964 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %963, i32 0, i32 1
  %965 = load i32, i32* %964, align 4
  %966 = load i32*, i32** %8, align 8
  store i32 %965, i32* %966, align 4
  %967 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %968 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %967, i32 0, i32 5
  %969 = load %struct.TYPE_9__*, %struct.TYPE_9__** %968, align 8
  %970 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %969, i32 0, i32 2
  %971 = load i32, i32* %970, align 4
  %972 = load i32*, i32** %9, align 8
  store i32 %971, i32* %972, align 4
  %973 = load i32*, i32** %10, align 8
  %974 = icmp ne i32* %973, null
  br i1 %974, label %975, label %985

975:                                              ; preds = %958
  %976 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %977 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %976, i32 0, i32 5
  %978 = load %struct.TYPE_9__*, %struct.TYPE_9__** %977, align 8
  %979 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %978, i32 0, i32 0
  %980 = load i32, i32* %979, align 4
  %981 = icmp sge i32 %980, 3
  %982 = zext i1 %981 to i64
  %983 = select i1 %981, i32 3, i32 1
  %984 = load i32*, i32** %10, align 8
  store i32 %983, i32* %984, align 4
  br label %985

985:                                              ; preds = %975, %958
  %986 = load i32*, i32** %18, align 8
  store i32* %986, i32** %6, align 8
  br label %987

987:                                              ; preds = %985, %297, %148, %48, %42
  %988 = load i32*, i32** %6, align 8
  ret i32* %988
}

declare dso_local i32* @stbi__errpuc(i8*, i8*) #1

declare dso_local i32 @stbi__decode_jpeg_image(%struct.TYPE_11__*) #1

declare dso_local i32 @stbi__cleanup_jpeg(%struct.TYPE_11__*) #1

declare dso_local i64 @stbi__malloc(i32) #1

declare dso_local i32* @resample_row_1(i32*, i32, i32, i32, i32) #1

declare dso_local i32* @stbi__resample_row_v_2(i32*, i32, i32, i32, i32) #1

declare dso_local i32* @stbi__resample_row_h_2(i32*, i32, i32, i32, i32) #1

declare dso_local i32* @stbi__resample_row_generic(i32*, i32, i32, i32, i32) #1

declare dso_local i64 @stbi__malloc_mad3(i32, i32, i32, i32) #1

declare dso_local i32 @stbi__blinn_8x8(i32, i32) #1

declare dso_local i8* @stbi__compute_y(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
