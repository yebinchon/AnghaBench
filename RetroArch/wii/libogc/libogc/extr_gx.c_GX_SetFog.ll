; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_gx.c_GX_SetFog.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_gx.c_GX_SetFog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }
%union.ieee32 = type { float }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @GX_SetFog(i32 %0, float %1, float %2, float %3, float %4, i64 %5, i32 %6) #0 {
  %8 = alloca %struct.TYPE_3__, align 4
  %9 = alloca { i64, i32 }, align 4
  %10 = alloca i32, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca %union.ieee32, align 4
  %27 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %9, i32 0, i32 0
  store i64 %5, i64* %27, align 4
  %28 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %9, i32 0, i32 1
  store i32 %6, i32* %28, align 4
  %29 = bitcast %struct.TYPE_3__* %8 to i8*
  %30 = bitcast { i64, i32 }* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %29, i8* align 4 %30, i64 12, i1 false)
  store i32 %0, i32* %10, align 4
  store float %1, float* %11, align 4
  store float %2, float* %12, align 4
  store float %3, float* %13, align 4
  store float %4, float* %14, align 4
  store i32 0, i32* %25, align 4
  %31 = load i32, i32* %10, align 4
  %32 = call i32 @_SHIFTR(i32 %31, i32 3, i32 1)
  store i32 %32, i32* %25, align 4
  %33 = load i32, i32* %25, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %60

35:                                               ; preds = %7
  %36 = load float, float* %14, align 4
  %37 = load float, float* %13, align 4
  %38 = fcmp oeq float %36, %37
  br i1 %38, label %43, label %39

39:                                               ; preds = %35
  %40 = load float, float* %12, align 4
  %41 = load float, float* %11, align 4
  %42 = fcmp oeq float %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %39, %35
  store float 0.000000e+00, float* %19, align 4
  store float 0.000000e+00, float* %18, align 4
  br label %59

44:                                               ; preds = %39
  %45 = load float, float* %12, align 4
  %46 = load float, float* %11, align 4
  %47 = fsub float %45, %46
  %48 = fdiv float 1.000000e+00, %47
  store float %48, float* %15, align 4
  %49 = load float, float* %14, align 4
  %50 = load float, float* %13, align 4
  %51 = fsub float %49, %50
  %52 = load float, float* %15, align 4
  %53 = fmul float %51, %52
  store float %53, float* %19, align 4
  %54 = load float, float* %11, align 4
  %55 = load float, float* %13, align 4
  %56 = fsub float %54, %55
  %57 = load float, float* %15, align 4
  %58 = fmul float %56, %57
  store float %58, float* %18, align 4
  br label %59

59:                                               ; preds = %44, %43
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  br label %124

60:                                               ; preds = %7
  %61 = load float, float* %14, align 4
  %62 = load float, float* %13, align 4
  %63 = fcmp oeq float %61, %62
  br i1 %63, label %68, label %64

64:                                               ; preds = %60
  %65 = load float, float* %12, align 4
  %66 = load float, float* %11, align 4
  %67 = fcmp oeq float %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %64, %60
  store float 0.000000e+00, float* %15, align 4
  store float 5.000000e-01, float* %16, align 4
  store float 0.000000e+00, float* %18, align 4
  br label %91

69:                                               ; preds = %64
  %70 = load float, float* %14, align 4
  %71 = load float, float* %13, align 4
  %72 = fmul float %70, %71
  %73 = load float, float* %14, align 4
  %74 = load float, float* %13, align 4
  %75 = fsub float %73, %74
  %76 = load float, float* %12, align 4
  %77 = load float, float* %11, align 4
  %78 = fsub float %76, %77
  %79 = fmul float %75, %78
  %80 = fdiv float %72, %79
  store float %80, float* %15, align 4
  %81 = load float, float* %14, align 4
  %82 = load float, float* %14, align 4
  %83 = load float, float* %13, align 4
  %84 = fsub float %82, %83
  %85 = fdiv float %81, %84
  store float %85, float* %16, align 4
  %86 = load float, float* %11, align 4
  %87 = load float, float* %12, align 4
  %88 = load float, float* %11, align 4
  %89 = fsub float %87, %88
  %90 = fdiv float %86, %89
  store float %90, float* %18, align 4
  br label %91

91:                                               ; preds = %69, %68
  %92 = load float, float* %16, align 4
  store float %92, float* %17, align 4
  store i32 1, i32* %20, align 4
  br label %93

93:                                               ; preds = %96, %91
  %94 = load float, float* %17, align 4
  %95 = fcmp ogt float %94, 1.000000e+00
  br i1 %95, label %96, label %101

