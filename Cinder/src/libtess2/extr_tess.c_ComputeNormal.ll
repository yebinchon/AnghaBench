; ModuleID = '/home/carl/AnghaBench/Cinder/src/libtess2/extr_tess.c_ComputeNormal.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/libtess2/extr_tess.c_ComputeNormal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64*, %struct.TYPE_6__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, i64*)* @ComputeNormal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ComputeNormal(%struct.TYPE_7__* %0, i64* %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca [3 x i64], align 16
  %12 = alloca [3 x i64], align 16
  %13 = alloca [3 x i64], align 16
  %14 = alloca [3 x i64], align 16
  %15 = alloca [3 x i64], align 16
  %16 = alloca [3 x %struct.TYPE_6__*], align 16
  %17 = alloca [3 x %struct.TYPE_6__*], align 16
  %18 = alloca %struct.TYPE_6__*, align 8
  %19 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store i64* %1, i64** %4, align 8
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  store %struct.TYPE_6__* %23, %struct.TYPE_6__** %18, align 8
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  store %struct.TYPE_6__* %26, %struct.TYPE_6__** %5, align 8
  store i32 0, i32* %19, align 4
  br label %27

27:                                               ; preds = %54, %2
  %28 = load i32, i32* %19, align 4
  %29 = icmp slt i32 %28, 3
  br i1 %29, label %30, label %57

30:                                               ; preds = %27
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i64*, i64** %32, align 8
  %34 = load i32, i32* %19, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i64, i64* %33, i64 %35
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %8, align 8
  %38 = load i64, i64* %8, align 8
  %39 = load i32, i32* %19, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [3 x i64], [3 x i64]* %12, i64 0, i64 %40
  store i64 %38, i64* %41, align 8
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %43 = load i32, i32* %19, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [3 x %struct.TYPE_6__*], [3 x %struct.TYPE_6__*]* %17, i64 0, i64 %44
  store %struct.TYPE_6__* %42, %struct.TYPE_6__** %45, align 8
  %46 = load i64, i64* %8, align 8
  %47 = load i32, i32* %19, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [3 x i64], [3 x i64]* %11, i64 0, i64 %48
  store i64 %46, i64* %49, align 8
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %51 = load i32, i32* %19, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [3 x %struct.TYPE_6__*], [3 x %struct.TYPE_6__*]* %16, i64 0, i64 %52
  store %struct.TYPE_6__* %50, %struct.TYPE_6__** %53, align 8
  br label %54

54:                                               ; preds = %30
  %55 = load i32, i32* %19, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %19, align 4
  br label %27

57:                                               ; preds = %27
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %59, align 8
  store %struct.TYPE_6__* %60, %struct.TYPE_6__** %5, align 8
  br label %61

61:                                               ; preds = %113, %57
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %64 = icmp ne %struct.TYPE_6__* %62, %63
  br i1 %64, label %65, label %117

65:                                               ; preds = %61
  store i32 0, i32* %19, align 4
  br label %66

66:                                               ; preds = %109, %65
  %67 = load i32, i32* %19, align 4
  %68 = icmp slt i32 %67, 3
  br i1 %68, label %69, label %112

69:                                               ; preds = %66
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = load i64*, i64** %71, align 8
  %73 = load i32, i32* %19, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i64, i64* %72, i64 %74
  %76 = load i64, i64* %75, align 8
  store i64 %76, i64* %8, align 8
  %77 = load i64, i64* %8, align 8
  %78 = load i32, i32* %19, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds [3 x i64], [3 x i64]* %12, i64 0, i64 %79
  %81 = load i64, i64* %80, align 8
  %82 = icmp slt i64 %77, %81
  br i1 %82, label %83, label %92

83:                                               ; preds = %69
  %84 = load i64, i64* %8, align 8
  %85 = load i32, i32* %19, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds [3 x i64], [3 x i64]* %12, i64 0, i64 %86
  store i64 %84, i64* %87, align 8
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %89 = load i32, i32* %19, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds [3 x %struct.TYPE_6__*], [3 x %struct.TYPE_6__*]* %17, i64 0, i64 %90
  store %struct.TYPE_6__* %88, %struct.TYPE_6__** %91, align 8
  br label %92

