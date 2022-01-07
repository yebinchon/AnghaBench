; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/tools/bin_to_cso_mp3/extr_bin_to_cso_mp3.c_load_bin_cue.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/tools/bin_to_cso_mp3/extr_bin_to_cso_mp3.c_load_bin_cue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i64, %struct.TYPE_3__**, i32*, %struct.TYPE_3__*, i64 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"loading cue file %s\0A\00", align 1
@MAX_PATH = common dso_local global i32 0, align 4
@DIR_SEPARATOR_CHAR = common dso_local global i8 0, align 1
@cd_bin = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [27 x i8] c"can't open bin file: \22%s\22\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"found bin file: %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"TRACK %d %s\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"AUDIO\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"MODE1/2352\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"MODE1/2048\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"PREGAP %d:%d:%d\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"INDEX %d %d:%d:%d\00", align 1
@SEEK_END = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [25 x i8] c"finished loading cue %s\0A\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"bin file: %s (%p)\0A\00", align 1
@.str.12 = private unnamed_addr constant [33 x i8] c"first track: %d, last track: %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"track %d (%p):\0A\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"  (invalid)\0A\00", align 1
@.str.15 = private unnamed_addr constant [24 x i8] c"  physical offset 0x%x\0A\00", align 1
@.str.16 = private unnamed_addr constant [22 x i8] c"  sector offset 0x%x\0A\00", align 1
@.str.17 = private unnamed_addr constant [18 x i8] c"  sector size %d\0A\00", align 1
@.str.18 = private unnamed_addr constant [38 x i8] c"error: invalid/unsupported .cue file\0A\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @load_bin_cue(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca [256 x i8], align 16
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_3__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca [64 x i8], align 16
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %30 = load i8*, i8** %3, align 8
  %31 = call i8* @fopen(i8* %30, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %32 = bitcast i8* %31 to i32*
  store i32* %32, i32** %4, align 8
  %33 = load i8*, i8** %3, align 8
  %34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* %33)
  %35 = load i32*, i32** %4, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %447

37:                                               ; preds = %1
  %38 = load i32, i32* @MAX_PATH, align 4
  %39 = zext i32 %38 to i64
  %40 = call i8* @llvm.stacksave()
  store i8* %40, i8** %8, align 8
  %41 = alloca i8, i64 %39, align 16
  store i64 %39, i64* %9, align 8
  store i32 -1, i32* %11, align 4
  store i32 0, i32* %13, align 4
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %15, align 8
  %42 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %43 = load i32*, i32** %4, align 8
  %44 = call i8* @fgets(i8* %42, i32 255, i32* %43)
  store i8* %44, i8** %7, align 8
  %45 = load i8*, i8** %7, align 8
  %46 = icmp eq i8* %45, null
  br i1 %46, label %47, label %48

47:                                               ; preds = %37
  store i32 2, i32* %19, align 4
  br label %444

48:                                               ; preds = %37
  %49 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %50 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %51 = call i32 @strlen(i8* %50)
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8, i8* %49, i64 %52
  %54 = getelementptr inbounds i8, i8* %53, i64 -1
  store i8* %54, i8** %10, align 8
  %55 = load i8*, i8** %10, align 8
  %56 = call i8* @skip_whitespace_rev(i8* %55)
  store i8* %56, i8** %10, align 8
  %57 = load i8*, i8** %10, align 8
  %58 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %59 = icmp ule i8* %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %48
  store i32 2, i32* %19, align 4
  br label %444

61:                                               ; preds = %48
  %62 = load i8*, i8** %10, align 8
  %63 = call i8* @skip_nonspace_rev(i8* %62)
  store i8* %63, i8** %10, align 8
  %64 = load i8*, i8** %10, align 8
  %65 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %66 = icmp ule i8* %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %61
  store i32 2, i32* %19, align 4
  br label %444

68:                                               ; preds = %61
  %69 = load i8*, i8** %10, align 8
  %70 = call i8* @skip_whitespace_rev(i8* %69)
  store i8* %70, i8** %10, align 8
  %71 = load i8*, i8** %10, align 8
  %72 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %73 = icmp ule i8* %71, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %68
  store i32 2, i32* %19, align 4
  br label %444

75:                                               ; preds = %68
  %76 = load i8*, i8** %10, align 8
  %77 = load i8, i8* %76, align 1
  %78 = sext i8 %77 to i32
  %79 = icmp eq i32 %78, 34
  br i1 %79, label %80, label %92

