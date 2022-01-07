; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/botlib/extr_be_aas_debug.c_AAS_DrawArrow.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/botlib/extr_be_aas_debug.c_AAS_DrawArrow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32, i32, i32 }

@__const.AAS_DrawArrow.up = private unnamed_addr constant %struct.TYPE_21__ { i32 0, i32 0, i32 1 }, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AAS_DrawArrow(i64 %0, i32 %1, i64 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_21__, align 4
  %8 = alloca { i64, i32 }, align 4
  %9 = alloca %struct.TYPE_21__, align 4
  %10 = alloca { i64, i32 }, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_21__, align 4
  %14 = alloca %struct.TYPE_21__, align 4
  %15 = alloca %struct.TYPE_21__, align 8
  %16 = alloca %struct.TYPE_21__, align 8
  %17 = alloca %struct.TYPE_21__, align 4
  %18 = alloca float, align 4
  %19 = alloca { i64, i32 }, align 4
  %20 = alloca { i64, i32 }, align 4
  %21 = alloca { i64, i32 }, align 4
  %22 = alloca { i64, i32 }, align 4
  %23 = alloca { i64, i32 }, align 4
  %24 = alloca { i64, i32 }, align 4
  %25 = alloca { i64, i32 }, align 4
  %26 = alloca { i64, i32 }, align 4
  %27 = alloca { i64, i32 }, align 4
  %28 = alloca { i64, i32 }, align 4
  %29 = alloca { i64, i32 }, align 4
  %30 = alloca { i64, i32 }, align 4
  %31 = alloca { i64, i32 }, align 4
  %32 = alloca { i64, i32 }, align 4
  %33 = alloca { i64, i32 }, align 4
  %34 = alloca { i64, i32 }, align 4
  %35 = alloca { i64, i32 }, align 4
  %36 = alloca { i64, i32 }, align 4
  %37 = alloca { i64, i32 }, align 4
  %38 = alloca { i64, i32 }, align 4
  %39 = alloca { i64, i32 }, align 4
  %40 = alloca { i64, i32 }, align 4
  %41 = alloca { i64, i32 }, align 4
  %42 = alloca { i64, i32 }, align 4
  %43 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %8, i32 0, i32 0
  store i64 %0, i64* %43, align 4
  %44 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %8, i32 0, i32 1
  store i32 %1, i32* %44, align 4
  %45 = bitcast %struct.TYPE_21__* %7 to i8*
  %46 = bitcast { i64, i32 }* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %45, i8* align 4 %46, i64 12, i1 false)
  %47 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %10, i32 0, i32 0
  store i64 %2, i64* %47, align 4
  %48 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %10, i32 0, i32 1
  store i32 %3, i32* %48, align 4
  %49 = bitcast %struct.TYPE_21__* %9 to i8*
  %50 = bitcast { i64, i32 }* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %49, i8* align 4 %50, i64 12, i1 false)
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %51 = bitcast %struct.TYPE_21__* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %51, i8* align 4 bitcast (%struct.TYPE_21__* @__const.AAS_DrawArrow.up to i8*), i64 12, i1 false)
  %52 = bitcast { i64, i32 }* %19 to i8*
  %53 = bitcast %struct.TYPE_21__* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %52, i8* align 4 %53, i64 12, i1 false)
  %54 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %19, i32 0, i32 0
  %55 = load i64, i64* %54, align 4
  %56 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %19, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = bitcast { i64, i32 }* %20 to i8*
  %59 = bitcast %struct.TYPE_21__* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %58, i8* align 4 %59, i64 12, i1 false)
  %60 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %20, i32 0, i32 0
  %61 = load i64, i64* %60, align 4
  %62 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %20, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = bitcast { i64, i32 }* %21 to i8*
  %65 = bitcast %struct.TYPE_21__* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %64, i8* align 4 %65, i64 12, i1 false)
  %66 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %21, i32 0, i32 0
  %67 = load i64, i64* %66, align 4
  %68 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %21, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @VectorSubtract(i64 %55, i32 %57, i64 %61, i32 %63, i64 %67, i32 %69)
  %71 = bitcast { i64, i32 }* %22 to i8*
  %72 = bitcast %struct.TYPE_21__* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %71, i8* align 4 %72, i64 12, i1 false)
  %73 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %22, i32 0, i32 0
  %74 = load i64, i64* %73, align 4
  %75 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %22, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @VectorNormalize(i64 %74, i32 %76)
  %78 = bitcast { i64, i32 }* %23 to i8*
  %79 = bitcast %struct.TYPE_21__* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %78, i8* align 4 %79, i64 12, i1 false)
  %80 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %23, i32 0, i32 0
  %81 = load i64, i64* %80, align 4
  %82 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %23, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = bitcast { i64, i32 }* %24 to i8*
  %85 = bitcast %struct.TYPE_21__* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %84, i8* align 4 %85, i64 12, i1 false)
  %86 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %24, i32 0, i32 0
  %87 = load i64, i64* %86, align 4
  %88 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %24, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = call float @DotProduct(i64 %81, i32 %83, i64 %87, i32 %89)
  store float %90, float* %18, align 4
  %91 = load float, float* %18, align 4
  %92 = fpext float %91 to double
  %93 = fcmp ogt double %92, 0x3FEFAE147AE147AE
  br i1 %93, label %98, label %94

