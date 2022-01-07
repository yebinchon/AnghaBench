; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_cl_cin.c_blitVQQuad32fs.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_cl_cin.c_blitVQQuad32fs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32* }

@cinTable = common dso_local global %struct.TYPE_3__* null, align 8
@currentHandle = common dso_local global i64 0, align 8
@vq8 = common dso_local global i32* null, align 8
@vq4 = common dso_local global i32* null, align 8
@vq2 = common dso_local global i32* null, align 8
@cin = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32**, i8*)* @blitVQQuad32fs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @blitVQQuad32fs(i32** %0, i8* %1) #0 {
  %3 = alloca i32**, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32** %0, i32*** %3, align 8
  store i8* %1, i8** %4, align 8
  store i16 0, i16* %5, align 2
  store i16 0, i16* %6, align 2
  store i32 0, i32* %8, align 4
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cinTable, align 8
  %12 = load i64, i64* @currentHandle, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i64 %12
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %10, align 4
  br label %16

16:                                               ; preds = %254, %2
  %17 = load i16, i16* %5, align 2
  %18 = icmp ne i16 %17, 0
  br i1 %18, label %33, label %19

19:                                               ; preds = %16
  store i16 7, i16* %5, align 2
  %20 = load i8*, i8** %4, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 0
  %22 = load i8, i8* %21, align 1
  %23 = zext i8 %22 to i32
  %24 = load i8*, i8** %4, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 1
  %26 = load i8, i8* %25, align 1
  %27 = zext i8 %26 to i32
  %28 = mul nsw i32 %27, 256
  %29 = add nsw i32 %23, %28
  %30 = trunc i32 %29 to i16
  store i16 %30, i16* %6, align 2
  %31 = load i8*, i8** %4, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 2
  store i8* %32, i8** %4, align 8
  br label %36

33:                                               ; preds = %16
  %34 = load i16, i16* %5, align 2
  %35 = add i16 %34, -1
  store i16 %35, i16* %5, align 2
  br label %36

36:                                               ; preds = %33, %19
  %37 = load i16, i16* %6, align 2
  %38 = zext i16 %37 to i32
  %39 = and i32 %38, 49152
  %40 = trunc i32 %39 to i16
  store i16 %40, i16* %7, align 2
  %41 = load i16, i16* %6, align 2
  %42 = zext i16 %41 to i32
  %43 = shl i32 %42, 2
  %44 = trunc i32 %43 to i16
  store i16 %44, i16* %6, align 2
  %45 = load i16, i16* %7, align 2
  %46 = zext i16 %45 to i32
  switch i32 %46, label %253 [
    i32 32768, label %47
    i32 49152, label %66
    i32 16384, label %225
    i32 0, label %250
  ]

47:                                               ; preds = %36
  %48 = load i32*, i32** @vq8, align 8
  %49 = load i8*, i8** %4, align 8
  %50 = load i8, i8* %49, align 1
  %51 = zext i8 %50 to i32
  %52 = mul nsw i32 %51, 128
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %48, i64 %53
  %55 = load i32**, i32*** %3, align 8
  %56 = load i32, i32* %8, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds i32*, i32** %55, i64 %57
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %10, align 4
  %61 = call i32 @blit8_32(i32* %54, i32* %59, i32 %60)
  %62 = load i8*, i8** %4, align 8
  %63 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %63, i8** %4, align 8
  %64 = load i32, i32* %8, align 4
  %65 = add i32 %64, 5
  store i32 %65, i32* %8, align 4
  br label %253

66:                                               ; preds = %36
  %67 = load i32, i32* %8, align 4
  %68 = add i32 %67, 1
  store i32 %68, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %69

69:                                               ; preds = %221, %66
  %70 = load i32, i32* %9, align 4
  %71 = icmp ult i32 %70, 4
  br i1 %71, label %72, label %224

72:                                               ; preds = %69
  %73 = load i16, i16* %5, align 2
  %74 = icmp ne i16 %73, 0
  br i1 %74, label %89, label %75

75:                                               ; preds = %72
  store i16 7, i16* %5, align 2
  %76 = load i8*, i8** %4, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 0
  %78 = load i8, i8* %77, align 1
  %79 = zext i8 %78 to i32
  %80 = load i8*, i8** %4, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 1
  %82 = load i8, i8* %81, align 1
  %83 = zext i8 %82 to i32
  %84 = mul nsw i32 %83, 256
  %85 = add nsw i32 %79, %84
  %86 = trunc i32 %85 to i16
  store i16 %86, i16* %6, align 2
  %87 = load i8*, i8** %4, align 8
  %88 = getelementptr inbounds i8, i8* %87, i64 2
  store i8* %88, i8** %4, align 8
  br label %92