92:                                               ; preds = %83, %69
  %93 = load i64, i64* %8, align 8
  %94 = load i32, i32* %19, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds [3 x i64], [3 x i64]* %11, i64 0, i64 %95
  %97 = load i64, i64* %96, align 8
  %98 = icmp sgt i64 %93, %97
  br i1 %98, label %99, label %108

99:                                               ; preds = %92
  %100 = load i64, i64* %8, align 8
  %101 = load i32, i32* %19, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds [3 x i64], [3 x i64]* %11, i64 0, i64 %102
  store i64 %100, i64* %103, align 8
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %105 = load i32, i32* %19, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds [3 x %struct.TYPE_6__*], [3 x %struct.TYPE_6__*]* %16, i64 0, i64 %106
  store %struct.TYPE_6__* %104, %struct.TYPE_6__** %107, align 8
  br label %108

108:                                              ; preds = %99, %92
  br label %109

109:                                              ; preds = %108
  %110 = load i32, i32* %19, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %19, align 4
  br label %66

112:                                              ; preds = %66
  br label %113

113:                                              ; preds = %112
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 1
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** %115, align 8
  store %struct.TYPE_6__* %116, %struct.TYPE_6__** %5, align 8
  br label %61

117:                                              ; preds = %61
  store i32 0, i32* %19, align 4
  %118 = getelementptr inbounds [3 x i64], [3 x i64]* %11, i64 0, i64 1
  %119 = load i64, i64* %118, align 8
  %120 = getelementptr inbounds [3 x i64], [3 x i64]* %12, i64 0, i64 1
  %121 = load i64, i64* %120, align 8
  %122 = sub nsw i64 %119, %121
  %123 = getelementptr inbounds [3 x i64], [3 x i64]* %11, i64 0, i64 0
  %124 = load i64, i64* %123, align 16
  %125 = getelementptr inbounds [3 x i64], [3 x i64]* %12, i64 0, i64 0
  %126 = load i64, i64* %125, align 16
  %127 = sub nsw i64 %124, %126
  %128 = icmp sgt i64 %122, %127
  br i1 %128, label %129, label %130

129:                                              ; preds = %117
  store i32 1, i32* %19, align 4
  br label %130

130:                                              ; preds = %129, %117
  %131 = getelementptr inbounds [3 x i64], [3 x i64]* %11, i64 0, i64 2
  %132 = load i64, i64* %131, align 16
  %133 = getelementptr inbounds [3 x i64], [3 x i64]* %12, i64 0, i64 2
  %134 = load i64, i64* %133, align 16
  %135 = sub nsw i64 %132, %134
  %136 = load i32, i32* %19, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds [3 x i64], [3 x i64]* %11, i64 0, i64 %137
  %139 = load i64, i64* %138, align 8
  %140 = load i32, i32* %19, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds [3 x i64], [3 x i64]* %12, i64 0, i64 %141
  %143 = load i64, i64* %142, align 8
  %144 = sub nsw i64 %139, %143
  %145 = icmp sgt i64 %135, %144
  br i1 %145, label %146, label %147

146:                                              ; preds = %130
  store i32 2, i32* %19, align 4
  br label %147

147:                                              ; preds = %146, %130
  %148 = load i32, i32* %19, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds [3 x i64], [3 x i64]* %12, i64 0, i64 %149
  %151 = load i64, i64* %150, align 8
  %152 = load i32, i32* %19, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds [3 x i64], [3 x i64]* %11, i64 0, i64 %153
  %155 = load i64, i64* %154, align 8
  %156 = icmp sge i64 %151, %155
  br i1 %156, label %157, label %164

