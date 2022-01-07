; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/x86/extr_mdct15_init.c_perm_twiddles.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/x86/extr_mdct15_init.c_perm_twiddles.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*)* @perm_twiddles to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @perm_twiddles(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca [30 x %struct.TYPE_7__], align 16
  %5 = alloca [8 x %struct.TYPE_7__], align 16
  %6 = alloca [4 x %struct.TYPE_7__], align 16
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i64 19
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i64 60
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 3
  store i32 %12, i32* %17, align 4
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i64 60
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 1
  store i32 %12, i32* %22, align 4
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i64 19
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i64 61
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 3
  store i32 %28, i32* %33, align 4
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i64 61
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 1
  store i32 %28, i32* %38, align 4
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i64 20
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i64 62
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 3
  store i32 %44, i32* %49, align 4
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i64 62
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 1
  store i32 %44, i32* %54, align 4
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i64 20
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i64 63
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 3
  store i32 %60, i32* %65, align 4
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i64 63
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 1
  store i32 %60, i32* %70, align 4
  store i32 0, i32* %3, align 4
  br label %71

71:                                               ; preds = %162, %1
  %72 = load i32, i32* %3, align 4
  %73 = icmp slt i32 %72, 5
  br i1 %73, label %74, label %165

74:                                               ; preds = %71
  %75 = load i32, i32* %3, align 4
  %76 = mul nsw i32 6, %75
  %77 = add nsw i32 %76, 0
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds [30 x %struct.TYPE_7__], [30 x %struct.TYPE_7__]* %4, i64 0, i64 %78
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %81, align 8
  %83 = load i32, i32* %3, align 4
  %84 = add nsw i32 %83, 0
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i64 %85
  %87 = bitcast %struct.TYPE_7__* %79 to i8*
  %88 = bitcast %struct.TYPE_7__* %86 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %87, i8* align 4 %88, i64 16, i1 false)
  %89 = load i32, i32* %3, align 4
  %90 = mul nsw i32 6, %89
  %91 = add nsw i32 %90, 2
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds [30 x %struct.TYPE_7__], [30 x %struct.TYPE_7__]* %4, i64 0, i64 %92
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %95, align 8
  %97 = load i32, i32* %3, align 4
  %98 = add nsw i32 %97, 5
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i64 %99
  %101 = bitcast %struct.TYPE_7__* %93 to i8*
  %102 = bitcast %struct.TYPE_7__* %100 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %101, i8* align 4 %102, i64 16, i1 false)
  %103 = load i32, i32* %3, align 4
  %104 = mul nsw i32 6, %103
  %105 = add nsw i32 %104, 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds [30 x %struct.TYPE_7__], [30 x %struct.TYPE_7__]* %4, i64 0, i64 %106
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 0
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %109, align 8
  %111 = load i32, i32* %3, align 4
  %112 = add nsw i32 %111, 10
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i64 %113
  %115 = bitcast %struct.TYPE_7__* %107 to i8*
  %116 = bitcast %struct.TYPE_7__* %114 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %115, i8* align 4 %116, i64 16, i1 false)
  %117 = load i32, i32* %3, align 4
  %118 = mul nsw i32 6, %117
  %119 = add nsw i32 %118, 1
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds [30 x %struct.TYPE_7__], [30 x %struct.TYPE_7__]* %4, i64 0, i64 %120
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 0
  %124 = load %struct.TYPE_7__*, %struct.TYPE_7__** %123, align 8
  %125 = load i32, i32* %3, align 4
  %126 = add nsw i32 %125, 0
  %127 = mul nsw i32 2, %126
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i64 %128
  %130 = bitcast %struct.TYPE_7__* %121 to i8*
  %131 = bitcast %struct.TYPE_7__* %129 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %130, i8* align 4 %131, i64 16, i1 false)
  %132 = load i32, i32* %3, align 4
  %133 = mul nsw i32 6, %132
  %134 = add nsw i32 %133, 3
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds [30 x %struct.TYPE_7__], [30 x %struct.TYPE_7__]* %4, i64 0, i64 %135
  %137 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 0
  %139 = load %struct.TYPE_7__*, %struct.TYPE_7__** %138, align 8
  %140 = load i32, i32* %3, align 4
  %141 = add nsw i32 %140, 5
  %142 = mul nsw i32 2, %141
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i64 %143
  %145 = bitcast %struct.TYPE_7__* %136 to i8*
  %146 = bitcast %struct.TYPE_7__* %144 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %145, i8* align 4 %146, i64 16, i1 false)
  %147 = load i32, i32* %3, align 4
  %148 = mul nsw i32 6, %147
  %149 = add nsw i32 %148, 5
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds [30 x %struct.TYPE_7__], [30 x %struct.TYPE_7__]* %4, i64 0, i64 %150
  %152 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i32 0, i32 0
  %154 = load %struct.TYPE_7__*, %struct.TYPE_7__** %153, align 8
  %155 = load i32, i32* %3, align 4
  %156 = mul nsw i32 2, %155
  %157 = add nsw i32 %156, 5
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %154, i64 %158
  %160 = bitcast %struct.TYPE_7__* %151 to i8*
  %161 = bitcast %struct.TYPE_7__* %159 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %160, i8* align 4 %161, i64 16, i1 false)
  br label %162

