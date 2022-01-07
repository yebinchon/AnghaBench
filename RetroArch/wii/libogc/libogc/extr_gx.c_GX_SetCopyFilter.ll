; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_gx.c_GX_SetCopyFilter.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_gx.c_GX_SetCopyFilter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @GX_SetCopyFilter(i32 %0, [2 x i32]* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca [2 x i32]*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store [2 x i32]* %1, [2 x i32]** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %214

17:                                               ; preds = %4
  %18 = load [2 x i32]*, [2 x i32]** %6, align 8
  %19 = getelementptr inbounds [2 x i32], [2 x i32]* %18, i64 0
  %20 = getelementptr inbounds [2 x i32], [2 x i32]* %19, i64 0, i64 0
  %21 = load i32, i32* %20, align 4
  %22 = and i32 %21, 15
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = and i32 %23, -241
  %25 = load [2 x i32]*, [2 x i32]** %6, align 8
  %26 = getelementptr inbounds [2 x i32], [2 x i32]* %25, i64 0
  %27 = getelementptr inbounds [2 x i32], [2 x i32]* %26, i64 0, i64 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @_SHIFTL(i32 %28, i32 4, i32 4)
  %30 = or i32 %24, %29
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = and i32 %31, -3841
  %33 = load [2 x i32]*, [2 x i32]** %6, align 8
  %34 = getelementptr inbounds [2 x i32], [2 x i32]* %33, i64 1
  %35 = getelementptr inbounds [2 x i32], [2 x i32]* %34, i64 0, i64 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @_SHIFTL(i32 %36, i32 8, i32 4)
  %38 = or i32 %32, %37
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %9, align 4
  %40 = and i32 %39, -61441
  %41 = load [2 x i32]*, [2 x i32]** %6, align 8
  %42 = getelementptr inbounds [2 x i32], [2 x i32]* %41, i64 1
  %43 = getelementptr inbounds [2 x i32], [2 x i32]* %42, i64 0, i64 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @_SHIFTL(i32 %44, i32 12, i32 4)
  %46 = or i32 %40, %45
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %9, align 4
  %48 = and i32 %47, -983041
  %49 = load [2 x i32]*, [2 x i32]** %6, align 8
  %50 = getelementptr inbounds [2 x i32], [2 x i32]* %49, i64 2
  %51 = getelementptr inbounds [2 x i32], [2 x i32]* %50, i64 0, i64 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @_SHIFTL(i32 %52, i32 16, i32 4)
  %54 = or i32 %48, %53
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* %9, align 4
  %56 = and i32 %55, -15728641
  %57 = load [2 x i32]*, [2 x i32]** %6, align 8
  %58 = getelementptr inbounds [2 x i32], [2 x i32]* %57, i64 2
  %59 = getelementptr inbounds [2 x i32], [2 x i32]* %58, i64 0, i64 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @_SHIFTL(i32 %60, i32 20, i32 4)
  %62 = or i32 %56, %61
  store i32 %62, i32* %9, align 4
  %63 = load i32, i32* %9, align 4
  %64 = and i32 %63, 16777215
  %65 = call i32 @_SHIFTL(i32 1, i32 24, i32 8)
  %66 = or i32 %64, %65
  store i32 %66, i32* %9, align 4
  %67 = load [2 x i32]*, [2 x i32]** %6, align 8
  %68 = getelementptr inbounds [2 x i32], [2 x i32]* %67, i64 3
  %69 = getelementptr inbounds [2 x i32], [2 x i32]* %68, i64 0, i64 0
  %70 = load i32, i32* %69, align 4
  %71 = and i32 %70, 15
  store i32 %71, i32* %10, align 4
  %72 = load i32, i32* %10, align 4
  %73 = and i32 %72, -241
  %74 = load [2 x i32]*, [2 x i32]** %6, align 8
  %75 = getelementptr inbounds [2 x i32], [2 x i32]* %74, i64 3
  %76 = getelementptr inbounds [2 x i32], [2 x i32]* %75, i64 0, i64 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @_SHIFTL(i32 %77, i32 4, i32 4)
  %79 = or i32 %73, %78
  store i32 %79, i32* %10, align 4
  %80 = load i32, i32* %10, align 4
  %81 = and i32 %80, -3841
  %82 = load [2 x i32]*, [2 x i32]** %6, align 8
  %83 = getelementptr inbounds [2 x i32], [2 x i32]* %82, i64 4
  %84 = getelementptr inbounds [2 x i32], [2 x i32]* %83, i64 0, i64 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @_SHIFTL(i32 %85, i32 8, i32 4)
  %87 = or i32 %81, %86
  store i32 %87, i32* %10, align 4
  %88 = load i32, i32* %10, align 4
  %89 = and i32 %88, -61441
  %90 = load [2 x i32]*, [2 x i32]** %6, align 8
  %91 = getelementptr inbounds [2 x i32], [2 x i32]* %90, i64 4
  %92 = getelementptr inbounds [2 x i32], [2 x i32]* %91, i64 0, i64 1
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @_SHIFTL(i32 %93, i32 12, i32 4)
  %95 = or i32 %89, %94
  store i32 %95, i32* %10, align 4
  %96 = load i32, i32* %10, align 4
  %97 = and i32 %96, -983041
  %98 = load [2 x i32]*, [2 x i32]** %6, align 8
  %99 = getelementptr inbounds [2 x i32], [2 x i32]* %98, i64 5
  %100 = getelementptr inbounds [2 x i32], [2 x i32]* %99, i64 0, i64 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @_SHIFTL(i32 %101, i32 16, i32 4)
  %103 = or i32 %97, %102
  store i32 %103, i32* %10, align 4
  %104 = load i32, i32* %10, align 4
  %105 = and i32 %104, -15728641
  %106 = load [2 x i32]*, [2 x i32]** %6, align 8
  %107 = getelementptr inbounds [2 x i32], [2 x i32]* %106, i64 5
  %108 = getelementptr inbounds [2 x i32], [2 x i32]* %107, i64 0, i64 1
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @_SHIFTL(i32 %109, i32 20, i32 4)
  %111 = or i32 %105, %110
  store i32 %111, i32* %10, align 4
  %112 = load i32, i32* %10, align 4
  %113 = and i32 %112, 16777215
  %114 = call i32 @_SHIFTL(i32 2, i32 24, i32 8)
  %115 = or i32 %113, %114
  store i32 %115, i32* %10, align 4
  %116 = load [2 x i32]*, [2 x i32]** %6, align 8
  %117 = getelementptr inbounds [2 x i32], [2 x i32]* %116, i64 6
  %118 = getelementptr inbounds [2 x i32], [2 x i32]* %117, i64 0, i64 0
  %119 = load i32, i32* %118, align 4
  %120 = and i32 %119, 15
  store i32 %120, i32* %11, align 4
  %121 = load i32, i32* %11, align 4
  %122 = and i32 %121, -241
  %123 = load [2 x i32]*, [2 x i32]** %6, align 8
  %124 = getelementptr inbounds [2 x i32], [2 x i32]* %123, i64 6
  %125 = getelementptr inbounds [2 x i32], [2 x i32]* %124, i64 0, i64 1
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @_SHIFTL(i32 %126, i32 4, i32 4)
  %128 = or i32 %122, %127
  store i32 %128, i32* %11, align 4
  %129 = load i32, i32* %11, align 4
  %130 = and i32 %129, -3841
  %131 = load [2 x i32]*, [2 x i32]** %6, align 8
  %132 = getelementptr inbounds [2 x i32], [2 x i32]* %131, i64 7
  %133 = getelementptr inbounds [2 x i32], [2 x i32]* %132, i64 0, i64 0
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @_SHIFTL(i32 %134, i32 8, i32 4)
  %136 = or i32 %130, %135
  store i32 %136, i32* %11, align 4
  %137 = load i32, i32* %11, align 4
  %138 = and i32 %137, -61441
  %139 = load [2 x i32]*, [2 x i32]** %6, align 8
  %140 = getelementptr inbounds [2 x i32], [2 x i32]* %139, i64 7
  %141 = getelementptr inbounds [2 x i32], [2 x i32]* %140, i64 0, i64 1
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @_SHIFTL(i32 %142, i32 12, i32 4)
  %144 = or i32 %138, %143
  store i32 %144, i32* %11, align 4
  %145 = load i32, i32* %11, align 4
  %146 = and i32 %145, -983041
  %147 = load [2 x i32]*, [2 x i32]** %6, align 8
  %148 = getelementptr inbounds [2 x i32], [2 x i32]* %147, i64 8
  %149 = getelementptr inbounds [2 x i32], [2 x i32]* %148, i64 0, i64 0
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @_SHIFTL(i32 %150, i32 16, i32 4)
  %152 = or i32 %146, %151
  store i32 %152, i32* %11, align 4
  %153 = load i32, i32* %11, align 4
  %154 = and i32 %153, -15728641
  %155 = load [2 x i32]*, [2 x i32]** %6, align 8
  %156 = getelementptr inbounds [2 x i32], [2 x i32]* %155, i64 8
  %157 = getelementptr inbounds [2 x i32], [2 x i32]* %156, i64 0, i64 1
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @_SHIFTL(i32 %158, i32 20, i32 4)
  %160 = or i32 %154, %159
  store i32 %160, i32* %11, align 4
  %161 = load i32, i32* %11, align 4
  %162 = and i32 %161, 16777215
  %163 = call i32 @_SHIFTL(i32 3, i32 24, i32 8)
  %164 = or i32 %162, %163
  store i32 %164, i32* %11, align 4
  %165 = load [2 x i32]*, [2 x i32]** %6, align 8
  %166 = getelementptr inbounds [2 x i32], [2 x i32]* %165, i64 9
  %167 = getelementptr inbounds [2 x i32], [2 x i32]* %166, i64 0, i64 0
  %168 = load i32, i32* %167, align 4
  %169 = and i32 %168, 15
  store i32 %169, i32* %12, align 4
  %170 = load i32, i32* %12, align 4
  %171 = and i32 %170, -241
  %172 = load [2 x i32]*, [2 x i32]** %6, align 8
  %173 = getelementptr inbounds [2 x i32], [2 x i32]* %172, i64 9
  %174 = getelementptr inbounds [2 x i32], [2 x i32]* %173, i64 0, i64 1
  %175 = load i32, i32* %174, align 4
  %176 = call i32 @_SHIFTL(i32 %175, i32 4, i32 4)
  %177 = or i32 %171, %176
  store i32 %177, i32* %12, align 4
  %178 = load i32, i32* %12, align 4
  %179 = and i32 %178, -3841
  %180 = load [2 x i32]*, [2 x i32]** %6, align 8
  %181 = getelementptr inbounds [2 x i32], [2 x i32]* %180, i64 10
  %182 = getelementptr inbounds [2 x i32], [2 x i32]* %181, i64 0, i64 0
  %183 = load i32, i32* %182, align 4
  %184 = call i32 @_SHIFTL(i32 %183, i32 8, i32 4)
  %185 = or i32 %179, %184
  store i32 %185, i32* %12, align 4
  %186 = load i32, i32* %12, align 4
  %187 = and i32 %186, -61441
  %188 = load [2 x i32]*, [2 x i32]** %6, align 8
  %189 = getelementptr inbounds [2 x i32], [2 x i32]* %188, i64 10
  %190 = getelementptr inbounds [2 x i32], [2 x i32]* %189, i64 0, i64 1
  %191 = load i32, i32* %190, align 4
  %192 = call i32 @_SHIFTL(i32 %191, i32 12, i32 4)
  %193 = or i32 %187, %192
  store i32 %193, i32* %12, align 4
  %194 = load i32, i32* %12, align 4
  %195 = and i32 %194, -983041
  %196 = load [2 x i32]*, [2 x i32]** %6, align 8
  %197 = getelementptr inbounds [2 x i32], [2 x i32]* %196, i64 11
  %198 = getelementptr inbounds [2 x i32], [2 x i32]* %197, i64 0, i64 0
  %199 = load i32, i32* %198, align 4
  %200 = call i32 @_SHIFTL(i32 %199, i32 16, i32 4)
  %201 = or i32 %195, %200
  store i32 %201, i32* %12, align 4
  %202 = load i32, i32* %12, align 4
  %203 = and i32 %202, -15728641
  %204 = load [2 x i32]*, [2 x i32]** %6, align 8
  %205 = getelementptr inbounds [2 x i32], [2 x i32]* %204, i64 11
  %206 = getelementptr inbounds [2 x i32], [2 x i32]* %205, i64 0, i64 1
  %207 = load i32, i32* %206, align 4
  %208 = call i32 @_SHIFTL(i32 %207, i32 20, i32 4)
  %209 = or i32 %203, %208
  store i32 %209, i32* %12, align 4
  %210 = load i32, i32* %12, align 4
  %211 = and i32 %210, 16777215
  %212 = call i32 @_SHIFTL(i32 4, i32 24, i32 8)
  %213 = or i32 %211, %212
  store i32 %213, i32* %12, align 4
  br label %215

214:                                              ; preds = %4
  store i32 23488102, i32* %9, align 4
  store i32 40265318, i32* %10, align 4
  store i32 57042534, i32* %11, align 4
  store i32 73819750, i32* %12, align 4
  br label %215

215:                                              ; preds = %214, %17
  %216 = load i32, i32* %9, align 4
  %217 = call i32 @GX_LOAD_BP_REG(i32 %216)
  %218 = load i32, i32* %10, align 4
  %219 = call i32 @GX_LOAD_BP_REG(i32 %218)
  %220 = load i32, i32* %11, align 4
  %221 = call i32 @GX_LOAD_BP_REG(i32 %220)
  %222 = load i32, i32* %12, align 4
  %223 = call i32 @GX_LOAD_BP_REG(i32 %222)
  store i32 1398362112, i32* %13, align 4
  store i32 1409286165, i32* %14, align 4
  %224 = load i32, i32* %7, align 4
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %272

226:                                              ; preds = %215
  %227 = load i32*, i32** %8, align 8
  %228 = getelementptr inbounds i32, i32* %227, i64 0
  %229 = load i32, i32* %228, align 4
  %230 = and i32 %229, 63
  %231 = or i32 1392508928, %230
  store i32 %231, i32* %13, align 4
  %232 = load i32, i32* %13, align 4
  %233 = and i32 %232, -4033
  %234 = load i32*, i32** %8, align 8
  %235 = getelementptr inbounds i32, i32* %234, i64 1
  %236 = load i32, i32* %235, align 4
  %237 = call i32 @_SHIFTL(i32 %236, i32 6, i32 6)
  %238 = or i32 %233, %237
  store i32 %238, i32* %13, align 4
  %239 = load i32, i32* %13, align 4
  %240 = and i32 %239, -258049
  %241 = load i32*, i32** %8, align 8
  %242 = getelementptr inbounds i32, i32* %241, i64 2
  %243 = load i32, i32* %242, align 4
  %244 = call i32 @_SHIFTL(i32 %243, i32 12, i32 6)
  %245 = or i32 %240, %244
  store i32 %245, i32* %13, align 4
  %246 = load i32, i32* %13, align 4
  %247 = and i32 %246, -16515073
  %248 = load i32*, i32** %8, align 8
  %249 = getelementptr inbounds i32, i32* %248, i64 3
  %250 = load i32, i32* %249, align 4
  %251 = call i32 @_SHIFTL(i32 %250, i32 18, i32 6)
  %252 = or i32 %247, %251
  store i32 %252, i32* %13, align 4
  %253 = load i32*, i32** %8, align 8
  %254 = getelementptr inbounds i32, i32* %253, i64 4
  %255 = load i32, i32* %254, align 4
  %256 = and i32 %255, 63
  %257 = or i32 1409286144, %256
  store i32 %257, i32* %14, align 4
  %258 = load i32, i32* %14, align 4
  %259 = and i32 %258, -4033
  %260 = load i32*, i32** %8, align 8
  %261 = getelementptr inbounds i32, i32* %260, i64 5
  %262 = load i32, i32* %261, align 4
  %263 = call i32 @_SHIFTL(i32 %262, i32 6, i32 6)
  %264 = or i32 %259, %263
  store i32 %264, i32* %14, align 4
  %265 = load i32, i32* %14, align 4
  %266 = and i32 %265, -258049
  %267 = load i32*, i32** %8, align 8
  %268 = getelementptr inbounds i32, i32* %267, i64 6
  %269 = load i32, i32* %268, align 4
  %270 = call i32 @_SHIFTL(i32 %269, i32 12, i32 6)
  %271 = or i32 %266, %270
  store i32 %271, i32* %14, align 4
  br label %272

272:                                              ; preds = %226, %215
  %273 = load i32, i32* %13, align 4
  %274 = call i32 @GX_LOAD_BP_REG(i32 %273)
  %275 = load i32, i32* %14, align 4
  %276 = call i32 @GX_LOAD_BP_REG(i32 %275)
  ret void
}

declare dso_local i32 @_SHIFTL(i32, i32, i32) #1

declare dso_local i32 @GX_LOAD_BP_REG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
