; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/gx/fileio/extr_file_slot.c_slot_load.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/gx/fileio/extr_file_slot.c_slot_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64*, i32, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_7__ = type { i64 }

@MAXPATHLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"Information\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"Loading State ...\00", align 1
@sram = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [6 x i8] c"Error\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"Backup RAM is disabled !\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"Loading Backup RAM ...\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"%s/saves/%s.gp%d\00", align 1
@DEFAULT_PATH = common dso_local global i8* null, align 8
@rom_filename = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [16 x i8] c"%s/saves/%s.srm\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"Unable to open file !\00", align 1
@SEEK_END = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [28 x i8] c"Unable to allocate memory !\00", align 1
@CHUNKSIZE = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [13 x i8] c"MD-%04X.gp%d\00", align 1
@rominfo = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@.str.11 = private unnamed_addr constant [12 x i8] c"MD-%04X.srm\00", align 1
@SysArea = common dso_local global i32 0, align 4
@CARD_WORKAREA = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [5 x i8] c"GENP\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"00\00", align 1
@.str.14 = private unnamed_addr constant [28 x i8] c"Unable to mount memory card\00", align 1
@.str.15 = private unnamed_addr constant [25 x i8] c"Invalid sector size (%d)\00", align 1
@.str.16 = private unnamed_addr constant [25 x i8] c"Unable to open file (%d)\00", align 1
@.str.17 = private unnamed_addr constant [21 x i8] c"Invalid state file !\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @slot_load(i32 %0, i32 %1) #0 {
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
  %16 = alloca %struct.TYPE_7__, align 8
  %17 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %18 = load i32, i32* @MAXPATHLEN, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %6, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %7, align 8
  store i64 0, i64* %9, align 8
  %22 = load i32, i32* %4, align 4
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %2
  %25 = call i32 @GUI_MsgBoxOpen(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 1)
  br label %33