94:                                               ; preds = %6
  %95 = load float, float* %18, align 4
  %96 = fpext float %95 to double
  %97 = fcmp olt double %96, 0xBFEFAE147AE147AE
  br i1 %97, label %98, label %106

98:                                               ; preds = %94, %6
  %99 = bitcast { i64, i32 }* %25 to i8*
  %100 = bitcast %struct.TYPE_21__* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %99, i8* align 4 %100, i64 12, i1 false)
  %101 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %25, i32 0, i32 0
  %102 = load i64, i64* %101, align 4
  %103 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %25, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @VectorSet(i64 %102, i32 %104, i32 1, i32 0, i32 0)
  br label %126

106:                                              ; preds = %94
  %107 = bitcast { i64, i32 }* %26 to i8*
  %108 = bitcast %struct.TYPE_21__* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %107, i8* align 4 %108, i64 12, i1 false)
  %109 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %26, i32 0, i32 0
  %110 = load i64, i64* %109, align 4
  %111 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %26, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = bitcast { i64, i32 }* %27 to i8*
  %114 = bitcast %struct.TYPE_21__* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %113, i8* align 4 %114, i64 12, i1 false)
  %115 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %27, i32 0, i32 0
  %116 = load i64, i64* %115, align 4
  %117 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %27, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = bitcast { i64, i32 }* %28 to i8*
  %120 = bitcast %struct.TYPE_21__* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %119, i8* align 4 %120, i64 12, i1 false)
  %121 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %28, i32 0, i32 0
  %122 = load i64, i64* %121, align 4
  %123 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %28, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @CrossProduct(i64 %110, i32 %112, i64 %116, i32 %118, i64 %122, i32 %124)
  br label %126

