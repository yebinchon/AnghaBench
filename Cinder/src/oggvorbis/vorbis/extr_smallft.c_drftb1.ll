; ModuleID = '/home/carl/AnghaBench/Cinder/src/oggvorbis/vorbis/extr_smallft.c_drftb1.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/oggvorbis/vorbis/extr_smallft.c_drftb1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, float*, float*, float*, i32*)* @drftb1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @drftb1(i32 %0, float* %1, float* %2, float* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca float*, align 8
  %8 = alloca float*, align 8
  %9 = alloca float*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
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
  store i32 %0, i32* %6, align 4
  store float* %1, float** %7, align 8
  store float* %2, float** %8, align 8
  store float* %3, float** %9, align 8
  store i32* %4, i32** %10, align 8
  %23 = load i32*, i32** %10, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 1
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %16, align 4
  store i32 0, i32* %15, align 4
  store i32 1, i32* %13, align 4
  store i32 1, i32* %18, align 4
  store i32 0, i32* %12, align 4
  br label %26

26:                                               ; preds = %230, %5
  %27 = load i32, i32* %12, align 4
  %28 = load i32, i32* %16, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %233

30:                                               ; preds = %26
  %31 = load i32*, i32** %10, align 8
  %32 = load i32, i32* %12, align 4
  %33 = add nsw i32 %32, 2
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %31, i64 %34
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %17, align 4
  %37 = load i32, i32* %17, align 4
  %38 = load i32, i32* %13, align 4
  %39 = mul nsw i32 %37, %38
  store i32 %39, i32* %14, align 4
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* %14, align 4
  %42 = sdiv i32 %40, %41
  store i32 %42, i32* %21, align 4
  %43 = load i32, i32* %21, align 4
  %44 = load i32, i32* %13, align 4
  %45 = mul nsw i32 %43, %44
  store i32 %45, i32* %22, align 4
  %46 = load i32, i32* %17, align 4
  %47 = icmp ne i32 %46, 4
  br i1 %47, label %48, label %49

48:                                               ; preds = %30
  br label %103

49:                                               ; preds = %30
  %50 = load i32, i32* %18, align 4
  %51 = load i32, i32* %21, align 4
  %52 = add nsw i32 %50, %51
  store i32 %52, i32* %19, align 4
  %53 = load i32, i32* %19, align 4
  %54 = load i32, i32* %21, align 4
  %55 = add nsw i32 %53, %54
  store i32 %55, i32* %20, align 4
  %56 = load i32, i32* %15, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %79

58:                                               ; preds = %49
  %59 = load i32, i32* %21, align 4
  %60 = load i32, i32* %13, align 4
  %61 = load float*, float** %8, align 8
  %62 = load float*, float** %7, align 8
  %63 = load float*, float** %9, align 8
  %64 = load i32, i32* %18, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds float, float* %63, i64 %65
  %67 = getelementptr inbounds float, float* %66, i64 -1
  %68 = load float*, float** %9, align 8
  %69 = load i32, i32* %19, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds float, float* %68, i64 %70
  %72 = getelementptr inbounds float, float* %71, i64 -1
  %73 = load float*, float** %9, align 8
  %74 = load i32, i32* %20, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds float, float* %73, i64 %75
  %77 = getelementptr inbounds float, float* %76, i64 -1
  %78 = call i32 @dradb4(i32 %59, i32 %60, float* %61, float* %62, float* %67, float* %72, float* %77)
  br label %100

79:                                               ; preds = %49
  %80 = load i32, i32* %21, align 4
  %81 = load i32, i32* %13, align 4
  %82 = load float*, float** %7, align 8
  %83 = load float*, float** %8, align 8
  %84 = load float*, float** %9, align 8
  %85 = load i32, i32* %18, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds float, float* %84, i64 %86
  %88 = getelementptr inbounds float, float* %87, i64 -1
  %89 = load float*, float** %9, align 8
  %90 = load i32, i32* %19, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds float, float* %89, i64 %91
  %93 = getelementptr inbounds float, float* %92, i64 -1
  %94 = load float*, float** %9, align 8
  %95 = load i32, i32* %20, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds float, float* %94, i64 %96
  %98 = getelementptr inbounds float, float* %97, i64 -1
  %99 = call i32 @dradb4(i32 %80, i32 %81, float* %82, float* %83, float* %88, float* %93, float* %98)
  br label %100

