; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/vpninstall/extr_vpninstall.c_ViDownloadThread.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/vpninstall/extr_vpninstall.c_ViDownloadThread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i64, i32 }
%struct.TYPE_9__ = type { i32, i32, i64, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_10__ = type { float, float, i32 }

@setting = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@MAX_SIZE = common dso_local global i32 0, align 4
@MAX_PATH = common dso_local global i32 0, align 4
@IDS_DOWNLOADSTART = common dso_local global i64 0, align 8
@skip = common dso_local global i64 0, align 8
@S_STATUS = common dso_local global i64 0, align 8
@MB_ICONSTOP = common dso_local global i32 0, align 4
@IDS_DOWNLOAD_ERROR = common dso_local global i64 0, align 8
@IDS_TEMP_ERROR = common dso_local global i64 0, align 8
@IDS_DOWNLOADING3 = common dso_local global i64 0, align 8
@INFINITE = common dso_local global i64 0, align 8
@IDS_DOWNLOADING = common dso_local global i64 0, align 8
@IDS_DOWNLOADING2 = common dso_local global i64 0, align 8
@S_SIZEINFO = common dso_local global i64 0, align 8
@WM_VI_DOWNLOAD_FINISHED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ViDownloadThread(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca [2 x %struct.TYPE_10__], align 16
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  store i64 2, i64* %8, align 8
  %23 = load i32*, i32** %3, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %2
  %26 = load i8*, i8** %4, align 8
  %27 = icmp eq i8* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %25, %2
  br label %334

29:                                               ; preds = %25
  %30 = load i8*, i8** %4, align 8
  %31 = bitcast i8* %30 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %31, %struct.TYPE_9__** %5, align 8
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %7, align 4
  %35 = getelementptr inbounds [2 x %struct.TYPE_10__], [2 x %struct.TYPE_10__]* %9, i64 0, i64 0
  %36 = call i32 @Zero(%struct.TYPE_10__* %35, i32 24)
  %37 = call %struct.TYPE_8__* (...) @ViGetSuitableArchForCpu()
  store %struct.TYPE_8__* %37, %struct.TYPE_8__** %6, align 8
  %38 = getelementptr inbounds [2 x %struct.TYPE_10__], [2 x %struct.TYPE_10__]* %9, i64 0, i64 0
  store %struct.TYPE_10__* %38, %struct.TYPE_10__** %10, align 8
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @StrCpy(i32 %41, i32 4, i32 %44)
  %46 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @setting, i32 0, i32 3), align 8
  %47 = call i32 @IsEmptyStr(i32 %46)
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %29
  %50 = getelementptr inbounds [2 x %struct.TYPE_10__], [2 x %struct.TYPE_10__]* %9, i64 0, i64 1
  store %struct.TYPE_10__* %50, %struct.TYPE_10__** %10, align 8
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @setting, i32 0, i32 3), align 8
  %55 = call i32 @StrCpy(i32 %53, i32 4, i32 %54)
  br label %57

56:                                               ; preds = %29
  store i64 1, i64* %8, align 8
  br label %57

57:                                               ; preds = %56, %49
  store i64 0, i64* %11, align 8
  br label %58

58:                                               ; preds = %313, %57
  %59 = load i64, i64* %11, align 8
  %60 = load i64, i64* %8, align 8
  %61 = icmp ult i64 %59, %60
  br i1 %61, label %62, label %316

62:                                               ; preds = %58
  store i32 1, i32* %12, align 4
  %63 = load i64, i64* %11, align 8
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %62
  %66 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @setting, i32 0, i32 2), align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %65
  store i32 0, i32* %12, align 4
  br label %69

69:                                               ; preds = %68, %65, %62
  %70 = load i32, i32* %12, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %312

