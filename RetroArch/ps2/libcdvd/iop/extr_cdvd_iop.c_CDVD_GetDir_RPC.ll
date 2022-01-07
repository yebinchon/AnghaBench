; ModuleID = '/home/carl/AnghaBench/RetroArch/ps2/libcdvd/iop/extr_cdvd_iop.c_CDVD_GetDir_RPC.c'
source_filename = "/home/carl/AnghaBench/RetroArch/ps2/libcdvd/iop/extr_cdvd_iop.c_CDVD_GetDir_RPC.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i8*, i8*, i64, i32, i64 }
%struct.TocEntry = type { i32 }
%struct.dirTocEntry = type { i32, i32 }
%struct.t_SifDmaTransfer = type { i32, i64, %struct.TocEntry*, %struct.TocEntry* }

@CACHE_START = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@CDVD_GET_DIRS_ONLY = common dso_local global i32 0, align 4
@CDVD_GET_FILES_AND_DIRS = common dso_local global i32 0, align 4
@CachedDirInfo = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str = private unnamed_addr constant [3 x i8] c"..\00", align 1
@CACHE_NEXT = common dso_local global i32 0, align 4
@CDVD_GET_FILES_ONLY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CDVD_GetDir_RPC(i8* %0, i8* %1, i32 %2, %struct.TocEntry* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TocEntry*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TocEntry, align 4
  %15 = alloca %struct.dirTocEntry*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.t_SifDmaTransfer, align 8
  %18 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.TocEntry* %3, %struct.TocEntry** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %12, align 4
  %19 = load i8*, i8** %7, align 8
  %20 = load i32, i32* @CACHE_START, align 4
  %21 = call i64 @CDVD_Cache_Dir(i8* %19, i32 %20)
  %22 = load i64, i64* @TRUE, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  br label %357

25:                                               ; preds = %5
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* @CDVD_GET_DIRS_ONLY, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %33, label %29

29:                                               ; preds = %25
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* @CDVD_GET_FILES_AND_DIRS, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %181

33:                                               ; preds = %29, %25
  %34 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @CachedDirInfo, i32 0, i32 1), align 8
  %35 = load i32, i32* @CACHE_START, align 4
  %36 = call i64 @CDVD_Cache_Dir(i8* %34, i32 %35)
  %37 = load i64, i64* @TRUE, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  store i32 -1, i32* %6, align 4
  br label %357

40:                                               ; preds = %33
  %41 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @CachedDirInfo, i32 0, i32 2), align 8
  %42 = bitcast i8* %41 to %struct.dirTocEntry*
  store %struct.dirTocEntry* %42, %struct.dirTocEntry** %15, align 8
  %43 = load %struct.dirTocEntry*, %struct.dirTocEntry** %15, align 8
  %44 = bitcast %struct.dirTocEntry* %43 to i32*
  %45 = load %struct.dirTocEntry*, %struct.dirTocEntry** %15, align 8
  %46 = getelementptr inbounds %struct.dirTocEntry, %struct.dirTocEntry* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %44, i64 %48
  %50 = bitcast i32* %49 to %struct.dirTocEntry*
  store %struct.dirTocEntry* %50, %struct.dirTocEntry** %15, align 8
  %51 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @CachedDirInfo, i32 0, i32 3), align 8
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %62

53:                                               ; preds = %40
  %54 = load %struct.dirTocEntry*, %struct.dirTocEntry** %15, align 8
  %55 = bitcast %struct.dirTocEntry* %54 to i32*
  %56 = load %struct.dirTocEntry*, %struct.dirTocEntry** %15, align 8
  %57 = getelementptr inbounds %struct.dirTocEntry, %struct.dirTocEntry* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %55, i64 %59
  %61 = bitcast i32* %60 to %struct.dirTocEntry*
  store %struct.dirTocEntry* %61, %struct.dirTocEntry** %15, align 8
  br label %62

62:                                               ; preds = %53, %40
  store i32 0, i32* %13, align 4
  br label %63

63:                                               ; preds = %62, %177
  br label %64

