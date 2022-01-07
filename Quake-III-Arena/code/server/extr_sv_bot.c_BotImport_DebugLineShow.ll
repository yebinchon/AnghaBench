; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/server/extr_sv_bot.c_BotImport_DebugLineShow.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/server/extr_sv_bot.c_BotImport_DebugLineShow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32, i32, i32 }

@__const.BotImport_DebugLineShow.up = private unnamed_addr constant %struct.TYPE_20__ { i32 0, i32 0, i32 1 }, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @BotImport_DebugLineShow(i32 %0, i64 %1, i32 %2, i64 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_20__, align 4
  %8 = alloca { i64, i32 }, align 4
  %9 = alloca %struct.TYPE_20__, align 4
  %10 = alloca { i64, i32 }, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [4 x %struct.TYPE_20__], align 16
  %14 = alloca %struct.TYPE_20__, align 4
  %15 = alloca %struct.TYPE_20__, align 4
  %16 = alloca %struct.TYPE_20__, align 4
  %17 = alloca float, align 4
  %18 = alloca { i64, i32 }, align 4
  %19 = alloca { i64, i32 }, align 16
  %20 = alloca { i64, i32 }, align 4
  %21 = alloca { i64, i32 }, align 4
  %22 = alloca { i64, i32 }, align 4
  %23 = alloca { i64, i32 }, align 8
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
  %37 = alloca { i64, i32 }, align 16
  %38 = alloca { i64, i32 }, align 4
  %39 = alloca { i64, i32 }, align 4
  %40 = alloca { i64, i32 }, align 4
  %41 = alloca %struct.TYPE_20__, align 8
  %42 = alloca { i64, i32 }, align 8
  %43 = alloca { i64, i32 }, align 4
  %44 = alloca { i64, i32 }, align 4
  %45 = alloca { i64, i32 }, align 4
  %46 = alloca %struct.TYPE_20__, align 8
  %47 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %8, i32 0, i32 0
  store i64 %1, i64* %47, align 4
  %48 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %8, i32 0, i32 1
  store i32 %2, i32* %48, align 4
  %49 = bitcast %struct.TYPE_20__* %7 to i8*
  %50 = bitcast { i64, i32 }* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %49, i8* align 4 %50, i64 12, i1 false)
  %51 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %10, i32 0, i32 0
  store i64 %3, i64* %51, align 4
  %52 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %10, i32 0, i32 1
  store i32 %4, i32* %52, align 4
  %53 = bitcast %struct.TYPE_20__* %9 to i8*
  %54 = bitcast { i64, i32 }* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %53, i8* align 4 %54, i64 12, i1 false)
  store i32 %0, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %55 = bitcast %struct.TYPE_20__* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %55, i8* align 4 bitcast (%struct.TYPE_20__* @__const.BotImport_DebugLineShow.up to i8*), i64 12, i1 false)
  %56 = getelementptr inbounds [4 x %struct.TYPE_20__], [4 x %struct.TYPE_20__]* %13, i64 0, i64 0
  %57 = bitcast { i64, i32 }* %18 to i8*
  %58 = bitcast %struct.TYPE_20__* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %57, i8* align 4 %58, i64 12, i1 false)
  %59 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %18, i32 0, i32 0
  %60 = load i64, i64* %59, align 4
  %61 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %18, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = bitcast { i64, i32 }* %19 to i8*
  %64 = bitcast %struct.TYPE_20__* %56 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %63, i8* align 16 %64, i64 12, i1 false)
  %65 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %19, i32 0, i32 0
  %66 = load i64, i64* %65, align 16
  %67 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %19, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @VectorCopy(i64 %60, i32 %62, i64 %66, i32 %68)
  %70 = getelementptr inbounds [4 x %struct.TYPE_20__], [4 x %struct.TYPE_20__]* %13, i64 0, i64 1
  %71 = bitcast { i64, i32 }* %20 to i8*
  %72 = bitcast %struct.TYPE_20__* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %71, i8* align 4 %72, i64 12, i1 false)
  %73 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %20, i32 0, i32 0
  %74 = load i64, i64* %73, align 4
  %75 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %20, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = bitcast { i64, i32 }* %21 to i8*
  %78 = bitcast %struct.TYPE_20__* %70 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %77, i8* align 4 %78, i64 12, i1 false)
  %79 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %21, i32 0, i32 0
  %80 = load i64, i64* %79, align 4
  %81 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %21, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @VectorCopy(i64 %74, i32 %76, i64 %80, i32 %82)
  %84 = getelementptr inbounds [4 x %struct.TYPE_20__], [4 x %struct.TYPE_20__]* %13, i64 0, i64 2
  %85 = bitcast { i64, i32 }* %22 to i8*
  %86 = bitcast %struct.TYPE_20__* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %85, i8* align 4 %86, i64 12, i1 false)
  %87 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %22, i32 0, i32 0
  %88 = load i64, i64* %87, align 4
  %89 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %22, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = bitcast { i64, i32 }* %23 to i8*
  %92 = bitcast %struct.TYPE_20__* %84 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %91, i8* align 8 %92, i64 12, i1 false)
  %93 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %23, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %23, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @VectorCopy(i64 %88, i32 %90, i64 %94, i32 %96)
  %98 = getelementptr inbounds [4 x %struct.TYPE_20__], [4 x %struct.TYPE_20__]* %13, i64 0, i64 3
  %99 = bitcast { i64, i32 }* %24 to i8*
  %100 = bitcast %struct.TYPE_20__* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %99, i8* align 4 %100, i64 12, i1 false)
  %101 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %24, i32 0, i32 0
  %102 = load i64, i64* %101, align 4
  %103 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %24, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = bitcast { i64, i32 }* %25 to i8*
  %106 = bitcast %struct.TYPE_20__* %98 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %105, i8* align 4 %106, i64 12, i1 false)
  %107 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %25, i32 0, i32 0
  %108 = load i64, i64* %107, align 4
  %109 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %25, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @VectorCopy(i64 %102, i32 %104, i64 %108, i32 %110)
  %112 = bitcast { i64, i32 }* %26 to i8*
  %113 = bitcast %struct.TYPE_20__* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %112, i8* align 4 %113, i64 12, i1 false)
  %114 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %26, i32 0, i32 0
  %115 = load i64, i64* %114, align 4
  %116 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %26, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = bitcast { i64, i32 }* %27 to i8*
  %119 = bitcast %struct.TYPE_20__* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %118, i8* align 4 %119, i64 12, i1 false)
  %120 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %27, i32 0, i32 0
  %121 = load i64, i64* %120, align 4
  %122 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %27, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = bitcast { i64, i32 }* %28 to i8*
  %125 = bitcast %struct.TYPE_20__* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %124, i8* align 4 %125, i64 12, i1 false)
  %126 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %28, i32 0, i32 0
  %127 = load i64, i64* %126, align 4
  %128 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %28, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @VectorSubtract(i64 %115, i32 %117, i64 %121, i32 %123, i64 %127, i32 %129)
  %131 = bitcast { i64, i32 }* %29 to i8*
  %132 = bitcast %struct.TYPE_20__* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %131, i8* align 4 %132, i64 12, i1 false)
  %133 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %29, i32 0, i32 0
  %134 = load i64, i64* %133, align 4
  %135 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %29, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @VectorNormalize(i64 %134, i32 %136)
  %138 = bitcast { i64, i32 }* %30 to i8*
  %139 = bitcast %struct.TYPE_20__* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %138, i8* align 4 %139, i64 12, i1 false)
  %140 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %30, i32 0, i32 0
  %141 = load i64, i64* %140, align 4
  %142 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %30, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = bitcast { i64, i32 }* %31 to i8*
  %145 = bitcast %struct.TYPE_20__* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %144, i8* align 4 %145, i64 12, i1 false)
  %146 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %31, i32 0, i32 0
  %147 = load i64, i64* %146, align 4
  %148 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %31, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = call float @DotProduct(i64 %141, i32 %143, i64 %147, i32 %149)
  store float %150, float* %17, align 4
  %151 = load float, float* %17, align 4
  %152 = fpext float %151 to double
  %153 = fcmp ogt double %152, 0x3FEFAE147AE147AE
  br i1 %153, label %158, label %154

