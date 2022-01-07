; ModuleID = '/home/carl/AnghaBench/Atlas/lib/extr_lpeg.c_match.c'
source_filename = "/home/carl/AnghaBench/Atlas/lib/extr_lpeg.c_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i8* (i32, i8*, i8*, i8*)*, %struct.TYPE_19__, i32 }
%struct.TYPE_19__ = type { i32, i32, i32 }
%struct.TYPE_22__ = type { i8*, i32, i32, i32 }
%struct.TYPE_20__ = type { i8*, i32, %struct.TYPE_21__* }

@MAXBACK = common dso_local global i32 0, align 4
@IMAXCAPTURES = common dso_local global i32 0, align 4
@giveup = common dso_local global %struct.TYPE_21__ zeroinitializer, align 8
@Cclose = common dso_local global i32 0, align 4
@CHARSETINSTSIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"too many pending calls/choices\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"invalid position returned by match-time capture\00", align 1
@UCHAR_MAX = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [34 x i8] c"reference to %s outside a grammar\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*, i8*, i8*, i8*, %struct.TYPE_21__*, %struct.TYPE_22__*, i32)* @match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @match(i32* %0, i8* %1, i8* %2, i8* %3, %struct.TYPE_21__* %4, %struct.TYPE_22__* %5, i32 %6) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_21__*, align 8
  %14 = alloca %struct.TYPE_22__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.TYPE_20__*, align 8
  %19 = alloca %struct.TYPE_20__*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.TYPE_21__*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i8*, align 8
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i8*, align 8
  store i32* %0, i32** %9, align 8
  store i8* %1, i8** %10, align 8
  store i8* %2, i8** %11, align 8
  store i8* %3, i8** %12, align 8
  store %struct.TYPE_21__* %4, %struct.TYPE_21__** %13, align 8
  store %struct.TYPE_22__* %5, %struct.TYPE_22__** %14, align 8
  store i32 %6, i32* %15, align 4
  %38 = load i32, i32* @MAXBACK, align 4
  %39 = zext i32 %38 to i64
  %40 = call i8* @llvm.stacksave()
  store i8* %40, i8** %16, align 8
  %41 = alloca %struct.TYPE_20__, i64 %39, align 16
  store i64 %39, i64* %17, align 8
  %42 = load i32, i32* @MAXBACK, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %41, i64 %43
  store %struct.TYPE_20__* %44, %struct.TYPE_20__** %18, align 8
  store %struct.TYPE_20__* %41, %struct.TYPE_20__** %19, align 8
  %45 = load i32, i32* @IMAXCAPTURES, align 4
  store i32 %45, i32* %20, align 4
  store i32 0, i32* %21, align 4
  %46 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  store %struct.TYPE_21__* %46, %struct.TYPE_21__** %22, align 8
  %47 = load %struct.TYPE_20__*, %struct.TYPE_20__** %19, align 8
  %48 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %47, i32 0, i32 2
  store %struct.TYPE_21__* @giveup, %struct.TYPE_21__** %48, align 8
  %49 = load i8*, i8** %11, align 8
  %50 = load %struct.TYPE_20__*, %struct.TYPE_20__** %19, align 8
  %51 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %50, i32 0, i32 0
  store i8* %49, i8** %51, align 8
  %52 = load %struct.TYPE_20__*, %struct.TYPE_20__** %19, align 8
  %53 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %52, i32 0, i32 1
  store i32 0, i32* %53, align 8
  %54 = load %struct.TYPE_20__*, %struct.TYPE_20__** %19, align 8
  %55 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %54, i32 1
  store %struct.TYPE_20__* %55, %struct.TYPE_20__** %19, align 8
  br label %56

56:                                               ; preds = %773, %684, %647, %529, %493, %465, %443, %418, %389, %374, %365, %344, %318, %300, %269, %245, %218, %198, %171, %151, %122, %93, %7
  %57 = load %struct.TYPE_21__*, %struct.TYPE_21__** %22, align 8
  %58 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  switch i32 %60, label %789 [
    i32 146, label %61
    i32 141, label %79
    i32 136, label %84
    i32 156, label %101
    i32 132, label %123
    i32 153, label %152
    i32 131, label %172
    i32 135, label %199
    i32 130, label %219
    i32 128, label %246
    i32 129, label %270
    i32 134, label %301
    i32 133, label %323
    i32 142, label %349
    i32 140, label %374
    i32 152, label %382
    i32 154, label %411
    i32 149, label %434
    i32 137, label %456
    i32 155, label %484
    i32 144, label %508
    i32 145, label %515
    i32 150, label %536
    i32 151, label %650
    i32 148, label %712
    i32 147, label %712
    i32 138, label %718
    i32 143, label %724
    i32 139, label %776
  ]

61:                                               ; preds = %56
  %62 = load %struct.TYPE_20__*, %struct.TYPE_20__** %19, align 8
  %63 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %41, i64 1
  %64 = icmp eq %struct.TYPE_20__* %62, %63
  %65 = zext i1 %64 to i32
  %66 = call i32 @assert(i32 %65)
  %67 = load i32, i32* @Cclose, align 4
  %68 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %69 = load i32, i32* %21, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %71, i32 0, i32 2
  store i32 %67, i32* %72, align 4
  %73 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %74 = load i32, i32* %21, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %76, i32 0, i32 0
  store i8* null, i8** %77, align 8
  %78 = load i8*, i8** %11, align 8
  store i8* %78, i8** %8, align 8
  store i32 1, i32* %23, align 4
  br label %791

79:                                               ; preds = %56
  %80 = load %struct.TYPE_20__*, %struct.TYPE_20__** %19, align 8
  %81 = icmp eq %struct.TYPE_20__* %80, %41
  %82 = zext i1 %81 to i32
  %83 = call i32 @assert(i32 %82)
  store i8* null, i8** %8, align 8
  store i32 1, i32* %23, align 4
  br label %791

84:                                               ; preds = %56
  %85 = load %struct.TYPE_20__*, %struct.TYPE_20__** %19, align 8
  %86 = icmp ugt %struct.TYPE_20__* %85, %41
  br i1 %86, label %87, label %93

87:                                               ; preds = %84
  %88 = load %struct.TYPE_20__*, %struct.TYPE_20__** %19, align 8
  %89 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %88, i64 -1
  %90 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %89, i32 0, i32 0
  %91 = load i8*, i8** %90, align 8
  %92 = icmp eq i8* %91, null
  br label %93