72:                                               ; preds = %69
  %73 = load i32, i32* @MAX_SIZE, align 4
  %74 = zext i32 %73 to i64
  %75 = call i8* @llvm.stacksave()
  store i8* %75, i8** %13, align 8
  %76 = alloca i32, i64 %74, align 16
  store i64 %74, i64* %14, align 8
  store i32* null, i32** %15, align 8
  %77 = load i32, i32* @MAX_PATH, align 4
  %78 = zext i32 %77 to i64
  %79 = alloca i32, i64 %78, align 16
  store i64 %78, i64* %20, align 8
  %80 = load i64, i64* %11, align 8
  %81 = getelementptr inbounds [2 x %struct.TYPE_10__], [2 x %struct.TYPE_10__]* %9, i64 0, i64 %80
  store %struct.TYPE_10__* %81, %struct.TYPE_10__** %10, align 8
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 0
  %84 = load float, float* %83, align 4
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @GetFileNameFromFilePath(float %84, i32 4, i32 %87)
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 0
  %91 = load float, float* %90, align 4
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 0
  %94 = load float, float* %93, align 4
  %95 = call i32 @MakeSafeFileName(float %91, i32 4, float %94)
  %96 = mul nuw i64 4, %78
  %97 = trunc i64 %96 to i32
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 0
  %100 = load float, float* %99, align 4
  %101 = call i32 @StrToUni(i32* %79, i32 %97, float %100)
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 1
  %104 = load float, float* %103, align 4
  %105 = call i32 (...) @MsGetMyTempDirW()
  %106 = call i32 @ConbinePathW(float %104, i32 4, i32 %105, i32* %79)
  %107 = load i32, i32* %7, align 4
  %108 = call i32 @ViInstallDlgSetPos(i32 %107, i64 0)
  %109 = mul nuw i64 4, %74
  %110 = trunc i64 %109 to i32
  %111 = load i64, i64* @IDS_DOWNLOADSTART, align 8
  %112 = load i64, i64* @skip, align 8
  %113 = add nsw i64 %111, %112
  %114 = call i32 @_U(i64 %113)
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 0
  %117 = load float, float* %116, align 4
  %118 = call i32 (i32*, i32, i32, float, ...) @UniFormat(i32* %76, i32 %110, i32 %114, float %117)
  %119 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %120 = load i32, i32* %7, align 4
  %121 = load i64, i64* @S_STATUS, align 8
  %122 = call i32 @ViInstallDlgSetText(%struct.TYPE_9__* %119, i32 %120, i64 %121, i32* %76)
  %123 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 4
  %126 = call i32* @ViOpenFile(i32 %125)
  store i32* %126, i32** %16, align 8
  %127 = load i32*, i32** %16, align 8
  %128 = icmp eq i32* %127, null
  br i1 %128, label %129, label %142

129:                                              ; preds = %72
  %130 = load i32, i32* %7, align 4
  %131 = load i32, i32* @MB_ICONSTOP, align 4
  %132 = load i64, i64* @IDS_DOWNLOAD_ERROR, align 8
  %133 = load i64, i64* @skip, align 8
  %134 = add nsw i64 %132, %133
  %135 = call i32 @_U(i64 %134)
  %136 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i32 0, i32 0
  %138 = load float, float* %137, align 4
  %139 = call i32 @MsgBoxEx(i32 %130, i32 %131, i32 %135, float %138)
  %140 = load i32, i32* %7, align 4
  %141 = call i32 @ViInstallDlgCancel(i32 %140)
  store i32 1, i32* %21, align 4
  br label %308

142:                                              ; preds = %72
  %143 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %144 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %143, i32 0, i32 1
  %145 = load float, float* %144, align 4
  %146 = call i32* @FileCreateW(float %145)
  store i32* %146, i32** %15, align 8
  %147 = load i32*, i32** %15, align 8
  %148 = icmp eq i32* %147, null
  br i1 %148, label %149, label %164

