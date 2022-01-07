; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/bspc/extr_aas_store.c_AAS_AllocMaxAAS.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/bspc/extr_aas_store.c_AAS_AllocMaxAAS.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, i64, i32*, i64, i32*, i64, i32*, i64, i32*, i64, i32*, i64, i32*, i64, i32*, i64, i32*, i64, i32*, i64, i32*, i64, i32*, i64, i32*, i64, i32*, i64 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@aasworld = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@max_aas = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@allocatedaasmem = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"allocated \00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c" of AAS memory\0A\00", align 1
@aas_vertexchain = common dso_local global i32* null, align 8
@aas_planechain = common dso_local global i32* null, align 8
@aas_edgechain = common dso_local global i32* null, align 8
@VERTEX_HASH_SIZE = common dso_local global i32 0, align 4
@aas_hashverts = common dso_local global i32* null, align 8
@PLANE_HASH_SIZE = common dso_local global i32 0, align 4
@aas_hashplanes = common dso_local global i32* null, align 8
@EDGE_HASH_SIZE = common dso_local global i32 0, align 4
@aas_hashedges = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AAS_AllocMaxAAS() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 (...) @AAS_InitMaxAAS()
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @aasworld, i32 0, i32 27), align 8
  %3 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @max_aas, i32 0, i32 0), align 4
  %4 = sext i32 %3 to i64
  %5 = mul i64 %4, 4
  %6 = trunc i64 %5 to i32
  %7 = call i64 @GetClearedMemory(i32 %6)
  %8 = inttoptr i64 %7 to i32*
  store i32* %8, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @aasworld, i32 0, i32 26), align 8
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @max_aas, i32 0, i32 0), align 4
  %10 = sext i32 %9 to i64
  %11 = mul i64 %10, 4
  %12 = load i32, i32* @allocatedaasmem, align 4
  %13 = sext i32 %12 to i64
  %14 = add i64 %13, %11
  %15 = trunc i64 %14 to i32
  store i32 %15, i32* @allocatedaasmem, align 4
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @aasworld, i32 0, i32 25), align 8
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @max_aas, i32 0, i32 1), align 4
  %17 = sext i32 %16 to i64
  %18 = mul i64 %17, 4
  %19 = trunc i64 %18 to i32
  %20 = call i64 @GetClearedMemory(i32 %19)
  %21 = inttoptr i64 %20 to i32*
  store i32* %21, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @aasworld, i32 0, i32 24), align 8
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @max_aas, i32 0, i32 1), align 4
  %23 = sext i32 %22 to i64
  %24 = mul i64 %23, 4
  %25 = load i32, i32* @allocatedaasmem, align 4
  %26 = sext i32 %25 to i64
  %27 = add i64 %26, %24
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* @allocatedaasmem, align 4
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @aasworld, i32 0, i32 23), align 8
  %29 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @max_aas, i32 0, i32 2), align 4
  %30 = sext i32 %29 to i64
  %31 = mul i64 %30, 4
  %32 = trunc i64 %31 to i32
  %33 = call i64 @GetClearedMemory(i32 %32)
  %34 = inttoptr i64 %33 to i32*
  store i32* %34, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @aasworld, i32 0, i32 22), align 8
  %35 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @max_aas, i32 0, i32 2), align 4
  %36 = sext i32 %35 to i64
  %37 = mul i64 %36, 4
  %38 = load i32, i32* @allocatedaasmem, align 4
  %39 = sext i32 %38 to i64
  %40 = add i64 %39, %37
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* @allocatedaasmem, align 4
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @aasworld, i32 0, i32 21), align 8
  %42 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @max_aas, i32 0, i32 3), align 4
  %43 = sext i32 %42 to i64
  %44 = mul i64 %43, 4
  %45 = trunc i64 %44 to i32
  %46 = call i64 @GetClearedMemory(i32 %45)
  %47 = inttoptr i64 %46 to i32*
  store i32* %47, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @aasworld, i32 0, i32 20), align 8
  %48 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @max_aas, i32 0, i32 3), align 4
  %49 = sext i32 %48 to i64
  %50 = mul i64 %49, 4
  %51 = load i32, i32* @allocatedaasmem, align 4
  %52 = sext i32 %51 to i64
  %53 = add i64 %52, %50
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* @allocatedaasmem, align 4
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @aasworld, i32 0, i32 19), align 8
  %55 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @max_aas, i32 0, i32 4), align 4
  %56 = sext i32 %55 to i64
  %57 = mul i64 %56, 4
  %58 = trunc i64 %57 to i32
  %59 = call i64 @GetClearedMemory(i32 %58)
  %60 = inttoptr i64 %59 to i32*
  store i32* %60, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @aasworld, i32 0, i32 18), align 8
  %61 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @max_aas, i32 0, i32 4), align 4
  %62 = sext i32 %61 to i64
  %63 = mul i64 %62, 4
  %64 = load i32, i32* @allocatedaasmem, align 4
  %65 = sext i32 %64 to i64
  %66 = add i64 %65, %63
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* @allocatedaasmem, align 4
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @aasworld, i32 0, i32 17), align 8
  %68 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @max_aas, i32 0, i32 5), align 4
  %69 = sext i32 %68 to i64
  %70 = mul i64 %69, 4
  %71 = trunc i64 %70 to i32
  %72 = call i64 @GetClearedMemory(i32 %71)
  %73 = inttoptr i64 %72 to i32*
  store i32* %73, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @aasworld, i32 0, i32 16), align 8
  %74 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @max_aas, i32 0, i32 5), align 4
  %75 = sext i32 %74 to i64
  %76 = mul i64 %75, 4
  %77 = load i32, i32* @allocatedaasmem, align 4
  %78 = sext i32 %77 to i64
  %79 = add i64 %78, %76
  %80 = trunc i64 %79 to i32
  store i32 %80, i32* @allocatedaasmem, align 4
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @aasworld, i32 0, i32 15), align 8
  %81 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @max_aas, i32 0, i32 6), align 4
  %82 = sext i32 %81 to i64
  %83 = mul i64 %82, 4
  %84 = trunc i64 %83 to i32
  %85 = call i64 @GetClearedMemory(i32 %84)
  %86 = inttoptr i64 %85 to i32*
  store i32* %86, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @aasworld, i32 0, i32 14), align 8
  %87 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @max_aas, i32 0, i32 6), align 4
  %88 = sext i32 %87 to i64
  %89 = mul i64 %88, 4
  %90 = load i32, i32* @allocatedaasmem, align 4
  %91 = sext i32 %90 to i64
  %92 = add i64 %91, %89
  %93 = trunc i64 %92 to i32
  store i32 %93, i32* @allocatedaasmem, align 4
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @aasworld, i32 0, i32 13), align 8
  %94 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @max_aas, i32 0, i32 7), align 4
  %95 = sext i32 %94 to i64
  %96 = mul i64 %95, 4
  %97 = trunc i64 %96 to i32
  %98 = call i64 @GetClearedMemory(i32 %97)
  %99 = inttoptr i64 %98 to i32*
  store i32* %99, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @aasworld, i32 0, i32 12), align 8
  %100 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @max_aas, i32 0, i32 7), align 4
  %101 = sext i32 %100 to i64
  %102 = mul i64 %101, 4
  %103 = load i32, i32* @allocatedaasmem, align 4
  %104 = sext i32 %103 to i64
  %105 = add i64 %104, %102
  %106 = trunc i64 %105 to i32
  store i32 %106, i32* @allocatedaasmem, align 4
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @aasworld, i32 0, i32 11), align 8
  %107 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @max_aas, i32 0, i32 8), align 4
  %108 = sext i32 %107 to i64
  %109 = mul i64 %108, 4
  %110 = trunc i64 %109 to i32
  %111 = call i64 @GetClearedMemory(i32 %110)
  %112 = inttoptr i64 %111 to i32*
  store i32* %112, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @aasworld, i32 0, i32 10), align 8
  %113 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @max_aas, i32 0, i32 8), align 4
  %114 = sext i32 %113 to i64
  %115 = mul i64 %114, 4
  %116 = load i32, i32* @allocatedaasmem, align 4
  %117 = sext i32 %116 to i64
  %118 = add i64 %117, %115
  %119 = trunc i64 %118 to i32
  store i32 %119, i32* @allocatedaasmem, align 4
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @aasworld, i32 0, i32 9), align 8
  %120 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @max_aas, i32 0, i32 9), align 4
  %121 = sext i32 %120 to i64
  %122 = mul i64 %121, 4
  %123 = trunc i64 %122 to i32
  %124 = call i64 @GetClearedMemory(i32 %123)
  %125 = inttoptr i64 %124 to i32*
  store i32* %125, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @aasworld, i32 0, i32 8), align 8
  %126 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @max_aas, i32 0, i32 9), align 4
  %127 = sext i32 %126 to i64
  %128 = mul i64 %127, 4
  %129 = load i32, i32* @allocatedaasmem, align 4
  %130 = sext i32 %129 to i64
  %131 = add i64 %130, %128
  %132 = trunc i64 %131 to i32
  store i32 %132, i32* @allocatedaasmem, align 4
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @aasworld, i32 0, i32 7), align 8
  %133 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @max_aas, i32 0, i32 10), align 4
  %134 = sext i32 %133 to i64
  %135 = mul i64 %134, 4
  %136 = trunc i64 %135 to i32
  %137 = call i64 @GetClearedMemory(i32 %136)
  %138 = inttoptr i64 %137 to i32*
  store i32* %138, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @aasworld, i32 0, i32 6), align 8
  %139 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @max_aas, i32 0, i32 10), align 4
  %140 = sext i32 %139 to i64
  %141 = mul i64 %140, 4
  %142 = load i32, i32* @allocatedaasmem, align 4
  %143 = sext i32 %142 to i64
  %144 = add i64 %143, %141
  %145 = trunc i64 %144 to i32
  store i32 %145, i32* @allocatedaasmem, align 4
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @aasworld, i32 0, i32 5), align 8
  %146 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @max_aas, i32 0, i32 11), align 4
  %147 = sext i32 %146 to i64
  %148 = mul i64 %147, 4
  %149 = trunc i64 %148 to i32
  %150 = call i64 @GetClearedMemory(i32 %149)
  %151 = inttoptr i64 %150 to i32*
  store i32* %151, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @aasworld, i32 0, i32 4), align 8
  %152 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @max_aas, i32 0, i32 11), align 4
  %153 = sext i32 %152 to i64
  %154 = mul i64 %153, 4
  %155 = load i32, i32* @allocatedaasmem, align 4
  %156 = sext i32 %155 to i64
  %157 = add i64 %156, %154
  %158 = trunc i64 %157 to i32
  store i32 %158, i32* @allocatedaasmem, align 4
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @aasworld, i32 0, i32 3), align 8
  %159 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @max_aas, i32 0, i32 12), align 4
  %160 = sext i32 %159 to i64
  %161 = mul i64 %160, 4
  %162 = trunc i64 %161 to i32
  %163 = call i64 @GetClearedMemory(i32 %162)
  %164 = inttoptr i64 %163 to i32*
  store i32* %164, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @aasworld, i32 0, i32 2), align 8
  %165 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @max_aas, i32 0, i32 12), align 4
  %166 = sext i32 %165 to i64
  %167 = mul i64 %166, 4
  %168 = load i32, i32* @allocatedaasmem, align 4
  %169 = sext i32 %168 to i64
  %170 = add i64 %169, %167
  %171 = trunc i64 %170 to i32
  store i32 %171, i32* @allocatedaasmem, align 4
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @aasworld, i32 0, i32 1), align 8
  %172 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @max_aas, i32 0, i32 13), align 4
  %173 = sext i32 %172 to i64
  %174 = mul i64 %173, 4
  %175 = trunc i64 %174 to i32
  %176 = call i64 @GetClearedMemory(i32 %175)
  %177 = inttoptr i64 %176 to i32*
  store i32* %177, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @aasworld, i32 0, i32 0), align 8
  %178 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @max_aas, i32 0, i32 13), align 4
  %179 = sext i32 %178 to i64
  %180 = mul i64 %179, 4
  %181 = load i32, i32* @allocatedaasmem, align 4
  %182 = sext i32 %181 to i64
  %183 = add i64 %182, %180
  %184 = trunc i64 %183 to i32
  store i32 %184, i32* @allocatedaasmem, align 4
  %185 = call i32 @Log_Print(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %186 = load i32, i32* @allocatedaasmem, align 4
  %187 = call i32 @PrintMemorySize(i32 %186)
  %188 = call i32 @Log_Print(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %189 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @max_aas, i32 0, i32 1), align 4
  %190 = sext i32 %189 to i64
  %191 = mul i64 %190, 4
  %192 = trunc i64 %191 to i32
  %193 = call i64 @GetClearedMemory(i32 %192)
  %194 = inttoptr i64 %193 to i32*
  store i32* %194, i32** @aas_vertexchain, align 8
  %195 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @max_aas, i32 0, i32 2), align 4
  %196 = sext i32 %195 to i64
  %197 = mul i64 %196, 4
  %198 = trunc i64 %197 to i32
  %199 = call i64 @GetClearedMemory(i32 %198)
  %200 = inttoptr i64 %199 to i32*
  store i32* %200, i32** @aas_planechain, align 8
  %201 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @max_aas, i32 0, i32 3), align 4
  %202 = sext i32 %201 to i64
  %203 = mul i64 %202, 4
  %204 = trunc i64 %203 to i32
  %205 = call i64 @GetClearedMemory(i32 %204)
  %206 = inttoptr i64 %205 to i32*
  store i32* %206, i32** @aas_edgechain, align 8
  store i32 0, i32* %1, align 4
  br label %207

