; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_gru_layer.c_forward_gru_layer.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_gru_layer.c_forward_gru_layer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, %struct.TYPE_9__*, %struct.TYPE_9__*, %struct.TYPE_9__*, %struct.TYPE_9__*, %struct.TYPE_9__*, %struct.TYPE_9__* }
%struct.TYPE_8__ = type { i32, i64 }

@LOGISTIC = common dso_local global i32 0, align 4
@TANH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @forward_gru_layer(%struct.TYPE_9__* byval(%struct.TYPE_9__) align 8 %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_8__, align 8
  %5 = alloca %struct.TYPE_8__, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_9__, align 8
  %8 = alloca %struct.TYPE_9__, align 8
  %9 = alloca %struct.TYPE_9__, align 8
  %10 = alloca %struct.TYPE_9__, align 8
  %11 = alloca %struct.TYPE_9__, align 8
  %12 = alloca %struct.TYPE_9__, align 8
  %13 = bitcast %struct.TYPE_8__* %4 to { i32, i64 }*
  %14 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %13, i32 0, i32 0
  store i32 %1, i32* %14, align 8
  %15 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %13, i32 0, i32 1
  store i64 %2, i64* %15, align 8
  %16 = bitcast %struct.TYPE_8__* %5 to i8*
  %17 = bitcast %struct.TYPE_8__* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %16, i8* align 8 %17, i64 16, i1 false)
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 1
  store i64 %19, i64* %20, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 18
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %23 = bitcast %struct.TYPE_9__* %7 to i8*
  %24 = bitcast %struct.TYPE_9__* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %23, i8* align 8 %24, i64 112, i1 false)
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 17
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %25, align 8
  %27 = bitcast %struct.TYPE_9__* %8 to i8*
  %28 = bitcast %struct.TYPE_9__* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %27, i8* align 8 %28, i64 112, i1 false)
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 16
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %29, align 8
  %31 = bitcast %struct.TYPE_9__* %9 to i8*
  %32 = bitcast %struct.TYPE_9__* %30 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %31, i8* align 8 %32, i64 112, i1 false)
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 15
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %33, align 8
  %35 = bitcast %struct.TYPE_9__* %10 to i8*
  %36 = bitcast %struct.TYPE_9__* %34 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %35, i8* align 8 %36, i64 112, i1 false)
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 14
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %37, align 8
  %39 = bitcast %struct.TYPE_9__* %11 to i8*
  %40 = bitcast %struct.TYPE_9__* %38 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %39, i8* align 8 %40, i64 112, i1 false)
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 13
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %41, align 8
  %43 = bitcast %struct.TYPE_9__* %12 to i8*
  %44 = bitcast %struct.TYPE_9__* %42 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %43, i8* align 8 %44, i64 112, i1 false)
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = mul nsw i32 %46, %48
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = mul nsw i32 %49, %51
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 12
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @fill_cpu(i32 %52, i32 0, i32 %54, i32 1)
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = mul nsw i32 %57, %59
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = mul nsw i32 %60, %62
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 12
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @fill_cpu(i32 %63, i32 0, i32 %65, i32 1)
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = mul nsw i32 %68, %70
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = mul nsw i32 %71, %73
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 12
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @fill_cpu(i32 %74, i32 0, i32 %76, i32 1)
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = mul nsw i32 %79, %81
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = mul nsw i32 %82, %84
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 12
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @fill_cpu(i32 %85, i32 0, i32 %87, i32 1)
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = mul nsw i32 %90, %92
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = mul nsw i32 %93, %95
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 12
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @fill_cpu(i32 %96, i32 0, i32 %98, i32 1)
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = mul nsw i32 %101, %103
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = mul nsw i32 %104, %106
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 12
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @fill_cpu(i32 %107, i32 0, i32 %109, i32 1)
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %136

114:                                              ; preds = %3
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = mul nsw i32 %116, %118
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = mul nsw i32 %119, %121
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 12
  %124 = load i32, i32* %123, align 8
  %125 = call i32 @fill_cpu(i32 %122, i32 0, i32 %124, i32 1)
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = mul nsw i32 %127, %129
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 3
  %132 = load i32, i32* %131, align 4
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 4
  %134 = load i32, i32* %133, align 8
  %135 = call i32 @copy_cpu(i32 %130, i32 %132, i32 1, i32 %134, i32 1)
  br label %136

136:                                              ; preds = %114, %3
  store i32 0, i32* %6, align 4
  br label %137

137:                                              ; preds = %356, %136
  %138 = load i32, i32* %6, align 4
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 2
  %140 = load i32, i32* %139, align 8
  %141 = icmp slt i32 %138, %140
  br i1 %141, label %142, label %359

