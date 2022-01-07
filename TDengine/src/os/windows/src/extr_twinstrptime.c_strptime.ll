; ModuleID = '/home/carl/AnghaBench/TDengine/src/os/windows/src/extr_twinstrptime.c_strptime.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/os/windows/src/extr_twinstrptime.c_strptime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@ALT_E = common dso_local global i32 0, align 4
@ALT_O = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%x %X\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"%m/%d/%y\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%H:%M\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"%I:%M:%S %p\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"%H:%M:%S\00", align 1
@day = common dso_local global i32* null, align 8
@abday = common dso_local global i32* null, align 8
@mon = common dso_local global i32* null, align 8
@abmon = common dso_local global i32* null, align 8
@am_pm = common dso_local global i32* null, align 8
@TM_YEAR_BASE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @strptime(i8* %0, i8* %1, %struct.tm* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.tm*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.tm* %2, %struct.tm** %7, align 8
  store i64 0, i64* %10, align 8
  store i32 0, i32* %13, align 4
  %14 = load i8*, i8** %5, align 8
  store i8* %14, i8** %9, align 8
  br label %15

15:                                               ; preds = %466, %33, %3
  %16 = load i8*, i8** %6, align 8
  %17 = load i8, i8* %16, align 1
  store i8 %17, i8* %8, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %467

20:                                               ; preds = %15
  store i32 0, i32* %11, align 4
  %21 = load i8, i8* %8, align 1
  %22 = call i64 @isspace(i8 signext %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %36

24:                                               ; preds = %20
  br label %25

25:                                               ; preds = %30, %24
  %26 = load i8*, i8** %9, align 8
  %27 = load i8, i8* %26, align 1
  %28 = call i64 @isspace(i8 signext %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load i8*, i8** %9, align 8
  %32 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %32, i8** %9, align 8
  br label %25

33:                                               ; preds = %25
  %34 = load i8*, i8** %6, align 8
  %35 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %35, i8** %6, align 8
  br label %15

36:                                               ; preds = %20
  %37 = load i8*, i8** %6, align 8
  %38 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %38, i8** %6, align 8
  %39 = load i8, i8* %37, align 1
  store i8 %39, i8* %8, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp ne i32 %40, 37
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  br label %50

43:                                               ; preds = %36
  br label %44

44:                                               ; preds = %65, %60, %43
  %45 = load i8*, i8** %6, align 8
  %46 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %46, i8** %6, align 8
  %47 = load i8, i8* %45, align 1
  store i8 %47, i8* %8, align 1
  %48 = sext i8 %47 to i32
  switch i32 %48, label %465 [
    i32 37, label %49
    i32 69, label %60
    i32 79, label %65
    i32 99, label %70
    i32 68, label %79
    i32 82, label %87
    i32 114, label %95
    i32 84, label %103
    i32 88, label %111
    i32 120, label %120
    i32 65, label %129
    i32 97, label %129
    i32 66, label %183
    i32 98, label %183
    i32 104, label %183
    i32 67, label %237
    i32 100, label %262
    i32 101, label %262
    i32 107, label %271
    i32 72, label %273
    i32 108, label %282
    i32 73, label %284
    i32 106, label %301
    i32 77, label %311
    i32 109, label %320
    i32 112, label %331
    i32 83, label %378
    i32 85, label %387
    i32 87, label %387
    i32 119, label %394
    i32 89, label %403
    i32 121, label %415
    i32 110, label %454
    i32 116, label %454
  ]

49:                                               ; preds = %44
  br label %50

50:                                               ; preds = %49, %42
  %51 = load i8, i8* %8, align 1
  %52 = sext i8 %51 to i32
  %53 = load i8*, i8** %9, align 8
  %54 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %54, i8** %9, align 8
  %55 = load i8, i8* %53, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp ne i32 %52, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %50
  store i8* null, i8** %4, align 8
  br label %469

59:                                               ; preds = %50
  br label %466

60:                                               ; preds = %44
  %61 = call i32 @LEGAL_ALT(i32 0)
  %62 = load i32, i32* @ALT_E, align 4
  %63 = load i32, i32* %11, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %11, align 4
  br label %44

65:                                               ; preds = %44
  %66 = call i32 @LEGAL_ALT(i32 0)
  %67 = load i32, i32* @ALT_O, align 4
  %68 = load i32, i32* %11, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %11, align 4
  br label %44

70:                                               ; preds = %44
  %71 = load i32, i32* @ALT_E, align 4
  %72 = call i32 @LEGAL_ALT(i32 %71)
  %73 = load i8*, i8** %9, align 8
  %74 = load %struct.tm*, %struct.tm** %7, align 8
  %75 = call i8* @strptime(i8* %73, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), %struct.tm* %74)
  store i8* %75, i8** %9, align 8
  %76 = icmp ne i8* %75, null
  br i1 %76, label %78, label %77

77:                                               ; preds = %70
  store i8* null, i8** %4, align 8
  br label %469

78:                                               ; preds = %70
  br label %466

79:                                               ; preds = %44
  %80 = call i32 @LEGAL_ALT(i32 0)
  %81 = load i8*, i8** %9, align 8
  %82 = load %struct.tm*, %struct.tm** %7, align 8
  %83 = call i8* @strptime(i8* %81, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), %struct.tm* %82)
  store i8* %83, i8** %9, align 8
  %84 = icmp ne i8* %83, null
  br i1 %84, label %86, label %85

85:                                               ; preds = %79
  store i8* null, i8** %4, align 8
  br label %469

86:                                               ; preds = %79
  br label %466

87:                                               ; preds = %44
  %88 = call i32 @LEGAL_ALT(i32 0)
  %89 = load i8*, i8** %9, align 8
  %90 = load %struct.tm*, %struct.tm** %7, align 8
  %91 = call i8* @strptime(i8* %89, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), %struct.tm* %90)
  store i8* %91, i8** %9, align 8
  %92 = icmp ne i8* %91, null
  br i1 %92, label %94, label %93

