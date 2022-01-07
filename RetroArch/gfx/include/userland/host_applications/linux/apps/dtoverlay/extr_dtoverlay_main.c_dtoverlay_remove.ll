; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/dtoverlay/extr_dtoverlay_main.c_dtoverlay_remove.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/dtoverlay/extr_dtoverlay_main.c_dtoverlay_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_5__** }
%struct.TYPE_5__ = type { i8* }

@work_dir = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Failed to chdir to '%s'\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Overlay index (%d) too large\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"Internal error\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"Overlay '%s' is not loaded\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"No overlays loaded\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"%s/%.*s\00", align 1
@dt_overlays_dir = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [32 x i8] c"Failed to remove directory '%s'\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"%d_%.*s\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"%s.dtbo\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"dtparam\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"Failed to re-apply dtparam\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.12 = private unnamed_addr constant [34 x i8] c"out of memory re-applying dtparam\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i8*, i32)* @dtoverlay_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dtoverlay_remove(%struct.TYPE_6__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32*, align 8
  %27 = alloca i8*, align 8
  %28 = alloca i8**, align 8
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i8*, align 8
  %32 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* null, i8** %9, align 8
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  store i32 %35, i32* %12, align 4
  %36 = load i32, i32* @work_dir, align 4
  %37 = call i64 @chdir(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %3
  %40 = load i32, i32* @work_dir, align 4
  %41 = call i32 @fatal_error(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %40)
  br label %42

42:                                               ; preds = %39, %3
  %43 = load i8*, i8** %6, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %45, label %133

45:                                               ; preds = %42
  %46 = load i8*, i8** %6, align 8
  %47 = call i32 @strlen(i8* %46)
  store i32 %47, i32* %11, align 4
  %48 = load i8*, i8** %6, align 8
  %49 = call i32 @strtoul(i8* %48, i8** %10, i32 10)
  store i32 %49, i32* %13, align 4
  %50 = load i8*, i8** %10, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %52, label %74

52:                                               ; preds = %45
  %53 = load i8*, i8** %10, align 8
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %74

57:                                               ; preds = %52
  %58 = load i32, i32* %13, align 4
  %59 = load i32, i32* %12, align 4
  %60 = icmp sge i32 %58, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %57
  %62 = load i32, i32* %13, align 4
  %63 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %62)
  store i32 %63, i32* %4, align 4
  br label %379

64:                                               ; preds = %57
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 1
  %67 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %66, align 8
  %68 = load i32, i32* %13, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %67, i64 %69
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = load i8*, i8** %72, align 8
  store i8* %73, i8** %9, align 8
  br label %126

74:                                               ; preds = %52, %45
  %75 = load i32, i32* %12, align 4
  %76 = sub nsw i32 %75, 1
  store i32 %76, i32* %13, align 4
  br label %77

77:                                               ; preds = %122, %74
  %78 = load i32, i32* %13, align 4
  %79 = icmp sge i32 %78, 0
  br i1 %79, label %80, label %125

80:                                               ; preds = %77
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 1
  %83 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %82, align 8
  %84 = load i32, i32* %13, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %83, i64 %85
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 0
  %89 = load i8*, i8** %88, align 8
  store i8* %89, i8** %9, align 8
  %90 = load i8*, i8** %9, align 8
  %91 = call i8* @strchr(i8* %90, i8 signext 95)
  store i8* %91, i8** %15, align 8
  %92 = load i8*, i8** %15, align 8
  %93 = icmp ne i8* %92, null
  br i1 %93, label %96, label %94

94:                                               ; preds = %80
  %95 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  store i32 %95, i32* %4, align 4
  br label %379

96:                                               ; preds = %80
  %97 = load i8*, i8** %15, align 8
  %98 = getelementptr inbounds i8, i8* %97, i32 1
  store i8* %98, i8** %15, align 8
  %99 = load i8*, i8** %15, align 8
  %100 = call i8* @strchr(i8* %99, i8 signext 46)
  store i8* %100, i8** %16, align 8
  %101 = load i8*, i8** %16, align 8
  %102 = icmp ne i8* %101, null
  br i1 %102, label %105, label %103

103:                                              ; preds = %96
  %104 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  store i32 %104, i32* %4, align 4
  br label %379

105:                                              ; preds = %96
  %106 = load i8*, i8** %16, align 8
  %107 = load i8*, i8** %15, align 8
  %108 = ptrtoint i8* %106 to i64
  %109 = ptrtoint i8* %107 to i64
  %110 = sub i64 %108, %109
  %111 = load i32, i32* %11, align 4
  %112 = sext i32 %111 to i64
  %113 = icmp eq i64 %110, %112
  br i1 %113, label %114, label %121

114:                                              ; preds = %105
  %115 = load i8*, i8** %6, align 8
  %116 = load i8*, i8** %15, align 8
  %117 = load i32, i32* %11, align 4
  %118 = call i64 @memcmp(i8* %115, i8* %116, i32 %117)
  %119 = icmp eq i64 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %114
  br label %125

121:                                              ; preds = %114, %105
  store i8* null, i8** %9, align 8
  br label %122

122:                                              ; preds = %121
  %123 = load i32, i32* %13, align 4
  %124 = add nsw i32 %123, -1
  store i32 %124, i32* %13, align 4
  br label %77

125:                                              ; preds = %120, %77
  br label %126

126:                                              ; preds = %125, %64
  %127 = load i32, i32* %13, align 4
  %128 = icmp slt i32 %127, 0
  br i1 %128, label %129, label %132

129:                                              ; preds = %126
  %130 = load i8*, i8** %6, align 8
  %131 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i8* %130)
  store i32 %131, i32* %4, align 4
  br label %379

