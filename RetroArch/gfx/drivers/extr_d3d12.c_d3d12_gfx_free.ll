; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_d3d12.c_d3d12_gfx_free.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_d3d12.c_d3d12_gfx_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32**, i32*, i32*, i32*, %struct.TYPE_18__, %struct.TYPE_17__, %struct.TYPE_28__, i32*, i32**, i32*, %struct.TYPE_27__, %struct.TYPE_23__, %struct.TYPE_21__, i32* }
%struct.TYPE_18__ = type { i32*, i32*, i32*, i32* }
%struct.TYPE_17__ = type { i32*, i32** }
%struct.TYPE_28__ = type { i32*, i32*, i32*, i32* }
%struct.TYPE_27__ = type { i32*, i32*, i32*, %struct.TYPE_26__, %struct.TYPE_25__, %struct.TYPE_24__ }
%struct.TYPE_26__ = type { i32*, %struct.TYPE_19__* }
%struct.TYPE_25__ = type { i32*, %struct.TYPE_19__* }
%struct.TYPE_24__ = type { i32*, %struct.TYPE_19__* }
%struct.TYPE_23__ = type { %struct.TYPE_22__, i32* }
%struct.TYPE_22__ = type { i32*, i32* }
%struct.TYPE_21__ = type { %struct.TYPE_20__*, i32*, i32* }
%struct.TYPE_20__ = type { i32*, i32* }