162:                                              ; preds = %74
  %163 = load i32, i32* %3, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %3, align 4
  br label %71

165:                                              ; preds = %71
  store i32 0, i32* %3, align 4
  br label %166

166:                                              ; preds = %319, %165
  %167 = load i32, i32* %3, align 4
  %168 = icmp slt i32 %167, 6
  br i1 %168, label %169, label %322

169:                                              ; preds = %166
  %170 = getelementptr inbounds [8 x %struct.TYPE_7__], [8 x %struct.TYPE_7__]* %5, i64 0, i64 0
  %171 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %170, i32 0, i32 0
  %172 = load i32, i32* %3, align 4
  %173 = add nsw i32 6, %172
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds [30 x %struct.TYPE_7__], [30 x %struct.TYPE_7__]* %4, i64 0, i64 %174
  %176 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  store i32 %177, i32* %171, align 16
  %178 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %170, i32 0, i32 1
  %179 = load i32, i32* %3, align 4
  %180 = add nsw i32 6, %179
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds [30 x %struct.TYPE_7__], [30 x %struct.TYPE_7__]* %4, i64 0, i64 %181
  %183 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  store i32 %184, i32* %178, align 4
  %185 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %170, i32 0, i32 2
  store i32 0, i32* %185, align 8
  %186 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %170, i32 0, i32 3
  store i32 0, i32* %186, align 4
  %187 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %170, i64 1
  %188 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %187, i32 0, i32 0
  %189 = load i32, i32* %3, align 4
  %190 = add nsw i32 12, %189
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds [30 x %struct.TYPE_7__], [30 x %struct.TYPE_7__]* %4, i64 0, i64 %191
  %193 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  store i32 %194, i32* %188, align 16
  %195 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %187, i32 0, i32 1
  %196 = load i32, i32* %3, align 4
  %197 = add nsw i32 12, %196
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds [30 x %struct.TYPE_7__], [30 x %struct.TYPE_7__]* %4, i64 0, i64 %198
  %200 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 4
  store i32 %201, i32* %195, align 4
  %202 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %187, i32 0, i32 2
  store i32 0, i32* %202, align 8
  %203 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %187, i32 0, i32 3
  store i32 0, i32* %203, align 4
  %204 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %187, i64 1
  %205 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %204, i32 0, i32 0
  %206 = load i32, i32* %3, align 4
  %207 = add nsw i32 18, %206
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds [30 x %struct.TYPE_7__], [30 x %struct.TYPE_7__]* %4, i64 0, i64 %208
  %210 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 4
  store i32 %211, i32* %205, align 16
  %212 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %204, i32 0, i32 1
  %213 = load i32, i32* %3, align 4
  %214 = add nsw i32 18, %213
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds [30 x %struct.TYPE_7__], [30 x %struct.TYPE_7__]* %4, i64 0, i64 %215
  %217 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %216, i32 0, i32 1
  %218 = load i32, i32* %217, align 4
  store i32 %218, i32* %212, align 4
  %219 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %204, i32 0, i32 2
  store i32 0, i32* %219, align 8
  %220 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %204, i32 0, i32 3
  store i32 0, i32* %220, align 4
  %221 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %204, i64 1
  %222 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %221, i32 0, i32 0
  %223 = load i32, i32* %3, align 4
  %224 = add nsw i32 24, %223
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds [30 x %struct.TYPE_7__], [30 x %struct.TYPE_7__]* %4, i64 0, i64 %225
  %227 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %226, i32 0, i32 1
  %228 = load i32, i32* %227, align 4
  store i32 %228, i32* %222, align 16
  %229 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %221, i32 0, i32 1
  %230 = load i32, i32* %3, align 4
  %231 = add nsw i32 24, %230
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds [30 x %struct.TYPE_7__], [30 x %struct.TYPE_7__]* %4, i64 0, i64 %232
  %234 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %233, i32 0, i32 1
  %235 = load i32, i32* %234, align 4
  store i32 %235, i32* %229, align 4
  %236 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %221, i32 0, i32 2
  store i32 0, i32* %236, align 8
  %237 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %221, i32 0, i32 3
  store i32 0, i32* %237, align 4
  %238 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %221, i64 1
  %239 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %238, i32 0, i32 0
  %240 = load i32, i32* %3, align 4
  %241 = add nsw i32 6, %240
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds [30 x %struct.TYPE_7__], [30 x %struct.TYPE_7__]* %4, i64 0, i64 %242
  %244 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %243, i32 0, i32 3
  %245 = load i32, i32* %244, align 4
  store i32 %245, i32* %239, align 16
  %246 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %238, i32 0, i32 1
  %247 = load i32, i32* %3, align 4
  %248 = add nsw i32 6, %247
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds [30 x %struct.TYPE_7__], [30 x %struct.TYPE_7__]* %4, i64 0, i64 %249
  %251 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %250, i32 0, i32 3
  %252 = load i32, i32* %251, align 4
  %253 = sub nsw i32 0, %252
  store i32 %253, i32* %246, align 4
  %254 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %238, i32 0, i32 2
  store i32 0, i32* %254, align 8
  %255 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %238, i32 0, i32 3
  store i32 0, i32* %255, align 4
  %256 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %238, i64 1
  %257 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %256, i32 0, i32 0
  %258 = load i32, i32* %3, align 4
  %259 = add nsw i32 12, %258
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds [30 x %struct.TYPE_7__], [30 x %struct.TYPE_7__]* %4, i64 0, i64 %260
  %262 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %261, i32 0, i32 3
  %263 = load i32, i32* %262, align 4
  store i32 %263, i32* %257, align 16
  %264 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %256, i32 0, i32 1
  %265 = load i32, i32* %3, align 4
  %266 = add nsw i32 12, %265
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds [30 x %struct.TYPE_7__], [30 x %struct.TYPE_7__]* %4, i64 0, i64 %267
  %269 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %268, i32 0, i32 3
  %270 = load i32, i32* %269, align 4
  %271 = sub nsw i32 0, %270
  store i32 %271, i32* %264, align 4
  %272 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %256, i32 0, i32 2
  store i32 0, i32* %272, align 8
  %273 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %256, i32 0, i32 3
  store i32 0, i32* %273, align 4
  %274 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %256, i64 1
  %275 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %274, i32 0, i32 0
  %276 = load i32, i32* %3, align 4
  %277 = add nsw i32 18, %276
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds [30 x %struct.TYPE_7__], [30 x %struct.TYPE_7__]* %4, i64 0, i64 %278
  %280 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %279, i32 0, i32 3
  %281 = load i32, i32* %280, align 4
  store i32 %281, i32* %275, align 16
  %282 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %274, i32 0, i32 1
  %283 = load i32, i32* %3, align 4
  %284 = add nsw i32 18, %283
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds [30 x %struct.TYPE_7__], [30 x %struct.TYPE_7__]* %4, i64 0, i64 %285
  %287 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %286, i32 0, i32 3
  %288 = load i32, i32* %287, align 4
  %289 = sub nsw i32 0, %288
  store i32 %289, i32* %282, align 4
  %290 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %274, i32 0, i32 2
  store i32 0, i32* %290, align 8
  %291 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %274, i32 0, i32 3
  store i32 0, i32* %291, align 4
  %292 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %274, i64 1
  %293 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %292, i32 0, i32 0
  %294 = load i32, i32* %3, align 4
  %295 = add nsw i32 24, %294
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds [30 x %struct.TYPE_7__], [30 x %struct.TYPE_7__]* %4, i64 0, i64 %296
  %298 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %297, i32 0, i32 3
  %299 = load i32, i32* %298, align 4
  store i32 %299, i32* %293, align 16
  %300 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %292, i32 0, i32 1
  %301 = load i32, i32* %3, align 4
  %302 = add nsw i32 24, %301
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds [30 x %struct.TYPE_7__], [30 x %struct.TYPE_7__]* %4, i64 0, i64 %303
  %305 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %304, i32 0, i32 3
  %306 = load i32, i32* %305, align 4
  %307 = sub nsw i32 0, %306
  store i32 %307, i32* %300, align 4
  %308 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %292, i32 0, i32 2
  store i32 0, i32* %308, align 8
  %309 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %292, i32 0, i32 3
  store i32 0, i32* %309, align 4
  %310 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %311 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %310, i32 0, i32 0
  %312 = load %struct.TYPE_7__*, %struct.TYPE_7__** %311, align 8
  %313 = load i32, i32* %3, align 4
  %314 = mul nsw i32 8, %313
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %312, i64 %315
  %317 = getelementptr inbounds [8 x %struct.TYPE_7__], [8 x %struct.TYPE_7__]* %5, i64 0, i64 0
  %318 = call i32 @memcpy(%struct.TYPE_7__* %316, %struct.TYPE_7__* %317, i32 128)
  br label %319