132:                                              ; preds = %126
  br label %156

133:                                              ; preds = %42
  %134 = load i32, i32* %12, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %138, label %136

136:                                              ; preds = %133
  %137 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  store i32 %137, i32* %4, align 4
  br label %379

138:                                              ; preds = %133
  %139 = load i32, i32* %7, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %138
  br label %145

142:                                              ; preds = %138
  %143 = load i32, i32* %12, align 4
  %144 = sub nsw i32 %143, 1
  br label %145

145:                                              ; preds = %142, %141
  %146 = phi i32 [ 0, %141 ], [ %144, %142 ]
  store i32 %146, i32* %13, align 4
  %147 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i32 0, i32 1
  %149 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %148, align 8
  %150 = load i32, i32* %13, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %149, i64 %151
  %153 = load %struct.TYPE_5__*, %struct.TYPE_5__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %153, i32 0, i32 0
  %155 = load i8*, i8** %154, align 8
  store i8* %155, i8** %9, align 8
  br label %156

156:                                              ; preds = %145, %132
  %157 = load i32, i32* %13, align 4
  %158 = load i32, i32* %12, align 4
  %159 = icmp slt i32 %157, %158
  br i1 %159, label %160, label %378

160:                                              ; preds = %156
  %161 = load i32, i32* %12, align 4
  %162 = sub nsw i32 %161, 1
  store i32 %162, i32* %14, align 4
  br label %163

163:                                              ; preds = %201, %160
  %164 = load i32, i32* %14, align 4
  %165 = load i32, i32* %13, align 4
  %166 = icmp sge i32 %164, %165
  br i1 %166, label %167, label %204

167:                                              ; preds = %163
  %168 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %168, i32 0, i32 1
  %170 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %169, align 8
  %171 = load i32, i32* %14, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %170, i64 %172
  %174 = load %struct.TYPE_5__*, %struct.TYPE_5__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %174, i32 0, i32 0
  %176 = load i8*, i8** %175, align 8
  store i8* %176, i8** %17, align 8
  %177 = load i8*, i8** %17, align 8
  %178 = call i8* @strrchr(i8* %177, i8 signext 46)
  store i8* %178, i8** %18, align 8
  %179 = load i8*, i8** %18, align 8
  %180 = icmp ne i8* %179, null
  br i1 %180, label %183, label %181

181:                                              ; preds = %167
  %182 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  store i32 %182, i32* %4, align 4
  br label %379