157:                                              ; preds = %147
  %158 = load i64*, i64** %4, align 8
  %159 = getelementptr inbounds i64, i64* %158, i64 0
  store i64 0, i64* %159, align 8
  %160 = load i64*, i64** %4, align 8
  %161 = getelementptr inbounds i64, i64* %160, i64 1
  store i64 0, i64* %161, align 8
  %162 = load i64*, i64** %4, align 8
  %163 = getelementptr inbounds i64, i64* %162, i64 2
  store i64 1, i64* %163, align 8
  br label %342

164:                                              ; preds = %147
  store i64 0, i64* %10, align 8
  %165 = load i32, i32* %19, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds [3 x %struct.TYPE_6__*], [3 x %struct.TYPE_6__*]* %17, i64 0, i64 %166
  %168 = load %struct.TYPE_6__*, %struct.TYPE_6__** %167, align 8
  store %struct.TYPE_6__* %168, %struct.TYPE_6__** %6, align 8
  %169 = load i32, i32* %19, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds [3 x %struct.TYPE_6__*], [3 x %struct.TYPE_6__*]* %16, i64 0, i64 %170
  %172 = load %struct.TYPE_6__*, %struct.TYPE_6__** %171, align 8
  store %struct.TYPE_6__* %172, %struct.TYPE_6__** %7, align 8
  %173 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %174 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %173, i32 0, i32 0
  %175 = load i64*, i64** %174, align 8
  %176 = getelementptr inbounds i64, i64* %175, i64 0
  %177 = load i64, i64* %176, align 8
  %178 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %179 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %178, i32 0, i32 0
  %180 = load i64*, i64** %179, align 8
  %181 = getelementptr inbounds i64, i64* %180, i64 0
  %182 = load i64, i64* %181, align 8
  %183 = sub nsw i64 %177, %182
  %184 = getelementptr inbounds [3 x i64], [3 x i64]* %13, i64 0, i64 0
  store i64 %183, i64* %184, align 16
  %185 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %186 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %185, i32 0, i32 0
  %187 = load i64*, i64** %186, align 8
  %188 = getelementptr inbounds i64, i64* %187, i64 1
  %189 = load i64, i64* %188, align 8
  %190 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %191 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %190, i32 0, i32 0
  %192 = load i64*, i64** %191, align 8
  %193 = getelementptr inbounds i64, i64* %192, i64 1
  %194 = load i64, i64* %193, align 8
  %195 = sub nsw i64 %189, %194
  %196 = getelementptr inbounds [3 x i64], [3 x i64]* %13, i64 0, i64 1
  store i64 %195, i64* %196, align 8
  %197 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %198 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %197, i32 0, i32 0
  %199 = load i64*, i64** %198, align 8
  %200 = getelementptr inbounds i64, i64* %199, i64 2
  %201 = load i64, i64* %200, align 8
  %202 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %203 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %202, i32 0, i32 0
  %204 = load i64*, i64** %203, align 8
  %205 = getelementptr inbounds i64, i64* %204, i64 2
  %206 = load i64, i64* %205, align 8
  %207 = sub nsw i64 %201, %206
  %208 = getelementptr inbounds [3 x i64], [3 x i64]* %13, i64 0, i64 2
  store i64 %207, i64* %208, align 16
  %209 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %210 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %209, i32 0, i32 1
  %211 = load %struct.TYPE_6__*, %struct.TYPE_6__** %210, align 8
  store %struct.TYPE_6__* %211, %struct.TYPE_6__** %5, align 8
  br label %212

212:                                              ; preds = %324, %164
  %213 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %214 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %215 = icmp ne %struct.TYPE_6__* %213, %214
  br i1 %215, label %216, label %328