80:                                               ; preds = %75
  %81 = load i8*, i8** %10, align 8
  %82 = getelementptr inbounds i8, i8* %81, i64 0
  store i8 0, i8* %82, align 1
  %83 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %84 = call i8* @strrchr(i8* %83, i8 signext 34)
  store i8* %84, i8** %10, align 8
  %85 = load i8*, i8** %10, align 8
  %86 = icmp eq i8* %85, null
  br i1 %86, label %87, label %88

87:                                               ; preds = %80
  store i32 2, i32* %19, align 4
  br label %444

88:                                               ; preds = %80
  %89 = load i8*, i8** %10, align 8
  %90 = getelementptr inbounds i8, i8* %89, i64 1
  %91 = call i32 @strcpy(i8* %41, i8* %90)
  br label %104

92:                                               ; preds = %75
  %93 = load i8*, i8** %10, align 8
  %94 = getelementptr inbounds i8, i8* %93, i64 1
  store i8 0, i8* %94, align 1
  %95 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %96 = call i8* @strrchr(i8* %95, i8 signext 32)
  store i8* %96, i8** %10, align 8
  %97 = load i8*, i8** %10, align 8
  %98 = icmp eq i8* %97, null
  br i1 %98, label %99, label %100

99:                                               ; preds = %92
  store i32 2, i32* %19, align 4
  br label %444

100:                                              ; preds = %92
  %101 = load i8*, i8** %10, align 8
  %102 = getelementptr inbounds i8, i8* %101, i64 1
  %103 = call i32 @strcpy(i8* %41, i8* %102)
  br label %104

104:                                              ; preds = %100, %88
  %105 = load i8*, i8** %3, align 8
  %106 = load i8, i8* @DIR_SEPARATOR_CHAR, align 1
  %107 = call i8* @strrchr(i8* %105, i8 signext %106)
  store i8* %107, i8** %10, align 8
  %108 = load i8*, i8** %10, align 8
  %109 = icmp ne i8* %108, null
  br i1 %109, label %110, label %126

110:                                              ; preds = %104
  %111 = load i32, i32* @MAX_PATH, align 4
  %112 = zext i32 %111 to i64
  %113 = call i8* @llvm.stacksave()
  store i8* %113, i8** %17, align 8
  %114 = alloca i8, i64 %112, align 16
  store i64 %112, i64* %18, align 8
  %115 = load i32, i32* @MAX_PATH, align 4
  %116 = call i32 @getcwd(i8* %114, i32 %115)
  %117 = load i8*, i8** %10, align 8
  store i8 0, i8* %117, align 1
  %118 = load i8*, i8** %3, align 8
  %119 = call i32 @chdir(i8* %118)
  %120 = call i8* @fopen(i8* %41, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %121 = bitcast i8* %120 to i32*
  store i32* %121, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cd_bin, i32 0, i32 5), align 8
  %122 = load i8, i8* @DIR_SEPARATOR_CHAR, align 1
  %123 = load i8*, i8** %10, align 8
  store i8 %122, i8* %123, align 1
  %124 = call i32 @chdir(i8* %114)
  %125 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %125)
  br label %129

126:                                              ; preds = %104
  %127 = call i8* @fopen(i8* %41, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %128 = bitcast i8* %127 to i32*
  store i32* %128, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cd_bin, i32 0, i32 5), align 8
  br label %129

129:                                              ; preds = %126, %110
  %130 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cd_bin, i32 0, i32 5), align 8
  %131 = icmp eq i32* %130, null
  br i1 %131, label %132, label %134

132:                                              ; preds = %129
  %133 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i8* %41)
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %19, align 4
  br label %444

134:                                              ; preds = %129
  %135 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i8* %41)
  br label %136

136:                                              ; preds = %134
  store i32 0, i32* %16, align 4
  br label %137

137:                                              ; preds = %145, %136
  %138 = load i32, i32* %16, align 4
  %139 = icmp slt i32 %138, 100
  br i1 %139, label %140, label %148

140:                                              ; preds = %137
  %141 = load %struct.TYPE_3__**, %struct.TYPE_3__*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cd_bin, i32 0, i32 4), align 8
  %142 = load i32, i32* %16, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %141, i64 %143
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %144, align 8
  br label %145

145:                                              ; preds = %140
  %146 = load i32, i32* %16, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %16, align 4
  br label %137