183:                                              ; preds = %167
  %184 = load i32, i32* @dt_overlays_dir, align 4
  %185 = load i8*, i8** %18, align 8
  %186 = load i8*, i8** %17, align 8
  %187 = ptrtoint i8* %185 to i64
  %188 = ptrtoint i8* %186 to i64
  %189 = sub i64 %187, %188
  %190 = load i8*, i8** %17, align 8
  %191 = call i8* (i8*, ...) @sprintf_dup(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 %184, i64 %189, i8* %190)
  store i8* %191, i8** %8, align 8
  %192 = load i8*, i8** %8, align 8
  %193 = call i64 @rmdir(i8* %192)
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %198

195:                                              ; preds = %183
  %196 = load i8*, i8** %8, align 8
  %197 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0), i8* %196)
  store i32 %197, i32* %4, align 4
  br label %379

198:                                              ; preds = %183
  %199 = load i8*, i8** %8, align 8
  %200 = call i32 @free_string(i8* %199)
  br label %201

201:                                              ; preds = %198
  %202 = load i32, i32* %14, align 4
  %203 = add nsw i32 %202, -1
  store i32 %203, i32* %14, align 4
  br label %163

204:                                              ; preds = %163
  %205 = load i32, i32* %13, align 4
  store i32 %205, i32* %14, align 4
  %206 = load i32, i32* %13, align 4
  %207 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %208 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %207, i32 0, i32 0
  store i32 %206, i32* %208, align 8
  br label %209

209:                                              ; preds = %374, %204
  %210 = load i32, i32* %14, align 4
  %211 = load i32, i32* %12, align 4
  %212 = icmp slt i32 %210, %211
  br i1 %212, label %213, label %377

213:                                              ; preds = %209
  %214 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %215 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %214, i32 0, i32 1
  %216 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %215, align 8
  %217 = load i32, i32* %14, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %216, i64 %218
  %220 = load %struct.TYPE_5__*, %struct.TYPE_5__** %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %220, i32 0, i32 0
  %222 = load i8*, i8** %221, align 8
  store i8* %222, i8** %21, align 8
  %223 = load i8*, i8** %21, align 8
  %224 = call i8* @strchr(i8* %223, i8 signext 95)
  store i8* %224, i8** %19, align 8
  %225 = load i8*, i8** %19, align 8
  %226 = icmp ne i8* %225, null
  br i1 %226, label %229, label %227

227:                                              ; preds = %213
  %228 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  store i32 %228, i32* %4, align 4
  br label %379

229:                                              ; preds = %213
  %230 = load i8*, i8** %19, align 8
  %231 = getelementptr inbounds i8, i8* %230, i32 1
  store i8* %231, i8** %19, align 8
  %232 = load i8*, i8** %19, align 8
  %233 = call i8* @strchr(i8* %232, i8 signext 46)
  store i8* %233, i8** %20, align 8
  %234 = load i8*, i8** %20, align 8
  %235 = icmp ne i8* %234, null
  br i1 %235, label %238, label %236

236:                                              ; preds = %229
  %237 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  store i32 %237, i32* %4, align 4
  br label %379

238:                                              ; preds = %229
  %239 = load i32, i32* %7, align 4
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %245, label %241

241:                                              ; preds = %238
  %242 = load i32, i32* %14, align 4
  %243 = load i32, i32* %13, align 4
  %244 = icmp eq i32 %242, %243
  br i1 %244, label %245, label %248

245:                                              ; preds = %241, %238
  %246 = load i8*, i8** %21, align 8
  %247 = call i32 @unlink(i8* %246)
  br label %373

248:                                              ; preds = %241
  %249 = load i8*, i8** %20, align 8
  %250 = load i8*, i8** %19, align 8
  %251 = ptrtoint i8* %249 to i64
  %252 = ptrtoint i8* %250 to i64
  %253 = sub i64 %251, %252
  %254 = trunc i64 %253 to i32
  store i32 %254, i32* %22, align 4
  %255 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %256 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 8
  %258 = load i32, i32* %22, align 4
  %259 = load i8*, i8** %19, align 8
  %260 = call i8* (i8*, ...) @sprintf_dup(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i32 %257, i32 %258, i8* %259)
  store i8* %260, i8** %23, align 8
  %261 = load i8*, i8** %23, align 8
  %262 = call i8* (i8*, ...) @sprintf_dup(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i8* %261)
  store i8* %262, i8** %24, align 8
  store i32 0, i32* %25, align 4
  %263 = load i32, i32* %22, align 4
  %264 = icmp eq i32 %263, 7
  br i1 %264, label %265, label %353

