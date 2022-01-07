; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_smpc.c_SmpcINTBACKStatus.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_smpc.c_SmpcINTBACKStatus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32, i32, i32*, i64, i64 }
%struct.TYPE_6__ = type { i32* }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32 }

@SmpcInternalVars = common dso_local global %struct.TYPE_7__* null, align 8
@SmpcRegs = common dso_local global %struct.TYPE_6__* null, align 8
@framecounter = common dso_local global i32 0, align 4
@Movie = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@Recording = common dso_local global i64 0, align 8
@Playback = common dso_local global i64 0, align 8
@movietime = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@noon = common dso_local global i32 0, align 4
@totalseconds = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @SmpcINTBACKStatus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SmpcINTBACKStatus() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.tm, align 4
  %3 = alloca [4 x i32], align 16
  %4 = alloca i64, align 8
  %5 = load %struct.TYPE_7__*, %struct.TYPE_7__** @SmpcInternalVars, align 8
  %6 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = shl i32 %7, 6
  %9 = or i32 128, %8
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** @SmpcRegs, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  store i32 %9, i32* %13, align 4
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** @SmpcInternalVars, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 9
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %0
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** @SmpcInternalVars, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 8
  %21 = load i64, i64* %20, align 8
  %22 = load i32, i32* @framecounter, align 4
  %23 = mul nsw i32 %22, 1001
  %24 = sdiv i32 %23, 60000
  %25 = sext i32 %24 to i64
  %26 = add nsw i64 %21, %25
  store i64 %26, i64* %4, align 8
  br label %29

27:                                               ; preds = %0
  %28 = call i64 @time(i32* null)
  store i64 %28, i64* %4, align 8
  br label %29

29:                                               ; preds = %27, %18
  %30 = call i32 @localtime_r(i64* %4, %struct.tm* %2)
  %31 = getelementptr inbounds %struct.tm, %struct.tm* %2, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = add nsw i32 1900, %32
  %34 = sdiv i32 %33, 1000
  %35 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 0
  store i32 %34, i32* %35, align 16
  %36 = getelementptr inbounds %struct.tm, %struct.tm* %2, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = add nsw i32 1900, %37
  %39 = srem i32 %38, 1000
  %40 = sdiv i32 %39, 100
  %41 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 1
  store i32 %40, i32* %41, align 4
  %42 = getelementptr inbounds %struct.tm, %struct.tm* %2, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = add nsw i32 1900, %43
  %45 = srem i32 %44, 1000
  %46 = srem i32 %45, 100
  %47 = sdiv i32 %46, 10
  %48 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 2
  store i32 %47, i32* %48, align 8
  %49 = getelementptr inbounds %struct.tm, %struct.tm* %2, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = add nsw i32 1900, %50
  %52 = srem i32 %51, 1000
  %53 = srem i32 %52, 100
  %54 = srem i32 %53, 10
  %55 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 3
  store i32 %54, i32* %55, align 4
  %56 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 0
  %57 = load i32, i32* %56, align 16
  %58 = shl i32 %57, 4
  %59 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 1
  %60 = load i32, i32* %59, align 4
  %61 = or i32 %58, %60
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** @SmpcRegs, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 1
  store i32 %61, i32* %65, align 4
  %66 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 2
  %67 = load i32, i32* %66, align 8
  %68 = shl i32 %67, 4
  %69 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 3
  %70 = load i32, i32* %69, align 4
  %71 = or i32 %68, %70
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** @SmpcRegs, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 2
  store i32 %71, i32* %75, align 4
  %76 = getelementptr inbounds %struct.tm, %struct.tm* %2, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = shl i32 %77, 4
  %79 = getelementptr inbounds %struct.tm, %struct.tm* %2, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = add nsw i32 %80, 1
  %82 = or i32 %78, %81
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** @SmpcRegs, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 3
  store i32 %82, i32* %86, align 4
  %87 = getelementptr inbounds %struct.tm, %struct.tm* %2, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = sdiv i32 %88, 10
  %90 = shl i32 %89, 4
  %91 = getelementptr inbounds %struct.tm, %struct.tm* %2, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = srem i32 %92, 10
  %94 = or i32 %90, %93
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** @SmpcRegs, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 4
  store i32 %94, i32* %98, align 4
  %99 = getelementptr inbounds %struct.tm, %struct.tm* %2, i32 0, i32 4
  %100 = load i32, i32* %99, align 4
  %101 = sdiv i32 %100, 10
  %102 = shl i32 %101, 4
  %103 = getelementptr inbounds %struct.tm, %struct.tm* %2, i32 0, i32 4
  %104 = load i32, i32* %103, align 4
  %105 = srem i32 %104, 10
  %106 = or i32 %102, %105
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** @SmpcRegs, align 8
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 0
  %109 = load i32*, i32** %108, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 5
  store i32 %106, i32* %110, align 4
  %111 = getelementptr inbounds %struct.tm, %struct.tm* %2, i32 0, i32 5
  %112 = load i32, i32* %111, align 4
  %113 = sdiv i32 %112, 10
  %114 = shl i32 %113, 4
  %115 = getelementptr inbounds %struct.tm, %struct.tm* %2, i32 0, i32 5
  %116 = load i32, i32* %115, align 4
  %117 = srem i32 %116, 10
  %118 = or i32 %114, %117
  %119 = load %struct.TYPE_6__*, %struct.TYPE_6__** @SmpcRegs, align 8
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 0
  %121 = load i32*, i32** %120, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 6
  store i32 %118, i32* %122, align 4
  %123 = getelementptr inbounds %struct.tm, %struct.tm* %2, i32 0, i32 6
  %124 = load i32, i32* %123, align 4
  %125 = sdiv i32 %124, 10
  %126 = shl i32 %125, 4
  %127 = getelementptr inbounds %struct.tm, %struct.tm* %2, i32 0, i32 6
  %128 = load i32, i32* %127, align 4
  %129 = srem i32 %128, 10
  %130 = or i32 %126, %129
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** @SmpcRegs, align 8
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 0
  %133 = load i32*, i32** %132, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 7
  store i32 %130, i32* %134, align 4
  %135 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @Movie, i32 0, i32 0), align 8
  %136 = load i64, i64* @Recording, align 8
  %137 = icmp eq i64 %135, %136
  br i1 %137, label %142, label %138