148:                                              ; preds = %137
  store i32 -1, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cd_bin, i32 0, i32 0), align 8
  store i32 -1, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cd_bin, i32 0, i32 1), align 4
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cd_bin, i32 0, i32 2), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cd_bin, i32 0, i32 7), align 8
  br label %149

149:                                              ; preds = %259, %148
  %150 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %151 = load i32*, i32** %4, align 8
  %152 = call i8* @fgets(i8* %150, i32 256, i32* %151)
  %153 = icmp ne i8* %152, null
  br i1 %153, label %154, label %260

154:                                              ; preds = %149
  %155 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %156 = call i8* @skip_whitespace(i8* %155)
  store i8* %156, i8** %6, align 8
  %157 = load i8*, i8** %6, align 8
  %158 = getelementptr inbounds i8, i8* %157, i64 0
  %159 = load i8, i8* %158, align 1
  %160 = sext i8 %159 to i32
  switch i32 %160, label %259 [
    i32 84, label %161
    i32 80, label %225
    i32 73, label %238
  ]

161:                                              ; preds = %154
  %162 = load i8*, i8** %6, align 8
  %163 = getelementptr inbounds [64 x i8], [64 x i8]* %21, i64 0, i64 0
  %164 = call i32 (i8*, i8*, i32*, ...) @sscanf(i8* %162, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32* %20, i8* %163)
  %165 = load i32, i32* %11, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %11, align 4
  %167 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cd_bin, i32 0, i32 6), align 8
  %168 = load i32, i32* %11, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %167, i64 %169
  store %struct.TYPE_3__* %170, %struct.TYPE_3__** %15, align 8
  %171 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %172 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %171, i32 0, i32 0
  store i32 2352, i32* %172, align 4
  %173 = getelementptr inbounds [64 x i8], [64 x i8]* %21, i64 0, i64 0
  %174 = call i32 @strcmp(i8* %173, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %181, label %176

176:                                              ; preds = %161
  %177 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %178 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %177, i32 0, i32 1
  store i32 0, i32* %178, align 4
  %179 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %180 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %179, i32 0, i32 0
  store i32 2352, i32* %180, align 4
  br label %181

181:                                              ; preds = %176, %161
  %182 = getelementptr inbounds [64 x i8], [64 x i8]* %21, i64 0, i64 0
  %183 = call i32 @strcmp(i8* %182, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0))
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %190, label %185

185:                                              ; preds = %181
  %186 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %187 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %186, i32 0, i32 1
  store i32 4, i32* %187, align 4
  %188 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %189 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %188, i32 0, i32 0
  store i32 2352, i32* %189, align 4
  br label %190

190:                                              ; preds = %185, %181
  %191 = getelementptr inbounds [64 x i8], [64 x i8]* %21, i64 0, i64 0
  %192 = call i32 @strcmp(i8* %191, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0))
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %199, label %194

194:                                              ; preds = %190
  %195 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %196 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %195, i32 0, i32 1
  store i32 4, i32* %196, align 4
  %197 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %198 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %197, i32 0, i32 0
  store i32 2048, i32* %198, align 4
  br label %199

199:                                              ; preds = %194, %190
  %200 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %201 = load %struct.TYPE_3__**, %struct.TYPE_3__*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cd_bin, i32 0, i32 4), align 8
  %202 = load i32, i32* %20, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %201, i64 %203
  store %struct.TYPE_3__* %200, %struct.TYPE_3__** %204, align 8
  %205 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cd_bin, i32 0, i32 2), align 8
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cd_bin, i32 0, i32 2), align 8
  %207 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cd_bin, i32 0, i32 0), align 8
  %208 = icmp eq i32 %207, -1
  br i1 %208, label %213, label %209

209:                                              ; preds = %199
  %210 = load i32, i32* %20, align 4
  %211 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cd_bin, i32 0, i32 0), align 8
  %212 = icmp slt i32 %210, %211
  br i1 %212, label %213, label %215

213:                                              ; preds = %209, %199
  %214 = load i32, i32* %20, align 4
  store i32 %214, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cd_bin, i32 0, i32 0), align 8
  br label %215

215:                                              ; preds = %213, %209
  %216 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cd_bin, i32 0, i32 1), align 4
  %217 = icmp eq i32 %216, -1
  br i1 %217, label %222, label %218

218:                                              ; preds = %215
  %219 = load i32, i32* %20, align 4
  %220 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cd_bin, i32 0, i32 1), align 4
  %221 = icmp sgt i32 %219, %220
  br i1 %221, label %222, label %224

