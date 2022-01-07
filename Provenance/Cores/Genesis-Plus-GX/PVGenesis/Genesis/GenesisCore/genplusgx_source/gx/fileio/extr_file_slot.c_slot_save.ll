; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/gx/fileio/extr_file_slot.c_slot_save.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/gx/fileio/extr_file_slot.c_slot_save.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64*, i64, i32 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_14__ = type { i64, i32 }
%struct.TYPE_13__ = type { i32, i32, i32, i32, i32 }

@MAXPATHLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"Information\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"Saving State ...\00", align 1
@STATE_SIZE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [6 x i8] c"Error\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"Unable to allocate memory !\00", align 1
@sram = common dso_local global %struct.TYPE_15__ zeroinitializer, align 8
@.str.4 = private unnamed_addr constant [22 x i8] c"Backup RAM disabled !\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"Warning\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"Backup RAM not modified !\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"Saving Backup RAM ...\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"%s/saves/%s.gp%d\00", align 1
@DEFAULT_PATH = common dso_local global i8* null, align 8
@rom_filename = common dso_local global i8* null, align 8
@.str.9 = private unnamed_addr constant [16 x i8] c"%s/saves/%s.srm\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"Unable to open file !\00", align 1
@CHUNKSIZE = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [20 x i8] c"%s/saves/%s__%d.png\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"MD-%04X.gp%d\00", align 1
@rominfo = common dso_local global %struct.TYPE_16__ zeroinitializer, align 4
@.str.14 = private unnamed_addr constant [12 x i8] c"MD-%04X.srm\00", align 1
@SysArea = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@CARD_WORKAREA = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [5 x i8] c"GENP\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"00\00", align 1
@.str.17 = private unnamed_addr constant [28 x i8] c"Unable to mount memory card\00", align 1
@.str.18 = private unnamed_addr constant [25 x i8] c"Invalid sector size (%d)\00", align 1
@__const.slot_save.comment = private unnamed_addr constant [2 x [32 x i8]] [[32 x i8] c"Genesis Plus GX\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"SRAM Save\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00"], align 16
@icon = common dso_local global i64 0, align 8
@CARD_ERROR_READY = common dso_local global i64 0, align 8
@.str.19 = private unnamed_addr constant [5 x i8] c"TEMP\00", align 1
@.str.20 = private unnamed_addr constant [34 x i8] c"Unable to increase file size (%d)\00", align 1
@.str.21 = private unnamed_addr constant [27 x i8] c"Unable to create file (%d)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @slot_save(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca [64 x i8], align 16
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca [2 x [32 x i8]], align 16
  %18 = alloca %struct.TYPE_14__, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.TYPE_13__, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %22 = load i32, i32* @MAXPATHLEN, align 4
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %6, align 8
  %25 = alloca i8, i64 %23, align 16
  store i64 %23, i64* %7, align 8
  store i64 0, i64* %9, align 8
  %26 = load i32, i32* %4, align 4
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %40

28:                                               ; preds = %2
  %29 = call i32 @GUI_MsgBoxOpen(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 1)
  %30 = load i64, i64* @STATE_SIZE, align 8
  %31 = call i64 @memalign(i32 32, i64 %30)
  %32 = inttoptr i64 %31 to i32*
  store i32* %32, i32** %10, align 8
  %33 = load i32*, i32** %10, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %28
  %36 = call i32 @GUI_WaitPrompt(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %324

37:                                               ; preds = %28
  %38 = load i32*, i32** %10, align 8
  %39 = call i64 @state_save(i32* %38)
  store i64 %39, i64* %8, align 8
  br label %67

40:                                               ; preds = %2
  %41 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @sram, i32 0, i32 2), align 8
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %40
  %44 = call i32 @GUI_WaitPrompt(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %324

45:                                               ; preds = %40
  %46 = load i64*, i64** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @sram, i32 0, i32 0), align 8
  %47 = getelementptr inbounds i64, i64* %46, i64 0
  %48 = call i64 @crc32(i32 0, i64* %47, i32 65536)
  %49 = load i64, i64* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @sram, i32 0, i32 1), align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %45
  %52 = call i32 @GUI_WaitPrompt(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %324

53:                                               ; preds = %45
  %54 = call i32 @GUI_MsgBoxOpen(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i32 1)
  %55 = call i64 @memalign(i32 32, i64 65536)
  %56 = inttoptr i64 %55 to i32*
  store i32* %56, i32** %10, align 8
  %57 = load i32*, i32** %10, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %61, label %59

59:                                               ; preds = %53
  %60 = call i32 @GUI_WaitPrompt(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %324

61:                                               ; preds = %53
  %62 = load i32*, i32** %10, align 8
  %63 = load i64*, i64** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @sram, i32 0, i32 0), align 8
  %64 = call i32 (i32*, ...) @memcpy(i32* %62, i64* %63, i32 65536)
  store i64 65536, i64* %8, align 8
  %65 = load i64*, i64** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @sram, i32 0, i32 0), align 8
  %66 = call i64 @crc32(i32 0, i64* %65, i32 65536)
  store i64 %66, i64* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @sram, i32 0, i32 1), align 8
  br label %67