96:                                               ; preds = %93
  %97 = load float, float* %17, align 4
  %98 = fdiv float %97, 2.000000e+00
  store float %98, float* %17, align 4
  %99 = load i32, i32* %20, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %20, align 4
  br label %93

101:                                              ; preds = %93
  br label %102

102:                                              ; preds = %110, %101
  %103 = load float, float* %17, align 4
  %104 = fcmp ogt float %103, 0.000000e+00
  br i1 %104, label %105, label %108

105:                                              ; preds = %102
  %106 = load float, float* %17, align 4
  %107 = fcmp olt float %106, 5.000000e-01
  br label %108

108:                                              ; preds = %105, %102
  %109 = phi i1 [ false, %102 ], [ %107, %105 ]
  br i1 %109, label %110, label %115

110:                                              ; preds = %108
  %111 = load float, float* %17, align 4
  %112 = fmul float %111, 2.000000e+00
  store float %112, float* %17, align 4
  %113 = load i32, i32* %20, align 4
  %114 = add nsw i32 %113, -1
  store i32 %114, i32* %20, align 4
  br label %102

115:                                              ; preds = %108
  %116 = load float, float* %15, align 4
  %117 = load i32, i32* %20, align 4
  %118 = shl i32 1, %117
  %119 = sitofp i32 %118 to float
  %120 = fdiv float %116, %119
  store float %120, float* %19, align 4
  %121 = load float, float* %17, align 4
  %122 = fmul float %121, 0x41600003C0000000
  %123 = fptosi float %122 to i32
  store i32 %123, i32* %21, align 4
  br label %124

124:                                              ; preds = %115, %59
  %125 = load float, float* %19, align 4
  %126 = bitcast %union.ieee32* %26 to float*
  store float %125, float* %126, align 4
  %127 = bitcast %union.ieee32* %26 to i32*
  %128 = load i32, i32* %127, align 4
  store i32 %128, i32* %22, align 4
  %129 = load float, float* %18, align 4
  %130 = bitcast %union.ieee32* %26 to float*
  store float %129, float* %130, align 4
  %131 = bitcast %union.ieee32* %26 to i32*
  %132 = load i32, i32* %131, align 4
  store i32 %132, i32* %23, align 4
  %133 = load i32, i32* %22, align 4
  %134 = call i32 @_SHIFTR(i32 %133, i32 12, i32 20)
  %135 = or i32 -301989888, %134
  store i32 %135, i32* %24, align 4
  %136 = load i32, i32* %24, align 4
  %137 = call i32 @GX_LOAD_BP_REG(i32 %136)
  %138 = load i32, i32* %21, align 4
  %139 = and i32 %138, 16777215
  %140 = or i32 -285212672, %139
  store i32 %140, i32* %24, align 4
  %141 = load i32, i32* %24, align 4
  %142 = call i32 @GX_LOAD_BP_REG(i32 %141)
  %143 = load i32, i32* %20, align 4
  %144 = and i32 %143, 31
  %145 = or i32 -268435456, %144
  store i32 %145, i32* %24, align 4
  %146 = load i32, i32* %24, align 4
  %147 = call i32 @GX_LOAD_BP_REG(i32 %146)
  %148 = load i32, i32* %10, align 4
  %149 = call i32 @_SHIFTL(i32 %148, i32 21, i32 3)
  %150 = or i32 -251658240, %149
  %151 = load i32, i32* %25, align 4
  %152 = call i32 @_SHIFTL(i32 %151, i32 20, i32 1)
  %153 = or i32 %150, %152
  %154 = load i32, i32* %23, align 4
  %155 = call i32 @_SHIFTR(i32 %154, i32 12, i32 20)
  %156 = or i32 %153, %155
  store i32 %156, i32* %24, align 4
  %157 = load i32, i32* %24, align 4
  %158 = call i32 @GX_LOAD_BP_REG(i32 %157)
  %159 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @_SHIFTL(i32 %160, i32 16, i32 8)
  %162 = or i32 -234881024, %161
  %163 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = call i32 @_SHIFTL(i32 %164, i32 8, i32 8)
  %166 = or i32 %162, %165
  %167 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 2
  %168 = load i32, i32* %167, align 4
  %169 = and i32 %168, 255
  %170 = or i32 %166, %169
  store i32 %170, i32* %24, align 4
  %171 = load i32, i32* %24, align 4
  %172 = call i32 @GX_LOAD_BP_REG(i32 %171)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @_SHIFTR(i32, i32, i32) #2

declare dso_local i32 @GX_LOAD_BP_REG(i32) #2

declare dso_local i32 @_SHIFTL(i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
