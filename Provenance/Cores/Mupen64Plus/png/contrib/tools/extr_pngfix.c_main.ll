; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/tools/extr_pngfix.c_main.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/tools/extr_pngfix.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.global = type { i32, i32, i32, i32, i32, i64, i32, i32 }

@FILENAME_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"--debug\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"--max=\00", align 1
@SKIP_UNSAFE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [6 x i8] c"--max\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"--optimize\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"-o\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"--out=\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"--suffix=\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"--prefix=\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"--strip=none\00", align 1
@SKIP_NONE = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [12 x i8] c"--strip=crc\00", align 1
@SKIP_BAD_CRC = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [15 x i8] c"--strip=unsafe\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"--strip=unused\00", align 1
@SKIP_UNUSED = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [18 x i8] c"--strip=transform\00", align 1
@SKIP_TRANSFORM = common dso_local global i64 0, align 8
@.str.13 = private unnamed_addr constant [14 x i8] c"--strip=color\00", align 1
@SKIP_COLOR = common dso_local global i64 0, align 8
@.str.14 = private unnamed_addr constant [12 x i8] c"--strip=all\00", align 1
@SKIP_ALL = common dso_local global i64 0, align 8
@.str.15 = private unnamed_addr constant [9 x i8] c"--errors\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"-e\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"--warnings\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"-w\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"--quiet\00", align 1
@.str.20 = private unnamed_addr constant [3 x i8] c"-q\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"--verbose\00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c"-v\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [39 x i8] c"%s: output file name too long: %s%s%s\0A\00", align 1
@.str.24 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@WRITE_ERROR = common dso_local global i32 0, align 4
@.str.25 = private unnamed_addr constant [37 x i8] c"%s: output file name too long: %s%s\0A\00", align 1
@set_option = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.global, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %17 = load i32, i32* @FILENAME_MAX, align 4
  %18 = add nsw i32 %17, 1
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %6, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %7, align 8
  %22 = load i8**, i8*** %5, align 8
  %23 = load i8*, i8** %22, align 8
  store i8* %23, i8** %8, align 8
  store i8* null, i8** %9, align 8
  store i8* null, i8** %10, align 8
  store i8* null, i8** %11, align 8
  store i32 0, i32* %12, align 4
  %24 = call i32 @global_init(%struct.global* %13)
  br label %25

25:                                               ; preds = %358, %310, %267, %2
  %26 = load i32, i32* %4, align 4
  %27 = add nsw i32 %26, -1
  store i32 %27, i32* %4, align 4
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %359