67:                                               ; preds = %61, %37
  %68 = load i32, i32* %5, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %134, label %70

70:                                               ; preds = %67
  %71 = load i32, i32* %4, align 4
  %72 = icmp sgt i32 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %70
  %74 = load i8*, i8** @DEFAULT_PATH, align 8
  %75 = load i8*, i8** @rom_filename, align 8
  %76 = load i32, i32* %4, align 4
  %77 = sub nsw i32 %76, 1
  %78 = call i32 (i8*, i8*, ...) @sprintf(i8* %25, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0), i8* %74, i8* %75, i32 %77)
  br label %83

79:                                               ; preds = %70
  %80 = load i8*, i8** @DEFAULT_PATH, align 8
  %81 = load i8*, i8** @rom_filename, align 8
  %82 = call i32 (i8*, i8*, ...) @sprintf(i8* %25, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0), i8* %80, i8* %81)
  br label %83

83:                                               ; preds = %79, %73
  %84 = call i32* @fopen(i8* %25, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0))
  store i32* %84, i32** %12, align 8
  %85 = load i32*, i32** %12, align 8
  %86 = icmp ne i32* %85, null
  br i1 %86, label %91, label %87

87:                                               ; preds = %83
  %88 = call i32 @GUI_WaitPrompt(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i64 0, i64 0))
  %89 = load i32*, i32** %10, align 8
  %90 = call i32 @free(i32* %89)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %324

91:                                               ; preds = %83
  br label %92

92:                                               ; preds = %96, %91
  %93 = load i64, i64* %8, align 8
  %94 = load i64, i64* @CHUNKSIZE, align 8
  %95 = icmp ugt i64 %93, %94
  br i1 %95, label %96, label %109

96:                                               ; preds = %92
  %97 = load i32*, i32** %10, align 8
  %98 = load i64, i64* %9, align 8
  %99 = getelementptr inbounds i32, i32* %97, i64 %98
  %100 = load i64, i64* @CHUNKSIZE, align 8
  %101 = load i32*, i32** %12, align 8
  %102 = call i32 @fwrite(i32* %99, i64 %100, i32 1, i32* %101)
  %103 = load i64, i64* @CHUNKSIZE, align 8
  %104 = load i64, i64* %9, align 8
  %105 = add i64 %104, %103
  store i64 %105, i64* %9, align 8
  %106 = load i64, i64* @CHUNKSIZE, align 8
  %107 = load i64, i64* %8, align 8
  %108 = sub i64 %107, %106
  store i64 %108, i64* %8, align 8
  br label %92