64:                                               ; preds = %151, %63
  %65 = load %struct.dirTocEntry*, %struct.dirTocEntry** %15, align 8
  %66 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @CachedDirInfo, i32 0, i32 2), align 8
  %67 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @CachedDirInfo, i32 0, i32 4), align 8
  %68 = mul nsw i32 %67, 2048
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8, i8* %66, i64 %69
  %71 = bitcast i8* %70 to %struct.dirTocEntry*
  %72 = icmp ult %struct.dirTocEntry* %65, %71
  br i1 %72, label %73, label %160

73:                                               ; preds = %64
  %74 = load %struct.dirTocEntry*, %struct.dirTocEntry** %15, align 8
  %75 = getelementptr inbounds %struct.dirTocEntry, %struct.dirTocEntry* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %91

78:                                               ; preds = %73
  %79 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @CachedDirInfo, i32 0, i32 2), align 8
  %80 = load %struct.dirTocEntry*, %struct.dirTocEntry** %15, align 8
  %81 = bitcast %struct.dirTocEntry* %80 to i8*
  %82 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @CachedDirInfo, i32 0, i32 2), align 8
  %83 = ptrtoint i8* %81 to i64
  %84 = ptrtoint i8* %82 to i64
  %85 = sub i64 %83, %84
  %86 = sdiv i64 %85, 2048
  %87 = add nsw i64 %86, 1
  %88 = mul nsw i64 %87, 2048
  %89 = getelementptr inbounds i8, i8* %79, i64 %88
  %90 = bitcast i8* %89 to %struct.dirTocEntry*
  store %struct.dirTocEntry* %90, %struct.dirTocEntry** %15, align 8
  br label %91

91:                                               ; preds = %78, %73
  %92 = load %struct.dirTocEntry*, %struct.dirTocEntry** %15, align 8
  %93 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @CachedDirInfo, i32 0, i32 2), align 8
  %94 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @CachedDirInfo, i32 0, i32 4), align 8
  %95 = mul nsw i32 %94, 2048
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i8, i8* %93, i64 %96
  %98 = bitcast i8* %97 to %struct.dirTocEntry*
  %99 = icmp uge %struct.dirTocEntry* %92, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %91
  br label %160

101:                                              ; preds = %91
  %102 = load %struct.dirTocEntry*, %struct.dirTocEntry** %15, align 8
  %103 = getelementptr inbounds %struct.dirTocEntry, %struct.dirTocEntry* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = and i32 %104, 2
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %141

107:                                              ; preds = %101
  br label %108

108:                                              ; preds = %112, %107
  %109 = load i32, i32* %18, align 4
  %110 = call i64 @sceSifDmaStat(i32 %109)
  %111 = icmp sge i64 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %108
  br label %108

113:                                              ; preds = %108
  %114 = load %struct.dirTocEntry*, %struct.dirTocEntry** %15, align 8
  %115 = call i32 @TocEntryCopy(%struct.TocEntry* %14, %struct.dirTocEntry* %114)
  %116 = load i32, i32* %13, align 4
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %126

118:                                              ; preds = %113
  %119 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @CachedDirInfo, i32 0, i32 3), align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %125