138:                                              ; preds = %29
  %139 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @Movie, i32 0, i32 0), align 8
  %140 = load i64, i64* @Playback, align 8
  %141 = icmp eq i64 %139, %140
  br i1 %141, label %142, label %247

142:                                              ; preds = %138, %29
  store i32 98, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @movietime, i32 0, i32 0), align 4
  store i32 4, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @movietime, i32 0, i32 1), align 4
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @movietime, i32 0, i32 2), align 4
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @movietime, i32 0, i32 3), align 4
  %143 = load i32, i32* @framecounter, align 4
  %144 = sdiv i32 %143, 60
  %145 = load i32, i32* @noon, align 4
  %146 = add nsw i32 %144, %145
  store i32 %146, i32* @totalseconds, align 4
  %147 = load i32, i32* @totalseconds, align 4
  %148 = srem i32 %147, 60
  store i32 %148, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @movietime, i32 0, i32 4), align 4
  %149 = load i32, i32* @totalseconds, align 4
  %150 = sdiv i32 %149, 60
  store i32 %150, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @movietime, i32 0, i32 5), align 4
  %151 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @movietime, i32 0, i32 5), align 4
  %152 = sdiv i32 %151, 60
  store i32 %152, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @movietime, i32 0, i32 6), align 4
  %153 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @movietime, i32 0, i32 5), align 4
  %154 = srem i32 %153, 60
  store i32 %154, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @movietime, i32 0, i32 5), align 4
  %155 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @movietime, i32 0, i32 6), align 4
  %156 = srem i32 %155, 24
  store i32 %156, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @movietime, i32 0, i32 6), align 4
  %157 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @movietime, i32 0, i32 0), align 4
  %158 = add nsw i32 1900, %157
  %159 = sdiv i32 %158, 1000
  %160 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 0
  store i32 %159, i32* %160, align 16
  %161 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @movietime, i32 0, i32 0), align 4
  %162 = add nsw i32 1900, %161
  %163 = srem i32 %162, 1000
  %164 = sdiv i32 %163, 100
  %165 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 1
  store i32 %164, i32* %165, align 4
  %166 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @movietime, i32 0, i32 0), align 4
  %167 = add nsw i32 1900, %166
  %168 = srem i32 %167, 1000
  %169 = srem i32 %168, 100
  %170 = sdiv i32 %169, 10
  %171 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 2
  store i32 %170, i32* %171, align 8
  %172 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @movietime, i32 0, i32 0), align 4
  %173 = add nsw i32 1900, %172
  %174 = srem i32 %173, 1000
  %175 = srem i32 %174, 100
  %176 = srem i32 %175, 10
  %177 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 3
  store i32 %176, i32* %177, align 4
  %178 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 0
  %179 = load i32, i32* %178, align 16
  %180 = shl i32 %179, 4
  %181 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 1
  %182 = load i32, i32* %181, align 4
  %183 = or i32 %180, %182
  %184 = load %struct.TYPE_6__*, %struct.TYPE_6__** @SmpcRegs, align 8
  %185 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %184, i32 0, i32 0
  %186 = load i32*, i32** %185, align 8
  %187 = getelementptr inbounds i32, i32* %186, i64 1
  store i32 %183, i32* %187, align 4
  %188 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 2
  %189 = load i32, i32* %188, align 8
  %190 = shl i32 %189, 4
  %191 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 3
  %192 = load i32, i32* %191, align 4
  %193 = or i32 %190, %192
  %194 = load %struct.TYPE_6__*, %struct.TYPE_6__** @SmpcRegs, align 8
  %195 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %194, i32 0, i32 0
  %196 = load i32*, i32** %195, align 8
  %197 = getelementptr inbounds i32, i32* %196, i64 2
  store i32 %193, i32* %197, align 4
  %198 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @movietime, i32 0, i32 1), align 4
  %199 = shl i32 %198, 4
  %200 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @movietime, i32 0, i32 3), align 4
  %201 = add nsw i32 %200, 1
  %202 = or i32 %199, %201
  %203 = load %struct.TYPE_6__*, %struct.TYPE_6__** @SmpcRegs, align 8
  %204 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %203, i32 0, i32 0
  %205 = load i32*, i32** %204, align 8
  %206 = getelementptr inbounds i32, i32* %205, i64 3
  store i32 %202, i32* %206, align 4
  %207 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @movietime, i32 0, i32 2), align 4
  %208 = sdiv i32 %207, 10
  %209 = shl i32 %208, 4
  %210 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @movietime, i32 0, i32 2), align 4
  %211 = srem i32 %210, 10
  %212 = or i32 %209, %211
  %213 = load %struct.TYPE_6__*, %struct.TYPE_6__** @SmpcRegs, align 8
  %214 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %213, i32 0, i32 0
  %215 = load i32*, i32** %214, align 8
  %216 = getelementptr inbounds i32, i32* %215, i64 4
  store i32 %212, i32* %216, align 4
  %217 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @movietime, i32 0, i32 6), align 4
  %218 = sdiv i32 %217, 10
  %219 = shl i32 %218, 4
  %220 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @movietime, i32 0, i32 6), align 4
  %221 = srem i32 %220, 10
  %222 = or i32 %219, %221
  %223 = load %struct.TYPE_6__*, %struct.TYPE_6__** @SmpcRegs, align 8
  %224 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %223, i32 0, i32 0
  %225 = load i32*, i32** %224, align 8
  %226 = getelementptr inbounds i32, i32* %225, i64 5
  store i32 %222, i32* %226, align 4
  %227 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @movietime, i32 0, i32 5), align 4
  %228 = sdiv i32 %227, 10
  %229 = shl i32 %228, 4
  %230 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @movietime, i32 0, i32 5), align 4
  %231 = srem i32 %230, 10
  %232 = or i32 %229, %231
  %233 = load %struct.TYPE_6__*, %struct.TYPE_6__** @SmpcRegs, align 8
  %234 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %233, i32 0, i32 0
  %235 = load i32*, i32** %234, align 8
  %236 = getelementptr inbounds i32, i32* %235, i64 6
  store i32 %232, i32* %236, align 4
  %237 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @movietime, i32 0, i32 4), align 4
  %238 = sdiv i32 %237, 10
  %239 = shl i32 %238, 4
  %240 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @movietime, i32 0, i32 4), align 4
  %241 = srem i32 %240, 10
  %242 = or i32 %239, %241
  %243 = load %struct.TYPE_6__*, %struct.TYPE_6__** @SmpcRegs, align 8
  %244 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %243, i32 0, i32 0
  %245 = load i32*, i32** %244, align 8
  %246 = getelementptr inbounds i32, i32* %245, i64 7
  store i32 %242, i32* %246, align 4
  br label %247