109:                                              ; preds = %92
  %110 = load i32*, i32** %10, align 8
  %111 = load i64, i64* %9, align 8
  %112 = getelementptr inbounds i32, i32* %110, i64 %111
  %113 = load i64, i64* %8, align 8
  %114 = load i32*, i32** %12, align 8
  %115 = call i32 @fwrite(i32* %112, i64 %113, i32 1, i32* %114)
  %116 = load i64, i64* %8, align 8
  %117 = load i64, i64* %9, align 8
  %118 = add i64 %117, %116
  store i64 %118, i64* %9, align 8
  %119 = load i32*, i32** %12, align 8
  %120 = call i32 @fclose(i32* %119)
  %121 = load i32*, i32** %10, align 8
  %122 = call i32 @free(i32* %121)
  %123 = call i32 (...) @GUI_MsgBoxClose()
  %124 = load i32, i32* %4, align 4
  %125 = icmp sgt i32 %124, 0
  br i1 %125, label %126, label %133

126:                                              ; preds = %109
  %127 = load i8*, i8** @DEFAULT_PATH, align 8
  %128 = load i8*, i8** @rom_filename, align 8
  %129 = load i32, i32* %4, align 4
  %130 = sub nsw i32 %129, 1
  %131 = call i32 (i8*, i8*, ...) @sprintf(i8* %25, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i64 0, i64 0), i8* %127, i8* %128, i32 %130)
  %132 = call i32 @gxSaveScreenshot(i8* %25)
  br label %133

133:                                              ; preds = %126, %109
  br label %323

134:                                              ; preds = %67
  %135 = load i32, i32* %4, align 4
  %136 = icmp sgt i32 %135, 0
  br i1 %136, label %137, label %142

137:                                              ; preds = %134
  %138 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @rominfo, i32 0, i32 0), align 4
  %139 = load i32, i32* %4, align 4
  %140 = sub nsw i32 %139, 1
  %141 = call i32 (i8*, i8*, ...) @sprintf(i8* %25, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i64 0, i64 0), i32 %138, i32 %140)
  br label %145

142:                                              ; preds = %134
  %143 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @rominfo, i32 0, i32 0), align 4
  %144 = call i32 (i8*, i8*, ...) @sprintf(i8* %25, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i64 0, i64 0), i32 %143)
  br label %145

145:                                              ; preds = %142, %137
  %146 = load i32, i32* @CARD_WORKAREA, align 4
  %147 = call i32 @memset(%struct.TYPE_14__* @SysArea, i32 0, i32 %146)
  %148 = call i32 @CARD_Init(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i64 0, i64 0))
  %149 = load i32, i32* %5, align 4
  %150 = add nsw i32 %149, -1
  store i32 %150, i32* %5, align 4
  %151 = load i32, i32* %5, align 4
  %152 = call i32 @CardMount(i32 %151)
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %158, label %154

154:                                              ; preds = %145
  %155 = call i32 @GUI_WaitPrompt(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.17, i64 0, i64 0))
  %156 = load i32*, i32** %10, align 8
  %157 = call i32 @free(i32* %156)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %324

158:                                              ; preds = %145
  store i64 0, i64* %14, align 8
  %159 = load i32, i32* %5, align 4
  %160 = call i32 @CARD_GetSectorSize(i32 %159, i64* %14)
  store i32 %160, i32* %15, align 4
  %161 = load i64, i64* %14, align 8
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %173, label %163

163:                                              ; preds = %158
  %164 = getelementptr inbounds [64 x i8], [64 x i8]* %13, i64 0, i64 0
  %165 = load i32, i32* %15, align 4
  %166 = call i32 (i8*, i8*, ...) @sprintf(i8* %164, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.18, i64 0, i64 0), i32 %165)
  %167 = getelementptr inbounds [64 x i8], [64 x i8]* %13, i64 0, i64 0
  %168 = call i32 @GUI_WaitPrompt(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %167)
  %169 = load i32, i32* %5, align 4
  %170 = call i32 @CARD_Unmount(i32 %169)
  %171 = load i32*, i32** %10, align 8
  %172 = call i32 @free(i32* %171)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %324

