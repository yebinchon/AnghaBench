; ModuleID = '/home/carl/AnghaBench/RetroArch/griffin/extr_..libretro-commonencodingsencoding_base64.c_base64.c'
source_filename = "/home/carl/AnghaBench/RetroArch/griffin/extr_..libretro-commonencodingsencoding_base64.c_base64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@b64 = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @base64(i8* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8, align 1
  %15 = alloca i8, align 1
  %16 = alloca i8, align 1
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %17 = load i8*, i8** %5, align 8
  store i8* %17, i8** %8, align 8
  store i32 0, i32* %10, align 4
  %18 = load i32, i32* %6, align 4
  %19 = srem i32 %18, 3
  store i32 %19, i32* %12, align 4
  %20 = load i32, i32* %12, align 4
  %21 = and i32 %20, 1
  %22 = shl i32 %21, 1
  %23 = load i32, i32* %12, align 4
  %24 = and i32 %23, 2
  %25 = ashr i32 %24, 1
  %26 = add nsw i32 %22, %25
  store i32 %26, i32* %13, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* %13, align 4
  %29 = add nsw i32 %27, %28
  %30 = mul nsw i32 4, %29
  %31 = sdiv i32 %30, 3
  %32 = load i32*, i32** %7, align 8
  store i32 %31, i32* %32, align 4
  %33 = load i32*, i32** %7, align 8
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %34, 1
  %36 = call i64 @malloc(i32 %35)
  %37 = inttoptr i64 %36 to i8*
  store i8* %37, i8** %9, align 8
  %38 = load i8*, i8** %9, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %3
  store i8* null, i8** %4, align 8
  br label %249

41:                                               ; preds = %3
  store i32 0, i32* %11, align 4
  br label %42

42:                                               ; preds = %123, %41
  %43 = load i32, i32* %11, align 4
  %44 = load i32, i32* %6, align 4
  %45 = sub nsw i32 %44, 3
  %46 = icmp sle i32 %43, %45
  br i1 %46, label %47, label %126

47:                                               ; preds = %42
  %48 = load i8*, i8** %8, align 8
  %49 = load i32, i32* %11, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8, i8* %48, i64 %50
  %52 = load i8, i8* %51, align 1
  store i8 %52, i8* %14, align 1
  %53 = load i8*, i8** %8, align 8
  %54 = load i32, i32* %11, align 4
  %55 = add nsw i32 %54, 1
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8, i8* %53, i64 %56
  %58 = load i8, i8* %57, align 1
  store i8 %58, i8* %15, align 1
  %59 = load i8*, i8** %8, align 8
  %60 = load i32, i32* %11, align 4
  %61 = add nsw i32 %60, 2
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8, i8* %59, i64 %62
  %64 = load i8, i8* %63, align 1
  store i8 %64, i8* %16, align 1
  %65 = load i8*, i8** @b64, align 8
  %66 = load i8, i8* %14, align 1
  %67 = zext i8 %66 to i32
  %68 = ashr i32 %67, 2
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8, i8* %65, i64 %69
  %71 = load i8, i8* %70, align 1
  %72 = load i8*, i8** %9, align 8
  %73 = load i32, i32* %10, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %10, align 4
  %75 = sext i32 %73 to i64
  %76 = getelementptr inbounds i8, i8* %72, i64 %75
  store i8 %71, i8* %76, align 1
  %77 = load i8*, i8** @b64, align 8
  %78 = load i8, i8* %14, align 1
  %79 = zext i8 %78 to i32
  %80 = and i32 3, %79
  %81 = shl i32 %80, 4
  %82 = load i8, i8* %15, align 1
  %83 = zext i8 %82 to i32
  %84 = ashr i32 %83, 4
  %85 = add nsw i32 %81, %84
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8, i8* %77, i64 %86
  %88 = load i8, i8* %87, align 1
  %89 = load i8*, i8** %9, align 8
  %90 = load i32, i32* %10, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %10, align 4
  %92 = sext i32 %90 to i64
  %93 = getelementptr inbounds i8, i8* %89, i64 %92
  store i8 %88, i8* %93, align 1
  %94 = load i8*, i8** @b64, align 8
  %95 = load i8, i8* %15, align 1
  %96 = zext i8 %95 to i32
  %97 = and i32 15, %96
  %98 = shl i32 %97, 2
  %99 = load i8, i8* %16, align 1
  %100 = zext i8 %99 to i32
  %101 = ashr i32 %100, 6
  %102 = add nsw i32 %98, %101
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i8, i8* %94, i64 %103
  %105 = load i8, i8* %104, align 1
  %106 = load i8*, i8** %9, align 8
  %107 = load i32, i32* %10, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %10, align 4
  %109 = sext i32 %107 to i64
  %110 = getelementptr inbounds i8, i8* %106, i64 %109
  store i8 %105, i8* %110, align 1
  %111 = load i8*, i8** @b64, align 8
  %112 = load i8, i8* %16, align 1
  %113 = zext i8 %112 to i32
  %114 = and i32 63, %113
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i8, i8* %111, i64 %115
  %117 = load i8, i8* %116, align 1
  %118 = load i8*, i8** %9, align 8
  %119 = load i32, i32* %10, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %10, align 4
  %121 = sext i32 %119 to i64
  %122 = getelementptr inbounds i8, i8* %118, i64 %121
  store i8 %117, i8* %122, align 1
  br label %123

123:                                              ; preds = %47
  %124 = load i32, i32* %11, align 4
  %125 = add nsw i32 %124, 3
  store i32 %125, i32* %11, align 4
  br label %42

126:                                              ; preds = %42
  %127 = load i32, i32* %13, align 4
  %128 = icmp eq i32 %127, 2
  br i1 %128, label %129, label %173

