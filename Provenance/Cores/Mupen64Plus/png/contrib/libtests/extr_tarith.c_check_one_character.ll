; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/libtests/extr_tarith.c_check_one_character.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/libtests/extr_tarith.c_check_one_character.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i8*, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i64, i32, i32, i64, i32, i32, i32, i64, i32 }

@exponent = common dso_local global i64 0, align 8
@start = common dso_local global i64 0, align 8
@hexdigits = common dso_local global i8** null, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"%s: read beyond end of string (%lu)\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"%s: negative when it is not\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"%s: zero when it is not\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"%s: positive when it is not\0A\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"%s: digit '%c' not accepted\0A\00", align 1
@.str.6 = private unnamed_addr constant [43 x i8] c"%s: saw a digit (%c) but number not valid\0A\00", align 1
@state_characters = common dso_local global %struct.TYPE_12__* null, align 8
@fraction = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [33 x i8] c"%s: character '%c' not accepted\0A\00", align 1
@.str.8 = private unnamed_addr constant [43 x i8] c"%s: saw a non-digit (%c) but number valid\0A\00", align 1
@.str.9 = private unnamed_addr constant [29 x i8] c"checkfp: internal error (1)\0A\00", align 1
@.str.10 = private unnamed_addr constant [38 x i8] c"%s: character '%c' [0x%.2x] accepted\0A\00", align 1
@.str.11 = private unnamed_addr constant [53 x i8] c"%s: character '%c' [0x%.2x] changed number validity\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, %struct.TYPE_10__*, i32)* @check_one_character to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_one_character(%struct.TYPE_11__* %0, %struct.TYPE_10__* byval(%struct.TYPE_10__) align 8 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %11 = load i32, i32* %6, align 4
  %12 = trunc i32 %11 to i8
  store i8 %12, i8* %8, align 1
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1, i32 0, i32 8
  %14 = call i32 @png_check_fp_number(i8* %8, i32 1, i32* %13, i32* %7)
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp eq i32 %15, 1
  %17 = zext i1 %16 to i32
  store i32 %17, i32* %10, align 4
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @exponent, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %31