26:                                               ; preds = %2
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sram, i32 0, i32 2), align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %26
  %30 = call i32 @GUI_WaitPrompt(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %242

31:                                               ; preds = %26
  %32 = call i32 @GUI_MsgBoxOpen(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 1)
  br label %33

33:                                               ; preds = %31, %24
  %34 = load i32, i32* %5, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %103, label %36

36:                                               ; preds = %33
  %37 = load i32, i32* %4, align 4
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %36
  %40 = load i8*, i8** @DEFAULT_PATH, align 8
  %41 = load i8*, i8** @rom_filename, align 8
  %42 = load i32, i32* %4, align 4
  %43 = sub nsw i32 %42, 1
  %44 = call i32 (i8*, i8*, ...) @sprintf(i8* %21, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i8* %40, i8* %41, i32 %43)
  br label %49

45:                                               ; preds = %36
  %46 = load i8*, i8** @DEFAULT_PATH, align 8
  %47 = load i8*, i8** @rom_filename, align 8
  %48 = call i32 (i8*, i8*, ...) @sprintf(i8* %21, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i8* %46, i8* %47)
  br label %49

49:                                               ; preds = %45, %39
  %50 = call i32* @fopen(i8* %21, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  store i32* %50, i32** %12, align 8
  %51 = load i32*, i32** %12, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %55, label %53

53:                                               ; preds = %49
  %54 = call i32 @GUI_WaitPrompt(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %242

55:                                               ; preds = %49
  %56 = load i32*, i32** %12, align 8
  %57 = load i32, i32* @SEEK_END, align 4
  %58 = call i32 @fseek(i32* %56, i32 0, i32 %57)
  %59 = load i32*, i32** %12, align 8
  %60 = call i64 @ftell(i32* %59)
  store i64 %60, i64* %8, align 8
  %61 = load i32*, i32** %12, align 8
  %62 = load i32, i32* @SEEK_SET, align 4
  %63 = call i32 @fseek(i32* %61, i32 0, i32 %62)
  %64 = load i64, i64* %8, align 8
  %65 = call i64 @memalign(i32 32, i64 %64)
  %66 = inttoptr i64 %65 to i32*
  store i32* %66, i32** %10, align 8
  %67 = load i32*, i32** %10, align 8
  %68 = icmp ne i32* %67, null
  br i1 %68, label %73, label %69

69:                                               ; preds = %55
  %70 = call i32 @GUI_WaitPrompt(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0))
  %71 = load i32*, i32** %12, align 8
  %72 = call i32 @fclose(i32* %71)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %242

73:                                               ; preds = %55
  br label %74

74:                                               ; preds = %78, %73
  %75 = load i64, i64* %8, align 8
  %76 = load i64, i64* @CHUNKSIZE, align 8
  %77 = icmp ugt i64 %75, %76
  br i1 %77, label %78, label %91

78:                                               ; preds = %74
  %79 = load i32*, i32** %10, align 8
  %80 = load i64, i64* %9, align 8
  %81 = getelementptr inbounds i32, i32* %79, i64 %80
  %82 = load i64, i64* @CHUNKSIZE, align 8
  %83 = load i32*, i32** %12, align 8
  %84 = call i32 @fread(i32* %81, i64 %82, i32 1, i32* %83)
  %85 = load i64, i64* @CHUNKSIZE, align 8
  %86 = load i64, i64* %9, align 8
  %87 = add i64 %86, %85
  store i64 %87, i64* %9, align 8
  %88 = load i64, i64* @CHUNKSIZE, align 8
  %89 = load i64, i64* %8, align 8
  %90 = sub i64 %89, %88
  store i64 %90, i64* %8, align 8
  br label %74

91:                                               ; preds = %74
  %92 = load i32*, i32** %10, align 8
  %93 = load i64, i64* %9, align 8
  %94 = getelementptr inbounds i32, i32* %92, i64 %93
  %95 = load i64, i64* %8, align 8
  %96 = load i32*, i32** %12, align 8
  %97 = call i32 @fread(i32* %94, i64 %95, i32 1, i32* %96)
  %98 = load i64, i64* %8, align 8
  %99 = load i64, i64* %9, align 8
  %100 = add i64 %99, %98
  store i64 %100, i64* %9, align 8
  %101 = load i32*, i32** %12, align 8
  %102 = call i32 @fclose(i32* %101)
  br label %220

103:                                              ; preds = %33
  %104 = load i32, i32* %4, align 4
  %105 = icmp sgt i32 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %103
  %107 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @rominfo, i32 0, i32 0), align 4
  %108 = load i32, i32* %4, align 4
  %109 = sub nsw i32 %108, 1
  %110 = call i32 (i8*, i8*, ...) @sprintf(i8* %21, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0), i32 %107, i32 %109)
  br label %114

111:                                              ; preds = %103
  %112 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @rominfo, i32 0, i32 0), align 4
  %113 = call i32 (i8*, i8*, ...) @sprintf(i8* %21, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0), i32 %112)
  br label %114

114:                                              ; preds = %111, %106
  %115 = load i32, i32* @CARD_WORKAREA, align 4
  %116 = call i32 @memset(i32* @SysArea, i32 0, i32 %115)
  %117 = call i32 @CARD_Init(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0))
  %118 = load i32, i32* %5, align 4
  %119 = add nsw i32 %118, -1
  store i32 %119, i32* %5, align 4
  %120 = load i32, i32* %5, align 4
  %121 = call i32 @CardMount(i32 %120)
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %125, label %123

123:                                              ; preds = %114
  %124 = call i32 @GUI_WaitPrompt(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.14, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %242

125:                                              ; preds = %114
  store i64 0, i64* %14, align 8
  %126 = load i32, i32* %5, align 4
  %127 = call i32 @CARD_GetSectorSize(i32 %126, i64* %14)
  store i32 %127, i32* %15, align 4
  %128 = load i64, i64* %14, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %138, label %130

130:                                              ; preds = %125
  %131 = getelementptr inbounds [64 x i8], [64 x i8]* %13, i64 0, i64 0
  %132 = load i32, i32* %15, align 4
  %133 = call i32 (i8*, i8*, ...) @sprintf(i8* %131, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.15, i64 0, i64 0), i32 %132)
  %134 = getelementptr inbounds [64 x i8], [64 x i8]* %13, i64 0, i64 0
  %135 = call i32 @GUI_WaitPrompt(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %134)
  %136 = load i32, i32* %5, align 4
  %137 = call i32 @CARD_Unmount(i32 %136)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %242

