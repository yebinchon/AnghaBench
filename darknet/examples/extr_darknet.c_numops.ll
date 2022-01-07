; ModuleID = '/home/carl/AnghaBench/darknet/examples/extr_darknet.c_numops.c'
source_filename = "/home/carl/AnghaBench/darknet/examples/extr_darknet.c_numops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_29__ = type { i32, %struct.TYPE_30__* }
%struct.TYPE_30__ = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.TYPE_28__*, %struct.TYPE_27__*, %struct.TYPE_26__*, %struct.TYPE_25__*, %struct.TYPE_24__*, %struct.TYPE_23__*, %struct.TYPE_22__*, %struct.TYPE_21__*, %struct.TYPE_39__*, %struct.TYPE_38__*, %struct.TYPE_37__*, %struct.TYPE_36__*, %struct.TYPE_35__*, %struct.TYPE_34__*, %struct.TYPE_33__*, %struct.TYPE_32__*, %struct.TYPE_31__* }
%struct.TYPE_28__ = type { i64, i64 }
%struct.TYPE_27__ = type { i64, i64 }
%struct.TYPE_26__ = type { i64, i64 }
%struct.TYPE_25__ = type { i64, i64 }
%struct.TYPE_24__ = type { i64, i64 }
%struct.TYPE_23__ = type { i64, i64 }
%struct.TYPE_22__ = type { i64, i64 }
%struct.TYPE_21__ = type { i64, i64 }
%struct.TYPE_39__ = type { i64, i64 }
%struct.TYPE_38__ = type { i64, i64 }
%struct.TYPE_37__ = type { i64, i64 }
%struct.TYPE_36__ = type { i64, i64 }
%struct.TYPE_35__ = type { i64, i64 }
%struct.TYPE_34__ = type { i64, i64 }
%struct.TYPE_33__ = type { i64, i64 }
%struct.TYPE_32__ = type { i64, i64 }
%struct.TYPE_31__ = type { i64, i64 }

@CONVOLUTIONAL = common dso_local global i64 0, align 8
@CONNECTED = common dso_local global i64 0, align 8
@RNN = common dso_local global i64 0, align 8
@GRU = common dso_local global i64 0, align 8
@LSTM = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @numops(%struct.TYPE_29__* %0) #0 {
  %2 = alloca %struct.TYPE_29__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_30__, align 8
  store %struct.TYPE_29__* %0, %struct.TYPE_29__** %2, align 8
  store i64 0, i64* %4, align 8
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %290, %1
  %7 = load i32, i32* %3, align 4
  %8 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp slt i32 %7, %10
  br i1 %11, label %12, label %293

12:                                               ; preds = %6
  %13 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_30__*, %struct.TYPE_30__** %14, align 8
  %16 = load i32, i32* %3, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %15, i64 %17
  %19 = bitcast %struct.TYPE_30__* %5 to i8*
  %20 = bitcast %struct.TYPE_30__* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %19, i8* align 8 %20, i64 208, i1 false)
  %21 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %5, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @CONVOLUTIONAL, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %49

25:                                               ; preds = %12
  %26 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %5, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = mul nsw i64 2, %27
  %29 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %5, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = mul nsw i64 %28, %30
  %32 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %5, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = mul nsw i64 %31, %33
  %35 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %5, i32 0, i32 3
  %36 = load i64, i64* %35, align 8
  %37 = mul nsw i64 %34, %36
  %38 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %5, i32 0, i32 4
  %39 = load i64, i64* %38, align 8
  %40 = sdiv i64 %37, %39
  %41 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %5, i32 0, i32 5
  %42 = load i64, i64* %41, align 8
  %43 = mul nsw i64 %40, %42
  %44 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %5, i32 0, i32 6
  %45 = load i64, i64* %44, align 8
  %46 = mul nsw i64 %43, %45
  %47 = load i64, i64* %4, align 8
  %48 = add nsw i64 %47, %46
  store i64 %48, i64* %4, align 8
  br label %289

49:                                               ; preds = %12
  %50 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %5, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @CONNECTED, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %63

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %5, i32 0, i32 7
  %56 = load i64, i64* %55, align 8
  %57 = mul nsw i64 2, %56
  %58 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %5, i32 0, i32 8
  %59 = load i64, i64* %58, align 8
  %60 = mul nsw i64 %57, %59
  %61 = load i64, i64* %4, align 8
  %62 = add nsw i64 %61, %60
  store i64 %62, i64* %4, align 8
  br label %288

63:                                               ; preds = %49
  %64 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %5, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @RNN, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %105