100:                                              ; preds = %79, %58
  %101 = load i32, i32* %15, align 4
  %102 = sub nsw i32 1, %101
  store i32 %102, i32* %15, align 4
  br label %222

103:                                              ; preds = %48
  %104 = load i32, i32* %17, align 4
  %105 = icmp ne i32 %104, 2
  br i1 %105, label %106, label %107

106:                                              ; preds = %103
  br label %135

107:                                              ; preds = %103
  %108 = load i32, i32* %15, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %121

110:                                              ; preds = %107
  %111 = load i32, i32* %21, align 4
  %112 = load i32, i32* %13, align 4
  %113 = load float*, float** %8, align 8
  %114 = load float*, float** %7, align 8
  %115 = load float*, float** %9, align 8
  %116 = load i32, i32* %18, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds float, float* %115, i64 %117
  %119 = getelementptr inbounds float, float* %118, i64 -1
  %120 = call i32 @dradb2(i32 %111, i32 %112, float* %113, float* %114, float* %119)
  br label %132

121:                                              ; preds = %107
  %122 = load i32, i32* %21, align 4
  %123 = load i32, i32* %13, align 4
  %124 = load float*, float** %7, align 8
  %125 = load float*, float** %8, align 8
  %126 = load float*, float** %9, align 8
  %127 = load i32, i32* %18, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds float, float* %126, i64 %128
  %130 = getelementptr inbounds float, float* %129, i64 -1
  %131 = call i32 @dradb2(i32 %122, i32 %123, float* %124, float* %125, float* %130)
  br label %132

132:                                              ; preds = %121, %110
  %133 = load i32, i32* %15, align 4
  %134 = sub nsw i32 1, %133
  store i32 %134, i32* %15, align 4
  br label %222

135:                                              ; preds = %106
  %136 = load i32, i32* %17, align 4
  %137 = icmp ne i32 %136, 3
  br i1 %137, label %138, label %139

138:                                              ; preds = %135
  br label %180

139:                                              ; preds = %135
  %140 = load i32, i32* %18, align 4
  %141 = load i32, i32* %21, align 4
  %142 = add nsw i32 %140, %141
  store i32 %142, i32* %19, align 4
  %143 = load i32, i32* %15, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %161

145:                                              ; preds = %139
  %146 = load i32, i32* %21, align 4
  %147 = load i32, i32* %13, align 4
  %148 = load float*, float** %8, align 8
  %149 = load float*, float** %7, align 8
  %150 = load float*, float** %9, align 8
  %151 = load i32, i32* %18, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds float, float* %150, i64 %152
  %154 = getelementptr inbounds float, float* %153, i64 -1
  %155 = load float*, float** %9, align 8
  %156 = load i32, i32* %19, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds float, float* %155, i64 %157
  %159 = getelementptr inbounds float, float* %158, i64 -1
  %160 = call i32 @dradb3(i32 %146, i32 %147, float* %148, float* %149, float* %154, float* %159)
  br label %177

161:                                              ; preds = %139
  %162 = load i32, i32* %21, align 4
  %163 = load i32, i32* %13, align 4
  %164 = load float*, float** %7, align 8
  %165 = load float*, float** %8, align 8
  %166 = load float*, float** %9, align 8
  %167 = load i32, i32* %18, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds float, float* %166, i64 %168
  %170 = getelementptr inbounds float, float* %169, i64 -1
  %171 = load float*, float** %9, align 8
  %172 = load i32, i32* %19, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds float, float* %171, i64 %173
  %175 = getelementptr inbounds float, float* %174, i64 -1
  %176 = call i32 @dradb3(i32 %162, i32 %163, float* %164, float* %165, float* %170, float* %175)
  br label %177

177:                                              ; preds = %161, %145
  %178 = load i32, i32* %15, align 4
  %179 = sub nsw i32 1, %178
  store i32 %179, i32* %15, align 4
  br label %222

180:                                              ; preds = %138
  %181 = load i32, i32* %15, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %199