222:                                              ; preds = %218, %215
  %223 = load i32, i32* %20, align 4
  store i32 %223, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cd_bin, i32 0, i32 1), align 4
  br label %224

224:                                              ; preds = %222, %218
  br label %259

225:                                              ; preds = %154
  %226 = load i8*, i8** %6, align 8
  %227 = call i32 (i8*, i8*, i32*, ...) @sscanf(i8* %226, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0), i32* %22, i32* %23, i32* %24)
  %228 = load i32, i32* %24, align 4
  %229 = load i32, i32* %23, align 4
  %230 = mul nsw i32 %229, 75
  %231 = add nsw i32 %228, %230
  %232 = load i32, i32* %22, align 4
  %233 = mul nsw i32 %232, 75
  %234 = mul nsw i32 %233, 60
  %235 = add nsw i32 %231, %234
  %236 = load i32, i32* %13, align 4
  %237 = add nsw i32 %236, %235
  store i32 %237, i32* %13, align 4
  br label %259

238:                                              ; preds = %154
  %239 = load i8*, i8** %6, align 8
  %240 = call i32 (i8*, i8*, i32*, ...) @sscanf(i8* %239, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0), i32* %25, i32* %26, i32* %27, i32* %28)
  %241 = load i32, i32* %28, align 4
  %242 = load i32, i32* %27, align 4
  %243 = mul nsw i32 %242, 75
  %244 = add nsw i32 %241, %243
  %245 = load i32, i32* %26, align 4
  %246 = mul nsw i32 %245, 75
  %247 = mul nsw i32 %246, 60
  %248 = add nsw i32 %244, %247
  store i32 %248, i32* %29, align 4
  %249 = load i32, i32* %25, align 4
  %250 = icmp eq i32 %249, 1
  br i1 %250, label %251, label %258

251:                                              ; preds = %238
  %252 = load i32, i32* %13, align 4
  %253 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %254 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %253, i32 0, i32 2
  store i32 %252, i32* %254, align 4
  %255 = load i32, i32* %29, align 4
  %256 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %257 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %256, i32 0, i32 3
  store i32 %255, i32* %257, align 4
  br label %258

258:                                              ; preds = %251, %238
  br label %259

259:                                              ; preds = %154, %258, %225, %224
  br label %149

260:                                              ; preds = %149
  store i32 0, i32* %12, align 4
  store i32 0, i32* %16, align 4
  br label %261

261:                                              ; preds = %329, %260
  %262 = load i32, i32* %16, align 4
  %263 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cd_bin, i32 0, i32 2), align 8
  %264 = sub nsw i32 %263, 1
  %265 = icmp slt i32 %262, %264
  br i1 %265, label %266, label %332

266:                                              ; preds = %261
  %267 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cd_bin, i32 0, i32 6), align 8
  %268 = load i32, i32* %16, align 4
  %269 = add nsw i32 %268, 1
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %267, i64 %270
  %272 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %271, i32 0, i32 3
  %273 = load i32, i32* %272, align 4
  %274 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cd_bin, i32 0, i32 6), align 8
  %275 = load i32, i32* %16, align 4
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %274, i64 %276
  %278 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %277, i32 0, i32 3
  %279 = load i32, i32* %278, align 4
  %280 = sub nsw i32 %273, %279
  %281 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cd_bin, i32 0, i32 6), align 8
  %282 = load i32, i32* %16, align 4
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %281, i64 %283
  %285 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %284, i32 0, i32 4
  store i32 %280, i32* %285, align 4
  %286 = load i32, i32* %12, align 4
  %287 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cd_bin, i32 0, i32 6), align 8
  %288 = load i32, i32* %16, align 4
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %287, i64 %289
  %291 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %290, i32 0, i32 5
  store i32 %286, i32* %291, align 4
  %292 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cd_bin, i32 0, i32 6), align 8
  %293 = load i32, i32* %16, align 4
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %292, i64 %294
  %296 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %295, i32 0, i32 4
  %297 = load i32, i32* %296, align 4
  %298 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cd_bin, i32 0, i32 6), align 8
  %299 = load i32, i32* %16, align 4
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %298, i64 %300
  %302 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %301, i32 0, i32 0
  %303 = load i32, i32* %302, align 4
  %304 = mul nsw i32 %297, %303
  %305 = load i32, i32* %12, align 4
  %306 = add nsw i32 %305, %304
  store i32 %306, i32* %12, align 4
  %307 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cd_bin, i32 0, i32 6), align 8
  %308 = load i32, i32* %16, align 4
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %307, i64 %309
  %311 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %310, i32 0, i32 2
  %312 = load i32, i32* %311, align 4
  %313 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cd_bin, i32 0, i32 6), align 8
  %314 = load i32, i32* %16, align 4
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %313, i64 %315
  %317 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %316, i32 0, i32 3
  %318 = load i32, i32* %317, align 4
  %319 = add nsw i32 %318, %312
  store i32 %319, i32* %317, align 4
  %320 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cd_bin, i32 0, i32 6), align 8
  %321 = load i32, i32* %16, align 4
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %320, i64 %322
  %324 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %323, i32 0, i32 4
  %325 = load i32, i32* %324, align 4
  %326 = sext i32 %325 to i64
  %327 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cd_bin, i32 0, i32 7), align 8
  %328 = add nsw i64 %327, %326
  store i64 %328, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cd_bin, i32 0, i32 7), align 8
  br label %329

