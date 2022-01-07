; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/tools/extr_pngcp.c_opt_check.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/tools/extr_pngcp.c_opt_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.display = type { i64, i64*, i32*, i32 }

@.str = private unnamed_addr constant [4 x i8] c"no-\00", align 1
@options = common dso_local global %struct.TYPE_4__* null, align 8
@LIST = common dso_local global i32 0, align 4
@OPTION = common dso_local global i32 0, align 4
@USER_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"%.*s: option=arg cannot be negated\00", align 1
@LEVEL_MASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [70 x i8] c"%.*s: messages cannot be turned off individually; set a message level\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.display*, i8*)* @opt_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @opt_check(%struct.display* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.display*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.display* %0, %struct.display** %4, align 8
  store i8* %1, i8** %5, align 8
  %13 = load %struct.display*, %struct.display** %4, align 8
  %14 = getelementptr inbounds %struct.display, %struct.display* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %15, 0
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = load i8*, i8** %5, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %290

21:                                               ; preds = %2
  %22 = load i8*, i8** %5, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 0
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 45
  br i1 %26, label %27, label %290

27:                                               ; preds = %21
  %28 = load i8*, i8** %5, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 1
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 %31, 45
  br i1 %32, label %33, label %290

33:                                               ; preds = %27
  store i32 0, i32* %6, align 4
  %34 = load i8*, i8** %5, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 2
  %36 = call i64 @strncmp(i8* %35, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 3)
  %37 = icmp eq i64 %36, 0
  %38 = zext i1 %37 to i32
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %33
  %42 = load i8*, i8** %5, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 5
  store i8* %43, i8** %5, align 8
  br label %47

44:                                               ; preds = %33
  %45 = load i8*, i8** %5, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 2
  store i8* %46, i8** %5, align 8
  br label %47

47:                                               ; preds = %44, %41
  br label %48

48:                                               ; preds = %66, %47
  %49 = load i8*, i8** %5, align 8
  %50 = load i32, i32* %6, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8, i8* %49, i64 %51
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %64

56:                                               ; preds = %48
  %57 = load i8*, i8** %5, align 8
  %58 = load i32, i32* %6, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8, i8* %57, i64 %59
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp ne i32 %62, 61
  br label %64

64:                                               ; preds = %56, %48
  %65 = phi i1 [ false, %48 ], [ %63, %56 ]
  br i1 %65, label %66, label %69

66:                                               ; preds = %64
  %67 = load i32, i32* %6, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %6, align 4
  br label %48

69:                                               ; preds = %64
  %70 = load %struct.display*, %struct.display** %4, align 8
  %71 = load i8*, i8** %5, align 8
  %72 = load i32, i32* %6, align 4
  %73 = call i64 @option_index(%struct.display* %70, i8* %71, i32 %72)
  store i64 %73, i64* %9, align 8
  %74 = load i8*, i8** %5, align 8
  %75 = load i32, i32* %6, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8, i8* %74, i64 %76
  %78 = load i8, i8* %77, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %100

81:                                               ; preds = %69
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** @options, align 8
  %83 = load i64, i64* %9, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 1
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %85, align 8
  %87 = load i32, i32* %7, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  store i32 %91, i32* %8, align 4
  %92 = load i32, i32* %7, align 4
  %93 = add i32 %92, 1
  %94 = zext i32 %93 to i64
  %95 = load %struct.display*, %struct.display** %4, align 8
  %96 = getelementptr inbounds %struct.display, %struct.display* %95, i32 0, i32 1
  %97 = load i64*, i64** %96, align 8
  %98 = load i64, i64* %9, align 8
  %99 = getelementptr inbounds i64, i64* %97, i64 %98
  store i64 %94, i64* %99, align 8
  br label %216

100:                                              ; preds = %69
  %101 = load i8*, i8** %5, align 8
  %102 = load i32, i32* %6, align 4
  %103 = add nsw i32 %102, 1
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i8, i8* %101, i64 %104
  store i8* %105, i8** %10, align 8
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** @options, align 8
  %107 = load i64, i64* %9, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @LIST, align 4
  %112 = icmp ne i32 %110, %111
  br i1 %112, label %113, label %144

113:                                              ; preds = %100
  %114 = load %struct.display*, %struct.display** %4, align 8
  %115 = load i64, i64* %9, align 8
  %116 = load i8*, i8** %10, align 8
  %117 = load i8*, i8** %10, align 8
  %118 = call i32 @strlen(i8* %117)
  %119 = call i32 @find_val(%struct.display* %114, i64 %115, i8* %116, i32 %118)
  store i32 %119, i32* %8, align 4
  %120 = load i32, i32* %7, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %143