89:                                               ; preds = %72
  %90 = load i16, i16* %5, align 2
  %91 = add i16 %90, -1
  store i16 %91, i16* %5, align 2
  br label %92

92:                                               ; preds = %89, %75
  %93 = load i16, i16* %6, align 2
  %94 = zext i16 %93 to i32
  %95 = and i32 %94, 49152
  %96 = trunc i32 %95 to i16
  store i16 %96, i16* %7, align 2
  %97 = load i16, i16* %6, align 2
  %98 = zext i16 %97 to i32
  %99 = shl i32 %98, 2
  %100 = trunc i32 %99 to i16
  store i16 %100, i16* %6, align 2
  %101 = load i16, i16* %7, align 2
  %102 = zext i16 %101 to i32
  switch i32 %102, label %218 [
    i32 32768, label %103
    i32 49152, label %120
    i32 16384, label %195
  ]

103:                                              ; preds = %92
  %104 = load i32*, i32** @vq4, align 8
  %105 = load i8*, i8** %4, align 8
  %106 = load i8, i8* %105, align 1
  %107 = zext i8 %106 to i32
  %108 = mul nsw i32 %107, 32
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %104, i64 %109
  %111 = load i32**, i32*** %3, align 8
  %112 = load i32, i32* %8, align 4
  %113 = zext i32 %112 to i64
  %114 = getelementptr inbounds i32*, i32** %111, i64 %113
  %115 = load i32*, i32** %114, align 8
  %116 = load i32, i32* %10, align 4
  %117 = call i32 @blit4_32(i32* %110, i32* %115, i32 %116)
  %118 = load i8*, i8** %4, align 8
  %119 = getelementptr inbounds i8, i8* %118, i32 1
  store i8* %119, i8** %4, align 8
  br label %218

120:                                              ; preds = %92
  %121 = load i32*, i32** @vq2, align 8
  %122 = load i8*, i8** %4, align 8
  %123 = load i8, i8* %122, align 1
  %124 = zext i8 %123 to i32
  %125 = mul nsw i32 %124, 8
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %121, i64 %126
  %128 = load i32**, i32*** %3, align 8
  %129 = load i32, i32* %8, align 4
  %130 = zext i32 %129 to i64
  %131 = getelementptr inbounds i32*, i32** %128, i64 %130
  %132 = load i32*, i32** %131, align 8
  %133 = load i32, i32* %10, align 4
  %134 = call i32 @blit2_32(i32* %127, i32* %132, i32 %133)
  %135 = load i8*, i8** %4, align 8
  %136 = getelementptr inbounds i8, i8* %135, i32 1
  store i8* %136, i8** %4, align 8
  %137 = load i32*, i32** @vq2, align 8
  %138 = load i8*, i8** %4, align 8
  %139 = load i8, i8* %138, align 1
  %140 = zext i8 %139 to i32
  %141 = mul nsw i32 %140, 8
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %137, i64 %142
  %144 = load i32**, i32*** %3, align 8
  %145 = load i32, i32* %8, align 4
  %146 = zext i32 %145 to i64
  %147 = getelementptr inbounds i32*, i32** %144, i64 %146
  %148 = load i32*, i32** %147, align 8
  %149 = getelementptr inbounds i32, i32* %148, i64 8
  %150 = load i32, i32* %10, align 4
  %151 = call i32 @blit2_32(i32* %143, i32* %149, i32 %150)
  %152 = load i8*, i8** %4, align 8
  %153 = getelementptr inbounds i8, i8* %152, i32 1
  store i8* %153, i8** %4, align 8
  %154 = load i32*, i32** @vq2, align 8
  %155 = load i8*, i8** %4, align 8
  %156 = load i8, i8* %155, align 1
  %157 = zext i8 %156 to i32
  %158 = mul nsw i32 %157, 8
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i32, i32* %154, i64 %159
  %161 = load i32**, i32*** %3, align 8
  %162 = load i32, i32* %8, align 4
  %163 = zext i32 %162 to i64
  %164 = getelementptr inbounds i32*, i32** %161, i64 %163
  %165 = load i32*, i32** %164, align 8
  %166 = load i32, i32* %10, align 4
  %167 = mul nsw i32 %166, 2
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i32, i32* %165, i64 %168
  %170 = load i32, i32* %10, align 4
  %171 = call i32 @blit2_32(i32* %160, i32* %169, i32 %170)
  %172 = load i8*, i8** %4, align 8
  %173 = getelementptr inbounds i8, i8* %172, i32 1
  store i8* %173, i8** %4, align 8
  %174 = load i32*, i32** @vq2, align 8
  %175 = load i8*, i8** %4, align 8
  %176 = load i8, i8* %175, align 1
  %177 = zext i8 %176 to i32
  %178 = mul nsw i32 %177, 8
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i32, i32* %174, i64 %179
  %181 = load i32**, i32*** %3, align 8
  %182 = load i32, i32* %8, align 4
  %183 = zext i32 %182 to i64
  %184 = getelementptr inbounds i32*, i32** %181, i64 %183
  %185 = load i32*, i32** %184, align 8
  %186 = load i32, i32* %10, align 4
  %187 = mul nsw i32 %186, 2
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i32, i32* %185, i64 %188
  %190 = getelementptr inbounds i32, i32* %189, i64 8
  %191 = load i32, i32* %10, align 4
  %192 = call i32 @blit2_32(i32* %180, i32* %190, i32 %191)
  %193 = load i8*, i8** %4, align 8
  %194 = getelementptr inbounds i8, i8* %193, i32 1
  store i8* %194, i8** %4, align 8
  br label %218