29:                                               ; preds = %25
  %30 = load i8**, i8*** %5, align 8
  %31 = getelementptr inbounds i8*, i8** %30, i32 1
  store i8** %31, i8*** %5, align 8
  %32 = load i8**, i8*** %5, align 8
  %33 = load i8*, i8** %32, align 8
  %34 = call i64 @strcmp(i8* %33, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %29
  %37 = getelementptr inbounds %struct.global, %struct.global* %13, i32 0, i32 1
  store i32 1, i32* %37, align 4
  %38 = getelementptr inbounds %struct.global, %struct.global* %13, i32 0, i32 0
  store i32 1, i32* %38, align 8
  %39 = getelementptr inbounds %struct.global, %struct.global* %13, i32 0, i32 2
  store i32 0, i32* %39, align 8
  %40 = getelementptr inbounds %struct.global, %struct.global* %13, i32 0, i32 3
  store i32 7, i32* %40, align 4
  br label %358

41:                                               ; preds = %29
  %42 = load i8**, i8*** %5, align 8
  %43 = load i8*, i8** %42, align 8
  %44 = call i64 @strncmp(i8* %43, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 6)
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %61

46:                                               ; preds = %41
  %47 = load i8**, i8*** %5, align 8
  %48 = load i8*, i8** %47, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 6
  %50 = call i64 @atol(i8* %49)
  %51 = trunc i64 %50 to i32
  %52 = getelementptr inbounds %struct.global, %struct.global* %13, i32 0, i32 4
  store i32 %51, i32* %52, align 8
  %53 = getelementptr inbounds %struct.global, %struct.global* %13, i32 0, i32 5
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @SKIP_UNSAFE, align 8
  %56 = icmp slt i64 %54, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %46
  %58 = load i64, i64* @SKIP_UNSAFE, align 8
  %59 = getelementptr inbounds %struct.global, %struct.global* %13, i32 0, i32 5
  store i64 %58, i64* %59, align 8
  br label %60

60:                                               ; preds = %57, %46
  br label %357

61:                                               ; preds = %41
  %62 = load i8**, i8*** %5, align 8
  %63 = load i8*, i8** %62, align 8
  %64 = call i64 @strcmp(i8* %63, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %76

66:                                               ; preds = %61
  %67 = getelementptr inbounds %struct.global, %struct.global* %13, i32 0, i32 4
  store i32 2147483647, i32* %67, align 8
  %68 = getelementptr inbounds %struct.global, %struct.global* %13, i32 0, i32 5
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @SKIP_UNSAFE, align 8
  %71 = icmp slt i64 %69, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %66
  %73 = load i64, i64* @SKIP_UNSAFE, align 8
  %74 = getelementptr inbounds %struct.global, %struct.global* %13, i32 0, i32 5
  store i64 %73, i64* %74, align 8
  br label %75

75:                                               ; preds = %72, %66
  br label %356

76:                                               ; preds = %61
  %77 = load i8**, i8*** %5, align 8
  %78 = load i8*, i8** %77, align 8
  %79 = call i64 @strcmp(i8* %78, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %86, label %81

81:                                               ; preds = %76
  %82 = load i8**, i8*** %5, align 8
  %83 = load i8*, i8** %82, align 8
  %84 = call i64 @strcmp(i8* %83, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %81, %76
  %87 = getelementptr inbounds %struct.global, %struct.global* %13, i32 0, i32 6
  store i32 1, i32* %87, align 8
  br label %355

88:                                               ; preds = %81
  %89 = load i8**, i8*** %5, align 8
  %90 = load i8*, i8** %89, align 8
  %91 = call i64 @strncmp(i8* %90, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32 6)
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %88
  %94 = load i8**, i8*** %5, align 8
  %95 = load i8*, i8** %94, align 8
  %96 = getelementptr inbounds i8, i8* %95, i64 6
  store i8* %96, i8** %9, align 8
  br label %354

97:                                               ; preds = %88
  %98 = load i8**, i8*** %5, align 8
  %99 = load i8*, i8** %98, align 8
  %100 = call i64 @strncmp(i8* %99, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i32 9)
  %101 = icmp eq i64 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %97
  %103 = load i8**, i8*** %5, align 8
  %104 = load i8*, i8** %103, align 8
  %105 = getelementptr inbounds i8, i8* %104, i64 9
  store i8* %105, i8** %10, align 8
  br label %353

106:                                              ; preds = %97
  %107 = load i8**, i8*** %5, align 8
  %108 = load i8*, i8** %107, align 8
  %109 = call i64 @strncmp(i8* %108, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i32 9)
  %110 = icmp eq i64 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %106
  %112 = load i8**, i8*** %5, align 8
  %113 = load i8*, i8** %112, align 8
  %114 = getelementptr inbounds i8, i8* %113, i64 9
  store i8* %114, i8** %11, align 8
  br label %352

115:                                              ; preds = %106
  %116 = load i8**, i8*** %5, align 8
  %117 = load i8*, i8** %116, align 8
  %118 = call i64 @strcmp(i8* %117, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0))
  %119 = icmp eq i64 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %115
  %121 = load i64, i64* @SKIP_NONE, align 8
  %122 = getelementptr inbounds %struct.global, %struct.global* %13, i32 0, i32 5
  store i64 %121, i64* %122, align 8
  br label %351

123:                                              ; preds = %115
  %124 = load i8**, i8*** %5, align 8
  %125 = load i8*, i8** %124, align 8
  %126 = call i64 @strcmp(i8* %125, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0))
  %127 = icmp eq i64 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %123
  %129 = load i64, i64* @SKIP_BAD_CRC, align 8
  %130 = getelementptr inbounds %struct.global, %struct.global* %13, i32 0, i32 5
  store i64 %129, i64* %130, align 8
  br label %350

131:                                              ; preds = %123
  %132 = load i8**, i8*** %5, align 8
  %133 = load i8*, i8** %132, align 8
  %134 = call i64 @strcmp(i8* %133, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0))
  %135 = icmp eq i64 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %131
  %137 = load i64, i64* @SKIP_UNSAFE, align 8
  %138 = getelementptr inbounds %struct.global, %struct.global* %13, i32 0, i32 5
  store i64 %137, i64* %138, align 8
  br label %349

139:                                              ; preds = %131
  %140 = load i8**, i8*** %5, align 8
  %141 = load i8*, i8** %140, align 8
  %142 = call i64 @strcmp(i8* %141, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0))
  %143 = icmp eq i64 %142, 0
  br i1 %143, label %144, label %147