@GFX_MAX_SHADERS = common dso_local global i32 0, align 4
@D3D12_MAX_GPU_COUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @d3d12_gfx_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @d3d12_gfx_free(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_19__*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.TYPE_19__*
  store %struct.TYPE_19__* %6, %struct.TYPE_19__** %4, align 8
  %7 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %8 = icmp ne %struct.TYPE_19__* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %245

10:                                               ; preds = %1
  %11 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %12 = call i32 @d3d12_gfx_sync(%struct.TYPE_19__* %11)
  %13 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %14 = call i32 @d3d12_free_shader_preset(%struct.TYPE_19__* %13)
  %15 = call i32 (...) @font_driver_free_osd()
  %16 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %16, i32 0, i32 6
  %18 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %17, i32 0, i32 3
  %19 = load i32*, i32** %18, align 8
  %20 = call i32 @Release(i32* %19)
  %21 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %21, i32 0, i32 13
  %23 = load i32*, i32** %22, align 8
  %24 = call i32 @Release(i32* %23)
  %25 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %25, i32 0, i32 12
  %27 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %26, i32 0, i32 2
  %28 = load i32*, i32** %27, align 8
  %29 = call i32 @Release(i32* %28)
  %30 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %30, i32 0, i32 12
  %32 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = call i32 @Release(i32* %33)
  %35 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %35, i32 0, i32 12
  %37 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_20__*, %struct.TYPE_20__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %38, i64 0
  %40 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = call i32 @Release(i32* %41)
  %43 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %43, i32 0, i32 12
  %45 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_20__*, %struct.TYPE_20__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %46, i64 0
  %48 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = call i32 @Release(i32* %49)
  %51 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %51, i32 0, i32 11
  %53 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = call i32 @Release(i32* %54)
  %56 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %56, i32 0, i32 11
  %58 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = call i32 @Release(i32* %60)
  %62 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %62, i32 0, i32 11
  %64 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = call i32 @Release(i32* %66)
  %68 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %68, i32 0, i32 10
  %70 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %69, i32 0, i32 5
  %71 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %70, i32 0, i32 1
  %72 = load %struct.TYPE_19__*, %struct.TYPE_19__** %71, align 8
  %73 = call i32 @free(%struct.TYPE_19__* %72)
  %74 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %74, i32 0, i32 10
  %76 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %75, i32 0, i32 4
  %77 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %76, i32 0, i32 1
  %78 = load %struct.TYPE_19__*, %struct.TYPE_19__** %77, align 8
  %79 = call i32 @free(%struct.TYPE_19__* %78)
  %80 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %80, i32 0, i32 10
  %82 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %81, i32 0, i32 3
  %83 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %82, i32 0, i32 1
  %84 = load %struct.TYPE_19__*, %struct.TYPE_19__** %83, align 8
  %85 = call i32 @free(%struct.TYPE_19__* %84)
  %86 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %86, i32 0, i32 10
  %88 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %87, i32 0, i32 5
  %89 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = call i32 @Release(i32* %90)
  %92 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %92, i32 0, i32 10
  %94 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %93, i32 0, i32 4
  %95 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = call i32 @Release(i32* %96)
  %98 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %98, i32 0, i32 10
  %100 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %99, i32 0, i32 3
  %101 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = call i32 @Release(i32* %102)
  %104 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %104, i32 0, i32 10
  %106 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %105, i32 0, i32 2
  %107 = load i32*, i32** %106, align 8
  %108 = call i32 @Release(i32* %107)
  %109 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %109, i32 0, i32 10
  %111 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %110, i32 0, i32 1
  %112 = load i32*, i32** %111, align 8
  %113 = call i32 @Release(i32* %112)
  %114 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %114, i32 0, i32 10
  %116 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %115, i32 0, i32 0
  %117 = load i32*, i32** %116, align 8
  %118 = call i32 @Release(i32* %117)
  %119 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %119, i32 0, i32 9
  %121 = load i32*, i32** %120, align 8
  %122 = call i32 @Release(i32* %121)
  store i32 0, i32* %3, align 4
  br label %123

123:                                              ; preds = %136, %10
  %124 = load i32, i32* %3, align 4
  %125 = load i32, i32* @GFX_MAX_SHADERS, align 4
  %126 = icmp ult i32 %124, %125
  br i1 %126, label %127, label %139

127:                                              ; preds = %123
  %128 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %128, i32 0, i32 8
  %130 = load i32**, i32*** %129, align 8
  %131 = load i32, i32* %3, align 4
  %132 = zext i32 %131 to i64
  %133 = getelementptr inbounds i32*, i32** %130, i64 %132
  %134 = load i32*, i32** %133, align 8
  %135 = call i32 @Release(i32* %134)
  br label %136

136:                                              ; preds = %127
  %137 = load i32, i32* %3, align 4
  %138 = add i32 %137, 1
  store i32 %138, i32* %3, align 4
  br label %123

139:                                              ; preds = %123
  %140 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %141 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %140, i32 0, i32 7
  %142 = load i32*, i32** %141, align 8
  %143 = call i32 @Release(i32* %142)
  %144 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %145 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %144, i32 0, i32 6
  %146 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %145, i32 0, i32 2
  %147 = load i32*, i32** %146, align 8
  %148 = call i32 @Release(i32* %147)
  %149 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %150 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %149, i32 0, i32 6
  %151 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %150, i32 0, i32 1
  %152 = load i32*, i32** %151, align 8
  %153 = call i32 @Release(i32* %152)
  %154 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %155 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %154, i32 0, i32 6
  %156 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %155, i32 0, i32 0
  %157 = load i32*, i32** %156, align 8
  %158 = call i32 @Release(i32* %157)
  %159 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %160 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %159, i32 0, i32 4
  %161 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %160, i32 0, i32 3
  %162 = load i32*, i32** %161, align 8
  %163 = call i32 @Release(i32* %162)
  %164 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %165 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %164, i32 0, i32 5
  %166 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %165, i32 0, i32 1
  %167 = load i32**, i32*** %166, align 8
  %168 = getelementptr inbounds i32*, i32** %167, i64 0
  %169 = load i32*, i32** %168, align 8
  %170 = call i32 @Release(i32* %169)
  %171 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %172 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %171, i32 0, i32 5
  %173 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %172, i32 0, i32 1
  %174 = load i32**, i32*** %173, align 8
  %175 = getelementptr inbounds i32*, i32** %174, i64 1
  %176 = load i32*, i32** %175, align 8
  %177 = call i32 @Release(i32* %176)
  %178 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %179 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %178, i32 0, i32 5
  %180 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %179, i32 0, i32 0
  %181 = load i32*, i32** %180, align 8
  %182 = call i32 @Release(i32* %181)
  %183 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %184 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %183, i32 0, i32 4
  %185 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %184, i32 0, i32 2
  %186 = load i32*, i32** %185, align 8
  %187 = call i32 @Release(i32* %186)
  %188 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %189 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %188, i32 0, i32 4
  %190 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %189, i32 0, i32 1
  %191 = load i32*, i32** %190, align 8
  %192 = call i32 @Release(i32* %191)
  %193 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %194 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %193, i32 0, i32 4
  %195 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %194, i32 0, i32 0
  %196 = load i32*, i32** %195, align 8
  %197 = call i32 @Release(i32* %196)
  %198 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %199 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %198, i32 0, i32 3
  %200 = load i32*, i32** %199, align 8
  %201 = call i32 @Release(i32* %200)
  %202 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %203 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %202, i32 0, i32 2
  %204 = load i32*, i32** %203, align 8
  %205 = call i32 @Release(i32* %204)
  %206 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %207 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %206, i32 0, i32 1
  %208 = load i32*, i32** %207, align 8
  %209 = call i32 @Release(i32* %208)
  store i32 0, i32* %3, align 4
  br label %210

210:                                              ; preds = %239, %139
  %211 = load i32, i32* %3, align 4
  %212 = load i32, i32* @D3D12_MAX_GPU_COUNT, align 4
  %213 = icmp ult i32 %211, %212
  br i1 %213, label %214, label %242

214:                                              ; preds = %210
  %215 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %216 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %215, i32 0, i32 0
  %217 = load i32**, i32*** %216, align 8
  %218 = load i32, i32* %3, align 4
  %219 = zext i32 %218 to i64
  %220 = getelementptr inbounds i32*, i32** %217, i64 %219
  %221 = load i32*, i32** %220, align 8
  %222 = icmp ne i32* %221, null
  br i1 %222, label %223, label %238

223:                                              ; preds = %214
  %224 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %225 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %224, i32 0, i32 0
  %226 = load i32**, i32*** %225, align 8
  %227 = load i32, i32* %3, align 4
  %228 = zext i32 %227 to i64
  %229 = getelementptr inbounds i32*, i32** %226, i64 %228
  %230 = load i32*, i32** %229, align 8
  %231 = call i32 @Release(i32* %230)
  %232 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %233 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %232, i32 0, i32 0
  %234 = load i32**, i32*** %233, align 8
  %235 = load i32, i32* %3, align 4
  %236 = zext i32 %235 to i64
  %237 = getelementptr inbounds i32*, i32** %234, i64 %236
  store i32* null, i32** %237, align 8
  br label %238

238:                                              ; preds = %223, %214
  br label %239

239:                                              ; preds = %238
  %240 = load i32, i32* %3, align 4
  %241 = add i32 %240, 1
  store i32 %241, i32* %3, align 4
  br label %210

242:                                              ; preds = %210
  %243 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %244 = call i32 @free(%struct.TYPE_19__* %243)
  br label %245

245:                                              ; preds = %242, %9
  ret void
}

declare dso_local i32 @d3d12_gfx_sync(%struct.TYPE_19__*) #1

declare dso_local i32 @d3d12_free_shader_preset(%struct.TYPE_19__*) #1

declare dso_local i32 @font_driver_free_osd(...) #1

declare dso_local i32 @Release(i32*) #1

declare dso_local i32 @free(%struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
