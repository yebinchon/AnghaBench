; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/drivers/extr_stripes.c_stripes_render_keyboard.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/drivers/extr_stripes.c_stripes_render_keyboard.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_14__*, %struct.TYPE_11__ }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_11__ = type { i64* }
%struct.TYPE_12__ = type { i32, i32 }

@__const.stripes_render_keyboard.white = private unnamed_addr constant [16 x float] [float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00], align 16
@STRIPES_TEXTURE_KEY_HOVER = common dso_local global i64 0, align 8
@TEXT_ALIGN_CENTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_13__*, %struct.TYPE_12__*, i8**, i32)* @stripes_render_keyboard to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stripes_render_keyboard(%struct.TYPE_13__* %0, %struct.TYPE_12__* %1, i8** %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [16 x float], align 16
  %15 = alloca [16 x float], align 16
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %5, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %6, align 8
  store i8** %2, i8*** %7, align 8
  store i32 %3, i32* %8, align 4
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %12, align 4
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %13, align 4
  %24 = bitcast [16 x float]* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %24, i8 0, i64 64, i1 false)
  %25 = bitcast i8* %24 to [16 x float]*
  %26 = getelementptr inbounds [16 x float], [16 x float]* %25, i32 0, i32 3
  store float 0x3FEB333340000000, float* %26, align 4
  %27 = getelementptr inbounds [16 x float], [16 x float]* %25, i32 0, i32 7
  store float 0x3FEB333340000000, float* %27, align 4
  %28 = getelementptr inbounds [16 x float], [16 x float]* %25, i32 0, i32 11
  store float 0x3FEB333340000000, float* %28, align 4
  %29 = getelementptr inbounds [16 x float], [16 x float]* %25, i32 0, i32 15
  store float 0x3FEB333340000000, float* %29, align 4
  %30 = bitcast [16 x float]* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %30, i8* align 16 bitcast ([16 x float]* @__const.stripes_render_keyboard.white to i8*), i64 64, i1 false)
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %32 = load i32, i32* %13, align 4
  %33 = uitofp i32 %32 to double
  %34 = fdiv double %33, 2.000000e+00
  %35 = fptoui double %34 to i32
  %36 = load i32, i32* %12, align 4
  %37 = load i32, i32* %13, align 4
  %38 = uitofp i32 %37 to double
  %39 = fdiv double %38, 2.000000e+00
  %40 = fptoui double %39 to i32
  %41 = load i32, i32* %12, align 4
  %42 = load i32, i32* %13, align 4
  %43 = getelementptr inbounds [16 x float], [16 x float]* %14, i64 0, i64 0
  %44 = call i32 @menu_display_draw_quad(%struct.TYPE_12__* %31, i32 0, i32 %35, i32 %36, i32 %40, i32 %41, i32 %42, float* %43)
  %45 = load i32, i32* %12, align 4
  %46 = udiv i32 %45, 11
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* %13, align 4
  %48 = udiv i32 %47, 10
  store i32 %48, i32* %11, align 4
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* %11, align 4
  %51 = icmp sge i32 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %4
  %53 = load i32, i32* %11, align 4
  store i32 %53, i32* %10, align 4
  br label %54

54:                                               ; preds = %52, %4
  store i32 0, i32* %9, align 4
  br label %55

55:                                               ; preds = %165, %54
  %56 = load i32, i32* %9, align 4
  %57 = icmp ult i32 %56, 44
  br i1 %57, label %58, label %168

58:                                               ; preds = %55
  %59 = load i32, i32* %9, align 4
  %60 = udiv i32 %59, 11
  %61 = load i32, i32* %13, align 4
  %62 = mul i32 %60, %61
  %63 = uitofp i32 %62 to double
  %64 = fdiv double %63, 1.000000e+01
  %65 = fptosi double %64 to i32
  store i32 %65, i32* %16, align 4
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* %8, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %115

