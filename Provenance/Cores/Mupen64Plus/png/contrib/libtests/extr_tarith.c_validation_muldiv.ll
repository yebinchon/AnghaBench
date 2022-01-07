; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/libtests/extr_tarith.c_validation_muldiv.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/libtests/extr_tarith.c_validation_muldiv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"unknown argument %s\0A\00", align 1
@RAND_MAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"Using random number generator that makes %d bits\0A\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"png_64bit_product %d * %d -> %lx|%.8lx not %llx\0A\00", align 1
@PNG_UINT_31_MAX = common dso_local global i64 0, align 8
@verbose = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [32 x i8] c"TEST %d * %d / %d -> %lld (%s)\0A\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"ok\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"overflow\00", align 1
@.str.6 = private unnamed_addr constant [42 x i8] c"%d * %d / %d -> overflow (expected %lld)\0A\00", align 1
@.str.7 = private unnamed_addr constant [45 x i8] c"%d * %d / %d -> %d (expected overflow %lld)\0A\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"%d * %d / %d -> %d not %lld\0A\00", align 1
@.str.9 = private unnamed_addr constant [74 x i8] c"%d tests including %d overflows, %d passed, %d failed (%d 64-bit errors)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @validation_muldiv(i32 %0, i32 %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %27

27:                                               ; preds = %3
  %28 = load i32, i32* %6, align 4
  %29 = add nsw i32 %28, -1
  store i32 %29, i32* %6, align 4
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %27
  %32 = load i32, i32* @stderr, align 4
  %33 = load i8**, i8*** %7, align 8
  %34 = getelementptr inbounds i8*, i8** %33, i32 1
  store i8** %34, i8*** %7, align 8
  %35 = load i8*, i8** %34, align 8
  %36 = call i32 (i32, i8*, ...) @fprintf(i32 %32, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %35)
  store i32 1, i32* %4, align 4
  br label %274

37:                                               ; preds = %27
  %38 = load i32, i32* @RAND_MAX, align 4
  store i32 %38, i32* %14, align 4
  br label %39

39:                                               ; preds = %42, %37
  %40 = load i32, i32* %14, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %39
  %43 = load i32, i32* %13, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %13, align 4
  %45 = load i32, i32* %14, align 4
  %46 = ashr i32 %45, 1
  store i32 %46, i32* %14, align 4
  br label %39

47:                                               ; preds = %39
  %48 = load i32, i32* %13, align 4
  %49 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  store i32 0, i32* %17, align 4
  br label %50

50:                                               ; preds = %59, %47
  %51 = load i32, i32* %17, align 4
  %52 = icmp slt i32 %51, 32
  br i1 %52, label %53, label %63

53:                                               ; preds = %50
  %54 = load i32, i32* %14, align 4
  %55 = load i32, i32* %13, align 4
  %56 = shl i32 %54, %55
  %57 = call i32 (...) @rand()
  %58 = xor i32 %56, %57
  store i32 %58, i32* %14, align 4
  br label %59

59:                                               ; preds = %53
  %60 = load i32, i32* %13, align 4
  %61 = load i32, i32* %17, align 4
  %62 = add nsw i32 %61, %60
  store i32 %62, i32* %17, align 4
  br label %50

63:                                               ; preds = %50
  store i32 0, i32* %15, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %16, align 4
  br label %64

64:                                               ; preds = %263, %63
  store i32 0, i32* %26, align 4
  %65 = load i32, i32* %15, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %64
  %68 = load i32, i32* %15, align 4
  %69 = sub nsw i32 0, %68
  %70 = sext i32 %69 to i64
  store i64 %70, i64* %24, align 8
  store i32 1, i32* %26, align 4
  br label %74

71:                                               ; preds = %64
  %72 = load i32, i32* %15, align 4
  %73 = sext i32 %72 to i64
  store i64 %73, i64* %24, align 8
  br label %74

74:                                               ; preds = %71, %67
  %75 = load i32, i32* %16, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %85

77:                                               ; preds = %74
  %78 = load i32, i32* %16, align 4
  %79 = sub nsw i32 0, %78
  %80 = sext i32 %79 to i64
  store i64 %80, i64* %25, align 8
  %81 = load i32, i32* %26, align 4
  %82 = icmp ne i32 %81, 0
  %83 = xor i1 %82, true
  %84 = zext i1 %83 to i32
  store i32 %84, i32* %26, align 4
  br label %88

85:                                               ; preds = %74
  %86 = load i32, i32* %16, align 4
  %87 = sext i32 %86 to i64
  store i64 %87, i64* %25, align 8
  br label %88

88:                                               ; preds = %85, %77
  %89 = load i64, i64* %24, align 8
  %90 = load i64, i64* %25, align 8
  %91 = call i32 @png_64bit_product(i64 %89, i64 %90, i64* %21, i64* %22)
  %92 = load i32, i32* %26, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %107