93:                                               ; preds = %87, %84
  %94 = phi i1 [ false, %84 ], [ %92, %87 ]
  %95 = zext i1 %94 to i32
  %96 = call i32 @assert(i32 %95)
  %97 = load %struct.TYPE_20__*, %struct.TYPE_20__** %19, align 8
  %98 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %97, i32 -1
  store %struct.TYPE_20__* %98, %struct.TYPE_20__** %19, align 8
  %99 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %98, i32 0, i32 2
  %100 = load %struct.TYPE_21__*, %struct.TYPE_21__** %99, align 8
  store %struct.TYPE_21__* %100, %struct.TYPE_21__** %22, align 8
  br label %56

101:                                              ; preds = %56
  %102 = load %struct.TYPE_21__*, %struct.TYPE_21__** %22, align 8
  %103 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  store i32 %105, i32* %24, align 4
  %106 = load i32, i32* %24, align 4
  %107 = sext i32 %106 to i64
  %108 = load i8*, i8** %12, align 8
  %109 = load i8*, i8** %11, align 8
  %110 = ptrtoint i8* %108 to i64
  %111 = ptrtoint i8* %109 to i64
  %112 = sub i64 %110, %111
  %113 = icmp sgt i64 %107, %112
  br i1 %113, label %114, label %115

114:                                              ; preds = %101
  br label %516

115:                                              ; preds = %101
  %116 = load %struct.TYPE_21__*, %struct.TYPE_21__** %22, align 8
  %117 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %116, i32 1
  store %struct.TYPE_21__* %117, %struct.TYPE_21__** %22, align 8
  %118 = load i32, i32* %24, align 4
  %119 = load i8*, i8** %11, align 8
  %120 = sext i32 %118 to i64
  %121 = getelementptr inbounds i8, i8* %119, i64 %120
  store i8* %121, i8** %11, align 8
  br label %122

122:                                              ; preds = %115
  br label %56

123:                                              ; preds = %56
  %124 = load %struct.TYPE_21__*, %struct.TYPE_21__** %22, align 8
  %125 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  store i32 %127, i32* %25, align 4
  %128 = load i32, i32* %25, align 4
  %129 = sext i32 %128 to i64
  %130 = load i8*, i8** %12, align 8
  %131 = load i8*, i8** %11, align 8
  %132 = ptrtoint i8* %130 to i64
  %133 = ptrtoint i8* %131 to i64
  %134 = sub i64 %132, %133
  %135 = icmp sgt i64 %129, %134
  br i1 %135, label %136, label %144

136:                                              ; preds = %123
  %137 = load %struct.TYPE_21__*, %struct.TYPE_21__** %22, align 8
  %138 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.TYPE_21__*, %struct.TYPE_21__** %22, align 8
  %142 = sext i32 %140 to i64
  %143 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %141, i64 %142
  store %struct.TYPE_21__* %143, %struct.TYPE_21__** %22, align 8
  br label %151

144:                                              ; preds = %123
  %145 = load %struct.TYPE_21__*, %struct.TYPE_21__** %22, align 8
  %146 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %145, i32 1
  store %struct.TYPE_21__* %146, %struct.TYPE_21__** %22, align 8
  %147 = load i32, i32* %25, align 4
  %148 = load i8*, i8** %11, align 8
  %149 = sext i32 %147 to i64
  %150 = getelementptr inbounds i8, i8* %148, i64 %149
  store i8* %150, i8** %11, align 8
  br label %151

151:                                              ; preds = %144, %136
  br label %56

152:                                              ; preds = %56
  %153 = load i8*, i8** %11, align 8
  %154 = load i8, i8* %153, align 1
  %155 = sext i8 %154 to i32
  %156 = load %struct.TYPE_21__*, %struct.TYPE_21__** %22, align 8
  %157 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = icmp ne i32 %155, %159
  br i1 %160, label %165, label %161

161:                                              ; preds = %152
  %162 = load i8*, i8** %11, align 8
  %163 = load i8*, i8** %12, align 8
  %164 = icmp uge i8* %162, %163
  br i1 %164, label %165, label %166

165:                                              ; preds = %161, %152
  br label %516

166:                                              ; preds = %161
  %167 = load %struct.TYPE_21__*, %struct.TYPE_21__** %22, align 8
  %168 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %167, i32 1
  store %struct.TYPE_21__* %168, %struct.TYPE_21__** %22, align 8
  %169 = load i8*, i8** %11, align 8
  %170 = getelementptr inbounds i8, i8* %169, i32 1
  store i8* %170, i8** %11, align 8
  br label %171

171:                                              ; preds = %166
  br label %56

172:                                              ; preds = %56
  %173 = load i8*, i8** %11, align 8
  %174 = load i8, i8* %173, align 1
  %175 = sext i8 %174 to i32
  %176 = load %struct.TYPE_21__*, %struct.TYPE_21__** %22, align 8
  %177 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %176, i32 0, i32 1
  %178 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = icmp ne i32 %175, %179
  br i1 %180, label %185, label %181

181:                                              ; preds = %172
  %182 = load i8*, i8** %11, align 8
  %183 = load i8*, i8** %12, align 8
  %184 = icmp uge i8* %182, %183
  br i1 %184, label %185, label %193

185:                                              ; preds = %181, %172
  %186 = load %struct.TYPE_21__*, %struct.TYPE_21__** %22, align 8
  %187 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %186, i32 0, i32 1
  %188 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = load %struct.TYPE_21__*, %struct.TYPE_21__** %22, align 8
  %191 = sext i32 %189 to i64
  %192 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %190, i64 %191
  store %struct.TYPE_21__* %192, %struct.TYPE_21__** %22, align 8
  br label %198

193:                                              ; preds = %181
  %194 = load %struct.TYPE_21__*, %struct.TYPE_21__** %22, align 8
  %195 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %194, i32 1
  store %struct.TYPE_21__* %195, %struct.TYPE_21__** %22, align 8
  %196 = load i8*, i8** %11, align 8
  %197 = getelementptr inbounds i8, i8* %196, i32 1
  store i8* %197, i8** %11, align 8
  br label %198

198:                                              ; preds = %193, %185
  br label %56