216:                                              ; preds = %212
  %217 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %218 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %217, i32 0, i32 0
  %219 = load i64*, i64** %218, align 8
  %220 = getelementptr inbounds i64, i64* %219, i64 0
  %221 = load i64, i64* %220, align 8
  %222 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %223 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %222, i32 0, i32 0
  %224 = load i64*, i64** %223, align 8
  %225 = getelementptr inbounds i64, i64* %224, i64 0
  %226 = load i64, i64* %225, align 8
  %227 = sub nsw i64 %221, %226
  %228 = getelementptr inbounds [3 x i64], [3 x i64]* %14, i64 0, i64 0
  store i64 %227, i64* %228, align 16
  %229 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %230 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %229, i32 0, i32 0
  %231 = load i64*, i64** %230, align 8
  %232 = getelementptr inbounds i64, i64* %231, i64 1
  %233 = load i64, i64* %232, align 8
  %234 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %235 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %234, i32 0, i32 0
  %236 = load i64*, i64** %235, align 8
  %237 = getelementptr inbounds i64, i64* %236, i64 1
  %238 = load i64, i64* %237, align 8
  %239 = sub nsw i64 %233, %238
  %240 = getelementptr inbounds [3 x i64], [3 x i64]* %14, i64 0, i64 1
  store i64 %239, i64* %240, align 8
  %241 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %242 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %241, i32 0, i32 0
  %243 = load i64*, i64** %242, align 8
  %244 = getelementptr inbounds i64, i64* %243, i64 2
  %245 = load i64, i64* %244, align 8
  %246 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %247 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %246, i32 0, i32 0
  %248 = load i64*, i64** %247, align 8
  %249 = getelementptr inbounds i64, i64* %248, i64 2
  %250 = load i64, i64* %249, align 8
  %251 = sub nsw i64 %245, %250
  %252 = getelementptr inbounds [3 x i64], [3 x i64]* %14, i64 0, i64 2
  store i64 %251, i64* %252, align 16
  %253 = getelementptr inbounds [3 x i64], [3 x i64]* %13, i64 0, i64 1
  %254 = load i64, i64* %253, align 8
  %255 = getelementptr inbounds [3 x i64], [3 x i64]* %14, i64 0, i64 2
  %256 = load i64, i64* %255, align 16
  %257 = mul nsw i64 %254, %256
  %258 = getelementptr inbounds [3 x i64], [3 x i64]* %13, i64 0, i64 2
  %259 = load i64, i64* %258, align 16
  %260 = getelementptr inbounds [3 x i64], [3 x i64]* %14, i64 0, i64 1
  %261 = load i64, i64* %260, align 8
  %262 = mul nsw i64 %259, %261
  %263 = sub nsw i64 %257, %262
  %264 = getelementptr inbounds [3 x i64], [3 x i64]* %15, i64 0, i64 0
  store i64 %263, i64* %264, align 16
  %265 = getelementptr inbounds [3 x i64], [3 x i64]* %13, i64 0, i64 2
  %266 = load i64, i64* %265, align 16
  %267 = getelementptr inbounds [3 x i64], [3 x i64]* %14, i64 0, i64 0
  %268 = load i64, i64* %267, align 16
  %269 = mul nsw i64 %266, %268
  %270 = getelementptr inbounds [3 x i64], [3 x i64]* %13, i64 0, i64 0
  %271 = load i64, i64* %270, align 16
  %272 = getelementptr inbounds [3 x i64], [3 x i64]* %14, i64 0, i64 2
  %273 = load i64, i64* %272, align 16
  %274 = mul nsw i64 %271, %273
  %275 = sub nsw i64 %269, %274
  %276 = getelementptr inbounds [3 x i64], [3 x i64]* %15, i64 0, i64 1
  store i64 %275, i64* %276, align 8
  %277 = getelementptr inbounds [3 x i64], [3 x i64]* %13, i64 0, i64 0
  %278 = load i64, i64* %277, align 16
  %279 = getelementptr inbounds [3 x i64], [3 x i64]* %14, i64 0, i64 1
  %280 = load i64, i64* %279, align 8
  %281 = mul nsw i64 %278, %280
  %282 = getelementptr inbounds [3 x i64], [3 x i64]* %13, i64 0, i64 1
  %283 = load i64, i64* %282, align 8
  %284 = getelementptr inbounds [3 x i64], [3 x i64]* %14, i64 0, i64 0
  %285 = load i64, i64* %284, align 16
  %286 = mul nsw i64 %283, %285
  %287 = sub nsw i64 %281, %286
  %288 = getelementptr inbounds [3 x i64], [3 x i64]* %15, i64 0, i64 2
  store i64 %287, i64* %288, align 16
  %289 = getelementptr inbounds [3 x i64], [3 x i64]* %15, i64 0, i64 0
  %290 = load i64, i64* %289, align 16
  %291 = getelementptr inbounds [3 x i64], [3 x i64]* %15, i64 0, i64 0
  %292 = load i64, i64* %291, align 16
  %293 = mul nsw i64 %290, %292
  %294 = getelementptr inbounds [3 x i64], [3 x i64]* %15, i64 0, i64 1
  %295 = load i64, i64* %294, align 8
  %296 = getelementptr inbounds [3 x i64], [3 x i64]* %15, i64 0, i64 1
  %297 = load i64, i64* %296, align 8
  %298 = mul nsw i64 %295, %297
  %299 = add nsw i64 %293, %298
  %300 = getelementptr inbounds [3 x i64], [3 x i64]* %15, i64 0, i64 2
  %301 = load i64, i64* %300, align 16
  %302 = getelementptr inbounds [3 x i64], [3 x i64]* %15, i64 0, i64 2
  %303 = load i64, i64* %302, align 16
  %304 = mul nsw i64 %301, %303
  %305 = add nsw i64 %299, %304
  store i64 %305, i64* %9, align 8
  %306 = load i64, i64* %9, align 8
  %307 = load i64, i64* %10, align 8
  %308 = icmp sgt i64 %306, %307
  br i1 %308, label %309, label %323