94:                                               ; preds = %88
  %95 = load i64, i64* %22, align 8
  %96 = xor i64 %95, -1
  %97 = add i64 %96, 1
  %98 = and i64 %97, 4294967295
  store i64 %98, i64* %22, align 8
  %99 = load i64, i64* %21, align 8
  %100 = xor i64 %99, -1
  store i64 %100, i64* %21, align 8
  %101 = load i64, i64* %22, align 8
  %102 = icmp eq i64 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %94
  %104 = load i64, i64* %21, align 8
  %105 = add i64 %104, 1
  store i64 %105, i64* %21, align 8
  br label %106

106:                                              ; preds = %103, %94
  br label %107

107:                                              ; preds = %106, %88
  %108 = load i32, i32* %15, align 4
  %109 = sext i32 %108 to i64
  store i64 %109, i64* %19, align 8
  %110 = load i32, i32* %16, align 4
  %111 = sext i32 %110 to i64
  %112 = load i64, i64* %19, align 8
  %113 = mul nsw i64 %112, %111
  store i64 %113, i64* %19, align 8
  %114 = load i64, i64* %19, align 8
  %115 = and i64 %114, 4294967295
  %116 = load i64, i64* %22, align 8
  %117 = icmp ne i64 %115, %116
  br i1 %117, label %124, label %118

118:                                              ; preds = %107
  %119 = load i64, i64* %19, align 8
  %120 = ashr i64 %119, 32
  %121 = and i64 %120, 4294967295
  %122 = load i64, i64* %21, align 8
  %123 = icmp ne i64 %121, %122
  br i1 %123, label %124, label %134

124:                                              ; preds = %118, %107
  %125 = load i32, i32* @stderr, align 4
  %126 = load i32, i32* %15, align 4
  %127 = load i32, i32* %16, align 4
  %128 = load i64, i64* %21, align 8
  %129 = load i64, i64* %22, align 8
  %130 = load i64, i64* %19, align 8
  %131 = call i32 (i32, i8*, ...) @fprintf(i32 %125, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i32 %126, i32 %127, i64 %128, i64 %129, i64 %130)
  %132 = load i32, i32* %11, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %11, align 4
  br label %134

134:                                              ; preds = %124, %118
  %135 = load i32, i32* %17, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %180

137:                                              ; preds = %134
  %138 = load i64, i64* %19, align 8
  %139 = icmp slt i64 %138, 0
  %140 = zext i1 %139 to i32
  %141 = load i32, i32* %17, align 4
  %142 = icmp slt i32 %141, 0
  %143 = zext i1 %142 to i32
  %144 = icmp ne i32 %140, %143
  br i1 %144, label %145, label %151

145:                                              ; preds = %137
  %146 = load i32, i32* %17, align 4
  %147 = sdiv i32 %146, 2
  %148 = sext i32 %147 to i64
  %149 = load i64, i64* %19, align 8
  %150 = sub nsw i64 %149, %148
  store i64 %150, i64* %19, align 8
  br label %157

151:                                              ; preds = %137
  %152 = load i32, i32* %17, align 4
  %153 = sdiv i32 %152, 2
  %154 = sext i32 %153 to i64
  %155 = load i64, i64* %19, align 8
  %156 = add nsw i64 %155, %154
  store i64 %156, i64* %19, align 8
  br label %157

157:                                              ; preds = %151, %145
  %158 = load i32, i32* %17, align 4
  %159 = sext i32 %158 to i64
  %160 = load i64, i64* %19, align 8
  %161 = sdiv i64 %160, %159
  store i64 %161, i64* %19, align 8
  %162 = load i64, i64* %19, align 8
  store i64 %162, i64* %20, align 8
  %163 = load i64, i64* %20, align 8
  %164 = load i64, i64* @PNG_UINT_31_MAX, align 8
  %165 = icmp sle i64 %163, %164
  br i1 %165, label %166, label %171

166:                                              ; preds = %157
  %167 = load i64, i64* %20, align 8
  %168 = load i64, i64* @PNG_UINT_31_MAX, align 8
  %169 = sub nsw i64 -1, %168
  %170 = icmp sge i64 %167, %169
  br label %171

171:                                              ; preds = %166, %157
  %172 = phi i1 [ false, %157 ], [ %170, %166 ]
  %173 = zext i1 %172 to i32
  store i32 %173, i32* %23, align 4
  %174 = load i32, i32* %23, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %179, label %176

176:                                              ; preds = %171
  %177 = load i32, i32* %9, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %9, align 4
  br label %179

179:                                              ; preds = %176, %171
  br label %184

180:                                              ; preds = %134
  store i32 0, i32* %23, align 4
  %181 = load i32, i32* %9, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %9, align 4
  %183 = load i64, i64* %19, align 8
  store i64 %183, i64* %20, align 8
  br label %184

184:                                              ; preds = %180, %179
  %185 = load i64, i64* @verbose, align 8
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %198

187:                                              ; preds = %184
  %188 = load i32, i32* @stderr, align 4
  %189 = load i32, i32* %15, align 4
  %190 = load i32, i32* %16, align 4
  %191 = load i32, i32* %17, align 4
  %192 = load i64, i64* %19, align 8
  %193 = load i32, i32* %23, align 4
  %194 = icmp ne i32 %193, 0
  %195 = zext i1 %194 to i64
  %196 = select i1 %194, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0)
  %197 = call i32 (i32, i8*, ...) @fprintf(i32 %188, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %189, i32 %190, i32 %191, i64 %192, i8* %196)
  br label %198

