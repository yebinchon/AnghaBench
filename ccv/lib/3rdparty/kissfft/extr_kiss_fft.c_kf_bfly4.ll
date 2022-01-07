; ModuleID = '/home/carl/AnghaBench/ccv/lib/3rdparty/kissfft/extr_kiss_fft.c_kf_bfly4.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/3rdparty/kissfft/extr_kiss_fft.c_kf_bfly4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i64, i64 }
%struct.TYPE_18__ = type { i64, %struct.TYPE_17__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_17__*, i64, %struct.TYPE_18__*, i64)* @kf_bfly4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kf_bfly4(%struct.TYPE_17__* %0, i64 %1, %struct.TYPE_18__* %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_17__*, align 8
  %10 = alloca %struct.TYPE_17__*, align 8
  %11 = alloca %struct.TYPE_17__*, align 8
  %12 = alloca [6 x %struct.TYPE_17__], align 16
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.TYPE_18__* %2, %struct.TYPE_18__** %7, align 8
  store i64 %3, i64* %8, align 8
  %16 = load i64, i64* %8, align 8
  store i64 %16, i64* %13, align 8
  %17 = load i64, i64* %8, align 8
  %18 = mul i64 2, %17
  store i64 %18, i64* %14, align 8
  %19 = load i64, i64* %8, align 8
  %20 = mul i64 3, %19
  store i64 %20, i64* %15, align 8
  %21 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** %22, align 8
  store %struct.TYPE_17__* %23, %struct.TYPE_17__** %9, align 8
  store %struct.TYPE_17__* %23, %struct.TYPE_17__** %10, align 8
  store %struct.TYPE_17__* %23, %struct.TYPE_17__** %11, align 8
  br label %24

24:                                               ; preds = %334, %4
  %25 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %26 = bitcast %struct.TYPE_17__* %25 to { i64, i64 }*
  %27 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %26, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @C_FIXDIV(i64 %28, i64 %30, i32 4)
  %32 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %33 = load i64, i64* %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %32, i64 %33
  %35 = bitcast %struct.TYPE_17__* %34 to { i64, i64 }*
  %36 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %35, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @C_FIXDIV(i64 %37, i64 %39, i32 4)
  %41 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %42 = load i64, i64* %14, align 8
  %43 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %41, i64 %42
  %44 = bitcast %struct.TYPE_17__* %43 to { i64, i64 }*
  %45 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %44, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @C_FIXDIV(i64 %46, i64 %48, i32 4)
  %50 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %51 = load i64, i64* %15, align 8
  %52 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %50, i64 %51
  %53 = bitcast %struct.TYPE_17__* %52 to { i64, i64 }*
  %54 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %53, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @C_FIXDIV(i64 %55, i64 %57, i32 4)
  %59 = getelementptr inbounds [6 x %struct.TYPE_17__], [6 x %struct.TYPE_17__]* %12, i64 0, i64 0
  %60 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %61 = load i64, i64* %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %60, i64 %61
  %63 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %64 = bitcast %struct.TYPE_17__* %59 to { i64, i64 }*
  %65 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 16
  %67 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %64, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = bitcast %struct.TYPE_17__* %62 to { i64, i64 }*
  %70 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %69, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = bitcast %struct.TYPE_17__* %63 to { i64, i64 }*
  %75 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %74, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = call i32 @C_MUL(i64 %66, i64 %68, i64 %71, i64 %73, i64 %76, i64 %78)
  %80 = getelementptr inbounds [6 x %struct.TYPE_17__], [6 x %struct.TYPE_17__]* %12, i64 0, i64 1
  %81 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %82 = load i64, i64* %14, align 8
  %83 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %81, i64 %82
  %84 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %85 = bitcast %struct.TYPE_17__* %80 to { i64, i64 }*
  %86 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 16
  %88 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %85, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = bitcast %struct.TYPE_17__* %83 to { i64, i64 }*
  %91 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %90, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = bitcast %struct.TYPE_17__* %84 to { i64, i64 }*
  %96 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %95, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = call i32 @C_MUL(i64 %87, i64 %89, i64 %92, i64 %94, i64 %97, i64 %99)
  %101 = getelementptr inbounds [6 x %struct.TYPE_17__], [6 x %struct.TYPE_17__]* %12, i64 0, i64 2
  %102 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %103 = load i64, i64* %15, align 8
  %104 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %102, i64 %103
  %105 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %106 = bitcast %struct.TYPE_17__* %101 to { i64, i64 }*
  %107 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 16
  %109 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %106, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = bitcast %struct.TYPE_17__* %104 to { i64, i64 }*
  %112 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %111, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = bitcast %struct.TYPE_17__* %105 to { i64, i64 }*
  %117 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %116, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = call i32 @C_MUL(i64 %108, i64 %110, i64 %113, i64 %115, i64 %118, i64 %120)
  %122 = getelementptr inbounds [6 x %struct.TYPE_17__], [6 x %struct.TYPE_17__]* %12, i64 0, i64 5
  %123 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %124 = getelementptr inbounds [6 x %struct.TYPE_17__], [6 x %struct.TYPE_17__]* %12, i64 0, i64 1
  %125 = bitcast %struct.TYPE_17__* %122 to { i64, i64 }*
  %126 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 16
  %128 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %125, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = bitcast %struct.TYPE_17__* %123 to { i64, i64 }*
  %131 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %130, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = bitcast %struct.TYPE_17__* %124 to { i64, i64 }*
  %136 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 16
  %138 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %135, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = call i32 @C_SUB(i64 %127, i64 %129, i64 %132, i64 %134, i64 %137, i64 %139)
  %141 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %142 = getelementptr inbounds [6 x %struct.TYPE_17__], [6 x %struct.TYPE_17__]* %12, i64 0, i64 1
  %143 = bitcast %struct.TYPE_17__* %141 to { i64, i64 }*
  %144 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %143, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = bitcast %struct.TYPE_17__* %142 to { i64, i64 }*
  %149 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 16
  %151 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %148, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  %153 = call i32 @C_ADDTO(i64 %145, i64 %147, i64 %150, i64 %152)
  %154 = getelementptr inbounds [6 x %struct.TYPE_17__], [6 x %struct.TYPE_17__]* %12, i64 0, i64 3
  %155 = getelementptr inbounds [6 x %struct.TYPE_17__], [6 x %struct.TYPE_17__]* %12, i64 0, i64 0
  %156 = getelementptr inbounds [6 x %struct.TYPE_17__], [6 x %struct.TYPE_17__]* %12, i64 0, i64 2
  %157 = bitcast %struct.TYPE_17__* %154 to { i64, i64 }*
  %158 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 16
  %160 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %157, i32 0, i32 1
  %161 = load i64, i64* %160, align 8
  %162 = bitcast %struct.TYPE_17__* %155 to { i64, i64 }*
  %163 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 16
  %165 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %162, i32 0, i32 1
  %166 = load i64, i64* %165, align 8
  %167 = bitcast %struct.TYPE_17__* %156 to { i64, i64 }*
  %168 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 16
  %170 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %167, i32 0, i32 1
  %171 = load i64, i64* %170, align 8
  %172 = call i32 @C_ADD(i64 %159, i64 %161, i64 %164, i64 %166, i64 %169, i64 %171)
  %173 = getelementptr inbounds [6 x %struct.TYPE_17__], [6 x %struct.TYPE_17__]* %12, i64 0, i64 4
  %174 = getelementptr inbounds [6 x %struct.TYPE_17__], [6 x %struct.TYPE_17__]* %12, i64 0, i64 0
  %175 = getelementptr inbounds [6 x %struct.TYPE_17__], [6 x %struct.TYPE_17__]* %12, i64 0, i64 2
  %176 = bitcast %struct.TYPE_17__* %173 to { i64, i64 }*
  %177 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 16
  %179 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %176, i32 0, i32 1
  %180 = load i64, i64* %179, align 8
  %181 = bitcast %struct.TYPE_17__* %174 to { i64, i64 }*
  %182 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 16
  %184 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %181, i32 0, i32 1
  %185 = load i64, i64* %184, align 8
  %186 = bitcast %struct.TYPE_17__* %175 to { i64, i64 }*
  %187 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %186, i32 0, i32 0
  %188 = load i64, i64* %187, align 16
  %189 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %186, i32 0, i32 1
  %190 = load i64, i64* %189, align 8
  %191 = call i32 @C_SUB(i64 %178, i64 %180, i64 %183, i64 %185, i64 %188, i64 %190)
  %192 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %193 = load i64, i64* %14, align 8
  %194 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %192, i64 %193
  %195 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %196 = getelementptr inbounds [6 x %struct.TYPE_17__], [6 x %struct.TYPE_17__]* %12, i64 0, i64 3
  %197 = bitcast %struct.TYPE_17__* %194 to { i64, i64 }*
  %198 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %197, i32 0, i32 0
  %199 = load i64, i64* %198, align 8
  %200 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %197, i32 0, i32 1
  %201 = load i64, i64* %200, align 8
  %202 = bitcast %struct.TYPE_17__* %195 to { i64, i64 }*
  %203 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %202, i32 0, i32 0
  %204 = load i64, i64* %203, align 8
  %205 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %202, i32 0, i32 1
  %206 = load i64, i64* %205, align 8
  %207 = bitcast %struct.TYPE_17__* %196 to { i64, i64 }*
  %208 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %207, i32 0, i32 0
  %209 = load i64, i64* %208, align 16
  %210 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %207, i32 0, i32 1
  %211 = load i64, i64* %210, align 8
  %212 = call i32 @C_SUB(i64 %199, i64 %201, i64 %204, i64 %206, i64 %209, i64 %211)
  %213 = load i64, i64* %6, align 8
  %214 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %215 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %214, i64 %213
  store %struct.TYPE_17__* %215, %struct.TYPE_17__** %9, align 8
  %216 = load i64, i64* %6, align 8
  %217 = mul i64 %216, 2
  %218 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %219 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %218, i64 %217
  store %struct.TYPE_17__* %219, %struct.TYPE_17__** %10, align 8
  %220 = load i64, i64* %6, align 8
  %221 = mul i64 %220, 3
  %222 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %223 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %222, i64 %221
  store %struct.TYPE_17__* %223, %struct.TYPE_17__** %11, align 8
  %224 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %225 = getelementptr inbounds [6 x %struct.TYPE_17__], [6 x %struct.TYPE_17__]* %12, i64 0, i64 3
  %226 = bitcast %struct.TYPE_17__* %224 to { i64, i64 }*
  %227 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %226, i32 0, i32 0
  %228 = load i64, i64* %227, align 8
  %229 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %226, i32 0, i32 1
  %230 = load i64, i64* %229, align 8
  %231 = bitcast %struct.TYPE_17__* %225 to { i64, i64 }*
  %232 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %231, i32 0, i32 0
  %233 = load i64, i64* %232, align 16
  %234 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %231, i32 0, i32 1
  %235 = load i64, i64* %234, align 8
  %236 = call i32 @C_ADDTO(i64 %228, i64 %230, i64 %233, i64 %235)
  %237 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %238 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %237, i32 0, i32 0
  %239 = load i64, i64* %238, align 8
  %240 = icmp ne i64 %239, 0
  br i1 %240, label %241, label %286

241:                                              ; preds = %24
  %242 = getelementptr inbounds [6 x %struct.TYPE_17__], [6 x %struct.TYPE_17__]* %12, i64 0, i64 5
  %243 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %242, i32 0, i32 0
  %244 = load i64, i64* %243, align 16
  %245 = getelementptr inbounds [6 x %struct.TYPE_17__], [6 x %struct.TYPE_17__]* %12, i64 0, i64 4
  %246 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %245, i32 0, i32 1
  %247 = load i64, i64* %246, align 8
  %248 = sub nsw i64 %244, %247
  %249 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %250 = load i64, i64* %8, align 8
  %251 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %249, i64 %250
  %252 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %251, i32 0, i32 0
  store i64 %248, i64* %252, align 8
  %253 = getelementptr inbounds [6 x %struct.TYPE_17__], [6 x %struct.TYPE_17__]* %12, i64 0, i64 5
  %254 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %253, i32 0, i32 1
  %255 = load i64, i64* %254, align 8
  %256 = getelementptr inbounds [6 x %struct.TYPE_17__], [6 x %struct.TYPE_17__]* %12, i64 0, i64 4
  %257 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %256, i32 0, i32 0
  %258 = load i64, i64* %257, align 16
  %259 = add nsw i64 %255, %258
  %260 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %261 = load i64, i64* %8, align 8
  %262 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %260, i64 %261
  %263 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %262, i32 0, i32 1
  store i64 %259, i64* %263, align 8
  %264 = getelementptr inbounds [6 x %struct.TYPE_17__], [6 x %struct.TYPE_17__]* %12, i64 0, i64 5
  %265 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %264, i32 0, i32 0
  %266 = load i64, i64* %265, align 16
  %267 = getelementptr inbounds [6 x %struct.TYPE_17__], [6 x %struct.TYPE_17__]* %12, i64 0, i64 4
  %268 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %267, i32 0, i32 1
  %269 = load i64, i64* %268, align 8
  %270 = add nsw i64 %266, %269
  %271 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %272 = load i64, i64* %15, align 8
  %273 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %271, i64 %272
  %274 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %273, i32 0, i32 0
  store i64 %270, i64* %274, align 8
  %275 = getelementptr inbounds [6 x %struct.TYPE_17__], [6 x %struct.TYPE_17__]* %12, i64 0, i64 5
  %276 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %275, i32 0, i32 1
  %277 = load i64, i64* %276, align 8
  %278 = getelementptr inbounds [6 x %struct.TYPE_17__], [6 x %struct.TYPE_17__]* %12, i64 0, i64 4
  %279 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %278, i32 0, i32 0
  %280 = load i64, i64* %279, align 16
  %281 = sub nsw i64 %277, %280
  %282 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %283 = load i64, i64* %15, align 8
  %284 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %282, i64 %283
  %285 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %284, i32 0, i32 1
  store i64 %281, i64* %285, align 8
  br label %331

286:                                              ; preds = %24
  %287 = getelementptr inbounds [6 x %struct.TYPE_17__], [6 x %struct.TYPE_17__]* %12, i64 0, i64 5
  %288 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %287, i32 0, i32 0
  %289 = load i64, i64* %288, align 16
  %290 = getelementptr inbounds [6 x %struct.TYPE_17__], [6 x %struct.TYPE_17__]* %12, i64 0, i64 4
  %291 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %290, i32 0, i32 1
  %292 = load i64, i64* %291, align 8
  %293 = add nsw i64 %289, %292
  %294 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %295 = load i64, i64* %8, align 8
  %296 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %294, i64 %295
  %297 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %296, i32 0, i32 0
  store i64 %293, i64* %297, align 8
  %298 = getelementptr inbounds [6 x %struct.TYPE_17__], [6 x %struct.TYPE_17__]* %12, i64 0, i64 5
  %299 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %298, i32 0, i32 1
  %300 = load i64, i64* %299, align 8
  %301 = getelementptr inbounds [6 x %struct.TYPE_17__], [6 x %struct.TYPE_17__]* %12, i64 0, i64 4
  %302 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %301, i32 0, i32 0
  %303 = load i64, i64* %302, align 16
  %304 = sub nsw i64 %300, %303
  %305 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %306 = load i64, i64* %8, align 8
  %307 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %305, i64 %306
  %308 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %307, i32 0, i32 1
  store i64 %304, i64* %308, align 8
  %309 = getelementptr inbounds [6 x %struct.TYPE_17__], [6 x %struct.TYPE_17__]* %12, i64 0, i64 5
  %310 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %309, i32 0, i32 0
  %311 = load i64, i64* %310, align 16
  %312 = getelementptr inbounds [6 x %struct.TYPE_17__], [6 x %struct.TYPE_17__]* %12, i64 0, i64 4
  %313 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %312, i32 0, i32 1
  %314 = load i64, i64* %313, align 8
  %315 = sub nsw i64 %311, %314
  %316 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %317 = load i64, i64* %15, align 8
  %318 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %316, i64 %317
  %319 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %318, i32 0, i32 0
  store i64 %315, i64* %319, align 8
  %320 = getelementptr inbounds [6 x %struct.TYPE_17__], [6 x %struct.TYPE_17__]* %12, i64 0, i64 5
  %321 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %320, i32 0, i32 1
  %322 = load i64, i64* %321, align 8
  %323 = getelementptr inbounds [6 x %struct.TYPE_17__], [6 x %struct.TYPE_17__]* %12, i64 0, i64 4
  %324 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %323, i32 0, i32 0
  %325 = load i64, i64* %324, align 16
  %326 = add nsw i64 %322, %325
  %327 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %328 = load i64, i64* %15, align 8
  %329 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %327, i64 %328
  %330 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %329, i32 0, i32 1
  store i64 %326, i64* %330, align 8
  br label %331

331:                                              ; preds = %286, %241
  %332 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %333 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %332, i32 1
  store %struct.TYPE_17__* %333, %struct.TYPE_17__** %5, align 8
  br label %334

334:                                              ; preds = %331
  %335 = load i64, i64* %13, align 8
  %336 = add i64 %335, -1
  store i64 %336, i64* %13, align 8
  %337 = icmp ne i64 %336, 0
  br i1 %337, label %24, label %338

338:                                              ; preds = %334
  ret void
}

declare dso_local i32 @C_FIXDIV(i64, i64, i32) #1

declare dso_local i32 @C_MUL(i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @C_SUB(i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @C_ADDTO(i64, i64, i64, i64) #1

declare dso_local i32 @C_ADD(i64, i64, i64, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
