; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_aacps.c_hybrid_synthesis.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_aacps.c_hybrid_synthesis.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 (i64***, i64***, i32, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, [38 x [64 x i64]]*, [32 x [2 x i64]]*, i32, i32)* @hybrid_synthesis to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hybrid_synthesis(%struct.TYPE_3__* %0, [38 x [64 x i64]]* %1, [32 x [2 x i64]]* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca [38 x [64 x i64]]*, align 8
  %8 = alloca [32 x [2 x i64]]*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store [38 x [64 x i64]]* %1, [38 x [64 x i64]]** %7, align 8
  store [32 x [2 x i64]]* %2, [32 x [2 x i64]]** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load i32, i32* %9, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %251

15:                                               ; preds = %5
  store i32 0, i32* %12, align 4
  br label %16

16:                                               ; preds = %237, %15
  %17 = load i32, i32* %12, align 4
  %18 = load i32, i32* %10, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %240

20:                                               ; preds = %16
  %21 = load [38 x [64 x i64]]*, [38 x [64 x i64]]** %7, align 8
  %22 = getelementptr inbounds [38 x [64 x i64]], [38 x [64 x i64]]* %21, i64 0
  %23 = load i32, i32* %12, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [38 x [64 x i64]], [38 x [64 x i64]]* %22, i64 0, i64 %24
  %26 = getelementptr inbounds [64 x i64], [64 x i64]* %25, i64 0, i64 0
  %27 = call i32 @memset(i64* %26, i32 0, i32 40)
  %28 = load [38 x [64 x i64]]*, [38 x [64 x i64]]** %7, align 8
  %29 = getelementptr inbounds [38 x [64 x i64]], [38 x [64 x i64]]* %28, i64 1
  %30 = load i32, i32* %12, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [38 x [64 x i64]], [38 x [64 x i64]]* %29, i64 0, i64 %31
  %33 = getelementptr inbounds [64 x i64], [64 x i64]* %32, i64 0, i64 0
  %34 = call i32 @memset(i64* %33, i32 0, i32 40)
  store i32 0, i32* %11, align 4
  br label %35

35:                                               ; preds = %73, %20
  %36 = load i32, i32* %11, align 4
  %37 = icmp slt i32 %36, 12
  br i1 %37, label %38, label %76

38:                                               ; preds = %35
  %39 = load [32 x [2 x i64]]*, [32 x [2 x i64]]** %8, align 8
  %40 = load i32, i32* %11, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [32 x [2 x i64]], [32 x [2 x i64]]* %39, i64 %41
  %43 = load i32, i32* %12, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [32 x [2 x i64]], [32 x [2 x i64]]* %42, i64 0, i64 %44
  %46 = getelementptr inbounds [2 x i64], [2 x i64]* %45, i64 0, i64 0
  %47 = load i64, i64* %46, align 8
  %48 = load [38 x [64 x i64]]*, [38 x [64 x i64]]** %7, align 8
  %49 = getelementptr inbounds [38 x [64 x i64]], [38 x [64 x i64]]* %48, i64 0
  %50 = load i32, i32* %12, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [38 x [64 x i64]], [38 x [64 x i64]]* %49, i64 0, i64 %51
  %53 = getelementptr inbounds [64 x i64], [64 x i64]* %52, i64 0, i64 0
  %54 = load i64, i64* %53, align 8
  %55 = add nsw i64 %54, %47
  store i64 %55, i64* %53, align 8
  %56 = load [32 x [2 x i64]]*, [32 x [2 x i64]]** %8, align 8
  %57 = load i32, i32* %11, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [32 x [2 x i64]], [32 x [2 x i64]]* %56, i64 %58
  %60 = load i32, i32* %12, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [32 x [2 x i64]], [32 x [2 x i64]]* %59, i64 0, i64 %61
  %63 = getelementptr inbounds [2 x i64], [2 x i64]* %62, i64 0, i64 1
  %64 = load i64, i64* %63, align 8
  %65 = load [38 x [64 x i64]]*, [38 x [64 x i64]]** %7, align 8
  %66 = getelementptr inbounds [38 x [64 x i64]], [38 x [64 x i64]]* %65, i64 1
  %67 = load i32, i32* %12, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [38 x [64 x i64]], [38 x [64 x i64]]* %66, i64 0, i64 %68
  %70 = getelementptr inbounds [64 x i64], [64 x i64]* %69, i64 0, i64 0
  %71 = load i64, i64* %70, align 8
  %72 = add nsw i64 %71, %64
  store i64 %72, i64* %70, align 8
  br label %73

73:                                               ; preds = %38
  %74 = load i32, i32* %11, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %11, align 4
  br label %35

76:                                               ; preds = %35
  store i32 0, i32* %11, align 4
  br label %77

77:                                               ; preds = %117, %76
  %78 = load i32, i32* %11, align 4
  %79 = icmp slt i32 %78, 8
  br i1 %79, label %80, label %120

80:                                               ; preds = %77
  %81 = load [32 x [2 x i64]]*, [32 x [2 x i64]]** %8, align 8
  %82 = load i32, i32* %11, align 4
  %83 = add nsw i32 12, %82
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds [32 x [2 x i64]], [32 x [2 x i64]]* %81, i64 %84
  %86 = load i32, i32* %12, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds [32 x [2 x i64]], [32 x [2 x i64]]* %85, i64 0, i64 %87
  %89 = getelementptr inbounds [2 x i64], [2 x i64]* %88, i64 0, i64 0
  %90 = load i64, i64* %89, align 8
  %91 = load [38 x [64 x i64]]*, [38 x [64 x i64]]** %7, align 8
  %92 = getelementptr inbounds [38 x [64 x i64]], [38 x [64 x i64]]* %91, i64 0
  %93 = load i32, i32* %12, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds [38 x [64 x i64]], [38 x [64 x i64]]* %92, i64 0, i64 %94
  %96 = getelementptr inbounds [64 x i64], [64 x i64]* %95, i64 0, i64 1
  %97 = load i64, i64* %96, align 8
  %98 = add nsw i64 %97, %90
  store i64 %98, i64* %96, align 8
  %99 = load [32 x [2 x i64]]*, [32 x [2 x i64]]** %8, align 8
  %100 = load i32, i32* %11, align 4
  %101 = add nsw i32 12, %100
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds [32 x [2 x i64]], [32 x [2 x i64]]* %99, i64 %102
  %104 = load i32, i32* %12, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds [32 x [2 x i64]], [32 x [2 x i64]]* %103, i64 0, i64 %105
  %107 = getelementptr inbounds [2 x i64], [2 x i64]* %106, i64 0, i64 1
  %108 = load i64, i64* %107, align 8
  %109 = load [38 x [64 x i64]]*, [38 x [64 x i64]]** %7, align 8
  %110 = getelementptr inbounds [38 x [64 x i64]], [38 x [64 x i64]]* %109, i64 1
  %111 = load i32, i32* %12, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds [38 x [64 x i64]], [38 x [64 x i64]]* %110, i64 0, i64 %112
  %114 = getelementptr inbounds [64 x i64], [64 x i64]* %113, i64 0, i64 1
  %115 = load i64, i64* %114, align 8
  %116 = add nsw i64 %115, %108
  store i64 %116, i64* %114, align 8
  br label %117

117:                                              ; preds = %80
  %118 = load i32, i32* %11, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %11, align 4
  br label %77

120:                                              ; preds = %77
  store i32 0, i32* %11, align 4
  br label %121

121:                                              ; preds = %233, %120
  %122 = load i32, i32* %11, align 4
  %123 = icmp slt i32 %122, 4
  br i1 %123, label %124, label %236

124:                                              ; preds = %121
  %125 = load [32 x [2 x i64]]*, [32 x [2 x i64]]** %8, align 8
  %126 = load i32, i32* %11, align 4
  %127 = add nsw i32 20, %126
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds [32 x [2 x i64]], [32 x [2 x i64]]* %125, i64 %128
  %130 = load i32, i32* %12, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds [32 x [2 x i64]], [32 x [2 x i64]]* %129, i64 0, i64 %131
  %133 = getelementptr inbounds [2 x i64], [2 x i64]* %132, i64 0, i64 0
  %134 = load i64, i64* %133, align 8
  %135 = load [38 x [64 x i64]]*, [38 x [64 x i64]]** %7, align 8
  %136 = getelementptr inbounds [38 x [64 x i64]], [38 x [64 x i64]]* %135, i64 0
  %137 = load i32, i32* %12, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds [38 x [64 x i64]], [38 x [64 x i64]]* %136, i64 0, i64 %138
  %140 = getelementptr inbounds [64 x i64], [64 x i64]* %139, i64 0, i64 2
  %141 = load i64, i64* %140, align 8
  %142 = add nsw i64 %141, %134
  store i64 %142, i64* %140, align 8
  %143 = load [32 x [2 x i64]]*, [32 x [2 x i64]]** %8, align 8
  %144 = load i32, i32* %11, align 4
  %145 = add nsw i32 20, %144
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds [32 x [2 x i64]], [32 x [2 x i64]]* %143, i64 %146
  %148 = load i32, i32* %12, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds [32 x [2 x i64]], [32 x [2 x i64]]* %147, i64 0, i64 %149
  %151 = getelementptr inbounds [2 x i64], [2 x i64]* %150, i64 0, i64 1
  %152 = load i64, i64* %151, align 8
  %153 = load [38 x [64 x i64]]*, [38 x [64 x i64]]** %7, align 8
  %154 = getelementptr inbounds [38 x [64 x i64]], [38 x [64 x i64]]* %153, i64 1
  %155 = load i32, i32* %12, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds [38 x [64 x i64]], [38 x [64 x i64]]* %154, i64 0, i64 %156
  %158 = getelementptr inbounds [64 x i64], [64 x i64]* %157, i64 0, i64 2
  %159 = load i64, i64* %158, align 8
  %160 = add nsw i64 %159, %152
  store i64 %160, i64* %158, align 8
  %161 = load [32 x [2 x i64]]*, [32 x [2 x i64]]** %8, align 8
  %162 = load i32, i32* %11, align 4
  %163 = add nsw i32 24, %162
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds [32 x [2 x i64]], [32 x [2 x i64]]* %161, i64 %164
  %166 = load i32, i32* %12, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds [32 x [2 x i64]], [32 x [2 x i64]]* %165, i64 0, i64 %167
  %169 = getelementptr inbounds [2 x i64], [2 x i64]* %168, i64 0, i64 0
  %170 = load i64, i64* %169, align 8
  %171 = load [38 x [64 x i64]]*, [38 x [64 x i64]]** %7, align 8
  %172 = getelementptr inbounds [38 x [64 x i64]], [38 x [64 x i64]]* %171, i64 0
  %173 = load i32, i32* %12, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds [38 x [64 x i64]], [38 x [64 x i64]]* %172, i64 0, i64 %174
  %176 = getelementptr inbounds [64 x i64], [64 x i64]* %175, i64 0, i64 3
  %177 = load i64, i64* %176, align 8
  %178 = add nsw i64 %177, %170
  store i64 %178, i64* %176, align 8
  %179 = load [32 x [2 x i64]]*, [32 x [2 x i64]]** %8, align 8
  %180 = load i32, i32* %11, align 4
  %181 = add nsw i32 24, %180
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds [32 x [2 x i64]], [32 x [2 x i64]]* %179, i64 %182
  %184 = load i32, i32* %12, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds [32 x [2 x i64]], [32 x [2 x i64]]* %183, i64 0, i64 %185
  %187 = getelementptr inbounds [2 x i64], [2 x i64]* %186, i64 0, i64 1
  %188 = load i64, i64* %187, align 8
  %189 = load [38 x [64 x i64]]*, [38 x [64 x i64]]** %7, align 8
  %190 = getelementptr inbounds [38 x [64 x i64]], [38 x [64 x i64]]* %189, i64 1
  %191 = load i32, i32* %12, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds [38 x [64 x i64]], [38 x [64 x i64]]* %190, i64 0, i64 %192
  %194 = getelementptr inbounds [64 x i64], [64 x i64]* %193, i64 0, i64 3
  %195 = load i64, i64* %194, align 8
  %196 = add nsw i64 %195, %188
  store i64 %196, i64* %194, align 8
  %197 = load [32 x [2 x i64]]*, [32 x [2 x i64]]** %8, align 8
  %198 = load i32, i32* %11, align 4
  %199 = add nsw i32 28, %198
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds [32 x [2 x i64]], [32 x [2 x i64]]* %197, i64 %200
  %202 = load i32, i32* %12, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds [32 x [2 x i64]], [32 x [2 x i64]]* %201, i64 0, i64 %203
  %205 = getelementptr inbounds [2 x i64], [2 x i64]* %204, i64 0, i64 0
  %206 = load i64, i64* %205, align 8
  %207 = load [38 x [64 x i64]]*, [38 x [64 x i64]]** %7, align 8
  %208 = getelementptr inbounds [38 x [64 x i64]], [38 x [64 x i64]]* %207, i64 0
  %209 = load i32, i32* %12, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds [38 x [64 x i64]], [38 x [64 x i64]]* %208, i64 0, i64 %210
  %212 = getelementptr inbounds [64 x i64], [64 x i64]* %211, i64 0, i64 4
  %213 = load i64, i64* %212, align 8
  %214 = add nsw i64 %213, %206
  store i64 %214, i64* %212, align 8
  %215 = load [32 x [2 x i64]]*, [32 x [2 x i64]]** %8, align 8
  %216 = load i32, i32* %11, align 4
  %217 = add nsw i32 28, %216
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds [32 x [2 x i64]], [32 x [2 x i64]]* %215, i64 %218
  %220 = load i32, i32* %12, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds [32 x [2 x i64]], [32 x [2 x i64]]* %219, i64 0, i64 %221
  %223 = getelementptr inbounds [2 x i64], [2 x i64]* %222, i64 0, i64 1
  %224 = load i64, i64* %223, align 8
  %225 = load [38 x [64 x i64]]*, [38 x [64 x i64]]** %7, align 8
  %226 = getelementptr inbounds [38 x [64 x i64]], [38 x [64 x i64]]* %225, i64 1
  %227 = load i32, i32* %12, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds [38 x [64 x i64]], [38 x [64 x i64]]* %226, i64 0, i64 %228
  %230 = getelementptr inbounds [64 x i64], [64 x i64]* %229, i64 0, i64 4
  %231 = load i64, i64* %230, align 8
  %232 = add nsw i64 %231, %224
  store i64 %232, i64* %230, align 8
  br label %233

233:                                              ; preds = %124
  %234 = load i32, i32* %11, align 4
  %235 = add nsw i32 %234, 1
  store i32 %235, i32* %11, align 4
  br label %121

236:                                              ; preds = %121
  br label %237

237:                                              ; preds = %236
  %238 = load i32, i32* %12, align 4
  %239 = add nsw i32 %238, 1
  store i32 %239, i32* %12, align 4
  br label %16

240:                                              ; preds = %16
  %241 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %242 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %241, i32 0, i32 0
  %243 = load i32 (i64***, i64***, i32, i32)*, i32 (i64***, i64***, i32, i32)** %242, align 8
  %244 = load [38 x [64 x i64]]*, [38 x [64 x i64]]** %7, align 8
  %245 = bitcast [38 x [64 x i64]]* %244 to i64***
  %246 = load [32 x [2 x i64]]*, [32 x [2 x i64]]** %8, align 8
  %247 = getelementptr inbounds [32 x [2 x i64]], [32 x [2 x i64]]* %246, i64 27
  %248 = bitcast [32 x [2 x i64]]* %247 to i64***
  %249 = load i32, i32* %10, align 4
  %250 = call i32 %243(i64*** %245, i64*** %248, i32 5, i32 %249)
  br label %461

251:                                              ; preds = %5
  store i32 0, i32* %12, align 4
  br label %252

252:                                              ; preds = %447, %251
  %253 = load i32, i32* %12, align 4
  %254 = load i32, i32* %10, align 4
  %255 = icmp slt i32 %253, %254
  br i1 %255, label %256, label %450

256:                                              ; preds = %252
  %257 = load [32 x [2 x i64]]*, [32 x [2 x i64]]** %8, align 8
  %258 = getelementptr inbounds [32 x [2 x i64]], [32 x [2 x i64]]* %257, i64 0
  %259 = load i32, i32* %12, align 4
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds [32 x [2 x i64]], [32 x [2 x i64]]* %258, i64 0, i64 %260
  %262 = getelementptr inbounds [2 x i64], [2 x i64]* %261, i64 0, i64 0
  %263 = load i64, i64* %262, align 8
  %264 = load [32 x [2 x i64]]*, [32 x [2 x i64]]** %8, align 8
  %265 = getelementptr inbounds [32 x [2 x i64]], [32 x [2 x i64]]* %264, i64 1
  %266 = load i32, i32* %12, align 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds [32 x [2 x i64]], [32 x [2 x i64]]* %265, i64 0, i64 %267
  %269 = getelementptr inbounds [2 x i64], [2 x i64]* %268, i64 0, i64 0
  %270 = load i64, i64* %269, align 8
  %271 = add nsw i64 %263, %270
  %272 = load [32 x [2 x i64]]*, [32 x [2 x i64]]** %8, align 8
  %273 = getelementptr inbounds [32 x [2 x i64]], [32 x [2 x i64]]* %272, i64 2
  %274 = load i32, i32* %12, align 4
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds [32 x [2 x i64]], [32 x [2 x i64]]* %273, i64 0, i64 %275
  %277 = getelementptr inbounds [2 x i64], [2 x i64]* %276, i64 0, i64 0
  %278 = load i64, i64* %277, align 8
  %279 = add nsw i64 %271, %278
  %280 = load [32 x [2 x i64]]*, [32 x [2 x i64]]** %8, align 8
  %281 = getelementptr inbounds [32 x [2 x i64]], [32 x [2 x i64]]* %280, i64 3
  %282 = load i32, i32* %12, align 4
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds [32 x [2 x i64]], [32 x [2 x i64]]* %281, i64 0, i64 %283
  %285 = getelementptr inbounds [2 x i64], [2 x i64]* %284, i64 0, i64 0
  %286 = load i64, i64* %285, align 8
  %287 = add nsw i64 %279, %286
  %288 = load [32 x [2 x i64]]*, [32 x [2 x i64]]** %8, align 8
  %289 = getelementptr inbounds [32 x [2 x i64]], [32 x [2 x i64]]* %288, i64 4
  %290 = load i32, i32* %12, align 4
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds [32 x [2 x i64]], [32 x [2 x i64]]* %289, i64 0, i64 %291
  %293 = getelementptr inbounds [2 x i64], [2 x i64]* %292, i64 0, i64 0
  %294 = load i64, i64* %293, align 8
  %295 = add nsw i64 %287, %294
  %296 = load [32 x [2 x i64]]*, [32 x [2 x i64]]** %8, align 8
  %297 = getelementptr inbounds [32 x [2 x i64]], [32 x [2 x i64]]* %296, i64 5
  %298 = load i32, i32* %12, align 4
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds [32 x [2 x i64]], [32 x [2 x i64]]* %297, i64 0, i64 %299
  %301 = getelementptr inbounds [2 x i64], [2 x i64]* %300, i64 0, i64 0
  %302 = load i64, i64* %301, align 8
  %303 = add nsw i64 %295, %302
  %304 = load [38 x [64 x i64]]*, [38 x [64 x i64]]** %7, align 8
  %305 = getelementptr inbounds [38 x [64 x i64]], [38 x [64 x i64]]* %304, i64 0
  %306 = load i32, i32* %12, align 4
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds [38 x [64 x i64]], [38 x [64 x i64]]* %305, i64 0, i64 %307
  %309 = getelementptr inbounds [64 x i64], [64 x i64]* %308, i64 0, i64 0
  store i64 %303, i64* %309, align 8
  %310 = load [32 x [2 x i64]]*, [32 x [2 x i64]]** %8, align 8
  %311 = getelementptr inbounds [32 x [2 x i64]], [32 x [2 x i64]]* %310, i64 0
  %312 = load i32, i32* %12, align 4
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds [32 x [2 x i64]], [32 x [2 x i64]]* %311, i64 0, i64 %313
  %315 = getelementptr inbounds [2 x i64], [2 x i64]* %314, i64 0, i64 1
  %316 = load i64, i64* %315, align 8
  %317 = load [32 x [2 x i64]]*, [32 x [2 x i64]]** %8, align 8
  %318 = getelementptr inbounds [32 x [2 x i64]], [32 x [2 x i64]]* %317, i64 1
  %319 = load i32, i32* %12, align 4
  %320 = sext i32 %319 to i64
  %321 = getelementptr inbounds [32 x [2 x i64]], [32 x [2 x i64]]* %318, i64 0, i64 %320
  %322 = getelementptr inbounds [2 x i64], [2 x i64]* %321, i64 0, i64 1
  %323 = load i64, i64* %322, align 8
  %324 = add nsw i64 %316, %323
  %325 = load [32 x [2 x i64]]*, [32 x [2 x i64]]** %8, align 8
  %326 = getelementptr inbounds [32 x [2 x i64]], [32 x [2 x i64]]* %325, i64 2
  %327 = load i32, i32* %12, align 4
  %328 = sext i32 %327 to i64
  %329 = getelementptr inbounds [32 x [2 x i64]], [32 x [2 x i64]]* %326, i64 0, i64 %328
  %330 = getelementptr inbounds [2 x i64], [2 x i64]* %329, i64 0, i64 1
  %331 = load i64, i64* %330, align 8
  %332 = add nsw i64 %324, %331
  %333 = load [32 x [2 x i64]]*, [32 x [2 x i64]]** %8, align 8
  %334 = getelementptr inbounds [32 x [2 x i64]], [32 x [2 x i64]]* %333, i64 3
  %335 = load i32, i32* %12, align 4
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds [32 x [2 x i64]], [32 x [2 x i64]]* %334, i64 0, i64 %336
  %338 = getelementptr inbounds [2 x i64], [2 x i64]* %337, i64 0, i64 1
  %339 = load i64, i64* %338, align 8
  %340 = add nsw i64 %332, %339
  %341 = load [32 x [2 x i64]]*, [32 x [2 x i64]]** %8, align 8
  %342 = getelementptr inbounds [32 x [2 x i64]], [32 x [2 x i64]]* %341, i64 4
  %343 = load i32, i32* %12, align 4
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds [32 x [2 x i64]], [32 x [2 x i64]]* %342, i64 0, i64 %344
  %346 = getelementptr inbounds [2 x i64], [2 x i64]* %345, i64 0, i64 1
  %347 = load i64, i64* %346, align 8
  %348 = add nsw i64 %340, %347
  %349 = load [32 x [2 x i64]]*, [32 x [2 x i64]]** %8, align 8
  %350 = getelementptr inbounds [32 x [2 x i64]], [32 x [2 x i64]]* %349, i64 5
  %351 = load i32, i32* %12, align 4
  %352 = sext i32 %351 to i64
  %353 = getelementptr inbounds [32 x [2 x i64]], [32 x [2 x i64]]* %350, i64 0, i64 %352
  %354 = getelementptr inbounds [2 x i64], [2 x i64]* %353, i64 0, i64 1
  %355 = load i64, i64* %354, align 8
  %356 = add nsw i64 %348, %355
  %357 = load [38 x [64 x i64]]*, [38 x [64 x i64]]** %7, align 8
  %358 = getelementptr inbounds [38 x [64 x i64]], [38 x [64 x i64]]* %357, i64 1
  %359 = load i32, i32* %12, align 4
  %360 = sext i32 %359 to i64
  %361 = getelementptr inbounds [38 x [64 x i64]], [38 x [64 x i64]]* %358, i64 0, i64 %360
  %362 = getelementptr inbounds [64 x i64], [64 x i64]* %361, i64 0, i64 0
  store i64 %356, i64* %362, align 8
  %363 = load [32 x [2 x i64]]*, [32 x [2 x i64]]** %8, align 8
  %364 = getelementptr inbounds [32 x [2 x i64]], [32 x [2 x i64]]* %363, i64 6
  %365 = load i32, i32* %12, align 4
  %366 = sext i32 %365 to i64
  %367 = getelementptr inbounds [32 x [2 x i64]], [32 x [2 x i64]]* %364, i64 0, i64 %366
  %368 = getelementptr inbounds [2 x i64], [2 x i64]* %367, i64 0, i64 0
  %369 = load i64, i64* %368, align 8
  %370 = load [32 x [2 x i64]]*, [32 x [2 x i64]]** %8, align 8
  %371 = getelementptr inbounds [32 x [2 x i64]], [32 x [2 x i64]]* %370, i64 7
  %372 = load i32, i32* %12, align 4
  %373 = sext i32 %372 to i64
  %374 = getelementptr inbounds [32 x [2 x i64]], [32 x [2 x i64]]* %371, i64 0, i64 %373
  %375 = getelementptr inbounds [2 x i64], [2 x i64]* %374, i64 0, i64 0
  %376 = load i64, i64* %375, align 8
  %377 = add nsw i64 %369, %376
  %378 = load [38 x [64 x i64]]*, [38 x [64 x i64]]** %7, align 8
  %379 = getelementptr inbounds [38 x [64 x i64]], [38 x [64 x i64]]* %378, i64 0
  %380 = load i32, i32* %12, align 4
  %381 = sext i32 %380 to i64
  %382 = getelementptr inbounds [38 x [64 x i64]], [38 x [64 x i64]]* %379, i64 0, i64 %381
  %383 = getelementptr inbounds [64 x i64], [64 x i64]* %382, i64 0, i64 1
  store i64 %377, i64* %383, align 8
  %384 = load [32 x [2 x i64]]*, [32 x [2 x i64]]** %8, align 8
  %385 = getelementptr inbounds [32 x [2 x i64]], [32 x [2 x i64]]* %384, i64 6
  %386 = load i32, i32* %12, align 4
  %387 = sext i32 %386 to i64
  %388 = getelementptr inbounds [32 x [2 x i64]], [32 x [2 x i64]]* %385, i64 0, i64 %387
  %389 = getelementptr inbounds [2 x i64], [2 x i64]* %388, i64 0, i64 1
  %390 = load i64, i64* %389, align 8
  %391 = load [32 x [2 x i64]]*, [32 x [2 x i64]]** %8, align 8
  %392 = getelementptr inbounds [32 x [2 x i64]], [32 x [2 x i64]]* %391, i64 7
  %393 = load i32, i32* %12, align 4
  %394 = sext i32 %393 to i64
  %395 = getelementptr inbounds [32 x [2 x i64]], [32 x [2 x i64]]* %392, i64 0, i64 %394
  %396 = getelementptr inbounds [2 x i64], [2 x i64]* %395, i64 0, i64 1
  %397 = load i64, i64* %396, align 8
  %398 = add nsw i64 %390, %397
  %399 = load [38 x [64 x i64]]*, [38 x [64 x i64]]** %7, align 8
  %400 = getelementptr inbounds [38 x [64 x i64]], [38 x [64 x i64]]* %399, i64 1
  %401 = load i32, i32* %12, align 4
  %402 = sext i32 %401 to i64
  %403 = getelementptr inbounds [38 x [64 x i64]], [38 x [64 x i64]]* %400, i64 0, i64 %402
  %404 = getelementptr inbounds [64 x i64], [64 x i64]* %403, i64 0, i64 1
  store i64 %398, i64* %404, align 8
  %405 = load [32 x [2 x i64]]*, [32 x [2 x i64]]** %8, align 8
  %406 = getelementptr inbounds [32 x [2 x i64]], [32 x [2 x i64]]* %405, i64 8
  %407 = load i32, i32* %12, align 4
  %408 = sext i32 %407 to i64
  %409 = getelementptr inbounds [32 x [2 x i64]], [32 x [2 x i64]]* %406, i64 0, i64 %408
  %410 = getelementptr inbounds [2 x i64], [2 x i64]* %409, i64 0, i64 0
  %411 = load i64, i64* %410, align 8
  %412 = load [32 x [2 x i64]]*, [32 x [2 x i64]]** %8, align 8
  %413 = getelementptr inbounds [32 x [2 x i64]], [32 x [2 x i64]]* %412, i64 9
  %414 = load i32, i32* %12, align 4
  %415 = sext i32 %414 to i64
  %416 = getelementptr inbounds [32 x [2 x i64]], [32 x [2 x i64]]* %413, i64 0, i64 %415
  %417 = getelementptr inbounds [2 x i64], [2 x i64]* %416, i64 0, i64 0
  %418 = load i64, i64* %417, align 8
  %419 = add nsw i64 %411, %418
  %420 = load [38 x [64 x i64]]*, [38 x [64 x i64]]** %7, align 8
  %421 = getelementptr inbounds [38 x [64 x i64]], [38 x [64 x i64]]* %420, i64 0
  %422 = load i32, i32* %12, align 4
  %423 = sext i32 %422 to i64
  %424 = getelementptr inbounds [38 x [64 x i64]], [38 x [64 x i64]]* %421, i64 0, i64 %423
  %425 = getelementptr inbounds [64 x i64], [64 x i64]* %424, i64 0, i64 2
  store i64 %419, i64* %425, align 8
  %426 = load [32 x [2 x i64]]*, [32 x [2 x i64]]** %8, align 8
  %427 = getelementptr inbounds [32 x [2 x i64]], [32 x [2 x i64]]* %426, i64 8
  %428 = load i32, i32* %12, align 4
  %429 = sext i32 %428 to i64
  %430 = getelementptr inbounds [32 x [2 x i64]], [32 x [2 x i64]]* %427, i64 0, i64 %429
  %431 = getelementptr inbounds [2 x i64], [2 x i64]* %430, i64 0, i64 1
  %432 = load i64, i64* %431, align 8
  %433 = load [32 x [2 x i64]]*, [32 x [2 x i64]]** %8, align 8
  %434 = getelementptr inbounds [32 x [2 x i64]], [32 x [2 x i64]]* %433, i64 9
  %435 = load i32, i32* %12, align 4
  %436 = sext i32 %435 to i64
  %437 = getelementptr inbounds [32 x [2 x i64]], [32 x [2 x i64]]* %434, i64 0, i64 %436
  %438 = getelementptr inbounds [2 x i64], [2 x i64]* %437, i64 0, i64 1
  %439 = load i64, i64* %438, align 8
  %440 = add nsw i64 %432, %439
  %441 = load [38 x [64 x i64]]*, [38 x [64 x i64]]** %7, align 8
  %442 = getelementptr inbounds [38 x [64 x i64]], [38 x [64 x i64]]* %441, i64 1
  %443 = load i32, i32* %12, align 4
  %444 = sext i32 %443 to i64
  %445 = getelementptr inbounds [38 x [64 x i64]], [38 x [64 x i64]]* %442, i64 0, i64 %444
  %446 = getelementptr inbounds [64 x i64], [64 x i64]* %445, i64 0, i64 2
  store i64 %440, i64* %446, align 8
  br label %447

447:                                              ; preds = %256
  %448 = load i32, i32* %12, align 4
  %449 = add nsw i32 %448, 1
  store i32 %449, i32* %12, align 4
  br label %252

450:                                              ; preds = %252
  %451 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %452 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %451, i32 0, i32 0
  %453 = load i32 (i64***, i64***, i32, i32)*, i32 (i64***, i64***, i32, i32)** %452, align 8
  %454 = load [38 x [64 x i64]]*, [38 x [64 x i64]]** %7, align 8
  %455 = bitcast [38 x [64 x i64]]* %454 to i64***
  %456 = load [32 x [2 x i64]]*, [32 x [2 x i64]]** %8, align 8
  %457 = getelementptr inbounds [32 x [2 x i64]], [32 x [2 x i64]]* %456, i64 7
  %458 = bitcast [32 x [2 x i64]]* %457 to i64***
  %459 = load i32, i32* %10, align 4
  %460 = call i32 %453(i64*** %455, i64*** %458, i32 3, i32 %459)
  br label %461

461:                                              ; preds = %450, %240
  ret void
}

declare dso_local i32 @memset(i64*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