144:                                              ; preds = %139
  %145 = load i64, i64* @SKIP_UNUSED, align 8
  %146 = getelementptr inbounds %struct.global, %struct.global* %13, i32 0, i32 5
  store i64 %145, i64* %146, align 8
  br label %348

147:                                              ; preds = %139
  %148 = load i8**, i8*** %5, align 8
  %149 = load i8*, i8** %148, align 8
  %150 = call i64 @strcmp(i8* %149, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i64 0, i64 0))
  %151 = icmp eq i64 %150, 0
  br i1 %151, label %152, label %155

152:                                              ; preds = %147
  %153 = load i64, i64* @SKIP_TRANSFORM, align 8
  %154 = getelementptr inbounds %struct.global, %struct.global* %13, i32 0, i32 5
  store i64 %153, i64* %154, align 8
  br label %347

155:                                              ; preds = %147
  %156 = load i8**, i8*** %5, align 8
  %157 = load i8*, i8** %156, align 8
  %158 = call i64 @strcmp(i8* %157, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0))
  %159 = icmp eq i64 %158, 0
  br i1 %159, label %160, label %163

160:                                              ; preds = %155
  %161 = load i64, i64* @SKIP_COLOR, align 8
  %162 = getelementptr inbounds %struct.global, %struct.global* %13, i32 0, i32 5
  store i64 %161, i64* %162, align 8
  br label %346

163:                                              ; preds = %155
  %164 = load i8**, i8*** %5, align 8
  %165 = load i8*, i8** %164, align 8
  %166 = call i64 @strcmp(i8* %165, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i64 0, i64 0))
  %167 = icmp eq i64 %166, 0
  br i1 %167, label %168, label %171

168:                                              ; preds = %163
  %169 = load i64, i64* @SKIP_ALL, align 8
  %170 = getelementptr inbounds %struct.global, %struct.global* %13, i32 0, i32 5
  store i64 %169, i64* %170, align 8
  br label %345

171:                                              ; preds = %163
  %172 = load i8**, i8*** %5, align 8
  %173 = load i8*, i8** %172, align 8
  %174 = call i64 @strcmp(i8* %173, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i64 0, i64 0))
  %175 = icmp eq i64 %174, 0
  br i1 %175, label %181, label %176

176:                                              ; preds = %171
  %177 = load i8**, i8*** %5, align 8
  %178 = load i8*, i8** %177, align 8
  %179 = call i64 @strcmp(i8* %178, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i64 0, i64 0))
  %180 = icmp eq i64 %179, 0
  br i1 %180, label %181, label %183

181:                                              ; preds = %176, %171
  %182 = getelementptr inbounds %struct.global, %struct.global* %13, i32 0, i32 0
  store i32 1, i32* %182, align 8
  br label %344