199:                                              ; preds = %56
  %200 = load i8*, i8** %11, align 8
  %201 = load i8, i8* %200, align 1
  %202 = zext i8 %201 to i32
  store i32 %202, i32* %26, align 4
  %203 = load %struct.TYPE_21__*, %struct.TYPE_21__** %22, align 8
  %204 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %203, i64 1
  %205 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %204, i32 0, i32 2
  %206 = load i32, i32* %205, align 4
  %207 = load i32, i32* %26, align 4
  %208 = call i32 @testchar(i32 %206, i32 %207)
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %211, label %210

210:                                              ; preds = %199
  br label %516

211:                                              ; preds = %199
  %212 = load i32, i32* @CHARSETINSTSIZE, align 4
  %213 = load %struct.TYPE_21__*, %struct.TYPE_21__** %22, align 8
  %214 = sext i32 %212 to i64
  %215 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %213, i64 %214
  store %struct.TYPE_21__* %215, %struct.TYPE_21__** %22, align 8
  %216 = load i8*, i8** %11, align 8
  %217 = getelementptr inbounds i8, i8* %216, i32 1
  store i8* %217, i8** %11, align 8
  br label %218

218:                                              ; preds = %211
  br label %56

219:                                              ; preds = %56
  %220 = load i8*, i8** %11, align 8
  %221 = load i8, i8* %220, align 1
  %222 = zext i8 %221 to i32
  store i32 %222, i32* %27, align 4
  %223 = load %struct.TYPE_21__*, %struct.TYPE_21__** %22, align 8
  %224 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %223, i64 1
  %225 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %224, i32 0, i32 2
  %226 = load i32, i32* %225, align 4
  %227 = load i32, i32* %27, align 4
  %228 = call i32 @testchar(i32 %226, i32 %227)
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %238, label %230

230:                                              ; preds = %219
  %231 = load %struct.TYPE_21__*, %struct.TYPE_21__** %22, align 8
  %232 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %231, i32 0, i32 1
  %233 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %232, i32 0, i32 1
  %234 = load i32, i32* %233, align 4
  %235 = load %struct.TYPE_21__*, %struct.TYPE_21__** %22, align 8
  %236 = sext i32 %234 to i64
  %237 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %235, i64 %236
  store %struct.TYPE_21__* %237, %struct.TYPE_21__** %22, align 8
  br label %245

238:                                              ; preds = %219
  %239 = load i32, i32* @CHARSETINSTSIZE, align 4
  %240 = load %struct.TYPE_21__*, %struct.TYPE_21__** %22, align 8
  %241 = sext i32 %239 to i64
  %242 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %240, i64 %241
  store %struct.TYPE_21__* %242, %struct.TYPE_21__** %22, align 8
  %243 = load i8*, i8** %11, align 8
  %244 = getelementptr inbounds i8, i8* %243, i32 1
  store i8* %244, i8** %11, align 8
  br label %245

245:                                              ; preds = %238, %230
  br label %56

246:                                              ; preds = %56
  %247 = load i8*, i8** %11, align 8
  %248 = load i8, i8* %247, align 1
  %249 = zext i8 %248 to i32
  store i32 %249, i32* %28, align 4
  %250 = load %struct.TYPE_21__*, %struct.TYPE_21__** %22, align 8
  %251 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %250, i64 1
  %252 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %251, i32 0, i32 2
  %253 = load i32, i32* %252, align 4
  %254 = load i32, i32* %28, align 4
  %255 = call i32 @testchar(i32 %253, i32 %254)
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %261

257:                                              ; preds = %246
  %258 = load i8*, i8** %11, align 8
  %259 = load i8*, i8** %12, align 8
  %260 = icmp uge i8* %258, %259
  br i1 %260, label %261, label %262

261:                                              ; preds = %257, %246
  br label %516

262:                                              ; preds = %257
  %263 = load i32, i32* @CHARSETINSTSIZE, align 4
  %264 = load %struct.TYPE_21__*, %struct.TYPE_21__** %22, align 8
  %265 = sext i32 %263 to i64
  %266 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %264, i64 %265
  store %struct.TYPE_21__* %266, %struct.TYPE_21__** %22, align 8
  %267 = load i8*, i8** %11, align 8
  %268 = getelementptr inbounds i8, i8* %267, i32 1
  store i8* %268, i8** %11, align 8
  br label %269

269:                                              ; preds = %262
  br label %56

270:                                              ; preds = %56
  %271 = load i8*, i8** %11, align 8
  %272 = load i8, i8* %271, align 1
  %273 = zext i8 %272 to i32
  store i32 %273, i32* %29, align 4
  %274 = load %struct.TYPE_21__*, %struct.TYPE_21__** %22, align 8
  %275 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %274, i64 1
  %276 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %275, i32 0, i32 2
  %277 = load i32, i32* %276, align 4
  %278 = load i32, i32* %29, align 4
  %279 = call i32 @testchar(i32 %277, i32 %278)
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %281, label %285

281:                                              ; preds = %270
  %282 = load i8*, i8** %11, align 8
  %283 = load i8*, i8** %12, align 8
  %284 = icmp uge i8* %282, %283
  br i1 %284, label %285, label %293

285:                                              ; preds = %281, %270
  %286 = load %struct.TYPE_21__*, %struct.TYPE_21__** %22, align 8
  %287 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %286, i32 0, i32 1
  %288 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %287, i32 0, i32 1
  %289 = load i32, i32* %288, align 4
  %290 = load %struct.TYPE_21__*, %struct.TYPE_21__** %22, align 8
  %291 = sext i32 %289 to i64
  %292 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %290, i64 %291
  store %struct.TYPE_21__* %292, %struct.TYPE_21__** %22, align 8
  br label %300

293:                                              ; preds = %281
  %294 = load i32, i32* @CHARSETINSTSIZE, align 4
  %295 = load %struct.TYPE_21__*, %struct.TYPE_21__** %22, align 8
  %296 = sext i32 %294 to i64
  %297 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %295, i64 %296
  store %struct.TYPE_21__* %297, %struct.TYPE_21__** %22, align 8
  %298 = load i8*, i8** %11, align 8
  %299 = getelementptr inbounds i8, i8* %298, i32 1
  store i8* %299, i8** %11, align 8
  br label %300

300:                                              ; preds = %293, %285
  br label %56

301:                                              ; preds = %56
  br label %302