247:                                              ; preds = %142, %138
  %248 = load %struct.TYPE_6__*, %struct.TYPE_6__** @SmpcRegs, align 8
  %249 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %248, i32 0, i32 0
  %250 = load i32*, i32** %249, align 8
  %251 = getelementptr inbounds i32, i32* %250, i64 8
  store i32 0, i32* %251, align 4
  %252 = load %struct.TYPE_7__*, %struct.TYPE_7__** @SmpcInternalVars, align 8
  %253 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %252, i32 0, i32 1
  %254 = load i32, i32* %253, align 4
  %255 = load %struct.TYPE_6__*, %struct.TYPE_6__** @SmpcRegs, align 8
  %256 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %255, i32 0, i32 0
  %257 = load i32*, i32** %256, align 8
  %258 = getelementptr inbounds i32, i32* %257, i64 9
  store i32 %254, i32* %258, align 4
  %259 = load %struct.TYPE_7__*, %struct.TYPE_7__** @SmpcInternalVars, align 8
  %260 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %259, i32 0, i32 2
  %261 = load i32, i32* %260, align 8
  %262 = shl i32 %261, 6
  %263 = or i32 52, %262
  %264 = load %struct.TYPE_7__*, %struct.TYPE_7__** @SmpcInternalVars, align 8
  %265 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %264, i32 0, i32 3
  %266 = load i32, i32* %265, align 4
  %267 = shl i32 %266, 3
  %268 = or i32 %263, %267
  %269 = load %struct.TYPE_7__*, %struct.TYPE_7__** @SmpcInternalVars, align 8
  %270 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %269, i32 0, i32 4
  %271 = load i32, i32* %270, align 8
  %272 = shl i32 %271, 1
  %273 = or i32 %268, %272
  %274 = load %struct.TYPE_7__*, %struct.TYPE_7__** @SmpcInternalVars, align 8
  %275 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %274, i32 0, i32 5
  %276 = load i32, i32* %275, align 4
  %277 = or i32 %273, %276
  %278 = load %struct.TYPE_6__*, %struct.TYPE_6__** @SmpcRegs, align 8
  %279 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %278, i32 0, i32 0
  %280 = load i32*, i32** %279, align 8
  %281 = getelementptr inbounds i32, i32* %280, i64 10
  store i32 %277, i32* %281, align 4
  %282 = load %struct.TYPE_7__*, %struct.TYPE_7__** @SmpcInternalVars, align 8
  %283 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %282, i32 0, i32 6
  %284 = load i32, i32* %283, align 8
  %285 = shl i32 %284, 6
  %286 = load %struct.TYPE_6__*, %struct.TYPE_6__** @SmpcRegs, align 8
  %287 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %286, i32 0, i32 0
  %288 = load i32*, i32** %287, align 8
  %289 = getelementptr inbounds i32, i32* %288, i64 11
  store i32 %285, i32* %289, align 4
  store i32 0, i32* %1, align 4
  br label %290

