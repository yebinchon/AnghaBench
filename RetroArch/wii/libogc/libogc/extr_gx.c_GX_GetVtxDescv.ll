; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_gx.c_GX_GetVtxDescv.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_gx.c_GX_GetVtxDescv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@GX_MAX_VTXDESC_LISTSIZE = common dso_local global i64 0, align 8
@GX_VA_NULL = common dso_local global i32 0, align 4
@__gx = common dso_local global %struct.TYPE_5__* null, align 8
@GX_VA_PTNMTXIDX = common dso_local global i32 0, align 4
@GX_VA_TEX0MTXIDX = common dso_local global i32 0, align 4
@GX_VA_TEX1MTXIDX = common dso_local global i32 0, align 4
@GX_VA_TEX2MTXIDX = common dso_local global i32 0, align 4
@GX_VA_TEX3MTXIDX = common dso_local global i32 0, align 4
@GX_VA_TEX4MTXIDX = common dso_local global i32 0, align 4
@GX_VA_TEX5MTXIDX = common dso_local global i32 0, align 4
@GX_VA_TEX6MTXIDX = common dso_local global i32 0, align 4
@GX_VA_TEX7MTXIDX = common dso_local global i32 0, align 4
@GX_VA_POS = common dso_local global i32 0, align 4
@GX_VA_NRM = common dso_local global i32 0, align 4
@GX_VA_NBT = common dso_local global i32 0, align 4
@GX_VA_CLR0 = common dso_local global i32 0, align 4
@GX_VA_CLR1 = common dso_local global i32 0, align 4
@GX_VA_TEX0 = common dso_local global i32 0, align 4
@GX_VA_TEX1 = common dso_local global i32 0, align 4
@GX_VA_TEX2 = common dso_local global i32 0, align 4
@GX_VA_TEX3 = common dso_local global i32 0, align 4
@GX_VA_TEX4 = common dso_local global i32 0, align 4
@GX_VA_TEX5 = common dso_local global i32 0, align 4
@GX_VA_TEX6 = common dso_local global i32 0, align 4
@GX_VA_TEX7 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @GX_GetVtxDescv(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  store i64 0, i64* %3, align 8
  br label %4

4:                                                ; preds = %18, %1
  %5 = load i64, i64* %3, align 8
  %6 = load i64, i64* @GX_MAX_VTXDESC_LISTSIZE, align 8
  %7 = icmp ult i64 %5, %6
  br i1 %7, label %8, label %21

8:                                                ; preds = %4
  %9 = load i32, i32* @GX_VA_NULL, align 4
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %11 = load i64, i64* %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i64 %11
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  store i32 %9, i32* %13, align 4
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %15 = load i64, i64* %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  store i32 0, i32* %17, align 4
  br label %18

18:                                               ; preds = %8
  %19 = load i64, i64* %3, align 8
  %20 = add i64 %19, 1
  store i64 %20, i64* %3, align 8
  br label %4

21:                                               ; preds = %4
  store i64 0, i64* %3, align 8
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** @__gx, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = and i32 %24, 1
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %43

27:                                               ; preds = %21
  %28 = load i32, i32* @GX_VA_PTNMTXIDX, align 4
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %30 = load i64, i64* %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  store i32 %28, i32* %32, align 4
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** @__gx, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = and i32 %35, 1
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %38 = load i64, i64* %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  store i32 %36, i32* %40, align 4
  %41 = load i64, i64* %3, align 8
  %42 = add i64 %41, 1
  store i64 %42, i64* %3, align 8
  br label %43

43:                                               ; preds = %27, %21
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** @__gx, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = and i32 %46, 2
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %67

49:                                               ; preds = %43
  %50 = load i32, i32* @GX_VA_TEX0MTXIDX, align 4
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %52 = load i64, i64* %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  store i32 %50, i32* %54, align 4
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** @__gx, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = and i32 %57, 2
  %59 = call i8* @_SHIFTR(i32 %58, i32 1, i32 1)
  %60 = ptrtoint i8* %59 to i32
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %62 = load i64, i64* %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  store i32 %60, i32* %64, align 4
  %65 = load i64, i64* %3, align 8
  %66 = add i64 %65, 1
  store i64 %66, i64* %3, align 8
  br label %67

67:                                               ; preds = %49, %43
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** @__gx, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = and i32 %70, 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %91

73:                                               ; preds = %67
  %74 = load i32, i32* @GX_VA_TEX1MTXIDX, align 4
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %76 = load i64, i64* %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 1
  store i32 %74, i32* %78, align 4
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** @__gx, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = and i32 %81, 4
  %83 = call i8* @_SHIFTR(i32 %82, i32 2, i32 1)
  %84 = ptrtoint i8* %83 to i32
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %86 = load i64, i64* %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  store i32 %84, i32* %88, align 4
  %89 = load i64, i64* %3, align 8
  %90 = add i64 %89, 1
  store i64 %90, i64* %3, align 8
  br label %91

91:                                               ; preds = %73, %67
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** @__gx, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = and i32 %94, 8
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %115

97:                                               ; preds = %91
  %98 = load i32, i32* @GX_VA_TEX2MTXIDX, align 4
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %100 = load i64, i64* %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 1
  store i32 %98, i32* %102, align 4
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** @__gx, align 8
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = and i32 %105, 8
  %107 = call i8* @_SHIFTR(i32 %106, i32 3, i32 1)
  %108 = ptrtoint i8* %107 to i32
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %110 = load i64, i64* %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 0
  store i32 %108, i32* %112, align 4
  %113 = load i64, i64* %3, align 8
  %114 = add i64 %113, 1
  store i64 %114, i64* %3, align 8
  br label %115

115:                                              ; preds = %97, %91
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** @__gx, align 8
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = and i32 %118, 16
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %139

121:                                              ; preds = %115
  %122 = load i32, i32* @GX_VA_TEX3MTXIDX, align 4
  %123 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %124 = load i64, i64* %3, align 8
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 1
  store i32 %122, i32* %126, align 4
  %127 = load %struct.TYPE_5__*, %struct.TYPE_5__** @__gx, align 8
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = and i32 %129, 16
  %131 = call i8* @_SHIFTR(i32 %130, i32 4, i32 1)
  %132 = ptrtoint i8* %131 to i32
  %133 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %134 = load i64, i64* %3, align 8
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 0
  store i32 %132, i32* %136, align 4
  %137 = load i64, i64* %3, align 8
  %138 = add i64 %137, 1
  store i64 %138, i64* %3, align 8
  br label %139

139:                                              ; preds = %121, %115
  %140 = load %struct.TYPE_5__*, %struct.TYPE_5__** @__gx, align 8
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = and i32 %142, 32
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %163

145:                                              ; preds = %139
  %146 = load i32, i32* @GX_VA_TEX4MTXIDX, align 4
  %147 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %148 = load i64, i64* %3, align 8
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i64 %148
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 1
  store i32 %146, i32* %150, align 4
  %151 = load %struct.TYPE_5__*, %struct.TYPE_5__** @__gx, align 8
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = and i32 %153, 32
  %155 = call i8* @_SHIFTR(i32 %154, i32 5, i32 1)
  %156 = ptrtoint i8* %155 to i32
  %157 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %158 = load i64, i64* %3, align 8
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i64 %158
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i32 0, i32 0
  store i32 %156, i32* %160, align 4
  %161 = load i64, i64* %3, align 8
  %162 = add i64 %161, 1
  store i64 %162, i64* %3, align 8
  br label %163

163:                                              ; preds = %145, %139
  %164 = load %struct.TYPE_5__*, %struct.TYPE_5__** @__gx, align 8
  %165 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = and i32 %166, 64
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %187

169:                                              ; preds = %163
  %170 = load i32, i32* @GX_VA_TEX5MTXIDX, align 4
  %171 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %172 = load i64, i64* %3, align 8
  %173 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %171, i64 %172
  %174 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %173, i32 0, i32 1
  store i32 %170, i32* %174, align 4
  %175 = load %struct.TYPE_5__*, %struct.TYPE_5__** @__gx, align 8
  %176 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = and i32 %177, 64
  %179 = call i8* @_SHIFTR(i32 %178, i32 6, i32 1)
  %180 = ptrtoint i8* %179 to i32
  %181 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %182 = load i64, i64* %3, align 8
  %183 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %181, i64 %182
  %184 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %183, i32 0, i32 0
  store i32 %180, i32* %184, align 4
  %185 = load i64, i64* %3, align 8
  %186 = add i64 %185, 1
  store i64 %186, i64* %3, align 8
  br label %187

187:                                              ; preds = %169, %163
  %188 = load %struct.TYPE_5__*, %struct.TYPE_5__** @__gx, align 8
  %189 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = and i32 %190, 128
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %211

193:                                              ; preds = %187
  %194 = load i32, i32* @GX_VA_TEX6MTXIDX, align 4
  %195 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %196 = load i64, i64* %3, align 8
  %197 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %195, i64 %196
  %198 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %197, i32 0, i32 1
  store i32 %194, i32* %198, align 4
  %199 = load %struct.TYPE_5__*, %struct.TYPE_5__** @__gx, align 8
  %200 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 4
  %202 = and i32 %201, 128
  %203 = call i8* @_SHIFTR(i32 %202, i32 7, i32 1)
  %204 = ptrtoint i8* %203 to i32
  %205 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %206 = load i64, i64* %3, align 8
  %207 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %205, i64 %206
  %208 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %207, i32 0, i32 0
  store i32 %204, i32* %208, align 4
  %209 = load i64, i64* %3, align 8
  %210 = add i64 %209, 1
  store i64 %210, i64* %3, align 8
  br label %211

211:                                              ; preds = %193, %187
  %212 = load %struct.TYPE_5__*, %struct.TYPE_5__** @__gx, align 8
  %213 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 4
  %215 = and i32 %214, 256
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %235

217:                                              ; preds = %211
  %218 = load i32, i32* @GX_VA_TEX7MTXIDX, align 4
  %219 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %220 = load i64, i64* %3, align 8
  %221 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %219, i64 %220
  %222 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %221, i32 0, i32 1
  store i32 %218, i32* %222, align 4
  %223 = load %struct.TYPE_5__*, %struct.TYPE_5__** @__gx, align 8
  %224 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 4
  %226 = and i32 %225, 256
  %227 = call i8* @_SHIFTR(i32 %226, i32 8, i32 1)
  %228 = ptrtoint i8* %227 to i32
  %229 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %230 = load i64, i64* %3, align 8
  %231 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %229, i64 %230
  %232 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %231, i32 0, i32 0
  store i32 %228, i32* %232, align 4
  %233 = load i64, i64* %3, align 8
  %234 = add i64 %233, 1
  store i64 %234, i64* %3, align 8
  br label %235

235:                                              ; preds = %217, %211
  %236 = load %struct.TYPE_5__*, %struct.TYPE_5__** @__gx, align 8
  %237 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 4
  %239 = and i32 %238, 1536
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %259

241:                                              ; preds = %235
  %242 = load i32, i32* @GX_VA_POS, align 4
  %243 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %244 = load i64, i64* %3, align 8
  %245 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %243, i64 %244
  %246 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %245, i32 0, i32 1
  store i32 %242, i32* %246, align 4
  %247 = load %struct.TYPE_5__*, %struct.TYPE_5__** @__gx, align 8
  %248 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 4
  %250 = and i32 %249, 1536
  %251 = call i8* @_SHIFTR(i32 %250, i32 9, i32 2)
  %252 = ptrtoint i8* %251 to i32
  %253 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %254 = load i64, i64* %3, align 8
  %255 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %253, i64 %254
  %256 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %255, i32 0, i32 0
  store i32 %252, i32* %256, align 4
  %257 = load i64, i64* %3, align 8
  %258 = add i64 %257, 1
  store i64 %258, i64* %3, align 8
  br label %259

259:                                              ; preds = %241, %235
  %260 = load %struct.TYPE_5__*, %struct.TYPE_5__** @__gx, align 8
  %261 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 4
  %263 = and i32 %262, 6144
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %265, label %313

265:                                              ; preds = %259
  %266 = load %struct.TYPE_5__*, %struct.TYPE_5__** @__gx, align 8
  %267 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %266, i32 0, i32 1
  %268 = load i32, i32* %267, align 4
  %269 = icmp eq i32 %268, 1
  br i1 %269, label %270, label %288

270:                                              ; preds = %265
  %271 = load i32, i32* @GX_VA_NRM, align 4
  %272 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %273 = load i64, i64* %3, align 8
  %274 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %272, i64 %273
  %275 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %274, i32 0, i32 1
  store i32 %271, i32* %275, align 4
  %276 = load %struct.TYPE_5__*, %struct.TYPE_5__** @__gx, align 8
  %277 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %276, i32 0, i32 0
  %278 = load i32, i32* %277, align 4
  %279 = and i32 %278, 6144
  %280 = call i8* @_SHIFTR(i32 %279, i32 11, i32 2)
  %281 = ptrtoint i8* %280 to i32
  %282 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %283 = load i64, i64* %3, align 8
  %284 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %282, i64 %283
  %285 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %284, i32 0, i32 0
  store i32 %281, i32* %285, align 4
  %286 = load i64, i64* %3, align 8
  %287 = add i64 %286, 1
  store i64 %287, i64* %3, align 8
  br label %312

288:                                              ; preds = %265
  %289 = load %struct.TYPE_5__*, %struct.TYPE_5__** @__gx, align 8
  %290 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %289, i32 0, i32 1
  %291 = load i32, i32* %290, align 4
  %292 = icmp eq i32 %291, 2
  br i1 %292, label %293, label %311

293:                                              ; preds = %288
  %294 = load i32, i32* @GX_VA_NBT, align 4
  %295 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %296 = load i64, i64* %3, align 8
  %297 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %295, i64 %296
  %298 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %297, i32 0, i32 1
  store i32 %294, i32* %298, align 4
  %299 = load %struct.TYPE_5__*, %struct.TYPE_5__** @__gx, align 8
  %300 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %299, i32 0, i32 0
  %301 = load i32, i32* %300, align 4
  %302 = and i32 %301, 6144
  %303 = call i8* @_SHIFTR(i32 %302, i32 11, i32 2)
  %304 = ptrtoint i8* %303 to i32
  %305 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %306 = load i64, i64* %3, align 8
  %307 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %305, i64 %306
  %308 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %307, i32 0, i32 0
  store i32 %304, i32* %308, align 4
  %309 = load i64, i64* %3, align 8
  %310 = add i64 %309, 1
  store i64 %310, i64* %3, align 8
  br label %311

311:                                              ; preds = %293, %288
  br label %312

312:                                              ; preds = %311, %270
  br label %313

313:                                              ; preds = %312, %259
  %314 = load %struct.TYPE_5__*, %struct.TYPE_5__** @__gx, align 8
  %315 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %314, i32 0, i32 0
  %316 = load i32, i32* %315, align 4
  %317 = and i32 %316, 24576
  %318 = icmp ne i32 %317, 0
  br i1 %318, label %319, label %337

319:                                              ; preds = %313
  %320 = load i32, i32* @GX_VA_CLR0, align 4
  %321 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %322 = load i64, i64* %3, align 8
  %323 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %321, i64 %322
  %324 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %323, i32 0, i32 1
  store i32 %320, i32* %324, align 4
  %325 = load %struct.TYPE_5__*, %struct.TYPE_5__** @__gx, align 8
  %326 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %325, i32 0, i32 0
  %327 = load i32, i32* %326, align 4
  %328 = and i32 %327, 24576
  %329 = call i8* @_SHIFTR(i32 %328, i32 13, i32 2)
  %330 = ptrtoint i8* %329 to i32
  %331 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %332 = load i64, i64* %3, align 8
  %333 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %331, i64 %332
  %334 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %333, i32 0, i32 0
  store i32 %330, i32* %334, align 4
  %335 = load i64, i64* %3, align 8
  %336 = add i64 %335, 1
  store i64 %336, i64* %3, align 8
  br label %337

337:                                              ; preds = %319, %313
  %338 = load %struct.TYPE_5__*, %struct.TYPE_5__** @__gx, align 8
  %339 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %338, i32 0, i32 0
  %340 = load i32, i32* %339, align 4
  %341 = and i32 %340, 98304
  %342 = icmp ne i32 %341, 0
  br i1 %342, label %343, label %361

343:                                              ; preds = %337
  %344 = load i32, i32* @GX_VA_CLR1, align 4
  %345 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %346 = load i64, i64* %3, align 8
  %347 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %345, i64 %346
  %348 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %347, i32 0, i32 1
  store i32 %344, i32* %348, align 4
  %349 = load %struct.TYPE_5__*, %struct.TYPE_5__** @__gx, align 8
  %350 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %349, i32 0, i32 0
  %351 = load i32, i32* %350, align 4
  %352 = and i32 %351, 98304
  %353 = call i8* @_SHIFTR(i32 %352, i32 15, i32 2)
  %354 = ptrtoint i8* %353 to i32
  %355 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %356 = load i64, i64* %3, align 8
  %357 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %355, i64 %356
  %358 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %357, i32 0, i32 0
  store i32 %354, i32* %358, align 4
  %359 = load i64, i64* %3, align 8
  %360 = add i64 %359, 1
  store i64 %360, i64* %3, align 8
  br label %361

361:                                              ; preds = %343, %337
  %362 = load %struct.TYPE_5__*, %struct.TYPE_5__** @__gx, align 8
  %363 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %362, i32 0, i32 2
  %364 = load i32, i32* %363, align 4
  %365 = and i32 %364, 3
  %366 = icmp ne i32 %365, 0
  br i1 %366, label %367, label %383

367:                                              ; preds = %361
  %368 = load i32, i32* @GX_VA_TEX0, align 4
  %369 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %370 = load i64, i64* %3, align 8
  %371 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %369, i64 %370
  %372 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %371, i32 0, i32 1
  store i32 %368, i32* %372, align 4
  %373 = load %struct.TYPE_5__*, %struct.TYPE_5__** @__gx, align 8
  %374 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %373, i32 0, i32 2
  %375 = load i32, i32* %374, align 4
  %376 = and i32 %375, 3
  %377 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %378 = load i64, i64* %3, align 8
  %379 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %377, i64 %378
  %380 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %379, i32 0, i32 0
  store i32 %376, i32* %380, align 4
  %381 = load i64, i64* %3, align 8
  %382 = add i64 %381, 1
  store i64 %382, i64* %3, align 8
  br label %383

383:                                              ; preds = %367, %361
  %384 = load %struct.TYPE_5__*, %struct.TYPE_5__** @__gx, align 8
  %385 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %384, i32 0, i32 2
  %386 = load i32, i32* %385, align 4
  %387 = and i32 %386, 12
  %388 = icmp ne i32 %387, 0
  br i1 %388, label %389, label %407

389:                                              ; preds = %383
  %390 = load i32, i32* @GX_VA_TEX1, align 4
  %391 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %392 = load i64, i64* %3, align 8
  %393 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %391, i64 %392
  %394 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %393, i32 0, i32 1
  store i32 %390, i32* %394, align 4
  %395 = load %struct.TYPE_5__*, %struct.TYPE_5__** @__gx, align 8
  %396 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %395, i32 0, i32 2
  %397 = load i32, i32* %396, align 4
  %398 = and i32 %397, 12
  %399 = call i8* @_SHIFTR(i32 %398, i32 2, i32 2)
  %400 = ptrtoint i8* %399 to i32
  %401 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %402 = load i64, i64* %3, align 8
  %403 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %401, i64 %402
  %404 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %403, i32 0, i32 0
  store i32 %400, i32* %404, align 4
  %405 = load i64, i64* %3, align 8
  %406 = add i64 %405, 1
  store i64 %406, i64* %3, align 8
  br label %407

407:                                              ; preds = %389, %383
  %408 = load %struct.TYPE_5__*, %struct.TYPE_5__** @__gx, align 8
  %409 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %408, i32 0, i32 2
  %410 = load i32, i32* %409, align 4
  %411 = and i32 %410, 48
  %412 = icmp ne i32 %411, 0
  br i1 %412, label %413, label %431

413:                                              ; preds = %407
  %414 = load i32, i32* @GX_VA_TEX2, align 4
  %415 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %416 = load i64, i64* %3, align 8
  %417 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %415, i64 %416
  %418 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %417, i32 0, i32 1
  store i32 %414, i32* %418, align 4
  %419 = load %struct.TYPE_5__*, %struct.TYPE_5__** @__gx, align 8
  %420 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %419, i32 0, i32 2
  %421 = load i32, i32* %420, align 4
  %422 = and i32 %421, 48
  %423 = call i8* @_SHIFTR(i32 %422, i32 4, i32 2)
  %424 = ptrtoint i8* %423 to i32
  %425 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %426 = load i64, i64* %3, align 8
  %427 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %425, i64 %426
  %428 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %427, i32 0, i32 0
  store i32 %424, i32* %428, align 4
  %429 = load i64, i64* %3, align 8
  %430 = add i64 %429, 1
  store i64 %430, i64* %3, align 8
  br label %431

431:                                              ; preds = %413, %407
  %432 = load %struct.TYPE_5__*, %struct.TYPE_5__** @__gx, align 8
  %433 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %432, i32 0, i32 2
  %434 = load i32, i32* %433, align 4
  %435 = and i32 %434, 192
  %436 = icmp ne i32 %435, 0
  br i1 %436, label %437, label %455

437:                                              ; preds = %431
  %438 = load i32, i32* @GX_VA_TEX3, align 4
  %439 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %440 = load i64, i64* %3, align 8
  %441 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %439, i64 %440
  %442 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %441, i32 0, i32 1
  store i32 %438, i32* %442, align 4
  %443 = load %struct.TYPE_5__*, %struct.TYPE_5__** @__gx, align 8
  %444 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %443, i32 0, i32 2
  %445 = load i32, i32* %444, align 4
  %446 = and i32 %445, 192
  %447 = call i8* @_SHIFTR(i32 %446, i32 6, i32 2)
  %448 = ptrtoint i8* %447 to i32
  %449 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %450 = load i64, i64* %3, align 8
  %451 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %449, i64 %450
  %452 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %451, i32 0, i32 0
  store i32 %448, i32* %452, align 4
  %453 = load i64, i64* %3, align 8
  %454 = add i64 %453, 1
  store i64 %454, i64* %3, align 8
  br label %455

455:                                              ; preds = %437, %431
  %456 = load %struct.TYPE_5__*, %struct.TYPE_5__** @__gx, align 8
  %457 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %456, i32 0, i32 2
  %458 = load i32, i32* %457, align 4
  %459 = and i32 %458, 768
  %460 = icmp ne i32 %459, 0
  br i1 %460, label %461, label %479

461:                                              ; preds = %455
  %462 = load i32, i32* @GX_VA_TEX4, align 4
  %463 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %464 = load i64, i64* %3, align 8
  %465 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %463, i64 %464
  %466 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %465, i32 0, i32 1
  store i32 %462, i32* %466, align 4
  %467 = load %struct.TYPE_5__*, %struct.TYPE_5__** @__gx, align 8
  %468 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %467, i32 0, i32 2
  %469 = load i32, i32* %468, align 4
  %470 = and i32 %469, 768
  %471 = call i8* @_SHIFTR(i32 %470, i32 8, i32 2)
  %472 = ptrtoint i8* %471 to i32
  %473 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %474 = load i64, i64* %3, align 8
  %475 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %473, i64 %474
  %476 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %475, i32 0, i32 0
  store i32 %472, i32* %476, align 4
  %477 = load i64, i64* %3, align 8
  %478 = add i64 %477, 1
  store i64 %478, i64* %3, align 8
  br label %479

479:                                              ; preds = %461, %455
  %480 = load %struct.TYPE_5__*, %struct.TYPE_5__** @__gx, align 8
  %481 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %480, i32 0, i32 2
  %482 = load i32, i32* %481, align 4
  %483 = and i32 %482, 3072
  %484 = icmp ne i32 %483, 0
  br i1 %484, label %485, label %503

485:                                              ; preds = %479
  %486 = load i32, i32* @GX_VA_TEX5, align 4
  %487 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %488 = load i64, i64* %3, align 8
  %489 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %487, i64 %488
  %490 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %489, i32 0, i32 1
  store i32 %486, i32* %490, align 4
  %491 = load %struct.TYPE_5__*, %struct.TYPE_5__** @__gx, align 8
  %492 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %491, i32 0, i32 2
  %493 = load i32, i32* %492, align 4
  %494 = and i32 %493, 3072
  %495 = call i8* @_SHIFTR(i32 %494, i32 10, i32 2)
  %496 = ptrtoint i8* %495 to i32
  %497 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %498 = load i64, i64* %3, align 8
  %499 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %497, i64 %498
  %500 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %499, i32 0, i32 0
  store i32 %496, i32* %500, align 4
  %501 = load i64, i64* %3, align 8
  %502 = add i64 %501, 1
  store i64 %502, i64* %3, align 8
  br label %503

503:                                              ; preds = %485, %479
  %504 = load %struct.TYPE_5__*, %struct.TYPE_5__** @__gx, align 8
  %505 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %504, i32 0, i32 2
  %506 = load i32, i32* %505, align 4
  %507 = and i32 %506, 12288
  %508 = icmp ne i32 %507, 0
  br i1 %508, label %509, label %527

509:                                              ; preds = %503
  %510 = load i32, i32* @GX_VA_TEX6, align 4
  %511 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %512 = load i64, i64* %3, align 8
  %513 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %511, i64 %512
  %514 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %513, i32 0, i32 1
  store i32 %510, i32* %514, align 4
  %515 = load %struct.TYPE_5__*, %struct.TYPE_5__** @__gx, align 8
  %516 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %515, i32 0, i32 2
  %517 = load i32, i32* %516, align 4
  %518 = and i32 %517, 12288
  %519 = call i8* @_SHIFTR(i32 %518, i32 12, i32 2)
  %520 = ptrtoint i8* %519 to i32
  %521 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %522 = load i64, i64* %3, align 8
  %523 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %521, i64 %522
  %524 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %523, i32 0, i32 0
  store i32 %520, i32* %524, align 4
  %525 = load i64, i64* %3, align 8
  %526 = add i64 %525, 1
  store i64 %526, i64* %3, align 8
  br label %527

527:                                              ; preds = %509, %503
  %528 = load %struct.TYPE_5__*, %struct.TYPE_5__** @__gx, align 8
  %529 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %528, i32 0, i32 2
  %530 = load i32, i32* %529, align 4
  %531 = and i32 %530, 49152
  %532 = icmp ne i32 %531, 0
  br i1 %532, label %533, label %551

533:                                              ; preds = %527
  %534 = load i32, i32* @GX_VA_TEX7, align 4
  %535 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %536 = load i64, i64* %3, align 8
  %537 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %535, i64 %536
  %538 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %537, i32 0, i32 1
  store i32 %534, i32* %538, align 4
  %539 = load %struct.TYPE_5__*, %struct.TYPE_5__** @__gx, align 8
  %540 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %539, i32 0, i32 2
  %541 = load i32, i32* %540, align 4
  %542 = and i32 %541, 49152
  %543 = call i8* @_SHIFTR(i32 %542, i32 14, i32 2)
  %544 = ptrtoint i8* %543 to i32
  %545 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %546 = load i64, i64* %3, align 8
  %547 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %545, i64 %546
  %548 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %547, i32 0, i32 0
  store i32 %544, i32* %548, align 4
  %549 = load i64, i64* %3, align 8
  %550 = add i64 %549, 1
  store i64 %550, i64* %3, align 8
  br label %551

551:                                              ; preds = %533, %527
  ret void
}

declare dso_local i8* @_SHIFTR(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