93:                                               ; preds = %87
  store i8* null, i8** %4, align 8
  br label %469

94:                                               ; preds = %87
  br label %466

95:                                               ; preds = %44
  %96 = call i32 @LEGAL_ALT(i32 0)
  %97 = load i8*, i8** %9, align 8
  %98 = load %struct.tm*, %struct.tm** %7, align 8
  %99 = call i8* @strptime(i8* %97, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), %struct.tm* %98)
  store i8* %99, i8** %9, align 8
  %100 = icmp ne i8* %99, null
  br i1 %100, label %102, label %101

101:                                              ; preds = %95
  store i8* null, i8** %4, align 8
  br label %469

102:                                              ; preds = %95
  br label %466

103:                                              ; preds = %44
  %104 = call i32 @LEGAL_ALT(i32 0)
  %105 = load i8*, i8** %9, align 8
  %106 = load %struct.tm*, %struct.tm** %7, align 8
  %107 = call i8* @strptime(i8* %105, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), %struct.tm* %106)
  store i8* %107, i8** %9, align 8
  %108 = icmp ne i8* %107, null
  br i1 %108, label %110, label %109

109:                                              ; preds = %103
  store i8* null, i8** %4, align 8
  br label %469

110:                                              ; preds = %103
  br label %466

111:                                              ; preds = %44
  %112 = load i32, i32* @ALT_E, align 4
  %113 = call i32 @LEGAL_ALT(i32 %112)
  %114 = load i8*, i8** %9, align 8
  %115 = load %struct.tm*, %struct.tm** %7, align 8
  %116 = call i8* @strptime(i8* %114, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), %struct.tm* %115)
  store i8* %116, i8** %9, align 8
  %117 = icmp ne i8* %116, null
  br i1 %117, label %119, label %118

118:                                              ; preds = %111
  store i8* null, i8** %4, align 8
  br label %469

119:                                              ; preds = %111
  br label %466

120:                                              ; preds = %44
  %121 = load i32, i32* @ALT_E, align 4
  %122 = call i32 @LEGAL_ALT(i32 %121)
  %123 = load i8*, i8** %9, align 8
  %124 = load %struct.tm*, %struct.tm** %7, align 8
  %125 = call i8* @strptime(i8* %123, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), %struct.tm* %124)
  store i8* %125, i8** %9, align 8
  %126 = icmp ne i8* %125, null
  br i1 %126, label %128, label %127

127:                                              ; preds = %120
  store i8* null, i8** %4, align 8
  br label %469

128:                                              ; preds = %120
  br label %466

129:                                              ; preds = %44, %44
  %130 = call i32 @LEGAL_ALT(i32 0)
  store i32 0, i32* %12, align 4
  br label %131