290:                                              ; preds = %308, %247
  %291 = load i32, i32* %1, align 4
  %292 = icmp slt i32 %291, 4
  br i1 %292, label %293, label %311

293:                                              ; preds = %290
  %294 = load %struct.TYPE_7__*, %struct.TYPE_7__** @SmpcInternalVars, align 8
  %295 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %294, i32 0, i32 7
  %296 = load i32*, i32** %295, align 8
  %297 = load i32, i32* %1, align 4
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds i32, i32* %296, i64 %298
  %300 = load i32, i32* %299, align 4
  %301 = load %struct.TYPE_6__*, %struct.TYPE_6__** @SmpcRegs, align 8
  %302 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %301, i32 0, i32 0
  %303 = load i32*, i32** %302, align 8
  %304 = load i32, i32* %1, align 4
  %305 = add nsw i32 12, %304
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds i32, i32* %303, i64 %306
  store i32 %300, i32* %307, align 4
  br label %308

308:                                              ; preds = %293
  %309 = load i32, i32* %1, align 4
  %310 = add nsw i32 %309, 1
  store i32 %310, i32* %1, align 4
  br label %290

311:                                              ; preds = %290
  %312 = load %struct.TYPE_6__*, %struct.TYPE_6__** @SmpcRegs, align 8
  %313 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %312, i32 0, i32 0
  %314 = load i32*, i32** %313, align 8
  %315 = getelementptr inbounds i32, i32* %314, i64 31
  store i32 16, i32* %315, align 4
  ret void
}

declare dso_local i64 @time(i32*) #1

declare dso_local i32 @localtime_r(i64*, %struct.tm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