126:                                              ; preds = %106, %98
  %127 = bitcast { i64, i32 }* %29 to i8*
  %128 = bitcast %struct.TYPE_21__* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %127, i8* align 4 %128, i64 12, i1 false)
  %129 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %29, i32 0, i32 0
  %130 = load i64, i64* %129, align 4
  %131 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %29, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = bitcast { i64, i32 }* %30 to i8*
  %134 = bitcast %struct.TYPE_21__* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %133, i8* align 4 %134, i64 12, i1 false)
  %135 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %30, i32 0, i32 0
  %136 = load i64, i64* %135, align 4
  %137 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %30, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @VectorMA(i64 %130, i32 %132, i32 -6, i64 %136, i32 %138, %struct.TYPE_21__* byval(%struct.TYPE_21__) align 8 %15)
  %140 = bitcast { i64, i32 }* %31 to i8*
  %141 = bitcast %struct.TYPE_21__* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %140, i8* align 4 %141, i64 12, i1 false)
  %142 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %31, i32 0, i32 0
  %143 = load i64, i64* %142, align 4
  %144 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %31, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = bitcast { i64, i32 }* %32 to i8*
  %147 = bitcast %struct.TYPE_21__* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %146, i8* align 4 %147, i64 12, i1 false)
  %148 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %32, i32 0, i32 0
  %149 = load i64, i64* %148, align 4
  %150 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %32, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @VectorCopy(i64 %143, i32 %145, i64 %149, i32 %151)
  %153 = bitcast { i64, i32 }* %33 to i8*
  %154 = bitcast %struct.TYPE_21__* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %153, i8* align 4 %154, i64 12, i1 false)
  %155 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %33, i32 0, i32 0
  %156 = load i64, i64* %155, align 4
  %157 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %33, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = bitcast { i64, i32 }* %34 to i8*
  %160 = bitcast %struct.TYPE_21__* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %159, i8* align 4 %160, i64 12, i1 false)
  %161 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %34, i32 0, i32 0
  %162 = load i64, i64* %161, align 4
  %163 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %34, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = call i32 @VectorMA(i64 %156, i32 %158, i32 6, i64 %162, i32 %164, %struct.TYPE_21__* byval(%struct.TYPE_21__) align 8 %15)
  %166 = bitcast { i64, i32 }* %35 to i8*
  %167 = bitcast %struct.TYPE_21__* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %166, i8* align 4 %167, i64 12, i1 false)
  %168 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %35, i32 0, i32 0
  %169 = load i64, i64* %168, align 4
  %170 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %35, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = bitcast { i64, i32 }* %36 to i8*
  %173 = bitcast %struct.TYPE_21__* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %172, i8* align 4 %173, i64 12, i1 false)
  %174 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %36, i32 0, i32 0
  %175 = load i64, i64* %174, align 4
  %176 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %36, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = call i32 @VectorMA(i64 %169, i32 %171, i32 -6, i64 %175, i32 %177, %struct.TYPE_21__* byval(%struct.TYPE_21__) align 8 %16)
  %179 = load i32, i32* %11, align 4
  %180 = bitcast { i64, i32 }* %37 to i8*
  %181 = bitcast %struct.TYPE_21__* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %180, i8* align 4 %181, i64 12, i1 false)
  %182 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %37, i32 0, i32 0
  %183 = load i64, i64* %182, align 4
  %184 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %37, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  %186 = bitcast { i64, i32 }* %38 to i8*
  %187 = bitcast %struct.TYPE_21__* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %186, i8* align 4 %187, i64 12, i1 false)
  %188 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %38, i32 0, i32 0
  %189 = load i64, i64* %188, align 4
  %190 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %38, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = call i32 @AAS_DebugLine(i64 %183, i32 %185, i64 %189, i32 %191, i32 %179)
  %193 = load i32, i32* %12, align 4
  %194 = bitcast { i64, i32 }* %39 to i8*
  %195 = bitcast %struct.TYPE_21__* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %194, i8* align 4 %195, i64 12, i1 false)
  %196 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %39, i32 0, i32 0
  %197 = load i64, i64* %196, align 4
  %198 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %39, i32 0, i32 1
  %199 = load i32, i32* %198, align 4
  %200 = bitcast { i64, i32 }* %40 to i8*
  %201 = bitcast %struct.TYPE_21__* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %200, i8* align 4 %201, i64 12, i1 false)
  %202 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %40, i32 0, i32 0
  %203 = load i64, i64* %202, align 4
  %204 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %40, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  %206 = call i32 @AAS_DebugLine(i64 %197, i32 %199, i64 %203, i32 %205, i32 %193)
  %207 = load i32, i32* %12, align 4
  %208 = bitcast { i64, i32 }* %41 to i8*
  %209 = bitcast %struct.TYPE_21__* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %208, i8* align 4 %209, i64 12, i1 false)
  %210 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %41, i32 0, i32 0
  %211 = load i64, i64* %210, align 4
  %212 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %41, i32 0, i32 1
  %213 = load i32, i32* %212, align 4
  %214 = bitcast { i64, i32 }* %42 to i8*
  %215 = bitcast %struct.TYPE_21__* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %214, i8* align 4 %215, i64 12, i1 false)
  %216 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %42, i32 0, i32 0
  %217 = load i64, i64* %216, align 4
  %218 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %42, i32 0, i32 1
  %219 = load i32, i32* %218, align 4
  %220 = call i32 @AAS_DebugLine(i64 %211, i32 %213, i64 %217, i32 %219, i32 %207)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @VectorSubtract(i64, i32, i64, i32, i64, i32) #2

declare dso_local i32 @VectorNormalize(i64, i32) #2

declare dso_local float @DotProduct(i64, i32, i64, i32) #2

declare dso_local i32 @VectorSet(i64, i32, i32, i32, i32) #2

declare dso_local i32 @CrossProduct(i64, i32, i64, i32, i64, i32) #2

declare dso_local i32 @VectorMA(i64, i32, i32, i64, i32, %struct.TYPE_21__* byval(%struct.TYPE_21__) align 8) #2

declare dso_local i32 @VectorCopy(i64, i32, i64, i32) #2

declare dso_local i32 @AAS_DebugLine(i64, i32, i64, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