173:                                              ; preds = %158
  %174 = load i64, i64* %8, align 8
  %175 = add i64 %174, 2112
  %176 = add i64 %175, 4
  %177 = call i64 @memalign(i32 32, i64 %176)
  %178 = inttoptr i64 %177 to i32*
  store i32* %178, i32** %16, align 8
  %179 = load i32*, i32** %16, align 8
  %180 = icmp ne i32* %179, null
  br i1 %180, label %187, label %181

181:                                              ; preds = %173
  %182 = call i32 @GUI_WaitPrompt(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %183 = load i32, i32* %5, align 4
  %184 = call i32 @CARD_Unmount(i32 %183)
  %185 = load i32*, i32** %10, align 8
  %186 = call i32 @free(i32* %185)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %324

187:                                              ; preds = %173
  %188 = bitcast [2 x [32 x i8]]* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %188, i8* align 16 getelementptr inbounds ([2 x [32 x i8]], [2 x [32 x i8]]* @__const.slot_save.comment, i32 0, i32 0, i32 0), i64 64, i1 false)
  %189 = getelementptr inbounds [2 x [32 x i8]], [2 x [32 x i8]]* %17, i64 0, i64 1
  %190 = getelementptr inbounds [32 x i8], [32 x i8]* %189, i64 0, i64 0
  %191 = call i32 @strcpy(i8* %190, i8* %25)
  %192 = load i32*, i32** %16, align 8
  %193 = getelementptr inbounds i32, i32* %192, i64 0
  %194 = call i32 (i32*, ...) @memcpy(i32* %193, i64* @icon, i32 2048)
  %195 = load i32*, i32** %16, align 8
  %196 = getelementptr inbounds i32, i32* %195, i64 2048
  %197 = getelementptr inbounds [2 x [32 x i8]], [2 x [32 x i8]]* %17, i64 0, i64 0
  %198 = call i32 (i32*, ...) @memcpy(i32* %196, [32 x i8]* %197, i32 64)
  %199 = load i64, i64* %8, align 8
  store i64 %199, i64* %9, align 8
  %200 = load i32*, i32** %16, align 8
  %201 = getelementptr inbounds i32, i32* %200, i64 2112
  %202 = call i32 (i32*, ...) @memcpy(i32* %201, i64* %9, i32 4)
  %203 = load i32*, i32** %16, align 8
  %204 = getelementptr inbounds i32, i32* %203, i64 2116
  %205 = load i32*, i32** %10, align 8
  %206 = load i64, i64* %9, align 8
  %207 = call i32 @compress2(i32* %204, i64* %8, i32* %205, i64 %206, i32 9)
  %208 = load i64, i64* %8, align 8
  %209 = add i64 %208, 4
  %210 = add i64 %209, 2112
  store i64 %210, i64* %8, align 8
  %211 = load i64, i64* %8, align 8
  %212 = load i64, i64* %14, align 8
  %213 = urem i64 %211, %212
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %222

215:                                              ; preds = %187
  %216 = load i64, i64* %8, align 8
  %217 = load i64, i64* %14, align 8
  %218 = udiv i64 %216, %217
  %219 = add i64 %218, 1
  %220 = load i64, i64* %14, align 8
  %221 = mul i64 %219, %220
  store i64 %221, i64* %8, align 8
  br label %222

222:                                              ; preds = %215, %187
  %223 = load i32, i32* %5, align 4
  %224 = call i64 @CARD_Open(i32 %223, i8* %25, %struct.TYPE_14__* %18)
  %225 = load i64, i64* @CARD_ERROR_READY, align 8
  %226 = icmp eq i64 %224, %225
  br i1 %226, label %227, label %264

227:                                              ; preds = %222
  %228 = load i64, i64* %8, align 8
  %229 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 0
  %230 = load i64, i64* %229, align 8
  %231 = sub i64 %228, %230
  %232 = trunc i64 %231 to i32
  store i32 %232, i32* %19, align 4
  %233 = call i32 @CARD_Close(%struct.TYPE_14__* %18)
  %234 = call i32 @memset(%struct.TYPE_14__* %18, i32 0, i32 16)
  %235 = load i32, i32* %19, align 4
  %236 = icmp sgt i32 %235, 0
  br i1 %236, label %237, label %261