149:                                              ; preds = %142
  %150 = load i32, i32* %7, align 4
  %151 = load i32, i32* @MB_ICONSTOP, align 4
  %152 = load i64, i64* @IDS_TEMP_ERROR, align 8
  %153 = load i64, i64* @skip, align 8
  %154 = add nsw i64 %152, %153
  %155 = call i32 @_U(i64 %154)
  %156 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %157 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %156, i32 0, i32 1
  %158 = load float, float* %157, align 4
  %159 = call i32 @MsgBoxEx(i32 %150, i32 %151, i32 %155, float %158)
  %160 = load i32*, i32** %16, align 8
  %161 = call i32 @ViCloseFile(i32* %160)
  %162 = load i32, i32* %7, align 4
  %163 = call i32 @ViInstallDlgCancel(i32 %162)
  store i32 1, i32* %21, align 4
  br label %308

164:                                              ; preds = %142
  %165 = load i32*, i32** %16, align 8
  %166 = call i64 @ViGetFileSize(i32* %165)
  store i64 %166, i64* %18, align 8
  store i64 0, i64* %19, align 8
  %167 = mul nuw i64 4, %74
  %168 = trunc i64 %167 to i32
  %169 = load i64, i64* @IDS_DOWNLOADING3, align 8
  %170 = load i64, i64* @skip, align 8
  %171 = add nsw i64 %169, %170
  %172 = call i32 @_U(i64 %171)
  %173 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %174 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %173, i32 0, i32 0
  %175 = load float, float* %174, align 4
  %176 = call i32 (i32*, i32, i32, float, ...) @UniFormat(i32* %76, i32 %168, i32 %172, float %175)
  %177 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %178 = load i32, i32* %7, align 4
  %179 = load i64, i64* @S_STATUS, align 8
  %180 = call i32 @ViInstallDlgSetText(%struct.TYPE_9__* %177, i32 %178, i64 %179, i32* %76)
  br label %181

181:                                              ; preds = %302, %164
  br label %182

182:                                              ; preds = %181
  store i64 0, i64* %22, align 8
  %183 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %184 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %183, i32 0, i32 2
  %185 = load i64, i64* %184, align 8
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %192

187:                                              ; preds = %182
  %188 = load i32*, i32** %15, align 8
  %189 = call i32 @FileClose(i32* %188)
  %190 = load i32*, i32** %16, align 8
  %191 = call i32 @ViCloseFile(i32* %190)
  store i32 1, i32* %21, align 4
  br label %308

192:                                              ; preds = %182
  %193 = mul nuw i64 4, %74
  %194 = trunc i64 %193 to i32
  %195 = load i64, i64* @IDS_DOWNLOADING3, align 8
  %196 = load i64, i64* @skip, align 8
  %197 = add nsw i64 %195, %196
  %198 = call i32 @_U(i64 %197)
  %199 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %200 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %199, i32 0, i32 0
  %201 = load float, float* %200, align 4
  %202 = call i32 (i32*, i32, i32, float, ...) @UniFormat(i32* %76, i32 %194, i32 %198, float %201)
  %203 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %204 = load i32, i32* %7, align 4
  %205 = load i64, i64* @IDS_DOWNLOADING3, align 8
  %206 = load i64, i64* @skip, align 8
  %207 = add nsw i64 %205, %206
  %208 = call i32 @ViInstallDlgSetText(%struct.TYPE_9__* %203, i32 %204, i64 %207, i32* %76)
  %209 = load i32*, i32** %16, align 8
  %210 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %211 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 8
  %213 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %214 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 4
  %216 = call i64 @ViReadFile(i32* %209, i32 %212, i32 %215)
  store i64 %216, i64* %17, align 8
  %217 = load i64, i64* %17, align 8
  %218 = load i64, i64* @INFINITE, align 8
  %219 = icmp eq i64 %217, %218
  br i1 %219, label %220, label %237

220:                                              ; preds = %192
  %221 = load i32, i32* %7, align 4
  %222 = load i32, i32* @MB_ICONSTOP, align 4
  %223 = load i64, i64* @IDS_DOWNLOAD_ERROR, align 8
  %224 = load i64, i64* @skip, align 8
  %225 = add nsw i64 %223, %224
  %226 = call i32 @_U(i64 %225)
  %227 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %228 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %227, i32 0, i32 0
  %229 = load float, float* %228, align 4
  %230 = call i32 @MsgBoxEx(i32 %221, i32 %222, i32 %226, float %229)
  %231 = load i32*, i32** %15, align 8
  %232 = call i32 @FileClose(i32* %231)
  %233 = load i32*, i32** %16, align 8
  %234 = call i32 @ViCloseFile(i32* %233)
  %235 = load i32, i32* %7, align 4
  %236 = call i32 @ViInstallDlgCancel(i32 %235)
  store i32 1, i32* %21, align 4
  br label %308

