; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/libtests/extr_makepng.c_generate_palette.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/libtests/extr_makepng.c_generate_palette.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"makepng: --colors=...: invalid count %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, i32, i32, i32*)* @generate_palette to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @generate_palette(i64 %0, i64 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i64 %0, i64* %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %16 = load i32*, i32** %11, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %19 [
    i32 1, label %26
    i32 2, label %42
    i32 3, label %61
    i32 4, label %77
    i32 0, label %96
  ]

19:                                               ; preds = %5
  %20 = load i32, i32* @stderr, align 4
  %21 = load i32*, i32** %11, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @fprintf(i32 %20, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = call i32 @exit(i32 1) #3
  unreachable

26:                                               ; preds = %5
  %27 = load i64, i64* %7, align 8
  %28 = add nsw i64 %27, 0
  %29 = load i64, i64* %8, align 8
  %30 = add nsw i64 %29, 0
  %31 = load i32*, i32** %11, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32*, i32** %11, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32*, i32** %11, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %10, align 4
  %41 = call i32 @set_color(i64 %28, i64 %30, i32 %33, i32 %36, i32 %39, i32 255, i32 %40)
  store i32 1, i32* %6, align 4
  br label %271

42:                                               ; preds = %5
  %43 = load i64, i64* %7, align 8
  %44 = add nsw i64 %43, 0
  %45 = load i64, i64* %8, align 8
  %46 = add nsw i64 %45, 0
  %47 = load i32*, i32** %11, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32*, i32** %11, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32*, i32** %11, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32*, i32** %11, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 2
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %10, align 4
  %60 = call i32 @set_color(i64 %44, i64 %46, i32 %49, i32 %52, i32 %55, i32 %58, i32 %59)
  store i32 1, i32* %6, align 4
  br label %271

61:                                               ; preds = %5
  %62 = load i64, i64* %7, align 8
  %63 = add nsw i64 %62, 0
  %64 = load i64, i64* %8, align 8
  %65 = add nsw i64 %64, 0
  %66 = load i32*, i32** %11, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 1
  %68 = load i32, i32* %67, align 4
  %69 = load i32*, i32** %11, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 2
  %71 = load i32, i32* %70, align 4
  %72 = load i32*, i32** %11, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 3
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %10, align 4
  %76 = call i32 @set_color(i64 %63, i64 %65, i32 %68, i32 %71, i32 %74, i32 255, i32 %75)
  store i32 1, i32* %6, align 4
  br label %271

77:                                               ; preds = %5
  %78 = load i64, i64* %7, align 8
  %79 = add nsw i64 %78, 0
  %80 = load i64, i64* %8, align 8
  %81 = add nsw i64 %80, 0
  %82 = load i32*, i32** %11, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 1
  %84 = load i32, i32* %83, align 4
  %85 = load i32*, i32** %11, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 2
  %87 = load i32, i32* %86, align 4
  %88 = load i32*, i32** %11, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 3
  %90 = load i32, i32* %89, align 4
  %91 = load i32*, i32** %11, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 4
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* %10, align 4
  %95 = call i32 @set_color(i64 %79, i64 %81, i32 %84, i32 %87, i32 %90, i32 %93, i32 %94)
  store i32 1, i32* %6, align 4
  br label %271

96:                                               ; preds = %5
  %97 = load i32, i32* %9, align 4
  %98 = icmp eq i32 %97, 1
  br i1 %98, label %99, label %112

99:                                               ; preds = %96
  %100 = load i64, i64* %7, align 8
  %101 = add nsw i64 %100, 0
  %102 = load i64, i64* %8, align 8
  %103 = add nsw i64 %102, 0
  %104 = load i32, i32* %10, align 4
  %105 = call i32 @set_color(i64 %101, i64 %103, i32 255, i32 0, i32 0, i32 0, i32 %104)
  %106 = load i64, i64* %7, align 8
  %107 = add nsw i64 %106, 1
  %108 = load i64, i64* %8, align 8
  %109 = add nsw i64 %108, 1
  %110 = load i32, i32* %10, align 4
  %111 = call i32 @set_color(i64 %107, i64 %109, i32 255, i32 255, i32 255, i32 255, i32 %110)
  store i32 2, i32* %6, align 4
  br label %271

112:                                              ; preds = %96
  %113 = load i32, i32* %9, align 4
  %114 = sdiv i32 %113, 2
  %115 = shl i32 1, %114
  store i32 %115, i32* %12, align 4
  store volatile i32 0, i32* %15, align 4
  store i32 0, i32* %13, align 4
  br label %116

116:                                              ; preds = %265, %112
  %117 = load i32, i32* %13, align 4
  %118 = load i32, i32* %12, align 4
  %119 = icmp ult i32 %117, %118
  br i1 %119, label %120, label %268

120:                                              ; preds = %116
  store i32 0, i32* %14, align 4
  br label %121

121:                                              ; preds = %261, %120
  %122 = load i32, i32* %14, align 4
  %123 = load i32, i32* %12, align 4
  %124 = icmp ult i32 %122, %123
  br i1 %124, label %125, label %264

125:                                              ; preds = %121
  %126 = load i32, i32* %13, align 4
  %127 = load i32, i32* %12, align 4
  %128 = load i32, i32* %14, align 4
  %129 = mul i32 %127, %128
  %130 = add i32 %126, %129
  store volatile i32 %130, i32* %15, align 4
  %131 = load i64, i64* %7, align 8
  %132 = load volatile i32, i32* %15, align 4
  %133 = zext i32 %132 to i64
  %134 = add nsw i64 %131, %133
  %135 = load i64, i64* %8, align 8
  %136 = load volatile i32, i32* %15, align 4
  %137 = zext i32 %136 to i64
  %138 = add nsw i64 %135, %137
  %139 = load i32, i32* %12, align 4
  %140 = load i32, i32* %12, align 4
  %141 = mul i32 %139, %140
  %142 = udiv i32 %141, 2
  %143 = load i32, i32* %13, align 4
  %144 = mul i32 %143, 0
  %145 = load i32, i32* %12, align 4
  %146 = load i32, i32* %13, align 4
  %147 = sub i32 %145, %146
  %148 = mul i32 %147, 255
  %149 = add i32 %144, %148
  %150 = load i32, i32* %14, align 4
  %151 = mul i32 %149, %150
  %152 = load i32, i32* %12, align 4
  %153 = load i32, i32* %14, align 4
  %154 = sub i32 %152, %153
  %155 = load i32, i32* %13, align 4
  %156 = mul i32 %155, 0
  %157 = load i32, i32* %12, align 4
  %158 = load i32, i32* %13, align 4
  %159 = sub i32 %157, %158
  %160 = mul i32 %159, 255
  %161 = add i32 %156, %160
  %162 = mul i32 %154, %161
  %163 = add i32 %151, %162
  %164 = add i32 %142, %163
  %165 = load i32, i32* %12, align 4
  %166 = load i32, i32* %12, align 4
  %167 = mul i32 %165, %166
  %168 = udiv i32 %164, %167
  %169 = load i32, i32* %12, align 4
  %170 = load i32, i32* %12, align 4
  %171 = mul i32 %169, %170
  %172 = udiv i32 %171, 2
  %173 = load i32, i32* %13, align 4
  %174 = mul i32 %173, 255
  %175 = load i32, i32* %12, align 4
  %176 = load i32, i32* %13, align 4
  %177 = sub i32 %175, %176
  %178 = mul i32 %177, 0
  %179 = add i32 %174, %178
  %180 = load i32, i32* %14, align 4
  %181 = mul i32 %179, %180
  %182 = load i32, i32* %12, align 4
  %183 = load i32, i32* %14, align 4
  %184 = sub i32 %182, %183
  %185 = load i32, i32* %13, align 4
  %186 = mul i32 %185, 0
  %187 = load i32, i32* %12, align 4
  %188 = load i32, i32* %13, align 4
  %189 = sub i32 %187, %188
  %190 = mul i32 %189, 255
  %191 = add i32 %186, %190
  %192 = mul i32 %184, %191
  %193 = add i32 %181, %192
  %194 = add i32 %172, %193
  %195 = load i32, i32* %12, align 4
  %196 = load i32, i32* %12, align 4
  %197 = mul i32 %195, %196
  %198 = udiv i32 %194, %197
  %199 = load i32, i32* %12, align 4
  %200 = load i32, i32* %12, align 4
  %201 = mul i32 %199, %200
  %202 = udiv i32 %201, 2
  %203 = load i32, i32* %13, align 4
  %204 = mul i32 %203, 0
  %205 = load i32, i32* %12, align 4
  %206 = load i32, i32* %13, align 4
  %207 = sub i32 %205, %206
  %208 = mul i32 %207, 0
  %209 = add i32 %204, %208
  %210 = load i32, i32* %14, align 4
  %211 = mul i32 %209, %210
  %212 = load i32, i32* %12, align 4
  %213 = load i32, i32* %14, align 4
  %214 = sub i32 %212, %213
  %215 = load i32, i32* %13, align 4
  %216 = mul i32 %215, 255
  %217 = load i32, i32* %12, align 4
  %218 = load i32, i32* %13, align 4
  %219 = sub i32 %217, %218
  %220 = mul i32 %219, 255
  %221 = add i32 %216, %220
  %222 = mul i32 %214, %221
  %223 = add i32 %211, %222
  %224 = add i32 %202, %223
  %225 = load i32, i32* %12, align 4
  %226 = load i32, i32* %12, align 4
  %227 = mul i32 %225, %226
  %228 = udiv i32 %224, %227
  %229 = load i32, i32* %12, align 4
  %230 = load i32, i32* %12, align 4
  %231 = mul i32 %229, %230
  %232 = udiv i32 %231, 2
  %233 = load i32, i32* %13, align 4
  %234 = mul i32 %233, 0
  %235 = load i32, i32* %12, align 4
  %236 = load i32, i32* %13, align 4
  %237 = sub i32 %235, %236
  %238 = mul i32 %237, 102
  %239 = add i32 %234, %238
  %240 = load i32, i32* %14, align 4
  %241 = mul i32 %239, %240
  %242 = load i32, i32* %12, align 4
  %243 = load i32, i32* %14, align 4
  %244 = sub i32 %242, %243
  %245 = load i32, i32* %13, align 4
  %246 = mul i32 %245, 204
  %247 = load i32, i32* %12, align 4
  %248 = load i32, i32* %13, align 4
  %249 = sub i32 %247, %248
  %250 = mul i32 %249, 255
  %251 = add i32 %246, %250
  %252 = mul i32 %244, %251
  %253 = add i32 %241, %252
  %254 = add i32 %232, %253
  %255 = load i32, i32* %12, align 4
  %256 = load i32, i32* %12, align 4
  %257 = mul i32 %255, %256
  %258 = udiv i32 %254, %257
  %259 = load i32, i32* %10, align 4
  %260 = call i32 @set_color(i64 %134, i64 %138, i32 %168, i32 %198, i32 %228, i32 %258, i32 %259)
  br label %261

261:                                              ; preds = %125
  %262 = load i32, i32* %14, align 4
  %263 = add i32 %262, 1
  store i32 %263, i32* %14, align 4
  br label %121

264:                                              ; preds = %121
  br label %265

265:                                              ; preds = %264
  %266 = load i32, i32* %13, align 4
  %267 = add i32 %266, 1
  store i32 %267, i32* %13, align 4
  br label %116

268:                                              ; preds = %116
  %269 = load volatile i32, i32* %15, align 4
  %270 = add i32 %269, 1
  store i32 %270, i32* %6, align 4
  br label %271

271:                                              ; preds = %268, %99, %77, %61, %42, %26
  %272 = load i32, i32* %6, align 4
  ret i32 %272
}

declare dso_local i32 @fprintf(i32, i8*, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @set_color(i64, i64, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
