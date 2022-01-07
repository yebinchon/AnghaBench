; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_d3d8.c_d3d8_set_menu_texture_frame.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_d3d8.c_d3d8_set_menu_texture_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32, i32, i32*, float, i64 }

@D3DPOOL_MANAGED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"[D3D8]: Failed to create menu texture.\0A\00", align 1
@D3DLOCK_NOSYSLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i32, i32, i32, float)* @d3d8_set_menu_texture_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @d3d8_set_menu_texture_frame(i8* %0, i8* %1, i32 %2, i32 %3, i32 %4, float %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca float, align 4
  %13 = alloca %struct.TYPE_7__, align 8
  %14 = alloca %struct.TYPE_6__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store float %5, float* %12, align 4
  %26 = load i8*, i8** %7, align 8
  %27 = bitcast i8* %26 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %27, %struct.TYPE_6__** %14, align 8
  %28 = load i8*, i8** %8, align 8
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* %11, align 4
  %32 = load float, float* %12, align 4
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 4
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %55

39:                                               ; preds = %6
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* %10, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %55, label %47

47:                                               ; preds = %39
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %11, align 4
  %54 = icmp ne i32 %52, %53
  br i1 %54, label %55, label %99

55:                                               ; preds = %47, %39, %6
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %57, align 8
  %59 = icmp ne %struct.TYPE_5__* %58, null
  br i1 %59, label %60, label %67

60:                                               ; preds = %55
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 4
  %65 = load i64, i64* %64, align 8
  %66 = call i32 @d3d8_texture_free(i64 %65)
  br label %67

67:                                               ; preds = %60, %55
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* %10, align 4
  %72 = load i32, i32* %11, align 4
  %73 = call i32 (...) @d3d8_get_argb8888_format()
  %74 = load i32, i32* @D3DPOOL_MANAGED, align 4
  %75 = call i64 @d3d8_texture_new(i32 %70, i32* null, i32 %71, i32 %72, i32 1, i32 0, i32 %73, i32 %74, i32 0, i32 0, i32 0, i32* null, i32* null, i32 0)
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 4
  store i64 %75, i64* %79, align 8
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 4
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %88, label %86

86:                                               ; preds = %67
  %87 = call i32 @RARCH_ERR(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %256

88:                                               ; preds = %67
  %89 = load i32, i32* %10, align 4
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 0
  store i32 %89, i32* %93, align 8
  %94 = load i32, i32* %11, align 4
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 1
  store i32 %94, i32* %98, align 4
  br label %99

99:                                               ; preds = %88, %47
  %100 = load float, float* %12, align 4
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 3
  store float %100, float* %104, align 8
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 0
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 4
  %109 = load i64, i64* %108, align 8
  %110 = load i32, i32* @D3DLOCK_NOSYSLOCK, align 4
  %111 = call i64 @d3d8_lock_rectangle(i64 %109, i32 0, %struct.TYPE_7__* %13, i32* null, i32 0, i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %256

113:                                              ; preds = %99
  %114 = load i32, i32* %9, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %161

116:                                              ; preds = %113
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = inttoptr i64 %118 to i32*
  store i32* %119, i32** %17, align 8
  %120 = load i8*, i8** %8, align 8
  %121 = bitcast i8* %120 to i32*
  store i32* %121, i32** %18, align 8
  store i32 0, i32* %15, align 4
  br label %122

122:                                              ; preds = %148, %116
  %123 = load i32, i32* %15, align 4
  %124 = load i32, i32* %11, align 4
  %125 = icmp ult i32 %123, %124
  br i1 %125, label %126, label %160

126:                                              ; preds = %122
  %127 = load i32*, i32** %17, align 8
  %128 = load i32*, i32** %18, align 8
  %129 = load i32, i32* %10, align 4
  %130 = zext i32 %129 to i64
  %131 = mul i64 %130, 4
  %132 = trunc i64 %131 to i32
  %133 = call i32 @memcpy(i32* %127, i32* %128, i32 %132)
  %134 = load i32*, i32** %17, align 8
  %135 = load i32, i32* %10, align 4
  %136 = zext i32 %135 to i64
  %137 = mul i64 %136, 4
  %138 = getelementptr inbounds i32, i32* %134, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = sext i32 %140 to i64
  %142 = load i32, i32* %10, align 4
  %143 = zext i32 %142 to i64
  %144 = mul i64 %143, 4
  %145 = sub i64 %141, %144
  %146 = trunc i64 %145 to i32
  %147 = call i32 @memset(i32* %138, i32 0, i32 %146)
  br label %148

148:                                              ; preds = %126
  %149 = load i32, i32* %15, align 4
  %150 = add i32 %149, 1
  store i32 %150, i32* %15, align 4
  %151 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = load i32*, i32** %17, align 8
  %154 = sext i32 %152 to i64
  %155 = getelementptr inbounds i32, i32* %153, i64 %154
  store i32* %155, i32** %17, align 8
  %156 = load i32, i32* %10, align 4
  %157 = load i32*, i32** %18, align 8
  %158 = zext i32 %156 to i64
  %159 = getelementptr inbounds i32, i32* %157, i64 %158
  store i32* %159, i32** %18, align 8
  br label %122

160:                                              ; preds = %122
  br label %243

161:                                              ; preds = %113
  %162 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 1
  %163 = load i64, i64* %162, align 8
  %164 = inttoptr i64 %163 to i32*
  store i32* %164, i32** %19, align 8
  %165 = load i8*, i8** %8, align 8
  %166 = bitcast i8* %165 to i32*
  store i32* %166, i32** %20, align 8
  store i32 0, i32* %15, align 4
  br label %167

167:                                              ; preds = %229, %161
  %168 = load i32, i32* %15, align 4
  %169 = load i32, i32* %11, align 4
  %170 = icmp ult i32 %168, %169
  br i1 %170, label %171, label %242

171:                                              ; preds = %167
  store i32 0, i32* %16, align 4
  br label %172

172:                                              ; preds = %225, %171
  %173 = load i32, i32* %16, align 4
  %174 = load i32, i32* %10, align 4
  %175 = icmp ult i32 %173, %174
  br i1 %175, label %176, label %228

176:                                              ; preds = %172
  %177 = load i32*, i32** %20, align 8
  %178 = load i32, i32* %16, align 4
  %179 = zext i32 %178 to i64
  %180 = getelementptr inbounds i32, i32* %177, i64 %179
  %181 = load i32, i32* %180, align 4
  store i32 %181, i32* %21, align 4
  %182 = load i32, i32* %21, align 4
  %183 = ashr i32 %182, 12
  %184 = and i32 %183, 15
  store i32 %184, i32* %22, align 4
  %185 = load i32, i32* %21, align 4
  %186 = ashr i32 %185, 8
  %187 = and i32 %186, 15
  store i32 %187, i32* %23, align 4
  %188 = load i32, i32* %21, align 4
  %189 = ashr i32 %188, 4
  %190 = and i32 %189, 15
  store i32 %190, i32* %24, align 4
  %191 = load i32, i32* %21, align 4
  %192 = ashr i32 %191, 0
  %193 = and i32 %192, 15
  store i32 %193, i32* %25, align 4
  %194 = load i32, i32* %22, align 4
  %195 = shl i32 %194, 4
  %196 = load i32, i32* %22, align 4
  %197 = or i32 %195, %196
  %198 = shl i32 %197, 16
  store i32 %198, i32* %22, align 4
  %199 = load i32, i32* %23, align 4
  %200 = shl i32 %199, 4
  %201 = load i32, i32* %23, align 4
  %202 = or i32 %200, %201
  %203 = shl i32 %202, 8
  store i32 %203, i32* %23, align 4
  %204 = load i32, i32* %24, align 4
  %205 = shl i32 %204, 4
  %206 = load i32, i32* %24, align 4
  %207 = or i32 %205, %206
  %208 = shl i32 %207, 0
  store i32 %208, i32* %24, align 4
  %209 = load i32, i32* %25, align 4
  %210 = shl i32 %209, 4
  %211 = load i32, i32* %25, align 4
  %212 = or i32 %210, %211
  %213 = shl i32 %212, 24
  store i32 %213, i32* %25, align 4
  %214 = load i32, i32* %22, align 4
  %215 = load i32, i32* %23, align 4
  %216 = or i32 %214, %215
  %217 = load i32, i32* %24, align 4
  %218 = or i32 %216, %217
  %219 = load i32, i32* %25, align 4
  %220 = or i32 %218, %219
  %221 = load i32*, i32** %19, align 8
  %222 = load i32, i32* %16, align 4
  %223 = zext i32 %222 to i64
  %224 = getelementptr inbounds i32, i32* %221, i64 %223
  store i32 %220, i32* %224, align 4
  br label %225

225:                                              ; preds = %176
  %226 = load i32, i32* %16, align 4
  %227 = add i32 %226, 1
  store i32 %227, i32* %16, align 4
  br label %172

228:                                              ; preds = %172
  br label %229

229:                                              ; preds = %228
  %230 = load i32, i32* %15, align 4
  %231 = add i32 %230, 1
  store i32 %231, i32* %15, align 4
  %232 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %233 = load i32, i32* %232, align 8
  %234 = ashr i32 %233, 2
  %235 = load i32*, i32** %19, align 8
  %236 = sext i32 %234 to i64
  %237 = getelementptr inbounds i32, i32* %235, i64 %236
  store i32* %237, i32** %19, align 8
  %238 = load i32, i32* %10, align 4
  %239 = load i32*, i32** %20, align 8
  %240 = zext i32 %238 to i64
  %241 = getelementptr inbounds i32, i32* %239, i64 %240
  store i32* %241, i32** %20, align 8
  br label %167

242:                                              ; preds = %167
  br label %243

243:                                              ; preds = %242, %160
  %244 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %245 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %244, i32 0, i32 0
  %246 = load %struct.TYPE_5__*, %struct.TYPE_5__** %245, align 8
  %247 = icmp ne %struct.TYPE_5__* %246, null
  br i1 %247, label %248, label %255

248:                                              ; preds = %243
  %249 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %250 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %249, i32 0, i32 0
  %251 = load %struct.TYPE_5__*, %struct.TYPE_5__** %250, align 8
  %252 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %251, i32 0, i32 4
  %253 = load i64, i64* %252, align 8
  %254 = call i32 @d3d8_unlock_rectangle(i64 %253)
  br label %255

255:                                              ; preds = %248, %243
  br label %256

256:                                              ; preds = %86, %255, %99
  ret void
}

declare dso_local i32 @d3d8_texture_free(i64) #1

declare dso_local i64 @d3d8_texture_new(i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32) #1

declare dso_local i32 @d3d8_get_argb8888_format(...) #1

declare dso_local i32 @RARCH_ERR(i8*) #1

declare dso_local i64 @d3d8_lock_rectangle(i64, i32, %struct.TYPE_7__*, i32*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @d3d8_unlock_rectangle(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