319:                                              ; preds = %169
  %320 = load i32, i32* %3, align 4
  %321 = add nsw i32 %320, 1
  store i32 %321, i32* %3, align 4
  br label %166

322:                                              ; preds = %166
  store i32 0, i32* %3, align 4
  br label %323

323:                                              ; preds = %415, %322
  %324 = load i32, i32* %3, align 4
  %325 = icmp slt i32 %324, 3
  br i1 %325, label %326, label %418

326:                                              ; preds = %323
  %327 = getelementptr inbounds [4 x %struct.TYPE_7__], [4 x %struct.TYPE_7__]* %6, i64 0, i64 0
  %328 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %327, i32 0, i32 0
  %329 = load i32, i32* %3, align 4
  %330 = mul nsw i32 2, %329
  %331 = add nsw i32 %330, 0
  %332 = sext i32 %331 to i64
  %333 = getelementptr inbounds [30 x %struct.TYPE_7__], [30 x %struct.TYPE_7__]* %4, i64 0, i64 %332
  %334 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %333, i32 0, i32 1
  %335 = load i32, i32* %334, align 4
  store i32 %335, i32* %328, align 16
  %336 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %327, i32 0, i32 1
  %337 = load i32, i32* %3, align 4
  %338 = mul nsw i32 2, %337
  %339 = add nsw i32 %338, 0
  %340 = sext i32 %339 to i64
  %341 = getelementptr inbounds [30 x %struct.TYPE_7__], [30 x %struct.TYPE_7__]* %4, i64 0, i64 %340
  %342 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %341, i32 0, i32 3
  %343 = load i32, i32* %342, align 4
  %344 = sub nsw i32 0, %343
  store i32 %344, i32* %336, align 4
  %345 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %327, i32 0, i32 2
  store i32 0, i32* %345, align 8
  %346 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %327, i32 0, i32 3
  store i32 0, i32* %346, align 4
  %347 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %327, i64 1
  %348 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %347, i32 0, i32 0
  %349 = load i32, i32* %3, align 4
  %350 = mul nsw i32 2, %349
  %351 = add nsw i32 %350, 0
  %352 = sext i32 %351 to i64
  %353 = getelementptr inbounds [30 x %struct.TYPE_7__], [30 x %struct.TYPE_7__]* %4, i64 0, i64 %352
  %354 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %353, i32 0, i32 3
  %355 = load i32, i32* %354, align 4
  store i32 %355, i32* %348, align 16
  %356 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %347, i32 0, i32 1
  %357 = load i32, i32* %3, align 4
  %358 = mul nsw i32 2, %357
  %359 = add nsw i32 %358, 0
  %360 = sext i32 %359 to i64
  %361 = getelementptr inbounds [30 x %struct.TYPE_7__], [30 x %struct.TYPE_7__]* %4, i64 0, i64 %360
  %362 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %361, i32 0, i32 1
  %363 = load i32, i32* %362, align 4
  store i32 %363, i32* %356, align 4
  %364 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %347, i32 0, i32 2
  store i32 0, i32* %364, align 8
  %365 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %347, i32 0, i32 3
  store i32 0, i32* %365, align 4
  %366 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %347, i64 1
  %367 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %366, i32 0, i32 0
  %368 = load i32, i32* %3, align 4
  %369 = mul nsw i32 2, %368
  %370 = add nsw i32 %369, 1
  %371 = sext i32 %370 to i64
  %372 = getelementptr inbounds [30 x %struct.TYPE_7__], [30 x %struct.TYPE_7__]* %4, i64 0, i64 %371
  %373 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %372, i32 0, i32 1
  %374 = load i32, i32* %373, align 4
  store i32 %374, i32* %367, align 16
  %375 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %366, i32 0, i32 1
  %376 = load i32, i32* %3, align 4
  %377 = mul nsw i32 2, %376
  %378 = add nsw i32 %377, 1
  %379 = sext i32 %378 to i64
  %380 = getelementptr inbounds [30 x %struct.TYPE_7__], [30 x %struct.TYPE_7__]* %4, i64 0, i64 %379
  %381 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %380, i32 0, i32 3
  %382 = load i32, i32* %381, align 4
  %383 = sub nsw i32 0, %382
  store i32 %383, i32* %375, align 4
  %384 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %366, i32 0, i32 2
  store i32 0, i32* %384, align 8
  %385 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %366, i32 0, i32 3
  store i32 0, i32* %385, align 4
  %386 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %366, i64 1
  %387 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %386, i32 0, i32 0
  %388 = load i32, i32* %3, align 4
  %389 = mul nsw i32 2, %388
  %390 = add nsw i32 %389, 1
  %391 = sext i32 %390 to i64
  %392 = getelementptr inbounds [30 x %struct.TYPE_7__], [30 x %struct.TYPE_7__]* %4, i64 0, i64 %391
  %393 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %392, i32 0, i32 3
  %394 = load i32, i32* %393, align 4
  store i32 %394, i32* %387, align 16
  %395 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %386, i32 0, i32 1
  %396 = load i32, i32* %3, align 4
  %397 = mul nsw i32 2, %396
  %398 = add nsw i32 %397, 1
  %399 = sext i32 %398 to i64
  %400 = getelementptr inbounds [30 x %struct.TYPE_7__], [30 x %struct.TYPE_7__]* %4, i64 0, i64 %399
  %401 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %400, i32 0, i32 1
  %402 = load i32, i32* %401, align 4
  store i32 %402, i32* %395, align 4
  %403 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %386, i32 0, i32 2
  store i32 0, i32* %403, align 8
  %404 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %386, i32 0, i32 3
  store i32 0, i32* %404, align 4
  %405 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %406 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %405, i32 0, i32 0
  %407 = load %struct.TYPE_7__*, %struct.TYPE_7__** %406, align 8
  %408 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %407, i64 48
  %409 = load i32, i32* %3, align 4
  %410 = mul nsw i32 4, %409
  %411 = sext i32 %410 to i64
  %412 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %408, i64 %411
  %413 = getelementptr inbounds [4 x %struct.TYPE_7__], [4 x %struct.TYPE_7__]* %6, i64 0, i64 0
  %414 = call i32 @memcpy(%struct.TYPE_7__* %412, %struct.TYPE_7__* %413, i32 64)
  br label %415

415:                                              ; preds = %326
  %416 = load i32, i32* %3, align 4
  %417 = add nsw i32 %416, 1
  store i32 %417, i32* %3, align 4
  br label %323

418:                                              ; preds = %323
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @memcpy(%struct.TYPE_7__*, %struct.TYPE_7__*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
