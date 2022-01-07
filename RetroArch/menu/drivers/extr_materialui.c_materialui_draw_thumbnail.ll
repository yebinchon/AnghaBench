; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/drivers/extr_materialui.c_materialui_draw_thumbnail.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/drivers/extr_materialui.c_materialui_draw_thumbnail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i64, i64, %struct.TYPE_13__, %struct.TYPE_11__, i64 }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32* }
%struct.TYPE_15__ = type { i64, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64 }

@MENU_THUMBNAIL_STATUS_MISSING = common dso_local global i64 0, align 8
@MUI_TEXTURE_IMAGE = common dso_local global i64 0, align 8
@MENU_THUMBNAIL_STATUS_AVAILABLE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_16__*, i32*, %struct.TYPE_15__*, float, float, i32, i32, float)* @materialui_draw_thumbnail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @materialui_draw_thumbnail(%struct.TYPE_16__* %0, i32* %1, %struct.TYPE_15__* %2, float %3, float %4, i32 %5, i32 %6, float %7) #0 {
  %9 = alloca %struct.TYPE_16__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_15__*, align 8
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  %20 = alloca float, align 4
  %21 = alloca float, align 4
  %22 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %9, align 8
  store i32* %1, i32** %10, align 8
  store %struct.TYPE_15__* %2, %struct.TYPE_15__** %11, align 8
  store float %3, float* %12, align 4
  store float %4, float* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store float %7, float* %16, align 4
  %23 = load float, float* %16, align 4
  %24 = fcmp ole float %23, 0.000000e+00
  br i1 %24, label %25, label %26

25:                                               ; preds = %8
  br label %196

26:                                               ; preds = %8
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %28 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = sitofp i64 %29 to float
  %31 = load float, float* %16, align 4
  %32 = fmul float %30, %31
  store float %32, float* %19, align 4
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = sitofp i64 %35 to float
  %37 = load float, float* %16, align 4
  %38 = fmul float %36, %37
  store float %38, float* %20, align 4
  %39 = load float, float* %12, align 4
  %40 = load float, float* %19, align 4
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = sitofp i64 %43 to float
  %45 = fsub float %40, %44
  %46 = fdiv float %45, 2.000000e+00
  %47 = fsub float %39, %46
  store float %47, float* %17, align 4
  %48 = load float, float* %13, align 4
  %49 = load float, float* %20, align 4
  %50 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = sitofp i64 %52 to float
  %54 = fsub float %49, %53
  %55 = fdiv float %54, 2.000000e+00
  %56 = fsub float %48, %55
  store float %56, float* %18, align 4
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @MENU_THUMBNAIL_STATUS_MISSING, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %131

62:                                               ; preds = %26
  %63 = load float, float* %16, align 4
  %64 = fcmp oge float %63, 1.000000e+00
  br i1 %64, label %65, label %70

65:                                               ; preds = %62
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %67 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %66, i32 0, i32 5
  %68 = load i64, i64* %67, align 8
  %69 = sitofp i64 %68 to float
  store float %69, float* %21, align 4
  br label %77

70:                                               ; preds = %62
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %72 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %71, i32 0, i32 5
  %73 = load i64, i64* %72, align 8
  %74 = sitofp i64 %73 to float
  %75 = load float, float* %16, align 4
  %76 = fmul float %74, %75
  store float %76, float* %21, align 4
  br label %77