154:                                              ; preds = %6
  %155 = load float, float* %17, align 4
  %156 = fpext float %155 to double
  %157 = fcmp olt double %156, 0xBFEFAE147AE147AE
  br i1 %157, label %158, label %166

158:                                              ; preds = %154, %6
  %159 = bitcast { i64, i32 }* %32 to i8*
  %160 = bitcast %struct.TYPE_20__* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %159, i8* align 4 %160, i64 12, i1 false)
  %161 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %32, i32 0, i32 0
  %162 = load i64, i64* %161, align 4
  %163 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %32, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = call i32 @VectorSet(i64 %162, i32 %164, i32 1, i32 0, i32 0)
  br label %186

166:                                              ; preds = %154
  %167 = bitcast { i64, i32 }* %33 to i8*
  %168 = bitcast %struct.TYPE_20__* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %167, i8* align 4 %168, i64 12, i1 false)
  %169 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %33, i32 0, i32 0
  %170 = load i64, i64* %169, align 4
  %171 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %33, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = bitcast { i64, i32 }* %34 to i8*
  %174 = bitcast %struct.TYPE_20__* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %173, i8* align 4 %174, i64 12, i1 false)
  %175 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %34, i32 0, i32 0
  %176 = load i64, i64* %175, align 4
  %177 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %34, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = bitcast { i64, i32 }* %35 to i8*
  %180 = bitcast %struct.TYPE_20__* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %179, i8* align 4 %180, i64 12, i1 false)
  %181 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %35, i32 0, i32 0
  %182 = load i64, i64* %181, align 4
  %183 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %35, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = call i32 @CrossProduct(i64 %170, i32 %172, i64 %176, i32 %178, i64 %182, i32 %184)
  br label %186