131:                                              ; preds = %169, %129
  %132 = load i32, i32* %12, align 4
  %133 = icmp slt i32 %132, 7
  br i1 %133, label %134, label %172

134:                                              ; preds = %131
  %135 = load i32*, i32** @day, align 8
  %136 = load i32, i32* %12, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %135, i64 %137
  %139 = load i32, i32* %138, align 4
  %140 = call i64 @strlen(i32 %139)
  store i64 %140, i64* %10, align 8
  %141 = load i32*, i32** @day, align 8
  %142 = load i32, i32* %12, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %141, i64 %143
  %145 = load i32, i32* %144, align 4
  %146 = load i8*, i8** %9, align 8
  %147 = load i64, i64* %10, align 8
  %148 = call i32 @strncmp(i32 %145, i8* %146, i64 %147)
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %134
  br label %172

151:                                              ; preds = %134
  %152 = load i32*, i32** @abday, align 8
  %153 = load i32, i32* %12, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %152, i64 %154
  %156 = load i32, i32* %155, align 4
  %157 = call i64 @strlen(i32 %156)
  store i64 %157, i64* %10, align 8
  %158 = load i32*, i32** @abday, align 8
  %159 = load i32, i32* %12, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i32, i32* %158, i64 %160
  %162 = load i32, i32* %161, align 4
  %163 = load i8*, i8** %9, align 8
  %164 = load i64, i64* %10, align 8
  %165 = call i32 @strncmp(i32 %162, i8* %163, i64 %164)
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %167, label %168

167:                                              ; preds = %151
  br label %172

168:                                              ; preds = %151
  br label %169

169:                                              ; preds = %168
  %170 = load i32, i32* %12, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %12, align 4
  br label %131

172:                                              ; preds = %167, %150, %131
  %173 = load i32, i32* %12, align 4
  %174 = icmp eq i32 %173, 7
  br i1 %174, label %175, label %176

175:                                              ; preds = %172
  store i8* null, i8** %4, align 8
  br label %469

176:                                              ; preds = %172
  %177 = load i32, i32* %12, align 4
  %178 = load %struct.tm*, %struct.tm** %7, align 8
  %179 = getelementptr inbounds %struct.tm, %struct.tm* %178, i32 0, i32 0
  store i32 %177, i32* %179, align 4
  %180 = load i64, i64* %10, align 8
  %181 = load i8*, i8** %9, align 8
  %182 = getelementptr inbounds i8, i8* %181, i64 %180
  store i8* %182, i8** %9, align 8
  br label %466

183:                                              ; preds = %44, %44, %44
  %184 = call i32 @LEGAL_ALT(i32 0)
  store i32 0, i32* %12, align 4
  br label %185

185:                                              ; preds = %223, %183
  %186 = load i32, i32* %12, align 4
  %187 = icmp slt i32 %186, 12
  br i1 %187, label %188, label %226

188:                                              ; preds = %185
  %189 = load i32*, i32** @mon, align 8
  %190 = load i32, i32* %12, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i32, i32* %189, i64 %191
  %193 = load i32, i32* %192, align 4
  %194 = call i64 @strlen(i32 %193)
  store i64 %194, i64* %10, align 8
  %195 = load i32*, i32** @mon, align 8
  %196 = load i32, i32* %12, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i32, i32* %195, i64 %197
  %199 = load i32, i32* %198, align 4
  %200 = load i8*, i8** %9, align 8
  %201 = load i64, i64* %10, align 8
  %202 = call i32 @strncmp(i32 %199, i8* %200, i64 %201)
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %204, label %205

204:                                              ; preds = %188
  br label %226

205:                                              ; preds = %188
  %206 = load i32*, i32** @abmon, align 8
  %207 = load i32, i32* %12, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i32, i32* %206, i64 %208
  %210 = load i32, i32* %209, align 4
  %211 = call i64 @strlen(i32 %210)
  store i64 %211, i64* %10, align 8
  %212 = load i32*, i32** @abmon, align 8
  %213 = load i32, i32* %12, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds i32, i32* %212, i64 %214
  %216 = load i32, i32* %215, align 4
  %217 = load i8*, i8** %9, align 8
  %218 = load i64, i64* %10, align 8
  %219 = call i32 @strncmp(i32 %216, i8* %217, i64 %218)
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %221, label %222

221:                                              ; preds = %205
  br label %226

222:                                              ; preds = %205
  br label %223