22:                                               ; preds = %3
  %23 = load i32, i32* %6, align 4
  %24 = call i64 @isdigit(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %22
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, 48
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1, i32 0, i32 7
  store i64 0, i64* %30, align 8
  br label %31

31:                                               ; preds = %29, %26, %22, %3
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @start, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %45

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %36
  %41 = load i32, i32* %6, align 4
  %42 = icmp eq i32 %41, 45
  br i1 %42, label %43, label %45

43:                                               ; preds = %40
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1, i32 0, i32 2
  store i32 1, i32* %44, align 4
  br label %45

45:                                               ; preds = %43, %40, %36, %31
  %46 = load i32, i32* %6, align 4
  %47 = call i64 @isprint(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %59

49:                                               ; preds = %45
  %50 = load i32, i32* %6, align 4
  %51 = trunc i32 %50 to i8
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1, i32 0, i32 3
  %56 = load i64, i64* %55, align 8
  %57 = add i64 %56, 1
  store i64 %57, i64* %55, align 8
  %58 = getelementptr inbounds i8, i8* %54, i64 %56
  store i8 %51, i8* %58, align 1
  br label %103

59:                                               ; preds = %45
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1, i32 0, i32 3
  %64 = load i64, i64* %63, align 8
  %65 = add i64 %64, 1
  store i64 %65, i64* %63, align 8
  %66 = getelementptr inbounds i8, i8* %62, i64 %64
  store i8 60, i8* %66, align 1
  %67 = load i8**, i8*** @hexdigits, align 8
  %68 = load i32, i32* %6, align 4
  %69 = ashr i32 %68, 4
  %70 = and i32 %69, 15
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i8*, i8** %67, i64 %71
  %73 = load i8*, i8** %72, align 8
  %74 = ptrtoint i8* %73 to i8
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 0
  %77 = load i8*, i8** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1, i32 0, i32 3
  %79 = load i64, i64* %78, align 8
  %80 = add i64 %79, 1
  store i64 %80, i64* %78, align 8
  %81 = getelementptr inbounds i8, i8* %77, i64 %79
  store i8 %74, i8* %81, align 1
  %82 = load i8**, i8*** @hexdigits, align 8
  %83 = load i32, i32* %6, align 4
  %84 = and i32 %83, 15
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i8*, i8** %82, i64 %85
  %87 = load i8*, i8** %86, align 8
  %88 = ptrtoint i8* %87 to i8
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 0
  %91 = load i8*, i8** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1, i32 0, i32 3
  %93 = load i64, i64* %92, align 8
  %94 = add i64 %93, 1
  store i64 %94, i64* %92, align 8
  %95 = getelementptr inbounds i8, i8* %91, i64 %93
  store i8 %88, i8* %95, align 1
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 0
  %98 = load i8*, i8** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1, i32 0, i32 3
  %100 = load i64, i64* %99, align 8
  %101 = add i64 %100, 1
  store i64 %101, i64* %99, align 8
  %102 = getelementptr inbounds i8, i8* %98, i64 %100
  store i8 62, i8* %102, align 1
  br label %103

103:                                              ; preds = %59, %49
  %104 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 0
  %106 = load i8*, i8** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1, i32 0, i32 3
  %108 = load i64, i64* %107, align 8
  %109 = getelementptr inbounds i8, i8* %106, i64 %108
  store i8 0, i8* %109, align 1
  %110 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = icmp sgt i32 %112, 1
  br i1 %113, label %114, label %120

114:                                              ; preds = %103
  %115 = load i32, i32* @stderr, align 4
  %116 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i32 0, i32 0
  %118 = load i8*, i8** %117, align 8
  %119 = call i32 (i32, i8*, ...) @fprintf(i32 %115, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %118)
  br label %120

120:                                              ; preds = %114, %103
  %121 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %122, align 4
  %125 = icmp eq i32 %124, 1000000
  br i1 %125, label %126, label %141

126:                                              ; preds = %120
  %127 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  %130 = icmp eq i32 %129, 1
  br i1 %130, label %131, label %134

131:                                              ; preds = %126
  %132 = load i32, i32* @stderr, align 4
  %133 = call i32 @fputc(i8 signext 46, i32 %132)
  br label %134

134:                                              ; preds = %131, %126
  %135 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %135, i32 0, i32 2
  store i32 0, i32* %136, align 4
  %137 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %137, i32 0, i32 6
  %139 = load i32, i32* %138, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %138, align 4
  br label %141

141:                                              ; preds = %134, %120
  %142 = load i32, i32* %9, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %149, label %144

144:                                              ; preds = %141
  %145 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %146 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %145, i32 0, i32 5
  %147 = load i32, i32* %146, align 8
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %146, align 8
  br label %149

149:                                              ; preds = %144, %141
  %150 = load i32, i32* %10, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %157, label %152

152:                                              ; preds = %149
  %153 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %154 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %153, i32 0, i32 4
  %155 = load i32, i32* %154, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %154, align 4
  br label %157

157:                                              ; preds = %152, %149
  %158 = load i32, i32* %7, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %171

160:                                              ; preds = %157
  %161 = load i32, i32* %7, align 4
  %162 = icmp ne i32 %161, 1
  br i1 %162, label %163, label %171

163:                                              ; preds = %160
  %164 = load i32, i32* @stderr, align 4
  %165 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %166 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %165, i32 0, i32 0
  %167 = load i8*, i8** %166, align 8
  %168 = load i32, i32* %7, align 4
  %169 = sext i32 %168 to i64
  %170 = call i32 (i32, i8*, ...) @fprintf(i32 %164, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i8* %167, i64 %169)
  store i32 0, i32* %4, align 4
  br label %438

171:                                              ; preds = %160, %157
  %172 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1, i32 0, i32 8
  %173 = load i32, i32* %172, align 8
  %174 = call i32 @PNG_FP_IS_NEGATIVE(i32 %173)
  %175 = load i32, i32* %9, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %185

177:                                              ; preds = %171
  %178 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1, i32 0, i32 7
  %179 = load i64, i64* %178, align 8
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %185, label %181

181:                                              ; preds = %177
  %182 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1, i32 0, i32 2
  %183 = load i32, i32* %182, align 4
  %184 = icmp ne i32 %183, 0
  br label %185

185:                                              ; preds = %181, %177, %171
  %186 = phi i1 [ false, %177 ], [ false, %171 ], [ %184, %181 ]
  %187 = zext i1 %186 to i32
  %188 = icmp ne i32 %174, %187
  br i1 %188, label %189, label %195

189:                                              ; preds = %185
  %190 = load i32, i32* @stderr, align 4
  %191 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %192 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %191, i32 0, i32 0
  %193 = load i8*, i8** %192, align 8
  %194 = call i32 (i32, i8*, ...) @fprintf(i32 %190, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i8* %193)
  store i32 0, i32* %4, align 4
  br label %438

195:                                              ; preds = %185
  %196 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1, i32 0, i32 8
  %197 = load i32, i32* %196, align 8
  %198 = call i32 @PNG_FP_IS_ZERO(i32 %197)
  %199 = load i32, i32* %9, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %205

201:                                              ; preds = %195
  %202 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1, i32 0, i32 7
  %203 = load i64, i64* %202, align 8
  %204 = icmp ne i64 %203, 0
  br label %205

205:                                              ; preds = %201, %195
  %206 = phi i1 [ false, %195 ], [ %204, %201 ]
  %207 = zext i1 %206 to i32
  %208 = icmp ne i32 %198, %207
  br i1 %208, label %209, label %215

209:                                              ; preds = %205
  %210 = load i32, i32* @stderr, align 4
  %211 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %212 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %211, i32 0, i32 0
  %213 = load i8*, i8** %212, align 8
  %214 = call i32 (i32, i8*, ...) @fprintf(i32 %210, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i8* %213)
  store i32 0, i32* %4, align 4
  br label %438

215:                                              ; preds = %205
  %216 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1, i32 0, i32 8
  %217 = load i32, i32* %216, align 8
  %218 = call i32 @PNG_FP_IS_POSITIVE(i32 %217)
  %219 = load i32, i32* %9, align 4
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %230

221:                                              ; preds = %215
  %222 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1, i32 0, i32 7
  %223 = load i64, i64* %222, align 8
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %230, label %225

225:                                              ; preds = %221
  %226 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1, i32 0, i32 2
  %227 = load i32, i32* %226, align 4
  %228 = icmp ne i32 %227, 0
  %229 = xor i1 %228, true
  br label %230

230:                                              ; preds = %225, %221, %215
  %231 = phi i1 [ false, %221 ], [ false, %215 ], [ %229, %225 ]
  %232 = zext i1 %231 to i32
  %233 = icmp ne i32 %218, %232
  br i1 %233, label %234, label %240

234:                                              ; preds = %230
  %235 = load i32, i32* @stderr, align 4
  %236 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %237 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %236, i32 0, i32 0
  %238 = load i8*, i8** %237, align 8
  %239 = call i32 (i32, i8*, ...) @fprintf(i32 %235, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i8* %238)
  store i32 0, i32* %4, align 4
  br label %438

240:                                              ; preds = %230
  %241 = load i32, i32* %6, align 4
  %242 = call i64 @isdigit(i32 %241)
  %243 = icmp ne i64 %242, 0
  br i1 %243, label %244, label %285

244:                                              ; preds = %240
  %245 = load i32, i32* %10, align 4
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %254, label %247

247:                                              ; preds = %244
  %248 = load i32, i32* @stderr, align 4
  %249 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %250 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %249, i32 0, i32 0
  %251 = load i8*, i8** %250, align 8
  %252 = load i32, i32* %6, align 4
  %253 = call i32 (i32, i8*, ...) @fprintf(i32 %248, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i8* %251, i32 %252)
  store i32 0, i32* %4, align 4
  br label %438

254:                                              ; preds = %244
  %255 = load i32, i32* %9, align 4
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %264, label %257

257:                                              ; preds = %254
  %258 = load i32, i32* @stderr, align 4
  %259 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %260 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %259, i32 0, i32 0
  %261 = load i8*, i8** %260, align 8
  %262 = load i32, i32* %6, align 4
  %263 = call i32 (i32, i8*, ...) @fprintf(i32 %258, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i64 0, i64 0), i8* %261, i32 %262)
  store i32 0, i32* %4, align 4
  br label %438

264:                                              ; preds = %254
  %265 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1, i32 0, i32 4
  %266 = load i32, i32* %265, align 8
  %267 = add nsw i32 %266, 1
  store i32 %267, i32* %265, align 8
  %268 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1, i32 0, i32 1
  store i32 0, i32* %268, align 8
  %269 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1, i32 0, i32 5
  store i32 1, i32* %269, align 4
  %270 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1, i32 0, i32 4
  %271 = load i32, i32* %270, align 8
  %272 = icmp slt i32 %271, 1
  br i1 %272, label %273, label %276

273:                                              ; preds = %264
  %274 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %275 = call i32 @check_all_characters(%struct.TYPE_11__* %274, %struct.TYPE_10__* byval(%struct.TYPE_10__) align 8 %1)
  store i32 %275, i32* %4, align 4
  br label %438

276:                                              ; preds = %264
  %277 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %278 = load %struct.TYPE_12__*, %struct.TYPE_12__** @state_characters, align 8
  %279 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1, i32 0, i32 0
  %280 = load i64, i64* %279, align 8
  %281 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %278, i64 %280
  %282 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %281, i32 0, i32 0
  %283 = load i32, i32* %282, align 4
  %284 = call i32 @check_some_characters(%struct.TYPE_11__* %277, %struct.TYPE_10__* byval(%struct.TYPE_10__) align 8 %1, i32 %283)
  store i32 %284, i32* %4, align 4
  br label %438

285:                                              ; preds = %240
  %286 = load i32, i32* %6, align 4
  %287 = icmp eq i32 %286, 43
  br i1 %287, label %291, label %288

288:                                              ; preds = %285
  %289 = load i32, i32* %6, align 4
  %290 = icmp eq i32 %289, 45
  br i1 %290, label %291, label %300

291:                                              ; preds = %288, %285
  %292 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1, i32 0, i32 0
  %293 = load i64, i64* %292, align 8
  %294 = load i64, i64* @fraction, align 8
  %295 = icmp ne i64 %293, %294
  br i1 %295, label %296, label %300

296:                                              ; preds = %291
  %297 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1, i32 0, i32 1
  %298 = load i32, i32* %297, align 8
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %323, label %300

300:                                              ; preds = %296, %291, %288
  %301 = load i32, i32* %6, align 4
  %302 = icmp eq i32 %301, 46
  br i1 %302, label %303, label %308

303:                                              ; preds = %300
  %304 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1, i32 0, i32 0
  %305 = load i64, i64* %304, align 8
  %306 = load i64, i64* @start, align 8
  %307 = icmp eq i64 %305, %306
  br i1 %307, label %323, label %308

308:                                              ; preds = %303, %300
  %309 = load i32, i32* %6, align 4
  %310 = icmp eq i32 %309, 101
  br i1 %310, label %314, label %311

311:                                              ; preds = %308
  %312 = load i32, i32* %6, align 4
  %313 = icmp eq i32 %312, 69
  br i1 %313, label %314, label %411

314:                                              ; preds = %311, %308
  %315 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1, i32 0, i32 5
  %316 = load i32, i32* %315, align 4
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %318, label %411

318:                                              ; preds = %314
  %319 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1, i32 0, i32 0
  %320 = load i64, i64* %319, align 8
  %321 = load i64, i64* @exponent, align 8
  %322 = icmp ne i64 %320, %321
  br i1 %322, label %323, label %411

323:                                              ; preds = %318, %303, %296
  %324 = load i32, i32* %10, align 4
  %325 = icmp ne i32 %324, 0
  br i1 %325, label %333, label %326

326:                                              ; preds = %323
  %327 = load i32, i32* @stderr, align 4
  %328 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %329 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %328, i32 0, i32 0
  %330 = load i8*, i8** %329, align 8
  %331 = load i32, i32* %6, align 4
  %332 = call i32 (i32, i8*, ...) @fprintf(i32 %327, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0), i8* %330, i32 %331)
  store i32 0, i32* %4, align 4
  br label %438