138:                                              ; preds = %125
  %139 = load i32, i32* %5, align 4
  %140 = call i32 @CARD_Open(i32 %139, i8* %21, %struct.TYPE_7__* %16)
  store i32 %140, i32* %15, align 4
  %141 = load i32, i32* %15, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %151

143:                                              ; preds = %138
  %144 = getelementptr inbounds [64 x i8], [64 x i8]* %13, i64 0, i64 0
  %145 = load i32, i32* %15, align 4
  %146 = call i32 (i8*, i8*, ...) @sprintf(i8* %144, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.16, i64 0, i64 0), i32 %145)
  %147 = getelementptr inbounds [64 x i8], [64 x i8]* %13, i64 0, i64 0
  %148 = call i32 @GUI_WaitPrompt(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %147)
  %149 = load i32, i32* %5, align 4
  %150 = call i32 @CARD_Unmount(i32 %149)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %242

151:                                              ; preds = %138
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  store i64 %153, i64* %8, align 8
  %154 = load i64, i64* %8, align 8
  %155 = load i64, i64* %14, align 8
  %156 = urem i64 %154, %155
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %165

158:                                              ; preds = %151
  %159 = load i64, i64* %8, align 8
  %160 = load i64, i64* %14, align 8
  %161 = udiv i64 %159, %160
  %162 = add i64 %161, 1
  %163 = load i64, i64* %14, align 8
  %164 = mul i64 %162, %163
  store i64 %164, i64* %8, align 8
  br label %165

165:                                              ; preds = %158, %151
  %166 = load i64, i64* %8, align 8
  %167 = call i64 @memalign(i32 32, i64 %166)
  %168 = inttoptr i64 %167 to i32*
  store i32* %168, i32** %17, align 8
  %169 = load i32*, i32** %17, align 8
  %170 = icmp ne i32* %169, null
  br i1 %170, label %176, label %171

171:                                              ; preds = %165
  %172 = call i32 @GUI_WaitPrompt(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0))
  %173 = call i32 @CARD_Close(%struct.TYPE_7__* %16)
  %174 = load i32, i32* %5, align 4
  %175 = call i32 @CARD_Unmount(i32 %174)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %242

176:                                              ; preds = %165
  br label %177

177:                                              ; preds = %180, %176
  %178 = load i64, i64* %8, align 8
  %179 = icmp ugt i64 %178, 0
  br i1 %179, label %180, label %193

180:                                              ; preds = %177
  %181 = load i32*, i32** %17, align 8
  %182 = load i64, i64* %9, align 8
  %183 = getelementptr inbounds i32, i32* %181, i64 %182
  %184 = load i64, i64* %14, align 8
  %185 = load i64, i64* %9, align 8
  %186 = call i32 @CARD_Read(%struct.TYPE_7__* %16, i32* %183, i64 %184, i64 %185)
  %187 = load i64, i64* %14, align 8
  %188 = load i64, i64* %9, align 8
  %189 = add i64 %188, %187
  store i64 %189, i64* %9, align 8
  %190 = load i64, i64* %14, align 8
  %191 = load i64, i64* %8, align 8
  %192 = sub i64 %191, %190
  store i64 %192, i64* %8, align 8
  br label %177

193:                                              ; preds = %177
  %194 = call i32 @CARD_Close(%struct.TYPE_7__* %16)
  %195 = load i32, i32* %5, align 4
  %196 = call i32 @CARD_Unmount(i32 %195)
  %197 = load i32*, i32** %17, align 8
  %198 = getelementptr inbounds i32, i32* %197, i64 2112
  %199 = call i32 @memcpy(i64* %8, i32* %198, i32 4)
  %200 = load i64, i64* %8, align 8
  %201 = call i64 @memalign(i32 32, i64 %200)
  %202 = inttoptr i64 %201 to i32*
  store i32* %202, i32** %10, align 8
  %203 = load i32*, i32** %10, align 8
  %204 = icmp ne i32* %203, null
  br i1 %204, label %209, label %205