121:                                              ; preds = %118
  %122 = getelementptr inbounds %struct.TocEntry, %struct.TocEntry* %14, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @strcpy(i32 %123, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  br label %125

125:                                              ; preds = %121, %118
  br label %126

126:                                              ; preds = %125, %113
  %127 = getelementptr inbounds %struct.t_SifDmaTransfer, %struct.t_SifDmaTransfer* %17, i32 0, i32 3
  store %struct.TocEntry* %14, %struct.TocEntry** %127, align 8
  %128 = load %struct.TocEntry*, %struct.TocEntry** %10, align 8
  %129 = load i32, i32* %12, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.TocEntry, %struct.TocEntry* %128, i64 %130
  %132 = getelementptr inbounds %struct.t_SifDmaTransfer, %struct.t_SifDmaTransfer* %17, i32 0, i32 2
  store %struct.TocEntry* %131, %struct.TocEntry** %132, align 8
  %133 = getelementptr inbounds %struct.t_SifDmaTransfer, %struct.t_SifDmaTransfer* %17, i32 0, i32 0
  store i32 4, i32* %133, align 8
  %134 = getelementptr inbounds %struct.t_SifDmaTransfer, %struct.t_SifDmaTransfer* %17, i32 0, i32 1
  store i64 0, i64* %134, align 8
  %135 = call i32 @CpuSuspendIntr(i32* %16)
  %136 = call i32 @sceSifSetDma(%struct.t_SifDmaTransfer* %17, i32 1)
  store i32 %136, i32* %18, align 4
  %137 = load i32, i32* %16, align 4
  %138 = call i32 @CpuResumeIntr(i32 %137)
  %139 = load i32, i32* %12, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %12, align 4
  br label %142

141:                                              ; preds = %101
  br label %142

142:                                              ; preds = %141, %126
  %143 = load i32, i32* %13, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %13, align 4
  %145 = load i32, i32* %12, align 4
  %146 = load i32, i32* %11, align 4
  %147 = icmp uge i32 %145, %146
  br i1 %147, label %148, label %150

148:                                              ; preds = %142
  %149 = load i32, i32* %12, align 4
  store i32 %149, i32* %6, align 4
  br label %357

150:                                              ; preds = %142
  br label %151

151:                                              ; preds = %150
  %152 = load %struct.dirTocEntry*, %struct.dirTocEntry** %15, align 8
  %153 = bitcast %struct.dirTocEntry* %152 to i32*
  %154 = load %struct.dirTocEntry*, %struct.dirTocEntry** %15, align 8
  %155 = getelementptr inbounds %struct.dirTocEntry, %struct.dirTocEntry* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i32, i32* %153, i64 %157
  %159 = bitcast i32* %158 to %struct.dirTocEntry*
  store %struct.dirTocEntry* %159, %struct.dirTocEntry** %15, align 8
  br label %64

160:                                              ; preds = %100, %64
  %161 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @CachedDirInfo, i32 0, i32 5), align 8
  %162 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @CachedDirInfo, i32 0, i32 4), align 8
  %163 = sext i32 %162 to i64
  %164 = add nsw i64 %161, %163
  %165 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @CachedDirInfo, i32 0, i32 0), align 8
  %166 = sext i32 %165 to i64
  %167 = icmp slt i64 %164, %166
  br i1 %167, label %168, label %176

168:                                              ; preds = %160
  %169 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @CachedDirInfo, i32 0, i32 1), align 8
  %170 = load i32, i32* @CACHE_NEXT, align 4
  %171 = call i64 @CDVD_Cache_Dir(i8* %169, i32 %170)
  %172 = load i64, i64* @TRUE, align 8
  %173 = icmp ne i64 %171, %172
  br i1 %173, label %174, label %175

174:                                              ; preds = %168
  store i32 -1, i32* %6, align 4
  br label %357

175:                                              ; preds = %168
  br label %177

176:                                              ; preds = %160
  br label %180

177:                                              ; preds = %175
  %178 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @CachedDirInfo, i32 0, i32 2), align 8
  %179 = bitcast i8* %178 to %struct.dirTocEntry*
  store %struct.dirTocEntry* %179, %struct.dirTocEntry** %15, align 8
  br label %63

180:                                              ; preds = %176
  br label %181

181:                                              ; preds = %180, %29
  %182 = load i32, i32* %9, align 4
  %183 = load i32, i32* @CDVD_GET_FILES_ONLY, align 4
  %184 = icmp eq i32 %182, %183
  br i1 %184, label %189, label %185

185:                                              ; preds = %181
  %186 = load i32, i32* %9, align 4
  %187 = load i32, i32* @CDVD_GET_FILES_AND_DIRS, align 4
  %188 = icmp eq i32 %186, %187
  br i1 %188, label %189, label %355

189:                                              ; preds = %185, %181
  %190 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @CachedDirInfo, i32 0, i32 1), align 8
  %191 = load i32, i32* @CACHE_START, align 4
  %192 = call i64 @CDVD_Cache_Dir(i8* %190, i32 %191)
  %193 = load i64, i64* @TRUE, align 8
  %194 = icmp ne i64 %192, %193
  br i1 %194, label %195, label %196

195:                                              ; preds = %189
  store i32 -1, i32* %6, align 4
  br label %357