333:                                              ; preds = %323
  %334 = load i32, i32* %9, align 4
  %335 = icmp ne i32 %334, 0
  br i1 %335, label %336, label %351

336:                                              ; preds = %333
  %337 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1, i32 0, i32 0
  %338 = load i64, i64* %337, align 8
  %339 = load i64, i64* @start, align 8
  %340 = icmp ne i64 %338, %339
  br i1 %340, label %344, label %341

341:                                              ; preds = %336
  %342 = load i32, i32* %6, align 4
  %343 = icmp ne i32 %342, 46
  br i1 %343, label %344, label %351

344:                                              ; preds = %341, %336
  %345 = load i32, i32* @stderr, align 4
  %346 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %347 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %346, i32 0, i32 0
  %348 = load i8*, i8** %347, align 8
  %349 = load i32, i32* %6, align 4
  %350 = call i32 (i32, i8*, ...) @fprintf(i32 %345, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.8, i64 0, i64 0), i8* %348, i32 %349)
  store i32 0, i32* %4, align 4
  br label %438

351:                                              ; preds = %341, %333
  %352 = load i32, i32* %9, align 4
  %353 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1, i32 0, i32 5
  store i32 %352, i32* %353, align 4
  %354 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1, i32 0, i32 0
  %355 = load i64, i64* %354, align 8
  %356 = load i64, i64* @start, align 8
  %357 = icmp eq i64 %355, %356
  br i1 %357, label %358, label %376