142:                                              ; preds = %137
  %143 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 3
  %144 = load i32, i32* %143, align 4
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  store i32 %144, i32* %145, align 8
  %146 = bitcast %struct.TYPE_8__* %5 to { i32, i64 }*
  %147 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %146, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = call i32 @forward_connected_layer(%struct.TYPE_9__* byval(%struct.TYPE_9__) align 8 %10, i32 %148, i64 %150)
  %152 = bitcast %struct.TYPE_8__* %5 to { i32, i64 }*
  %153 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %152, i32 0, i32 1
  %156 = load i64, i64* %155, align 8
  %157 = call i32 @forward_connected_layer(%struct.TYPE_9__* byval(%struct.TYPE_9__) align 8 %11, i32 %154, i64 %156)
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  store i32 %159, i32* %160, align 8
  %161 = bitcast %struct.TYPE_8__* %5 to { i32, i64 }*
  %162 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %161, i32 0, i32 1
  %165 = load i64, i64* %164, align 8
  %166 = call i32 @forward_connected_layer(%struct.TYPE_9__* byval(%struct.TYPE_9__) align 8 %7, i32 %163, i64 %165)
  %167 = bitcast %struct.TYPE_8__* %5 to { i32, i64 }*
  %168 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %167, i32 0, i32 1
  %171 = load i64, i64* %170, align 8
  %172 = call i32 @forward_connected_layer(%struct.TYPE_9__* byval(%struct.TYPE_9__) align 8 %8, i32 %169, i64 %171)
  %173 = bitcast %struct.TYPE_8__* %5 to { i32, i64 }*
  %174 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %173, i32 0, i32 1
  %177 = load i64, i64* %176, align 8
  %178 = call i32 @forward_connected_layer(%struct.TYPE_9__* byval(%struct.TYPE_9__) align 8 %9, i32 %175, i64 %177)
  %179 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = mul nsw i32 %180, %182
  %184 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 5
  %185 = load i32, i32* %184, align 4
  %186 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 6
  %187 = load i32, i32* %186, align 8
  %188 = call i32 @copy_cpu(i32 %183, i32 %185, i32 1, i32 %187, i32 1)
  %189 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = mul nsw i32 %190, %192
  %194 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 5
  %195 = load i32, i32* %194, align 4
  %196 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 6
  %197 = load i32, i32* %196, align 8
  %198 = call i32 @axpy_cpu(i32 %193, i32 1, i32 %195, i32 1, i32 %197, i32 1)
  %199 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 1
  %202 = load i32, i32* %201, align 4
  %203 = mul nsw i32 %200, %202
  %204 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 5
  %205 = load i32, i32* %204, align 4
  %206 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 7
  %207 = load i32, i32* %206, align 4
  %208 = call i32 @copy_cpu(i32 %203, i32 %205, i32 1, i32 %207, i32 1)
  %209 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 1
  %212 = load i32, i32* %211, align 4
  %213 = mul nsw i32 %210, %212
  %214 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 5
  %215 = load i32, i32* %214, align 4
  %216 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 7
  %217 = load i32, i32* %216, align 4
  %218 = call i32 @axpy_cpu(i32 %213, i32 1, i32 %215, i32 1, i32 %217, i32 1)
  %219 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 6
  %220 = load i32, i32* %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 0
  %222 = load i32, i32* %221, align 8
  %223 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 1
  %224 = load i32, i32* %223, align 4
  %225 = mul nsw i32 %222, %224
  %226 = load i32, i32* @LOGISTIC, align 4
  %227 = call i32 @activate_array(i32 %220, i32 %225, i32 %226)
  %228 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 7
  %229 = load i32, i32* %228, align 4
  %230 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 0
  %231 = load i32, i32* %230, align 8
  %232 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 1
  %233 = load i32, i32* %232, align 4
  %234 = mul nsw i32 %231, %233
  %235 = load i32, i32* @LOGISTIC, align 4
  %236 = call i32 @activate_array(i32 %229, i32 %234, i32 %235)
  %237 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 0
  %238 = load i32, i32* %237, align 8
  %239 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 1
  %240 = load i32, i32* %239, align 4
  %241 = mul nsw i32 %238, %240
  %242 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 3
  %243 = load i32, i32* %242, align 4
  %244 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 8
  %245 = load i32, i32* %244, align 8
  %246 = call i32 @copy_cpu(i32 %241, i32 %243, i32 1, i32 %245, i32 1)
  %247 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 0
  %248 = load i32, i32* %247, align 8
  %249 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 1
  %250 = load i32, i32* %249, align 4
  %251 = mul nsw i32 %248, %250
  %252 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 7
  %253 = load i32, i32* %252, align 4
  %254 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 8
  %255 = load i32, i32* %254, align 8
  %256 = call i32 @mul_cpu(i32 %251, i32 %253, i32 1, i32 %255, i32 1)
  %257 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 8
  %258 = load i32, i32* %257, align 8
  %259 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  store i32 %258, i32* %259, align 8
  %260 = bitcast %struct.TYPE_8__* %5 to { i32, i64 }*
  %261 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 8
  %263 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %260, i32 0, i32 1
  %264 = load i64, i64* %263, align 8
  %265 = call i32 @forward_connected_layer(%struct.TYPE_9__* byval(%struct.TYPE_9__) align 8 %12, i32 %262, i64 %264)
  %266 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 0
  %267 = load i32, i32* %266, align 8
  %268 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 1
  %269 = load i32, i32* %268, align 4
  %270 = mul nsw i32 %267, %269
  %271 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 5
  %272 = load i32, i32* %271, align 4
  %273 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 9
  %274 = load i32, i32* %273, align 4
  %275 = call i32 @copy_cpu(i32 %270, i32 %272, i32 1, i32 %274, i32 1)
  %276 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 0
  %277 = load i32, i32* %276, align 8
  %278 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 1
  %279 = load i32, i32* %278, align 4
  %280 = mul nsw i32 %277, %279
  %281 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 5
  %282 = load i32, i32* %281, align 4
  %283 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 9
  %284 = load i32, i32* %283, align 4
  %285 = call i32 @axpy_cpu(i32 %280, i32 1, i32 %282, i32 1, i32 %284, i32 1)
  %286 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 11
  %287 = load i64, i64* %286, align 8
  %288 = icmp ne i64 %287, 0
  br i1 %288, label %289, label %299