196:                                              ; preds = %189
  %197 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @CachedDirInfo, i32 0, i32 2), align 8
  %198 = bitcast i8* %197 to %struct.dirTocEntry*
  store %struct.dirTocEntry* %198, %struct.dirTocEntry** %15, align 8
  %199 = load %struct.dirTocEntry*, %struct.dirTocEntry** %15, align 8
  %200 = bitcast %struct.dirTocEntry* %199 to i32*
  %201 = load %struct.dirTocEntry*, %struct.dirTocEntry** %15, align 8
  %202 = getelementptr inbounds %struct.dirTocEntry, %struct.dirTocEntry* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i32, i32* %200, i64 %204
  %206 = bitcast i32* %205 to %struct.dirTocEntry*
  store %struct.dirTocEntry* %206, %struct.dirTocEntry** %15, align 8
  %207 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @CachedDirInfo, i32 0, i32 3), align 8
  %208 = icmp eq i64 %207, 0
  br i1 %208, label %209, label %218

209:                                              ; preds = %196
  %210 = load %struct.dirTocEntry*, %struct.dirTocEntry** %15, align 8
  %211 = bitcast %struct.dirTocEntry* %210 to i32*
  %212 = load %struct.dirTocEntry*, %struct.dirTocEntry** %15, align 8
  %213 = getelementptr inbounds %struct.dirTocEntry, %struct.dirTocEntry* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds i32, i32* %211, i64 %215
  %217 = bitcast i32* %216 to %struct.dirTocEntry*
  store %struct.dirTocEntry* %217, %struct.dirTocEntry** %15, align 8
  br label %218

218:                                              ; preds = %209, %196
  store i32 0, i32* %13, align 4
  br label %219

219:                                              ; preds = %218, %351
  br label %220

220:                                              ; preds = %325, %219
  %221 = load %struct.dirTocEntry*, %struct.dirTocEntry** %15, align 8
  %222 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @CachedDirInfo, i32 0, i32 2), align 8
  %223 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @CachedDirInfo, i32 0, i32 4), align 8
  %224 = mul nsw i32 %223, 2048
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds i8, i8* %222, i64 %225
  %227 = bitcast i8* %226 to %struct.dirTocEntry*
  %228 = icmp ult %struct.dirTocEntry* %221, %227
  br i1 %228, label %229, label %334

229:                                              ; preds = %220
  %230 = load %struct.dirTocEntry*, %struct.dirTocEntry** %15, align 8
  %231 = getelementptr inbounds %struct.dirTocEntry, %struct.dirTocEntry* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 4
  %233 = icmp eq i32 %232, 0
  br i1 %233, label %234, label %247

234:                                              ; preds = %229
  %235 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @CachedDirInfo, i32 0, i32 2), align 8
  %236 = load %struct.dirTocEntry*, %struct.dirTocEntry** %15, align 8
  %237 = bitcast %struct.dirTocEntry* %236 to i8*
  %238 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @CachedDirInfo, i32 0, i32 2), align 8
  %239 = ptrtoint i8* %237 to i64
  %240 = ptrtoint i8* %238 to i64
  %241 = sub i64 %239, %240
  %242 = sdiv i64 %241, 2048
  %243 = add nsw i64 %242, 1
  %244 = mul nsw i64 %243, 2048
  %245 = getelementptr inbounds i8, i8* %235, i64 %244
  %246 = bitcast i8* %245 to %struct.dirTocEntry*
  store %struct.dirTocEntry* %246, %struct.dirTocEntry** %15, align 8
  br label %247

247:                                              ; preds = %234, %229
  %248 = load %struct.dirTocEntry*, %struct.dirTocEntry** %15, align 8
  %249 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @CachedDirInfo, i32 0, i32 2), align 8
  %250 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @CachedDirInfo, i32 0, i32 4), align 8
  %251 = mul nsw i32 %250, 2048
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds i8, i8* %249, i64 %252
  %254 = bitcast i8* %253 to %struct.dirTocEntry*
  %255 = icmp uge %struct.dirTocEntry* %248, %254
  br i1 %255, label %256, label %257

256:                                              ; preds = %247
  br label %334