207:                                              ; preds = %216, %0
  %208 = load i32, i32* %1, align 4
  %209 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @max_aas, i32 0, i32 1), align 4
  %210 = icmp slt i32 %208, %209
  br i1 %210, label %211, label %219

211:                                              ; preds = %207
  %212 = load i32*, i32** @aas_vertexchain, align 8
  %213 = load i32, i32* %1, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds i32, i32* %212, i64 %214
  store i32 -1, i32* %215, align 4
  br label %216

216:                                              ; preds = %211
  %217 = load i32, i32* %1, align 4
  %218 = add nsw i32 %217, 1
  store i32 %218, i32* %1, align 4
  br label %207

219:                                              ; preds = %207
  store i32 0, i32* %1, align 4
  br label %220

220:                                              ; preds = %231, %219
  %221 = load i32, i32* %1, align 4
  %222 = load i32, i32* @VERTEX_HASH_SIZE, align 4
  %223 = load i32, i32* @VERTEX_HASH_SIZE, align 4
  %224 = mul nsw i32 %222, %223
  %225 = icmp slt i32 %221, %224
  br i1 %225, label %226, label %234

226:                                              ; preds = %220
  %227 = load i32*, i32** @aas_hashverts, align 8
  %228 = load i32, i32* %1, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds i32, i32* %227, i64 %229
  store i32 -1, i32* %230, align 4
  br label %231