223:                                              ; preds = %222
  %224 = load i32, i32* %12, align 4
  %225 = add nsw i32 %224, 1
  store i32 %225, i32* %12, align 4
  br label %185

226:                                              ; preds = %221, %204, %185
  %227 = load i32, i32* %12, align 4
  %228 = icmp eq i32 %227, 12
  br i1 %228, label %229, label %230

229:                                              ; preds = %226
  store i8* null, i8** %4, align 8
  br label %469

230:                                              ; preds = %226
  %231 = load i32, i32* %12, align 4
  %232 = load %struct.tm*, %struct.tm** %7, align 8
  %233 = getelementptr inbounds %struct.tm, %struct.tm* %232, i32 0, i32 1
  store i32 %231, i32* %233, align 4
  %234 = load i64, i64* %10, align 8
  %235 = load i8*, i8** %9, align 8
  %236 = getelementptr inbounds i8, i8* %235, i64 %234
  store i8* %236, i8** %9, align 8
  br label %466

237:                                              ; preds = %44
  %238 = load i32, i32* @ALT_E, align 4
  %239 = call i32 @LEGAL_ALT(i32 %238)
  %240 = call i32 @conv_num(i8** %9, i32* %12, i32 0, i32 99)
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %243, label %242

242:                                              ; preds = %237
  store i8* null, i8** %4, align 8
  br label %469

243:                                              ; preds = %237
  %244 = load i32, i32* %13, align 4
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %256

246:                                              ; preds = %243
  %247 = load %struct.tm*, %struct.tm** %7, align 8
  %248 = getelementptr inbounds %struct.tm, %struct.tm* %247, i32 0, i32 2
  %249 = load i32, i32* %248, align 4
  %250 = srem i32 %249, 100
  %251 = load i32, i32* %12, align 4
  %252 = mul nsw i32 %251, 100
  %253 = add nsw i32 %250, %252
  %254 = load %struct.tm*, %struct.tm** %7, align 8
  %255 = getelementptr inbounds %struct.tm, %struct.tm* %254, i32 0, i32 2
  store i32 %253, i32* %255, align 4
  br label %261

256:                                              ; preds = %243
  %257 = load i32, i32* %12, align 4
  %258 = mul nsw i32 %257, 100
  %259 = load %struct.tm*, %struct.tm** %7, align 8
  %260 = getelementptr inbounds %struct.tm, %struct.tm* %259, i32 0, i32 2
  store i32 %258, i32* %260, align 4
  store i32 1, i32* %13, align 4
  br label %261

261:                                              ; preds = %256, %246
  br label %466

262:                                              ; preds = %44, %44
  %263 = load i32, i32* @ALT_O, align 4
  %264 = call i32 @LEGAL_ALT(i32 %263)
  %265 = load %struct.tm*, %struct.tm** %7, align 8
  %266 = getelementptr inbounds %struct.tm, %struct.tm* %265, i32 0, i32 3
  %267 = call i32 @conv_num(i8** %9, i32* %266, i32 1, i32 31)
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %270, label %269

269:                                              ; preds = %262
  store i8* null, i8** %4, align 8
  br label %469

270:                                              ; preds = %262
  br label %466

271:                                              ; preds = %44
  %272 = call i32 @LEGAL_ALT(i32 0)
  br label %273

273:                                              ; preds = %44, %271
  %274 = load i32, i32* @ALT_O, align 4
  %275 = call i32 @LEGAL_ALT(i32 %274)
  %276 = load %struct.tm*, %struct.tm** %7, align 8
  %277 = getelementptr inbounds %struct.tm, %struct.tm* %276, i32 0, i32 4
  %278 = call i32 @conv_num(i8** %9, i32* %277, i32 0, i32 23)
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %281, label %280

280:                                              ; preds = %273
  store i8* null, i8** %4, align 8
  br label %469

281:                                              ; preds = %273
  br label %466

282:                                              ; preds = %44
  %283 = call i32 @LEGAL_ALT(i32 0)
  br label %284

284:                                              ; preds = %44, %282
  %285 = load i32, i32* @ALT_O, align 4
  %286 = call i32 @LEGAL_ALT(i32 %285)
  %287 = load %struct.tm*, %struct.tm** %7, align 8
  %288 = getelementptr inbounds %struct.tm, %struct.tm* %287, i32 0, i32 4
  %289 = call i32 @conv_num(i8** %9, i32* %288, i32 1, i32 12)
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %292, label %291