129:                                              ; preds = %126
  %130 = load i8*, i8** @b64, align 8
  %131 = load i8*, i8** %8, align 8
  %132 = load i32, i32* %11, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i8, i8* %131, i64 %133
  %135 = load i8, i8* %134, align 1
  %136 = zext i8 %135 to i32
  %137 = ashr i32 %136, 2
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i8, i8* %130, i64 %138
  %140 = load i8, i8* %139, align 1
  %141 = load i8*, i8** %9, align 8
  %142 = load i32, i32* %10, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %10, align 4
  %144 = sext i32 %142 to i64
  %145 = getelementptr inbounds i8, i8* %141, i64 %144
  store i8 %140, i8* %145, align 1
  %146 = load i8*, i8** @b64, align 8
  %147 = load i8*, i8** %8, align 8
  %148 = load i32, i32* %11, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i8, i8* %147, i64 %149
  %151 = load i8, i8* %150, align 1
  %152 = zext i8 %151 to i32
  %153 = and i32 3, %152
  %154 = shl i32 %153, 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i8, i8* %146, i64 %155
  %157 = load i8, i8* %156, align 1
  %158 = load i8*, i8** %9, align 8
  %159 = load i32, i32* %10, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %10, align 4
  %161 = sext i32 %159 to i64
  %162 = getelementptr inbounds i8, i8* %158, i64 %161
  store i8 %157, i8* %162, align 1
  %163 = load i8*, i8** %9, align 8
  %164 = load i32, i32* %10, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %10, align 4
  %166 = sext i32 %164 to i64
  %167 = getelementptr inbounds i8, i8* %163, i64 %166
  store i8 61, i8* %167, align 1
  %168 = load i8*, i8** %9, align 8
  %169 = load i32, i32* %10, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %10, align 4
  %171 = sext i32 %169 to i64
  %172 = getelementptr inbounds i8, i8* %168, i64 %171
  store i8 61, i8* %172, align 1
  br label %243

173:                                              ; preds = %126
  %174 = load i32, i32* %13, align 4
  %175 = icmp eq i32 %174, 1
  br i1 %175, label %176, label %242

176:                                              ; preds = %173
  %177 = load i8*, i8** @b64, align 8
  %178 = load i8*, i8** %8, align 8
  %179 = load i32, i32* %11, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i8, i8* %178, i64 %180
  %182 = load i8, i8* %181, align 1
  %183 = zext i8 %182 to i32
  %184 = ashr i32 %183, 2
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i8, i8* %177, i64 %185
  %187 = load i8, i8* %186, align 1
  %188 = load i8*, i8** %9, align 8
  %189 = load i32, i32* %10, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %10, align 4
  %191 = sext i32 %189 to i64
  %192 = getelementptr inbounds i8, i8* %188, i64 %191
  store i8 %187, i8* %192, align 1
  %193 = load i8*, i8** @b64, align 8
  %194 = load i8*, i8** %8, align 8
  %195 = load i32, i32* %11, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i8, i8* %194, i64 %196
  %198 = load i8, i8* %197, align 1
  %199 = zext i8 %198 to i32
  %200 = and i32 3, %199
  %201 = shl i32 %200, 4
  %202 = load i8*, i8** %8, align 8
  %203 = load i32, i32* %11, align 4
  %204 = add nsw i32 %203, 1
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i8, i8* %202, i64 %205
  %207 = load i8, i8* %206, align 1
  %208 = zext i8 %207 to i32
  %209 = ashr i32 %208, 4
  %210 = add nsw i32 %201, %209
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i8, i8* %193, i64 %211
  %213 = load i8, i8* %212, align 1
  %214 = load i8*, i8** %9, align 8
  %215 = load i32, i32* %10, align 4
  %216 = add nsw i32 %215, 1
  store i32 %216, i32* %10, align 4
  %217 = sext i32 %215 to i64
  %218 = getelementptr inbounds i8, i8* %214, i64 %217
  store i8 %213, i8* %218, align 1
  %219 = load i8*, i8** @b64, align 8
  %220 = load i8*, i8** %8, align 8
  %221 = load i32, i32* %11, align 4
  %222 = add nsw i32 %221, 1
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds i8, i8* %220, i64 %223
  %225 = load i8, i8* %224, align 1
  %226 = zext i8 %225 to i32
  %227 = and i32 15, %226
  %228 = shl i32 %227, 2
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds i8, i8* %219, i64 %229
  %231 = load i8, i8* %230, align 1
  %232 = load i8*, i8** %9, align 8
  %233 = load i32, i32* %10, align 4
  %234 = add nsw i32 %233, 1
  store i32 %234, i32* %10, align 4
  %235 = sext i32 %233 to i64
  %236 = getelementptr inbounds i8, i8* %232, i64 %235
  store i8 %231, i8* %236, align 1
  %237 = load i8*, i8** %9, align 8
  %238 = load i32, i32* %10, align 4
  %239 = add nsw i32 %238, 1
  store i32 %239, i32* %10, align 4
  %240 = sext i32 %238 to i64
  %241 = getelementptr inbounds i8, i8* %237, i64 %240
  store i8 61, i8* %241, align 1
  br label %242

242:                                              ; preds = %176, %173
  br label %243

243:                                              ; preds = %242, %129
  %244 = load i8*, i8** %9, align 8
  %245 = load i32, i32* %10, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds i8, i8* %244, i64 %246
  store i8 0, i8* %247, align 1
  %248 = load i8*, i8** %9, align 8
  store i8* %248, i8** %4, align 8
  br label %249

249:                                              ; preds = %243, %40
  %250 = load i8*, i8** %4, align 8
  ret i8* %250
}

declare dso_local i64 @malloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