77:                                               ; preds = %70, %65
  %78 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %79 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %78, i32 0, i32 3
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %83 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @menu_display_set_alpha(i32 %81, i32 %84)
  %86 = load i32*, i32** %10, align 8
  %87 = load float, float* %17, align 4
  %88 = fptosi float %87 to i32
  %89 = load float, float* %18, align 4
  %90 = fptosi float %89 to i32
  %91 = load float, float* %19, align 4
  %92 = fptoui float %91 to i32
  %93 = load float, float* %20, align 4
  %94 = fptoui float %93 to i32
  %95 = load i32, i32* %14, align 4
  %96 = load i32, i32* %15, align 4
  %97 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %98 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %97, i32 0, i32 3
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @menu_display_draw_quad(i32* %86, i32 %88, i32 %90, i32 %92, i32 %94, i32 %95, i32 %96, i32 %100)
  %102 = load i32*, i32** %10, align 8
  %103 = load float, float* %21, align 4
  %104 = fptoui float %103 to i32
  %105 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %106 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %105, i32 0, i32 4
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 0
  %108 = load i32*, i32** %107, align 8
  %109 = load i64, i64* @MUI_TEXTURE_IMAGE, align 8
  %110 = getelementptr inbounds i32, i32* %108, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = load float, float* %17, align 4
  %113 = load float, float* %19, align 4
  %114 = load float, float* %21, align 4
  %115 = fsub float %113, %114
  %116 = fdiv float %115, 2.000000e+00
  %117 = fadd float %112, %116
  %118 = load float, float* %18, align 4
  %119 = load float, float* %20, align 4
  %120 = load float, float* %21, align 4
  %121 = fsub float %119, %120
  %122 = fdiv float %121, 2.000000e+00
  %123 = fadd float %118, %122
  %124 = load i32, i32* %14, align 4
  %125 = load i32, i32* %15, align 4
  %126 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %127 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %126, i32 0, i32 3
  %128 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @materialui_draw_icon(i32* %102, i32 %104, i32 %111, float %117, float %123, i32 %124, i32 %125, float 0.000000e+00, float 1.000000e+00, i32 %129)
  br label %196

131:                                              ; preds = %26
  %132 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %133 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* @MENU_THUMBNAIL_STATUS_AVAILABLE, align 8
  %136 = icmp eq i64 %134, %135
  br i1 %136, label %137, label %195

137:                                              ; preds = %131
  %138 = call %struct.TYPE_14__* (...) @config_get_ptr()
  store %struct.TYPE_14__* %138, %struct.TYPE_14__** %22, align 8
  %139 = load %struct.TYPE_14__*, %struct.TYPE_14__** %22, align 8
  %140 = icmp ne %struct.TYPE_14__* %139, null
  br i1 %140, label %142, label %141

141:                                              ; preds = %137
  br label %196

142:                                              ; preds = %137
  %143 = load %struct.TYPE_14__*, %struct.TYPE_14__** %22, align 8
  %144 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %179

148:                                              ; preds = %142
  %149 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %150 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %149, i32 0, i32 3
  %151 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %154 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %157 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 8
  %159 = mul nsw i32 %155, %158
  %160 = call i32 @menu_display_set_alpha(i32 %152, i32 %159)
  %161 = load i32*, i32** %10, align 8
  %162 = load float, float* %17, align 4
  %163 = fptosi float %162 to i32
  %164 = load float, float* %18, align 4
  %165 = fptosi float %164 to i32
  %166 = load float, float* %19, align 4
  %167 = fadd float %166, 5.000000e-01
  %168 = fptoui float %167 to i32
  %169 = load float, float* %20, align 4
  %170 = fadd float %169, 1.500000e+00
  %171 = fptoui float %170 to i32
  %172 = load i32, i32* %14, align 4
  %173 = load i32, i32* %15, align 4
  %174 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %175 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %174, i32 0, i32 3
  %176 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = call i32 @menu_display_draw_quad(i32* %161, i32 %163, i32 %165, i32 %168, i32 %171, i32 %172, i32 %173, i32 %177)
  br label %179

179:                                              ; preds = %148, %142
  %180 = load i32*, i32** %10, align 8
  %181 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %182 = load float, float* %12, align 4
  %183 = load float, float* %13, align 4
  %184 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %185 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %184, i32 0, i32 2
  %186 = load i64, i64* %185, align 8
  %187 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %188 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %187, i32 0, i32 1
  %189 = load i64, i64* %188, align 8
  %190 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %191 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = load float, float* %16, align 4
  %194 = call i32 @menu_thumbnail_draw(i32* %180, %struct.TYPE_15__* %181, float %182, float %183, i64 %186, i64 %189, i32 %192, float %193)
  br label %195

195:                                              ; preds = %179, %131
  br label %196

196:                                              ; preds = %25, %141, %195, %77
  ret void
}

declare dso_local i32 @menu_display_set_alpha(i32, i32) #1

declare dso_local i32 @menu_display_draw_quad(i32*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @materialui_draw_icon(i32*, i32, i32, float, float, i32, i32, float, float, i32) #1

declare dso_local %struct.TYPE_14__* @config_get_ptr(...) #1

declare dso_local i32 @menu_thumbnail_draw(i32*, %struct.TYPE_15__*, float, float, i64, i64, i32, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