358:                                              ; preds = %351
  %359 = load i32, i32* %6, align 4
  %360 = icmp eq i32 %359, 46
  br i1 %360, label %361, label %376

361:                                              ; preds = %358
  %362 = load i64, i64* @fraction, align 8
  %363 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1, i32 0, i32 0
  store i64 %362, i64* %363, align 8
  %364 = load i32, i32* %9, align 4
  %365 = icmp ne i32 %364, 0
  %366 = xor i1 %365, true
  %367 = zext i1 %366 to i32
  %368 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1, i32 0, i32 1
  store i32 %367, i32* %368, align 8
  %369 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1, i32 0, i32 4
  store i32 0, i32* %369, align 8
  %370 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %371 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %370, i32 0, i32 3
  %372 = load i32, i32* %371, align 8
  %373 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1, i32 0, i32 6
  store i32 %372, i32* %373, align 8
  %374 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %375 = call i32 @check_all_characters(%struct.TYPE_11__* %374, %struct.TYPE_10__* byval(%struct.TYPE_10__) align 8 %1)
  store i32 %375, i32* %4, align 4
  br label %438

376:                                              ; preds = %358, %351
  %377 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1, i32 0, i32 0
  %378 = load i64, i64* %377, align 8
  %379 = load i64, i64* @exponent, align 8
  %380 = icmp ult i64 %378, %379
  br i1 %380, label %381, label %398