198:                                              ; preds = %187, %184
  %199 = load i32, i32* %8, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %8, align 4
  %201 = load i32, i32* %15, align 4
  %202 = load i32, i32* %16, align 4
  %203 = load i32, i32* %17, align 4
  %204 = call i32 @png_muldiv(i32* %18, i32 %201, i32 %202, i32 %203)
  %205 = load i32, i32* %23, align 4
  %206 = icmp ne i32 %204, %205
  br i1 %206, label %207, label %228

207:                                              ; preds = %198
  %208 = load i32, i32* %10, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %10, align 4
  %210 = load i32, i32* %23, align 4
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %219

212:                                              ; preds = %207
  %213 = load i32, i32* @stderr, align 4
  %214 = load i32, i32* %15, align 4
  %215 = load i32, i32* %16, align 4
  %216 = load i32, i32* %17, align 4
  %217 = load i64, i64* %19, align 8
  %218 = call i32 (i32, i8*, ...) @fprintf(i32 %213, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i64 0, i64 0), i32 %214, i32 %215, i32 %216, i64 %217)
  br label %227

219:                                              ; preds = %207
  %220 = load i32, i32* @stderr, align 4
  %221 = load i32, i32* %15, align 4
  %222 = load i32, i32* %16, align 4
  %223 = load i32, i32* %17, align 4
  %224 = load i32, i32* %18, align 4
  %225 = load i64, i64* %19, align 8
  %226 = call i32 (i32, i8*, ...) @fprintf(i32 %220, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.7, i64 0, i64 0), i32 %221, i32 %222, i32 %223, i32 %224, i64 %225)
  br label %227

227:                                              ; preds = %219, %212
  br label %250

228:                                              ; preds = %198
  %229 = load i32, i32* %23, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %246

231:                                              ; preds = %228
  %232 = load i32, i32* %18, align 4
  %233 = sext i32 %232 to i64
  %234 = load i64, i64* %20, align 8
  %235 = icmp ne i64 %233, %234
  br i1 %235, label %236, label %246

236:                                              ; preds = %231
  %237 = load i32, i32* %10, align 4
  %238 = add nsw i32 %237, 1
  store i32 %238, i32* %10, align 4
  %239 = load i32, i32* @stderr, align 4
  %240 = load i32, i32* %15, align 4
  %241 = load i32, i32* %16, align 4
  %242 = load i32, i32* %17, align 4
  %243 = load i32, i32* %18, align 4
  %244 = load i64, i64* %19, align 8
  %245 = call i32 (i32, i8*, ...) @fprintf(i32 %239, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0), i32 %240, i32 %241, i32 %242, i32 %243, i64 %244)
  br label %249

246:                                              ; preds = %231, %228
  %247 = load i32, i32* %12, align 4
  %248 = add nsw i32 %247, 1
  store i32 %248, i32* %12, align 4
  br label %249

249:                                              ; preds = %246, %236
  br label %250

250:                                              ; preds = %249, %227
  %251 = load i32, i32* %16, align 4
  %252 = load i32, i32* %15, align 4
  %253 = add nsw i32 %252, %251
  store i32 %253, i32* %15, align 4
  %254 = load i32, i32* %17, align 4
  %255 = load i32, i32* %16, align 4
  %256 = add nsw i32 %255, %254
  store i32 %256, i32* %16, align 4
  %257 = load i32, i32* %14, align 4
  store i32 %257, i32* %17, align 4
  %258 = load i32, i32* %14, align 4
  %259 = load i32, i32* %13, align 4
  %260 = shl i32 %258, %259
  %261 = call i32 (...) @rand()
  %262 = xor i32 %260, %261
  store i32 %262, i32* %14, align 4
  br label %263

263:                                              ; preds = %250
  %264 = load i32, i32* %5, align 4
  %265 = add nsw i32 %264, -1
  store i32 %265, i32* %5, align 4
  %266 = icmp sgt i32 %265, 0
  br i1 %266, label %64, label %267

267:                                              ; preds = %263
  %268 = load i32, i32* %8, align 4
  %269 = load i32, i32* %9, align 4
  %270 = load i32, i32* %12, align 4
  %271 = load i32, i32* %10, align 4
  %272 = load i32, i32* %11, align 4
  %273 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.9, i64 0, i64 0), i32 %268, i32 %269, i32 %270, i32 %271, i32 %272)
  store i32 0, i32* %4, align 4
  br label %274

274:                                              ; preds = %267, %31
  %275 = load i32, i32* %4, align 4
  ret i32 %275
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @printf(i8*, i32, ...) #1

declare dso_local i32 @rand(...) #1

declare dso_local i32 @png_64bit_product(i64, i64, i64*, i64*) #1

declare dso_local i32 @png_muldiv(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