122:                                              ; preds = %113
  %123 = load %struct.TYPE_4__*, %struct.TYPE_4__** @options, align 8
  %124 = load i64, i64* %9, align 8
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* @OPTION, align 4
  %129 = icmp slt i32 %127, %128
  br i1 %129, label %130, label %135

130:                                              ; preds = %122
  %131 = load i32, i32* %8, align 4
  %132 = icmp ne i32 %131, 0
  %133 = xor i1 %132, true
  %134 = zext i1 %133 to i32
  store i32 %134, i32* %8, align 4
  br label %142

135:                                              ; preds = %122
  %136 = load %struct.display*, %struct.display** %4, align 8
  %137 = load i32, i32* @USER_ERROR, align 4
  %138 = load i32, i32* %6, align 4
  %139 = load i8*, i8** %5, align 8
  %140 = call i32 @display_log(%struct.display* %136, i32 %137, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %138, i8* %139)
  %141 = call i32 (...) @abort() #3
  unreachable

142:                                              ; preds = %130
  br label %143

143:                                              ; preds = %142, %113
  br label %215

144:                                              ; preds = %100
  %145 = load i32, i32* %7, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %156

147:                                              ; preds = %144
  %148 = load %struct.TYPE_4__*, %struct.TYPE_4__** @options, align 8
  %149 = load i64, i64* %9, align 8
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 1
  %152 = load %struct.TYPE_3__*, %struct.TYPE_3__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %152, i64 0
  %154 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  store i32 %155, i32* %8, align 4
  br label %157

156:                                              ; preds = %144
  store i32 0, i32* %8, align 4
  br label %157

157:                                              ; preds = %156, %147
  br label %158

158:                                              ; preds = %213, %157
  %159 = load i8*, i8** %10, align 8
  %160 = load i8, i8* %159, align 1
  %161 = sext i8 %160 to i32
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %214

163:                                              ; preds = %158
  store i32 0, i32* %12, align 4
  br label %164

164:                                              ; preds = %183, %163
  %165 = load i8*, i8** %10, align 8
  %166 = load i32, i32* %12, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %12, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i8, i8* %165, i64 %168
  %170 = load i8, i8* %169, align 1
  %171 = sext i8 %170 to i32
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %181

173:                                              ; preds = %164
  %174 = load i8*, i8** %10, align 8
  %175 = load i32, i32* %12, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i8, i8* %174, i64 %176
  %178 = load i8, i8* %177, align 1
  %179 = sext i8 %178 to i32
  %180 = icmp ne i32 %179, 44
  br label %181

181:                                              ; preds = %173, %164
  %182 = phi i1 [ false, %164 ], [ %180, %173 ]
  br i1 %182, label %183, label %184

183:                                              ; preds = %181
  br label %164

184:                                              ; preds = %181
  %185 = load %struct.display*, %struct.display** %4, align 8
  %186 = load i64, i64* %9, align 8
  %187 = load i8*, i8** %10, align 8
  %188 = load i32, i32* %12, align 4
  %189 = call i32 @find_val(%struct.display* %185, i64 %186, i8* %187, i32 %188)
  store i32 %189, i32* %11, align 4
  %190 = load i32, i32* %7, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %197

192:                                              ; preds = %184
  %193 = load i32, i32* %11, align 4
  %194 = xor i32 %193, -1
  %195 = load i32, i32* %8, align 4
  %196 = and i32 %195, %194
  store i32 %196, i32* %8, align 4
  br label %201

197:                                              ; preds = %184
  %198 = load i32, i32* %11, align 4
  %199 = load i32, i32* %8, align 4
  %200 = or i32 %199, %198
  store i32 %200, i32* %8, align 4
  br label %201

201:                                              ; preds = %197, %192
  %202 = load i32, i32* %12, align 4
  %203 = load i8*, i8** %10, align 8
  %204 = sext i32 %202 to i64
  %205 = getelementptr inbounds i8, i8* %203, i64 %204
  store i8* %205, i8** %10, align 8
  %206 = load i8*, i8** %10, align 8
  %207 = load i8, i8* %206, align 1
  %208 = sext i8 %207 to i32
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %213

210:                                              ; preds = %201
  %211 = load i8*, i8** %10, align 8
  %212 = getelementptr inbounds i8, i8* %211, i32 1
  store i8* %212, i8** %10, align 8
  br label %213

213:                                              ; preds = %210, %201
  br label %158

214:                                              ; preds = %158
  br label %215

