; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_lstm_layer.c_forward_lstm_layer.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_lstm_layer.c_forward_lstm_layer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_9__*, %struct.TYPE_9__*, %struct.TYPE_9__*, %struct.TYPE_9__*, %struct.TYPE_9__*, %struct.TYPE_9__*, %struct.TYPE_9__*, %struct.TYPE_9__* }
%struct.TYPE_8__ = type { i32, i64, i32 }

@LOGISTIC = common dso_local global i32 0, align 4
@TANH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @forward_lstm_layer(%struct.TYPE_9__* byval(%struct.TYPE_9__) align 8 %0, %struct.TYPE_8__* byval(%struct.TYPE_8__) align 8 %1) #0 {
  %3 = alloca %struct.TYPE_8__, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__, align 8
  %6 = alloca %struct.TYPE_9__, align 8
  %7 = alloca %struct.TYPE_9__, align 8
  %8 = alloca %struct.TYPE_9__, align 8
  %9 = alloca %struct.TYPE_9__, align 8
  %10 = alloca %struct.TYPE_9__, align 8
  %11 = alloca %struct.TYPE_9__, align 8
  %12 = alloca %struct.TYPE_9__, align 8
  %13 = bitcast %struct.TYPE_8__* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %13, i8 0, i64 24, i1 false)
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 1
  store i64 %15, i64* %16, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 21
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %19 = bitcast %struct.TYPE_9__* %5 to i8*
  %20 = bitcast %struct.TYPE_9__* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %19, i8* align 8 %20, i64 120, i1 false)
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 20
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %23 = bitcast %struct.TYPE_9__* %6 to i8*
  %24 = bitcast %struct.TYPE_9__* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %23, i8* align 8 %24, i64 120, i1 false)
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 19
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %25, align 8
  %27 = bitcast %struct.TYPE_9__* %7 to i8*
  %28 = bitcast %struct.TYPE_9__* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %27, i8* align 8 %28, i64 120, i1 false)
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 18
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %29, align 8
  %31 = bitcast %struct.TYPE_9__* %8 to i8*
  %32 = bitcast %struct.TYPE_9__* %30 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %31, i8* align 8 %32, i64 120, i1 false)
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 17
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %33, align 8
  %35 = bitcast %struct.TYPE_9__* %9 to i8*
  %36 = bitcast %struct.TYPE_9__* %34 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %35, i8* align 8 %36, i64 120, i1 false)
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 16
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %37, align 8
  %39 = bitcast %struct.TYPE_9__* %10 to i8*
  %40 = bitcast %struct.TYPE_9__* %38 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %39, i8* align 8 %40, i64 120, i1 false)
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 15
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %41, align 8
  %43 = bitcast %struct.TYPE_9__* %11 to i8*
  %44 = bitcast %struct.TYPE_9__* %42 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %43, i8* align 8 %44, i64 120, i1 false)
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 14
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %45, align 8
  %47 = bitcast %struct.TYPE_9__* %12 to i8*
  %48 = bitcast %struct.TYPE_9__* %46 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %47, i8* align 8 %48, i64 120, i1 false)
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = mul nsw i32 %50, %52
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = mul nsw i32 %53, %55
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 13
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @fill_cpu(i32 %56, i32 0, i32 %58, i32 1)
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = mul nsw i32 %61, %63
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = mul nsw i32 %64, %66
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 13
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @fill_cpu(i32 %67, i32 0, i32 %69, i32 1)
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = mul nsw i32 %72, %74
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = mul nsw i32 %75, %77
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 13
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @fill_cpu(i32 %78, i32 0, i32 %80, i32 1)
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = mul nsw i32 %83, %85
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = mul nsw i32 %86, %88
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 13
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @fill_cpu(i32 %89, i32 0, i32 %91, i32 1)
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = mul nsw i32 %94, %96
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = mul nsw i32 %97, %99
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 13
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @fill_cpu(i32 %100, i32 0, i32 %102, i32 1)
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = mul nsw i32 %105, %107
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = mul nsw i32 %108, %110
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 13
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @fill_cpu(i32 %111, i32 0, i32 %113, i32 1)
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = mul nsw i32 %116, %118
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = mul nsw i32 %119, %121
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 13
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @fill_cpu(i32 %122, i32 0, i32 %124, i32 1)
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = mul nsw i32 %127, %129
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = mul nsw i32 %130, %132
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 13
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @fill_cpu(i32 %133, i32 0, i32 %135, i32 1)
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %152