68:                                               ; preds = %63
  %69 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %5, i32 0, i32 25
  %70 = load %struct.TYPE_31__*, %struct.TYPE_31__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = mul nsw i64 2, %72
  %74 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %5, i32 0, i32 25
  %75 = load %struct.TYPE_31__*, %struct.TYPE_31__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = mul nsw i64 %73, %77
  %79 = load i64, i64* %4, align 8
  %80 = add nsw i64 %79, %78
  store i64 %80, i64* %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %5, i32 0, i32 24
  %82 = load %struct.TYPE_32__*, %struct.TYPE_32__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = mul nsw i64 2, %84
  %86 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %5, i32 0, i32 24
  %87 = load %struct.TYPE_32__*, %struct.TYPE_32__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = mul nsw i64 %85, %89
  %91 = load i64, i64* %4, align 8
  %92 = add nsw i64 %91, %90
  store i64 %92, i64* %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %5, i32 0, i32 23
  %94 = load %struct.TYPE_33__*, %struct.TYPE_33__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = mul nsw i64 2, %96
  %98 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %5, i32 0, i32 23
  %99 = load %struct.TYPE_33__*, %struct.TYPE_33__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = mul nsw i64 %97, %101
  %103 = load i64, i64* %4, align 8
  %104 = add nsw i64 %103, %102
  store i64 %104, i64* %4, align 8
  br label %287

105:                                              ; preds = %63
  %106 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %5, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @GRU, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %183

110:                                              ; preds = %105
  %111 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %5, i32 0, i32 22
  %112 = load %struct.TYPE_34__*, %struct.TYPE_34__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = mul nsw i64 2, %114
  %116 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %5, i32 0, i32 22
  %117 = load %struct.TYPE_34__*, %struct.TYPE_34__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = mul nsw i64 %115, %119
  %121 = load i64, i64* %4, align 8
  %122 = add nsw i64 %121, %120
  store i64 %122, i64* %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %5, i32 0, i32 21
  %124 = load %struct.TYPE_35__*, %struct.TYPE_35__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = mul nsw i64 2, %126
  %128 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %5, i32 0, i32 21
  %129 = load %struct.TYPE_35__*, %struct.TYPE_35__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = mul nsw i64 %127, %131
  %133 = load i64, i64* %4, align 8
  %134 = add nsw i64 %133, %132
  store i64 %134, i64* %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %5, i32 0, i32 20
  %136 = load %struct.TYPE_36__*, %struct.TYPE_36__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = mul nsw i64 2, %138
  %140 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %5, i32 0, i32 20
  %141 = load %struct.TYPE_36__*, %struct.TYPE_36__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %141, i32 0, i32 1
  %143 = load i64, i64* %142, align 8
  %144 = mul nsw i64 %139, %143
  %145 = load i64, i64* %4, align 8
  %146 = add nsw i64 %145, %144
  store i64 %146, i64* %4, align 8
  %147 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %5, i32 0, i32 19
  %148 = load %struct.TYPE_37__*, %struct.TYPE_37__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = mul nsw i64 2, %150
  %152 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %5, i32 0, i32 19
  %153 = load %struct.TYPE_37__*, %struct.TYPE_37__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %153, i32 0, i32 1
  %155 = load i64, i64* %154, align 8
  %156 = mul nsw i64 %151, %155
  %157 = load i64, i64* %4, align 8
  %158 = add nsw i64 %157, %156
  store i64 %158, i64* %4, align 8
  %159 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %5, i32 0, i32 18
  %160 = load %struct.TYPE_38__*, %struct.TYPE_38__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = mul nsw i64 2, %162
  %164 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %5, i32 0, i32 18
  %165 = load %struct.TYPE_38__*, %struct.TYPE_38__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %165, i32 0, i32 1
  %167 = load i64, i64* %166, align 8
  %168 = mul nsw i64 %163, %167
  %169 = load i64, i64* %4, align 8
  %170 = add nsw i64 %169, %168
  store i64 %170, i64* %4, align 8
  %171 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %5, i32 0, i32 17
  %172 = load %struct.TYPE_39__*, %struct.TYPE_39__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = mul nsw i64 2, %174
  %176 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %5, i32 0, i32 17
  %177 = load %struct.TYPE_39__*, %struct.TYPE_39__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %177, i32 0, i32 1
  %179 = load i64, i64* %178, align 8
  %180 = mul nsw i64 %175, %179
  %181 = load i64, i64* %4, align 8
  %182 = add nsw i64 %181, %180
  store i64 %182, i64* %4, align 8
  br label %286

183:                                              ; preds = %105
  %184 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %5, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = load i64, i64* @LSTM, align 8
  %187 = icmp eq i64 %185, %186
  br i1 %187, label %188, label %285