289:                                              ; preds = %142
  %290 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 9
  %291 = load i32, i32* %290, align 4
  %292 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 0
  %293 = load i32, i32* %292, align 8
  %294 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 1
  %295 = load i32, i32* %294, align 4
  %296 = mul nsw i32 %293, %295
  %297 = load i32, i32* @TANH, align 4
  %298 = call i32 @activate_array(i32 %291, i32 %296, i32 %297)
  br label %309

299:                                              ; preds = %142
  %300 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 9
  %301 = load i32, i32* %300, align 4
  %302 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 0
  %303 = load i32, i32* %302, align 8
  %304 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 1
  %305 = load i32, i32* %304, align 4
  %306 = mul nsw i32 %303, %305
  %307 = load i32, i32* @LOGISTIC, align 4
  %308 = call i32 @activate_array(i32 %301, i32 %306, i32 %307)
  br label %309

309:                                              ; preds = %299, %289
  %310 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 3
  %311 = load i32, i32* %310, align 4
  %312 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 9
  %313 = load i32, i32* %312, align 4
  %314 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 6
  %315 = load i32, i32* %314, align 8
  %316 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 0
  %317 = load i32, i32* %316, align 8
  %318 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 1
  %319 = load i32, i32* %318, align 4
  %320 = mul nsw i32 %317, %319
  %321 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 5
  %322 = load i32, i32* %321, align 4
  %323 = call i32 @weighted_sum_cpu(i32 %311, i32 %313, i32 %315, i32 %320, i32 %322)
  %324 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 0
  %325 = load i32, i32* %324, align 8
  %326 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 1
  %327 = load i32, i32* %326, align 4
  %328 = mul nsw i32 %325, %327
  %329 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 5
  %330 = load i32, i32* %329, align 4
  %331 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 3
  %332 = load i32, i32* %331, align 4
  %333 = call i32 @copy_cpu(i32 %328, i32 %330, i32 1, i32 %332, i32 1)
  %334 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 10
  %335 = load i32, i32* %334, align 8
  %336 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 1
  %337 = load i32, i32* %336, align 4
  %338 = mul nsw i32 %335, %337
  %339 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  %340 = load i32, i32* %339, align 8
  %341 = add nsw i32 %340, %338
  store i32 %341, i32* %339, align 8
  %342 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 0
  %343 = load i32, i32* %342, align 8
  %344 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 1
  %345 = load i32, i32* %344, align 4
  %346 = mul nsw i32 %343, %345
  %347 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 5
  %348 = load i32, i32* %347, align 4
  %349 = add nsw i32 %348, %346
  store i32 %349, i32* %347, align 4
  %350 = call i32 @increment_layer(%struct.TYPE_9__* %7, i32 1)
  %351 = call i32 @increment_layer(%struct.TYPE_9__* %8, i32 1)
  %352 = call i32 @increment_layer(%struct.TYPE_9__* %9, i32 1)
  %353 = call i32 @increment_layer(%struct.TYPE_9__* %10, i32 1)
  %354 = call i32 @increment_layer(%struct.TYPE_9__* %11, i32 1)
  %355 = call i32 @increment_layer(%struct.TYPE_9__* %12, i32 1)
  br label %356

356:                                              ; preds = %309
  %357 = load i32, i32* %6, align 4
  %358 = add nsw i32 %357, 1
  store i32 %358, i32* %6, align 4
  br label %137

359:                                              ; preds = %137
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @fill_cpu(i32, i32, i32, i32) #2

declare dso_local i32 @copy_cpu(i32, i32, i32, i32, i32) #2

declare dso_local i32 @forward_connected_layer(%struct.TYPE_9__* byval(%struct.TYPE_9__) align 8, i32, i64) #2

declare dso_local i32 @axpy_cpu(i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @activate_array(i32, i32, i32) #2

declare dso_local i32 @mul_cpu(i32, i32, i32, i32, i32) #2

declare dso_local i32 @weighted_sum_cpu(i32, i32, i32, i32, i32) #2

declare dso_local i32 @increment_layer(%struct.TYPE_9__*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