140:                                              ; preds = %2
  %141 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = mul nsw i32 %142, %144
  %146 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 2
  %147 = load i32, i32* %146, align 8
  %148 = mul nsw i32 %145, %147
  %149 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 13
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @fill_cpu(i32 %148, i32 0, i32 %150, i32 1)
  br label %152

152:                                              ; preds = %140, %2
  store i32 0, i32* %4, align 4
  br label %153

153:                                              ; preds = %410, %152
  %154 = load i32, i32* %4, align 4
  %155 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 2
  %156 = load i32, i32* %155, align 8
  %157 = icmp slt i32 %154, %156
  br i1 %157, label %158, label %413

158:                                              ; preds = %153
  %159 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 3
  %160 = load i32, i32* %159, align 4
  %161 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 0
  store i32 %160, i32* %161, align 8
  %162 = call i32 @forward_connected_layer(%struct.TYPE_9__* byval(%struct.TYPE_9__) align 8 %5, %struct.TYPE_8__* byval(%struct.TYPE_8__) align 8 %3)
  %163 = call i32 @forward_connected_layer(%struct.TYPE_9__* byval(%struct.TYPE_9__) align 8 %6, %struct.TYPE_8__* byval(%struct.TYPE_8__) align 8 %3)
  %164 = call i32 @forward_connected_layer(%struct.TYPE_9__* byval(%struct.TYPE_9__) align 8 %7, %struct.TYPE_8__* byval(%struct.TYPE_8__) align 8 %3)
  %165 = call i32 @forward_connected_layer(%struct.TYPE_9__* byval(%struct.TYPE_9__) align 8 %8, %struct.TYPE_8__* byval(%struct.TYPE_8__) align 8 %3)
  %166 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 0
  store i32 %167, i32* %168, align 8
  %169 = call i32 @forward_connected_layer(%struct.TYPE_9__* byval(%struct.TYPE_9__) align 8 %9, %struct.TYPE_8__* byval(%struct.TYPE_8__) align 8 %3)
  %170 = call i32 @forward_connected_layer(%struct.TYPE_9__* byval(%struct.TYPE_9__) align 8 %10, %struct.TYPE_8__* byval(%struct.TYPE_8__) align 8 %3)
  %171 = call i32 @forward_connected_layer(%struct.TYPE_9__* byval(%struct.TYPE_9__) align 8 %11, %struct.TYPE_8__* byval(%struct.TYPE_8__) align 8 %3)
  %172 = call i32 @forward_connected_layer(%struct.TYPE_9__* byval(%struct.TYPE_9__) align 8 %12, %struct.TYPE_8__* byval(%struct.TYPE_8__) align 8 %3)
  %173 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = mul nsw i32 %174, %176
  %178 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 4
  %179 = load i32, i32* %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 5
  %181 = load i32, i32* %180, align 4
  %182 = call i32 @copy_cpu(i32 %177, i32 %179, i32 1, i32 %181, i32 1)
  %183 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = mul nsw i32 %184, %186
  %188 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 4
  %189 = load i32, i32* %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 5
  %191 = load i32, i32* %190, align 4
  %192 = call i32 @axpy_cpu(i32 %187, i32 1, i32 %189, i32 1, i32 %191, i32 1)
  %193 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 1
  %196 = load i32, i32* %195, align 4
  %197 = mul nsw i32 %194, %196
  %198 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 4
  %199 = load i32, i32* %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 6
  %201 = load i32, i32* %200, align 8
  %202 = call i32 @copy_cpu(i32 %197, i32 %199, i32 1, i32 %201, i32 1)
  %203 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 1
  %206 = load i32, i32* %205, align 4
  %207 = mul nsw i32 %204, %206
  %208 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 4
  %209 = load i32, i32* %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 6
  %211 = load i32, i32* %210, align 8
  %212 = call i32 @axpy_cpu(i32 %207, i32 1, i32 %209, i32 1, i32 %211, i32 1)
  %213 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 0
  %214 = load i32, i32* %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 1
  %216 = load i32, i32* %215, align 4
  %217 = mul nsw i32 %214, %216
  %218 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 4
  %219 = load i32, i32* %218, align 8
  %220 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 7
  %221 = load i32, i32* %220, align 4
  %222 = call i32 @copy_cpu(i32 %217, i32 %219, i32 1, i32 %221, i32 1)
  %223 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 0
  %224 = load i32, i32* %223, align 8
  %225 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 1
  %226 = load i32, i32* %225, align 4
  %227 = mul nsw i32 %224, %226
  %228 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 4
  %229 = load i32, i32* %228, align 8
  %230 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 7
  %231 = load i32, i32* %230, align 4
  %232 = call i32 @axpy_cpu(i32 %227, i32 1, i32 %229, i32 1, i32 %231, i32 1)
  %233 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 0
  %234 = load i32, i32* %233, align 8
  %235 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 1
  %236 = load i32, i32* %235, align 4
  %237 = mul nsw i32 %234, %236
  %238 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 4
  %239 = load i32, i32* %238, align 8
  %240 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 8
  %241 = load i32, i32* %240, align 8
  %242 = call i32 @copy_cpu(i32 %237, i32 %239, i32 1, i32 %241, i32 1)
  %243 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 0
  %244 = load i32, i32* %243, align 8
  %245 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 1
  %246 = load i32, i32* %245, align 4
  %247 = mul nsw i32 %244, %246
  %248 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 4
  %249 = load i32, i32* %248, align 8
  %250 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 8
  %251 = load i32, i32* %250, align 8
  %252 = call i32 @axpy_cpu(i32 %247, i32 1, i32 %249, i32 1, i32 %251, i32 1)
  %253 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 5
  %254 = load i32, i32* %253, align 4
  %255 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 0
  %256 = load i32, i32* %255, align 8
  %257 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 1
  %258 = load i32, i32* %257, align 4
  %259 = mul nsw i32 %256, %258
  %260 = load i32, i32* @LOGISTIC, align 4
  %261 = call i32 @activate_array(i32 %254, i32 %259, i32 %260)
  %262 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 6
  %263 = load i32, i32* %262, align 8
  %264 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 0
  %265 = load i32, i32* %264, align 8
  %266 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 1
  %267 = load i32, i32* %266, align 4
  %268 = mul nsw i32 %265, %267
  %269 = load i32, i32* @LOGISTIC, align 4
  %270 = call i32 @activate_array(i32 %263, i32 %268, i32 %269)
  %271 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 7
  %272 = load i32, i32* %271, align 4
  %273 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 0
  %274 = load i32, i32* %273, align 8
  %275 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 1
  %276 = load i32, i32* %275, align 4
  %277 = mul nsw i32 %274, %276
  %278 = load i32, i32* @TANH, align 4
  %279 = call i32 @activate_array(i32 %272, i32 %277, i32 %278)
  %280 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 8
  %281 = load i32, i32* %280, align 8
  %282 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 0
  %283 = load i32, i32* %282, align 8
  %284 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 1
  %285 = load i32, i32* %284, align 4
  %286 = mul nsw i32 %283, %285
  %287 = load i32, i32* @LOGISTIC, align 4
  %288 = call i32 @activate_array(i32 %281, i32 %286, i32 %287)
  %289 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 0
  %290 = load i32, i32* %289, align 8
  %291 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 1
  %292 = load i32, i32* %291, align 4
  %293 = mul nsw i32 %290, %292
  %294 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 6
  %295 = load i32, i32* %294, align 8
  %296 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 9
  %297 = load i32, i32* %296, align 4
  %298 = call i32 @copy_cpu(i32 %293, i32 %295, i32 1, i32 %297, i32 1)
  %299 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 0
  %300 = load i32, i32* %299, align 8
  %301 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 1
  %302 = load i32, i32* %301, align 4
  %303 = mul nsw i32 %300, %302
  %304 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 7
  %305 = load i32, i32* %304, align 4
  %306 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 9
  %307 = load i32, i32* %306, align 4
  %308 = call i32 @mul_cpu(i32 %303, i32 %305, i32 1, i32 %307, i32 1)
  %309 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 0
  %310 = load i32, i32* %309, align 8
  %311 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 1
  %312 = load i32, i32* %311, align 4
  %313 = mul nsw i32 %310, %312
  %314 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 5
  %315 = load i32, i32* %314, align 4
  %316 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 10
  %317 = load i32, i32* %316, align 8
  %318 = call i32 @mul_cpu(i32 %313, i32 %315, i32 1, i32 %317, i32 1)
  %319 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 0
  %320 = load i32, i32* %319, align 8
  %321 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 1
  %322 = load i32, i32* %321, align 4
  %323 = mul nsw i32 %320, %322
  %324 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 9
  %325 = load i32, i32* %324, align 4
  %326 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 10
  %327 = load i32, i32* %326, align 8
  %328 = call i32 @axpy_cpu(i32 %323, i32 1, i32 %325, i32 1, i32 %327, i32 1)
  %329 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 0
  %330 = load i32, i32* %329, align 8
  %331 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 1
  %332 = load i32, i32* %331, align 4
  %333 = mul nsw i32 %330, %332
  %334 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 10
  %335 = load i32, i32* %334, align 8
  %336 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 3
  %337 = load i32, i32* %336, align 4
  %338 = call i32 @copy_cpu(i32 %333, i32 %335, i32 1, i32 %337, i32 1)
  %339 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 3
  %340 = load i32, i32* %339, align 4
  %341 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 0
  %342 = load i32, i32* %341, align 8
  %343 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 1
  %344 = load i32, i32* %343, align 4
  %345 = mul nsw i32 %342, %344
  %346 = load i32, i32* @TANH, align 4
  %347 = call i32 @activate_array(i32 %340, i32 %345, i32 %346)
  %348 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 0
  %349 = load i32, i32* %348, align 8
  %350 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 1
  %351 = load i32, i32* %350, align 4
  %352 = mul nsw i32 %349, %351
  %353 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 8
  %354 = load i32, i32* %353, align 8
  %355 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 3
  %356 = load i32, i32* %355, align 4
  %357 = call i32 @mul_cpu(i32 %352, i32 %354, i32 1, i32 %356, i32 1)
  %358 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 0
  %359 = load i32, i32* %358, align 8
  %360 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 1
  %361 = load i32, i32* %360, align 4
  %362 = mul nsw i32 %359, %361
  %363 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 10
  %364 = load i32, i32* %363, align 8
  %365 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 11
  %366 = load i32, i32* %365, align 4
  %367 = call i32 @copy_cpu(i32 %362, i32 %364, i32 1, i32 %366, i32 1)
  %368 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 0
  %369 = load i32, i32* %368, align 8
  %370 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 1
  %371 = load i32, i32* %370, align 4
  %372 = mul nsw i32 %369, %371
  %373 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 3
  %374 = load i32, i32* %373, align 4
  %375 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 4
  %376 = load i32, i32* %375, align 8
  %377 = call i32 @copy_cpu(i32 %372, i32 %374, i32 1, i32 %376, i32 1)
  %378 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 12
  %379 = load i32, i32* %378, align 8
  %380 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 1
  %381 = load i32, i32* %380, align 4
  %382 = mul nsw i32 %379, %381
  %383 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1, i32 0, i32 0
  %384 = load i32, i32* %383, align 8
  %385 = add nsw i32 %384, %382
  store i32 %385, i32* %383, align 8
  %386 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 0
  %387 = load i32, i32* %386, align 8
  %388 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 1
  %389 = load i32, i32* %388, align 4
  %390 = mul nsw i32 %387, %389
  %391 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 4
  %392 = load i32, i32* %391, align 8
  %393 = add nsw i32 %392, %390
  store i32 %393, i32* %391, align 8
  %394 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 0
  %395 = load i32, i32* %394, align 8
  %396 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 1
  %397 = load i32, i32* %396, align 4
  %398 = mul nsw i32 %395, %397
  %399 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 11
  %400 = load i32, i32* %399, align 4
  %401 = add nsw i32 %400, %398
  store i32 %401, i32* %399, align 4
  %402 = call i32 @increment_layer(%struct.TYPE_9__* %5, i32 1)
  %403 = call i32 @increment_layer(%struct.TYPE_9__* %6, i32 1)
  %404 = call i32 @increment_layer(%struct.TYPE_9__* %7, i32 1)
  %405 = call i32 @increment_layer(%struct.TYPE_9__* %8, i32 1)
  %406 = call i32 @increment_layer(%struct.TYPE_9__* %9, i32 1)
  %407 = call i32 @increment_layer(%struct.TYPE_9__* %10, i32 1)
  %408 = call i32 @increment_layer(%struct.TYPE_9__* %11, i32 1)
  %409 = call i32 @increment_layer(%struct.TYPE_9__* %12, i32 1)
  br label %410

410:                                              ; preds = %158
  %411 = load i32, i32* %4, align 4
  %412 = add nsw i32 %411, 1
  store i32 %412, i32* %4, align 4
  br label %153

413:                                              ; preds = %153
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @fill_cpu(i32, i32, i32, i32) #2

declare dso_local i32 @forward_connected_layer(%struct.TYPE_9__* byval(%struct.TYPE_9__) align 8, %struct.TYPE_8__* byval(%struct.TYPE_8__) align 8) #2

declare dso_local i32 @copy_cpu(i32, i32, i32, i32, i32) #2

declare dso_local i32 @axpy_cpu(i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @activate_array(i32, i32, i32) #2

declare dso_local i32 @mul_cpu(i32, i32, i32, i32, i32) #2

declare dso_local i32 @increment_layer(%struct.TYPE_9__*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