329:                                              ; preds = %266
  %330 = load i32, i32* %16, align 4
  %331 = add nsw i32 %330, 1
  store i32 %331, i32* %16, align 4
  br label %261

332:                                              ; preds = %261
  %333 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cd_bin, i32 0, i32 5), align 8
  %334 = load i32, i32* @SEEK_END, align 4
  %335 = call i32 @fseek(i32* %333, i32 0, i32 %334)
  %336 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cd_bin, i32 0, i32 5), align 8
  %337 = call i32 @ftell(i32* %336)
  store i32 %337, i32* %14, align 4
  %338 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cd_bin, i32 0, i32 5), align 8
  %339 = load i32, i32* @SEEK_SET, align 4
  %340 = call i32 @fseek(i32* %338, i32 0, i32 %339)
  %341 = load i32, i32* %12, align 4
  %342 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cd_bin, i32 0, i32 6), align 8
  %343 = load i32, i32* %16, align 4
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %342, i64 %344
  %346 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %345, i32 0, i32 5
  store i32 %341, i32* %346, align 4
  %347 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cd_bin, i32 0, i32 6), align 8
  %348 = load i32, i32* %16, align 4
  %349 = sext i32 %348 to i64
  %350 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %347, i64 %349
  %351 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %350, i32 0, i32 2
  %352 = load i32, i32* %351, align 4
  %353 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cd_bin, i32 0, i32 6), align 8
  %354 = load i32, i32* %16, align 4
  %355 = sext i32 %354 to i64
  %356 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %353, i64 %355
  %357 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %356, i32 0, i32 3
  %358 = load i32, i32* %357, align 4
  %359 = add nsw i32 %358, %352
  store i32 %359, i32* %357, align 4
  %360 = load i32, i32* %14, align 4
  %361 = load i32, i32* %12, align 4
  %362 = sub nsw i32 %360, %361
  %363 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cd_bin, i32 0, i32 6), align 8
  %364 = load i32, i32* %16, align 4
  %365 = sext i32 %364 to i64
  %366 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %363, i64 %365
  %367 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %366, i32 0, i32 0
  %368 = load i32, i32* %367, align 4
  %369 = sdiv i32 %362, %368
  %370 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cd_bin, i32 0, i32 6), align 8
  %371 = load i32, i32* %16, align 4
  %372 = sext i32 %371 to i64
  %373 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %370, i64 %372
  %374 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %373, i32 0, i32 4
  store i32 %369, i32* %374, align 4
  %375 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cd_bin, i32 0, i32 6), align 8
  %376 = load i32, i32* %16, align 4
  %377 = sext i32 %376 to i64
  %378 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %375, i64 %377
  %379 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %378, i32 0, i32 4
  %380 = load i32, i32* %379, align 4
  %381 = sext i32 %380 to i64
  %382 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cd_bin, i32 0, i32 7), align 8
  %383 = add nsw i64 %382, %381
  store i64 %383, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cd_bin, i32 0, i32 7), align 8
  %384 = load i8*, i8** %3, align 8
  %385 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i64 0, i64 0), i8* %384)
  %386 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cd_bin, i32 0, i32 5), align 8
  %387 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i64 0, i64 0), i8* %41, i32* %386)
  %388 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cd_bin, i32 0, i32 0), align 8
  %389 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cd_bin, i32 0, i32 1), align 4
  %390 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.12, i64 0, i64 0), i32 %388, i32 %389)
  %391 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cd_bin, i32 0, i32 0), align 8
  store i32 %391, i32* %16, align 4
  br label %392