237:                                              ; preds = %192
  %238 = load i64, i64* %17, align 8
  %239 = load i64, i64* %19, align 8
  %240 = add i64 %239, %238
  store i64 %240, i64* %19, align 8
  %241 = load i64, i64* %18, align 8
  %242 = icmp ne i64 %241, 0
  br i1 %242, label %243, label %267

243:                                              ; preds = %237
  %244 = mul nuw i64 4, %74
  %245 = trunc i64 %244 to i32
  %246 = load i64, i64* @IDS_DOWNLOADING, align 8
  %247 = load i64, i64* @skip, align 8
  %248 = add nsw i64 %246, %247
  %249 = call i32 @_U(i64 %248)
  %250 = load i64, i64* %18, align 8
  %251 = uitofp i64 %250 to float
  %252 = fdiv float %251, 1.024000e+03
  %253 = fdiv float %252, 1.024000e+03
  %254 = load i64, i64* %19, align 8
  %255 = uitofp i64 %254 to float
  %256 = fdiv float %255, 1.024000e+03
  %257 = fdiv float %256, 1.024000e+03
  %258 = fpext float %257 to double
  %259 = call i32 (i32*, i32, i32, float, ...) @UniFormat(i32* %76, i32 %245, i32 %249, float %253, double %258)
  %260 = load i64, i64* %19, align 8
  %261 = uitofp i64 %260 to float
  %262 = fmul float %261, 1.000000e+02
  %263 = load i64, i64* %18, align 8
  %264 = uitofp i64 %263 to float
  %265 = fdiv float %262, %264
  %266 = fptoui float %265 to i64
  store i64 %266, i64* %22, align 8
  br label %284

267:                                              ; preds = %237
  %268 = mul nuw i64 4, %74
  %269 = trunc i64 %268 to i32
  %270 = load i64, i64* @IDS_DOWNLOADING2, align 8
  %271 = load i64, i64* @skip, align 8
  %272 = add nsw i64 %270, %271
  %273 = call i32 @_U(i64 %272)
  %274 = load i64, i64* %19, align 8
  %275 = uitofp i64 %274 to float
  %276 = fdiv float %275, 1.024000e+03
  %277 = fdiv float %276, 1.024000e+03
  %278 = call i32 (i32*, i32, i32, float, ...) @UniFormat(i32* %76, i32 %269, i32 %273, float %277)
  %279 = load i64, i64* %19, align 8
  %280 = uitofp i64 %279 to float
  %281 = fmul float %280, 1.000000e+02
  %282 = fdiv float %281, 0x4164000000000000
  %283 = fptoui float %282 to i64
  store i64 %283, i64* %22, align 8
  br label %284

284:                                              ; preds = %267, %243
  %285 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %286 = load i32, i32* %7, align 4
  %287 = load i64, i64* @S_SIZEINFO, align 8
  %288 = call i32 @ViInstallDlgSetText(%struct.TYPE_9__* %285, i32 %286, i64 %287, i32* %76)
  %289 = load i32, i32* %7, align 4
  %290 = load i64, i64* %22, align 8
  %291 = call i32 @ViInstallDlgSetPos(i32 %289, i64 %290)
  %292 = load i64, i64* %17, align 8
  %293 = icmp eq i64 %292, 0
  br i1 %293, label %294, label %295

294:                                              ; preds = %284
  br label %303

295:                                              ; preds = %284
  %296 = load i32*, i32** %15, align 8
  %297 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %298 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %297, i32 0, i32 0
  %299 = load i32, i32* %298, align 8
  %300 = load i64, i64* %17, align 8
  %301 = call i32 @FileWrite(i32* %296, i32 %299, i64 %300)
  br label %302