69:                                               ; preds = %58
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 0
  %73 = load i64*, i64** %72, align 8
  %74 = load i64, i64* @STRIPES_TEXTURE_KEY_HOVER, align 8
  %75 = getelementptr inbounds i64, i64* %73, i64 %74
  %76 = load i64, i64* %75, align 8
  store i64 %76, i64* %17, align 8
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %78 = call i32 @menu_display_blend_begin(%struct.TYPE_12__* %77)
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %80 = load i32, i32* %12, align 4
  %81 = uitofp i32 %80 to double
  %82 = fdiv double %81, 2.000000e+00
  %83 = load i32, i32* %10, align 4
  %84 = mul nsw i32 11, %83
  %85 = sitofp i32 %84 to double
  %86 = fdiv double %85, 2.000000e+00
  %87 = fsub double %82, %86
  %88 = load i32, i32* %9, align 4
  %89 = urem i32 %88, 11
  %90 = load i32, i32* %10, align 4
  %91 = mul i32 %89, %90
  %92 = uitofp i32 %91 to double
  %93 = fadd double %87, %92
  %94 = fptoui double %93 to i32
  %95 = load i32, i32* %13, align 4
  %96 = uitofp i32 %95 to double
  %97 = fdiv double %96, 2.000000e+00
  %98 = load i32, i32* %11, align 4
  %99 = sitofp i32 %98 to double
  %100 = fmul double %99, 1.500000e+00
  %101 = fadd double %97, %100
  %102 = load i32, i32* %16, align 4
  %103 = sitofp i32 %102 to double
  %104 = fadd double %101, %103
  %105 = fptoui double %104 to i32
  %106 = load i32, i32* %10, align 4
  %107 = load i32, i32* %11, align 4
  %108 = load i32, i32* %12, align 4
  %109 = load i32, i32* %13, align 4
  %110 = getelementptr inbounds [16 x float], [16 x float]* %15, i64 0, i64 0
  %111 = load i64, i64* %17, align 8
  %112 = call i32 @menu_display_draw_texture(%struct.TYPE_12__* %79, i32 %94, i32 %105, i32 %106, i32 %107, i32 %108, i32 %109, float* %110, i64 %111)
  %113 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %114 = call i32 @menu_display_blend_end(%struct.TYPE_12__* %113)
  br label %115

115:                                              ; preds = %69, %58
  %116 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %116, i32 0, i32 0
  %118 = load %struct.TYPE_14__*, %struct.TYPE_14__** %117, align 8
  %119 = load i8**, i8*** %7, align 8
  %120 = load i32, i32* %9, align 4
  %121 = zext i32 %120 to i64
  %122 = getelementptr inbounds i8*, i8** %119, i64 %121
  %123 = load i8*, i8** %122, align 8
  %124 = load i32, i32* %12, align 4
  %125 = uitofp i32 %124 to double
  %126 = fdiv double %125, 2.000000e+00
  %127 = load i32, i32* %10, align 4
  %128 = mul nsw i32 11, %127
  %129 = sitofp i32 %128 to double
  %130 = fdiv double %129, 2.000000e+00
  %131 = fsub double %126, %130
  %132 = load i32, i32* %9, align 4
  %133 = urem i32 %132, 11
  %134 = load i32, i32* %10, align 4
  %135 = mul i32 %133, %134
  %136 = uitofp i32 %135 to double
  %137 = fadd double %131, %136
  %138 = load i32, i32* %10, align 4
  %139 = sitofp i32 %138 to double
  %140 = fdiv double %139, 2.000000e+00
  %141 = fadd double %137, %140
  %142 = fptoui double %141 to i32
  %143 = load i32, i32* %13, align 4
  %144 = uitofp i32 %143 to double
  %145 = fdiv double %144, 2.000000e+00
  %146 = load i32, i32* %11, align 4
  %147 = sitofp i32 %146 to double
  %148 = fadd double %145, %147
  %149 = load i32, i32* %16, align 4
  %150 = sitofp i32 %149 to double
  %151 = fadd double %148, %150
  %152 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %153 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %152, i32 0, i32 0
  %154 = load %struct.TYPE_14__*, %struct.TYPE_14__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = sdiv i32 %156, 3
  %158 = sitofp i32 %157 to double
  %159 = fadd double %151, %158
  %160 = fptoui double %159 to i32
  %161 = load i32, i32* %12, align 4
  %162 = load i32, i32* %13, align 4
  %163 = load i32, i32* @TEXT_ALIGN_CENTER, align 4
  %164 = call i32 @menu_display_draw_text(%struct.TYPE_14__* %118, i8* %123, i32 %142, i32 %160, i32 %161, i32 %162, i32 -1, i32 %163, float 1.000000e+00, i32 0, i32 0, i32 0)
  br label %165

165:                                              ; preds = %115
  %166 = load i32, i32* %9, align 4
  %167 = add i32 %166, 1
  store i32 %167, i32* %9, align 4
  br label %55

168:                                              ; preds = %55
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @menu_display_draw_quad(%struct.TYPE_12__*, i32, i32, i32, i32, i32, i32, float*) #2

declare dso_local i32 @menu_display_blend_begin(%struct.TYPE_12__*) #2

declare dso_local i32 @menu_display_draw_texture(%struct.TYPE_12__*, i32, i32, i32, i32, i32, i32, float*, i64) #2

declare dso_local i32 @menu_display_blend_end(%struct.TYPE_12__*) #2

declare dso_local i32 @menu_display_draw_text(%struct.TYPE_14__*, i8*, i32, i32, i32, i32, i32, i32, float, i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