381:                                              ; preds = %376
  %382 = load i32, i32* %6, align 4
  %383 = icmp eq i32 %382, 101
  br i1 %383, label %387, label %384

384:                                              ; preds = %381
  %385 = load i32, i32* %6, align 4
  %386 = icmp eq i32 %385, 69
  br i1 %386, label %387, label %398

387:                                              ; preds = %384, %381
  %388 = load i64, i64* @exponent, align 8
  %389 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1, i32 0, i32 0
  store i64 %388, i64* %389, align 8
  %390 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1, i32 0, i32 1
  store i32 1, i32* %390, align 8
  %391 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1, i32 0, i32 4
  store i32 0, i32* %391, align 8
  %392 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %393 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %392, i32 0, i32 3
  %394 = load i32, i32* %393, align 8
  %395 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1, i32 0, i32 6
  store i32 %394, i32* %395, align 8
  %396 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %397 = call i32 @check_all_characters(%struct.TYPE_11__* %396, %struct.TYPE_10__* byval(%struct.TYPE_10__) align 8 %1)
  store i32 %397, i32* %4, align 4
  br label %438

398:                                              ; preds = %384, %376
  %399 = load i32, i32* %6, align 4
  %400 = icmp ne i32 %399, 45
  br i1 %400, label %401, label %407