265:                                              ; preds = %248
  %266 = load i8*, i8** %19, align 8
  %267 = call i64 @memcmp(i8* %266, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i32 7)
  %268 = icmp eq i64 %267, 0
  br i1 %268, label %269, label %353

269:                                              ; preds = %265
  %270 = load i8*, i8** %21, align 8
  %271 = call i32* @dtoverlay_load_dtb(i8* %270, i32 0)
  store i32* %271, i32** %26, align 8
  %272 = load i8*, i8** %21, align 8
  %273 = call i32 @unlink(i8* %272)
  %274 = load i32*, i32** %26, align 8
  %275 = icmp ne i32* %274, null
  br i1 %275, label %278, label %276

276:                                              ; preds = %269
  %277 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i64 0, i64 0))
  br label %374

278:                                              ; preds = %269
  %279 = load i32*, i32** %26, align 8
  %280 = call i64 @dtoverlay_dtb_trailer(i32* %279)
  %281 = inttoptr i64 %280 to i8*
  store i8* %281, i8** %27, align 8
  %282 = load i8*, i8** %27, align 8
  %283 = icmp ne i8* %282, null
  br i1 %283, label %288, label %284

284:                                              ; preds = %278
  %285 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i64 0, i64 0))
  %286 = load i32*, i32** %26, align 8
  %287 = call i32 @dtoverlay_free_dtb(i32* %286)
  br label %374

288:                                              ; preds = %278
  %289 = load i8*, i8** %27, align 8
  store i8* %289, i8** %31, align 8
  store i32 0, i32* %29, align 4
  br label %290

290:                                              ; preds = %294, %288
  %291 = load i8*, i8** %31, align 8
  %292 = load i8, i8* %291, align 1
  %293 = icmp ne i8 %292, 0
  br i1 %293, label %294, label %305

294:                                              ; preds = %290
  %295 = load i8*, i8** %31, align 8
  %296 = getelementptr inbounds i8, i8* %295, i32 1
  store i8* %296, i8** %31, align 8
  store i8 0, i8* %295, align 1
  %297 = load i8*, i8** %31, align 8
  %298 = call i32 @strcspn(i8* %297, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0))
  store i32 %298, i32* %32, align 4
  %299 = load i32, i32* %29, align 4
  %300 = add nsw i32 %299, 1
  store i32 %300, i32* %29, align 4
  %301 = load i32, i32* %32, align 4
  %302 = load i8*, i8** %31, align 8
  %303 = sext i32 %301 to i64
  %304 = getelementptr inbounds i8, i8* %302, i64 %303
  store i8* %304, i8** %31, align 8
  br label %290

305:                                              ; preds = %290
  %306 = load i32, i32* %29, align 4
  %307 = add nsw i32 %306, 1
  %308 = sext i32 %307 to i64
  %309 = mul i64 %308, 8
  %310 = trunc i64 %309 to i32
  %311 = call i8** @malloc(i32 %310)
  store i8** %311, i8*** %28, align 8
  %312 = load i8**, i8*** %28, align 8
  %313 = icmp ne i8** %312, null
  br i1 %313, label %318, label %314

314:                                              ; preds = %305
  %315 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.12, i64 0, i64 0))
  %316 = load i32*, i32** %26, align 8
  %317 = call i32 @dtoverlay_free_dtb(i32* %316)
  br label %374

318:                                              ; preds = %305
  store i32 0, i32* %30, align 4
  %319 = load i8*, i8** %27, align 8
  %320 = getelementptr inbounds i8, i8* %319, i64 1
  store i8* %320, i8** %31, align 8
  br label %321

321:                                              ; preds = %337, %318
  %322 = load i32, i32* %30, align 4
  %323 = load i32, i32* %29, align 4
  %324 = icmp slt i32 %322, %323
  br i1 %324, label %325, label %340