302:                                              ; preds = %315, %301
  %303 = load i8*, i8** %11, align 8
  %304 = load i8, i8* %303, align 1
  %305 = zext i8 %304 to i32
  store i32 %305, i32* %30, align 4
  %306 = load %struct.TYPE_21__*, %struct.TYPE_21__** %22, align 8
  %307 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %306, i64 1
  %308 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %307, i32 0, i32 2
  %309 = load i32, i32* %308, align 4
  %310 = load i32, i32* %30, align 4
  %311 = call i32 @testchar(i32 %309, i32 %310)
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %314, label %313

313:                                              ; preds = %302
  br label %318

314:                                              ; preds = %302
  br label %315

315:                                              ; preds = %314
  %316 = load i8*, i8** %11, align 8
  %317 = getelementptr inbounds i8, i8* %316, i32 1
  store i8* %317, i8** %11, align 8
  br label %302

318:                                              ; preds = %313
  %319 = load i32, i32* @CHARSETINSTSIZE, align 4
  %320 = load %struct.TYPE_21__*, %struct.TYPE_21__** %22, align 8
  %321 = sext i32 %319 to i64
  %322 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %320, i64 %321
  store %struct.TYPE_21__* %322, %struct.TYPE_21__** %22, align 8
  br label %56

323:                                              ; preds = %56
  br label %324

324:                                              ; preds = %341, %323
  %325 = load i8*, i8** %11, align 8
  %326 = load i8*, i8** %12, align 8
  %327 = icmp ult i8* %325, %326
  br i1 %327, label %328, label %344

328:                                              ; preds = %324
  %329 = load i8*, i8** %11, align 8
  %330 = load i8, i8* %329, align 1
  %331 = zext i8 %330 to i32
  store i32 %331, i32* %31, align 4
  %332 = load %struct.TYPE_21__*, %struct.TYPE_21__** %22, align 8
  %333 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %332, i64 1
  %334 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %333, i32 0, i32 2
  %335 = load i32, i32* %334, align 4
  %336 = load i32, i32* %31, align 4
  %337 = call i32 @testchar(i32 %335, i32 %336)
  %338 = icmp ne i32 %337, 0
  br i1 %338, label %340, label %339

339:                                              ; preds = %328
  br label %344

340:                                              ; preds = %328
  br label %341

341:                                              ; preds = %340
  %342 = load i8*, i8** %11, align 8
  %343 = getelementptr inbounds i8, i8* %342, i32 1
  store i8* %343, i8** %11, align 8
  br label %324

344:                                              ; preds = %339, %324
  %345 = load i32, i32* @CHARSETINSTSIZE, align 4
  %346 = load %struct.TYPE_21__*, %struct.TYPE_21__** %22, align 8
  %347 = sext i32 %345 to i64
  %348 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %346, i64 %347
  store %struct.TYPE_21__* %348, %struct.TYPE_21__** %22, align 8
  br label %56

349:                                              ; preds = %56
  %350 = load %struct.TYPE_21__*, %struct.TYPE_21__** %22, align 8
  %351 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %350, i64 1
  %352 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %351, i32 0, i32 0
  %353 = load i8* (i32, i8*, i8*, i8*)*, i8* (i32, i8*, i8*, i8*)** %352, align 8
  %354 = load %struct.TYPE_21__*, %struct.TYPE_21__** %22, align 8
  %355 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %354, i64 2
  %356 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %355, i32 0, i32 2
  %357 = load i32, i32* %356, align 4
  %358 = load i8*, i8** %10, align 8
  %359 = load i8*, i8** %11, align 8
  %360 = load i8*, i8** %12, align 8
  %361 = call i8* %353(i32 %357, i8* %358, i8* %359, i8* %360)
  store i8* %361, i8** %32, align 8
  %362 = load i8*, i8** %32, align 8
  %363 = icmp eq i8* %362, null
  br i1 %363, label %364, label %365

364:                                              ; preds = %349
  br label %516

365:                                              ; preds = %349
  %366 = load i8*, i8** %32, align 8
  store i8* %366, i8** %11, align 8
  %367 = load %struct.TYPE_21__*, %struct.TYPE_21__** %22, align 8
  %368 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %367, i32 0, i32 1
  %369 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %368, i32 0, i32 1
  %370 = load i32, i32* %369, align 4
  %371 = load %struct.TYPE_21__*, %struct.TYPE_21__** %22, align 8
  %372 = sext i32 %370 to i64
  %373 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %371, i64 %372
  store %struct.TYPE_21__* %373, %struct.TYPE_21__** %22, align 8
  br label %56

374:                                              ; preds = %56
  %375 = load %struct.TYPE_21__*, %struct.TYPE_21__** %22, align 8
  %376 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %375, i32 0, i32 1
  %377 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %376, i32 0, i32 1
  %378 = load i32, i32* %377, align 4
  %379 = load %struct.TYPE_21__*, %struct.TYPE_21__** %22, align 8
  %380 = sext i32 %378 to i64
  %381 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %379, i64 %380
  store %struct.TYPE_21__* %381, %struct.TYPE_21__** %22, align 8
  br label %56

382:                                              ; preds = %56
  %383 = load %struct.TYPE_20__*, %struct.TYPE_20__** %19, align 8
  %384 = load %struct.TYPE_20__*, %struct.TYPE_20__** %18, align 8
  %385 = icmp uge %struct.TYPE_20__* %383, %384
  br i1 %385, label %386, label %389

