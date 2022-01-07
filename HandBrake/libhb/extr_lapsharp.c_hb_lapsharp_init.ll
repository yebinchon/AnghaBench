; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_lapsharp.c_hb_lapsharp_init.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_lapsharp.c_hb_lapsharp_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32*, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i8*, %struct.TYPE_6__*, i8* }
%struct.TYPE_6__ = type { i32, i32 }

@.str = private unnamed_addr constant [11 x i8] c"y-strength\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"y-kernel\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"cb-strength\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"cb-kernel\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"cr-strength\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"cr-kernel\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"lap\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"isolap\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"log\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"isolog\00", align 1
@LAPSHARP_STRENGTH_CHROMA_DEFAULT = common dso_local global i32 0, align 4
@LAPSHARP_STRENGTH_LUMA_DEFAULT = common dso_local global i32 0, align 4
@LAPSHARP_KERNEL_CHROMA_DEFAULT = common dso_local global i8* null, align 8
@LAPSHARP_KERNEL_LUMA_DEFAULT = common dso_local global i8* null, align 8
@LAPSHARP_KERNELS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i8**)* @hb_lapsharp_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hb_lapsharp_init(%struct.TYPE_8__* %0, i8** %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca [3 x i8*], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_6__*, align 8
  %13 = alloca %struct.TYPE_6__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store i8** %1, i8*** %4, align 8
  %16 = call %struct.TYPE_7__* @calloc(i32 4, i32 1)
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 1
  store %struct.TYPE_7__* %16, %struct.TYPE_7__** %18, align 8
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  store %struct.TYPE_7__* %21, %struct.TYPE_7__** %5, align 8
  %22 = load i8**, i8*** %4, align 8
  %23 = load i8*, i8** %22, align 8
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 2
  store i8* %23, i8** %25, align 8
  store i32 0, i32* %7, align 4
  br label %26

26:                                               ; preds = %47, %2
  %27 = load i32, i32* %7, align 4
  %28 = icmp slt i32 %27, 3
  br i1 %28, label %29, label %50

29:                                               ; preds = %26
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  store i32 -1, i32* %36, align 4
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 1
  store i32 -1, i32* %43, align 4
  %44 = load i32, i32* %7, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [3 x i8*], [3 x i8*]* %6, i64 0, i64 %45
  store i8* null, i8** %46, align 8
  br label %47

47:                                               ; preds = %29
  %48 = load i32, i32* %7, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %7, align 4
  br label %26

50:                                               ; preds = %26
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = icmp ne i32* %53, null
  br i1 %54, label %55, label %89

55:                                               ; preds = %50
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  store i32* %58, i32** %8, align 8
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 1
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i64 0
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load i32*, i32** %8, align 8
  %65 = call i32 @hb_dict_extract_double(i32* %63, i32* %64, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %66 = getelementptr inbounds [3 x i8*], [3 x i8*]* %6, i64 0, i64 0
  %67 = load i32*, i32** %8, align 8
  %68 = call i32 @hb_dict_extract_string(i8** %66, i32* %67, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 1
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i64 1
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load i32*, i32** %8, align 8
  %75 = call i32 @hb_dict_extract_double(i32* %73, i32* %74, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %76 = getelementptr inbounds [3 x i8*], [3 x i8*]* %6, i64 0, i64 1
  %77 = load i32*, i32** %8, align 8
  %78 = call i32 @hb_dict_extract_string(i8** %76, i32* %77, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 1
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i64 2
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = load i32*, i32** %8, align 8
  %85 = call i32 @hb_dict_extract_double(i32* %83, i32* %84, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  %86 = getelementptr inbounds [3 x i8*], [3 x i8*]* %6, i64 0, i64 2
  %87 = load i32*, i32** %8, align 8
  %88 = call i32 @hb_dict_extract_string(i8** %86, i32* %87, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  br label %89

89:                                               ; preds = %55, %50
  store i32 0, i32* %9, align 4
  br label %90

90:                                               ; preds = %157, %89
  %91 = load i32, i32* %9, align 4
  %92 = icmp slt i32 %91, 3
  br i1 %92, label %93, label %160

93:                                               ; preds = %90
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 1
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %95, align 8
  %97 = load i32, i32* %9, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i64 %98
  store %struct.TYPE_6__* %99, %struct.TYPE_6__** %10, align 8
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 1
  store i32 -1, i32* %101, align 4
  %102 = load i32, i32* %9, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds [3 x i8*], [3 x i8*]* %6, i64 0, i64 %103
  %105 = load i8*, i8** %104, align 8
  %106 = icmp eq i8* %105, null
  br i1 %106, label %107, label %108

107:                                              ; preds = %93
  br label %157

108:                                              ; preds = %93
  %109 = load i32, i32* %9, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds [3 x i8*], [3 x i8*]* %6, i64 0, i64 %110
  %112 = load i8*, i8** %111, align 8
  %113 = call i32 @strcasecmp(i8* %112, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %118, label %115

115:                                              ; preds = %108
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 1
  store i32 0, i32* %117, align 4
  br label %151

118:                                              ; preds = %108
  %119 = load i32, i32* %9, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds [3 x i8*], [3 x i8*]* %6, i64 0, i64 %120
  %122 = load i8*, i8** %121, align 8
  %123 = call i32 @strcasecmp(i8* %122, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %128, label %125

125:                                              ; preds = %118
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 1
  store i32 1, i32* %127, align 4
  br label %150

128:                                              ; preds = %118
  %129 = load i32, i32* %9, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds [3 x i8*], [3 x i8*]* %6, i64 0, i64 %130
  %132 = load i8*, i8** %131, align 8
  %133 = call i32 @strcasecmp(i8* %132, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0))
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %138, label %135

135:                                              ; preds = %128
  %136 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 1
  store i32 2, i32* %137, align 4
  br label %149

138:                                              ; preds = %128
  %139 = load i32, i32* %9, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds [3 x i8*], [3 x i8*]* %6, i64 0, i64 %140
  %142 = load i8*, i8** %141, align 8
  %143 = call i32 @strcasecmp(i8* %142, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0))
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %148, label %145

145:                                              ; preds = %138
  %146 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 1
  store i32 3, i32* %147, align 4
  br label %148

148:                                              ; preds = %145, %138
  br label %149

149:                                              ; preds = %148, %135
  br label %150

150:                                              ; preds = %149, %125
  br label %151

151:                                              ; preds = %150, %115
  %152 = load i32, i32* %9, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds [3 x i8*], [3 x i8*]* %6, i64 0, i64 %153
  %155 = load i8*, i8** %154, align 8
  %156 = call i32 @free(i8* %155)
  br label %157

157:                                              ; preds = %151, %107
  %158 = load i32, i32* %9, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %9, align 4
  br label %90

160:                                              ; preds = %90
  store i32 1, i32* %11, align 4
  br label %161

161:                                              ; preds = %200, %160
  %162 = load i32, i32* %11, align 4
  %163 = icmp slt i32 %162, 3
  br i1 %163, label %164, label %203

164:                                              ; preds = %161
  %165 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %166 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %165, i32 0, i32 1
  %167 = load %struct.TYPE_6__*, %struct.TYPE_6__** %166, align 8
  %168 = load i32, i32* %11, align 4
  %169 = sub nsw i32 %168, 1
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %167, i64 %170
  store %struct.TYPE_6__* %171, %struct.TYPE_6__** %12, align 8
  %172 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %173 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %172, i32 0, i32 1
  %174 = load %struct.TYPE_6__*, %struct.TYPE_6__** %173, align 8
  %175 = load i32, i32* %11, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %174, i64 %176
  store %struct.TYPE_6__* %177, %struct.TYPE_6__** %13, align 8
  %178 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %179 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = icmp eq i32 %180, -1
  br i1 %181, label %182, label %188

182:                                              ; preds = %164
  %183 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %184 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %187 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %186, i32 0, i32 0
  store i32 %185, i32* %187, align 4
  br label %188

188:                                              ; preds = %182, %164
  %189 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %190 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = icmp eq i32 %191, -1
  br i1 %192, label %193, label %199

193:                                              ; preds = %188
  %194 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %195 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 4
  %197 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %198 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %197, i32 0, i32 1
  store i32 %196, i32* %198, align 4
  br label %199

199:                                              ; preds = %193, %188
  br label %200

200:                                              ; preds = %199
  %201 = load i32, i32* %11, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %11, align 4
  br label %161

203:                                              ; preds = %161
  store i32 0, i32* %14, align 4
  br label %204

204:                                              ; preds = %287, %203
  %205 = load i32, i32* %14, align 4
  %206 = icmp slt i32 %205, 3
  br i1 %206, label %207, label %290

207:                                              ; preds = %204
  %208 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %209 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %208, i32 0, i32 1
  %210 = load %struct.TYPE_6__*, %struct.TYPE_6__** %209, align 8
  %211 = load i32, i32* %14, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %210, i64 %212
  store %struct.TYPE_6__* %213, %struct.TYPE_6__** %15, align 8
  %214 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %215 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 4
  %217 = icmp eq i32 %216, -1
  br i1 %217, label %218, label %229

218:                                              ; preds = %207
  %219 = load i32, i32* %14, align 4
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %223

221:                                              ; preds = %218
  %222 = load i32, i32* @LAPSHARP_STRENGTH_CHROMA_DEFAULT, align 4
  br label %225

223:                                              ; preds = %218
  %224 = load i32, i32* @LAPSHARP_STRENGTH_LUMA_DEFAULT, align 4
  br label %225

225:                                              ; preds = %223, %221
  %226 = phi i32 [ %222, %221 ], [ %224, %223 ]
  %227 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %228 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %227, i32 0, i32 0
  store i32 %226, i32* %228, align 4
  br label %229

229:                                              ; preds = %225, %207
  %230 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %231 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %230, i32 0, i32 1
  %232 = load i32, i32* %231, align 4
  %233 = icmp eq i32 %232, -1
  br i1 %233, label %234, label %246

234:                                              ; preds = %229
  %235 = load i32, i32* %14, align 4
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %239

237:                                              ; preds = %234
  %238 = load i8*, i8** @LAPSHARP_KERNEL_CHROMA_DEFAULT, align 8
  br label %241

239:                                              ; preds = %234
  %240 = load i8*, i8** @LAPSHARP_KERNEL_LUMA_DEFAULT, align 8
  br label %241

241:                                              ; preds = %239, %237
  %242 = phi i8* [ %238, %237 ], [ %240, %239 ]
  %243 = ptrtoint i8* %242 to i32
  %244 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %245 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %244, i32 0, i32 1
  store i32 %243, i32* %245, align 4
  br label %246

246:                                              ; preds = %241, %229
  %247 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %248 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 4
  %250 = icmp slt i32 %249, 0
  br i1 %250, label %251, label %254

251:                                              ; preds = %246
  %252 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %253 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %252, i32 0, i32 0
  store i32 0, i32* %253, align 4
  br label %254

254:                                              ; preds = %251, %246
  %255 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %256 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 4
  %258 = sitofp i32 %257 to double
  %259 = fcmp ogt double %258, 1.500000e+00
  br i1 %259, label %260, label %263

260:                                              ; preds = %254
  %261 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %262 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %261, i32 0, i32 0
  store i32 1, i32* %262, align 4
  br label %263

263:                                              ; preds = %260, %254
  %264 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %265 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %264, i32 0, i32 1
  %266 = load i32, i32* %265, align 4
  %267 = icmp slt i32 %266, 0
  br i1 %267, label %274, label %268

268:                                              ; preds = %263
  %269 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %270 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %269, i32 0, i32 1
  %271 = load i32, i32* %270, align 4
  %272 = load i32, i32* @LAPSHARP_KERNELS, align 4
  %273 = icmp sge i32 %271, %272
  br i1 %273, label %274, label %286

274:                                              ; preds = %268, %263
  %275 = load i32, i32* %14, align 4
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %277, label %279

277:                                              ; preds = %274
  %278 = load i8*, i8** @LAPSHARP_KERNEL_CHROMA_DEFAULT, align 8
  br label %281

279:                                              ; preds = %274
  %280 = load i8*, i8** @LAPSHARP_KERNEL_LUMA_DEFAULT, align 8
  br label %281

281:                                              ; preds = %279, %277
  %282 = phi i8* [ %278, %277 ], [ %280, %279 ]
  %283 = ptrtoint i8* %282 to i32
  %284 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %285 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %284, i32 0, i32 1
  store i32 %283, i32* %285, align 4
  br label %286

286:                                              ; preds = %281, %268
  br label %287

287:                                              ; preds = %286
  %288 = load i32, i32* %14, align 4
  %289 = add nsw i32 %288, 1
  store i32 %289, i32* %14, align 4
  br label %204

290:                                              ; preds = %204
  %291 = load i8**, i8*** %4, align 8
  %292 = load i8*, i8** %291, align 8
  %293 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %294 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %293, i32 0, i32 0
  store i8* %292, i8** %294, align 8
  ret i32 0
}

declare dso_local %struct.TYPE_7__* @calloc(i32, i32) #1

declare dso_local i32 @hb_dict_extract_double(i32*, i32*, i8*) #1

declare dso_local i32 @hb_dict_extract_string(i8**, i32*, i8*) #1

declare dso_local i32 @strcasecmp(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