231:                                              ; preds = %226
  %232 = load i32, i32* %1, align 4
  %233 = add nsw i32 %232, 1
  store i32 %233, i32* %1, align 4
  br label %220

234:                                              ; preds = %220
  store i32 0, i32* %1, align 4
  br label %235

235:                                              ; preds = %244, %234
  %236 = load i32, i32* %1, align 4
  %237 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @max_aas, i32 0, i32 2), align 4
  %238 = icmp slt i32 %236, %237
  br i1 %238, label %239, label %247

239:                                              ; preds = %235
  %240 = load i32*, i32** @aas_planechain, align 8
  %241 = load i32, i32* %1, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds i32, i32* %240, i64 %242
  store i32 -1, i32* %243, align 4
  br label %244

244:                                              ; preds = %239
  %245 = load i32, i32* %1, align 4
  %246 = add nsw i32 %245, 1
  store i32 %246, i32* %1, align 4
  br label %235

247:                                              ; preds = %235
  store i32 0, i32* %1, align 4
  br label %248

248:                                              ; preds = %257, %247
  %249 = load i32, i32* %1, align 4
  %250 = load i32, i32* @PLANE_HASH_SIZE, align 4
  %251 = icmp slt i32 %249, %250
  br i1 %251, label %252, label %260

252:                                              ; preds = %248
  %253 = load i32*, i32** @aas_hashplanes, align 8
  %254 = load i32, i32* %1, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds i32, i32* %253, i64 %255
  store i32 -1, i32* %256, align 4
  br label %257