237:                                              ; preds = %227
  %238 = load i32, i32* %5, align 4
  %239 = load i32, i32* %19, align 4
  %240 = sext i32 %239 to i64
  %241 = call i32 @CARD_Create(i32 %238, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0), i64 %240, %struct.TYPE_14__* %18)
  store i32 %241, i32* %15, align 4
  %242 = load i32, i32* %15, align 4
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %256

244:                                              ; preds = %237
  %245 = getelementptr inbounds [64 x i8], [64 x i8]* %13, i64 0, i64 0
  %246 = load i32, i32* %15, align 4
  %247 = call i32 (i8*, i8*, ...) @sprintf(i8* %245, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.20, i64 0, i64 0), i32 %246)
  %248 = getelementptr inbounds [64 x i8], [64 x i8]* %13, i64 0, i64 0
  %249 = call i32 @GUI_WaitPrompt(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %248)
  %250 = load i32, i32* %5, align 4
  %251 = call i32 @CARD_Unmount(i32 %250)
  %252 = load i32*, i32** %16, align 8
  %253 = call i32 @free(i32* %252)
  %254 = load i32*, i32** %10, align 8
  %255 = call i32 @free(i32* %254)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %324

256:                                              ; preds = %237
  %257 = call i32 @CARD_Close(%struct.TYPE_14__* %18)
  %258 = call i32 @memset(%struct.TYPE_14__* %18, i32 0, i32 16)
  %259 = load i32, i32* %5, align 4
  %260 = call i32 @CARD_Delete(i32 %259, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0))
  br label %261

261:                                              ; preds = %256, %227
  %262 = load i32, i32* %5, align 4
  %263 = call i32 @CARD_Delete(i32 %262, i8* %25)
  br label %264

264:                                              ; preds = %261, %222
  %265 = load i32, i32* %5, align 4
  %266 = load i64, i64* %8, align 8
  %267 = call i32 @CARD_Create(i32 %265, i8* %25, i64 %266, %struct.TYPE_14__* %18)
  store i32 %267, i32* %15, align 4
  %268 = load i32, i32* %15, align 4
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %282

270:                                              ; preds = %264
  %271 = getelementptr inbounds [64 x i8], [64 x i8]* %13, i64 0, i64 0
  %272 = load i32, i32* %15, align 4
  %273 = call i32 (i8*, i8*, ...) @sprintf(i8* %271, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.21, i64 0, i64 0), i32 %272)
  %274 = getelementptr inbounds [64 x i8], [64 x i8]* %13, i64 0, i64 0
  %275 = call i32 @GUI_WaitPrompt(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %274)
  %276 = load i32, i32* %5, align 4
  %277 = call i32 @CARD_Unmount(i32 %276)
  %278 = load i32*, i32** %16, align 8
  %279 = call i32 @free(i32* %278)
  %280 = load i32*, i32** %10, align 8
  %281 = call i32 @free(i32* %280)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %324

282:                                              ; preds = %264
  %283 = call i32 @time(i32* %20)
  %284 = load i32, i32* %5, align 4
  %285 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 1
  %286 = load i32, i32* %285, align 8
  %287 = call i32 @CARD_GetStatus(i32 %284, i32 %286, %struct.TYPE_13__* %21)
  %288 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 0
  store i32 0, i32* %288, align 4
  %289 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 1
  store i32 2, i32* %289, align 4
  %290 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 2
  store i32 1, i32* %290, align 4
  %291 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 3
  store i32 2048, i32* %291, align 4
  %292 = load i32, i32* %20, align 4
  %293 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 4
  store i32 %292, i32* %293, align 4
  %294 = load i32, i32* %5, align 4
  %295 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 1
  %296 = load i32, i32* %295, align 8
  %297 = call i32 @CARD_SetStatus(i32 %294, i32 %296, %struct.TYPE_13__* %21)
  br label %298