309:                                              ; preds = %216
  %310 = load i64, i64* %9, align 8
  store i64 %310, i64* %10, align 8
  %311 = getelementptr inbounds [3 x i64], [3 x i64]* %15, i64 0, i64 0
  %312 = load i64, i64* %311, align 16
  %313 = load i64*, i64** %4, align 8
  %314 = getelementptr inbounds i64, i64* %313, i64 0
  store i64 %312, i64* %314, align 8
  %315 = getelementptr inbounds [3 x i64], [3 x i64]* %15, i64 0, i64 1
  %316 = load i64, i64* %315, align 8
  %317 = load i64*, i64** %4, align 8
  %318 = getelementptr inbounds i64, i64* %317, i64 1
  store i64 %316, i64* %318, align 8
  %319 = getelementptr inbounds [3 x i64], [3 x i64]* %15, i64 0, i64 2
  %320 = load i64, i64* %319, align 16
  %321 = load i64*, i64** %4, align 8
  %322 = getelementptr inbounds i64, i64* %321, i64 2
  store i64 %320, i64* %322, align 8
  br label %323

323:                                              ; preds = %309, %216
  br label %324

324:                                              ; preds = %323
  %325 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %326 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %325, i32 0, i32 1
  %327 = load %struct.TYPE_6__*, %struct.TYPE_6__** %326, align 8
  store %struct.TYPE_6__* %327, %struct.TYPE_6__** %5, align 8
  br label %212

328:                                              ; preds = %212
  %329 = load i64, i64* %10, align 8
  %330 = icmp sle i64 %329, 0
  br i1 %330, label %331, label %342

331:                                              ; preds = %328
  %332 = load i64*, i64** %4, align 8
  %333 = getelementptr inbounds i64, i64* %332, i64 2
  store i64 0, i64* %333, align 8
  %334 = load i64*, i64** %4, align 8
  %335 = getelementptr inbounds i64, i64* %334, i64 1
  store i64 0, i64* %335, align 8
  %336 = load i64*, i64** %4, align 8
  %337 = getelementptr inbounds i64, i64* %336, i64 0
  store i64 0, i64* %337, align 8
  %338 = load i64*, i64** %4, align 8
  %339 = getelementptr inbounds [3 x i64], [3 x i64]* %13, i64 0, i64 0
  %340 = call i64 @LongAxis(i64* %339)
  %341 = getelementptr inbounds i64, i64* %338, i64 %340
  store i64 1, i64* %341, align 8
  br label %342

342:                                              ; preds = %157, %331, %328
  ret void
}

declare dso_local i64 @LongAxis(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