325:                                              ; preds = %321
  %326 = load i8*, i8** %31, align 8
  %327 = load i8**, i8*** %28, align 8
  %328 = load i32, i32* %30, align 4
  %329 = sext i32 %328 to i64
  %330 = getelementptr inbounds i8*, i8** %327, i64 %329
  store i8* %326, i8** %330, align 8
  %331 = load i8*, i8** %31, align 8
  %332 = call i32 @strlen(i8* %331)
  %333 = add nsw i32 %332, 1
  %334 = load i8*, i8** %31, align 8
  %335 = sext i32 %333 to i64
  %336 = getelementptr inbounds i8, i8* %334, i64 %335
  store i8* %336, i8** %31, align 8
  br label %337

337:                                              ; preds = %325
  %338 = load i32, i32* %30, align 4
  %339 = add nsw i32 %338, 1
  store i32 %339, i32* %30, align 4
  br label %321

340:                                              ; preds = %321
  %341 = load i8**, i8*** %28, align 8
  %342 = load i32, i32* %30, align 4
  %343 = sext i32 %342 to i64
  %344 = getelementptr inbounds i8*, i8** %341, i64 %343
  store i8* null, i8** %344, align 8
  %345 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %346 = load i32, i32* %29, align 4
  %347 = load i8**, i8*** %28, align 8
  %348 = call i32 @dtoverlay_add(%struct.TYPE_6__* %345, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i32 %346, i8** %347)
  store i32 %348, i32* %25, align 4
  %349 = load i8**, i8*** %28, align 8
  %350 = call i32 @free(i8** %349)
  %351 = load i32*, i32** %26, align 8
  %352 = call i32 @dtoverlay_free_dtb(i32* %351)
  br label %363

353:                                              ; preds = %265, %248
  %354 = load i8*, i8** %21, align 8
  %355 = load i8*, i8** %24, align 8
  %356 = call i32 @rename(i8* %354, i8* %355)
  %357 = load i8*, i8** %24, align 8
  %358 = load i8*, i8** %23, align 8
  %359 = call i32 @apply_overlay(i8* %357, i8* %358)
  %360 = icmp ne i32 %359, 0
  %361 = xor i1 %360, true
  %362 = zext i1 %361 to i32
  store i32 %362, i32* %25, align 4
  br label %363

363:                                              ; preds = %353, %340
  %364 = load i32, i32* %25, align 4
  %365 = icmp ne i32 %364, 0
  br i1 %365, label %366, label %368

366:                                              ; preds = %363
  %367 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i64 0, i64 0))
  br label %374

368:                                              ; preds = %363
  %369 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %370 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %369, i32 0, i32 0
  %371 = load i32, i32* %370, align 8
  %372 = add nsw i32 %371, 1
  store i32 %372, i32* %370, align 8
  br label %373

373:                                              ; preds = %368, %245
  br label %374

374:                                              ; preds = %373, %366, %314, %284, %276
  %375 = load i32, i32* %14, align 4
  %376 = add nsw i32 %375, 1
  store i32 %376, i32* %14, align 4
  br label %209

377:                                              ; preds = %209
  br label %378

378:                                              ; preds = %377, %156
  store i32 0, i32* %4, align 4
  br label %379

379:                                              ; preds = %378, %236, %227, %195, %181, %136, %129, %103, %94, %61
  %380 = load i32, i32* %4, align 4
  ret i32 %380
}

declare dso_local i64 @chdir(i32) #1

declare dso_local i32 @fatal_error(i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strtoul(i8*, i8**, i32) #1

declare dso_local i32 @error(i8*, ...) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i8* @sprintf_dup(i8*, ...) #1

declare dso_local i64 @rmdir(i8*) #1

declare dso_local i32 @free_string(i8*) #1

declare dso_local i32 @unlink(i8*) #1

declare dso_local i32* @dtoverlay_load_dtb(i8*, i32) #1

declare dso_local i64 @dtoverlay_dtb_trailer(i32*) #1

declare dso_local i32 @dtoverlay_free_dtb(i32*) #1

declare dso_local i32 @strcspn(i8*, i8*) #1

declare dso_local i8** @malloc(i32) #1

declare dso_local i32 @dtoverlay_add(%struct.TYPE_6__*, i8*, i32, i8**) #1

declare dso_local i32 @free(i8**) #1

declare dso_local i32 @rename(i8*, i8*) #1

declare dso_local i32 @apply_overlay(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