401:                                              ; preds = %398
  %402 = load i32, i32* %6, align 4
  %403 = icmp ne i32 %402, 43
  br i1 %403, label %404, label %407

404:                                              ; preds = %401
  %405 = load i32, i32* @stderr, align 4
  %406 = call i32 (i32, i8*, ...) @fprintf(i32 %405, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %438

407:                                              ; preds = %401, %398
  %408 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1, i32 0, i32 1
  store i32 0, i32* %408, align 8
  %409 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %410 = call i32 @check_all_characters(%struct.TYPE_11__* %409, %struct.TYPE_10__* byval(%struct.TYPE_10__) align 8 %1)
  store i32 %410, i32* %4, align 4
  br label %438

411:                                              ; preds = %318, %314, %311
  %412 = load i32, i32* %10, align 4
  %413 = icmp ne i32 %412, 0
  br i1 %413, label %414, label %422

414:                                              ; preds = %411
  %415 = load i32, i32* @stderr, align 4
  %416 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %417 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %416, i32 0, i32 0
  %418 = load i8*, i8** %417, align 8
  %419 = load i32, i32* %6, align 4
  %420 = load i32, i32* %6, align 4
  %421 = call i32 (i32, i8*, ...) @fprintf(i32 %415, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.10, i64 0, i64 0), i8* %418, i32 %419, i32 %420)
  store i32 0, i32* %4, align 4
  br label %438

422:                                              ; preds = %411
  %423 = load i32, i32* %9, align 4
  %424 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1, i32 0, i32 5
  %425 = load i32, i32* %424, align 4
  %426 = icmp ne i32 %423, %425
  br i1 %426, label %427, label %435

427:                                              ; preds = %422
  %428 = load i32, i32* @stderr, align 4
  %429 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %430 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %429, i32 0, i32 0
  %431 = load i8*, i8** %430, align 8
  %432 = load i32, i32* %6, align 4
  %433 = load i32, i32* %6, align 4
  %434 = call i32 (i32, i8*, ...) @fprintf(i32 %428, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.11, i64 0, i64 0), i8* %431, i32 %432, i32 %433)
  store i32 0, i32* %4, align 4
  br label %438

435:                                              ; preds = %422
  br label %436

436:                                              ; preds = %435
  br label %437

437:                                              ; preds = %436
  store i32 1, i32* %4, align 4
  br label %438

438:                                              ; preds = %437, %427, %414, %407, %404, %387, %361, %344, %326, %276, %273, %257, %247, %234, %209, %189, %163
  %439 = load i32, i32* %4, align 4
  ret i32 %439
}

declare dso_local i32 @png_check_fp_number(i8*, i32, i32*, i32*) #1

declare dso_local i64 @isdigit(i32) #1

declare dso_local i64 @isprint(i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @fputc(i8 signext, i32) #1

declare dso_local i32 @PNG_FP_IS_NEGATIVE(i32) #1

declare dso_local i32 @PNG_FP_IS_ZERO(i32) #1

declare dso_local i32 @PNG_FP_IS_POSITIVE(i32) #1

declare dso_local i32 @check_all_characters(%struct.TYPE_11__*, %struct.TYPE_10__* byval(%struct.TYPE_10__) align 8) #1

declare dso_local i32 @check_some_characters(%struct.TYPE_11__*, %struct.TYPE_10__* byval(%struct.TYPE_10__) align 8, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