257:                                              ; preds = %252
  %258 = load i32, i32* %1, align 4
  %259 = add nsw i32 %258, 1
  store i32 %259, i32* %1, align 4
  br label %248

260:                                              ; preds = %248
  store i32 0, i32* %1, align 4
  br label %261

261:                                              ; preds = %270, %260
  %262 = load i32, i32* %1, align 4
  %263 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @max_aas, i32 0, i32 3), align 4
  %264 = icmp slt i32 %262, %263
  br i1 %264, label %265, label %273

265:                                              ; preds = %261
  %266 = load i32*, i32** @aas_edgechain, align 8
  %267 = load i32, i32* %1, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds i32, i32* %266, i64 %268
  store i32 -1, i32* %269, align 4
  br label %270

270:                                              ; preds = %265
  %271 = load i32, i32* %1, align 4
  %272 = add nsw i32 %271, 1
  store i32 %272, i32* %1, align 4
  br label %261

273:                                              ; preds = %261
  store i32 0, i32* %1, align 4
  br label %274

274:                                              ; preds = %283, %273
  %275 = load i32, i32* %1, align 4
  %276 = load i32, i32* @EDGE_HASH_SIZE, align 4
  %277 = icmp slt i32 %275, %276
  br i1 %277, label %278, label %286

278:                                              ; preds = %274
  %279 = load i32*, i32** @aas_hashedges, align 8
  %280 = load i32, i32* %1, align 4
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds i32, i32* %279, i64 %281
  store i32 -1, i32* %282, align 4
  br label %283

283:                                              ; preds = %278
  %284 = load i32, i32* %1, align 4
  %285 = add nsw i32 %284, 1
  store i32 %285, i32* %1, align 4
  br label %274

286:                                              ; preds = %274
  ret void
}

declare dso_local i32 @AAS_InitMaxAAS(...) #1

declare dso_local i64 @GetClearedMemory(i32) #1

declare dso_local i32 @Log_Print(i8*) #1

declare dso_local i32 @PrintMemorySize(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