257:                                              ; preds = %247
  %258 = load %struct.dirTocEntry*, %struct.dirTocEntry** %15, align 8
  %259 = getelementptr inbounds %struct.dirTocEntry, %struct.dirTocEntry* %258, i32 0, i32 1
  %260 = load i32, i32* %259, align 4
  %261 = and i32 %260, 2
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %263, label %264

263:                                              ; preds = %257
  br label %316

264:                                              ; preds = %257
  br label %265

265:                                              ; preds = %269, %264
  %266 = load i32, i32* %18, align 4
  %267 = call i64 @sceSifDmaStat(i32 %266)
  %268 = icmp sge i64 %267, 0
  br i1 %268, label %269, label %270

269:                                              ; preds = %265
  br label %265

270:                                              ; preds = %265
  %271 = load %struct.dirTocEntry*, %struct.dirTocEntry** %15, align 8
  %272 = call i32 @TocEntryCopy(%struct.TocEntry* %14, %struct.dirTocEntry* %271)
  %273 = load i8*, i8** %8, align 8
  %274 = call i64 @strlen(i8* %273)
  %275 = icmp sgt i64 %274, 0
  br i1 %275, label %276, label %300

276:                                              ; preds = %270
  %277 = getelementptr inbounds %struct.TocEntry, %struct.TocEntry* %14, i32 0, i32 0
  %278 = load i32, i32* %277, align 4
  %279 = load i8*, i8** %8, align 8
  %280 = call i64 @TocEntryCompare(i32 %278, i8* %279)
  %281 = load i64, i64* @TRUE, align 8
  %282 = icmp eq i64 %280, %281
  br i1 %282, label %283, label %298

283:                                              ; preds = %276
  %284 = getelementptr inbounds %struct.t_SifDmaTransfer, %struct.t_SifDmaTransfer* %17, i32 0, i32 3
  store %struct.TocEntry* %14, %struct.TocEntry** %284, align 8
  %285 = load %struct.TocEntry*, %struct.TocEntry** %10, align 8
  %286 = load i32, i32* %12, align 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds %struct.TocEntry, %struct.TocEntry* %285, i64 %287
  %289 = getelementptr inbounds %struct.t_SifDmaTransfer, %struct.t_SifDmaTransfer* %17, i32 0, i32 2
  store %struct.TocEntry* %288, %struct.TocEntry** %289, align 8
  %290 = getelementptr inbounds %struct.t_SifDmaTransfer, %struct.t_SifDmaTransfer* %17, i32 0, i32 0
  store i32 4, i32* %290, align 8
  %291 = getelementptr inbounds %struct.t_SifDmaTransfer, %struct.t_SifDmaTransfer* %17, i32 0, i32 1
  store i64 0, i64* %291, align 8
  %292 = call i32 @CpuSuspendIntr(i32* %16)
  %293 = call i32 @sceSifSetDma(%struct.t_SifDmaTransfer* %17, i32 1)
  store i32 %293, i32* %18, align 4
  %294 = load i32, i32* %16, align 4
  %295 = call i32 @CpuResumeIntr(i32 %294)
  %296 = load i32, i32* %12, align 4
  %297 = add nsw i32 %296, 1
  store i32 %297, i32* %12, align 4
  br label %299

298:                                              ; preds = %276
  br label %299

299:                                              ; preds = %298, %283
  br label %315

300:                                              ; preds = %270
  %301 = getelementptr inbounds %struct.t_SifDmaTransfer, %struct.t_SifDmaTransfer* %17, i32 0, i32 3
  store %struct.TocEntry* %14, %struct.TocEntry** %301, align 8
  %302 = load %struct.TocEntry*, %struct.TocEntry** %10, align 8
  %303 = load i32, i32* %12, align 4
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds %struct.TocEntry, %struct.TocEntry* %302, i64 %304
  %306 = getelementptr inbounds %struct.t_SifDmaTransfer, %struct.t_SifDmaTransfer* %17, i32 0, i32 2
  store %struct.TocEntry* %305, %struct.TocEntry** %306, align 8
  %307 = getelementptr inbounds %struct.t_SifDmaTransfer, %struct.t_SifDmaTransfer* %17, i32 0, i32 0
  store i32 4, i32* %307, align 8
  %308 = getelementptr inbounds %struct.t_SifDmaTransfer, %struct.t_SifDmaTransfer* %17, i32 0, i32 1
  store i64 0, i64* %308, align 8
  %309 = call i32 @CpuSuspendIntr(i32* %16)
  %310 = call i32 @sceSifSetDma(%struct.t_SifDmaTransfer* %17, i32 1)
  store i32 %310, i32* %18, align 4
  %311 = load i32, i32* %16, align 4
  %312 = call i32 @CpuResumeIntr(i32 %311)
  %313 = load i32, i32* %12, align 4
  %314 = add nsw i32 %313, 1
  store i32 %314, i32* %12, align 4
  br label %315

