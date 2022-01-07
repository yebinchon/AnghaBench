; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_d3d9.c_d3d9_set_menu_texture_frame.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_d3d9.c_d3d9_set_menu_texture_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32, i32, float, i64 }

@D3DPOOL_MANAGED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"[D3D9]: Failed to create menu texture.\0A\00", align 1
@D3DLOCK_NOSYSLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i32, i32, i32, float)* @d3d9_set_menu_texture_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @d3d9_set_menu_texture_frame(i8* %0, i8* %1, i32 %2, i32 %3, i32 %4, float %5) #0 {
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
  %34 = icmp ne %struct.TYPE_6__* %33, null
  br i1 %34, label %35, label %40

35:                                               ; preds = %6
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  %39 = icmp ne %struct.TYPE_5__* %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %35, %6
  br label %262

41:                                               ; preds = %35
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 3
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %64

48:                                               ; preds = %41
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* %10, align 4
  %55 = icmp ne i32 %53, %54
  br i1 %55, label %64, label %56

56:                                               ; preds = %48
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %11, align 4
  %63 = icmp ne i32 %61, %62
  br i1 %63, label %64, label %103

64:                                               ; preds = %56, %48, %41
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 3
  %69 = load i64, i64* %68, align 8
  %70 = trunc i64 %69 to i32
  %71 = call i32 @d3d9_texture_free(i32 %70)
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* %10, align 4
  %76 = load i32, i32* %11, align 4
  %77 = call i32 (...) @d3d9_get_argb8888_format()
  %78 = load i32, i32* @D3DPOOL_MANAGED, align 4
  %79 = call i64 @d3d9_texture_new(i32 %74, i32* null, i32 %75, i32 %76, i32 1, i32 0, i32 %77, i32 %78, i32 0, i32 0, i32 0, i32* null, i32* null, i32 0)
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 3
  store i64 %79, i64* %83, align 8
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 3
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %92, label %90