188:                                              ; preds = %183
  %189 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %5, i32 0, i32 16
  %190 = load %struct.TYPE_21__*, %struct.TYPE_21__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %190, i32 0, i32 0
  %192 = load i64, i64* %191, align 8
  %193 = mul nsw i64 2, %192
  %194 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %5, i32 0, i32 16
  %195 = load %struct.TYPE_21__*, %struct.TYPE_21__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %195, i32 0, i32 1
  %197 = load i64, i64* %196, align 8
  %198 = mul nsw i64 %193, %197
  %199 = load i64, i64* %4, align 8
  %200 = add nsw i64 %199, %198
  store i64 %200, i64* %4, align 8
  %201 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %5, i32 0, i32 15
  %202 = load %struct.TYPE_22__*, %struct.TYPE_22__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %202, i32 0, i32 0
  %204 = load i64, i64* %203, align 8
  %205 = mul nsw i64 2, %204
  %206 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %5, i32 0, i32 15
  %207 = load %struct.TYPE_22__*, %struct.TYPE_22__** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %207, i32 0, i32 1
  %209 = load i64, i64* %208, align 8
  %210 = mul nsw i64 %205, %209
  %211 = load i64, i64* %4, align 8
  %212 = add nsw i64 %211, %210
  store i64 %212, i64* %4, align 8
  %213 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %5, i32 0, i32 14
  %214 = load %struct.TYPE_23__*, %struct.TYPE_23__** %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %214, i32 0, i32 0
  %216 = load i64, i64* %215, align 8
  %217 = mul nsw i64 2, %216
  %218 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %5, i32 0, i32 14
  %219 = load %struct.TYPE_23__*, %struct.TYPE_23__** %218, align 8
  %220 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %219, i32 0, i32 1
  %221 = load i64, i64* %220, align 8
  %222 = mul nsw i64 %217, %221
  %223 = load i64, i64* %4, align 8
  %224 = add nsw i64 %223, %222
  store i64 %224, i64* %4, align 8
  %225 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %5, i32 0, i32 13
  %226 = load %struct.TYPE_24__*, %struct.TYPE_24__** %225, align 8
  %227 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %226, i32 0, i32 0
  %228 = load i64, i64* %227, align 8
  %229 = mul nsw i64 2, %228
  %230 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %5, i32 0, i32 13
  %231 = load %struct.TYPE_24__*, %struct.TYPE_24__** %230, align 8
  %232 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %231, i32 0, i32 1
  %233 = load i64, i64* %232, align 8
  %234 = mul nsw i64 %229, %233
  %235 = load i64, i64* %4, align 8
  %236 = add nsw i64 %235, %234
  store i64 %236, i64* %4, align 8
  %237 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %5, i32 0, i32 12
  %238 = load %struct.TYPE_25__*, %struct.TYPE_25__** %237, align 8
  %239 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %238, i32 0, i32 0
  %240 = load i64, i64* %239, align 8
  %241 = mul nsw i64 2, %240
  %242 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %5, i32 0, i32 12
  %243 = load %struct.TYPE_25__*, %struct.TYPE_25__** %242, align 8
  %244 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %243, i32 0, i32 1
  %245 = load i64, i64* %244, align 8
  %246 = mul nsw i64 %241, %245
  %247 = load i64, i64* %4, align 8
  %248 = add nsw i64 %247, %246
  store i64 %248, i64* %4, align 8
  %249 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %5, i32 0, i32 11
  %250 = load %struct.TYPE_26__*, %struct.TYPE_26__** %249, align 8
  %251 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %250, i32 0, i32 0
  %252 = load i64, i64* %251, align 8
  %253 = mul nsw i64 2, %252
  %254 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %5, i32 0, i32 11
  %255 = load %struct.TYPE_26__*, %struct.TYPE_26__** %254, align 8
  %256 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %255, i32 0, i32 1
  %257 = load i64, i64* %256, align 8
  %258 = mul nsw i64 %253, %257
  %259 = load i64, i64* %4, align 8
  %260 = add nsw i64 %259, %258
  store i64 %260, i64* %4, align 8
  %261 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %5, i32 0, i32 10
  %262 = load %struct.TYPE_27__*, %struct.TYPE_27__** %261, align 8
  %263 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %262, i32 0, i32 0
  %264 = load i64, i64* %263, align 8
  %265 = mul nsw i64 2, %264
  %266 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %5, i32 0, i32 10
  %267 = load %struct.TYPE_27__*, %struct.TYPE_27__** %266, align 8
  %268 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %267, i32 0, i32 1
  %269 = load i64, i64* %268, align 8
  %270 = mul nsw i64 %265, %269
  %271 = load i64, i64* %4, align 8
  %272 = add nsw i64 %271, %270
  store i64 %272, i64* %4, align 8
  %273 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %5, i32 0, i32 9
  %274 = load %struct.TYPE_28__*, %struct.TYPE_28__** %273, align 8
  %275 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %274, i32 0, i32 0
  %276 = load i64, i64* %275, align 8
  %277 = mul nsw i64 2, %276
  %278 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %5, i32 0, i32 9
  %279 = load %struct.TYPE_28__*, %struct.TYPE_28__** %278, align 8
  %280 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %279, i32 0, i32 1
  %281 = load i64, i64* %280, align 8
  %282 = mul nsw i64 %277, %281
  %283 = load i64, i64* %4, align 8
  %284 = add nsw i64 %283, %282
  store i64 %284, i64* %4, align 8
  br label %285

285:                                              ; preds = %188, %183
  br label %286

286:                                              ; preds = %285, %110
  br label %287

287:                                              ; preds = %286, %68
  br label %288

288:                                              ; preds = %287, %54
  br label %289

289:                                              ; preds = %288, %25
  br label %290

290:                                              ; preds = %289
  %291 = load i32, i32* %3, align 4
  %292 = add nsw i32 %291, 1
  store i32 %292, i32* %3, align 4
  br label %6

293:                                              ; preds = %6
  %294 = load i64, i64* %4, align 8
  ret i64 %294
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