205:                                              ; preds = %193
  %206 = load i32*, i32** %17, align 8
  %207 = call i32 @free(i32* %206)
  %208 = call i32 @GUI_WaitPrompt(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %242

209:                                              ; preds = %193
  %210 = load i32*, i32** %10, align 8
  %211 = load i32*, i32** %17, align 8
  %212 = getelementptr inbounds i32, i32* %211, i64 2112
  %213 = getelementptr inbounds i32, i32* %212, i64 4
  %214 = load i64, i64* %9, align 8
  %215 = sub i64 %214, 2112
  %216 = sub i64 %215, 4
  %217 = call i32 @uncompress(i32* %210, i64* %8, i32* %213, i64 %216)
  %218 = load i32*, i32** %17, align 8
  %219 = call i32 @free(i32* %218)
  br label %220

220:                                              ; preds = %209, %91
  %221 = load i32, i32* %4, align 4
  %222 = icmp sgt i32 %221, 0
  br i1 %222, label %223, label %232

223:                                              ; preds = %220
  %224 = load i32*, i32** %10, align 8
  %225 = call i64 @state_load(i32* %224)
  %226 = icmp sle i64 %225, 0
  br i1 %226, label %227, label %231

227:                                              ; preds = %223
  %228 = load i32*, i32** %10, align 8
  %229 = call i32 @free(i32* %228)
  %230 = call i32 @GUI_WaitPrompt(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.17, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %242

231:                                              ; preds = %223
  br label %238

232:                                              ; preds = %220
  %233 = load i64*, i64** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sram, i32 0, i32 0), align 8
  %234 = load i32*, i32** %10, align 8
  %235 = call i32 @memcpy(i64* %233, i32* %234, i32 65536)
  %236 = load i64*, i64** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sram, i32 0, i32 0), align 8
  %237 = call i32 @crc32(i32 0, i64* %236, i32 65536)
  store i32 %237, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sram, i32 0, i32 1), align 8
  br label %238

238:                                              ; preds = %232, %231
  %239 = load i32*, i32** %10, align 8
  %240 = call i32 @free(i32* %239)
  %241 = call i32 (...) @GUI_MsgBoxClose()
  store i32 1, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %242

242:                                              ; preds = %238, %227, %205, %171, %143, %130, %123, %69, %53, %29
  %243 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %243)
  %244 = load i32, i32* %3, align 4
  ret i32 %244
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @GUI_MsgBoxOpen(i8*, i8*, i32) #2

declare dso_local i32 @GUI_WaitPrompt(i8*, i8*) #2

declare dso_local i32 @sprintf(i8*, i8*, ...) #2

declare dso_local i32* @fopen(i8*, i8*) #2

declare dso_local i32 @fseek(i32*, i32, i32) #2

declare dso_local i64 @ftell(i32*) #2

declare dso_local i64 @memalign(i32, i64) #2

declare dso_local i32 @fclose(i32*) #2

declare dso_local i32 @fread(i32*, i64, i32, i32*) #2

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @CARD_Init(i8*, i8*) #2

declare dso_local i32 @CardMount(i32) #2

declare dso_local i32 @CARD_GetSectorSize(i32, i64*) #2

declare dso_local i32 @CARD_Unmount(i32) #2

declare dso_local i32 @CARD_Open(i32, i8*, %struct.TYPE_7__*) #2

declare dso_local i32 @CARD_Close(%struct.TYPE_7__*) #2

declare dso_local i32 @CARD_Read(%struct.TYPE_7__*, i32*, i64, i64) #2

declare dso_local i32 @memcpy(i64*, i32*, i32) #2

declare dso_local i32 @free(i32*) #2

declare dso_local i32 @uncompress(i32*, i64*, i32*, i64) #2

declare dso_local i64 @state_load(i32*) #2

declare dso_local i32 @crc32(i32, i64*, i32) #2

declare dso_local i32 @GUI_MsgBoxClose(...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