386:                                              ; preds = %382
  %387 = load i32*, i32** %9, align 8
  %388 = call i8* (i32*, i8*, ...) @luaL_error(i32* %387, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  store i8* null, i8** %8, align 8
  store i32 1, i32* %23, align 4
  br label %791

389:                                              ; preds = %382
  %390 = load %struct.TYPE_21__*, %struct.TYPE_21__** %22, align 8
  %391 = call %struct.TYPE_21__* @dest(i32 0, %struct.TYPE_21__* %390)
  %392 = load %struct.TYPE_20__*, %struct.TYPE_20__** %19, align 8
  %393 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %392, i32 0, i32 2
  store %struct.TYPE_21__* %391, %struct.TYPE_21__** %393, align 8
  %394 = load i8*, i8** %11, align 8
  %395 = load %struct.TYPE_21__*, %struct.TYPE_21__** %22, align 8
  %396 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %395, i32 0, i32 1
  %397 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %396, i32 0, i32 0
  %398 = load i32, i32* %397, align 8
  %399 = sext i32 %398 to i64
  %400 = sub i64 0, %399
  %401 = getelementptr inbounds i8, i8* %394, i64 %400
  %402 = load %struct.TYPE_20__*, %struct.TYPE_20__** %19, align 8
  %403 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %402, i32 0, i32 0
  store i8* %401, i8** %403, align 8
  %404 = load i32, i32* %21, align 4
  %405 = load %struct.TYPE_20__*, %struct.TYPE_20__** %19, align 8
  %406 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %405, i32 0, i32 1
  store i32 %404, i32* %406, align 8
  %407 = load %struct.TYPE_20__*, %struct.TYPE_20__** %19, align 8
  %408 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %407, i32 1
  store %struct.TYPE_20__* %408, %struct.TYPE_20__** %19, align 8
  %409 = load %struct.TYPE_21__*, %struct.TYPE_21__** %22, align 8
  %410 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %409, i32 1
  store %struct.TYPE_21__* %410, %struct.TYPE_21__** %22, align 8
  br label %56

411:                                              ; preds = %56
  %412 = load %struct.TYPE_20__*, %struct.TYPE_20__** %19, align 8
  %413 = load %struct.TYPE_20__*, %struct.TYPE_20__** %18, align 8
  %414 = icmp uge %struct.TYPE_20__* %412, %413
  br i1 %414, label %415, label %418

415:                                              ; preds = %411
  %416 = load i32*, i32** %9, align 8
  %417 = call i8* (i32*, i8*, ...) @luaL_error(i32* %416, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  store i8* null, i8** %8, align 8
  store i32 1, i32* %23, align 4
  br label %791

418:                                              ; preds = %411
  %419 = load %struct.TYPE_20__*, %struct.TYPE_20__** %19, align 8
  %420 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %419, i32 0, i32 0
  store i8* null, i8** %420, align 8
  %421 = load %struct.TYPE_21__*, %struct.TYPE_21__** %22, align 8
  %422 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %421, i64 1
  %423 = load %struct.TYPE_20__*, %struct.TYPE_20__** %19, align 8
  %424 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %423, i32 0, i32 2
  store %struct.TYPE_21__* %422, %struct.TYPE_21__** %424, align 8
  %425 = load %struct.TYPE_20__*, %struct.TYPE_20__** %19, align 8
  %426 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %425, i32 1
  store %struct.TYPE_20__* %426, %struct.TYPE_20__** %19, align 8
  %427 = load %struct.TYPE_21__*, %struct.TYPE_21__** %22, align 8
  %428 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %427, i32 0, i32 1
  %429 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %428, i32 0, i32 1
  %430 = load i32, i32* %429, align 4
  %431 = load %struct.TYPE_21__*, %struct.TYPE_21__** %22, align 8
  %432 = sext i32 %430 to i64
  %433 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %431, i64 %432
  store %struct.TYPE_21__* %433, %struct.TYPE_21__** %22, align 8
  br label %56

434:                                              ; preds = %56
  %435 = load %struct.TYPE_20__*, %struct.TYPE_20__** %19, align 8
  %436 = icmp ugt %struct.TYPE_20__* %435, %41
  br i1 %436, label %437, label %443

437:                                              ; preds = %434
  %438 = load %struct.TYPE_20__*, %struct.TYPE_20__** %19, align 8
  %439 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %438, i64 -1
  %440 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %439, i32 0, i32 0
  %441 = load i8*, i8** %440, align 8
  %442 = icmp ne i8* %441, null
  br label %443

443:                                              ; preds = %437, %434
  %444 = phi i1 [ false, %434 ], [ %442, %437 ]
  %445 = zext i1 %444 to i32
  %446 = call i32 @assert(i32 %445)
  %447 = load %struct.TYPE_20__*, %struct.TYPE_20__** %19, align 8
  %448 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %447, i32 -1
  store %struct.TYPE_20__* %448, %struct.TYPE_20__** %19, align 8
  %449 = load %struct.TYPE_21__*, %struct.TYPE_21__** %22, align 8
  %450 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %449, i32 0, i32 1
  %451 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %450, i32 0, i32 1
  %452 = load i32, i32* %451, align 4
  %453 = load %struct.TYPE_21__*, %struct.TYPE_21__** %22, align 8
  %454 = sext i32 %452 to i64
  %455 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %453, i64 %454
  store %struct.TYPE_21__* %455, %struct.TYPE_21__** %22, align 8
  br label %56

456:                                              ; preds = %56
  %457 = load %struct.TYPE_20__*, %struct.TYPE_20__** %19, align 8
  %458 = icmp ugt %struct.TYPE_20__* %457, %41
  br i1 %458, label %459, label %465

459:                                              ; preds = %456
  %460 = load %struct.TYPE_20__*, %struct.TYPE_20__** %19, align 8
  %461 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %460, i64 -1
  %462 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %461, i32 0, i32 0
  %463 = load i8*, i8** %462, align 8
  %464 = icmp ne i8* %463, null
  br label %465

465:                                              ; preds = %459, %456
  %466 = phi i1 [ false, %456 ], [ %464, %459 ]
  %467 = zext i1 %466 to i32
  %468 = call i32 @assert(i32 %467)
  %469 = load i8*, i8** %11, align 8
  %470 = load %struct.TYPE_20__*, %struct.TYPE_20__** %19, align 8
  %471 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %470, i64 -1
  %472 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %471, i32 0, i32 0
  store i8* %469, i8** %472, align 8
  %473 = load i32, i32* %21, align 4
  %474 = load %struct.TYPE_20__*, %struct.TYPE_20__** %19, align 8
  %475 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %474, i64 -1
  %476 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %475, i32 0, i32 1
  store i32 %473, i32* %476, align 8
  %477 = load %struct.TYPE_21__*, %struct.TYPE_21__** %22, align 8
  %478 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %477, i32 0, i32 1
  %479 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %478, i32 0, i32 1
  %480 = load i32, i32* %479, align 4
  %481 = load %struct.TYPE_21__*, %struct.TYPE_21__** %22, align 8
  %482 = sext i32 %480 to i64
  %483 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %481, i64 %482
  store %struct.TYPE_21__* %483, %struct.TYPE_21__** %22, align 8
  br label %56

484:                                              ; preds = %56
  %485 = load %struct.TYPE_20__*, %struct.TYPE_20__** %19, align 8
  %486 = icmp ugt %struct.TYPE_20__* %485, %41
  br i1 %486, label %487, label %493

487:                                              ; preds = %484
  %488 = load %struct.TYPE_20__*, %struct.TYPE_20__** %19, align 8
  %489 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %488, i64 -1
  %490 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %489, i32 0, i32 0
  %491 = load i8*, i8** %490, align 8
  %492 = icmp ne i8* %491, null
  br label %493

493:                                              ; preds = %487, %484
  %494 = phi i1 [ false, %484 ], [ %492, %487 ]
  %495 = zext i1 %494 to i32
  %496 = call i32 @assert(i32 %495)
  %497 = load %struct.TYPE_20__*, %struct.TYPE_20__** %19, align 8
  %498 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %497, i32 -1
  store %struct.TYPE_20__* %498, %struct.TYPE_20__** %19, align 8
  %499 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %498, i32 0, i32 0
  %500 = load i8*, i8** %499, align 8
  store i8* %500, i8** %11, align 8
  %501 = load %struct.TYPE_21__*, %struct.TYPE_21__** %22, align 8
  %502 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %501, i32 0, i32 1
  %503 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %502, i32 0, i32 1
  %504 = load i32, i32* %503, align 4
  %505 = load %struct.TYPE_21__*, %struct.TYPE_21__** %22, align 8
  %506 = sext i32 %504 to i64
  %507 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %505, i64 %506
  store %struct.TYPE_21__* %507, %struct.TYPE_21__** %22, align 8
  br label %56

508:                                              ; preds = %56
  %509 = load %struct.TYPE_20__*, %struct.TYPE_20__** %19, align 8
  %510 = icmp ugt %struct.TYPE_20__* %509, %41
  %511 = zext i1 %510 to i32
  %512 = call i32 @assert(i32 %511)
  %513 = load %struct.TYPE_20__*, %struct.TYPE_20__** %19, align 8
  %514 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %513, i32 -1
  store %struct.TYPE_20__* %514, %struct.TYPE_20__** %19, align 8
  br label %515

515:                                              ; preds = %56, %508
  br label %516

516:                                              ; preds = %565, %515, %364, %261, %210, %165, %114
  br label %517

517:                                              ; preds = %526, %516
  %518 = load %struct.TYPE_20__*, %struct.TYPE_20__** %19, align 8
  %519 = icmp ugt %struct.TYPE_20__* %518, %41
  %520 = zext i1 %519 to i32
  %521 = call i32 @assert(i32 %520)
  %522 = load %struct.TYPE_20__*, %struct.TYPE_20__** %19, align 8
  %523 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %522, i32 -1
  store %struct.TYPE_20__* %523, %struct.TYPE_20__** %19, align 8
  %524 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %523, i32 0, i32 0
  %525 = load i8*, i8** %524, align 8
  store i8* %525, i8** %11, align 8
  br label %526

526:                                              ; preds = %517
  %527 = load i8*, i8** %11, align 8
  %528 = icmp eq i8* %527, null
  br i1 %528, label %517, label %529

529:                                              ; preds = %526
  %530 = load %struct.TYPE_20__*, %struct.TYPE_20__** %19, align 8
  %531 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %530, i32 0, i32 1
  %532 = load i32, i32* %531, align 8
  store i32 %532, i32* %21, align 4
  %533 = load %struct.TYPE_20__*, %struct.TYPE_20__** %19, align 8
  %534 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %533, i32 0, i32 2
  %535 = load %struct.TYPE_21__*, %struct.TYPE_21__** %534, align 8
  store %struct.TYPE_21__* %535, %struct.TYPE_21__** %22, align 8
  br label %56

536:                                              ; preds = %56
  %537 = load i32*, i32** %9, align 8
  %538 = call i32 @lua_gettop(i32* %537)
  %539 = add nsw i32 %538, 1
  store i32 %539, i32* %33, align 4
  %540 = load i32*, i32** %9, align 8
  %541 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %542 = load i32, i32* %21, align 4
  %543 = sext i32 %542 to i64
  %544 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %541, i64 %543
  %545 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %546 = load i8*, i8** %10, align 8
  %547 = load i8*, i8** %11, align 8
  %548 = load i32, i32* %15, align 4
  %549 = call i32 @runtimecap(i32* %540, %struct.TYPE_22__* %544, %struct.TYPE_22__* %545, i8* %546, i8* %547, i32 %548)
  store i32 %549, i32* %34, align 4
  %550 = load i32*, i32** %9, align 8
  %551 = load i32, i32* %33, align 4
  %552 = call i32 @lua_tointeger(i32* %550, i32 %551)
  %553 = sub nsw i32 %552, 1
  store i32 %553, i32* %35, align 4
  %554 = load i32*, i32** %9, align 8
  %555 = call i32 @lua_gettop(i32* %554)
  %556 = load i32, i32* %33, align 4
  %557 = sub nsw i32 %555, %556
  store i32 %557, i32* %36, align 4
  %558 = load i32, i32* %35, align 4
  %559 = icmp eq i32 %558, -1
  br i1 %559, label %560, label %584

560:                                              ; preds = %536
  %561 = load i32*, i32** %9, align 8
  %562 = load i32, i32* %33, align 4
  %563 = call i32 @lua_toboolean(i32* %561, i32 %562)
  %564 = icmp ne i32 %563, 0
  br i1 %564, label %570, label %565

565:                                              ; preds = %560
  %566 = load i32*, i32** %9, align 8
  %567 = load i32, i32* %33, align 4
  %568 = sub nsw i32 %567, 1
  %569 = call i32 @lua_settop(i32* %566, i32 %568)
  br label %516

570:                                              ; preds = %560
  %571 = load i32*, i32** %9, align 8
  %572 = load i32, i32* %33, align 4
  %573 = call i32 @lua_isboolean(i32* %571, i32 %572)
  %574 = icmp ne i32 %573, 0
  br i1 %574, label %575, label %582

575:                                              ; preds = %570
  %576 = load i8*, i8** %11, align 8
  %577 = load i8*, i8** %10, align 8
  %578 = ptrtoint i8* %576 to i64
  %579 = ptrtoint i8* %577 to i64
  %580 = sub i64 %578, %579
  %581 = trunc i64 %580 to i32
  store i32 %581, i32* %35, align 4
  br label %582

582:                                              ; preds = %575, %570
  br label %583

583:                                              ; preds = %582
  br label %584

584:                                              ; preds = %583, %536
  %585 = load i32, i32* %35, align 4
  %586 = sext i32 %585 to i64
  %587 = load i8*, i8** %11, align 8
  %588 = load i8*, i8** %10, align 8
  %589 = ptrtoint i8* %587 to i64
  %590 = ptrtoint i8* %588 to i64
  %591 = sub i64 %589, %590
  %592 = icmp slt i64 %586, %591
  br i1 %592, label %602, label %593

593:                                              ; preds = %584
  %594 = load i32, i32* %35, align 4
  %595 = sext i32 %594 to i64
  %596 = load i8*, i8** %12, align 8
  %597 = load i8*, i8** %10, align 8
  %598 = ptrtoint i8* %596 to i64
  %599 = ptrtoint i8* %597 to i64
  %600 = sub i64 %598, %599
  %601 = icmp sgt i64 %595, %600
  br i1 %601, label %602, label %605

602:                                              ; preds = %593, %584
  %603 = load i32*, i32** %9, align 8
  %604 = call i8* (i32*, i8*, ...) @luaL_error(i32* %603, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  br label %605

605:                                              ; preds = %602, %593
  %606 = load i8*, i8** %10, align 8
  %607 = load i32, i32* %35, align 4
  %608 = sext i32 %607 to i64
  %609 = getelementptr inbounds i8, i8* %606, i64 %608
  store i8* %609, i8** %11, align 8
  %610 = load i32, i32* %34, align 4
  %611 = load i32, i32* %21, align 4
  %612 = sub nsw i32 %611, %610
  store i32 %612, i32* %21, align 4
  %613 = load i32*, i32** %9, align 8
  %614 = load i32, i32* %33, align 4
  %615 = call i32 @lua_remove(i32* %613, i32 %614)
  %616 = load i32, i32* %36, align 4
  %617 = icmp sgt i32 %616, 0
  br i1 %617, label %618, label %647

618:                                              ; preds = %605
  %619 = load i32, i32* %36, align 4
  %620 = add nsw i32 %619, 1
  %621 = load i32, i32* %21, align 4
  %622 = add nsw i32 %621, %620
  store i32 %622, i32* %21, align 4
  %623 = load i32, i32* %20, align 4
  %624 = icmp sge i32 %622, %623
  br i1 %624, label %625, label %633

625:                                              ; preds = %618
  %626 = load i32*, i32** %9, align 8
  %627 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %628 = load i32, i32* %21, align 4
  %629 = load i32, i32* %15, align 4
  %630 = call %struct.TYPE_22__* @doublecap(i32* %626, %struct.TYPE_22__* %627, i32 %628, i32 %629)
  store %struct.TYPE_22__* %630, %struct.TYPE_22__** %14, align 8
  %631 = load i32, i32* %21, align 4
  %632 = mul nsw i32 2, %631
  store i32 %632, i32* %20, align 4
  br label %633

633:                                              ; preds = %625, %618
  %634 = load i8*, i8** %11, align 8
  %635 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %636 = load i32, i32* %21, align 4
  %637 = sext i32 %636 to i64
  %638 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %635, i64 %637
  %639 = load i32, i32* %36, align 4
  %640 = sext i32 %639 to i64
  %641 = sub i64 0, %640
  %642 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %638, i64 %641
  %643 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %642, i64 -1
  %644 = load i32, i32* %36, align 4
  %645 = load i32, i32* %33, align 4
  %646 = call i32 @adddyncaptures(i8* %634, %struct.TYPE_22__* %643, i32 %644, i32 %645)
  br label %647

647:                                              ; preds = %633, %605
  %648 = load %struct.TYPE_21__*, %struct.TYPE_21__** %22, align 8
  %649 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %648, i32 1
  store %struct.TYPE_21__* %649, %struct.TYPE_21__** %22, align 8
  br label %56

650:                                              ; preds = %56
  %651 = load i8*, i8** %11, align 8
  %652 = load %struct.TYPE_21__*, %struct.TYPE_21__** %22, align 8
  %653 = call i32 @getoff(%struct.TYPE_21__* %652)
  %654 = sext i32 %653 to i64
  %655 = sub i64 0, %654
  %656 = getelementptr inbounds i8, i8* %651, i64 %655
  store i8* %656, i8** %37, align 8
  %657 = load i32, i32* %21, align 4
  %658 = icmp sgt i32 %657, 0
  %659 = zext i1 %658 to i32
  %660 = call i32 @assert(i32 %659)
  %661 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %662 = load i32, i32* %21, align 4
  %663 = sub nsw i32 %662, 1
  %664 = sext i32 %663 to i64
  %665 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %661, i64 %664
  %666 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %665, i32 0, i32 1
  %667 = load i32, i32* %666, align 8
  %668 = icmp eq i32 %667, 0
  br i1 %668, label %669, label %706

669:                                              ; preds = %650
  %670 = load i8*, i8** %37, align 8
  %671 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %672 = load i32, i32* %21, align 4
  %673 = sub nsw i32 %672, 1
  %674 = sext i32 %673 to i64
  %675 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %671, i64 %674
  %676 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %675, i32 0, i32 0
  %677 = load i8*, i8** %676, align 8
  %678 = ptrtoint i8* %670 to i64
  %679 = ptrtoint i8* %677 to i64
  %680 = sub i64 %678, %679
  %681 = inttoptr i64 %680 to i8*
  %682 = load i8*, i8** @UCHAR_MAX, align 8
  %683 = icmp ult i8* %681, %682
  br i1 %683, label %684, label %706

684:                                              ; preds = %669
  %685 = load i8*, i8** %37, align 8
  %686 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %687 = load i32, i32* %21, align 4
  %688 = sub nsw i32 %687, 1
  %689 = sext i32 %688 to i64
  %690 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %686, i64 %689
  %691 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %690, i32 0, i32 0
  %692 = load i8*, i8** %691, align 8
  %693 = ptrtoint i8* %685 to i64
  %694 = ptrtoint i8* %692 to i64
  %695 = sub i64 %693, %694
  %696 = add nsw i64 %695, 1
  %697 = trunc i64 %696 to i32
  %698 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %699 = load i32, i32* %21, align 4
  %700 = sub nsw i32 %699, 1
  %701 = sext i32 %700 to i64
  %702 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %698, i64 %701
  %703 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %702, i32 0, i32 1
  store i32 %697, i32* %703, align 8
  %704 = load %struct.TYPE_21__*, %struct.TYPE_21__** %22, align 8
  %705 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %704, i32 1
  store %struct.TYPE_21__* %705, %struct.TYPE_21__** %22, align 8
  br label %56

706:                                              ; preds = %669, %650
  %707 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %708 = load i32, i32* %21, align 4
  %709 = sext i32 %708 to i64
  %710 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %707, i64 %709
  %711 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %710, i32 0, i32 1
  store i32 1, i32* %711, align 8
  br label %733

712:                                              ; preds = %56, %56
  %713 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %714 = load i32, i32* %21, align 4
  %715 = sext i32 %714 to i64
  %716 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %713, i64 %715
  %717 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %716, i32 0, i32 1
  store i32 1, i32* %717, align 8
  br label %733

718:                                              ; preds = %56
  %719 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %720 = load i32, i32* %21, align 4
  %721 = sext i32 %720 to i64
  %722 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %719, i64 %721
  %723 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %722, i32 0, i32 1
  store i32 0, i32* %723, align 8
  br label %733

724:                                              ; preds = %56
  %725 = load %struct.TYPE_21__*, %struct.TYPE_21__** %22, align 8
  %726 = call i32 @getoff(%struct.TYPE_21__* %725)
  %727 = add nsw i32 %726, 1
  %728 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %729 = load i32, i32* %21, align 4
  %730 = sext i32 %729 to i64
  %731 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %728, i64 %730
  %732 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %731, i32 0, i32 1
  store i32 %727, i32* %732, align 8
  br label %733

733:                                              ; preds = %724, %718, %712, %706
  %734 = load i8*, i8** %11, align 8
  %735 = load %struct.TYPE_21__*, %struct.TYPE_21__** %22, align 8
  %736 = call i32 @getoff(%struct.TYPE_21__* %735)
  %737 = sext i32 %736 to i64
  %738 = sub i64 0, %737
  %739 = getelementptr inbounds i8, i8* %734, i64 %738
  %740 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %741 = load i32, i32* %21, align 4
  %742 = sext i32 %741 to i64
  %743 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %740, i64 %742
  %744 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %743, i32 0, i32 0
  store i8* %739, i8** %744, align 8
  %745 = load %struct.TYPE_21__*, %struct.TYPE_21__** %22, align 8
  %746 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %745, i32 0, i32 1
  %747 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %746, i32 0, i32 1
  %748 = load i32, i32* %747, align 4
  %749 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %750 = load i32, i32* %21, align 4
  %751 = sext i32 %750 to i64
  %752 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %749, i64 %751
  %753 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %752, i32 0, i32 3
  store i32 %748, i32* %753, align 8
  %754 = load %struct.TYPE_21__*, %struct.TYPE_21__** %22, align 8
  %755 = call i32 @getkind(%struct.TYPE_21__* %754)
  %756 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %757 = load i32, i32* %21, align 4
  %758 = sext i32 %757 to i64
  %759 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %756, i64 %758
  %760 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %759, i32 0, i32 2
  store i32 %755, i32* %760, align 4
  %761 = load i32, i32* %21, align 4
  %762 = add nsw i32 %761, 1
  store i32 %762, i32* %21, align 4
  %763 = load i32, i32* %20, align 4
  %764 = icmp sge i32 %762, %763
  br i1 %764, label %765, label %773

765:                                              ; preds = %733
  %766 = load i32*, i32** %9, align 8
  %767 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %768 = load i32, i32* %21, align 4
  %769 = load i32, i32* %15, align 4
  %770 = call %struct.TYPE_22__* @doublecap(i32* %766, %struct.TYPE_22__* %767, i32 %768, i32 %769)
  store %struct.TYPE_22__* %770, %struct.TYPE_22__** %14, align 8
  %771 = load i32, i32* %21, align 4
  %772 = mul nsw i32 2, %771
  store i32 %772, i32* %20, align 4
  br label %773

773:                                              ; preds = %765, %733
  %774 = load %struct.TYPE_21__*, %struct.TYPE_21__** %22, align 8
  %775 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %774, i32 1
  store %struct.TYPE_21__* %775, %struct.TYPE_21__** %22, align 8
  br label %56

776:                                              ; preds = %56
  %777 = load i32*, i32** %9, align 8
  %778 = load i32, i32* %15, align 4
  %779 = call i32 @penvidx(i32 %778)
  %780 = load %struct.TYPE_21__*, %struct.TYPE_21__** %22, align 8
  %781 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %780, i32 0, i32 1
  %782 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %781, i32 0, i32 1
  %783 = load i32, i32* %782, align 4
  %784 = call i32 @lua_rawgeti(i32* %777, i32 %779, i32 %783)
  %785 = load i32*, i32** %9, align 8
  %786 = load i32*, i32** %9, align 8
  %787 = call i32 @val2str(i32* %786, i32 -1)
  %788 = call i8* (i32*, i8*, ...) @luaL_error(i32* %785, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %787)
  br label %789

789:                                              ; preds = %56, %776
  %790 = call i32 @assert(i32 0)
  store i8* null, i8** %8, align 8
  store i32 1, i32* %23, align 4
  br label %791

791:                                              ; preds = %789, %415, %386, %79, %61
  %792 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %792)
  %793 = load i8*, i8** %8, align 8
  ret i8* %793
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @testchar(i32, i32) #2

declare dso_local i8* @luaL_error(i32*, i8*, ...) #2

declare dso_local %struct.TYPE_21__* @dest(i32, %struct.TYPE_21__*) #2

declare dso_local i32 @lua_gettop(i32*) #2

declare dso_local i32 @runtimecap(i32*, %struct.TYPE_22__*, %struct.TYPE_22__*, i8*, i8*, i32) #2

declare dso_local i32 @lua_tointeger(i32*, i32) #2

declare dso_local i32 @lua_toboolean(i32*, i32) #2

declare dso_local i32 @lua_settop(i32*, i32) #2

declare dso_local i32 @lua_isboolean(i32*, i32) #2

declare dso_local i32 @lua_remove(i32*, i32) #2

declare dso_local %struct.TYPE_22__* @doublecap(i32*, %struct.TYPE_22__*, i32, i32) #2

declare dso_local i32 @adddyncaptures(i8*, %struct.TYPE_22__*, i32, i32) #2

declare dso_local i32 @getoff(%struct.TYPE_21__*) #2

declare dso_local i32 @getkind(%struct.TYPE_21__*) #2

declare dso_local i32 @lua_rawgeti(i32*, i32, i32) #2

declare dso_local i32 @penvidx(i32) #2

declare dso_local i32 @val2str(i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