291:                                              ; preds = %284
  store i8* null, i8** %4, align 8
  br label %469

292:                                              ; preds = %284
  %293 = load %struct.tm*, %struct.tm** %7, align 8
  %294 = getelementptr inbounds %struct.tm, %struct.tm* %293, i32 0, i32 4
  %295 = load i32, i32* %294, align 4
  %296 = icmp eq i32 %295, 12
  br i1 %296, label %297, label %300

297:                                              ; preds = %292
  %298 = load %struct.tm*, %struct.tm** %7, align 8
  %299 = getelementptr inbounds %struct.tm, %struct.tm* %298, i32 0, i32 4
  store i32 0, i32* %299, align 4
  br label %300

300:                                              ; preds = %297, %292
  br label %466

301:                                              ; preds = %44
  %302 = call i32 @LEGAL_ALT(i32 0)
  %303 = call i32 @conv_num(i8** %9, i32* %12, i32 1, i32 366)
  %304 = icmp ne i32 %303, 0
  br i1 %304, label %306, label %305

305:                                              ; preds = %301
  store i8* null, i8** %4, align 8
  br label %469

306:                                              ; preds = %301
  %307 = load i32, i32* %12, align 4
  %308 = sub nsw i32 %307, 1
  %309 = load %struct.tm*, %struct.tm** %7, align 8
  %310 = getelementptr inbounds %struct.tm, %struct.tm* %309, i32 0, i32 5
  store i32 %308, i32* %310, align 4
  br label %466

311:                                              ; preds = %44
  %312 = load i32, i32* @ALT_O, align 4
  %313 = call i32 @LEGAL_ALT(i32 %312)
  %314 = load %struct.tm*, %struct.tm** %7, align 8
  %315 = getelementptr inbounds %struct.tm, %struct.tm* %314, i32 0, i32 6
  %316 = call i32 @conv_num(i8** %9, i32* %315, i32 0, i32 59)
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %319, label %318

318:                                              ; preds = %311
  store i8* null, i8** %4, align 8
  br label %469

319:                                              ; preds = %311
  br label %466

320:                                              ; preds = %44
  %321 = load i32, i32* @ALT_O, align 4
  %322 = call i32 @LEGAL_ALT(i32 %321)
  %323 = call i32 @conv_num(i8** %9, i32* %12, i32 1, i32 12)
  %324 = icmp ne i32 %323, 0
  br i1 %324, label %326, label %325

325:                                              ; preds = %320
  store i8* null, i8** %4, align 8
  br label %469

326:                                              ; preds = %320
  %327 = load i32, i32* %12, align 4
  %328 = sub nsw i32 %327, 1
  %329 = load %struct.tm*, %struct.tm** %7, align 8
  %330 = getelementptr inbounds %struct.tm, %struct.tm* %329, i32 0, i32 1
  store i32 %328, i32* %330, align 4
  br label %466

331:                                              ; preds = %44
  %332 = call i32 @LEGAL_ALT(i32 0)
  %333 = load i32*, i32** @am_pm, align 8
  %334 = getelementptr inbounds i32, i32* %333, i64 0
  %335 = load i32, i32* %334, align 4
  %336 = load i8*, i8** %9, align 8
  %337 = call i32 @strcmp(i32 %335, i8* %336)
  %338 = icmp eq i32 %337, 0
  br i1 %338, label %339, label %352

339:                                              ; preds = %331
  %340 = load %struct.tm*, %struct.tm** %7, align 8
  %341 = getelementptr inbounds %struct.tm, %struct.tm* %340, i32 0, i32 4
  %342 = load i32, i32* %341, align 4
  %343 = icmp sgt i32 %342, 11
  br i1 %343, label %344, label %345

344:                                              ; preds = %339
  store i8* null, i8** %4, align 8
  br label %469

345:                                              ; preds = %339
  %346 = load i32*, i32** @am_pm, align 8
  %347 = getelementptr inbounds i32, i32* %346, i64 0
  %348 = load i32, i32* %347, align 4
  %349 = call i64 @strlen(i32 %348)
  %350 = load i8*, i8** %9, align 8
  %351 = getelementptr inbounds i8, i8* %350, i64 %349
  store i8* %351, i8** %9, align 8
  br label %466

