; ModuleID = '/home/carl/AnghaBench/Cinder/src/freetype/pcf/extr_pcfread.c_pcf_interpret_style.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/freetype/pcf/extr_pcfread.c_pcf_interpret_style.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8*, i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__, i64 }
%struct.TYPE_6__ = type { i8* }

@FT_Err_Ok = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"SLANT\00", align 1
@FT_STYLE_FLAG_ITALIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"Oblique\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"Italic\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"WEIGHT_NAME\00", align 1
@FT_STYLE_FLAG_BOLD = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"Bold\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"SETWIDTH_NAME\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"ADD_STYLE_NAME\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"Regular\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @pcf_interpret_style to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcf_interpret_style(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca [4 x i8*], align 16
  %11 = alloca [4 x i64], align 16
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  %15 = load i32, i32* @FT_Err_Ok, align 4
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %3, align 4
  %17 = call %struct.TYPE_8__* @FT_FACE(i32 %16)
  store %struct.TYPE_8__* %17, %struct.TYPE_8__** %5, align 8
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %6, align 4
  %21 = bitcast [4 x i8*]* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %21, i8 0, i64 32, i1 false)
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 1
  store i32 0, i32* %23, align 8
  %24 = load i32, i32* %3, align 4
  %25 = call %struct.TYPE_7__* @pcf_find_property(i32 %24, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_7__* %25, %struct.TYPE_7__** %7, align 8
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %27 = icmp ne %struct.TYPE_7__* %26, null
  br i1 %27, label %28, label %91

28:                                               ; preds = %1
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %91

33:                                               ; preds = %28
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 79
  br i1 %40, label %65, label %41

41:                                               ; preds = %33
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp eq i32 %47, 111
  br i1 %48, label %65, label %49

49:                                               ; preds = %41
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp eq i32 %55, 73
  br i1 %56, label %65, label %57

57:                                               ; preds = %49
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp eq i32 %63, 105
  br i1 %64, label %65, label %91

65:                                               ; preds = %57, %49, %41, %33
  %66 = load i32, i32* @FT_STYLE_FLAG_ITALIC, align 4
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = or i32 %69, %66
  store i32 %70, i32* %68, align 8
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load i8*, i8** %73, align 8
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp eq i32 %76, 79
  br i1 %77, label %86, label %78

78:                                               ; preds = %65
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = load i8*, i8** %81, align 8
  %83 = load i8, i8* %82, align 1
  %84 = sext i8 %83 to i32
  %85 = icmp eq i32 %84, 111
  br label %86

86:                                               ; preds = %78, %65
  %87 = phi i1 [ true, %65 ], [ %85, %78 ]
  %88 = zext i1 %87 to i64
  %89 = select i1 %87, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)
  %90 = getelementptr inbounds [4 x i8*], [4 x i8*]* %10, i64 0, i64 2
  store i8* %89, i8** %90, align 16
  br label %91