183:                                              ; preds = %180
  %184 = load i32, i32* %21, align 4
  %185 = load i32, i32* %17, align 4
  %186 = load i32, i32* %13, align 4
  %187 = load i32, i32* %22, align 4
  %188 = load float*, float** %8, align 8
  %189 = load float*, float** %8, align 8
  %190 = load float*, float** %8, align 8
  %191 = load float*, float** %7, align 8
  %192 = load float*, float** %7, align 8
  %193 = load float*, float** %9, align 8
  %194 = load i32, i32* %18, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds float, float* %193, i64 %195
  %197 = getelementptr inbounds float, float* %196, i64 -1
  %198 = call i32 @dradbg(i32 %184, i32 %185, i32 %186, i32 %187, float* %188, float* %189, float* %190, float* %191, float* %192, float* %197)
  br label %215

199:                                              ; preds = %180
  %200 = load i32, i32* %21, align 4
  %201 = load i32, i32* %17, align 4
  %202 = load i32, i32* %13, align 4
  %203 = load i32, i32* %22, align 4
  %204 = load float*, float** %7, align 8
  %205 = load float*, float** %7, align 8
  %206 = load float*, float** %7, align 8
  %207 = load float*, float** %8, align 8
  %208 = load float*, float** %8, align 8
  %209 = load float*, float** %9, align 8
  %210 = load i32, i32* %18, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds float, float* %209, i64 %211
  %213 = getelementptr inbounds float, float* %212, i64 -1
  %214 = call i32 @dradbg(i32 %200, i32 %201, i32 %202, i32 %203, float* %204, float* %205, float* %206, float* %207, float* %208, float* %213)
  br label %215

215:                                              ; preds = %199, %183
  %216 = load i32, i32* %21, align 4
  %217 = icmp eq i32 %216, 1
  br i1 %217, label %218, label %221

218:                                              ; preds = %215
  %219 = load i32, i32* %15, align 4
  %220 = sub nsw i32 1, %219
  store i32 %220, i32* %15, align 4
  br label %221

221:                                              ; preds = %218, %215
  br label %222

222:                                              ; preds = %221, %177, %132, %100
  %223 = load i32, i32* %14, align 4
  store i32 %223, i32* %13, align 4
  %224 = load i32, i32* %17, align 4
  %225 = sub nsw i32 %224, 1
  %226 = load i32, i32* %21, align 4
  %227 = mul nsw i32 %225, %226
  %228 = load i32, i32* %18, align 4
  %229 = add nsw i32 %228, %227
  store i32 %229, i32* %18, align 4
  br label %230

230:                                              ; preds = %222
  %231 = load i32, i32* %12, align 4
  %232 = add nsw i32 %231, 1
  store i32 %232, i32* %12, align 4
  br label %26

233:                                              ; preds = %26
  %234 = load i32, i32* %15, align 4
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %236, label %237

236:                                              ; preds = %233
  br label %255

237:                                              ; preds = %233
  store i32 0, i32* %11, align 4
  br label %238

238:                                              ; preds = %252, %237
  %239 = load i32, i32* %11, align 4
  %240 = load i32, i32* %6, align 4
  %241 = icmp slt i32 %239, %240
  br i1 %241, label %242, label %255

242:                                              ; preds = %238
  %243 = load float*, float** %8, align 8
  %244 = load i32, i32* %11, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds float, float* %243, i64 %245
  %247 = load float, float* %246, align 4
  %248 = load float*, float** %7, align 8
  %249 = load i32, i32* %11, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds float, float* %248, i64 %250
  store float %247, float* %251, align 4
  br label %252

252:                                              ; preds = %242
  %253 = load i32, i32* %11, align 4
  %254 = add nsw i32 %253, 1
  store i32 %254, i32* %11, align 4
  br label %238

255:                                              ; preds = %236, %238
  ret void
}

declare dso_local i32 @dradb4(i32, i32, float*, float*, float*, float*, float*) #1

declare dso_local i32 @dradb2(i32, i32, float*, float*, float*) #1

declare dso_local i32 @dradb3(i32, i32, float*, float*, float*, float*) #1

declare dso_local i32 @dradbg(i32, i32, i32, i32, float*, float*, float*, float*, float*, float*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
