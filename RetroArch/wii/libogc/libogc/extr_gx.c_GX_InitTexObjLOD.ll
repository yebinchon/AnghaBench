; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_gx.c_GX_InitTexObjLOD.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_gx.c_GX_InitTexObjLOD.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__gx_texobj = type { i32, i32 }

@GX_InitTexObjLOD.GX2HWFiltConv = internal global [8 x i32] [i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 0, i32 0], align 16
@GX_LINEAR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @GX_InitTexObjLOD(i32* %0, i32 %1, i32 %2, float %3, float %4, float %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.__gx_texobj*, align 8
  store i32* %0, i32** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store float %3, float* %13, align 4
  store float %4, float* %14, align 4
  store float %5, float* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 %8, i32* %18, align 4
  %20 = load i32*, i32** %10, align 8
  %21 = bitcast i32* %20 to %struct.__gx_texobj*
  store %struct.__gx_texobj* %21, %struct.__gx_texobj** %19, align 8
  %22 = load float, float* %15, align 4
  %23 = fcmp olt float %22, -4.000000e+00
  br i1 %23, label %24, label %25

24:                                               ; preds = %9
  store float -4.000000e+00, float* %15, align 4
  br label %30

25:                                               ; preds = %9
  %26 = load float, float* %15, align 4
  %27 = fcmp oeq float %26, 4.000000e+00
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  store float 0x400FEB8520000000, float* %15, align 4
  br label %29

29:                                               ; preds = %28, %25
  br label %30

30:                                               ; preds = %29, %24
  %31 = load %struct.__gx_texobj*, %struct.__gx_texobj** %19, align 8
  %32 = getelementptr inbounds %struct.__gx_texobj, %struct.__gx_texobj* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = and i32 %33, -130561
  %35 = load float, float* %15, align 4
  %36 = fmul float 3.200000e+01, %35
  %37 = fptosi float %36 to i32
  %38 = call i32 @_SHIFTL(i32 %37, i32 9, i32 8)
  %39 = or i32 %34, %38
  %40 = load %struct.__gx_texobj*, %struct.__gx_texobj** %19, align 8
  %41 = getelementptr inbounds %struct.__gx_texobj, %struct.__gx_texobj* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  %42 = load %struct.__gx_texobj*, %struct.__gx_texobj** %19, align 8
  %43 = getelementptr inbounds %struct.__gx_texobj, %struct.__gx_texobj* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = and i32 %44, -17
  %46 = load i32, i32* %12, align 4
  %47 = load i32, i32* @GX_LINEAR, align 4
  %48 = icmp eq i32 %46, %47
  %49 = zext i1 %48 to i64
  %50 = select i1 %48, i32 1, i32 0
  %51 = call i32 @_SHIFTL(i32 %50, i32 4, i32 1)
  %52 = or i32 %45, %51
  %53 = load %struct.__gx_texobj*, %struct.__gx_texobj** %19, align 8
  %54 = getelementptr inbounds %struct.__gx_texobj, %struct.__gx_texobj* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 4
  %55 = load %struct.__gx_texobj*, %struct.__gx_texobj** %19, align 8
  %56 = getelementptr inbounds %struct.__gx_texobj, %struct.__gx_texobj* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = and i32 %57, -225
  %59 = load i32, i32* %11, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [8 x i32], [8 x i32]* @GX_InitTexObjLOD.GX2HWFiltConv, i64 0, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @_SHIFTL(i32 %62, i32 5, i32 3)
  %64 = or i32 %58, %63
  %65 = load %struct.__gx_texobj*, %struct.__gx_texobj** %19, align 8
  %66 = getelementptr inbounds %struct.__gx_texobj, %struct.__gx_texobj* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 4
  %67 = load %struct.__gx_texobj*, %struct.__gx_texobj** %19, align 8
  %68 = getelementptr inbounds %struct.__gx_texobj, %struct.__gx_texobj* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = and i32 %69, -257
  %71 = load i32, i32* %17, align 4
  %72 = and i32 %71, 255
  %73 = icmp ne i32 %72, 0
  %74 = xor i1 %73, true
  %75 = zext i1 %74 to i32
  %76 = call i32 @_SHIFTL(i32 %75, i32 8, i32 1)
  %77 = or i32 %70, %76
  %78 = load %struct.__gx_texobj*, %struct.__gx_texobj** %19, align 8
  %79 = getelementptr inbounds %struct.__gx_texobj, %struct.__gx_texobj* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 4
  %80 = load %struct.__gx_texobj*, %struct.__gx_texobj** %19, align 8
  %81 = getelementptr inbounds %struct.__gx_texobj, %struct.__gx_texobj* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = and i32 %82, -1572865
  %84 = load i32, i32* %18, align 4
  %85 = call i32 @_SHIFTL(i32 %84, i32 19, i32 2)
  %86 = or i32 %83, %85
  %87 = load %struct.__gx_texobj*, %struct.__gx_texobj** %19, align 8
  %88 = getelementptr inbounds %struct.__gx_texobj, %struct.__gx_texobj* %87, i32 0, i32 0
  store i32 %86, i32* %88, align 4
  %89 = load %struct.__gx_texobj*, %struct.__gx_texobj** %19, align 8
  %90 = getelementptr inbounds %struct.__gx_texobj, %struct.__gx_texobj* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = and i32 %91, -2097153
  %93 = load i32, i32* %16, align 4
  %94 = call i32 @_SHIFTL(i32 %93, i32 21, i32 1)
  %95 = or i32 %92, %94
  %96 = load %struct.__gx_texobj*, %struct.__gx_texobj** %19, align 8
  %97 = getelementptr inbounds %struct.__gx_texobj, %struct.__gx_texobj* %96, i32 0, i32 0
  store i32 %95, i32* %97, align 4
  %98 = load float, float* %13, align 4
  %99 = fcmp olt float %98, 0.000000e+00
  br i1 %99, label %100, label %101

100:                                              ; preds = %30
  store float 0.000000e+00, float* %13, align 4
  br label %106

101:                                              ; preds = %30
  %102 = load float, float* %13, align 4
  %103 = fcmp ogt float %102, 1.000000e+01
  br i1 %103, label %104, label %105

104:                                              ; preds = %101
  store float 1.000000e+01, float* %13, align 4
  br label %105

105:                                              ; preds = %104, %101
  br label %106

106:                                              ; preds = %105, %100
  %107 = load float, float* %14, align 4
  %108 = fcmp olt float %107, 0.000000e+00
  br i1 %108, label %109, label %110

109:                                              ; preds = %106
  store float 0.000000e+00, float* %14, align 4
  br label %115

110:                                              ; preds = %106
  %111 = load float, float* %14, align 4
  %112 = fcmp ogt float %111, 1.000000e+01
  br i1 %112, label %113, label %114

113:                                              ; preds = %110
  store float 1.000000e+01, float* %14, align 4
  br label %114

114:                                              ; preds = %113, %110
  br label %115

115:                                              ; preds = %114, %109
  %116 = load %struct.__gx_texobj*, %struct.__gx_texobj** %19, align 8
  %117 = getelementptr inbounds %struct.__gx_texobj, %struct.__gx_texobj* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = and i32 %118, -256
  %120 = load float, float* %13, align 4
  %121 = fmul float 1.600000e+01, %120
  %122 = fptosi float %121 to i32
  %123 = and i32 %122, 255
  %124 = or i32 %119, %123
  %125 = load %struct.__gx_texobj*, %struct.__gx_texobj** %19, align 8
  %126 = getelementptr inbounds %struct.__gx_texobj, %struct.__gx_texobj* %125, i32 0, i32 1
  store i32 %124, i32* %126, align 4
  %127 = load %struct.__gx_texobj*, %struct.__gx_texobj** %19, align 8
  %128 = getelementptr inbounds %struct.__gx_texobj, %struct.__gx_texobj* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = and i32 %129, -65281
  %131 = load float, float* %14, align 4
  %132 = fmul float 1.600000e+01, %131
  %133 = fptosi float %132 to i32
  %134 = call i32 @_SHIFTL(i32 %133, i32 8, i32 8)
  %135 = or i32 %130, %134
  %136 = load %struct.__gx_texobj*, %struct.__gx_texobj** %19, align 8
  %137 = getelementptr inbounds %struct.__gx_texobj, %struct.__gx_texobj* %136, i32 0, i32 1
  store i32 %135, i32* %137, align 4
  ret void
}

declare dso_local i32 @_SHIFTL(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