183:                                              ; preds = %176
  %184 = load i8**, i8*** %5, align 8
  %185 = load i8*, i8** %184, align 8
  %186 = call i64 @strcmp(i8* %185, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i64 0, i64 0))
  %187 = icmp eq i64 %186, 0
  br i1 %187, label %193, label %188

188:                                              ; preds = %183
  %189 = load i8**, i8*** %5, align 8
  %190 = load i8*, i8** %189, align 8
  %191 = call i64 @strcmp(i8* %190, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i64 0, i64 0))
  %192 = icmp eq i64 %191, 0
  br i1 %192, label %193, label %195

193:                                              ; preds = %188, %183
  %194 = getelementptr inbounds %struct.global, %struct.global* %13, i32 0, i32 1
  store i32 1, i32* %194, align 4
  br label %343

195:                                              ; preds = %188
  %196 = load i8**, i8*** %5, align 8
  %197 = load i8*, i8** %196, align 8
  %198 = call i64 @strcmp(i8* %197, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i64 0, i64 0))
  %199 = icmp eq i64 %198, 0
  br i1 %199, label %205, label %200

200:                                              ; preds = %195
  %201 = load i8**, i8*** %5, align 8
  %202 = load i8*, i8** %201, align 8
  %203 = call i64 @strcmp(i8* %202, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i64 0, i64 0))
  %204 = icmp eq i64 %203, 0
  br i1 %204, label %205, label %214

205:                                              ; preds = %200, %195
  %206 = getelementptr inbounds %struct.global, %struct.global* %13, i32 0, i32 2
  %207 = load i32, i32* %206, align 8
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %211

209:                                              ; preds = %205
  %210 = getelementptr inbounds %struct.global, %struct.global* %13, i32 0, i32 2
  store i32 2, i32* %210, align 8
  br label %213

211:                                              ; preds = %205
  %212 = getelementptr inbounds %struct.global, %struct.global* %13, i32 0, i32 2
  store i32 1, i32* %212, align 8
  br label %213

213:                                              ; preds = %211, %209
  br label %342

214:                                              ; preds = %200
  %215 = load i8**, i8*** %5, align 8
  %216 = load i8*, i8** %215, align 8
  %217 = call i64 @strcmp(i8* %216, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i64 0, i64 0))
  %218 = icmp eq i64 %217, 0
  br i1 %218, label %224, label %219

219:                                              ; preds = %214
  %220 = load i8**, i8*** %5, align 8
  %221 = load i8*, i8** %220, align 8
  %222 = call i64 @strcmp(i8* %221, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.22, i64 0, i64 0))
  %223 = icmp eq i64 %222, 0
  br i1 %223, label %224, label %228

224:                                              ; preds = %219, %214
  %225 = getelementptr inbounds %struct.global, %struct.global* %13, i32 0, i32 3
  %226 = load i32, i32* %225, align 4
  %227 = add nsw i32 %226, 1
  store i32 %227, i32* %225, align 4
  br label %341

228:                                              ; preds = %219
  %229 = load i8**, i8*** %5, align 8
  %230 = load i8*, i8** %229, align 8
  %231 = getelementptr inbounds i8, i8* %230, i64 0
  %232 = load i8, i8* %231, align 1
  %233 = sext i8 %232 to i32
  %234 = icmp eq i32 %233, 45
  br i1 %234, label %235, label %238

235:                                              ; preds = %228
  %236 = load i8*, i8** %8, align 8
  %237 = call i32 @usage(i8* %236)
  br label %340

238:                                              ; preds = %228
  %239 = load i8**, i8*** %5, align 8
  %240 = load i8*, i8** %239, align 8
  %241 = call i64 @strlen(i8* %240)
  store i64 %241, i64* %14, align 8
  %242 = load i8*, i8** %9, align 8
  %243 = icmp eq i8* %242, null
  br i1 %243, label %244, label %333

244:                                              ; preds = %238
  %245 = load i8*, i8** %11, align 8
  %246 = icmp ne i8* %245, null
  br i1 %246, label %247, label %287

