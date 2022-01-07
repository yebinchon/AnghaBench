; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/extr_menu_driver.c_menu_display_draw_keyboard.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/extr_menu_driver.c_menu_display_draw_keyboard.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32 }

@__const.menu_display_draw_keyboard.white = private unnamed_addr constant [16 x float] [float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00], align 16
@osk_dark = common dso_local global i32* null, align 8
@TEXT_ALIGN_CENTER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @menu_display_draw_keyboard(i64 %0, %struct.TYPE_11__* %1, %struct.TYPE_10__* %2, i8** %3, i32 %4, i32 %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca [16 x float], align 16
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i64 %0, i64* %7, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %8, align 8
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %9, align 8
  store i8** %3, i8*** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %16, align 4
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %17, align 4
  %27 = bitcast [16 x float]* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %27, i8* align 16 bitcast ([16 x float]* @__const.menu_display_draw_keyboard.white to i8*), i64 64, i1 false)
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %29 = load i32, i32* %17, align 4
  %30 = uitofp i32 %29 to double
  %31 = fdiv double %30, 2.000000e+00
  %32 = fptoui double %31 to i32
  %33 = load i32, i32* %16, align 4
  %34 = load i32, i32* %17, align 4
  %35 = uitofp i32 %34 to double
  %36 = fdiv double %35, 2.000000e+00
  %37 = fptoui double %36 to i32
  %38 = load i32, i32* %16, align 4
  %39 = load i32, i32* %17, align 4
  %40 = load i32*, i32** @osk_dark, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  %42 = call i32 @menu_display_draw_quad(%struct.TYPE_10__* %28, i32 0, i32 %32, i32 %33, i32 %37, i32 %38, i32 %39, i32* %41)
  %43 = load i32, i32* %16, align 4
  %44 = udiv i32 %43, 11
  store i32 %44, i32* %14, align 4
  %45 = load i32, i32* %17, align 4
  %46 = udiv i32 %45, 10
  store i32 %46, i32* %15, align 4
  %47 = load i32, i32* %14, align 4
  %48 = load i32, i32* %15, align 4
  %49 = icmp sge i32 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %6
  %51 = load i32, i32* %15, align 4
  store i32 %51, i32* %14, align 4
  br label %52

52:                                               ; preds = %50, %6
  store i32 0, i32* %13, align 4
  br label %53

53:                                               ; preds = %154, %52
  %54 = load i32, i32* %13, align 4
  %55 = icmp ult i32 %54, 44
  br i1 %55, label %56, label %157

56:                                               ; preds = %53
  %57 = load i32, i32* %13, align 4
  %58 = udiv i32 %57, 11
  %59 = load i32, i32* %17, align 4
  %60 = mul i32 %58, %59
  %61 = uitofp i32 %60 to double
  %62 = fdiv double %61, 1.000000e+01
  %63 = fptosi double %62 to i32
  store i32 %63, i32* %19, align 4
  store i32 -1, i32* %20, align 4
  %64 = load i32, i32* %13, align 4
  %65 = load i32, i32* %11, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %107

67:                                               ; preds = %56
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %69 = call i32 @menu_display_blend_begin(%struct.TYPE_10__* %68)
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %71 = load i32, i32* %16, align 4
  %72 = uitofp i32 %71 to double
  %73 = fdiv double %72, 2.000000e+00
  %74 = load i32, i32* %14, align 4
  %75 = mul nsw i32 11, %74
  %76 = sitofp i32 %75 to double
  %77 = fdiv double %76, 2.000000e+00
  %78 = fsub double %73, %77
  %79 = load i32, i32* %13, align 4
  %80 = urem i32 %79, 11
  %81 = load i32, i32* %14, align 4
  %82 = mul i32 %80, %81
  %83 = uitofp i32 %82 to double
  %84 = fadd double %78, %83
  %85 = fptoui double %84 to i32
  %86 = load i32, i32* %17, align 4
  %87 = uitofp i32 %86 to double
  %88 = fdiv double %87, 2.000000e+00
  %89 = load i32, i32* %15, align 4
  %90 = sitofp i32 %89 to double
  %91 = fmul double %90, 1.500000e+00
  %92 = fadd double %88, %91
  %93 = load i32, i32* %19, align 4
  %94 = sitofp i32 %93 to double
  %95 = fadd double %92, %94
  %96 = fptoui double %95 to i32
  %97 = load i32, i32* %14, align 4
  %98 = load i32, i32* %15, align 4
  %99 = load i32, i32* %16, align 4
  %100 = load i32, i32* %17, align 4
  %101 = getelementptr inbounds [16 x float], [16 x float]* %18, i64 0, i64 0
  %102 = load i64, i64* %7, align 8
  %103 = call i32 @menu_display_draw_texture(%struct.TYPE_10__* %70, i32 %85, i32 %96, i32 %97, i32 %98, i32 %99, i32 %100, float* %101, i64 %102)
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %105 = call i32 @menu_display_blend_end(%struct.TYPE_10__* %104)
  %106 = load i32, i32* %12, align 4
  store i32 %106, i32* %20, align 4
  br label %107

