; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_ssautil.c_add_style.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_ssautil.c_add_style.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8* }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"Default\00", align 1
@HB_FONT_SANS = common dso_local global i8* null, align 8
@HB_STYLE_FLAG_BOLD = common dso_local global i32 0, align 4
@HB_STYLE_FLAG_ITALIC = common dso_local global i32 0, align 4
@HB_STYLE_FLAG_UNDERLINE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i8**, %struct.TYPE_6__*)* @add_style to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_style(%struct.TYPE_7__* %0, i8** %1, %struct.TYPE_6__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i8** %1, i8*** %6, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %7, align 8
  %20 = load i8**, i8*** %6, align 8
  %21 = icmp eq i8** %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %379

23:                                               ; preds = %3
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = add nsw i32 %26, 1
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = icmp sgt i32 %27, %30
  br i1 %31, label %32, label %58

32:                                               ; preds = %23
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = add nsw i32 %35, 1
  %37 = mul nsw i32 %36, 2
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 4
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %41, align 8
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = sext i32 %45 to i64
  %47 = mul i64 %46, 4
  %48 = trunc i64 %47 to i32
  %49 = call i8* @realloc(%struct.TYPE_8__* %42, i32 %48)
  store i8* %49, i8** %15, align 8
  %50 = load i8*, i8** %15, align 8
  %51 = icmp eq i8* %50, null
  br i1 %51, label %52, label %53

52:                                               ; preds = %32
  store i32 1, i32* %4, align 4
  br label %379

53:                                               ; preds = %32
  %54 = load i8*, i8** %15, align 8
  %55 = bitcast i8* %54 to %struct.TYPE_8__*
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 4
  store %struct.TYPE_8__* %55, %struct.TYPE_8__** %57, align 8
  br label %58

58:                                               ; preds = %53, %23
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  store i32 %61, i32* %14, align 4
  %62 = load i8**, i8*** %6, align 8
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 9
  %65 = load i32, i32* %64, align 4
  %66 = call i8* @field_value(i8** %62, i32 %65)
  store i8* %66, i8** %8, align 8
  %67 = load i8*, i8** %8, align 8
  %68 = icmp eq i8* %67, null
  br i1 %68, label %69, label %70

69:                                               ; preds = %58
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  br label %70

70:                                               ; preds = %69, %58
  %71 = load i8*, i8** %8, align 8
  %72 = call i32 @strcasecmp(i8* %71, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %83, label %74

74:                                               ; preds = %70
  %75 = load i32, i32* %14, align 4
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 2
  store i32 %75, i32* %77, align 8
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 3
  store i32 %80, i32* %82, align 4
  br label %83

83:                                               ; preds = %74, %70
  %84 = load i8*, i8** %8, align 8
  %85 = call i8* @strdup(i8* %84)
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 4
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %87, align 8
  %89 = load i32, i32* %14, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 11
  store i8* %85, i8** %92, align 8
  %93 = load i8**, i8*** %6, align 8
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 8
  %96 = load i32, i32* %95, align 4
  %97 = call i8* @field_value(i8** %93, i32 %96)
  store i8* %97, i8** %9, align 8
  %98 = load i8*, i8** %9, align 8
  %99 = icmp eq i8* %98, null
  br i1 %99, label %100, label %102

100:                                              ; preds = %83
  %101 = load i8*, i8** @HB_FONT_SANS, align 8
  store i8* %101, i8** %9, align 8
  br label %102

102:                                              ; preds = %100, %83
  %103 = load i8*, i8** %9, align 8
  %104 = call i8* @strdup(i8* %103)
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 4
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %106, align 8
  %108 = load i32, i32* %14, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 10
  store i8* %104, i8** %111, align 8
  %112 = load i8**, i8*** %6, align 8
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 7
  %115 = load i32, i32* %114, align 4
  %116 = call i8* @field_value(i8** %112, i32 %115)
  store i8* %116, i8** %9, align 8
  %117 = load i8*, i8** %9, align 8
  %118 = icmp eq i8* %117, null
  br i1 %118, label %119, label %120

119:                                              ; preds = %102
  store i32 72, i32* %10, align 4
  br label %123

120:                                              ; preds = %102
  %121 = load i8*, i8** %9, align 8
  %122 = call i32 @strtol(i8* %121, i32* null, i32 0)
  store i32 %122, i32* %10, align 4
  br label %123

123:                                              ; preds = %120, %119
  %124 = load i32, i32* %10, align 4
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 4
  %127 = load %struct.TYPE_8__*, %struct.TYPE_8__** %126, align 8
  %128 = load i32, i32* %14, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 0
  store i32 %124, i32* %131, align 8
  %132 = load i8**, i8*** %6, align 8
  %133 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 6
  %135 = load i32, i32* %134, align 4
  %136 = call i8* @field_value(i8** %132, i32 %135)
  store i8* %136, i8** %9, align 8
  %137 = load i8*, i8** %9, align 8
  %138 = icmp eq i8* %137, null
  br i1 %138, label %143, label %139

139:                                              ; preds = %123
  %140 = load i8*, i8** %9, align 8
  %141 = call i32 @strlen(i8* %140)
  %142 = icmp slt i32 %141, 3
  br i1 %142, label %143, label %144

143:                                              ; preds = %139, %123
  store i32 16777215, i32* %11, align 4
  store i32 255, i32* %12, align 4
  br label %152

144:                                              ; preds = %139
  %145 = load i8*, i8** %9, align 8
  %146 = getelementptr inbounds i8, i8* %145, i64 2
  %147 = call i32 @strtol(i8* %146, i32* null, i32 16)
  store i32 %147, i32* %16, align 4
  %148 = load i32, i32* %16, align 4
  %149 = call i32 @HB_BGR_TO_RGB(i32 %148)
  store i32 %149, i32* %11, align 4
  %150 = load i32, i32* %16, align 4
  %151 = ashr i32 %150, 24
  store i32 %151, i32* %12, align 4
  br label %152

152:                                              ; preds = %144, %143
  %153 = load i32, i32* %11, align 4
  %154 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %155 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %154, i32 0, i32 4
  %156 = load %struct.TYPE_8__*, %struct.TYPE_8__** %155, align 8
  %157 = load i32, i32* %14, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %156, i64 %158
  %160 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %159, i32 0, i32 1
  store i32 %153, i32* %160, align 4
  %161 = load i32, i32* %12, align 4
  %162 = sub nsw i32 255, %161
  %163 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %164 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %163, i32 0, i32 4
  %165 = load %struct.TYPE_8__*, %struct.TYPE_8__** %164, align 8
  %166 = load i32, i32* %14, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %165, i64 %167
  %169 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %168, i32 0, i32 2
  store i32 %162, i32* %169, align 8
  %170 = load i8**, i8*** %6, align 8
  %171 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %172 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %171, i32 0, i32 5
  %173 = load i32, i32* %172, align 4
  %174 = call i8* @field_value(i8** %170, i32 %173)
  store i8* %174, i8** %9, align 8
  %175 = load i8*, i8** %9, align 8
  %176 = icmp eq i8* %175, null
  br i1 %176, label %181, label %177

177:                                              ; preds = %152
  %178 = load i8*, i8** %9, align 8
  %179 = call i32 @strlen(i8* %178)
  %180 = icmp slt i32 %179, 3
  br i1 %180, label %181, label %182

181:                                              ; preds = %177, %152
  store i32 16777215, i32* %11, align 4
  store i32 255, i32* %12, align 4
  br label %190

182:                                              ; preds = %177
  %183 = load i8*, i8** %9, align 8
  %184 = getelementptr inbounds i8, i8* %183, i64 2
  %185 = call i32 @strtol(i8* %184, i32* null, i32 16)
  store i32 %185, i32* %17, align 4
  %186 = load i32, i32* %17, align 4
  %187 = call i32 @HB_BGR_TO_RGB(i32 %186)
  store i32 %187, i32* %11, align 4
  %188 = load i32, i32* %17, align 4
  %189 = ashr i32 %188, 24
  store i32 %189, i32* %12, align 4
  br label %190

190:                                              ; preds = %182, %181
  %191 = load i32, i32* %11, align 4
  %192 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %193 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %192, i32 0, i32 4
  %194 = load %struct.TYPE_8__*, %struct.TYPE_8__** %193, align 8
  %195 = load i32, i32* %14, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %194, i64 %196
  %198 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %197, i32 0, i32 3
  store i32 %191, i32* %198, align 4
  %199 = load i32, i32* %12, align 4
  %200 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %201 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %200, i32 0, i32 4
  %202 = load %struct.TYPE_8__*, %struct.TYPE_8__** %201, align 8
  %203 = load i32, i32* %14, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %202, i64 %204
  %206 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %205, i32 0, i32 4
  store i32 %199, i32* %206, align 8
  %207 = load i8**, i8*** %6, align 8
  %208 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %209 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %208, i32 0, i32 4
  %210 = load i32, i32* %209, align 4
  %211 = call i8* @field_value(i8** %207, i32 %210)
  store i8* %211, i8** %9, align 8
  %212 = load i8*, i8** %9, align 8
  %213 = icmp eq i8* %212, null
  br i1 %213, label %218, label %214

214:                                              ; preds = %190
  %215 = load i8*, i8** %9, align 8
  %216 = call i32 @strlen(i8* %215)
  %217 = icmp slt i32 %216, 3
  br i1 %217, label %218, label %219

218:                                              ; preds = %214, %190
  store i32 986895, i32* %11, align 4
  store i32 255, i32* %12, align 4
  br label %227

219:                                              ; preds = %214
  %220 = load i8*, i8** %9, align 8
  %221 = getelementptr inbounds i8, i8* %220, i64 2
  %222 = call i32 @strtol(i8* %221, i32* null, i32 16)
  store i32 %222, i32* %18, align 4
  %223 = load i32, i32* %18, align 4
  %224 = call i32 @HB_BGR_TO_RGB(i32 %223)
  store i32 %224, i32* %11, align 4
  %225 = load i32, i32* %18, align 4
  %226 = ashr i32 %225, 24
  store i32 %226, i32* %12, align 4
  br label %227

227:                                              ; preds = %219, %218
  %228 = load i32, i32* %11, align 4
  %229 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %230 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %229, i32 0, i32 4
  %231 = load %struct.TYPE_8__*, %struct.TYPE_8__** %230, align 8
  %232 = load i32, i32* %14, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %231, i64 %233
  %235 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %234, i32 0, i32 5
  store i32 %228, i32* %235, align 4
  %236 = load i32, i32* %12, align 4
  %237 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %238 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %237, i32 0, i32 4
  %239 = load %struct.TYPE_8__*, %struct.TYPE_8__** %238, align 8
  %240 = load i32, i32* %14, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %239, i64 %241
  %243 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %242, i32 0, i32 6
  store i32 %236, i32* %243, align 8
  %244 = load i8**, i8*** %6, align 8
  %245 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %246 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %245, i32 0, i32 3
  %247 = load i32, i32* %246, align 4
  %248 = call i8* @field_value(i8** %244, i32 %247)
  store i8* %248, i8** %9, align 8
  %249 = load i8*, i8** %9, align 8
  %250 = icmp eq i8* %249, null
  br i1 %250, label %255, label %251

251:                                              ; preds = %227
  %252 = load i8*, i8** %9, align 8
  %253 = call i32 @strlen(i8* %252)
  %254 = icmp slt i32 %253, 3
  br i1 %254, label %255, label %256

255:                                              ; preds = %251, %227
  store i32 986895, i32* %11, align 4
  store i32 255, i32* %12, align 4
  br label %264

256:                                              ; preds = %251
  %257 = load i8*, i8** %9, align 8
  %258 = getelementptr inbounds i8, i8* %257, i64 2
  %259 = call i32 @strtol(i8* %258, i32* null, i32 16)
  store i32 %259, i32* %19, align 4
  %260 = load i32, i32* %19, align 4
  %261 = call i32 @HB_BGR_TO_RGB(i32 %260)
  store i32 %261, i32* %11, align 4
  %262 = load i32, i32* %19, align 4
  %263 = ashr i32 %262, 24
  store i32 %263, i32* %12, align 4
  br label %264

264:                                              ; preds = %256, %255
  %265 = load i32, i32* %11, align 4
  %266 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %267 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %266, i32 0, i32 4
  %268 = load %struct.TYPE_8__*, %struct.TYPE_8__** %267, align 8
  %269 = load i32, i32* %14, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %268, i64 %270
  %272 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %271, i32 0, i32 7
  store i32 %265, i32* %272, align 4
  %273 = load i32, i32* %12, align 4
  %274 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %275 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %274, i32 0, i32 4
  %276 = load %struct.TYPE_8__*, %struct.TYPE_8__** %275, align 8
  %277 = load i32, i32* %14, align 4
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %276, i64 %278
  %280 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %279, i32 0, i32 8
  store i32 %273, i32* %280, align 8
  %281 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %282 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %281, i32 0, i32 4
  %283 = load %struct.TYPE_8__*, %struct.TYPE_8__** %282, align 8
  %284 = load i32, i32* %14, align 4
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %283, i64 %285
  %287 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %286, i32 0, i32 9
  store i32 0, i32* %287, align 4
  %288 = load i8**, i8*** %6, align 8
  %289 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %290 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %289, i32 0, i32 2
  %291 = load i32, i32* %290, align 4
  %292 = call i8* @field_value(i8** %288, i32 %291)
  store i8* %292, i8** %9, align 8
  %293 = load i8*, i8** %9, align 8
  %294 = icmp eq i8* %293, null
  br i1 %294, label %295, label %297

295:                                              ; preds = %264
  %296 = load i32, i32* @HB_STYLE_FLAG_BOLD, align 4
  store i32 %296, i32* %13, align 4
  br label %306

297:                                              ; preds = %264
  %298 = load i8*, i8** %9, align 8
  %299 = call i32 @strtol(i8* %298, i32* null, i32 0)
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %301, label %303

301:                                              ; preds = %297
  %302 = load i32, i32* @HB_STYLE_FLAG_BOLD, align 4
  br label %304

303:                                              ; preds = %297
  br label %304

304:                                              ; preds = %303, %301
  %305 = phi i32 [ %302, %301 ], [ 0, %303 ]
  store i32 %305, i32* %13, align 4
  br label %306

306:                                              ; preds = %304, %295
  %307 = load i32, i32* %13, align 4
  %308 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %309 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %308, i32 0, i32 4
  %310 = load %struct.TYPE_8__*, %struct.TYPE_8__** %309, align 8
  %311 = load i32, i32* %14, align 4
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %310, i64 %312
  %314 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %313, i32 0, i32 9
  %315 = load i32, i32* %314, align 4
  %316 = or i32 %315, %307
  store i32 %316, i32* %314, align 4
  %317 = load i8**, i8*** %6, align 8
  %318 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %319 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %318, i32 0, i32 1
  %320 = load i32, i32* %319, align 4
  %321 = call i8* @field_value(i8** %317, i32 %320)
  store i8* %321, i8** %9, align 8
  %322 = load i8*, i8** %9, align 8
  %323 = icmp eq i8* %322, null
  br i1 %323, label %324, label %326

324:                                              ; preds = %306
  %325 = load i32, i32* @HB_STYLE_FLAG_ITALIC, align 4
  store i32 %325, i32* %13, align 4
  br label %335

326:                                              ; preds = %306
  %327 = load i8*, i8** %9, align 8
  %328 = call i32 @strtol(i8* %327, i32* null, i32 0)
  %329 = icmp ne i32 %328, 0
  br i1 %329, label %330, label %332

330:                                              ; preds = %326
  %331 = load i32, i32* @HB_STYLE_FLAG_ITALIC, align 4
  br label %333

332:                                              ; preds = %326
  br label %333

333:                                              ; preds = %332, %330
  %334 = phi i32 [ %331, %330 ], [ 0, %332 ]
  store i32 %334, i32* %13, align 4
  br label %335

335:                                              ; preds = %333, %324
  %336 = load i32, i32* %13, align 4
  %337 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %338 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %337, i32 0, i32 4
  %339 = load %struct.TYPE_8__*, %struct.TYPE_8__** %338, align 8
  %340 = load i32, i32* %14, align 4
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %339, i64 %341
  %343 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %342, i32 0, i32 9
  %344 = load i32, i32* %343, align 4
  %345 = or i32 %344, %336
  store i32 %345, i32* %343, align 4
  %346 = load i8**, i8*** %6, align 8
  %347 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %348 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %347, i32 0, i32 0
  %349 = load i32, i32* %348, align 4
  %350 = call i8* @field_value(i8** %346, i32 %349)
  store i8* %350, i8** %9, align 8
  %351 = load i8*, i8** %9, align 8
  %352 = icmp eq i8* %351, null
  br i1 %352, label %353, label %355

353:                                              ; preds = %335
  %354 = load i32, i32* @HB_STYLE_FLAG_UNDERLINE, align 4
  store i32 %354, i32* %13, align 4
  br label %364

355:                                              ; preds = %335
  %356 = load i8*, i8** %9, align 8
  %357 = call i32 @strtol(i8* %356, i32* null, i32 0)
  %358 = icmp ne i32 %357, 0
  br i1 %358, label %359, label %361

359:                                              ; preds = %355
  %360 = load i32, i32* @HB_STYLE_FLAG_UNDERLINE, align 4
  br label %362

361:                                              ; preds = %355
  br label %362

362:                                              ; preds = %361, %359
  %363 = phi i32 [ %360, %359 ], [ 0, %361 ]
  store i32 %363, i32* %13, align 4
  br label %364

364:                                              ; preds = %362, %353
  %365 = load i32, i32* %13, align 4
  %366 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %367 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %366, i32 0, i32 4
  %368 = load %struct.TYPE_8__*, %struct.TYPE_8__** %367, align 8
  %369 = load i32, i32* %14, align 4
  %370 = sext i32 %369 to i64
  %371 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %368, i64 %370
  %372 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %371, i32 0, i32 9
  %373 = load i32, i32* %372, align 4
  %374 = or i32 %373, %365
  store i32 %374, i32* %372, align 4
  %375 = load i32, i32* %14, align 4
  %376 = add nsw i32 %375, 1
  %377 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %378 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %377, i32 0, i32 0
  store i32 %376, i32* %378, align 8
  store i32 0, i32* %4, align 4
  br label %379

379:                                              ; preds = %364, %52, %22
  %380 = load i32, i32* %4, align 4
  ret i32 %380
}

declare dso_local i8* @realloc(%struct.TYPE_8__*, i32) #1

declare dso_local i8* @field_value(i8**, i32) #1

declare dso_local i32 @strcasecmp(i8*, i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @strtol(i8*, i32*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @HB_BGR_TO_RGB(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