247:                                              ; preds = %244
  %248 = load i8*, i8** %11, align 8
  %249 = call i64 @strlen(i8* %248)
  store i64 %249, i64* %15, align 8
  %250 = load i64, i64* %15, align 8
  %251 = load i64, i64* %14, align 8
  %252 = add i64 %250, %251
  %253 = load i32, i32* @FILENAME_MAX, align 4
  %254 = sext i32 %253 to i64
  %255 = icmp ugt i64 %252, %254
  br i1 %255, label %256, label %274

256:                                              ; preds = %247
  %257 = load i32, i32* @stderr, align 4
  %258 = load i8*, i8** %8, align 8
  %259 = load i8*, i8** %11, align 8
  %260 = load i8**, i8*** %5, align 8
  %261 = load i8*, i8** %260, align 8
  %262 = load i8*, i8** %10, align 8
  %263 = icmp ne i8* %262, null
  br i1 %263, label %264, label %266

264:                                              ; preds = %256
  %265 = load i8*, i8** %10, align 8
  br label %267

266:                                              ; preds = %256
  br label %267

267:                                              ; preds = %266, %264
  %268 = phi i8* [ %265, %264 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.24, i64 0, i64 0), %266 ]
  %269 = call i32 (i32, i8*, i8*, i8*, i8*, ...) @fprintf(i32 %257, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.23, i64 0, i64 0), i8* %258, i8* %259, i8* %261, i8* %268)
  %270 = load i32, i32* @WRITE_ERROR, align 4
  %271 = getelementptr inbounds %struct.global, %struct.global* %13, i32 0, i32 7
  %272 = load i32, i32* %271, align 4
  %273 = or i32 %272, %270
  store i32 %273, i32* %271, align 4
  br label %25

274:                                              ; preds = %247
  %275 = load i8*, i8** %11, align 8
  %276 = load i64, i64* %15, align 8
  %277 = call i32 @memcpy(i8* %21, i8* %275, i64 %276)
  %278 = load i64, i64* %15, align 8
  %279 = getelementptr inbounds i8, i8* %21, i64 %278
  %280 = load i8**, i8*** %5, align 8
  %281 = load i8*, i8** %280, align 8
  %282 = load i64, i64* %14, align 8
  %283 = call i32 @memcpy(i8* %279, i8* %281, i64 %282)
  %284 = load i64, i64* %15, align 8
  %285 = load i64, i64* %14, align 8
  %286 = add i64 %285, %284
  store i64 %286, i64* %14, align 8
  store i8* %21, i8** %9, align 8
  br label %296

287:                                              ; preds = %244
  %288 = load i8*, i8** %10, align 8
  %289 = icmp ne i8* %288, null
  br i1 %289, label %290, label %295

290:                                              ; preds = %287
  %291 = load i8**, i8*** %5, align 8
  %292 = load i8*, i8** %291, align 8
  %293 = load i64, i64* %14, align 8
  %294 = call i32 @memcpy(i8* %21, i8* %292, i64 %293)
  br label %295

295:                                              ; preds = %290, %287
  br label %296

296:                                              ; preds = %295, %274
  %297 = load i64, i64* %14, align 8
  %298 = getelementptr inbounds i8, i8* %21, i64 %297
  store i8 0, i8* %298, align 1
  %299 = load i8*, i8** %10, align 8
  %300 = icmp ne i8* %299, null
  br i1 %300, label %301, label %332

301:                                              ; preds = %296
  %302 = load i8*, i8** %10, align 8
  %303 = call i64 @strlen(i8* %302)
  store i64 %303, i64* %16, align 8
  %304 = load i64, i64* %14, align 8
  %305 = load i64, i64* %16, align 8
  %306 = add i64 %304, %305
  %307 = load i32, i32* @FILENAME_MAX, align 4
  %308 = sext i32 %307 to i64
  %309 = icmp ugt i64 %306, %308
  br i1 %309, label %310, label %321

