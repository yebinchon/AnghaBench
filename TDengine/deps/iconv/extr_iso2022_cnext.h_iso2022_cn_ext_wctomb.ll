; ModuleID = '/home/carl/AnghaBench/TDengine/deps/iconv/extr_iso2022_cnext.h_iso2022_cn_ext_wctomb.c'
source_filename = "/home/carl/AnghaBench/TDengine/deps/iconv/extr_iso2022_cnext.h_iso2022_cn_ext_wctomb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8* }

@SPLIT_STATE = common dso_local global i32 0, align 4
@RET_ILUNI = common dso_local global i32 0, align 4
@state1 = common dso_local global i64 0, align 8
@STATE_ASCII = common dso_local global i64 0, align 8
@RET_TOOSMALL = common dso_local global i32 0, align 4
@SI = common dso_local global i8 0, align 1
@STATE2_NONE = common dso_local global i64 0, align 8
@state2 = common dso_local global i64 0, align 8
@STATE3_NONE = common dso_local global i64 0, align 8
@state3 = common dso_local global i64 0, align 8
@state4 = common dso_local global i64 0, align 8
@COMBINE_STATE = common dso_local global i32 0, align 4
@STATE2_DESIGNATED_GB2312 = common dso_local global i64 0, align 8
@STATE_TWOBYTE = common dso_local global i64 0, align 8
@ESC = common dso_local global i8 0, align 1
@SO = common dso_local global i8 0, align 1
@STATE2_DESIGNATED_CNS11643_1 = common dso_local global i64 0, align 8
@STATE3_DESIGNATED_CNS11643_2 = common dso_local global i64 0, align 8
@STATE4_DESIGNATED_CNS11643_3 = common dso_local global i64 0, align 8
@STATE4_DESIGNATED_CNS11643_4 = common dso_local global i64 0, align 8
@STATE4_DESIGNATED_CNS11643_5 = common dso_local global i64 0, align 8
@STATE4_DESIGNATED_CNS11643_6 = common dso_local global i64 0, align 8
@STATE4_DESIGNATED_CNS11643_7 = common dso_local global i64 0, align 8
@STATE2_DESIGNATED_ISO_IR_165 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i8*, i32, i32)* @iso2022_cn_ext_wctomb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iso2022_cn_ext_wctomb(%struct.TYPE_7__* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca [3 x i8], align 1
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  store i8* %25, i8** %10, align 8
  %26 = load i32, i32* @SPLIT_STATE, align 4
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %28 = getelementptr inbounds [3 x i8], [3 x i8]* %11, i64 0, i64 0
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @ascii_wctomb(%struct.TYPE_7__* %27, i8* %28, i32 %29, i32 1)
  store i32 %30, i32* %12, align 4
  %31 = load i32, i32* %12, align 4
  %32 = load i32, i32* @RET_ILUNI, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %87

34:                                               ; preds = %4
  %35 = load i32, i32* %12, align 4
  %36 = icmp ne i32 %35, 1
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = call i32 (...) @abort() #3
  unreachable

39:                                               ; preds = %34
  %40 = getelementptr inbounds [3 x i8], [3 x i8]* %11, i64 0, i64 0
  %41 = load i8, i8* %40, align 1
  %42 = zext i8 %41 to i32
  %43 = icmp slt i32 %42, 128
  br i1 %43, label %44, label %86

44:                                               ; preds = %39
  %45 = load i64, i64* @state1, align 8
  %46 = load i64, i64* @STATE_ASCII, align 8
  %47 = icmp eq i64 %45, %46
  %48 = zext i1 %47 to i64
  %49 = select i1 %47, i32 1, i32 2
  store i32 %49, i32* %13, align 4
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* %13, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %44
  %54 = load i32, i32* @RET_TOOSMALL, align 4
  store i32 %54, i32* %5, align 4
  br label %724

55:                                               ; preds = %44
  %56 = load i64, i64* @state1, align 8
  %57 = load i64, i64* @STATE_ASCII, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %66

59:                                               ; preds = %55
  %60 = load i8, i8* @SI, align 1
  %61 = load i8*, i8** %7, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 0
  store i8 %60, i8* %62, align 1
  %63 = load i8*, i8** %7, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 1
  store i8* %64, i8** %7, align 8
  %65 = load i64, i64* @STATE_ASCII, align 8
  store i64 %65, i64* @state1, align 8
  br label %66

66:                                               ; preds = %59, %55
  %67 = getelementptr inbounds [3 x i8], [3 x i8]* %11, i64 0, i64 0
  %68 = load i8, i8* %67, align 1
  %69 = load i8*, i8** %7, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 0
  store i8 %68, i8* %70, align 1
  %71 = load i32, i32* %8, align 4
  %72 = icmp eq i32 %71, 10
  br i1 %72, label %76, label %73

73:                                               ; preds = %66
  %74 = load i32, i32* %8, align 4
  %75 = icmp eq i32 %74, 13
  br i1 %75, label %76, label %80

76:                                               ; preds = %73, %66
  %77 = load i64, i64* @STATE2_NONE, align 8
  store i64 %77, i64* @state2, align 8
  %78 = load i64, i64* @STATE3_NONE, align 8
  store i64 %78, i64* @state3, align 8
  %79 = load i64, i64* @STATE3_NONE, align 8
  store i64 %79, i64* @state4, align 8
  br label %80

80:                                               ; preds = %76, %73
  %81 = load i32, i32* @COMBINE_STATE, align 4
  %82 = load i8*, i8** %10, align 8
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 0
  store i8* %82, i8** %84, align 8
  %85 = load i32, i32* %13, align 4
  store i32 %85, i32* %5, align 4
  br label %724

86:                                               ; preds = %39
  br label %87

87:                                               ; preds = %86, %4
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %89 = getelementptr inbounds [3 x i8], [3 x i8]* %11, i64 0, i64 0
  %90 = load i32, i32* %8, align 4
  %91 = call i32 @gb2312_wctomb(%struct.TYPE_7__* %88, i8* %89, i32 %90, i32 2)
  store i32 %91, i32* %12, align 4
  %92 = load i32, i32* %12, align 4
  %93 = load i32, i32* @RET_ILUNI, align 4
  %94 = icmp ne i32 %92, %93
  br i1 %94, label %95, label %171

95:                                               ; preds = %87
  %96 = load i32, i32* %12, align 4
  %97 = icmp ne i32 %96, 2
  br i1 %97, label %98, label %100

98:                                               ; preds = %95
  %99 = call i32 (...) @abort() #3
  unreachable

100:                                              ; preds = %95
  %101 = getelementptr inbounds [3 x i8], [3 x i8]* %11, i64 0, i64 0
  %102 = load i8, i8* %101, align 1
  %103 = zext i8 %102 to i32
  %104 = icmp slt i32 %103, 128
  br i1 %104, label %105, label %170

105:                                              ; preds = %100
  %106 = getelementptr inbounds [3 x i8], [3 x i8]* %11, i64 0, i64 1
  %107 = load i8, i8* %106, align 1
  %108 = zext i8 %107 to i32
  %109 = icmp slt i32 %108, 128
  br i1 %109, label %110, label %170

110:                                              ; preds = %105
  %111 = load i64, i64* @state2, align 8
  %112 = load i64, i64* @STATE2_DESIGNATED_GB2312, align 8
  %113 = icmp eq i64 %111, %112
  %114 = zext i1 %113 to i64
  %115 = select i1 %113, i32 0, i32 4
  %116 = load i64, i64* @state1, align 8
  %117 = load i64, i64* @STATE_TWOBYTE, align 8
  %118 = icmp eq i64 %116, %117
  %119 = zext i1 %118 to i64
  %120 = select i1 %118, i32 0, i32 1
  %121 = add nsw i32 %115, %120
  %122 = add nsw i32 %121, 2
  store i32 %122, i32* %14, align 4
  %123 = load i32, i32* %9, align 4
  %124 = load i32, i32* %14, align 4
  %125 = icmp slt i32 %123, %124
  br i1 %125, label %126, label %128

126:                                              ; preds = %110
  %127 = load i32, i32* @RET_TOOSMALL, align 4
  store i32 %127, i32* %5, align 4
  br label %724

128:                                              ; preds = %110
  %129 = load i64, i64* @state2, align 8
  %130 = load i64, i64* @STATE2_DESIGNATED_GB2312, align 8
  %131 = icmp ne i64 %129, %130
  br i1 %131, label %132, label %145

132:                                              ; preds = %128
  %133 = load i8, i8* @ESC, align 1
  %134 = load i8*, i8** %7, align 8
  %135 = getelementptr inbounds i8, i8* %134, i64 0
  store i8 %133, i8* %135, align 1
  %136 = load i8*, i8** %7, align 8
  %137 = getelementptr inbounds i8, i8* %136, i64 1
  store i8 36, i8* %137, align 1
  %138 = load i8*, i8** %7, align 8
  %139 = getelementptr inbounds i8, i8* %138, i64 2
  store i8 41, i8* %139, align 1
  %140 = load i8*, i8** %7, align 8
  %141 = getelementptr inbounds i8, i8* %140, i64 3
  store i8 65, i8* %141, align 1
  %142 = load i8*, i8** %7, align 8
  %143 = getelementptr inbounds i8, i8* %142, i64 4
  store i8* %143, i8** %7, align 8
  %144 = load i64, i64* @STATE2_DESIGNATED_GB2312, align 8
  store i64 %144, i64* @state2, align 8
  br label %145

145:                                              ; preds = %132, %128
  %146 = load i64, i64* @state1, align 8
  %147 = load i64, i64* @STATE_TWOBYTE, align 8
  %148 = icmp ne i64 %146, %147
  br i1 %148, label %149, label %156

149:                                              ; preds = %145
  %150 = load i8, i8* @SO, align 1
  %151 = load i8*, i8** %7, align 8
  %152 = getelementptr inbounds i8, i8* %151, i64 0
  store i8 %150, i8* %152, align 1
  %153 = load i8*, i8** %7, align 8
  %154 = getelementptr inbounds i8, i8* %153, i64 1
  store i8* %154, i8** %7, align 8
  %155 = load i64, i64* @STATE_TWOBYTE, align 8
  store i64 %155, i64* @state1, align 8
  br label %156

156:                                              ; preds = %149, %145
  %157 = getelementptr inbounds [3 x i8], [3 x i8]* %11, i64 0, i64 0
  %158 = load i8, i8* %157, align 1
  %159 = load i8*, i8** %7, align 8
  %160 = getelementptr inbounds i8, i8* %159, i64 0
  store i8 %158, i8* %160, align 1
  %161 = getelementptr inbounds [3 x i8], [3 x i8]* %11, i64 0, i64 1
  %162 = load i8, i8* %161, align 1
  %163 = load i8*, i8** %7, align 8
  %164 = getelementptr inbounds i8, i8* %163, i64 1
  store i8 %162, i8* %164, align 1
  %165 = load i32, i32* @COMBINE_STATE, align 4
  %166 = load i8*, i8** %10, align 8
  %167 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %168 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %167, i32 0, i32 0
  store i8* %166, i8** %168, align 8
  %169 = load i32, i32* %14, align 4
  store i32 %169, i32* %5, align 4
  br label %724

170:                                              ; preds = %105, %100
  br label %171

171:                                              ; preds = %170, %87
  %172 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %173 = getelementptr inbounds [3 x i8], [3 x i8]* %11, i64 0, i64 0
  %174 = load i32, i32* %8, align 4
  %175 = call i32 @cns11643_wctomb(%struct.TYPE_7__* %172, i8* %173, i32 %174, i32 3)
  store i32 %175, i32* %12, align 4
  %176 = load i32, i32* %12, align 4
  %177 = load i32, i32* @RET_ILUNI, align 4
  %178 = icmp ne i32 %176, %177
  br i1 %178, label %179, label %638

179:                                              ; preds = %171
  %180 = load i32, i32* %12, align 4
  %181 = icmp ne i32 %180, 3
  br i1 %181, label %182, label %184

182:                                              ; preds = %179
  %183 = call i32 (...) @abort() #3
  unreachable

184:                                              ; preds = %179
  %185 = getelementptr inbounds [3 x i8], [3 x i8]* %11, i64 0, i64 0
  %186 = load i8, i8* %185, align 1
  %187 = zext i8 %186 to i32
  %188 = icmp eq i32 %187, 1
  br i1 %188, label %189, label %259

189:                                              ; preds = %184
  %190 = getelementptr inbounds [3 x i8], [3 x i8]* %11, i64 0, i64 1
  %191 = load i8, i8* %190, align 1
  %192 = zext i8 %191 to i32
  %193 = icmp slt i32 %192, 128
  br i1 %193, label %194, label %259

194:                                              ; preds = %189
  %195 = getelementptr inbounds [3 x i8], [3 x i8]* %11, i64 0, i64 2
  %196 = load i8, i8* %195, align 1
  %197 = zext i8 %196 to i32
  %198 = icmp slt i32 %197, 128
  br i1 %198, label %199, label %259

199:                                              ; preds = %194
  %200 = load i64, i64* @state2, align 8
  %201 = load i64, i64* @STATE2_DESIGNATED_CNS11643_1, align 8
  %202 = icmp eq i64 %200, %201
  %203 = zext i1 %202 to i64
  %204 = select i1 %202, i32 0, i32 4
  %205 = load i64, i64* @state1, align 8
  %206 = load i64, i64* @STATE_TWOBYTE, align 8
  %207 = icmp eq i64 %205, %206
  %208 = zext i1 %207 to i64
  %209 = select i1 %207, i32 0, i32 1
  %210 = add nsw i32 %204, %209
  %211 = add nsw i32 %210, 2
  store i32 %211, i32* %15, align 4
  %212 = load i32, i32* %9, align 4
  %213 = load i32, i32* %15, align 4
  %214 = icmp slt i32 %212, %213
  br i1 %214, label %215, label %217

215:                                              ; preds = %199
  %216 = load i32, i32* @RET_TOOSMALL, align 4
  store i32 %216, i32* %5, align 4
  br label %724

217:                                              ; preds = %199
  %218 = load i64, i64* @state2, align 8
  %219 = load i64, i64* @STATE2_DESIGNATED_CNS11643_1, align 8
  %220 = icmp ne i64 %218, %219
  br i1 %220, label %221, label %234

221:                                              ; preds = %217
  %222 = load i8, i8* @ESC, align 1
  %223 = load i8*, i8** %7, align 8
  %224 = getelementptr inbounds i8, i8* %223, i64 0
  store i8 %222, i8* %224, align 1
  %225 = load i8*, i8** %7, align 8
  %226 = getelementptr inbounds i8, i8* %225, i64 1
  store i8 36, i8* %226, align 1
  %227 = load i8*, i8** %7, align 8
  %228 = getelementptr inbounds i8, i8* %227, i64 2
  store i8 41, i8* %228, align 1
  %229 = load i8*, i8** %7, align 8
  %230 = getelementptr inbounds i8, i8* %229, i64 3
  store i8 71, i8* %230, align 1
  %231 = load i8*, i8** %7, align 8
  %232 = getelementptr inbounds i8, i8* %231, i64 4
  store i8* %232, i8** %7, align 8
  %233 = load i64, i64* @STATE2_DESIGNATED_CNS11643_1, align 8
  store i64 %233, i64* @state2, align 8
  br label %234

234:                                              ; preds = %221, %217
  %235 = load i64, i64* @state1, align 8
  %236 = load i64, i64* @STATE_TWOBYTE, align 8
  %237 = icmp ne i64 %235, %236
  br i1 %237, label %238, label %245

238:                                              ; preds = %234
  %239 = load i8, i8* @SO, align 1
  %240 = load i8*, i8** %7, align 8
  %241 = getelementptr inbounds i8, i8* %240, i64 0
  store i8 %239, i8* %241, align 1
  %242 = load i8*, i8** %7, align 8
  %243 = getelementptr inbounds i8, i8* %242, i64 1
  store i8* %243, i8** %7, align 8
  %244 = load i64, i64* @STATE_TWOBYTE, align 8
  store i64 %244, i64* @state1, align 8
  br label %245

245:                                              ; preds = %238, %234
  %246 = getelementptr inbounds [3 x i8], [3 x i8]* %11, i64 0, i64 1
  %247 = load i8, i8* %246, align 1
  %248 = load i8*, i8** %7, align 8
  %249 = getelementptr inbounds i8, i8* %248, i64 0
  store i8 %247, i8* %249, align 1
  %250 = getelementptr inbounds [3 x i8], [3 x i8]* %11, i64 0, i64 2
  %251 = load i8, i8* %250, align 1
  %252 = load i8*, i8** %7, align 8
  %253 = getelementptr inbounds i8, i8* %252, i64 1
  store i8 %251, i8* %253, align 1
  %254 = load i32, i32* @COMBINE_STATE, align 4
  %255 = load i8*, i8** %10, align 8
  %256 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %257 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %256, i32 0, i32 0
  store i8* %255, i8** %257, align 8
  %258 = load i32, i32* %15, align 4
  store i32 %258, i32* %5, align 4
  br label %724

259:                                              ; preds = %194, %189, %184
  %260 = getelementptr inbounds [3 x i8], [3 x i8]* %11, i64 0, i64 0
  %261 = load i8, i8* %260, align 1
  %262 = zext i8 %261 to i32
  %263 = icmp eq i32 %262, 2
  br i1 %263, label %264, label %322

264:                                              ; preds = %259
  %265 = getelementptr inbounds [3 x i8], [3 x i8]* %11, i64 0, i64 1
  %266 = load i8, i8* %265, align 1
  %267 = zext i8 %266 to i32
  %268 = icmp slt i32 %267, 128
  br i1 %268, label %269, label %322

269:                                              ; preds = %264
  %270 = getelementptr inbounds [3 x i8], [3 x i8]* %11, i64 0, i64 2
  %271 = load i8, i8* %270, align 1
  %272 = zext i8 %271 to i32
  %273 = icmp slt i32 %272, 128
  br i1 %273, label %274, label %322

274:                                              ; preds = %269
  %275 = load i64, i64* @state3, align 8
  %276 = load i64, i64* @STATE3_DESIGNATED_CNS11643_2, align 8
  %277 = icmp eq i64 %275, %276
  %278 = zext i1 %277 to i64
  %279 = select i1 %277, i32 0, i32 4
  %280 = add nsw i32 %279, 4
  store i32 %280, i32* %16, align 4
  %281 = load i32, i32* %9, align 4
  %282 = load i32, i32* %16, align 4
  %283 = icmp slt i32 %281, %282
  br i1 %283, label %284, label %286

284:                                              ; preds = %274
  %285 = load i32, i32* @RET_TOOSMALL, align 4
  store i32 %285, i32* %5, align 4
  br label %724

286:                                              ; preds = %274
  %287 = load i64, i64* @state3, align 8
  %288 = load i64, i64* @STATE3_DESIGNATED_CNS11643_2, align 8
  %289 = icmp ne i64 %287, %288
  br i1 %289, label %290, label %303

290:                                              ; preds = %286
  %291 = load i8, i8* @ESC, align 1
  %292 = load i8*, i8** %7, align 8
  %293 = getelementptr inbounds i8, i8* %292, i64 0
  store i8 %291, i8* %293, align 1
  %294 = load i8*, i8** %7, align 8
  %295 = getelementptr inbounds i8, i8* %294, i64 1
  store i8 36, i8* %295, align 1
  %296 = load i8*, i8** %7, align 8
  %297 = getelementptr inbounds i8, i8* %296, i64 2
  store i8 42, i8* %297, align 1
  %298 = load i8*, i8** %7, align 8
  %299 = getelementptr inbounds i8, i8* %298, i64 3
  store i8 72, i8* %299, align 1
  %300 = load i8*, i8** %7, align 8
  %301 = getelementptr inbounds i8, i8* %300, i64 4
  store i8* %301, i8** %7, align 8
  %302 = load i64, i64* @STATE3_DESIGNATED_CNS11643_2, align 8
  store i64 %302, i64* @state3, align 8
  br label %303

303:                                              ; preds = %290, %286
  %304 = load i8, i8* @ESC, align 1
  %305 = load i8*, i8** %7, align 8
  %306 = getelementptr inbounds i8, i8* %305, i64 0
  store i8 %304, i8* %306, align 1
  %307 = load i8*, i8** %7, align 8
  %308 = getelementptr inbounds i8, i8* %307, i64 1
  store i8 78, i8* %308, align 1
  %309 = getelementptr inbounds [3 x i8], [3 x i8]* %11, i64 0, i64 1
  %310 = load i8, i8* %309, align 1
  %311 = load i8*, i8** %7, align 8
  %312 = getelementptr inbounds i8, i8* %311, i64 2
  store i8 %310, i8* %312, align 1
  %313 = getelementptr inbounds [3 x i8], [3 x i8]* %11, i64 0, i64 2
  %314 = load i8, i8* %313, align 1
  %315 = load i8*, i8** %7, align 8
  %316 = getelementptr inbounds i8, i8* %315, i64 3
  store i8 %314, i8* %316, align 1
  %317 = load i32, i32* @COMBINE_STATE, align 4
  %318 = load i8*, i8** %10, align 8
  %319 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %320 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %319, i32 0, i32 0
  store i8* %318, i8** %320, align 8
  %321 = load i32, i32* %16, align 4
  store i32 %321, i32* %5, align 4
  br label %724

322:                                              ; preds = %269, %264, %259
  %323 = getelementptr inbounds [3 x i8], [3 x i8]* %11, i64 0, i64 0
  %324 = load i8, i8* %323, align 1
  %325 = zext i8 %324 to i32
  %326 = icmp eq i32 %325, 3
  br i1 %326, label %327, label %385

327:                                              ; preds = %322
  %328 = getelementptr inbounds [3 x i8], [3 x i8]* %11, i64 0, i64 1
  %329 = load i8, i8* %328, align 1
  %330 = zext i8 %329 to i32
  %331 = icmp slt i32 %330, 128
  br i1 %331, label %332, label %385

332:                                              ; preds = %327
  %333 = getelementptr inbounds [3 x i8], [3 x i8]* %11, i64 0, i64 2
  %334 = load i8, i8* %333, align 1
  %335 = zext i8 %334 to i32
  %336 = icmp slt i32 %335, 128
  br i1 %336, label %337, label %385

337:                                              ; preds = %332
  %338 = load i64, i64* @state4, align 8
  %339 = load i64, i64* @STATE4_DESIGNATED_CNS11643_3, align 8
  %340 = icmp eq i64 %338, %339
  %341 = zext i1 %340 to i64
  %342 = select i1 %340, i32 0, i32 4
  %343 = add nsw i32 %342, 4
  store i32 %343, i32* %17, align 4
  %344 = load i32, i32* %9, align 4
  %345 = load i32, i32* %17, align 4
  %346 = icmp slt i32 %344, %345
  br i1 %346, label %347, label %349

347:                                              ; preds = %337
  %348 = load i32, i32* @RET_TOOSMALL, align 4
  store i32 %348, i32* %5, align 4
  br label %724

349:                                              ; preds = %337
  %350 = load i64, i64* @state4, align 8
  %351 = load i64, i64* @STATE4_DESIGNATED_CNS11643_3, align 8
  %352 = icmp ne i64 %350, %351
  br i1 %352, label %353, label %366

353:                                              ; preds = %349
  %354 = load i8, i8* @ESC, align 1
  %355 = load i8*, i8** %7, align 8
  %356 = getelementptr inbounds i8, i8* %355, i64 0
  store i8 %354, i8* %356, align 1
  %357 = load i8*, i8** %7, align 8
  %358 = getelementptr inbounds i8, i8* %357, i64 1
  store i8 36, i8* %358, align 1
  %359 = load i8*, i8** %7, align 8
  %360 = getelementptr inbounds i8, i8* %359, i64 2
  store i8 43, i8* %360, align 1
  %361 = load i8*, i8** %7, align 8
  %362 = getelementptr inbounds i8, i8* %361, i64 3
  store i8 73, i8* %362, align 1
  %363 = load i8*, i8** %7, align 8
  %364 = getelementptr inbounds i8, i8* %363, i64 4
  store i8* %364, i8** %7, align 8
  %365 = load i64, i64* @STATE4_DESIGNATED_CNS11643_3, align 8
  store i64 %365, i64* @state4, align 8
  br label %366

366:                                              ; preds = %353, %349
  %367 = load i8, i8* @ESC, align 1
  %368 = load i8*, i8** %7, align 8
  %369 = getelementptr inbounds i8, i8* %368, i64 0
  store i8 %367, i8* %369, align 1
  %370 = load i8*, i8** %7, align 8
  %371 = getelementptr inbounds i8, i8* %370, i64 1
  store i8 79, i8* %371, align 1
  %372 = getelementptr inbounds [3 x i8], [3 x i8]* %11, i64 0, i64 1
  %373 = load i8, i8* %372, align 1
  %374 = load i8*, i8** %7, align 8
  %375 = getelementptr inbounds i8, i8* %374, i64 2
  store i8 %373, i8* %375, align 1
  %376 = getelementptr inbounds [3 x i8], [3 x i8]* %11, i64 0, i64 2
  %377 = load i8, i8* %376, align 1
  %378 = load i8*, i8** %7, align 8
  %379 = getelementptr inbounds i8, i8* %378, i64 3
  store i8 %377, i8* %379, align 1
  %380 = load i32, i32* @COMBINE_STATE, align 4
  %381 = load i8*, i8** %10, align 8
  %382 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %383 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %382, i32 0, i32 0
  store i8* %381, i8** %383, align 8
  %384 = load i32, i32* %17, align 4
  store i32 %384, i32* %5, align 4
  br label %724

385:                                              ; preds = %332, %327, %322
  %386 = getelementptr inbounds [3 x i8], [3 x i8]* %11, i64 0, i64 0
  %387 = load i8, i8* %386, align 1
  %388 = zext i8 %387 to i32
  %389 = icmp eq i32 %388, 4
  br i1 %389, label %390, label %448

390:                                              ; preds = %385
  %391 = getelementptr inbounds [3 x i8], [3 x i8]* %11, i64 0, i64 1
  %392 = load i8, i8* %391, align 1
  %393 = zext i8 %392 to i32
  %394 = icmp slt i32 %393, 128
  br i1 %394, label %395, label %448

395:                                              ; preds = %390
  %396 = getelementptr inbounds [3 x i8], [3 x i8]* %11, i64 0, i64 2
  %397 = load i8, i8* %396, align 1
  %398 = zext i8 %397 to i32
  %399 = icmp slt i32 %398, 128
  br i1 %399, label %400, label %448

400:                                              ; preds = %395
  %401 = load i64, i64* @state4, align 8
  %402 = load i64, i64* @STATE4_DESIGNATED_CNS11643_4, align 8
  %403 = icmp eq i64 %401, %402
  %404 = zext i1 %403 to i64
  %405 = select i1 %403, i32 0, i32 4
  %406 = add nsw i32 %405, 4
  store i32 %406, i32* %18, align 4
  %407 = load i32, i32* %9, align 4
  %408 = load i32, i32* %18, align 4
  %409 = icmp slt i32 %407, %408
  br i1 %409, label %410, label %412

410:                                              ; preds = %400
  %411 = load i32, i32* @RET_TOOSMALL, align 4
  store i32 %411, i32* %5, align 4
  br label %724

412:                                              ; preds = %400
  %413 = load i64, i64* @state4, align 8
  %414 = load i64, i64* @STATE4_DESIGNATED_CNS11643_4, align 8
  %415 = icmp ne i64 %413, %414
  br i1 %415, label %416, label %429

416:                                              ; preds = %412
  %417 = load i8, i8* @ESC, align 1
  %418 = load i8*, i8** %7, align 8
  %419 = getelementptr inbounds i8, i8* %418, i64 0
  store i8 %417, i8* %419, align 1
  %420 = load i8*, i8** %7, align 8
  %421 = getelementptr inbounds i8, i8* %420, i64 1
  store i8 36, i8* %421, align 1
  %422 = load i8*, i8** %7, align 8
  %423 = getelementptr inbounds i8, i8* %422, i64 2
  store i8 43, i8* %423, align 1
  %424 = load i8*, i8** %7, align 8
  %425 = getelementptr inbounds i8, i8* %424, i64 3
  store i8 74, i8* %425, align 1
  %426 = load i8*, i8** %7, align 8
  %427 = getelementptr inbounds i8, i8* %426, i64 4
  store i8* %427, i8** %7, align 8
  %428 = load i64, i64* @STATE4_DESIGNATED_CNS11643_4, align 8
  store i64 %428, i64* @state4, align 8
  br label %429

429:                                              ; preds = %416, %412
  %430 = load i8, i8* @ESC, align 1
  %431 = load i8*, i8** %7, align 8
  %432 = getelementptr inbounds i8, i8* %431, i64 0
  store i8 %430, i8* %432, align 1
  %433 = load i8*, i8** %7, align 8
  %434 = getelementptr inbounds i8, i8* %433, i64 1
  store i8 79, i8* %434, align 1
  %435 = getelementptr inbounds [3 x i8], [3 x i8]* %11, i64 0, i64 1
  %436 = load i8, i8* %435, align 1
  %437 = load i8*, i8** %7, align 8
  %438 = getelementptr inbounds i8, i8* %437, i64 2
  store i8 %436, i8* %438, align 1
  %439 = getelementptr inbounds [3 x i8], [3 x i8]* %11, i64 0, i64 2
  %440 = load i8, i8* %439, align 1
  %441 = load i8*, i8** %7, align 8
  %442 = getelementptr inbounds i8, i8* %441, i64 3
  store i8 %440, i8* %442, align 1
  %443 = load i32, i32* @COMBINE_STATE, align 4
  %444 = load i8*, i8** %10, align 8
  %445 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %446 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %445, i32 0, i32 0
  store i8* %444, i8** %446, align 8
  %447 = load i32, i32* %18, align 4
  store i32 %447, i32* %5, align 4
  br label %724

448:                                              ; preds = %395, %390, %385
  %449 = getelementptr inbounds [3 x i8], [3 x i8]* %11, i64 0, i64 0
  %450 = load i8, i8* %449, align 1
  %451 = zext i8 %450 to i32
  %452 = icmp eq i32 %451, 5
  br i1 %452, label %453, label %511

453:                                              ; preds = %448
  %454 = getelementptr inbounds [3 x i8], [3 x i8]* %11, i64 0, i64 1
  %455 = load i8, i8* %454, align 1
  %456 = zext i8 %455 to i32
  %457 = icmp slt i32 %456, 128
  br i1 %457, label %458, label %511

458:                                              ; preds = %453
  %459 = getelementptr inbounds [3 x i8], [3 x i8]* %11, i64 0, i64 2
  %460 = load i8, i8* %459, align 1
  %461 = zext i8 %460 to i32
  %462 = icmp slt i32 %461, 128
  br i1 %462, label %463, label %511

463:                                              ; preds = %458
  %464 = load i64, i64* @state4, align 8
  %465 = load i64, i64* @STATE4_DESIGNATED_CNS11643_5, align 8
  %466 = icmp eq i64 %464, %465
  %467 = zext i1 %466 to i64
  %468 = select i1 %466, i32 0, i32 4
  %469 = add nsw i32 %468, 4
  store i32 %469, i32* %19, align 4
  %470 = load i32, i32* %9, align 4
  %471 = load i32, i32* %19, align 4
  %472 = icmp slt i32 %470, %471
  br i1 %472, label %473, label %475

473:                                              ; preds = %463
  %474 = load i32, i32* @RET_TOOSMALL, align 4
  store i32 %474, i32* %5, align 4
  br label %724

475:                                              ; preds = %463
  %476 = load i64, i64* @state4, align 8
  %477 = load i64, i64* @STATE4_DESIGNATED_CNS11643_5, align 8
  %478 = icmp ne i64 %476, %477
  br i1 %478, label %479, label %492

479:                                              ; preds = %475
  %480 = load i8, i8* @ESC, align 1
  %481 = load i8*, i8** %7, align 8
  %482 = getelementptr inbounds i8, i8* %481, i64 0
  store i8 %480, i8* %482, align 1
  %483 = load i8*, i8** %7, align 8
  %484 = getelementptr inbounds i8, i8* %483, i64 1
  store i8 36, i8* %484, align 1
  %485 = load i8*, i8** %7, align 8
  %486 = getelementptr inbounds i8, i8* %485, i64 2
  store i8 43, i8* %486, align 1
  %487 = load i8*, i8** %7, align 8
  %488 = getelementptr inbounds i8, i8* %487, i64 3
  store i8 75, i8* %488, align 1
  %489 = load i8*, i8** %7, align 8
  %490 = getelementptr inbounds i8, i8* %489, i64 4
  store i8* %490, i8** %7, align 8
  %491 = load i64, i64* @STATE4_DESIGNATED_CNS11643_5, align 8
  store i64 %491, i64* @state4, align 8
  br label %492

492:                                              ; preds = %479, %475
  %493 = load i8, i8* @ESC, align 1
  %494 = load i8*, i8** %7, align 8
  %495 = getelementptr inbounds i8, i8* %494, i64 0
  store i8 %493, i8* %495, align 1
  %496 = load i8*, i8** %7, align 8
  %497 = getelementptr inbounds i8, i8* %496, i64 1
  store i8 79, i8* %497, align 1
  %498 = getelementptr inbounds [3 x i8], [3 x i8]* %11, i64 0, i64 1
  %499 = load i8, i8* %498, align 1
  %500 = load i8*, i8** %7, align 8
  %501 = getelementptr inbounds i8, i8* %500, i64 2
  store i8 %499, i8* %501, align 1
  %502 = getelementptr inbounds [3 x i8], [3 x i8]* %11, i64 0, i64 2
  %503 = load i8, i8* %502, align 1
  %504 = load i8*, i8** %7, align 8
  %505 = getelementptr inbounds i8, i8* %504, i64 3
  store i8 %503, i8* %505, align 1
  %506 = load i32, i32* @COMBINE_STATE, align 4
  %507 = load i8*, i8** %10, align 8
  %508 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %509 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %508, i32 0, i32 0
  store i8* %507, i8** %509, align 8
  %510 = load i32, i32* %19, align 4
  store i32 %510, i32* %5, align 4
  br label %724

511:                                              ; preds = %458, %453, %448
  %512 = getelementptr inbounds [3 x i8], [3 x i8]* %11, i64 0, i64 0
  %513 = load i8, i8* %512, align 1
  %514 = zext i8 %513 to i32
  %515 = icmp eq i32 %514, 6
  br i1 %515, label %516, label %574

516:                                              ; preds = %511
  %517 = getelementptr inbounds [3 x i8], [3 x i8]* %11, i64 0, i64 1
  %518 = load i8, i8* %517, align 1
  %519 = zext i8 %518 to i32
  %520 = icmp slt i32 %519, 128
  br i1 %520, label %521, label %574

521:                                              ; preds = %516
  %522 = getelementptr inbounds [3 x i8], [3 x i8]* %11, i64 0, i64 2
  %523 = load i8, i8* %522, align 1
  %524 = zext i8 %523 to i32
  %525 = icmp slt i32 %524, 128
  br i1 %525, label %526, label %574

526:                                              ; preds = %521
  %527 = load i64, i64* @state4, align 8
  %528 = load i64, i64* @STATE4_DESIGNATED_CNS11643_6, align 8
  %529 = icmp eq i64 %527, %528
  %530 = zext i1 %529 to i64
  %531 = select i1 %529, i32 0, i32 4
  %532 = add nsw i32 %531, 4
  store i32 %532, i32* %20, align 4
  %533 = load i32, i32* %9, align 4
  %534 = load i32, i32* %20, align 4
  %535 = icmp slt i32 %533, %534
  br i1 %535, label %536, label %538

536:                                              ; preds = %526
  %537 = load i32, i32* @RET_TOOSMALL, align 4
  store i32 %537, i32* %5, align 4
  br label %724

538:                                              ; preds = %526
  %539 = load i64, i64* @state4, align 8
  %540 = load i64, i64* @STATE4_DESIGNATED_CNS11643_6, align 8
  %541 = icmp ne i64 %539, %540
  br i1 %541, label %542, label %555

542:                                              ; preds = %538
  %543 = load i8, i8* @ESC, align 1
  %544 = load i8*, i8** %7, align 8
  %545 = getelementptr inbounds i8, i8* %544, i64 0
  store i8 %543, i8* %545, align 1
  %546 = load i8*, i8** %7, align 8
  %547 = getelementptr inbounds i8, i8* %546, i64 1
  store i8 36, i8* %547, align 1
  %548 = load i8*, i8** %7, align 8
  %549 = getelementptr inbounds i8, i8* %548, i64 2
  store i8 43, i8* %549, align 1
  %550 = load i8*, i8** %7, align 8
  %551 = getelementptr inbounds i8, i8* %550, i64 3
  store i8 76, i8* %551, align 1
  %552 = load i8*, i8** %7, align 8
  %553 = getelementptr inbounds i8, i8* %552, i64 4
  store i8* %553, i8** %7, align 8
  %554 = load i64, i64* @STATE4_DESIGNATED_CNS11643_6, align 8
  store i64 %554, i64* @state4, align 8
  br label %555

555:                                              ; preds = %542, %538
  %556 = load i8, i8* @ESC, align 1
  %557 = load i8*, i8** %7, align 8
  %558 = getelementptr inbounds i8, i8* %557, i64 0
  store i8 %556, i8* %558, align 1
  %559 = load i8*, i8** %7, align 8
  %560 = getelementptr inbounds i8, i8* %559, i64 1
  store i8 79, i8* %560, align 1
  %561 = getelementptr inbounds [3 x i8], [3 x i8]* %11, i64 0, i64 1
  %562 = load i8, i8* %561, align 1
  %563 = load i8*, i8** %7, align 8
  %564 = getelementptr inbounds i8, i8* %563, i64 2
  store i8 %562, i8* %564, align 1
  %565 = getelementptr inbounds [3 x i8], [3 x i8]* %11, i64 0, i64 2
  %566 = load i8, i8* %565, align 1
  %567 = load i8*, i8** %7, align 8
  %568 = getelementptr inbounds i8, i8* %567, i64 3
  store i8 %566, i8* %568, align 1
  %569 = load i32, i32* @COMBINE_STATE, align 4
  %570 = load i8*, i8** %10, align 8
  %571 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %572 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %571, i32 0, i32 0
  store i8* %570, i8** %572, align 8
  %573 = load i32, i32* %20, align 4
  store i32 %573, i32* %5, align 4
  br label %724

574:                                              ; preds = %521, %516, %511
  %575 = getelementptr inbounds [3 x i8], [3 x i8]* %11, i64 0, i64 0
  %576 = load i8, i8* %575, align 1
  %577 = zext i8 %576 to i32
  %578 = icmp eq i32 %577, 7
  br i1 %578, label %579, label %637

579:                                              ; preds = %574
  %580 = getelementptr inbounds [3 x i8], [3 x i8]* %11, i64 0, i64 1
  %581 = load i8, i8* %580, align 1
  %582 = zext i8 %581 to i32
  %583 = icmp slt i32 %582, 128
  br i1 %583, label %584, label %637

584:                                              ; preds = %579
  %585 = getelementptr inbounds [3 x i8], [3 x i8]* %11, i64 0, i64 2
  %586 = load i8, i8* %585, align 1
  %587 = zext i8 %586 to i32
  %588 = icmp slt i32 %587, 128
  br i1 %588, label %589, label %637

589:                                              ; preds = %584
  %590 = load i64, i64* @state4, align 8
  %591 = load i64, i64* @STATE4_DESIGNATED_CNS11643_7, align 8
  %592 = icmp eq i64 %590, %591
  %593 = zext i1 %592 to i64
  %594 = select i1 %592, i32 0, i32 4
  %595 = add nsw i32 %594, 4
  store i32 %595, i32* %21, align 4
  %596 = load i32, i32* %9, align 4
  %597 = load i32, i32* %21, align 4
  %598 = icmp slt i32 %596, %597
  br i1 %598, label %599, label %601

599:                                              ; preds = %589
  %600 = load i32, i32* @RET_TOOSMALL, align 4
  store i32 %600, i32* %5, align 4
  br label %724

601:                                              ; preds = %589
  %602 = load i64, i64* @state4, align 8
  %603 = load i64, i64* @STATE4_DESIGNATED_CNS11643_7, align 8
  %604 = icmp ne i64 %602, %603
  br i1 %604, label %605, label %618

605:                                              ; preds = %601
  %606 = load i8, i8* @ESC, align 1
  %607 = load i8*, i8** %7, align 8
  %608 = getelementptr inbounds i8, i8* %607, i64 0
  store i8 %606, i8* %608, align 1
  %609 = load i8*, i8** %7, align 8
  %610 = getelementptr inbounds i8, i8* %609, i64 1
  store i8 36, i8* %610, align 1
  %611 = load i8*, i8** %7, align 8
  %612 = getelementptr inbounds i8, i8* %611, i64 2
  store i8 43, i8* %612, align 1
  %613 = load i8*, i8** %7, align 8
  %614 = getelementptr inbounds i8, i8* %613, i64 3
  store i8 77, i8* %614, align 1
  %615 = load i8*, i8** %7, align 8
  %616 = getelementptr inbounds i8, i8* %615, i64 4
  store i8* %616, i8** %7, align 8
  %617 = load i64, i64* @STATE4_DESIGNATED_CNS11643_7, align 8
  store i64 %617, i64* @state4, align 8
  br label %618

618:                                              ; preds = %605, %601
  %619 = load i8, i8* @ESC, align 1
  %620 = load i8*, i8** %7, align 8
  %621 = getelementptr inbounds i8, i8* %620, i64 0
  store i8 %619, i8* %621, align 1
  %622 = load i8*, i8** %7, align 8
  %623 = getelementptr inbounds i8, i8* %622, i64 1
  store i8 79, i8* %623, align 1
  %624 = getelementptr inbounds [3 x i8], [3 x i8]* %11, i64 0, i64 1
  %625 = load i8, i8* %624, align 1
  %626 = load i8*, i8** %7, align 8
  %627 = getelementptr inbounds i8, i8* %626, i64 2
  store i8 %625, i8* %627, align 1
  %628 = getelementptr inbounds [3 x i8], [3 x i8]* %11, i64 0, i64 2
  %629 = load i8, i8* %628, align 1
  %630 = load i8*, i8** %7, align 8
  %631 = getelementptr inbounds i8, i8* %630, i64 3
  store i8 %629, i8* %631, align 1
  %632 = load i32, i32* @COMBINE_STATE, align 4
  %633 = load i8*, i8** %10, align 8
  %634 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %635 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %634, i32 0, i32 0
  store i8* %633, i8** %635, align 8
  %636 = load i32, i32* %21, align 4
  store i32 %636, i32* %5, align 4
  br label %724

637:                                              ; preds = %584, %579, %574
  br label %638

638:                                              ; preds = %637, %171
  %639 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %640 = getelementptr inbounds [3 x i8], [3 x i8]* %11, i64 0, i64 0
  %641 = load i32, i32* %8, align 4
  %642 = call i32 @isoir165_wctomb(%struct.TYPE_7__* %639, i8* %640, i32 %641, i32 2)
  store i32 %642, i32* %12, align 4
  %643 = load i32, i32* %12, align 4
  %644 = load i32, i32* @RET_ILUNI, align 4
  %645 = icmp ne i32 %643, %644
  br i1 %645, label %646, label %722

646:                                              ; preds = %638
  %647 = load i32, i32* %12, align 4
  %648 = icmp ne i32 %647, 2
  br i1 %648, label %649, label %651

649:                                              ; preds = %646
  %650 = call i32 (...) @abort() #3
  unreachable

651:                                              ; preds = %646
  %652 = getelementptr inbounds [3 x i8], [3 x i8]* %11, i64 0, i64 0
  %653 = load i8, i8* %652, align 1
  %654 = zext i8 %653 to i32
  %655 = icmp slt i32 %654, 128
  br i1 %655, label %656, label %721

656:                                              ; preds = %651
  %657 = getelementptr inbounds [3 x i8], [3 x i8]* %11, i64 0, i64 1
  %658 = load i8, i8* %657, align 1
  %659 = zext i8 %658 to i32
  %660 = icmp slt i32 %659, 128
  br i1 %660, label %661, label %721

661:                                              ; preds = %656
  %662 = load i64, i64* @state2, align 8
  %663 = load i64, i64* @STATE2_DESIGNATED_ISO_IR_165, align 8
  %664 = icmp eq i64 %662, %663
  %665 = zext i1 %664 to i64
  %666 = select i1 %664, i32 0, i32 4
  %667 = load i64, i64* @state1, align 8
  %668 = load i64, i64* @STATE_TWOBYTE, align 8
  %669 = icmp eq i64 %667, %668
  %670 = zext i1 %669 to i64
  %671 = select i1 %669, i32 0, i32 1
  %672 = add nsw i32 %666, %671
  %673 = add nsw i32 %672, 2
  store i32 %673, i32* %22, align 4
  %674 = load i32, i32* %9, align 4
  %675 = load i32, i32* %22, align 4
  %676 = icmp slt i32 %674, %675
  br i1 %676, label %677, label %679

677:                                              ; preds = %661
  %678 = load i32, i32* @RET_TOOSMALL, align 4
  store i32 %678, i32* %5, align 4
  br label %724

679:                                              ; preds = %661
  %680 = load i64, i64* @state2, align 8
  %681 = load i64, i64* @STATE2_DESIGNATED_ISO_IR_165, align 8
  %682 = icmp ne i64 %680, %681
  br i1 %682, label %683, label %696

683:                                              ; preds = %679
  %684 = load i8, i8* @ESC, align 1
  %685 = load i8*, i8** %7, align 8
  %686 = getelementptr inbounds i8, i8* %685, i64 0
  store i8 %684, i8* %686, align 1
  %687 = load i8*, i8** %7, align 8
  %688 = getelementptr inbounds i8, i8* %687, i64 1
  store i8 36, i8* %688, align 1
  %689 = load i8*, i8** %7, align 8
  %690 = getelementptr inbounds i8, i8* %689, i64 2
  store i8 41, i8* %690, align 1
  %691 = load i8*, i8** %7, align 8
  %692 = getelementptr inbounds i8, i8* %691, i64 3
  store i8 69, i8* %692, align 1
  %693 = load i8*, i8** %7, align 8
  %694 = getelementptr inbounds i8, i8* %693, i64 4
  store i8* %694, i8** %7, align 8
  %695 = load i64, i64* @STATE2_DESIGNATED_ISO_IR_165, align 8
  store i64 %695, i64* @state2, align 8
  br label %696

696:                                              ; preds = %683, %679
  %697 = load i64, i64* @state1, align 8
  %698 = load i64, i64* @STATE_TWOBYTE, align 8
  %699 = icmp ne i64 %697, %698
  br i1 %699, label %700, label %707

700:                                              ; preds = %696
  %701 = load i8, i8* @SO, align 1
  %702 = load i8*, i8** %7, align 8
  %703 = getelementptr inbounds i8, i8* %702, i64 0
  store i8 %701, i8* %703, align 1
  %704 = load i8*, i8** %7, align 8
  %705 = getelementptr inbounds i8, i8* %704, i64 1
  store i8* %705, i8** %7, align 8
  %706 = load i64, i64* @STATE_TWOBYTE, align 8
  store i64 %706, i64* @state1, align 8
  br label %707

707:                                              ; preds = %700, %696
  %708 = getelementptr inbounds [3 x i8], [3 x i8]* %11, i64 0, i64 0
  %709 = load i8, i8* %708, align 1
  %710 = load i8*, i8** %7, align 8
  %711 = getelementptr inbounds i8, i8* %710, i64 0
  store i8 %709, i8* %711, align 1
  %712 = getelementptr inbounds [3 x i8], [3 x i8]* %11, i64 0, i64 1
  %713 = load i8, i8* %712, align 1
  %714 = load i8*, i8** %7, align 8
  %715 = getelementptr inbounds i8, i8* %714, i64 1
  store i8 %713, i8* %715, align 1
  %716 = load i32, i32* @COMBINE_STATE, align 4
  %717 = load i8*, i8** %10, align 8
  %718 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %719 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %718, i32 0, i32 0
  store i8* %717, i8** %719, align 8
  %720 = load i32, i32* %22, align 4
  store i32 %720, i32* %5, align 4
  br label %724

721:                                              ; preds = %656, %651
  br label %722

722:                                              ; preds = %721, %638
  %723 = load i32, i32* @RET_ILUNI, align 4
  store i32 %723, i32* %5, align 4
  br label %724

724:                                              ; preds = %722, %707, %677, %618, %599, %555, %536, %492, %473, %429, %410, %366, %347, %303, %284, %245, %215, %156, %126, %80, %53
  %725 = load i32, i32* %5, align 4
  ret i32 %725
}

declare dso_local i32 @ascii_wctomb(%struct.TYPE_7__*, i8*, i32, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i32 @gb2312_wctomb(%struct.TYPE_7__*, i8*, i32, i32) #1

declare dso_local i32 @cns11643_wctomb(%struct.TYPE_7__*, i8*, i32, i32) #1

declare dso_local i32 @isoir165_wctomb(%struct.TYPE_7__*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