298:                                              ; preds = %301, %282
  %299 = load i64, i64* %8, align 8
  %300 = icmp ugt i64 %299, 0
  br i1 %300, label %301, label %314

301:                                              ; preds = %298
  %302 = load i32*, i32** %16, align 8
  %303 = load i64, i64* %9, align 8
  %304 = getelementptr inbounds i32, i32* %302, i64 %303
  %305 = load i64, i64* %14, align 8
  %306 = load i64, i64* %9, align 8
  %307 = call i32 @CARD_Write(%struct.TYPE_14__* %18, i32* %304, i64 %305, i64 %306)
  %308 = load i64, i64* %14, align 8
  %309 = load i64, i64* %8, align 8
  %310 = sub i64 %309, %308
  store i64 %310, i64* %8, align 8
  %311 = load i64, i64* %14, align 8
  %312 = load i64, i64* %9, align 8
  %313 = add i64 %312, %311
  store i64 %313, i64* %9, align 8
  br label %298

314:                                              ; preds = %298
  %315 = call i32 @CARD_Close(%struct.TYPE_14__* %18)
  %316 = load i32, i32* %5, align 4
  %317 = call i32 @CARD_Unmount(i32 %316)
  %318 = load i32*, i32** %16, align 8
  %319 = call i32 @free(i32* %318)
  %320 = load i32*, i32** %10, align 8
  %321 = call i32 @free(i32* %320)
  %322 = call i32 (...) @GUI_MsgBoxClose()
  br label %323

323:                                              ; preds = %314, %133
  store i32 1, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %324

324:                                              ; preds = %323, %270, %244, %181, %163, %154, %87, %59, %51, %43, %35
  %325 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %325)
  %326 = load i32, i32* %3, align 4
  ret i32 %326
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @GUI_MsgBoxOpen(i8*, i8*, i32) #2

declare dso_local i64 @memalign(i32, i64) #2

declare dso_local i32 @GUI_WaitPrompt(i8*, i8*) #2

declare dso_local i64 @state_save(i32*) #2

declare dso_local i64 @crc32(i32, i64*, i32) #2

declare dso_local i32 @memcpy(i32*, ...) #2

declare dso_local i32 @sprintf(i8*, i8*, ...) #2

declare dso_local i32* @fopen(i8*, i8*) #2

declare dso_local i32 @free(i32*) #2

declare dso_local i32 @fwrite(i32*, i64, i32, i32*) #2

declare dso_local i32 @fclose(i32*) #2

declare dso_local i32 @GUI_MsgBoxClose(...) #2

declare dso_local i32 @gxSaveScreenshot(i8*) #2

declare dso_local i32 @memset(%struct.TYPE_14__*, i32, i32) #2

declare dso_local i32 @CARD_Init(i8*, i8*) #2

declare dso_local i32 @CardMount(i32) #2

declare dso_local i32 @CARD_GetSectorSize(i32, i64*) #2

declare dso_local i32 @CARD_Unmount(i32) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i32 @strcpy(i8*, i8*) #2

declare dso_local i32 @compress2(i32*, i64*, i32*, i64, i32) #2

declare dso_local i64 @CARD_Open(i32, i8*, %struct.TYPE_14__*) #2

declare dso_local i32 @CARD_Close(%struct.TYPE_14__*) #2

declare dso_local i32 @CARD_Create(i32, i8*, i64, %struct.TYPE_14__*) #2

declare dso_local i32 @CARD_Delete(i32, i8*) #2

declare dso_local i32 @time(i32*) #2

declare dso_local i32 @CARD_GetStatus(i32, i32, %struct.TYPE_13__*) #2

declare dso_local i32 @CARD_SetStatus(i32, i32, %struct.TYPE_13__*) #2

declare dso_local i32 @CARD_Write(%struct.TYPE_14__*, i32*, i64, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