107:                                              ; preds = %67, %56
  %108 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %109 = load i8**, i8*** %10, align 8
  %110 = load i32, i32* %13, align 4
  %111 = zext i32 %110 to i64
  %112 = getelementptr inbounds i8*, i8** %109, i64 %111
  %113 = load i8*, i8** %112, align 8
  %114 = load i32, i32* %16, align 4
  %115 = uitofp i32 %114 to double
  %116 = fdiv double %115, 2.000000e+00
  %117 = load i32, i32* %14, align 4
  %118 = mul nsw i32 11, %117
  %119 = sitofp i32 %118 to double
  %120 = fdiv double %119, 2.000000e+00
  %121 = fsub double %116, %120
  %122 = load i32, i32* %13, align 4
  %123 = urem i32 %122, 11
  %124 = load i32, i32* %14, align 4
  %125 = mul i32 %123, %124
  %126 = uitofp i32 %125 to double
  %127 = fadd double %121, %126
  %128 = load i32, i32* %14, align 4
  %129 = sitofp i32 %128 to double
  %130 = fdiv double %129, 2.000000e+00
  %131 = fadd double %127, %130
  %132 = fptoui double %131 to i32
  %133 = load i32, i32* %17, align 4
  %134 = uitofp i32 %133 to double
  %135 = fdiv double %134, 2.000000e+00
  %136 = load i32, i32* %15, align 4
  %137 = sitofp i32 %136 to double
  %138 = fadd double %135, %137
  %139 = load i32, i32* %19, align 4
  %140 = sitofp i32 %139 to double
  %141 = fadd double %138, %140
  %142 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %143 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = sdiv i32 %144, 3
  %146 = sitofp i32 %145 to double
  %147 = fadd double %141, %146
  %148 = fptoui double %147 to i32
  %149 = load i32, i32* %16, align 4
  %150 = load i32, i32* %17, align 4
  %151 = load i32, i32* %20, align 4
  %152 = load i32, i32* @TEXT_ALIGN_CENTER, align 4
  %153 = call i32 @menu_display_draw_text(%struct.TYPE_11__* %108, i8* %113, i32 %132, i32 %148, i32 %149, i32 %150, i32 %151, i32 %152, float 1.000000e+00, i32 0, i32 0, i32 0)
  br label %154

154:                                              ; preds = %107
  %155 = load i32, i32* %13, align 4
  %156 = add i32 %155, 1
  store i32 %156, i32* %13, align 4
  br label %53

157:                                              ; preds = %53
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @menu_display_draw_quad(%struct.TYPE_10__*, i32, i32, i32, i32, i32, i32, i32*) #2

declare dso_local i32 @menu_display_blend_begin(%struct.TYPE_10__*) #2

declare dso_local i32 @menu_display_draw_texture(%struct.TYPE_10__*, i32, i32, i32, i32, i32, i32, float*, i64) #2

declare dso_local i32 @menu_display_blend_end(%struct.TYPE_10__*) #2

declare dso_local i32 @menu_display_draw_text(%struct.TYPE_11__*, i8*, i32, i32, i32, i32, i32, i32, float, i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
