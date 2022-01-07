; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_gx.c_GX_PreloadEntireTexture.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_gx.c_GX_PreloadEntireTexture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__gx_texobj = type { i32, i32, i32, i32, i32, i32 }
%struct.__gx_texregion = type { i32, i32 }

@GX_TF_RGBA8 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @GX_PreloadEntireTexture(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.__gx_texobj*, align 8
  %15 = alloca %struct.__gx_texregion*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  store i64 0, i64* %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %26 = load i32*, i32** %3, align 8
  %27 = bitcast i32* %26 to %struct.__gx_texobj*
  store %struct.__gx_texobj* %27, %struct.__gx_texobj** %14, align 8
  %28 = load i32*, i32** %4, align 8
  %29 = bitcast i32* %28 to %struct.__gx_texregion*
  store %struct.__gx_texregion* %29, %struct.__gx_texregion** %15, align 8
  %30 = load i32, i32* %10, align 4
  %31 = and i32 %30, 16777215
  %32 = call i32 @_SHIFTL(i32 96, i32 24, i32 8)
  %33 = or i32 %31, %32
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %10, align 4
  %35 = and i32 %34, -16777216
  %36 = load %struct.__gx_texobj*, %struct.__gx_texobj** %14, align 8
  %37 = getelementptr inbounds %struct.__gx_texobj, %struct.__gx_texobj* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = and i32 %38, 16777215
  %40 = or i32 %35, %39
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %11, align 4
  %42 = and i32 %41, 16777215
  %43 = call i32 @_SHIFTL(i32 97, i32 24, i32 8)
  %44 = or i32 %42, %43
  store i32 %44, i32* %11, align 4
  %45 = load i32, i32* %11, align 4
  %46 = and i32 %45, -32768
  %47 = load %struct.__gx_texregion*, %struct.__gx_texregion** %15, align 8
  %48 = getelementptr inbounds %struct.__gx_texregion, %struct.__gx_texregion* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = and i32 %49, 32767
  %51 = or i32 %46, %50
  store i32 %51, i32* %11, align 4
  %52 = load i32, i32* %12, align 4
  %53 = and i32 %52, 16777215
  %54 = call i32 @_SHIFTL(i32 98, i32 24, i32 8)
  %55 = or i32 %53, %54
  store i32 %55, i32* %12, align 4
  %56 = load i32, i32* %12, align 4
  %57 = and i32 %56, -32768
  %58 = load %struct.__gx_texregion*, %struct.__gx_texregion** %15, align 8
  %59 = getelementptr inbounds %struct.__gx_texregion, %struct.__gx_texregion* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = and i32 %60, 32767
  %62 = or i32 %57, %61
  store i32 %62, i32* %12, align 4
  %63 = load i32, i32* %13, align 4
  %64 = and i32 %63, 16777215
  %65 = call i32 @_SHIFTL(i32 99, i32 24, i32 8)
  %66 = or i32 %64, %65
  store i32 %66, i32* %13, align 4
  %67 = load i32, i32* %13, align 4
  %68 = and i32 %67, -32768
  %69 = load %struct.__gx_texobj*, %struct.__gx_texobj** %14, align 8
  %70 = getelementptr inbounds %struct.__gx_texobj, %struct.__gx_texobj* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = and i32 %71, 32767
  %73 = or i32 %68, %72
  store i32 %73, i32* %13, align 4
  %74 = load i32, i32* %13, align 4
  %75 = and i32 %74, -98305
  %76 = load %struct.__gx_texobj*, %struct.__gx_texobj** %14, align 8
  %77 = getelementptr inbounds %struct.__gx_texobj, %struct.__gx_texobj* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @_SHIFTL(i32 %78, i32 15, i32 2)
  %80 = or i32 %75, %79
  store i32 %80, i32* %13, align 4
  %81 = load %struct.__gx_texobj*, %struct.__gx_texobj** %14, align 8
  %82 = getelementptr inbounds %struct.__gx_texobj, %struct.__gx_texobj* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @_SHIFTR(i32 %83, i32 20, i32 4)
  store i32 %84, i32* %6, align 4
  %85 = call i32 (...) @__GX_FlushTextureState()
  %86 = load i32, i32* %10, align 4
  %87 = call i32 @GX_LOAD_BP_REG(i32 %86)
  %88 = load i32, i32* %11, align 4
  %89 = call i32 @GX_LOAD_BP_REG(i32 %88)
  %90 = load i32, i32* %12, align 4
  %91 = call i32 @GX_LOAD_BP_REG(i32 %90)
  %92 = load i32, i32* %13, align 4
  %93 = call i32 @GX_LOAD_BP_REG(i32 %92)
  %94 = load %struct.__gx_texobj*, %struct.__gx_texobj** %14, align 8
  %95 = getelementptr inbounds %struct.__gx_texobj, %struct.__gx_texobj* %94, i32 0, i32 4
  %96 = load i32, i32* %95, align 4
  %97 = and i32 %96, 1
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %122

99:                                               ; preds = %2
  %100 = load %struct.__gx_texobj*, %struct.__gx_texobj** %14, align 8
  %101 = getelementptr inbounds %struct.__gx_texobj, %struct.__gx_texobj* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  %103 = and i32 %102, 1023
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %7, align 4
  %105 = load %struct.__gx_texobj*, %struct.__gx_texobj** %14, align 8
  %106 = getelementptr inbounds %struct.__gx_texobj, %struct.__gx_texobj* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @_SHIFTR(i32 %107, i32 10, i32 10)
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %8, align 4
  %110 = load i32, i32* %7, align 4
  %111 = load i32, i32* %8, align 4
  %112 = icmp sgt i32 %110, %111
  br i1 %112, label %113, label %117

113:                                              ; preds = %99
  %114 = load i32, i32* %7, align 4
  %115 = call i64 @cntlzw(i32 %114)
  %116 = sub nsw i64 31, %115
  store i64 %116, i64* %9, align 8
  br label %121

117:                                              ; preds = %99
  %118 = load i32, i32* %8, align 4
  %119 = call i64 @cntlzw(i32 %118)
  %120 = sub nsw i64 31, %119
  store i64 %120, i64* %9, align 8
  br label %121

121:                                              ; preds = %117, %113
  br label %122

122:                                              ; preds = %121, %2
  %123 = load i64, i64* %9, align 8
  %124 = icmp sgt i64 %123, 0
  br i1 %124, label %125, label %257

125:                                              ; preds = %122
  %126 = load %struct.__gx_texobj*, %struct.__gx_texobj** %14, align 8
  %127 = getelementptr inbounds %struct.__gx_texobj, %struct.__gx_texobj* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  store i32 %128, i32* %19, align 4
  %129 = load %struct.__gx_texregion*, %struct.__gx_texregion** %15, align 8
  %130 = getelementptr inbounds %struct.__gx_texregion, %struct.__gx_texregion* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = and i32 %131, 65535
  store i32 %132, i32* %16, align 4
  %133 = load %struct.__gx_texregion*, %struct.__gx_texregion** %15, align 8
  %134 = getelementptr inbounds %struct.__gx_texregion, %struct.__gx_texregion* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = and i32 %135, 65535
  store i32 %136, i32* %17, align 4
  %137 = load %struct.__gx_texobj*, %struct.__gx_texobj** %14, align 8
  %138 = getelementptr inbounds %struct.__gx_texobj, %struct.__gx_texobj* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = and i32 %139, 16777215
  store i32 %140, i32* %18, align 4
  store i32 0, i32* %5, align 4
  br label %141

141:                                              ; preds = %208, %125
  %142 = load i64, i64* %9, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %256

144:                                              ; preds = %141
  %145 = load i32, i32* %6, align 4
  %146 = load i32, i32* @GX_TF_RGBA8, align 4
  %147 = icmp eq i32 %145, %146
  br i1 %147, label %148, label %159

148:                                              ; preds = %144
  %149 = load i32, i32* %19, align 4
  %150 = load i32, i32* %16, align 4
  %151 = add nsw i32 %150, %149
  store i32 %151, i32* %16, align 4
  %152 = load i32, i32* %19, align 4
  %153 = load i32, i32* %17, align 4
  %154 = add nsw i32 %153, %152
  store i32 %154, i32* %17, align 4
  %155 = load i32, i32* %19, align 4
  %156 = shl i32 %155, 1
  %157 = load i32, i32* %18, align 4
  %158 = add nsw i32 %157, %156
  store i32 %158, i32* %18, align 4
  br label %175

159:                                              ; preds = %144
  %160 = load i32, i32* %19, align 4
  %161 = load i32, i32* %18, align 4
  %162 = add nsw i32 %161, %160
  store i32 %162, i32* %18, align 4
  %163 = load i32, i32* %5, align 4
  %164 = and i32 %163, 1
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %170

166:                                              ; preds = %159
  %167 = load i32, i32* %19, align 4
  %168 = load i32, i32* %17, align 4
  %169 = add nsw i32 %168, %167
  store i32 %169, i32* %17, align 4
  br label %174

170:                                              ; preds = %159
  %171 = load i32, i32* %19, align 4
  %172 = load i32, i32* %16, align 4
  %173 = add nsw i32 %172, %171
  store i32 %173, i32* %16, align 4
  br label %174

174:                                              ; preds = %170, %166
  br label %175

175:                                              ; preds = %174, %148
  %176 = load i32, i32* %16, align 4
  store i32 %176, i32* %22, align 4
  %177 = load i32, i32* %17, align 4
  store i32 %177, i32* %23, align 4
  %178 = load i32, i32* %5, align 4
  %179 = and i32 %178, 1
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %184

181:                                              ; preds = %175
  %182 = load i32, i32* %17, align 4
  store i32 %182, i32* %22, align 4
  %183 = load i32, i32* %16, align 4
  store i32 %183, i32* %23, align 4
  br label %184

184:                                              ; preds = %181, %175
  %185 = load i32, i32* %7, align 4
  %186 = load i32, i32* %5, align 4
  %187 = add nsw i32 %186, 1
  %188 = ashr i32 %185, %187
  store i32 %188, i32* %20, align 4
  %189 = load i32, i32* %7, align 4
  %190 = load i32, i32* %5, align 4
  %191 = add nsw i32 %190, 1
  %192 = ashr i32 %189, %191
  store i32 %192, i32* %21, align 4
  %193 = load %struct.__gx_texobj*, %struct.__gx_texobj** %14, align 8
  %194 = getelementptr inbounds %struct.__gx_texobj, %struct.__gx_texobj* %193, i32 0, i32 5
  %195 = load i32, i32* %194, align 4
  switch i32 %195, label %199 [
    i32 133, label %196
    i32 131, label %196
    i32 136, label %196
    i32 134, label %196
    i32 132, label %197
    i32 135, label %197
    i32 130, label %198
    i32 128, label %198
    i32 129, label %198
    i32 137, label %198
  ]

196:                                              ; preds = %184, %184, %184, %184
  store i32 3, i32* %24, align 4
  store i32 3, i32* %25, align 4
  br label %200

197:                                              ; preds = %184, %184
  store i32 3, i32* %24, align 4
  store i32 2, i32* %25, align 4
  br label %200

198:                                              ; preds = %184, %184, %184, %184
  store i32 2, i32* %24, align 4
  store i32 2, i32* %25, align 4
  br label %200

199:                                              ; preds = %184
  store i32 0, i32* %24, align 4
  store i32 0, i32* %25, align 4
  br label %200

200:                                              ; preds = %199, %198, %197, %196
  %201 = load i32, i32* %20, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %204, label %203

203:                                              ; preds = %200
  store i32 1, i32* %20, align 4
  br label %204

204:                                              ; preds = %203, %200
  %205 = load i32, i32* %21, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %208, label %207

207:                                              ; preds = %204
  store i32 1, i32* %21, align 4
  br label %208

208:                                              ; preds = %207, %204
  %209 = load i32, i32* %10, align 4
  %210 = and i32 %209, -16777216
  %211 = load i32, i32* %18, align 4
  %212 = and i32 %211, 16777215
  %213 = or i32 %210, %212
  store i32 %213, i32* %10, align 4
  %214 = load i32, i32* %10, align 4
  %215 = call i32 @GX_LOAD_BP_REG(i32 %214)
  %216 = load i32, i32* %11, align 4
  %217 = and i32 %216, -32768
  %218 = load i32, i32* %22, align 4
  %219 = and i32 %218, 32767
  %220 = or i32 %217, %219
  store i32 %220, i32* %11, align 4
  %221 = load i32, i32* %11, align 4
  %222 = call i32 @GX_LOAD_BP_REG(i32 %221)
  %223 = load i32, i32* %12, align 4
  %224 = and i32 %223, -32768
  %225 = load i32, i32* %23, align 4
  %226 = and i32 %225, 32767
  %227 = or i32 %224, %226
  store i32 %227, i32* %12, align 4
  %228 = load i32, i32* %12, align 4
  %229 = call i32 @GX_LOAD_BP_REG(i32 %228)
  %230 = load i32, i32* %20, align 4
  %231 = load i32, i32* %24, align 4
  %232 = shl i32 1, %231
  %233 = add nsw i32 %230, %232
  %234 = sub nsw i32 %233, 1
  %235 = load i32, i32* %24, align 4
  %236 = ashr i32 %234, %235
  %237 = load i32, i32* %21, align 4
  %238 = load i32, i32* %25, align 4
  %239 = shl i32 1, %238
  %240 = add nsw i32 %237, %239
  %241 = sub nsw i32 %240, 1
  %242 = load i32, i32* %25, align 4
  %243 = ashr i32 %241, %242
  %244 = mul nsw i32 %236, %243
  store i32 %244, i32* %19, align 4
  %245 = load i32, i32* %13, align 4
  %246 = and i32 %245, -32768
  %247 = load i32, i32* %19, align 4
  %248 = and i32 %247, 32767
  %249 = or i32 %246, %248
  store i32 %249, i32* %13, align 4
  %250 = load i32, i32* %13, align 4
  %251 = call i32 @GX_LOAD_BP_REG(i32 %250)
  %252 = load i32, i32* %5, align 4
  %253 = add nsw i32 %252, 1
  store i32 %253, i32* %5, align 4
  %254 = load i64, i64* %9, align 8
  %255 = add nsw i64 %254, -1
  store i64 %255, i64* %9, align 8
  br label %141

256:                                              ; preds = %141
  br label %257

257:                                              ; preds = %256, %122
  %258 = call i32 (...) @__GX_FlushTextureState()
  ret void
}

declare dso_local i32 @_SHIFTL(i32, i32, i32) #1

declare dso_local i32 @_SHIFTR(i32, i32, i32) #1

declare dso_local i32 @__GX_FlushTextureState(...) #1

declare dso_local i32 @GX_LOAD_BP_REG(i32) #1

declare dso_local i64 @cntlzw(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