352:                                              ; preds = %331
  %353 = load i32*, i32** @am_pm, align 8
  %354 = getelementptr inbounds i32, i32* %353, i64 1
  %355 = load i32, i32* %354, align 4
  %356 = load i8*, i8** %9, align 8
  %357 = call i32 @strcmp(i32 %355, i8* %356)
  %358 = icmp eq i32 %357, 0
  br i1 %358, label %359, label %376

359:                                              ; preds = %352
  %360 = load %struct.tm*, %struct.tm** %7, align 8
  %361 = getelementptr inbounds %struct.tm, %struct.tm* %360, i32 0, i32 4
  %362 = load i32, i32* %361, align 4
  %363 = icmp sgt i32 %362, 11
  br i1 %363, label %364, label %365

364:                                              ; preds = %359
  store i8* null, i8** %4, align 8
  br label %469

365:                                              ; preds = %359
  %366 = load %struct.tm*, %struct.tm** %7, align 8
  %367 = getelementptr inbounds %struct.tm, %struct.tm* %366, i32 0, i32 4
  %368 = load i32, i32* %367, align 4
  %369 = add nsw i32 %368, 12
  store i32 %369, i32* %367, align 4
  %370 = load i32*, i32** @am_pm, align 8
  %371 = getelementptr inbounds i32, i32* %370, i64 1
  %372 = load i32, i32* %371, align 4
  %373 = call i64 @strlen(i32 %372)
  %374 = load i8*, i8** %9, align 8
  %375 = getelementptr inbounds i8, i8* %374, i64 %373
  store i8* %375, i8** %9, align 8
  br label %466

376:                                              ; preds = %352
  br label %377

377:                                              ; preds = %376
  store i8* null, i8** %4, align 8
  br label %469

378:                                              ; preds = %44
  %379 = load i32, i32* @ALT_O, align 4
  %380 = call i32 @LEGAL_ALT(i32 %379)
  %381 = load %struct.tm*, %struct.tm** %7, align 8
  %382 = getelementptr inbounds %struct.tm, %struct.tm* %381, i32 0, i32 7
  %383 = call i32 @conv_num(i8** %9, i32* %382, i32 0, i32 61)
  %384 = icmp ne i32 %383, 0
  br i1 %384, label %386, label %385

385:                                              ; preds = %378
  store i8* null, i8** %4, align 8
  br label %469

386:                                              ; preds = %378
  br label %466

387:                                              ; preds = %44, %44
  %388 = load i32, i32* @ALT_O, align 4
  %389 = call i32 @LEGAL_ALT(i32 %388)
  %390 = call i32 @conv_num(i8** %9, i32* %12, i32 0, i32 53)
  %391 = icmp ne i32 %390, 0
  br i1 %391, label %393, label %392

392:                                              ; preds = %387
  store i8* null, i8** %4, align 8
  br label %469

393:                                              ; preds = %387
  br label %466

394:                                              ; preds = %44
  %395 = load i32, i32* @ALT_O, align 4
  %396 = call i32 @LEGAL_ALT(i32 %395)
  %397 = load %struct.tm*, %struct.tm** %7, align 8
  %398 = getelementptr inbounds %struct.tm, %struct.tm* %397, i32 0, i32 0
  %399 = call i32 @conv_num(i8** %9, i32* %398, i32 0, i32 6)
  %400 = icmp ne i32 %399, 0
  br i1 %400, label %402, label %401

401:                                              ; preds = %394
  store i8* null, i8** %4, align 8
  br label %469

402:                                              ; preds = %394
  br label %466

403:                                              ; preds = %44
  %404 = load i32, i32* @ALT_E, align 4
  %405 = call i32 @LEGAL_ALT(i32 %404)
  %406 = call i32 @conv_num(i8** %9, i32* %12, i32 0, i32 9999)
  %407 = icmp ne i32 %406, 0
  br i1 %407, label %409, label %408

408:                                              ; preds = %403
  store i8* null, i8** %4, align 8
  br label %469

409:                                              ; preds = %403
  %410 = load i32, i32* %12, align 4
  %411 = load i32, i32* @TM_YEAR_BASE, align 4
  %412 = sub nsw i32 %410, %411
  %413 = load %struct.tm*, %struct.tm** %7, align 8
  %414 = getelementptr inbounds %struct.tm, %struct.tm* %413, i32 0, i32 2
  store i32 %412, i32* %414, align 4
  br label %466

