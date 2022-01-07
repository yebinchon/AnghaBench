; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mednafen/mednafen-1.21/src/md/cart/extr_ssp16.c_ptr1_read_.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mednafen/mednafen-1.21/src/md/cart/extr_ssp16.c_ptr1_read_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32*, i64*, i32*, i64* }

@ssp = common dso_local global %struct.TYPE_2__* null, align 8
@rST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @ptr1_read_ to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ptr1_read_(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* %6, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* %7, align 4
  %16 = or i32 %14, %15
  store i32 %16, i32* %10, align 4
  store i8* null, i8** %11, align 8
  %17 = load i32, i32* %10, align 4
  switch i32 %17, label %228 [
    i32 0, label %18
    i32 1, label %18
    i32 2, label %18
    i32 3, label %32
    i32 4, label %38
    i32 5, label %38
    i32 6, label %38
    i32 7, label %52
    i32 8, label %58
    i32 9, label %58
    i32 10, label %58
    i32 11, label %73
    i32 12, label %79
    i32 13, label %79
    i32 14, label %79
    i32 15, label %94
    i32 16, label %100
    i32 17, label %100
    i32 18, label %100
    i32 19, label %126
    i32 20, label %132
    i32 21, label %132
    i32 22, label %132
    i32 23, label %158
    i32 24, label %164
    i32 25, label %164
    i32 26, label %164
    i32 27, label %190
    i32 28, label %196
    i32 29, label %196
    i32 30, label %196
    i32 31, label %222
  ]

18:                                               ; preds = %3, %3, %3
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ssp, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ssp, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i64*, i64** %23, align 8
  %25 = load i32, i32* %10, align 4
  %26 = and i32 %25, 3
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i64, i64* %24, i64 %27
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds i32, i32* %21, i64 %29
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %4, align 4
  br label %251

32:                                               ; preds = %3
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ssp, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %4, align 4
  br label %251

38:                                               ; preds = %3, %3, %3
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ssp, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 2
  %41 = load i32*, i32** %40, align 8
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ssp, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 3
  %44 = load i64*, i64** %43, align 8
  %45 = load i32, i32* %10, align 4
  %46 = and i32 %45, 3
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i64, i64* %44, i64 %47
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds i32, i32* %41, i64 %49
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %4, align 4
  br label %251

52:                                               ; preds = %3
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ssp, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 2
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 0
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %4, align 4
  br label %251

58:                                               ; preds = %3, %3, %3
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ssp, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ssp, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  %64 = load i64*, i64** %63, align 8
  %65 = load i32, i32* %10, align 4
  %66 = and i32 %65, 3
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i64, i64* %64, i64 %67
  %69 = load i64, i64* %68, align 8
  %70 = add i64 %69, 1
  store i64 %70, i64* %68, align 8
  %71 = getelementptr inbounds i32, i32* %61, i64 %69
  %72 = load i32, i32* %71, align 4
  store i32 %72, i32* %4, align 4
  br label %251

73:                                               ; preds = %3
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ssp, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 1
  %78 = load i32, i32* %77, align 4
  store i32 %78, i32* %4, align 4
  br label %251

79:                                               ; preds = %3, %3, %3
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ssp, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 2
  %82 = load i32*, i32** %81, align 8
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ssp, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 3
  %85 = load i64*, i64** %84, align 8
  %86 = load i32, i32* %10, align 4
  %87 = and i32 %86, 3
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i64, i64* %85, i64 %88
  %90 = load i64, i64* %89, align 8
  %91 = add i64 %90, 1
  store i64 %91, i64* %89, align 8
  %92 = getelementptr inbounds i32, i32* %82, i64 %90
  %93 = load i32, i32* %92, align 4
  store i32 %93, i32* %4, align 4
  br label %251

94:                                               ; preds = %3
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ssp, align 8
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 2
  %97 = load i32*, i32** %96, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 1
  %99 = load i32, i32* %98, align 4
  store i32 %99, i32* %4, align 4
  br label %251

100:                                              ; preds = %3, %3, %3
  %101 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ssp, align 8
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 1
  %103 = load i64*, i64** %102, align 8
  %104 = load i32, i32* %10, align 4
  %105 = and i32 %104, 3
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i64, i64* %103, i64 %106
  %108 = bitcast i64* %107 to i8*
  store i8* %108, i8** %11, align 8
  %109 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ssp, align 8
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 0
  %111 = load i32*, i32** %110, align 8
  %112 = load i8*, i8** %11, align 8
  %113 = load i8, i8* %112, align 1
  %114 = zext i8 %113 to i64
  %115 = getelementptr inbounds i32, i32* %111, i64 %114
  %116 = load i32, i32* %115, align 4
  store i32 %116, i32* %10, align 4
  %117 = load i32, i32* @rST, align 4
  %118 = and i32 %117, 7
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %125, label %120

120:                                              ; preds = %100
  %121 = load i8*, i8** %11, align 8
  %122 = load i8, i8* %121, align 1
  %123 = add i8 %122, -1
  store i8 %123, i8* %121, align 1
  %124 = load i32, i32* %10, align 4
  store i32 %124, i32* %4, align 4
  br label %251

125:                                              ; preds = %100
  store i32 -1, i32* %9, align 4
  br label %229

126:                                              ; preds = %3
  %127 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ssp, align 8
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 0
  %129 = load i32*, i32** %128, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 2
  %131 = load i32, i32* %130, align 4
  store i32 %131, i32* %4, align 4
  br label %251

132:                                              ; preds = %3, %3, %3
  %133 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ssp, align 8
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 3
  %135 = load i64*, i64** %134, align 8
  %136 = load i32, i32* %10, align 4
  %137 = and i32 %136, 3
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i64, i64* %135, i64 %138
  %140 = bitcast i64* %139 to i8*
  store i8* %140, i8** %11, align 8
  %141 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ssp, align 8
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %141, i32 0, i32 2
  %143 = load i32*, i32** %142, align 8
  %144 = load i8*, i8** %11, align 8
  %145 = load i8, i8* %144, align 1
  %146 = zext i8 %145 to i64
  %147 = getelementptr inbounds i32, i32* %143, i64 %146
  %148 = load i32, i32* %147, align 4
  store i32 %148, i32* %10, align 4
  %149 = load i32, i32* @rST, align 4
  %150 = and i32 %149, 7
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %157, label %152

152:                                              ; preds = %132
  %153 = load i8*, i8** %11, align 8
  %154 = load i8, i8* %153, align 1
  %155 = add i8 %154, -1
  store i8 %155, i8* %153, align 1
  %156 = load i32, i32* %10, align 4
  store i32 %156, i32* %4, align 4
  br label %251

157:                                              ; preds = %132
  store i32 -1, i32* %9, align 4
  br label %229

158:                                              ; preds = %3
  %159 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ssp, align 8
  %160 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %159, i32 0, i32 2
  %161 = load i32*, i32** %160, align 8
  %162 = getelementptr inbounds i32, i32* %161, i64 2
  %163 = load i32, i32* %162, align 4
  store i32 %163, i32* %4, align 4
  br label %251

164:                                              ; preds = %3, %3, %3
  %165 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ssp, align 8
  %166 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %165, i32 0, i32 1
  %167 = load i64*, i64** %166, align 8
  %168 = load i32, i32* %10, align 4
  %169 = and i32 %168, 3
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i64, i64* %167, i64 %170
  %172 = bitcast i64* %171 to i8*
  store i8* %172, i8** %11, align 8
  %173 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ssp, align 8
  %174 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %173, i32 0, i32 0
  %175 = load i32*, i32** %174, align 8
  %176 = load i8*, i8** %11, align 8
  %177 = load i8, i8* %176, align 1
  %178 = zext i8 %177 to i64
  %179 = getelementptr inbounds i32, i32* %175, i64 %178
  %180 = load i32, i32* %179, align 4
  store i32 %180, i32* %10, align 4
  %181 = load i32, i32* @rST, align 4
  %182 = and i32 %181, 7
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %189, label %184

184:                                              ; preds = %164
  %185 = load i8*, i8** %11, align 8
  %186 = load i8, i8* %185, align 1
  %187 = add i8 %186, 1
  store i8 %187, i8* %185, align 1
  %188 = load i32, i32* %10, align 4
  store i32 %188, i32* %4, align 4
  br label %251

189:                                              ; preds = %164
  store i32 1, i32* %9, align 4
  br label %229

190:                                              ; preds = %3
  %191 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ssp, align 8
  %192 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %191, i32 0, i32 0
  %193 = load i32*, i32** %192, align 8
  %194 = getelementptr inbounds i32, i32* %193, i64 3
  %195 = load i32, i32* %194, align 4
  store i32 %195, i32* %4, align 4
  br label %251

196:                                              ; preds = %3, %3, %3
  %197 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ssp, align 8
  %198 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %197, i32 0, i32 3
  %199 = load i64*, i64** %198, align 8
  %200 = load i32, i32* %10, align 4
  %201 = and i32 %200, 3
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i64, i64* %199, i64 %202
  %204 = bitcast i64* %203 to i8*
  store i8* %204, i8** %11, align 8
  %205 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ssp, align 8
  %206 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %205, i32 0, i32 2
  %207 = load i32*, i32** %206, align 8
  %208 = load i8*, i8** %11, align 8
  %209 = load i8, i8* %208, align 1
  %210 = zext i8 %209 to i64
  %211 = getelementptr inbounds i32, i32* %207, i64 %210
  %212 = load i32, i32* %211, align 4
  store i32 %212, i32* %10, align 4
  %213 = load i32, i32* @rST, align 4
  %214 = and i32 %213, 7
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %221, label %216

216:                                              ; preds = %196
  %217 = load i8*, i8** %11, align 8
  %218 = load i8, i8* %217, align 1
  %219 = add i8 %218, 1
  store i8 %219, i8* %217, align 1
  %220 = load i32, i32* %10, align 4
  store i32 %220, i32* %4, align 4
  br label %251

221:                                              ; preds = %196
  store i32 1, i32* %9, align 4
  br label %229

222:                                              ; preds = %3
  %223 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ssp, align 8
  %224 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %223, i32 0, i32 2
  %225 = load i32*, i32** %224, align 8
  %226 = getelementptr inbounds i32, i32* %225, i64 3
  %227 = load i32, i32* %226, align 4
  store i32 %227, i32* %4, align 4
  br label %251

228:                                              ; preds = %3
  store i32 0, i32* %4, align 4
  br label %251

229:                                              ; preds = %221, %189, %157, %125
  %230 = load i32, i32* @rST, align 4
  %231 = and i32 %230, 7
  %232 = shl i32 1, %231
  %233 = sub nsw i32 %232, 1
  store i32 %233, i32* %8, align 4
  %234 = load i8*, i8** %11, align 8
  %235 = load i8, i8* %234, align 1
  %236 = zext i8 %235 to i32
  %237 = load i32, i32* %8, align 4
  %238 = xor i32 %237, -1
  %239 = and i32 %236, %238
  %240 = load i8*, i8** %11, align 8
  %241 = load i8, i8* %240, align 1
  %242 = zext i8 %241 to i32
  %243 = load i32, i32* %9, align 4
  %244 = add nsw i32 %242, %243
  %245 = load i32, i32* %8, align 4
  %246 = and i32 %244, %245
  %247 = or i32 %239, %246
  %248 = trunc i32 %247 to i8
  %249 = load i8*, i8** %11, align 8
  store i8 %248, i8* %249, align 1
  %250 = load i32, i32* %10, align 4
  store i32 %250, i32* %4, align 4
  br label %251

251:                                              ; preds = %229, %228, %222, %216, %190, %184, %158, %152, %126, %120, %94, %79, %73, %58, %52, %38, %32, %18
  %252 = load i32, i32* %4, align 4
  ret i32 %252
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