302:                                              ; preds = %295
  br label %181

303:                                              ; preds = %294
  %304 = load i32*, i32** %16, align 8
  %305 = call i32 @ViCloseFile(i32* %304)
  %306 = load i32*, i32** %15, align 8
  %307 = call i32 @FileClose(i32* %306)
  store i32 0, i32* %21, align 4
  br label %308

308:                                              ; preds = %303, %220, %187, %149, %129
  %309 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %309)
  %310 = load i32, i32* %21, align 4
  switch i32 %310, label %335 [
    i32 0, label %311
    i32 1, label %334
  ]

311:                                              ; preds = %308
  br label %312

312:                                              ; preds = %311, %69
  br label %313

313:                                              ; preds = %312
  %314 = load i64, i64* %11, align 8
  %315 = add i64 %314, 1
  store i64 %315, i64* %11, align 8
  br label %58

316:                                              ; preds = %58
  %317 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @setting, i32 0, i32 1), align 4
  %318 = getelementptr inbounds [2 x %struct.TYPE_10__], [2 x %struct.TYPE_10__]* %9, i64 0, i64 0
  %319 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %318, i32 0, i32 1
  %320 = load float, float* %319, align 4
  %321 = call i32 @UniStrCpy(i32 %317, i32 4, float %320)
  %322 = load i64, i64* %8, align 8
  %323 = icmp uge i64 %322, 2
  br i1 %323, label %324, label %330

324:                                              ; preds = %316
  %325 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @setting, i32 0, i32 0), align 8
  %326 = getelementptr inbounds [2 x %struct.TYPE_10__], [2 x %struct.TYPE_10__]* %9, i64 0, i64 1
  %327 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %326, i32 0, i32 1
  %328 = load float, float* %327, align 4
  %329 = call i32 @UniStrCpy(i32 %325, i32 4, float %328)
  br label %330

330:                                              ; preds = %324, %316
  %331 = load i32, i32* %7, align 4
  %332 = load i32, i32* @WM_VI_DOWNLOAD_FINISHED, align 4
  %333 = call i32 @PostMessageA(i32 %331, i32 %332, i32 0, i32 0)
  br label %334

334:                                              ; preds = %330, %308, %28
  ret void

335:                                              ; preds = %308
  unreachable
}

declare dso_local i32 @Zero(%struct.TYPE_10__*, i32) #1

declare dso_local %struct.TYPE_8__* @ViGetSuitableArchForCpu(...) #1

declare dso_local i32 @StrCpy(i32, i32, i32) #1

declare dso_local i32 @IsEmptyStr(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @GetFileNameFromFilePath(float, i32, i32) #1

declare dso_local i32 @MakeSafeFileName(float, i32, float) #1

declare dso_local i32 @StrToUni(i32*, i32, float) #1

declare dso_local i32 @ConbinePathW(float, i32, i32, i32*) #1

declare dso_local i32 @MsGetMyTempDirW(...) #1

declare dso_local i32 @ViInstallDlgSetPos(i32, i64) #1

declare dso_local i32 @UniFormat(i32*, i32, i32, float, ...) #1

declare dso_local i32 @_U(i64) #1

declare dso_local i32 @ViInstallDlgSetText(%struct.TYPE_9__*, i32, i64, i32*) #1

declare dso_local i32* @ViOpenFile(i32) #1

declare dso_local i32 @MsgBoxEx(i32, i32, i32, float) #1

declare dso_local i32 @ViInstallDlgCancel(i32) #1

declare dso_local i32* @FileCreateW(float) #1

declare dso_local i32 @ViCloseFile(i32*) #1

declare dso_local i64 @ViGetFileSize(i32*) #1

declare dso_local i32 @FileClose(i32*) #1

declare dso_local i64 @ViReadFile(i32*, i32, i32) #1

declare dso_local i32 @FileWrite(i32*, i32, i64) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @UniStrCpy(i32, i32, float) #1

declare dso_local i32 @PostMessageA(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