415:                                              ; preds = %44
  %416 = load i32, i32* @ALT_E, align 4
  %417 = load i32, i32* @ALT_O, align 4
  %418 = or i32 %416, %417
  %419 = call i32 @LEGAL_ALT(i32 %418)
  %420 = call i32 @conv_num(i8** %9, i32* %12, i32 0, i32 99)
  %421 = icmp ne i32 %420, 0
  br i1 %421, label %423, label %422

422:                                              ; preds = %415
  store i8* null, i8** %4, align 8
  br label %469

423:                                              ; preds = %415
  %424 = load i32, i32* %13, align 4
  %425 = icmp ne i32 %424, 0
  br i1 %425, label %426, label %436

426:                                              ; preds = %423
  %427 = load %struct.tm*, %struct.tm** %7, align 8
  %428 = getelementptr inbounds %struct.tm, %struct.tm* %427, i32 0, i32 2
  %429 = load i32, i32* %428, align 4
  %430 = sdiv i32 %429, 100
  %431 = mul nsw i32 %430, 100
  %432 = load i32, i32* %12, align 4
  %433 = add nsw i32 %431, %432
  %434 = load %struct.tm*, %struct.tm** %7, align 8
  %435 = getelementptr inbounds %struct.tm, %struct.tm* %434, i32 0, i32 2
  store i32 %433, i32* %435, align 4
  br label %466

436:                                              ; preds = %423
  store i32 1, i32* %13, align 4
  %437 = load i32, i32* %12, align 4
  %438 = icmp sle i32 %437, 68
  br i1 %438, label %439, label %446

439:                                              ; preds = %436
  %440 = load i32, i32* %12, align 4
  %441 = add nsw i32 %440, 2000
  %442 = load i32, i32* @TM_YEAR_BASE, align 4
  %443 = sub nsw i32 %441, %442
  %444 = load %struct.tm*, %struct.tm** %7, align 8
  %445 = getelementptr inbounds %struct.tm, %struct.tm* %444, i32 0, i32 2
  store i32 %443, i32* %445, align 4
  br label %453

446:                                              ; preds = %436
  %447 = load i32, i32* %12, align 4
  %448 = add nsw i32 %447, 1900
  %449 = load i32, i32* @TM_YEAR_BASE, align 4
  %450 = sub nsw i32 %448, %449
  %451 = load %struct.tm*, %struct.tm** %7, align 8
  %452 = getelementptr inbounds %struct.tm, %struct.tm* %451, i32 0, i32 2
  store i32 %450, i32* %452, align 4
  br label %453

453:                                              ; preds = %446, %439
  br label %466

454:                                              ; preds = %44, %44
  %455 = call i32 @LEGAL_ALT(i32 0)
  br label %456

456:                                              ; preds = %461, %454
  %457 = load i8*, i8** %9, align 8
  %458 = load i8, i8* %457, align 1
  %459 = call i64 @isspace(i8 signext %458)
  %460 = icmp ne i64 %459, 0
  br i1 %460, label %461, label %464

461:                                              ; preds = %456
  %462 = load i8*, i8** %9, align 8
  %463 = getelementptr inbounds i8, i8* %462, i32 1
  store i8* %463, i8** %9, align 8
  br label %456

464:                                              ; preds = %456
  br label %466

465:                                              ; preds = %44
  store i8* null, i8** %4, align 8
  br label %469

466:                                              ; preds = %464, %453, %426, %409, %402, %393, %386, %365, %345, %326, %319, %306, %300, %281, %270, %261, %230, %176, %128, %119, %110, %102, %94, %86, %78, %59
  br label %15

467:                                              ; preds = %15
  %468 = load i8*, i8** %9, align 8
  store i8* %468, i8** %4, align 8
  br label %469

469:                                              ; preds = %467, %465, %422, %408, %401, %392, %385, %377, %364, %344, %325, %318, %305, %291, %280, %269, %242, %229, %175, %127, %118, %109, %101, %93, %85, %77, %58
  %470 = load i8*, i8** %4, align 8
  ret i8* %470
}

declare dso_local i64 @isspace(i8 signext) #1

declare dso_local i32 @LEGAL_ALT(i32) #1

declare dso_local i64 @strlen(i32) #1

declare dso_local i32 @strncmp(i32, i8*, i64) #1

declare dso_local i32 @conv_num(i8**, i32*, i32, i32) #1

declare dso_local i32 @strcmp(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