186:                                              ; preds = %166, %158
  %187 = bitcast { i64, i32 }* %36 to i8*
  %188 = bitcast %struct.TYPE_20__* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %187, i8* align 4 %188, i64 12, i1 false)
  %189 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %36, i32 0, i32 0
  %190 = load i64, i64* %189, align 4
  %191 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %36, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = call i32 @VectorNormalize(i64 %190, i32 %192)
  %194 = getelementptr inbounds [4 x %struct.TYPE_20__], [4 x %struct.TYPE_20__]* %13, i64 0, i64 0
  %195 = getelementptr inbounds [4 x %struct.TYPE_20__], [4 x %struct.TYPE_20__]* %13, i64 0, i64 0
  %196 = bitcast { i64, i32 }* %37 to i8*
  %197 = bitcast %struct.TYPE_20__* %194 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %196, i8* align 16 %197, i64 12, i1 false)
  %198 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %37, i32 0, i32 0
  %199 = load i64, i64* %198, align 16
  %200 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %37, i32 0, i32 1
  %201 = load i32, i32* %200, align 8
  %202 = bitcast { i64, i32 }* %38 to i8*
  %203 = bitcast %struct.TYPE_20__* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %202, i8* align 4 %203, i64 12, i1 false)
  %204 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %38, i32 0, i32 0
  %205 = load i64, i64* %204, align 4
  %206 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %38, i32 0, i32 1
  %207 = load i32, i32* %206, align 4
  %208 = call i32 @VectorMA(i64 %199, i32 %201, i32 2, i64 %205, i32 %207, %struct.TYPE_20__* byval(%struct.TYPE_20__) align 8 %195)
  %209 = getelementptr inbounds [4 x %struct.TYPE_20__], [4 x %struct.TYPE_20__]* %13, i64 0, i64 1
  %210 = getelementptr inbounds [4 x %struct.TYPE_20__], [4 x %struct.TYPE_20__]* %13, i64 0, i64 1
  %211 = bitcast { i64, i32 }* %39 to i8*
  %212 = bitcast %struct.TYPE_20__* %209 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %211, i8* align 4 %212, i64 12, i1 false)
  %213 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %39, i32 0, i32 0
  %214 = load i64, i64* %213, align 4
  %215 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %39, i32 0, i32 1
  %216 = load i32, i32* %215, align 4
  %217 = bitcast { i64, i32 }* %40 to i8*
  %218 = bitcast %struct.TYPE_20__* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %217, i8* align 4 %218, i64 12, i1 false)
  %219 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %40, i32 0, i32 0
  %220 = load i64, i64* %219, align 4
  %221 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %40, i32 0, i32 1
  %222 = load i32, i32* %221, align 4
  %223 = bitcast %struct.TYPE_20__* %41 to i8*
  %224 = bitcast %struct.TYPE_20__* %210 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %223, i8* align 4 %224, i64 12, i1 false)
  %225 = call i32 @VectorMA(i64 %214, i32 %216, i32 -2, i64 %220, i32 %222, %struct.TYPE_20__* byval(%struct.TYPE_20__) align 8 %41)
  %226 = getelementptr inbounds [4 x %struct.TYPE_20__], [4 x %struct.TYPE_20__]* %13, i64 0, i64 2
  %227 = getelementptr inbounds [4 x %struct.TYPE_20__], [4 x %struct.TYPE_20__]* %13, i64 0, i64 2
  %228 = bitcast { i64, i32 }* %42 to i8*
  %229 = bitcast %struct.TYPE_20__* %226 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %228, i8* align 8 %229, i64 12, i1 false)
  %230 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %42, i32 0, i32 0
  %231 = load i64, i64* %230, align 8
  %232 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %42, i32 0, i32 1
  %233 = load i32, i32* %232, align 8
  %234 = bitcast { i64, i32 }* %43 to i8*
  %235 = bitcast %struct.TYPE_20__* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %234, i8* align 4 %235, i64 12, i1 false)
  %236 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %43, i32 0, i32 0
  %237 = load i64, i64* %236, align 4
  %238 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %43, i32 0, i32 1
  %239 = load i32, i32* %238, align 4
  %240 = call i32 @VectorMA(i64 %231, i32 %233, i32 -2, i64 %237, i32 %239, %struct.TYPE_20__* byval(%struct.TYPE_20__) align 8 %227)
  %241 = getelementptr inbounds [4 x %struct.TYPE_20__], [4 x %struct.TYPE_20__]* %13, i64 0, i64 3
  %242 = getelementptr inbounds [4 x %struct.TYPE_20__], [4 x %struct.TYPE_20__]* %13, i64 0, i64 3
  %243 = bitcast { i64, i32 }* %44 to i8*
  %244 = bitcast %struct.TYPE_20__* %241 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %243, i8* align 4 %244, i64 12, i1 false)
  %245 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %44, i32 0, i32 0
  %246 = load i64, i64* %245, align 4
  %247 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %44, i32 0, i32 1
  %248 = load i32, i32* %247, align 4
  %249 = bitcast { i64, i32 }* %45 to i8*
  %250 = bitcast %struct.TYPE_20__* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %249, i8* align 4 %250, i64 12, i1 false)
  %251 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %45, i32 0, i32 0
  %252 = load i64, i64* %251, align 4
  %253 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %45, i32 0, i32 1
  %254 = load i32, i32* %253, align 4
  %255 = bitcast %struct.TYPE_20__* %46 to i8*
  %256 = bitcast %struct.TYPE_20__* %242 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %255, i8* align 4 %256, i64 12, i1 false)
  %257 = call i32 @VectorMA(i64 %246, i32 %248, i32 2, i64 %252, i32 %254, %struct.TYPE_20__* byval(%struct.TYPE_20__) align 8 %46)
  %258 = load i32, i32* %11, align 4
  %259 = load i32, i32* %12, align 4
  %260 = getelementptr inbounds [4 x %struct.TYPE_20__], [4 x %struct.TYPE_20__]* %13, i64 0, i64 0
  %261 = call i32 @BotImport_DebugPolygonShow(i32 %258, i32 %259, i32 4, %struct.TYPE_20__* %260)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @VectorCopy(i64, i32, i64, i32) #2

declare dso_local i32 @VectorSubtract(i64, i32, i64, i32, i64, i32) #2

declare dso_local i32 @VectorNormalize(i64, i32) #2

declare dso_local float @DotProduct(i64, i32, i64, i32) #2

declare dso_local i32 @VectorSet(i64, i32, i32, i32, i32) #2

declare dso_local i32 @CrossProduct(i64, i32, i64, i32, i64, i32) #2

declare dso_local i32 @VectorMA(i64, i32, i32, i64, i32, %struct.TYPE_20__* byval(%struct.TYPE_20__) align 8) #2

declare dso_local i32 @BotImport_DebugPolygonShow(i32, i32, i32, %struct.TYPE_20__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