91:                                               ; preds = %86, %57, %28, %1
  %92 = load i32, i32* %3, align 4
  %93 = call %struct.TYPE_7__* @pcf_find_property(i32 %92, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  store %struct.TYPE_7__* %93, %struct.TYPE_7__** %7, align 8
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %95 = icmp ne %struct.TYPE_7__* %94, null
  br i1 %95, label %96, label %124

96:                                               ; preds = %91
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %124

101:                                              ; preds = %96
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 0
  %105 = load i8*, i8** %104, align 8
  %106 = load i8, i8* %105, align 1
  %107 = sext i8 %106 to i32
  %108 = icmp eq i32 %107, 66
  br i1 %108, label %117, label %109

109:                                              ; preds = %101
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 0
  %113 = load i8*, i8** %112, align 8
  %114 = load i8, i8* %113, align 1
  %115 = sext i8 %114 to i32
  %116 = icmp eq i32 %115, 98
  br i1 %116, label %117, label %124

117:                                              ; preds = %109, %101
  %118 = load i32, i32* @FT_STYLE_FLAG_BOLD, align 4
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = or i32 %121, %118
  store i32 %122, i32* %120, align 8
  %123 = getelementptr inbounds [4 x i8*], [4 x i8*]* %10, i64 0, i64 1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8** %123, align 8
  br label %124

124:                                              ; preds = %117, %109, %96, %91
  %125 = load i32, i32* %3, align 4
  %126 = call %struct.TYPE_7__* @pcf_find_property(i32 %125, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  store %struct.TYPE_7__* %126, %struct.TYPE_7__** %7, align 8
  %127 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %128 = icmp ne %struct.TYPE_7__* %127, null
  br i1 %128, label %129, label %164

129:                                              ; preds = %124
  %130 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %164

134:                                              ; preds = %129
  %135 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 0
  %138 = load i8*, i8** %137, align 8
  %139 = load i8, i8* %138, align 1
  %140 = sext i8 %139 to i32
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %164

142:                                              ; preds = %134
  %143 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 0
  %146 = load i8*, i8** %145, align 8
  %147 = load i8, i8* %146, align 1
  %148 = sext i8 %147 to i32
  %149 = icmp eq i32 %148, 78
  br i1 %149, label %164, label %150

150:                                              ; preds = %142
  %151 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i32 0, i32 0
  %154 = load i8*, i8** %153, align 8
  %155 = load i8, i8* %154, align 1
  %156 = sext i8 %155 to i32
  %157 = icmp eq i32 %156, 110
  br i1 %157, label %164, label %158

158:                                              ; preds = %150
  %159 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %160 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 0
  %162 = load i8*, i8** %161, align 8
  %163 = getelementptr inbounds [4 x i8*], [4 x i8*]* %10, i64 0, i64 3
  store i8* %162, i8** %163, align 8
  br label %164

164:                                              ; preds = %158, %150, %142, %134, %129, %124
  %165 = load i32, i32* %3, align 4
  %166 = call %struct.TYPE_7__* @pcf_find_property(i32 %165, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0))
  store %struct.TYPE_7__* %166, %struct.TYPE_7__** %7, align 8
  %167 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %168 = icmp ne %struct.TYPE_7__* %167, null
  br i1 %168, label %169, label %204

169:                                              ; preds = %164
  %170 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %171 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %170, i32 0, i32 1
  %172 = load i64, i64* %171, align 8
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %204

174:                                              ; preds = %169
  %175 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %176 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %176, i32 0, i32 0
  %178 = load i8*, i8** %177, align 8
  %179 = load i8, i8* %178, align 1
  %180 = sext i8 %179 to i32
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %204

182:                                              ; preds = %174
  %183 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %184 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %184, i32 0, i32 0
  %186 = load i8*, i8** %185, align 8
  %187 = load i8, i8* %186, align 1
  %188 = sext i8 %187 to i32
  %189 = icmp eq i32 %188, 78
  br i1 %189, label %204, label %190

190:                                              ; preds = %182
  %191 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %192 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %192, i32 0, i32 0
  %194 = load i8*, i8** %193, align 8
  %195 = load i8, i8* %194, align 1
  %196 = sext i8 %195 to i32
  %197 = icmp eq i32 %196, 110
  br i1 %197, label %204, label %198

198:                                              ; preds = %190
  %199 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %200 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %200, i32 0, i32 0
  %202 = load i8*, i8** %201, align 8
  %203 = getelementptr inbounds [4 x i8*], [4 x i8*]* %10, i64 0, i64 0
  store i8* %202, i8** %203, align 16
  br label %204

204:                                              ; preds = %198, %190, %182, %174, %169, %164
  store i64 0, i64* %9, align 8
  store i64 0, i64* %8, align 8
  br label %205

205:                                              ; preds = %229, %204
  %206 = load i64, i64* %8, align 8
  %207 = icmp ult i64 %206, 4
  br i1 %207, label %208, label %232

208:                                              ; preds = %205
  %209 = load i64, i64* %8, align 8
  %210 = getelementptr inbounds [4 x i64], [4 x i64]* %11, i64 0, i64 %209
  store i64 0, i64* %210, align 8
  %211 = load i64, i64* %8, align 8
  %212 = getelementptr inbounds [4 x i8*], [4 x i8*]* %10, i64 0, i64 %211
  %213 = load i8*, i8** %212, align 8
  %214 = icmp ne i8* %213, null
  br i1 %214, label %215, label %228

215:                                              ; preds = %208
  %216 = load i64, i64* %8, align 8
  %217 = getelementptr inbounds [4 x i8*], [4 x i8*]* %10, i64 0, i64 %216
  %218 = load i8*, i8** %217, align 8
  %219 = call i64 @ft_strlen(i8* %218)
  %220 = load i64, i64* %8, align 8
  %221 = getelementptr inbounds [4 x i64], [4 x i64]* %11, i64 0, i64 %220
  store i64 %219, i64* %221, align 8
  %222 = load i64, i64* %8, align 8
  %223 = getelementptr inbounds [4 x i64], [4 x i64]* %11, i64 0, i64 %222
  %224 = load i64, i64* %223, align 8
  %225 = add i64 %224, 1
  %226 = load i64, i64* %9, align 8
  %227 = add i64 %226, %225
  store i64 %227, i64* %9, align 8
  br label %228

228:                                              ; preds = %215, %208
  br label %229

229:                                              ; preds = %228
  %230 = load i64, i64* %8, align 8
  %231 = add i64 %230, 1
  store i64 %231, i64* %8, align 8
  br label %205

232:                                              ; preds = %205
  %233 = load i64, i64* %9, align 8
  %234 = icmp eq i64 %233, 0
  br i1 %234, label %235, label %244

235:                                              ; preds = %232
  %236 = getelementptr inbounds [4 x i8*], [4 x i8*]* %10, i64 0, i64 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8** %236, align 16
  %237 = getelementptr inbounds [4 x i8*], [4 x i8*]* %10, i64 0, i64 0
  %238 = load i8*, i8** %237, align 16
  %239 = call i64 @ft_strlen(i8* %238)
  %240 = getelementptr inbounds [4 x i64], [4 x i64]* %11, i64 0, i64 0
  store i64 %239, i64* %240, align 16
  %241 = getelementptr inbounds [4 x i64], [4 x i64]* %11, i64 0, i64 0
  %242 = load i64, i64* %241, align 16
  %243 = add i64 %242, 1
  store i64 %243, i64* %9, align 8
  br label %244

244:                                              ; preds = %235, %232
  %245 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %246 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %245, i32 0, i32 0
  %247 = load i8*, i8** %246, align 8
  %248 = load i64, i64* %9, align 8
  %249 = call i64 @FT_ALLOC(i8* %247, i64 %248)
  %250 = icmp ne i64 %249, 0
  br i1 %250, label %251, label %253

251:                                              ; preds = %244
  %252 = load i32, i32* %4, align 4
  store i32 %252, i32* %2, align 4
  br label %320

253:                                              ; preds = %244
  %254 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %255 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %254, i32 0, i32 0
  %256 = load i8*, i8** %255, align 8
  store i8* %256, i8** %12, align 8
  store i64 0, i64* %8, align 8
  br label %257

257:                                              ; preds = %314, %253
  %258 = load i64, i64* %8, align 8
  %259 = icmp ult i64 %258, 4
  br i1 %259, label %260, label %317

260:                                              ; preds = %257
  %261 = load i64, i64* %8, align 8
  %262 = getelementptr inbounds [4 x i8*], [4 x i8*]* %10, i64 0, i64 %261
  %263 = load i8*, i8** %262, align 8
  store i8* %263, i8** %13, align 8
  %264 = load i64, i64* %8, align 8
  %265 = getelementptr inbounds [4 x i64], [4 x i64]* %11, i64 0, i64 %264
  %266 = load i64, i64* %265, align 8
  store i64 %266, i64* %9, align 8
  %267 = load i8*, i8** %13, align 8
  %268 = icmp ne i8* %267, null
  br i1 %268, label %270, label %269

269:                                              ; preds = %260
  br label %314

270:                                              ; preds = %260
  %271 = load i8*, i8** %12, align 8
  %272 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %273 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %272, i32 0, i32 0
  %274 = load i8*, i8** %273, align 8
  %275 = icmp ne i8* %271, %274
  br i1 %275, label %276, label %279

276:                                              ; preds = %270
  %277 = load i8*, i8** %12, align 8
  %278 = getelementptr inbounds i8, i8* %277, i32 1
  store i8* %278, i8** %12, align 8
  store i8 32, i8* %277, align 1
  br label %279

279:                                              ; preds = %276, %270
  %280 = load i8*, i8** %12, align 8
  %281 = load i8*, i8** %13, align 8
  %282 = load i64, i64* %9, align 8
  %283 = call i32 @ft_memcpy(i8* %280, i8* %281, i64 %282)
  %284 = load i64, i64* %8, align 8
  %285 = icmp eq i64 %284, 0
  br i1 %285, label %289, label %286

286:                                              ; preds = %279
  %287 = load i64, i64* %8, align 8
  %288 = icmp eq i64 %287, 3
  br i1 %288, label %289, label %310

289:                                              ; preds = %286, %279
  store i64 0, i64* %14, align 8
  br label %290

290:                                              ; preds = %306, %289
  %291 = load i64, i64* %14, align 8
  %292 = load i64, i64* %9, align 8
  %293 = icmp ult i64 %291, %292
  br i1 %293, label %294, label %309

294:                                              ; preds = %290
  %295 = load i8*, i8** %12, align 8
  %296 = load i64, i64* %14, align 8
  %297 = getelementptr inbounds i8, i8* %295, i64 %296
  %298 = load i8, i8* %297, align 1
  %299 = sext i8 %298 to i32
  %300 = icmp eq i32 %299, 32
  br i1 %300, label %301, label %305

301:                                              ; preds = %294
  %302 = load i8*, i8** %12, align 8
  %303 = load i64, i64* %14, align 8
  %304 = getelementptr inbounds i8, i8* %302, i64 %303
  store i8 45, i8* %304, align 1
  br label %305

305:                                              ; preds = %301, %294
  br label %306

306:                                              ; preds = %305
  %307 = load i64, i64* %14, align 8
  %308 = add i64 %307, 1
  store i64 %308, i64* %14, align 8
  br label %290

309:                                              ; preds = %290
  br label %310

310:                                              ; preds = %309, %286
  %311 = load i64, i64* %9, align 8
  %312 = load i8*, i8** %12, align 8
  %313 = getelementptr inbounds i8, i8* %312, i64 %311
  store i8* %313, i8** %12, align 8
  br label %314

314:                                              ; preds = %310, %269
  %315 = load i64, i64* %8, align 8
  %316 = add i64 %315, 1
  store i64 %316, i64* %8, align 8
  br label %257

317:                                              ; preds = %257
  %318 = load i8*, i8** %12, align 8
  store i8 0, i8* %318, align 1
  %319 = load i32, i32* %4, align 4
  store i32 %319, i32* %2, align 4
  br label %320

320:                                              ; preds = %317, %251
  %321 = load i32, i32* %2, align 4
  ret i32 %321
}

declare dso_local %struct.TYPE_8__* @FT_FACE(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local %struct.TYPE_7__* @pcf_find_property(i32, i8*) #1

declare dso_local i64 @ft_strlen(i8*) #1

declare dso_local i64 @FT_ALLOC(i8*, i64) #1

declare dso_local i32 @ft_memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