195:                                              ; preds = %92
  %196 = load i32**, i32*** %3, align 8
  %197 = load i32, i32* %8, align 4
  %198 = zext i32 %197 to i64
  %199 = getelementptr inbounds i32*, i32** %196, i64 %198
  %200 = load i32*, i32** %199, align 8
  %201 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cin, i32 0, i32 0), align 8
  %202 = load i8*, i8** %4, align 8
  %203 = load i8, i8* %202, align 1
  %204 = zext i8 %203 to i64
  %205 = getelementptr inbounds i32, i32* %201, i64 %204
  %206 = load i32, i32* %205, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i32, i32* %200, i64 %207
  %209 = load i32**, i32*** %3, align 8
  %210 = load i32, i32* %8, align 4
  %211 = zext i32 %210 to i64
  %212 = getelementptr inbounds i32*, i32** %209, i64 %211
  %213 = load i32*, i32** %212, align 8
  %214 = load i32, i32* %10, align 4
  %215 = call i32 @move4_32(i32* %208, i32* %213, i32 %214)
  %216 = load i8*, i8** %4, align 8
  %217 = getelementptr inbounds i8, i8* %216, i32 1
  store i8* %217, i8** %4, align 8
  br label %218

218:                                              ; preds = %92, %195, %120, %103
  %219 = load i32, i32* %8, align 4
  %220 = add i32 %219, 1
  store i32 %220, i32* %8, align 4
  br label %221

221:                                              ; preds = %218
  %222 = load i32, i32* %9, align 4
  %223 = add i32 %222, 1
  store i32 %223, i32* %9, align 4
  br label %69

224:                                              ; preds = %69
  br label %253

225:                                              ; preds = %36
  %226 = load i32**, i32*** %3, align 8
  %227 = load i32, i32* %8, align 4
  %228 = zext i32 %227 to i64
  %229 = getelementptr inbounds i32*, i32** %226, i64 %228
  %230 = load i32*, i32** %229, align 8
  %231 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cin, i32 0, i32 0), align 8
  %232 = load i8*, i8** %4, align 8
  %233 = load i8, i8* %232, align 1
  %234 = zext i8 %233 to i64
  %235 = getelementptr inbounds i32, i32* %231, i64 %234
  %236 = load i32, i32* %235, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds i32, i32* %230, i64 %237
  %239 = load i32**, i32*** %3, align 8
  %240 = load i32, i32* %8, align 4
  %241 = zext i32 %240 to i64
  %242 = getelementptr inbounds i32*, i32** %239, i64 %241
  %243 = load i32*, i32** %242, align 8
  %244 = load i32, i32* %10, align 4
  %245 = call i32 @move8_32(i32* %238, i32* %243, i32 %244)
  %246 = load i8*, i8** %4, align 8
  %247 = getelementptr inbounds i8, i8* %246, i32 1
  store i8* %247, i8** %4, align 8
  %248 = load i32, i32* %8, align 4
  %249 = add i32 %248, 5
  store i32 %249, i32* %8, align 4
  br label %253

250:                                              ; preds = %36
  %251 = load i32, i32* %8, align 4
  %252 = add i32 %251, 5
  store i32 %252, i32* %8, align 4
  br label %253

253:                                              ; preds = %36, %250, %225, %224, %47
  br label %254

254:                                              ; preds = %253
  %255 = load i32**, i32*** %3, align 8
  %256 = load i32, i32* %8, align 4
  %257 = zext i32 %256 to i64
  %258 = getelementptr inbounds i32*, i32** %255, i64 %257
  %259 = load i32*, i32** %258, align 8
  %260 = icmp ne i32* %259, null
  br i1 %260, label %16, label %261

261:                                              ; preds = %254
  ret void
}

declare dso_local i32 @blit8_32(i32*, i32*, i32) #1

declare dso_local i32 @blit4_32(i32*, i32*, i32) #1

declare dso_local i32 @blit2_32(i32*, i32*, i32) #1

declare dso_local i32 @move4_32(i32*, i32*, i32) #1

declare dso_local i32 @move8_32(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
