; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/gx/gui/extr_filesel.c_FileSelector.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/gx/gui/extr_filesel.c_FileSelector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i32, i32, %struct.TYPE_26__** }
%struct.TYPE_26__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_20__ = type { i64 }
%struct.TYPE_21__ = type { i32, %struct.TYPE_27__*, i32* }
%struct.TYPE_27__ = type { i32, i32 }
%struct.TYPE_19__ = type { i8*, i64 }
%struct.TYPE_29__ = type { %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_28__ = type { i16, %struct.TYPE_24__ }
%struct.TYPE_24__ = type { i32, i32, i32, i64 }

@MAXPATHLEN = common dso_local global i32 0, align 4
@menu_selector = common dso_local global %struct.TYPE_25__ zeroinitializer, align 8
@config = common dso_local global %struct.TYPE_20__ zeroinitializer, align 8
@IMAGE_VISIBLE = common dso_local global i32 0, align 4
@bg_filesel = common dso_local global %struct.TYPE_21__* null, align 8
@FILETYPE_MAX = common dso_local global i32 0, align 4
@Cart_png = common dso_local global i8** null, align 8
@string_offset = common dso_local global i64 0, align 8
@selection = common dso_local global i32 0, align 4
@filelist = common dso_local global %struct.TYPE_19__* null, align 8
@history = common dso_local global %struct.TYPE_29__ zeroinitializer, align 8
@.str = private unnamed_addr constant [15 x i8] c"%s/snaps/%s/%s\00", align 1
@DEFAULT_PATH = common dso_local global i8* null, align 8
@Cart_dir = common dso_local global i8** null, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c".png\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@action_select = common dso_local global %struct.TYPE_22__ zeroinitializer, align 4
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"Open Directory\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"Load File\00", align 1
@m_input = common dso_local global %struct.TYPE_28__ zeroinitializer, align 8
@PAD_BUTTON_DOWN = common dso_local global i16 0, align 2
@maxfiles = common dso_local global i32 0, align 4
@offset = common dso_local global i32 0, align 4
@PAD_BUTTON_UP = common dso_local global i16 0, align 2
@PAD_TRIGGER_L = common dso_local global i16 0, align 2
@PAD_BUTTON_LEFT = common dso_local global i16 0, align 2
@PAD_TRIGGER_R = common dso_local global i16 0, align 2
@PAD_BUTTON_RIGHT = common dso_local global i16 0, align 2
@PAD_TRIGGER_Z = common dso_local global i16 0, align 2
@PAD_BUTTON_B = common dso_local global i16 0, align 2
@prev_folder = common dso_local global i8* null, align 8
@PAD_BUTTON_A = common dso_local global i16 0, align 2
@BUTTON_VISIBLE = common dso_local global i32 0, align 4
@SYS_POWEROFF = common dso_local global i32 0, align 4
@Shutdown = common dso_local global i64 0, align 8
@w_pointer = common dso_local global %struct.TYPE_27__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @FileSelector(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i16, align 2
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_25__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 -1, i32* %6, align 4
  %13 = load i32, i32* @MAXPATHLEN, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %7, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %8, align 8
  store %struct.TYPE_25__* @menu_selector, %struct.TYPE_25__** %10, align 8
  %17 = load i64, i64* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @config, i32 0, i32 0), align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %1
  %20 = load i32, i32* @IMAGE_VISIBLE, align 4
  %21 = load %struct.TYPE_21__*, %struct.TYPE_21__** @bg_filesel, align 8
  %22 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %21, i64 1
  %23 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = or i32 %24, %20
  store i32 %25, i32* %23, align 8
  br label %34

26:                                               ; preds = %1
  %27 = load i32, i32* @IMAGE_VISIBLE, align 4
  %28 = xor i32 %27, -1
  %29 = load %struct.TYPE_21__*, %struct.TYPE_21__** @bg_filesel, align 8
  %30 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %29, i64 1
  %31 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = and i32 %32, %28
  store i32 %33, i32* %31, align 8
  br label %34

34:                                               ; preds = %26, %19
  store i32 0, i32* %5, align 4
  br label %35

35:                                               ; preds = %50, %34
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @FILETYPE_MAX, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %53

39:                                               ; preds = %35
  %40 = load i32, i32* @IMAGE_VISIBLE, align 4
  %41 = xor i32 %40, -1
  %42 = load %struct.TYPE_21__*, %struct.TYPE_21__** @bg_filesel, align 8
  %43 = load i32, i32* %5, align 4
  %44 = add nsw i32 9, %43
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %42, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = and i32 %48, %41
  store i32 %49, i32* %47, align 8
  br label %50

50:                                               ; preds = %39
  %51 = load i32, i32* %5, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %5, align 4
  br label %35

53:                                               ; preds = %35
  %54 = load i32, i32* %3, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %78

56:                                               ; preds = %53
  store i32 0, i32* %5, align 4
  br label %57

57:                                               ; preds = %74, %56
  %58 = load i32, i32* %5, align 4
  %59 = load i32, i32* @FILETYPE_MAX, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %77

61:                                               ; preds = %57
  %62 = load i8**, i8*** @Cart_png, align 8
  %63 = load i32, i32* %5, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8*, i8** %62, i64 %64
  %66 = load i8*, i8** %65, align 8
  %67 = bitcast i8* %66 to i32*
  %68 = load %struct.TYPE_21__*, %struct.TYPE_21__** @bg_filesel, align 8
  %69 = load i32, i32* %5, align 4
  %70 = add nsw i32 9, %69
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %68, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %72, i32 0, i32 2
  store i32* %67, i32** %73, align 8
  br label %74

74:                                               ; preds = %61
  %75 = load i32, i32* %5, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %5, align 4
  br label %57

77:                                               ; preds = %57
  br label %115

78:                                               ; preds = %53
  store i32 0, i32* %5, align 4
  br label %79

79:                                               ; preds = %90, %78
  %80 = load i32, i32* %5, align 4
  %81 = load i32, i32* @FILETYPE_MAX, align 4
  %82 = icmp slt i32 %80, %81
  br i1 %82, label %83, label %93

83:                                               ; preds = %79
  %84 = load %struct.TYPE_21__*, %struct.TYPE_21__** @bg_filesel, align 8
  %85 = load i32, i32* %5, align 4
  %86 = add nsw i32 9, %85
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %84, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %88, i32 0, i32 2
  store i32* null, i32** %89, align 8
  br label %90

90:                                               ; preds = %83
  %91 = load i32, i32* %5, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %5, align 4
  br label %79

93:                                               ; preds = %79
  %94 = load i8**, i8*** @Cart_png, align 8
  %95 = load i32, i32* %3, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i8*, i8** %94, i64 %96
  %98 = load i8*, i8** %97, align 8
  %99 = bitcast i8* %98 to i32*
  %100 = load %struct.TYPE_21__*, %struct.TYPE_21__** @bg_filesel, align 8
  %101 = load i32, i32* %3, align 4
  %102 = add nsw i32 9, %101
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %100, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %104, i32 0, i32 2
  store i32* %99, i32** %105, align 8
  %106 = load i32, i32* @IMAGE_VISIBLE, align 4
  %107 = load %struct.TYPE_21__*, %struct.TYPE_21__** @bg_filesel, align 8
  %108 = load i32, i32* %3, align 4
  %109 = add nsw i32 9, %108
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %107, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = or i32 %113, %106
  store i32 %114, i32* %112, align 8
  br label %115

115:                                              ; preds = %93, %77
  %116 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %117 = call i32 @GUI_InitMenu(%struct.TYPE_25__* %116)
  store i64 0, i64* @string_offset, align 8
  br label %118

118:                                              ; preds = %536, %115
  br label %119

119:                                              ; preds = %118
  %120 = load i32, i32* %6, align 4
  %121 = load i32, i32* @selection, align 4
  %122 = icmp ne i32 %120, %121
  br i1 %122, label %123, label %261

123:                                              ; preds = %119
  %124 = load %struct.TYPE_21__*, %struct.TYPE_21__** @bg_filesel, align 8
  %125 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %124, i64 8
  %126 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %125, i32 0, i32 1
  %127 = call i32 @gxTextureClose(%struct.TYPE_27__** %126)
  %128 = load i32, i32* @IMAGE_VISIBLE, align 4
  %129 = xor i32 %128, -1
  %130 = load %struct.TYPE_21__*, %struct.TYPE_21__** @bg_filesel, align 8
  %131 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %130, i64 8
  %132 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = and i32 %133, %129
  store i32 %134, i32* %132, align 8
  %135 = load i32, i32* @selection, align 4
  store i32 %135, i32* %6, align 4
  store i64 0, i64* @string_offset, align 8
  %136 = load %struct.TYPE_19__*, %struct.TYPE_19__** @filelist, align 8
  %137 = load i32, i32* @selection, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %136, i64 %138
  %140 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %139, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %260, label %143

143:                                              ; preds = %123
  %144 = load i32, i32* %3, align 4
  %145 = icmp slt i32 %144, 0
  br i1 %145, label %146, label %194

146:                                              ; preds = %143
  store i32 0, i32* %5, align 4
  br label %147

147:                                              ; preds = %162, %146
  %148 = load i32, i32* %5, align 4
  %149 = load i32, i32* @FILETYPE_MAX, align 4
  %150 = icmp slt i32 %148, %149
  br i1 %150, label %151, label %165

151:                                              ; preds = %147
  %152 = load i32, i32* @IMAGE_VISIBLE, align 4
  %153 = xor i32 %152, -1
  %154 = load %struct.TYPE_21__*, %struct.TYPE_21__** @bg_filesel, align 8
  %155 = load i32, i32* %5, align 4
  %156 = add nsw i32 9, %155
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %154, i64 %157
  %159 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = and i32 %160, %153
  store i32 %161, i32* %159, align 8
  br label %162

162:                                              ; preds = %151
  %163 = load i32, i32* %5, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %5, align 4
  br label %147

165:                                              ; preds = %147
  %166 = load %struct.TYPE_23__*, %struct.TYPE_23__** getelementptr inbounds (%struct.TYPE_29__, %struct.TYPE_29__* @history, i32 0, i32 0), align 8
  %167 = load i32, i32* @selection, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %166, i64 %168
  %170 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  store i32 %171, i32* %3, align 4
  %172 = load i32, i32* @IMAGE_VISIBLE, align 4
  %173 = load %struct.TYPE_21__*, %struct.TYPE_21__** @bg_filesel, align 8
  %174 = load i32, i32* %3, align 4
  %175 = add nsw i32 9, %174
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %173, i64 %176
  %178 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = or i32 %179, %172
  store i32 %180, i32* %178, align 8
  %181 = load i8*, i8** @DEFAULT_PATH, align 8
  %182 = load i8**, i8*** @Cart_dir, align 8
  %183 = load i32, i32* %3, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i8*, i8** %182, i64 %184
  %186 = load i8*, i8** %185, align 8
  %187 = load %struct.TYPE_19__*, %struct.TYPE_19__** @filelist, align 8
  %188 = load i32, i32* @selection, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %187, i64 %189
  %191 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %190, i32 0, i32 0
  %192 = load i8*, i8** %191, align 8
  %193 = call i32 @sprintf(i8* %16, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %181, i8* %186, i8* %192)
  store i32 -1, i32* %3, align 4
  br label %208

194:                                              ; preds = %143
  %195 = load i8*, i8** @DEFAULT_PATH, align 8
  %196 = load i8**, i8*** @Cart_dir, align 8
  %197 = load i32, i32* %3, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i8*, i8** %196, i64 %198
  %200 = load i8*, i8** %199, align 8
  %201 = load %struct.TYPE_19__*, %struct.TYPE_19__** @filelist, align 8
  %202 = load i32, i32* @selection, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %201, i64 %203
  %205 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %204, i32 0, i32 0
  %206 = load i8*, i8** %205, align 8
  %207 = call i32 @sprintf(i8* %16, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %195, i8* %200, i8* %206)
  br label %208

208:                                              ; preds = %194, %165
  %209 = call i32 @strlen(i8* %16)
  %210 = sub nsw i32 %209, 1
  store i32 %210, i32* %5, align 4
  br label %211

211:                                              ; preds = %223, %208
  %212 = load i32, i32* %5, align 4
  %213 = icmp sgt i32 %212, 0
  br i1 %213, label %214, label %221

214:                                              ; preds = %211
  %215 = load i32, i32* %5, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds i8, i8* %16, i64 %216
  %218 = load i8, i8* %217, align 1
  %219 = sext i8 %218 to i32
  %220 = icmp ne i32 %219, 46
  br label %221

221:                                              ; preds = %214, %211
  %222 = phi i1 [ false, %211 ], [ %220, %214 ]
  br i1 %222, label %223, label %226

223:                                              ; preds = %221
  %224 = load i32, i32* %5, align 4
  %225 = add nsw i32 %224, -1
  store i32 %225, i32* %5, align 4
  br label %211

226:                                              ; preds = %221
  %227 = load i32, i32* %5, align 4
  %228 = icmp sgt i32 %227, 0
  br i1 %228, label %229, label %233

229:                                              ; preds = %226
  %230 = load i32, i32* %5, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds i8, i8* %16, i64 %231
  store i8 0, i8* %232, align 1
  br label %233

233:                                              ; preds = %229, %226
  %234 = call i32 @strcat(i8* %16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %235 = call i32* @fopen(i8* %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  store i32* %235, i32** %9, align 8
  %236 = load i32*, i32** %9, align 8
  %237 = icmp ne i32* %236, null
  br i1 %237, label %238, label %259

238:                                              ; preds = %233
  %239 = load i32*, i32** %9, align 8
  %240 = call %struct.TYPE_27__* @gxTextureOpenPNG(i32 0, i32* %239)
  %241 = load %struct.TYPE_21__*, %struct.TYPE_21__** @bg_filesel, align 8
  %242 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %241, i64 8
  %243 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %242, i32 0, i32 1
  store %struct.TYPE_27__* %240, %struct.TYPE_27__** %243, align 8
  %244 = load %struct.TYPE_21__*, %struct.TYPE_21__** @bg_filesel, align 8
  %245 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %244, i64 8
  %246 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %245, i32 0, i32 1
  %247 = load %struct.TYPE_27__*, %struct.TYPE_27__** %246, align 8
  %248 = icmp ne %struct.TYPE_27__* %247, null
  br i1 %248, label %249, label %256

249:                                              ; preds = %238
  %250 = load i32, i32* @IMAGE_VISIBLE, align 4
  %251 = load %struct.TYPE_21__*, %struct.TYPE_21__** @bg_filesel, align 8
  %252 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %251, i64 8
  %253 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 8
  %255 = or i32 %254, %250
  store i32 %255, i32* %253, align 8
  br label %256

256:                                              ; preds = %249, %238
  %257 = load i32*, i32** %9, align 8
  %258 = call i32 @fclose(i32* %257)
  br label %259

259:                                              ; preds = %256, %233
  br label %260

260:                                              ; preds = %259, %123
  br label %261

261:                                              ; preds = %260, %119
  %262 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %263 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 8
  %265 = icmp ne i32 %264, -1
  br i1 %265, label %266, label %269

266:                                              ; preds = %261
  %267 = load i32, i32* getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @action_select, i32 0, i32 0), align 4
  %268 = call i32 @strcpy(i32 %267, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0))
  br label %284

269:                                              ; preds = %261
  %270 = load %struct.TYPE_19__*, %struct.TYPE_19__** @filelist, align 8
  %271 = load i32, i32* @selection, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %270, i64 %272
  %274 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %273, i32 0, i32 1
  %275 = load i64, i64* %274, align 8
  %276 = icmp ne i64 %275, 0
  br i1 %276, label %277, label %280

277:                                              ; preds = %269
  %278 = load i32, i32* getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @action_select, i32 0, i32 0), align 4
  %279 = call i32 @strcpy(i32 %278, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  br label %283

280:                                              ; preds = %269
  %281 = load i32, i32* getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @action_select, i32 0, i32 0), align 4
  %282 = call i32 @strcpy(i32 %281, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  br label %283

283:                                              ; preds = %280, %277
  br label %284

284:                                              ; preds = %283, %266
  %285 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %286 = call i32 @GUI_DrawMenu(%struct.TYPE_25__* %285)
  %287 = call i32 (...) @gxSetScreen()
  %288 = load i16, i16* getelementptr inbounds (%struct.TYPE_28__, %struct.TYPE_28__* @m_input, i32 0, i32 0), align 8
  store i16 %288, i16* %4, align 2
  %289 = load i16, i16* %4, align 2
  %290 = sext i16 %289 to i32
  %291 = load i16, i16* @PAD_BUTTON_DOWN, align 2
  %292 = sext i16 %291 to i32
  %293 = and i32 %290, %292
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %295, label %311

295:                                              ; preds = %284
  %296 = load i32, i32* @selection, align 4
  %297 = add nsw i32 %296, 1
  store i32 %297, i32* @selection, align 4
  %298 = load i32, i32* @selection, align 4
  %299 = load i32, i32* @maxfiles, align 4
  %300 = icmp eq i32 %298, %299
  br i1 %300, label %301, label %302

301:                                              ; preds = %295
  store i32 0, i32* @offset, align 4
  store i32 0, i32* @selection, align 4
  br label %302

302:                                              ; preds = %301, %295
  %303 = load i32, i32* @selection, align 4
  %304 = load i32, i32* @offset, align 4
  %305 = sub nsw i32 %303, %304
  %306 = icmp sge i32 %305, 10
  br i1 %306, label %307, label %310

307:                                              ; preds = %302
  %308 = load i32, i32* @offset, align 4
  %309 = add nsw i32 %308, 10
  store i32 %309, i32* @offset, align 4
  br label %310

310:                                              ; preds = %307, %302
  br label %536

311:                                              ; preds = %284
  %312 = load i16, i16* %4, align 2
  %313 = sext i16 %312 to i32
  %314 = load i16, i16* @PAD_BUTTON_UP, align 2
  %315 = sext i16 %314 to i32
  %316 = and i32 %313, %315
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %318, label %340

318:                                              ; preds = %311
  %319 = load i32, i32* @selection, align 4
  %320 = add nsw i32 %319, -1
  store i32 %320, i32* @selection, align 4
  %321 = load i32, i32* @selection, align 4
  %322 = icmp slt i32 %321, 0
  br i1 %322, label %323, label %328

323:                                              ; preds = %318
  %324 = load i32, i32* @maxfiles, align 4
  %325 = sub nsw i32 %324, 1
  store i32 %325, i32* @selection, align 4
  %326 = load i32, i32* @maxfiles, align 4
  %327 = sub nsw i32 %326, 10
  store i32 %327, i32* @offset, align 4
  br label %328

328:                                              ; preds = %323, %318
  %329 = load i32, i32* @selection, align 4
  %330 = load i32, i32* @offset, align 4
  %331 = icmp slt i32 %329, %330
  br i1 %331, label %332, label %335

332:                                              ; preds = %328
  %333 = load i32, i32* @offset, align 4
  %334 = sub nsw i32 %333, 10
  store i32 %334, i32* @offset, align 4
  br label %335

335:                                              ; preds = %332, %328
  %336 = load i32, i32* @offset, align 4
  %337 = icmp slt i32 %336, 0
  br i1 %337, label %338, label %339

338:                                              ; preds = %335
  store i32 0, i32* @offset, align 4
  br label %339

339:                                              ; preds = %338, %335
  br label %535

340:                                              ; preds = %311
  %341 = load i16, i16* %4, align 2
  %342 = sext i16 %341 to i32
  %343 = load i16, i16* @PAD_TRIGGER_L, align 2
  %344 = sext i16 %343 to i32
  %345 = load i16, i16* @PAD_BUTTON_LEFT, align 2
  %346 = sext i16 %345 to i32
  %347 = or i32 %344, %346
  %348 = and i32 %342, %347
  %349 = icmp ne i32 %348, 0
  br i1 %349, label %350, label %373

350:                                              ; preds = %340
  %351 = load i32, i32* @maxfiles, align 4
  %352 = icmp sge i32 %351, 10
  br i1 %352, label %353, label %372

353:                                              ; preds = %350
  %354 = load i32, i32* @selection, align 4
  %355 = sub nsw i32 %354, 10
  store i32 %355, i32* @selection, align 4
  %356 = load i32, i32* @selection, align 4
  %357 = icmp slt i32 %356, 0
  br i1 %357, label %358, label %359

358:                                              ; preds = %353
  store i32 0, i32* @offset, align 4
  store i32 0, i32* @selection, align 4
  br label %371

359:                                              ; preds = %353
  %360 = load i32, i32* @selection, align 4
  %361 = load i32, i32* @offset, align 4
  %362 = icmp slt i32 %360, %361
  br i1 %362, label %363, label %370

363:                                              ; preds = %359
  %364 = load i32, i32* @offset, align 4
  %365 = sub nsw i32 %364, 10
  store i32 %365, i32* @offset, align 4
  %366 = load i32, i32* @offset, align 4
  %367 = icmp slt i32 %366, 0
  br i1 %367, label %368, label %369

368:                                              ; preds = %363
  store i32 0, i32* @offset, align 4
  br label %369

369:                                              ; preds = %368, %363
  br label %370

370:                                              ; preds = %369, %359
  br label %371

371:                                              ; preds = %370, %358
  br label %372

372:                                              ; preds = %371, %350
  br label %534

373:                                              ; preds = %340
  %374 = load i16, i16* %4, align 2
  %375 = sext i16 %374 to i32
  %376 = load i16, i16* @PAD_TRIGGER_R, align 2
  %377 = sext i16 %376 to i32
  %378 = load i16, i16* @PAD_BUTTON_RIGHT, align 2
  %379 = sext i16 %378 to i32
  %380 = or i32 %377, %379
  %381 = and i32 %375, %380
  %382 = icmp ne i32 %381, 0
  br i1 %382, label %383, label %417

383:                                              ; preds = %373
  %384 = load i32, i32* @maxfiles, align 4
  %385 = icmp sge i32 %384, 10
  br i1 %385, label %386, label %416

386:                                              ; preds = %383
  %387 = load i32, i32* @selection, align 4
  %388 = add nsw i32 %387, 10
  store i32 %388, i32* @selection, align 4
  %389 = load i32, i32* @selection, align 4
  %390 = load i32, i32* @maxfiles, align 4
  %391 = sub nsw i32 %390, 1
  %392 = icmp sgt i32 %389, %391
  br i1 %392, label %393, label %398

393:                                              ; preds = %386
  %394 = load i32, i32* @maxfiles, align 4
  %395 = sub nsw i32 %394, 1
  store i32 %395, i32* @selection, align 4
  %396 = load i32, i32* @maxfiles, align 4
  %397 = sub nsw i32 %396, 10
  store i32 %397, i32* @offset, align 4
  br label %415

398:                                              ; preds = %386
  %399 = load i32, i32* @selection, align 4
  %400 = load i32, i32* @offset, align 4
  %401 = add nsw i32 %400, 10
  %402 = icmp sge i32 %399, %401
  br i1 %402, label %403, label %414

403:                                              ; preds = %398
  %404 = load i32, i32* @offset, align 4
  %405 = add nsw i32 %404, 10
  store i32 %405, i32* @offset, align 4
  %406 = load i32, i32* @offset, align 4
  %407 = load i32, i32* @maxfiles, align 4
  %408 = sub nsw i32 %407, 10
  %409 = icmp sgt i32 %406, %408
  br i1 %409, label %410, label %413

410:                                              ; preds = %403
  %411 = load i32, i32* @maxfiles, align 4
  %412 = sub nsw i32 %411, 10
  store i32 %412, i32* @offset, align 4
  br label %413

413:                                              ; preds = %410, %403
  br label %414

414:                                              ; preds = %413, %398
  br label %415

415:                                              ; preds = %414, %393
  br label %416

416:                                              ; preds = %415, %383
  br label %533

417:                                              ; preds = %373
  %418 = load i16, i16* %4, align 2
  %419 = sext i16 %418 to i32
  %420 = load i16, i16* @PAD_TRIGGER_Z, align 2
  %421 = sext i16 %420 to i32
  %422 = and i32 %419, %421
  %423 = icmp ne i32 %422, 0
  br i1 %423, label %424, label %427

424:                                              ; preds = %417
  %425 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %426 = call i32 @GUI_DeleteMenu(%struct.TYPE_25__* %425)
  store i32 0, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %537

427:                                              ; preds = %417
  %428 = load i16, i16* %4, align 2
  %429 = sext i16 %428 to i32
  %430 = load i16, i16* @PAD_BUTTON_B, align 2
  %431 = sext i16 %430 to i32
  %432 = and i32 %429, %431
  %433 = icmp ne i32 %432, 0
  br i1 %433, label %434, label %490

434:                                              ; preds = %427
  store i64 0, i64* @string_offset, align 8
  %435 = load i8*, i8** @prev_folder, align 8
  %436 = call i64 @UpdateDirectory(i32 1, i8* %435)
  %437 = icmp ne i64 %436, 0
  br i1 %437, label %438, label %486

438:                                              ; preds = %434
  %439 = call i32 (...) @ParseDirectory()
  store i32 %439, i32* @maxfiles, align 4
  store i32 0, i32* @offset, align 4
  store i32 0, i32* @selection, align 4
  store i32 -1, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %440

440:                                              ; preds = %482, %438
  %441 = load i32, i32* %5, align 4
  %442 = load i32, i32* @maxfiles, align 4
  %443 = icmp slt i32 %441, %442
  br i1 %443, label %444, label %485

444:                                              ; preds = %440
  %445 = load %struct.TYPE_19__*, %struct.TYPE_19__** @filelist, align 8
  %446 = load i32, i32* %5, align 4
  %447 = sext i32 %446 to i64
  %448 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %445, i64 %447
  %449 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %448, i32 0, i32 1
  %450 = load i64, i64* %449, align 8
  %451 = icmp ne i64 %450, 0
  br i1 %451, label %452, label %481

452:                                              ; preds = %444
  %453 = load i8*, i8** @prev_folder, align 8
  %454 = load %struct.TYPE_19__*, %struct.TYPE_19__** @filelist, align 8
  %455 = load i32, i32* %5, align 4
  %456 = sext i32 %455 to i64
  %457 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %454, i64 %456
  %458 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %457, i32 0, i32 0
  %459 = load i8*, i8** %458, align 8
  %460 = call i32 @strcmp(i8* %453, i8* %459)
  %461 = icmp ne i32 %460, 0
  br i1 %461, label %481, label %462

462:                                              ; preds = %452
  %463 = load i32, i32* %5, align 4
  store i32 %463, i32* @selection, align 4
  br label %464

464:                                              ; preds = %479, %462
  %465 = load i32, i32* %5, align 4
  %466 = load i32, i32* @offset, align 4
  %467 = add nsw i32 %466, 10
  %468 = icmp sge i32 %465, %467
  br i1 %468, label %469, label %480

469:                                              ; preds = %464
  %470 = load i32, i32* @offset, align 4
  %471 = add nsw i32 %470, 10
  store i32 %471, i32* @offset, align 4
  %472 = load i32, i32* @offset, align 4
  %473 = load i32, i32* @maxfiles, align 4
  %474 = sub nsw i32 %473, 10
  %475 = icmp sgt i32 %472, %474
  br i1 %475, label %476, label %479

476:                                              ; preds = %469
  %477 = load i32, i32* @maxfiles, align 4
  %478 = sub nsw i32 %477, 10
  store i32 %478, i32* @offset, align 4
  br label %479

479:                                              ; preds = %476, %469
  br label %464

480:                                              ; preds = %464
  br label %485

481:                                              ; preds = %452, %444
  br label %482

482:                                              ; preds = %481
  %483 = load i32, i32* %5, align 4
  %484 = add nsw i32 %483, 1
  store i32 %484, i32* %5, align 4
  br label %440

485:                                              ; preds = %480, %440
  br label %489

486:                                              ; preds = %434
  %487 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %488 = call i32 @GUI_DeleteMenu(%struct.TYPE_25__* %487)
  store i32 0, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %537

489:                                              ; preds = %485
  br label %531

490:                                              ; preds = %427
  %491 = load i16, i16* %4, align 2
  %492 = sext i16 %491 to i32
  %493 = load i16, i16* @PAD_BUTTON_A, align 2
  %494 = sext i16 %493 to i32
  %495 = and i32 %492, %494
  %496 = icmp ne i32 %495, 0
  br i1 %496, label %497, label %530

497:                                              ; preds = %490
  store i64 0, i64* @string_offset, align 8
  %498 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %499 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %498, i32 0, i32 0
  %500 = load i32, i32* %499, align 8
  %501 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %502 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %501, i32 0, i32 1
  %503 = load i32, i32* %502, align 4
  %504 = icmp slt i32 %500, %503
  br i1 %504, label %505, label %529

505:                                              ; preds = %497
  %506 = load %struct.TYPE_19__*, %struct.TYPE_19__** @filelist, align 8
  %507 = load i32, i32* @selection, align 4
  %508 = sext i32 %507 to i64
  %509 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %506, i64 %508
  %510 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %509, i32 0, i32 1
  %511 = load i64, i64* %510, align 8
  %512 = icmp ne i64 %511, 0
  br i1 %512, label %513, label %522

513:                                              ; preds = %505
  %514 = load %struct.TYPE_19__*, %struct.TYPE_19__** @filelist, align 8
  %515 = load i32, i32* @selection, align 4
  %516 = sext i32 %515 to i64
  %517 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %514, i64 %516
  %518 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %517, i32 0, i32 0
  %519 = load i8*, i8** %518, align 8
  %520 = call i64 @UpdateDirectory(i32 0, i8* %519)
  %521 = call i32 (...) @ParseDirectory()
  store i32 %521, i32* @maxfiles, align 4
  store i32 0, i32* @offset, align 4
  store i32 0, i32* @selection, align 4
  store i32 -1, i32* %6, align 4
  br label %528

522:                                              ; preds = %505
  %523 = load i32, i32* @selection, align 4
  %524 = call i32 @LoadFile(i32 %523)
  store i32 %524, i32* %12, align 4
  %525 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %526 = call i32 @GUI_DeleteMenu(%struct.TYPE_25__* %525)
  %527 = load i32, i32* %12, align 4
  store i32 %527, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %537

528:                                              ; preds = %513
  br label %529

529:                                              ; preds = %528, %497
  br label %530

530:                                              ; preds = %529, %490
  br label %531

531:                                              ; preds = %530, %489
  br label %532

532:                                              ; preds = %531
  br label %533

533:                                              ; preds = %532, %416
  br label %534

534:                                              ; preds = %533, %372
  br label %535

535:                                              ; preds = %534, %339
  br label %536

536:                                              ; preds = %535, %310
  br label %118

537:                                              ; preds = %522, %486, %424
  %538 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %538)
  %539 = load i32, i32* %2, align 4
  ret i32 %539
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @GUI_InitMenu(%struct.TYPE_25__*) #2

declare dso_local i32 @gxTextureClose(%struct.TYPE_27__**) #2

declare dso_local i32 @sprintf(i8*, i8*, i8*, i8*, i8*) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @strcat(i8*, i8*) #2

declare dso_local i32* @fopen(i8*, i8*) #2

declare dso_local %struct.TYPE_27__* @gxTextureOpenPNG(i32, i32*) #2

declare dso_local i32 @fclose(i32*) #2

declare dso_local i32 @strcpy(i32, i8*) #2

declare dso_local i32 @GUI_DrawMenu(%struct.TYPE_25__*) #2

declare dso_local i32 @gxSetScreen(...) #2

declare dso_local i32 @GUI_DeleteMenu(%struct.TYPE_25__*) #2

declare dso_local i64 @UpdateDirectory(i32, i8*) #2

declare dso_local i32 @ParseDirectory(...) #2

declare dso_local i32 @strcmp(i8*, i8*) #2

declare dso_local i32 @LoadFile(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