392:                                              ; preds = %438, %332
  %393 = load i32, i32* %16, align 4
  %394 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cd_bin, i32 0, i32 1), align 4
  %395 = icmp sle i32 %393, %394
  br i1 %395, label %396, label %441

396:                                              ; preds = %392
  %397 = load i32, i32* %16, align 4
  %398 = load %struct.TYPE_3__**, %struct.TYPE_3__*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cd_bin, i32 0, i32 4), align 8
  %399 = load i32, i32* %16, align 4
  %400 = sext i32 %399 to i64
  %401 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %398, i64 %400
  %402 = load %struct.TYPE_3__*, %struct.TYPE_3__** %401, align 8
  %403 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0), i32 %397, %struct.TYPE_3__* %402)
  %404 = load %struct.TYPE_3__**, %struct.TYPE_3__*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cd_bin, i32 0, i32 4), align 8
  %405 = load i32, i32* %16, align 4
  %406 = sext i32 %405 to i64
  %407 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %404, i64 %406
  %408 = load %struct.TYPE_3__*, %struct.TYPE_3__** %407, align 8
  %409 = icmp eq %struct.TYPE_3__* %408, null
  br i1 %409, label %410, label %412

410:                                              ; preds = %396
  %411 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i64 0, i64 0))
  br label %437

412:                                              ; preds = %396
  %413 = load %struct.TYPE_3__**, %struct.TYPE_3__*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cd_bin, i32 0, i32 4), align 8
  %414 = load i32, i32* %16, align 4
  %415 = sext i32 %414 to i64
  %416 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %413, i64 %415
  %417 = load %struct.TYPE_3__*, %struct.TYPE_3__** %416, align 8
  %418 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %417, i32 0, i32 5
  %419 = load i32, i32* %418, align 4
  %420 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.15, i64 0, i64 0), i32 %419)
  %421 = load %struct.TYPE_3__**, %struct.TYPE_3__*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cd_bin, i32 0, i32 4), align 8
  %422 = load i32, i32* %16, align 4
  %423 = sext i32 %422 to i64
  %424 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %421, i64 %423
  %425 = load %struct.TYPE_3__*, %struct.TYPE_3__** %424, align 8
  %426 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %425, i32 0, i32 3
  %427 = load i32, i32* %426, align 4
  %428 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 %427)
  %429 = load %struct.TYPE_3__**, %struct.TYPE_3__*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cd_bin, i32 0, i32 4), align 8
  %430 = load i32, i32* %16, align 4
  %431 = sext i32 %430 to i64
  %432 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %429, i64 %431
  %433 = load %struct.TYPE_3__*, %struct.TYPE_3__** %432, align 8
  %434 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %433, i32 0, i32 0
  %435 = load i32, i32* %434, align 4
  %436 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.17, i64 0, i64 0), i32 %435)
  br label %437

437:                                              ; preds = %412, %410
  br label %438

438:                                              ; preds = %437
  %439 = load i32, i32* %16, align 4
  %440 = add nsw i32 %439, 1
  store i32 %440, i32* %16, align 4
  br label %392

441:                                              ; preds = %392
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cd_bin, i32 0, i32 3), align 8
  %442 = load i32*, i32** %4, align 8
  %443 = call i32 @fclose(i32* %442)
  store i32 0, i32* %2, align 4
  store i32 1, i32* %19, align 4
  br label %444

444:                                              ; preds = %99, %87, %74, %67, %60, %47, %441, %132
  %445 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %445)
  %446 = load i32, i32* %19, align 4
  switch i32 %446, label %452 [
    i32 1, label %450
    i32 2, label %448
  ]

447:                                              ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %450

448:                                              ; preds = %444
  %449 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.18, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %450

450:                                              ; preds = %448, %447, %444
  %451 = load i32, i32* %2, align 4
  ret i32 %451

452:                                              ; preds = %444
  unreachable
}

declare dso_local i8* @fopen(i8*, i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i8* @fgets(i8*, i32, i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @skip_whitespace_rev(i8*) #1

declare dso_local i8* @skip_nonspace_rev(i8*) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @getcwd(i8*, i32) #1

declare dso_local i32 @chdir(i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i8* @skip_whitespace(i8*) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*, ...) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @fseek(i32*, i32, i32) #1

declare dso_local i32 @ftell(i32*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