315:                                              ; preds = %300, %299
  br label %316

316:                                              ; preds = %315, %263
  %317 = load i32, i32* %13, align 4
  %318 = add nsw i32 %317, 1
  store i32 %318, i32* %13, align 4
  %319 = load i32, i32* %12, align 4
  %320 = load i32, i32* %11, align 4
  %321 = icmp uge i32 %319, %320
  br i1 %321, label %322, label %324

322:                                              ; preds = %316
  %323 = load i32, i32* %12, align 4
  store i32 %323, i32* %6, align 4
  br label %357

324:                                              ; preds = %316
  br label %325

325:                                              ; preds = %324
  %326 = load %struct.dirTocEntry*, %struct.dirTocEntry** %15, align 8
  %327 = bitcast %struct.dirTocEntry* %326 to i32*
  %328 = load %struct.dirTocEntry*, %struct.dirTocEntry** %15, align 8
  %329 = getelementptr inbounds %struct.dirTocEntry, %struct.dirTocEntry* %328, i32 0, i32 0
  %330 = load i32, i32* %329, align 4
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds i32, i32* %327, i64 %331
  %333 = bitcast i32* %332 to %struct.dirTocEntry*
  store %struct.dirTocEntry* %333, %struct.dirTocEntry** %15, align 8
  br label %220

334:                                              ; preds = %256, %220
  %335 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @CachedDirInfo, i32 0, i32 5), align 8
  %336 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @CachedDirInfo, i32 0, i32 4), align 8
  %337 = sext i32 %336 to i64
  %338 = add nsw i64 %335, %337
  %339 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @CachedDirInfo, i32 0, i32 0), align 8
  %340 = sext i32 %339 to i64
  %341 = icmp slt i64 %338, %340
  br i1 %341, label %342, label %350

342:                                              ; preds = %334
  %343 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @CachedDirInfo, i32 0, i32 1), align 8
  %344 = load i32, i32* @CACHE_NEXT, align 4
  %345 = call i64 @CDVD_Cache_Dir(i8* %343, i32 %344)
  %346 = load i64, i64* @TRUE, align 8
  %347 = icmp ne i64 %345, %346
  br i1 %347, label %348, label %349

348:                                              ; preds = %342
  store i32 -1, i32* %6, align 4
  br label %357

349:                                              ; preds = %342
  br label %351

350:                                              ; preds = %334
  br label %354

351:                                              ; preds = %349
  %352 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @CachedDirInfo, i32 0, i32 2), align 8
  %353 = bitcast i8* %352 to %struct.dirTocEntry*
  store %struct.dirTocEntry* %353, %struct.dirTocEntry** %15, align 8
  br label %219

354:                                              ; preds = %350
  br label %355

355:                                              ; preds = %354, %185
  %356 = load i32, i32* %12, align 4
  store i32 %356, i32* %6, align 4
  br label %357

357:                                              ; preds = %355, %348, %322, %195, %174, %148, %39, %24
  %358 = load i32, i32* %6, align 4
  ret i32 %358
}

declare dso_local i64 @CDVD_Cache_Dir(i8*, i32) #1

declare dso_local i64 @sceSifDmaStat(i32) #1

declare dso_local i32 @TocEntryCopy(%struct.TocEntry*, %struct.dirTocEntry*) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @CpuSuspendIntr(i32*) #1

declare dso_local i32 @sceSifSetDma(%struct.t_SifDmaTransfer*, i32) #1

declare dso_local i32 @CpuResumeIntr(i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @TocEntryCompare(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