310:                                              ; preds = %301
  %311 = load i32, i32* @stderr, align 4
  %312 = load i8*, i8** %8, align 8
  %313 = load i8**, i8*** %5, align 8
  %314 = load i8*, i8** %313, align 8
  %315 = load i8*, i8** %10, align 8
  %316 = call i32 (i32, i8*, i8*, i8*, i8*, ...) @fprintf(i32 %311, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.25, i64 0, i64 0), i8* %312, i8* %314, i8* %315)
  %317 = load i32, i32* @WRITE_ERROR, align 4
  %318 = getelementptr inbounds %struct.global, %struct.global* %13, i32 0, i32 7
  %319 = load i32, i32* %318, align 4
  %320 = or i32 %319, %317
  store i32 %320, i32* %318, align 4
  br label %25

321:                                              ; preds = %301
  %322 = load i64, i64* %14, align 8
  %323 = getelementptr inbounds i8, i8* %21, i64 %322
  %324 = load i8*, i8** %10, align 8
  %325 = load i64, i64* %16, align 8
  %326 = call i32 @memcpy(i8* %323, i8* %324, i64 %325)
  %327 = load i64, i64* %16, align 8
  %328 = load i64, i64* %14, align 8
  %329 = add i64 %328, %327
  store i64 %329, i64* %14, align 8
  %330 = load i64, i64* %14, align 8
  %331 = getelementptr inbounds i8, i8* %21, i64 %330
  store i8 0, i8* %331, align 1
  store i8* %21, i8** %9, align 8
  br label %332

332:                                              ; preds = %321, %296
  br label %333

333:                                              ; preds = %332, %238
  %334 = load i8**, i8*** %5, align 8
  %335 = load i8*, i8** %334, align 8
  %336 = load i8*, i8** %9, align 8
  %337 = call i32 @one_file(%struct.global* %13, i8* %335, i8* %336)
  %338 = load i32, i32* %12, align 4
  %339 = add nsw i32 %338, 1
  store i32 %339, i32* %12, align 4
  store i8* null, i8** %9, align 8
  br label %340

340:                                              ; preds = %333, %235
  br label %341

341:                                              ; preds = %340, %224
  br label %342

342:                                              ; preds = %341, %213
  br label %343

343:                                              ; preds = %342, %193
  br label %344

344:                                              ; preds = %343, %181
  br label %345

345:                                              ; preds = %344, %168
  br label %346

346:                                              ; preds = %345, %160
  br label %347

347:                                              ; preds = %346, %152
  br label %348

348:                                              ; preds = %347, %144
  br label %349

349:                                              ; preds = %348, %136
  br label %350

350:                                              ; preds = %349, %128
  br label %351

351:                                              ; preds = %350, %120
  br label %352

352:                                              ; preds = %351, %111
  br label %353

353:                                              ; preds = %352, %102
  br label %354

354:                                              ; preds = %353, %93
  br label %355

355:                                              ; preds = %354, %86
  br label %356

356:                                              ; preds = %355, %75
  br label %357

357:                                              ; preds = %356, %60
  br label %358

358:                                              ; preds = %357, %36
  br label %25

359:                                              ; preds = %25
  %360 = load i32, i32* %12, align 4
  %361 = icmp ne i32 %360, 0
  br i1 %361, label %365, label %362

362:                                              ; preds = %359
  %363 = load i8*, i8** %8, align 8
  %364 = call i32 @usage(i8* %363)
  br label %365

365:                                              ; preds = %362, %359
  %366 = call i32 @global_end(%struct.global* %13)
  store i32 %366, i32* %3, align 4
  %367 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %367)
  %368 = load i32, i32* %3, align 4
  ret i32 %368
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @global_init(%struct.global*) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i64 @strncmp(i8*, i8*, i32) #2

declare dso_local i64 @atol(i8*) #2

declare dso_local i32 @usage(i8*) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*, i8*, ...) #2

declare dso_local i32 @memcpy(i8*, i8*, i64) #2

declare dso_local i32 @one_file(%struct.global*, i8*, i8*) #2

declare dso_local i32 @global_end(%struct.global*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