215:                                              ; preds = %214, %143
  br label %216

216:                                              ; preds = %215, %81
  %217 = load i32, i32* %8, align 4
  %218 = load %struct.display*, %struct.display** %4, align 8
  %219 = getelementptr inbounds %struct.display, %struct.display* %218, i32 0, i32 2
  %220 = load i32*, i32** %219, align 8
  %221 = load i64, i64* %9, align 8
  %222 = getelementptr inbounds i32, i32* %220, i64 %221
  store i32 %217, i32* %222, align 4
  %223 = load %struct.TYPE_4__*, %struct.TYPE_4__** @options, align 8
  %224 = load i64, i64* %9, align 8
  %225 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %223, i64 %224
  %226 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 8
  %228 = load i32, i32* @LEVEL_MASK, align 4
  %229 = icmp slt i32 %227, %228
  br i1 %229, label %230, label %255

230:                                              ; preds = %216
  %231 = load i32, i32* %8, align 4
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %248

233:                                              ; preds = %230
  %234 = load %struct.display*, %struct.display** %4, align 8
  %235 = getelementptr inbounds %struct.display, %struct.display* %234, i32 0, i32 3
  %236 = load i32, i32* %235, align 8
  %237 = load i32, i32* @LEVEL_MASK, align 4
  %238 = xor i32 %237, -1
  %239 = and i32 %236, %238
  %240 = load %struct.TYPE_4__*, %struct.TYPE_4__** @options, align 8
  %241 = load i64, i64* %9, align 8
  %242 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %240, i64 %241
  %243 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 8
  %245 = or i32 %239, %244
  %246 = load %struct.display*, %struct.display** %4, align 8
  %247 = getelementptr inbounds %struct.display, %struct.display* %246, i32 0, i32 3
  store i32 %245, i32* %247, align 8
  br label %254

248:                                              ; preds = %230
  %249 = load %struct.display*, %struct.display** %4, align 8
  %250 = load i32, i32* @USER_ERROR, align 4
  %251 = load i32, i32* %6, align 4
  %252 = load i8*, i8** %5, align 8
  %253 = call i32 @display_log(%struct.display* %249, i32 %250, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.2, i64 0, i64 0), i32 %251, i8* %252)
  br label %254

254:                                              ; preds = %248, %233
  br label %289

255:                                              ; preds = %216
  %256 = load %struct.TYPE_4__*, %struct.TYPE_4__** @options, align 8
  %257 = load i64, i64* %9, align 8
  %258 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %256, i64 %257
  %259 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 8
  %261 = load i32, i32* @OPTION, align 4
  %262 = icmp slt i32 %260, %261
  br i1 %262, label %263, label %288

263:                                              ; preds = %255
  %264 = load i32, i32* %8, align 4
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %276

266:                                              ; preds = %263
  %267 = load %struct.TYPE_4__*, %struct.TYPE_4__** @options, align 8
  %268 = load i64, i64* %9, align 8
  %269 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %267, i64 %268
  %270 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 8
  %272 = load %struct.display*, %struct.display** %4, align 8
  %273 = getelementptr inbounds %struct.display, %struct.display* %272, i32 0, i32 3
  %274 = load i32, i32* %273, align 8
  %275 = or i32 %274, %271
  store i32 %275, i32* %273, align 8
  br label %287

276:                                              ; preds = %263
  %277 = load %struct.TYPE_4__*, %struct.TYPE_4__** @options, align 8
  %278 = load i64, i64* %9, align 8
  %279 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %277, i64 %278
  %280 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %279, i32 0, i32 0
  %281 = load i32, i32* %280, align 8
  %282 = xor i32 %281, -1
  %283 = load %struct.display*, %struct.display** %4, align 8
  %284 = getelementptr inbounds %struct.display, %struct.display* %283, i32 0, i32 3
  %285 = load i32, i32* %284, align 8
  %286 = and i32 %285, %282
  store i32 %286, i32* %284, align 8
  br label %287

287:                                              ; preds = %276, %266
  br label %288

288:                                              ; preds = %287, %255
  br label %289

289:                                              ; preds = %288, %254
  store i32 1, i32* %3, align 4
  br label %291

290:                                              ; preds = %27, %21, %2
  store i32 0, i32* %3, align 4
  br label %291

291:                                              ; preds = %290, %289
  %292 = load i32, i32* %3, align 4
  ret i32 %292
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i64 @option_index(%struct.display*, i8*, i32) #1

declare dso_local i32 @find_val(%struct.display*, i64, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @display_log(%struct.display*, i32, i8*, i32, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