90:                                               ; preds = %64
  %91 = call i32 @RARCH_ERR(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %262

92:                                               ; preds = %64
  %93 = load i32, i32* %10, align 4
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 0
  store i32 %93, i32* %97, align 8
  %98 = load i32, i32* %11, align 4
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 0
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 1
  store i32 %98, i32* %102, align 4
  br label %103

103:                                              ; preds = %92, %56
  %104 = load float, float* %12, align 4
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 0
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 2
  store float %104, float* %108, align 8
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 0
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 3
  %113 = load i64, i64* %112, align 8
  %114 = trunc i64 %113 to i32
  %115 = load i32, i32* @D3DLOCK_NOSYSLOCK, align 4
  %116 = call i64 @d3d9_lock_rectangle(i32 %114, i32 0, %struct.TYPE_7__* %13, i32* null, i32 0, i32 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %262

118:                                              ; preds = %103
  %119 = load i32, i32* %9, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %166

121:                                              ; preds = %118
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = inttoptr i64 %123 to i32*
  store i32* %124, i32** %17, align 8
  %125 = load i8*, i8** %8, align 8
  %126 = bitcast i8* %125 to i32*
  store i32* %126, i32** %18, align 8
  store i32 0, i32* %15, align 4
  br label %127

127:                                              ; preds = %153, %121
  %128 = load i32, i32* %15, align 4
  %129 = load i32, i32* %11, align 4
  %130 = icmp ult i32 %128, %129
  br i1 %130, label %131, label %165

131:                                              ; preds = %127
  %132 = load i32*, i32** %17, align 8
  %133 = load i32*, i32** %18, align 8
  %134 = load i32, i32* %10, align 4
  %135 = zext i32 %134 to i64
  %136 = mul i64 %135, 4
  %137 = trunc i64 %136 to i32
  %138 = call i32 @memcpy(i32* %132, i32* %133, i32 %137)
  %139 = load i32*, i32** %17, align 8
  %140 = load i32, i32* %10, align 4
  %141 = zext i32 %140 to i64
  %142 = mul i64 %141, 4
  %143 = getelementptr inbounds i32, i32* %139, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = sext i32 %145 to i64
  %147 = load i32, i32* %10, align 4
  %148 = zext i32 %147 to i64
  %149 = mul i64 %148, 4
  %150 = sub i64 %146, %149
  %151 = trunc i64 %150 to i32
  %152 = call i32 @memset(i32* %143, i32 0, i32 %151)
  br label %153

153:                                              ; preds = %131
  %154 = load i32, i32* %15, align 4
  %155 = add i32 %154, 1
  store i32 %155, i32* %15, align 4
  %156 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = load i32*, i32** %17, align 8
  %159 = sext i32 %157 to i64
  %160 = getelementptr inbounds i32, i32* %158, i64 %159
  store i32* %160, i32** %17, align 8
  %161 = load i32, i32* %10, align 4
  %162 = load i32*, i32** %18, align 8
  %163 = zext i32 %161 to i64
  %164 = getelementptr inbounds i32, i32* %162, i64 %163
  store i32* %164, i32** %18, align 8
  br label %127

165:                                              ; preds = %127
  br label %248

166:                                              ; preds = %118
  %167 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 1
  %168 = load i64, i64* %167, align 8
  %169 = inttoptr i64 %168 to i32*
  store i32* %169, i32** %19, align 8
  %170 = load i8*, i8** %8, align 8
  %171 = bitcast i8* %170 to i32*
  store i32* %171, i32** %20, align 8
  store i32 0, i32* %15, align 4
  br label %172

172:                                              ; preds = %234, %166
  %173 = load i32, i32* %15, align 4
  %174 = load i32, i32* %11, align 4
  %175 = icmp ult i32 %173, %174
  br i1 %175, label %176, label %247

176:                                              ; preds = %172
  store i32 0, i32* %16, align 4
  br label %177

177:                                              ; preds = %230, %176
  %178 = load i32, i32* %16, align 4
  %179 = load i32, i32* %10, align 4
  %180 = icmp ult i32 %178, %179
  br i1 %180, label %181, label %233

181:                                              ; preds = %177
  %182 = load i32*, i32** %20, align 8
  %183 = load i32, i32* %16, align 4
  %184 = zext i32 %183 to i64
  %185 = getelementptr inbounds i32, i32* %182, i64 %184
  %186 = load i32, i32* %185, align 4
  store i32 %186, i32* %21, align 4
  %187 = load i32, i32* %21, align 4
  %188 = ashr i32 %187, 12
  %189 = and i32 %188, 15
  store i32 %189, i32* %22, align 4
  %190 = load i32, i32* %21, align 4
  %191 = ashr i32 %190, 8
  %192 = and i32 %191, 15
  store i32 %192, i32* %23, align 4
  %193 = load i32, i32* %21, align 4
  %194 = ashr i32 %193, 4
  %195 = and i32 %194, 15
  store i32 %195, i32* %24, align 4
  %196 = load i32, i32* %21, align 4
  %197 = ashr i32 %196, 0
  %198 = and i32 %197, 15
  store i32 %198, i32* %25, align 4
  %199 = load i32, i32* %22, align 4
  %200 = shl i32 %199, 4
  %201 = load i32, i32* %22, align 4
  %202 = or i32 %200, %201
  %203 = shl i32 %202, 16
  store i32 %203, i32* %22, align 4
  %204 = load i32, i32* %23, align 4
  %205 = shl i32 %204, 4
  %206 = load i32, i32* %23, align 4
  %207 = or i32 %205, %206
  %208 = shl i32 %207, 8
  store i32 %208, i32* %23, align 4
  %209 = load i32, i32* %24, align 4
  %210 = shl i32 %209, 4
  %211 = load i32, i32* %24, align 4
  %212 = or i32 %210, %211
  %213 = shl i32 %212, 0
  store i32 %213, i32* %24, align 4
  %214 = load i32, i32* %25, align 4
  %215 = shl i32 %214, 4
  %216 = load i32, i32* %25, align 4
  %217 = or i32 %215, %216
  %218 = shl i32 %217, 24
  store i32 %218, i32* %25, align 4
  %219 = load i32, i32* %22, align 4
  %220 = load i32, i32* %23, align 4
  %221 = or i32 %219, %220
  %222 = load i32, i32* %24, align 4
  %223 = or i32 %221, %222
  %224 = load i32, i32* %25, align 4
  %225 = or i32 %223, %224
  %226 = load i32*, i32** %19, align 8
  %227 = load i32, i32* %16, align 4
  %228 = zext i32 %227 to i64
  %229 = getelementptr inbounds i32, i32* %226, i64 %228
  store i32 %225, i32* %229, align 4
  br label %230

230:                                              ; preds = %181
  %231 = load i32, i32* %16, align 4
  %232 = add i32 %231, 1
  store i32 %232, i32* %16, align 4
  br label %177

233:                                              ; preds = %177
  br label %234

234:                                              ; preds = %233
  %235 = load i32, i32* %15, align 4
  %236 = add i32 %235, 1
  store i32 %236, i32* %15, align 4
  %237 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %238 = load i32, i32* %237, align 8
  %239 = ashr i32 %238, 2
  %240 = load i32*, i32** %19, align 8
  %241 = sext i32 %239 to i64
  %242 = getelementptr inbounds i32, i32* %240, i64 %241
  store i32* %242, i32** %19, align 8
  %243 = load i32, i32* %10, align 4
  %244 = load i32*, i32** %20, align 8
  %245 = zext i32 %243 to i64
  %246 = getelementptr inbounds i32, i32* %244, i64 %245
  store i32* %246, i32** %20, align 8
  br label %172

247:                                              ; preds = %172
  br label %248

248:                                              ; preds = %247, %165
  %249 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %250 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %249, i32 0, i32 0
  %251 = load %struct.TYPE_5__*, %struct.TYPE_5__** %250, align 8
  %252 = icmp ne %struct.TYPE_5__* %251, null
  br i1 %252, label %253, label %261

253:                                              ; preds = %248
  %254 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %255 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %254, i32 0, i32 0
  %256 = load %struct.TYPE_5__*, %struct.TYPE_5__** %255, align 8
  %257 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %256, i32 0, i32 3
  %258 = load i64, i64* %257, align 8
  %259 = trunc i64 %258 to i32
  %260 = call i32 @d3d9_unlock_rectangle(i32 %259)
  br label %261

261:                                              ; preds = %253, %248
  br label %262

262:                                              ; preds = %40, %90, %261, %103
  ret void
}

declare dso_local i32 @d3d9_texture_free(i32) #1

declare dso_local i64 @d3d9_texture_new(i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32) #1

declare dso_local i32 @d3d9_get_argb8888_format(...) #1

declare dso_local i32 @RARCH_ERR(i8*) #1

declare dso_local i64 @d3d9_lock_rectangle(i32, i32, %struct.TYPE_7__*, i32*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @d3d9_unlock_rectangle(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
