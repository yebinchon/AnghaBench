; ModuleID = '/home/carl/AnghaBench/TDengine/deps/iconv/extr_iso2022_jp3.h_iso2022_jp3_wctomb.c'
source_filename = "/home/carl/AnghaBench/TDengine/deps/iconv/extr_iso2022_jp3.h_iso2022_jp3_wctomb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i64 }

@SPLIT_STATE = common dso_local global i32 0, align 4
@lasttwo = common dso_local global i32 0, align 4
@iso2022_jp3_comp_table02e5_idx = common dso_local global i32 0, align 4
@iso2022_jp3_comp_table02e5_len = common dso_local global i32 0, align 4
@iso2022_jp3_comp_table02e9_idx = common dso_local global i32 0, align 4
@iso2022_jp3_comp_table02e9_len = common dso_local global i32 0, align 4
@iso2022_jp3_comp_table0300_idx = common dso_local global i32 0, align 4
@iso2022_jp3_comp_table0300_len = common dso_local global i32 0, align 4
@iso2022_jp3_comp_table0301_idx = common dso_local global i32 0, align 4
@iso2022_jp3_comp_table0301_len = common dso_local global i32 0, align 4
@iso2022_jp3_comp_table309a_idx = common dso_local global i32 0, align 4
@iso2022_jp3_comp_table309a_len = common dso_local global i32 0, align 4
@iso2022_jp3_comp_table_data = common dso_local global %struct.TYPE_8__* null, align 8
@STATE_JISX02131 = common dso_local global i64 0, align 8
@RET_TOOSMALL = common dso_local global i32 0, align 4
@ESC = common dso_local global i8 0, align 1
@COMBINE_STATE_NO_LASTTWO = common dso_local global i32 0, align 4
@prevstate = common dso_local global i64 0, align 8
@STATE_JISX0208 = common dso_local global i64 0, align 8
@RET_ILUNI = common dso_local global i32 0, align 4
@STATE_ASCII = common dso_local global i64 0, align 8
@STATE_JISX0201ROMAN = common dso_local global i64 0, align 8
@COMBINE_STATE = common dso_local global i32 0, align 4
@STATE_JISX02132 = common dso_local global i64 0, align 8
@STATE_JISX0201KATAKANA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i8*, i32, i32)* @iso2022_jp3_wctomb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iso2022_jp3_wctomb(%struct.TYPE_7__* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [2 x i8], align 1
  %12 = alloca i16, align 2
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %14, align 8
  %20 = load i32, i32* @SPLIT_STATE, align 4
  %21 = load i32, i32* @lasttwo, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %178

23:                                               ; preds = %4
  %24 = load i32, i32* %8, align 4
  %25 = icmp eq i32 %24, 741
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = load i32, i32* @iso2022_jp3_comp_table02e5_idx, align 4
  store i32 %27, i32* %15, align 4
  %28 = load i32, i32* @iso2022_jp3_comp_table02e5_len, align 4
  store i32 %28, i32* %16, align 4
  br label %58

29:                                               ; preds = %23
  %30 = load i32, i32* %8, align 4
  %31 = icmp eq i32 %30, 745
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = load i32, i32* @iso2022_jp3_comp_table02e9_idx, align 4
  store i32 %33, i32* %15, align 4
  %34 = load i32, i32* @iso2022_jp3_comp_table02e9_len, align 4
  store i32 %34, i32* %16, align 4
  br label %57

35:                                               ; preds = %29
  %36 = load i32, i32* %8, align 4
  %37 = icmp eq i32 %36, 768
  br i1 %37, label %38, label %41

38:                                               ; preds = %35
  %39 = load i32, i32* @iso2022_jp3_comp_table0300_idx, align 4
  store i32 %39, i32* %15, align 4
  %40 = load i32, i32* @iso2022_jp3_comp_table0300_len, align 4
  store i32 %40, i32* %16, align 4
  br label %56

41:                                               ; preds = %35
  %42 = load i32, i32* %8, align 4
  %43 = icmp eq i32 %42, 769
  br i1 %43, label %44, label %47

44:                                               ; preds = %41
  %45 = load i32, i32* @iso2022_jp3_comp_table0301_idx, align 4
  store i32 %45, i32* %15, align 4
  %46 = load i32, i32* @iso2022_jp3_comp_table0301_len, align 4
  store i32 %46, i32* %16, align 4
  br label %55

47:                                               ; preds = %41
  %48 = load i32, i32* %8, align 4
  %49 = icmp eq i32 %48, 12442
  br i1 %49, label %50, label %53

50:                                               ; preds = %47
  %51 = load i32, i32* @iso2022_jp3_comp_table309a_idx, align 4
  store i32 %51, i32* %15, align 4
  %52 = load i32, i32* @iso2022_jp3_comp_table309a_len, align 4
  store i32 %52, i32* %16, align 4
  br label %54

53:                                               ; preds = %47
  br label %132

54:                                               ; preds = %50
  br label %55

55:                                               ; preds = %54, %44
  br label %56

56:                                               ; preds = %55, %38
  br label %57

57:                                               ; preds = %56, %32
  br label %58

58:                                               ; preds = %57, %26
  br label %59

59:                                               ; preds = %70, %58
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** @iso2022_jp3_comp_table_data, align 8
  %61 = load i32, i32* %15, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @lasttwo, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %59
  br label %76

69:                                               ; preds = %59
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %15, align 4
  %72 = add i32 %71, 1
  store i32 %72, i32* %15, align 4
  %73 = load i32, i32* %16, align 4
  %74 = add i32 %73, -1
  store i32 %74, i32* %16, align 4
  %75 = icmp ugt i32 %74, 0
  br i1 %75, label %59, label %76

76:                                               ; preds = %70, %68
  %77 = load i32, i32* %16, align 4
  %78 = icmp ugt i32 %77, 0
  br i1 %78, label %79, label %131

79:                                               ; preds = %76
  %80 = load i64, i64* %14, align 8
  %81 = load i64, i64* @STATE_JISX02131, align 8
  %82 = icmp ne i64 %80, %81
  %83 = zext i1 %82 to i64
  %84 = select i1 %82, i32 4, i32 0
  %85 = add nsw i32 %84, 2
  store i32 %85, i32* %10, align 4
  %86 = load i32, i32* %9, align 4
  %87 = load i32, i32* %10, align 4
  %88 = icmp slt i32 %86, %87
  br i1 %88, label %89, label %91

89:                                               ; preds = %79
  %90 = load i32, i32* @RET_TOOSMALL, align 4
  store i32 %90, i32* %5, align 4
  br label %548

91:                                               ; preds = %79
  %92 = load i64, i64* %14, align 8
  %93 = load i64, i64* @STATE_JISX02131, align 8
  %94 = icmp ne i64 %92, %93
  br i1 %94, label %95, label %108

95:                                               ; preds = %91
  %96 = load i8, i8* @ESC, align 1
  %97 = load i8*, i8** %7, align 8
  %98 = getelementptr inbounds i8, i8* %97, i64 0
  store i8 %96, i8* %98, align 1
  %99 = load i8*, i8** %7, align 8
  %100 = getelementptr inbounds i8, i8* %99, i64 1
  store i8 36, i8* %100, align 1
  %101 = load i8*, i8** %7, align 8
  %102 = getelementptr inbounds i8, i8* %101, i64 2
  store i8 40, i8* %102, align 1
  %103 = load i8*, i8** %7, align 8
  %104 = getelementptr inbounds i8, i8* %103, i64 3
  store i8 81, i8* %104, align 1
  %105 = load i8*, i8** %7, align 8
  %106 = getelementptr inbounds i8, i8* %105, i64 4
  store i8* %106, i8** %7, align 8
  %107 = load i64, i64* @STATE_JISX02131, align 8
  store i64 %107, i64* %14, align 8
  br label %108

108:                                              ; preds = %95, %91
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** @iso2022_jp3_comp_table_data, align 8
  %110 = load i32, i32* %15, align 4
  %111 = zext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  store i32 %114, i32* @lasttwo, align 4
  %115 = load i32, i32* @lasttwo, align 4
  %116 = ashr i32 %115, 8
  %117 = and i32 %116, 255
  %118 = trunc i32 %117 to i8
  %119 = load i8*, i8** %7, align 8
  %120 = getelementptr inbounds i8, i8* %119, i64 0
  store i8 %118, i8* %120, align 1
  %121 = load i32, i32* @lasttwo, align 4
  %122 = and i32 %121, 255
  %123 = trunc i32 %122 to i8
  %124 = load i8*, i8** %7, align 8
  %125 = getelementptr inbounds i8, i8* %124, i64 1
  store i8 %123, i8* %125, align 1
  %126 = load i32, i32* @COMBINE_STATE_NO_LASTTWO, align 4
  %127 = load i64, i64* %14, align 8
  %128 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 0
  store i64 %127, i64* %129, align 8
  %130 = load i32, i32* %10, align 4
  store i32 %130, i32* %5, align 4
  br label %548

131:                                              ; preds = %76
  br label %132

132:                                              ; preds = %131, %53
  %133 = load i64, i64* @prevstate, align 8
  %134 = load i64, i64* %14, align 8
  %135 = icmp ne i64 %133, %134
  %136 = zext i1 %135 to i64
  %137 = select i1 %135, i32 3, i32 0
  %138 = add nsw i32 %137, 2
  store i32 %138, i32* %10, align 4
  %139 = load i32, i32* %9, align 4
  %140 = load i32, i32* %10, align 4
  %141 = icmp slt i32 %139, %140
  br i1 %141, label %142, label %144

142:                                              ; preds = %132
  %143 = load i32, i32* @RET_TOOSMALL, align 4
  store i32 %143, i32* %5, align 4
  br label %548

144:                                              ; preds = %132
  %145 = load i64, i64* @prevstate, align 8
  %146 = load i64, i64* %14, align 8
  %147 = icmp ne i64 %145, %146
  br i1 %147, label %148, label %164

148:                                              ; preds = %144
  %149 = load i64, i64* %14, align 8
  %150 = load i64, i64* @STATE_JISX0208, align 8
  %151 = icmp ne i64 %149, %150
  br i1 %151, label %152, label %154

152:                                              ; preds = %148
  %153 = call i32 (...) @abort() #3
  unreachable

154:                                              ; preds = %148
  %155 = load i8, i8* @ESC, align 1
  %156 = load i8*, i8** %7, align 8
  %157 = getelementptr inbounds i8, i8* %156, i64 0
  store i8 %155, i8* %157, align 1
  %158 = load i8*, i8** %7, align 8
  %159 = getelementptr inbounds i8, i8* %158, i64 1
  store i8 36, i8* %159, align 1
  %160 = load i8*, i8** %7, align 8
  %161 = getelementptr inbounds i8, i8* %160, i64 2
  store i8 66, i8* %161, align 1
  %162 = load i8*, i8** %7, align 8
  %163 = getelementptr inbounds i8, i8* %162, i64 3
  store i8* %163, i8** %7, align 8
  br label %164

164:                                              ; preds = %154, %144
  %165 = load i32, i32* @lasttwo, align 4
  %166 = ashr i32 %165, 8
  %167 = and i32 %166, 255
  %168 = trunc i32 %167 to i8
  %169 = load i8*, i8** %7, align 8
  %170 = getelementptr inbounds i8, i8* %169, i64 0
  store i8 %168, i8* %170, align 1
  %171 = load i32, i32* @lasttwo, align 4
  %172 = and i32 %171, 255
  %173 = trunc i32 %172 to i8
  %174 = load i8*, i8** %7, align 8
  %175 = getelementptr inbounds i8, i8* %174, i64 1
  store i8 %173, i8* %175, align 1
  %176 = load i8*, i8** %7, align 8
  %177 = getelementptr inbounds i8, i8* %176, i64 2
  store i8* %177, i8** %7, align 8
  br label %178

178:                                              ; preds = %164, %4
  %179 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %180 = getelementptr inbounds [2 x i8], [2 x i8]* %11, i64 0, i64 0
  %181 = load i32, i32* %8, align 4
  %182 = call i32 @ascii_wctomb(%struct.TYPE_7__* %179, i8* %180, i32 %181, i32 1)
  store i32 %182, i32* %13, align 4
  %183 = load i32, i32* %13, align 4
  %184 = load i32, i32* @RET_ILUNI, align 4
  %185 = icmp ne i32 %183, %184
  br i1 %185, label %186, label %235

186:                                              ; preds = %178
  %187 = load i32, i32* %13, align 4
  %188 = icmp ne i32 %187, 1
  br i1 %188, label %189, label %191

189:                                              ; preds = %186
  %190 = call i32 (...) @abort() #3
  unreachable

191:                                              ; preds = %186
  %192 = getelementptr inbounds [2 x i8], [2 x i8]* %11, i64 0, i64 0
  %193 = load i8, i8* %192, align 1
  %194 = zext i8 %193 to i32
  %195 = icmp slt i32 %194, 128
  br i1 %195, label %196, label %234

196:                                              ; preds = %191
  %197 = load i64, i64* %14, align 8
  %198 = load i64, i64* @STATE_ASCII, align 8
  %199 = icmp eq i64 %197, %198
  %200 = zext i1 %199 to i64
  %201 = select i1 %199, i32 1, i32 4
  %202 = load i32, i32* %10, align 4
  %203 = add nsw i32 %202, %201
  store i32 %203, i32* %10, align 4
  %204 = load i32, i32* %9, align 4
  %205 = load i32, i32* %10, align 4
  %206 = icmp slt i32 %204, %205
  br i1 %206, label %207, label %209

207:                                              ; preds = %196
  %208 = load i32, i32* @RET_TOOSMALL, align 4
  store i32 %208, i32* %5, align 4
  br label %548

209:                                              ; preds = %196
  %210 = load i64, i64* %14, align 8
  %211 = load i64, i64* @STATE_ASCII, align 8
  %212 = icmp ne i64 %210, %211
  br i1 %212, label %213, label %224

213:                                              ; preds = %209
  %214 = load i8, i8* @ESC, align 1
  %215 = load i8*, i8** %7, align 8
  %216 = getelementptr inbounds i8, i8* %215, i64 0
  store i8 %214, i8* %216, align 1
  %217 = load i8*, i8** %7, align 8
  %218 = getelementptr inbounds i8, i8* %217, i64 1
  store i8 40, i8* %218, align 1
  %219 = load i8*, i8** %7, align 8
  %220 = getelementptr inbounds i8, i8* %219, i64 2
  store i8 66, i8* %220, align 1
  %221 = load i8*, i8** %7, align 8
  %222 = getelementptr inbounds i8, i8* %221, i64 3
  store i8* %222, i8** %7, align 8
  %223 = load i64, i64* @STATE_ASCII, align 8
  store i64 %223, i64* %14, align 8
  br label %224

224:                                              ; preds = %213, %209
  %225 = getelementptr inbounds [2 x i8], [2 x i8]* %11, i64 0, i64 0
  %226 = load i8, i8* %225, align 1
  %227 = load i8*, i8** %7, align 8
  %228 = getelementptr inbounds i8, i8* %227, i64 0
  store i8 %226, i8* %228, align 1
  %229 = load i32, i32* @COMBINE_STATE_NO_LASTTWO, align 4
  %230 = load i64, i64* %14, align 8
  %231 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %232 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %231, i32 0, i32 0
  store i64 %230, i64* %232, align 8
  %233 = load i32, i32* %10, align 4
  store i32 %233, i32* %5, align 4
  br label %548

234:                                              ; preds = %191
  br label %235

235:                                              ; preds = %234, %178
  %236 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %237 = getelementptr inbounds [2 x i8], [2 x i8]* %11, i64 0, i64 0
  %238 = load i32, i32* %8, align 4
  %239 = call i32 @jisx0201_wctomb(%struct.TYPE_7__* %236, i8* %237, i32 %238, i32 1)
  store i32 %239, i32* %13, align 4
  %240 = load i32, i32* %13, align 4
  %241 = load i32, i32* @RET_ILUNI, align 4
  %242 = icmp ne i32 %240, %241
  br i1 %242, label %243, label %292

243:                                              ; preds = %235
  %244 = load i32, i32* %13, align 4
  %245 = icmp ne i32 %244, 1
  br i1 %245, label %246, label %248

246:                                              ; preds = %243
  %247 = call i32 (...) @abort() #3
  unreachable

248:                                              ; preds = %243
  %249 = getelementptr inbounds [2 x i8], [2 x i8]* %11, i64 0, i64 0
  %250 = load i8, i8* %249, align 1
  %251 = zext i8 %250 to i32
  %252 = icmp slt i32 %251, 128
  br i1 %252, label %253, label %291

253:                                              ; preds = %248
  %254 = load i64, i64* %14, align 8
  %255 = load i64, i64* @STATE_JISX0201ROMAN, align 8
  %256 = icmp eq i64 %254, %255
  %257 = zext i1 %256 to i64
  %258 = select i1 %256, i32 1, i32 4
  %259 = load i32, i32* %10, align 4
  %260 = add nsw i32 %259, %258
  store i32 %260, i32* %10, align 4
  %261 = load i32, i32* %9, align 4
  %262 = load i32, i32* %10, align 4
  %263 = icmp slt i32 %261, %262
  br i1 %263, label %264, label %266

264:                                              ; preds = %253
  %265 = load i32, i32* @RET_TOOSMALL, align 4
  store i32 %265, i32* %5, align 4
  br label %548

266:                                              ; preds = %253
  %267 = load i64, i64* %14, align 8
  %268 = load i64, i64* @STATE_JISX0201ROMAN, align 8
  %269 = icmp ne i64 %267, %268
  br i1 %269, label %270, label %281

270:                                              ; preds = %266
  %271 = load i8, i8* @ESC, align 1
  %272 = load i8*, i8** %7, align 8
  %273 = getelementptr inbounds i8, i8* %272, i64 0
  store i8 %271, i8* %273, align 1
  %274 = load i8*, i8** %7, align 8
  %275 = getelementptr inbounds i8, i8* %274, i64 1
  store i8 40, i8* %275, align 1
  %276 = load i8*, i8** %7, align 8
  %277 = getelementptr inbounds i8, i8* %276, i64 2
  store i8 74, i8* %277, align 1
  %278 = load i8*, i8** %7, align 8
  %279 = getelementptr inbounds i8, i8* %278, i64 3
  store i8* %279, i8** %7, align 8
  %280 = load i64, i64* @STATE_JISX0201ROMAN, align 8
  store i64 %280, i64* %14, align 8
  br label %281

281:                                              ; preds = %270, %266
  %282 = getelementptr inbounds [2 x i8], [2 x i8]* %11, i64 0, i64 0
  %283 = load i8, i8* %282, align 1
  %284 = load i8*, i8** %7, align 8
  %285 = getelementptr inbounds i8, i8* %284, i64 0
  store i8 %283, i8* %285, align 1
  %286 = load i32, i32* @COMBINE_STATE_NO_LASTTWO, align 4
  %287 = load i64, i64* %14, align 8
  %288 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %289 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %288, i32 0, i32 0
  store i64 %287, i64* %289, align 8
  %290 = load i32, i32* %10, align 4
  store i32 %290, i32* %5, align 4
  br label %548

291:                                              ; preds = %248
  br label %292

292:                                              ; preds = %291, %235
  %293 = load i32, i32* %8, align 4
  %294 = call zeroext i16 @ucs4_to_jisx0213(i32 %293)
  store i16 %294, i16* %12, align 2
  %295 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %296 = getelementptr inbounds [2 x i8], [2 x i8]* %11, i64 0, i64 0
  %297 = load i32, i32* %8, align 4
  %298 = call i32 @jisx0208_wctomb(%struct.TYPE_7__* %295, i8* %296, i32 %297, i32 2)
  store i32 %298, i32* %13, align 4
  %299 = load i32, i32* %13, align 4
  %300 = load i32, i32* @RET_ILUNI, align 4
  %301 = icmp ne i32 %299, %300
  br i1 %301, label %302, label %376

302:                                              ; preds = %292
  %303 = load i32, i32* %13, align 4
  %304 = icmp ne i32 %303, 2
  br i1 %304, label %305, label %307

305:                                              ; preds = %302
  %306 = call i32 (...) @abort() #3
  unreachable

307:                                              ; preds = %302
  %308 = getelementptr inbounds [2 x i8], [2 x i8]* %11, i64 0, i64 0
  %309 = load i8, i8* %308, align 1
  %310 = zext i8 %309 to i32
  %311 = icmp slt i32 %310, 128
  br i1 %311, label %312, label %375

312:                                              ; preds = %307
  %313 = getelementptr inbounds [2 x i8], [2 x i8]* %11, i64 0, i64 1
  %314 = load i8, i8* %313, align 1
  %315 = zext i8 %314 to i32
  %316 = icmp slt i32 %315, 128
  br i1 %316, label %317, label %375

317:                                              ; preds = %312
  %318 = load i16, i16* %12, align 2
  %319 = zext i16 %318 to i32
  %320 = and i32 %319, 128
  %321 = icmp ne i32 %320, 0
  br i1 %321, label %322, label %333

322:                                              ; preds = %317
  %323 = load i64, i64* %14, align 8
  store i64 %323, i64* @prevstate, align 8
  %324 = load i16, i16* %12, align 2
  %325 = zext i16 %324 to i32
  %326 = and i32 %325, 32639
  store i32 %326, i32* @lasttwo, align 4
  %327 = load i64, i64* @STATE_JISX0208, align 8
  store i64 %327, i64* %14, align 8
  %328 = load i32, i32* @COMBINE_STATE, align 4
  %329 = load i64, i64* %14, align 8
  %330 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %331 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %330, i32 0, i32 0
  store i64 %329, i64* %331, align 8
  %332 = load i32, i32* %10, align 4
  store i32 %332, i32* %5, align 4
  br label %548

333:                                              ; preds = %317
  %334 = load i64, i64* %14, align 8
  %335 = load i64, i64* @STATE_JISX0208, align 8
  %336 = icmp eq i64 %334, %335
  %337 = zext i1 %336 to i64
  %338 = select i1 %336, i32 2, i32 5
  %339 = load i32, i32* %10, align 4
  %340 = add nsw i32 %339, %338
  store i32 %340, i32* %10, align 4
  %341 = load i32, i32* %9, align 4
  %342 = load i32, i32* %10, align 4
  %343 = icmp slt i32 %341, %342
  br i1 %343, label %344, label %346

344:                                              ; preds = %333
  %345 = load i32, i32* @RET_TOOSMALL, align 4
  store i32 %345, i32* %5, align 4
  br label %548

346:                                              ; preds = %333
  %347 = load i64, i64* %14, align 8
  %348 = load i64, i64* @STATE_JISX0208, align 8
  %349 = icmp ne i64 %347, %348
  br i1 %349, label %350, label %361

350:                                              ; preds = %346
  %351 = load i8, i8* @ESC, align 1
  %352 = load i8*, i8** %7, align 8
  %353 = getelementptr inbounds i8, i8* %352, i64 0
  store i8 %351, i8* %353, align 1
  %354 = load i8*, i8** %7, align 8
  %355 = getelementptr inbounds i8, i8* %354, i64 1
  store i8 36, i8* %355, align 1
  %356 = load i8*, i8** %7, align 8
  %357 = getelementptr inbounds i8, i8* %356, i64 2
  store i8 66, i8* %357, align 1
  %358 = load i8*, i8** %7, align 8
  %359 = getelementptr inbounds i8, i8* %358, i64 3
  store i8* %359, i8** %7, align 8
  %360 = load i64, i64* @STATE_JISX0208, align 8
  store i64 %360, i64* %14, align 8
  br label %361

361:                                              ; preds = %350, %346
  %362 = getelementptr inbounds [2 x i8], [2 x i8]* %11, i64 0, i64 0
  %363 = load i8, i8* %362, align 1
  %364 = load i8*, i8** %7, align 8
  %365 = getelementptr inbounds i8, i8* %364, i64 0
  store i8 %363, i8* %365, align 1
  %366 = getelementptr inbounds [2 x i8], [2 x i8]* %11, i64 0, i64 1
  %367 = load i8, i8* %366, align 1
  %368 = load i8*, i8** %7, align 8
  %369 = getelementptr inbounds i8, i8* %368, i64 1
  store i8 %367, i8* %369, align 1
  %370 = load i32, i32* @COMBINE_STATE_NO_LASTTWO, align 4
  %371 = load i64, i64* %14, align 8
  %372 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %373 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %372, i32 0, i32 0
  store i64 %371, i64* %373, align 8
  %374 = load i32, i32* %10, align 4
  store i32 %374, i32* %5, align 4
  br label %548

375:                                              ; preds = %312, %307
  br label %376

376:                                              ; preds = %375, %292
  %377 = load i16, i16* %12, align 2
  %378 = zext i16 %377 to i32
  %379 = icmp ne i32 %378, 0
  br i1 %379, label %380, label %486

380:                                              ; preds = %376
  %381 = load i16, i16* %12, align 2
  %382 = zext i16 %381 to i32
  %383 = and i32 %382, 32768
  %384 = icmp ne i32 %383, 0
  br i1 %384, label %385, label %411

385:                                              ; preds = %380
  %386 = load i64, i64* %14, align 8
  %387 = load i64, i64* @STATE_JISX02132, align 8
  %388 = icmp ne i64 %386, %387
  br i1 %388, label %389, label %410

389:                                              ; preds = %385
  %390 = load i32, i32* %10, align 4
  %391 = add nsw i32 %390, 4
  store i32 %391, i32* %10, align 4
  %392 = load i32, i32* %9, align 4
  %393 = load i32, i32* %10, align 4
  %394 = icmp slt i32 %392, %393
  br i1 %394, label %395, label %397

395:                                              ; preds = %389
  %396 = load i32, i32* @RET_TOOSMALL, align 4
  store i32 %396, i32* %5, align 4
  br label %548

397:                                              ; preds = %389
  %398 = load i8, i8* @ESC, align 1
  %399 = load i8*, i8** %7, align 8
  %400 = getelementptr inbounds i8, i8* %399, i64 0
  store i8 %398, i8* %400, align 1
  %401 = load i8*, i8** %7, align 8
  %402 = getelementptr inbounds i8, i8* %401, i64 1
  store i8 36, i8* %402, align 1
  %403 = load i8*, i8** %7, align 8
  %404 = getelementptr inbounds i8, i8* %403, i64 2
  store i8 40, i8* %404, align 1
  %405 = load i8*, i8** %7, align 8
  %406 = getelementptr inbounds i8, i8* %405, i64 3
  store i8 80, i8* %406, align 1
  %407 = load i8*, i8** %7, align 8
  %408 = getelementptr inbounds i8, i8* %407, i64 4
  store i8* %408, i8** %7, align 8
  %409 = load i64, i64* @STATE_JISX02132, align 8
  store i64 %409, i64* %14, align 8
  br label %410

410:                                              ; preds = %397, %385
  br label %437

411:                                              ; preds = %380
  %412 = load i64, i64* %14, align 8
  %413 = load i64, i64* @STATE_JISX02131, align 8
  %414 = icmp ne i64 %412, %413
  br i1 %414, label %415, label %436

415:                                              ; preds = %411
  %416 = load i32, i32* %10, align 4
  %417 = add nsw i32 %416, 4
  store i32 %417, i32* %10, align 4
  %418 = load i32, i32* %9, align 4
  %419 = load i32, i32* %10, align 4
  %420 = icmp slt i32 %418, %419
  br i1 %420, label %421, label %423

421:                                              ; preds = %415
  %422 = load i32, i32* @RET_TOOSMALL, align 4
  store i32 %422, i32* %5, align 4
  br label %548

423:                                              ; preds = %415
  %424 = load i8, i8* @ESC, align 1
  %425 = load i8*, i8** %7, align 8
  %426 = getelementptr inbounds i8, i8* %425, i64 0
  store i8 %424, i8* %426, align 1
  %427 = load i8*, i8** %7, align 8
  %428 = getelementptr inbounds i8, i8* %427, i64 1
  store i8 36, i8* %428, align 1
  %429 = load i8*, i8** %7, align 8
  %430 = getelementptr inbounds i8, i8* %429, i64 2
  store i8 40, i8* %430, align 1
  %431 = load i8*, i8** %7, align 8
  %432 = getelementptr inbounds i8, i8* %431, i64 3
  store i8 81, i8* %432, align 1
  %433 = load i8*, i8** %7, align 8
  %434 = getelementptr inbounds i8, i8* %433, i64 4
  store i8* %434, i8** %7, align 8
  %435 = load i64, i64* @STATE_JISX02131, align 8
  store i64 %435, i64* %14, align 8
  br label %436

436:                                              ; preds = %423, %411
  br label %437

437:                                              ; preds = %436, %410
  %438 = load i16, i16* %12, align 2
  %439 = zext i16 %438 to i32
  %440 = and i32 %439, 128
  %441 = icmp ne i32 %440, 0
  br i1 %441, label %442, label %459

442:                                              ; preds = %437
  %443 = load i16, i16* %12, align 2
  %444 = zext i16 %443 to i32
  %445 = and i32 %444, 32768
  %446 = icmp ne i32 %445, 0
  br i1 %446, label %447, label %449

447:                                              ; preds = %442
  %448 = call i32 (...) @abort() #3
  unreachable

449:                                              ; preds = %442
  %450 = load i64, i64* %14, align 8
  store i64 %450, i64* @prevstate, align 8
  %451 = load i16, i16* %12, align 2
  %452 = zext i16 %451 to i32
  %453 = and i32 %452, 32639
  store i32 %453, i32* @lasttwo, align 4
  %454 = load i32, i32* @COMBINE_STATE, align 4
  %455 = load i64, i64* %14, align 8
  %456 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %457 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %456, i32 0, i32 0
  store i64 %455, i64* %457, align 8
  %458 = load i32, i32* %10, align 4
  store i32 %458, i32* %5, align 4
  br label %548

459:                                              ; preds = %437
  %460 = load i32, i32* %10, align 4
  %461 = add nsw i32 %460, 2
  store i32 %461, i32* %10, align 4
  %462 = load i32, i32* %9, align 4
  %463 = load i32, i32* %10, align 4
  %464 = icmp slt i32 %462, %463
  br i1 %464, label %465, label %467

465:                                              ; preds = %459
  %466 = load i32, i32* @RET_TOOSMALL, align 4
  store i32 %466, i32* %5, align 4
  br label %548

467:                                              ; preds = %459
  %468 = load i16, i16* %12, align 2
  %469 = zext i16 %468 to i32
  %470 = ashr i32 %469, 8
  %471 = and i32 %470, 127
  %472 = trunc i32 %471 to i8
  %473 = load i8*, i8** %7, align 8
  %474 = getelementptr inbounds i8, i8* %473, i64 0
  store i8 %472, i8* %474, align 1
  %475 = load i16, i16* %12, align 2
  %476 = zext i16 %475 to i32
  %477 = and i32 %476, 127
  %478 = trunc i32 %477 to i8
  %479 = load i8*, i8** %7, align 8
  %480 = getelementptr inbounds i8, i8* %479, i64 1
  store i8 %478, i8* %480, align 1
  %481 = load i32, i32* @COMBINE_STATE_NO_LASTTWO, align 4
  %482 = load i64, i64* %14, align 8
  %483 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %484 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %483, i32 0, i32 0
  store i64 %482, i64* %484, align 8
  %485 = load i32, i32* %10, align 4
  store i32 %485, i32* %5, align 4
  br label %548

486:                                              ; preds = %376
  %487 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %488 = getelementptr inbounds [2 x i8], [2 x i8]* %11, i64 0, i64 0
  %489 = load i32, i32* %8, align 4
  %490 = call i32 @jisx0201_wctomb(%struct.TYPE_7__* %487, i8* %488, i32 %489, i32 1)
  store i32 %490, i32* %13, align 4
  %491 = load i32, i32* %13, align 4
  %492 = load i32, i32* @RET_ILUNI, align 4
  %493 = icmp ne i32 %491, %492
  br i1 %493, label %494, label %546

494:                                              ; preds = %486
  %495 = load i32, i32* %13, align 4
  %496 = icmp ne i32 %495, 1
  br i1 %496, label %497, label %499

497:                                              ; preds = %494
  %498 = call i32 (...) @abort() #3
  unreachable

499:                                              ; preds = %494
  %500 = getelementptr inbounds [2 x i8], [2 x i8]* %11, i64 0, i64 0
  %501 = load i8, i8* %500, align 1
  %502 = zext i8 %501 to i32
  %503 = icmp sge i32 %502, 128
  br i1 %503, label %504, label %545

504:                                              ; preds = %499
  %505 = load i64, i64* %14, align 8
  %506 = load i64, i64* @STATE_JISX0201KATAKANA, align 8
  %507 = icmp eq i64 %505, %506
  %508 = zext i1 %507 to i64
  %509 = select i1 %507, i32 1, i32 4
  %510 = load i32, i32* %10, align 4
  %511 = add nsw i32 %510, %509
  store i32 %511, i32* %10, align 4
  %512 = load i32, i32* %9, align 4
  %513 = load i32, i32* %10, align 4
  %514 = icmp slt i32 %512, %513
  br i1 %514, label %515, label %517

515:                                              ; preds = %504
  %516 = load i32, i32* @RET_TOOSMALL, align 4
  store i32 %516, i32* %5, align 4
  br label %548

517:                                              ; preds = %504
  %518 = load i64, i64* %14, align 8
  %519 = load i64, i64* @STATE_JISX0201KATAKANA, align 8
  %520 = icmp ne i64 %518, %519
  br i1 %520, label %521, label %532

521:                                              ; preds = %517
  %522 = load i8, i8* @ESC, align 1
  %523 = load i8*, i8** %7, align 8
  %524 = getelementptr inbounds i8, i8* %523, i64 0
  store i8 %522, i8* %524, align 1
  %525 = load i8*, i8** %7, align 8
  %526 = getelementptr inbounds i8, i8* %525, i64 1
  store i8 40, i8* %526, align 1
  %527 = load i8*, i8** %7, align 8
  %528 = getelementptr inbounds i8, i8* %527, i64 2
  store i8 73, i8* %528, align 1
  %529 = load i8*, i8** %7, align 8
  %530 = getelementptr inbounds i8, i8* %529, i64 3
  store i8* %530, i8** %7, align 8
  %531 = load i64, i64* @STATE_JISX0201KATAKANA, align 8
  store i64 %531, i64* %14, align 8
  br label %532

532:                                              ; preds = %521, %517
  %533 = getelementptr inbounds [2 x i8], [2 x i8]* %11, i64 0, i64 0
  %534 = load i8, i8* %533, align 1
  %535 = zext i8 %534 to i32
  %536 = sub nsw i32 %535, 128
  %537 = trunc i32 %536 to i8
  %538 = load i8*, i8** %7, align 8
  %539 = getelementptr inbounds i8, i8* %538, i64 0
  store i8 %537, i8* %539, align 1
  %540 = load i32, i32* @COMBINE_STATE_NO_LASTTWO, align 4
  %541 = load i64, i64* %14, align 8
  %542 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %543 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %542, i32 0, i32 0
  store i64 %541, i64* %543, align 8
  %544 = load i32, i32* %10, align 4
  store i32 %544, i32* %5, align 4
  br label %548

545:                                              ; preds = %499
  br label %546

546:                                              ; preds = %545, %486
  %547 = load i32, i32* @RET_ILUNI, align 4
  store i32 %547, i32* %5, align 4
  br label %548

548:                                              ; preds = %546, %532, %515, %467, %465, %449, %421, %395, %361, %344, %322, %281, %264, %224, %207, %142, %108, %89
  %549 = load i32, i32* %5, align 4
  ret i32 %549
}

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #1

declare dso_local i32 @ascii_wctomb(%struct.TYPE_7__*, i8*, i32, i32) #2

declare dso_local i32 @jisx0201_wctomb(%struct.TYPE_7__*, i8*, i32, i32) #2

declare dso_local zeroext i16 @ucs4_to_jisx0213(i32) #2

declare dso_local i32 @jisx0208_wctomb(%struct.TYPE_7__*, i8*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
