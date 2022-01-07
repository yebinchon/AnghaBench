; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_ipc_voucher.c_ivace_release.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_ipc_voucher.c_ivace_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64, i64, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64, i32, i64, i64, i64, i8*, i8*, i64 }
%struct.TYPE_13__ = type { i64 (%struct.TYPE_13__*, i64, i32, i64)* }

@IV_UNUSED_VALINDEX = common dso_local global i64 0, align 8
@FALSE = common dso_local global i8* null, align 8
@IVAC_NULL = common dso_local global %struct.TYPE_14__* null, align 8
@IVAM_NULL = common dso_local global %struct.TYPE_13__* null, align 8
@MACH_VOUCHER_ATTR_KEY_NONE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i8* null, align 8
@KERN_SUCCESS = common dso_local global i64 0, align 8
@IV_HASH_END = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64)* @ivace_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ivace_release(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_12__*, align 8
  %12 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %13 = load i64, i64* @IV_UNUSED_VALINDEX, align 8
  %14 = load i64, i64* %4, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  br label %267

17:                                               ; preds = %2
  %18 = load i64, i64* %3, align 8
  %19 = load i8*, i8** @FALSE, align 8
  %20 = call i32 @ivgt_lookup(i64 %18, i8* %19, %struct.TYPE_13__** %6, %struct.TYPE_14__** %5)
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** @IVAC_NULL, align 8
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %23 = icmp ne %struct.TYPE_14__* %21, %22
  %24 = zext i1 %23 to i32
  %25 = call i32 @assert(i32 %24)
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** @IVAM_NULL, align 8
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %28 = icmp ne %struct.TYPE_13__* %26, %27
  %29 = zext i1 %28 to i32
  %30 = call i32 @assert(i32 %29)
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %32 = call i32 @ivac_lock(%struct.TYPE_14__* %31)
  %33 = load i64, i64* %4, align 8
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ult i64 %33, %36
  %38 = zext i1 %37 to i32
  %39 = call i32 @assert(i32 %38)
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 2
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %41, align 8
  %43 = load i64, i64* %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i64 %43
  store %struct.TYPE_12__* %44, %struct.TYPE_12__** %11, align 8
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp slt i64 0, %47
  %49 = zext i1 %48 to i32
  %50 = call i32 @assert(i32 %49)
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 7
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %17
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %57 = call i32 @ivac_unlock(%struct.TYPE_14__* %56)
  br label %267

58:                                               ; preds = %17
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = add nsw i64 %61, -1
  store i64 %62, i64* %60, align 8
  %63 = icmp slt i64 0, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %58
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %66 = call i32 @ivac_unlock(%struct.TYPE_14__* %65)
  br label %267

67:                                               ; preds = %58
  %68 = load i64, i64* %3, align 8
  %69 = call i64 @iv_index_to_key(i64 %68)
  store i64 %69, i64* %9, align 8
  %70 = load i64, i64* @MACH_VOUCHER_ATTR_KEY_NONE, align 8
  %71 = load i64, i64* %9, align 8
  %72 = icmp ne i64 %70, %71
  %73 = zext i1 %72 to i32
  %74 = call i32 @assert(i32 %73)
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 6
  %77 = load i8*, i8** %76, align 8
  %78 = icmp ne i8* %77, null
  br i1 %78, label %79, label %82

79:                                               ; preds = %67
  %80 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %81 = call i32 @ivac_unlock(%struct.TYPE_14__* %80)
  br label %267

82:                                               ; preds = %67
  %83 = load i8*, i8** @TRUE, align 8
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 6
  store i8* %83, i8** %85, align 8
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  store i32 %88, i32* %7, align 4
  br label %89

89:                                               ; preds = %151, %82
  %90 = load i32, i32* %7, align 4
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = icmp eq i32 %90, %93
  %95 = zext i1 %94 to i32
  %96 = call i32 @assert(i32 %95)
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 5
  %99 = load i8*, i8** %98, align 8
  %100 = icmp ne i8* %99, null
  %101 = xor i1 %100, true
  %102 = zext i1 %101 to i32
  %103 = call i32 @assert(i32 %102)
  %104 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  store i64 %106, i64* %8, align 8
  %107 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %108 = call i32 @ivac_unlock(%struct.TYPE_14__* %107)
  %109 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %109, i32 0, i32 0
  %111 = load i64 (%struct.TYPE_13__*, i64, i32, i64)*, i64 (%struct.TYPE_13__*, i64, i32, i64)** %110, align 8
  %112 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %113 = load i64, i64* %9, align 8
  %114 = load i32, i32* %7, align 4
  %115 = load i64, i64* %8, align 8
  %116 = call i64 %111(%struct.TYPE_13__* %112, i64 %113, i32 %114, i64 %115)
  store i64 %116, i64* %12, align 8
  %117 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %118 = call i32 @ivac_lock(%struct.TYPE_14__* %117)
  %119 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %119, i32 0, i32 2
  %121 = load %struct.TYPE_12__*, %struct.TYPE_12__** %120, align 8
  %122 = load i64, i64* %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i64 %122
  store %struct.TYPE_12__* %123, %struct.TYPE_12__** %11, align 8
  %124 = load i32, i32* %7, align 4
  %125 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %126 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 8
  %128 = icmp eq i32 %124, %127
  %129 = zext i1 %128 to i32
  %130 = call i32 @assert(i32 %129)
  %131 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %132 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %131, i32 0, i32 2
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* %8, align 8
  %135 = icmp ne i64 %133, %134
  br i1 %135, label %136, label %158

136:                                              ; preds = %89
  %137 = load i64, i64* @KERN_SUCCESS, align 8
  %138 = load i64, i64* %12, align 8
  %139 = icmp eq i64 %137, %138
  br i1 %139, label %140, label %146

140:                                              ; preds = %136
  %141 = load i64, i64* %8, align 8
  %142 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %143 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %142, i32 0, i32 2
  %144 = load i64, i64* %143, align 8
  %145 = sub nsw i64 %144, %141
  store i64 %145, i64* %143, align 8
  br label %146

146:                                              ; preds = %140, %136
  %147 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %148 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = icmp eq i64 0, %149
  br i1 %150, label %151, label %152

151:                                              ; preds = %146
  br label %89

152:                                              ; preds = %146
  %153 = load i8*, i8** @FALSE, align 8
  %154 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %155 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %154, i32 0, i32 6
  store i8* %153, i8** %155, align 8
  %156 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %157 = call i32 @ivac_unlock(%struct.TYPE_14__* %156)
  br label %267

158:                                              ; preds = %89
  %159 = load i64, i64* @KERN_SUCCESS, align 8
  %160 = load i64, i64* %12, align 8
  %161 = icmp ne i64 %159, %160
  br i1 %161, label %162, label %168

162:                                              ; preds = %158
  %163 = load i8*, i8** @FALSE, align 8
  %164 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %165 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %164, i32 0, i32 6
  store i8* %163, i8** %165, align 8
  %166 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %167 = call i32 @ivac_unlock(%struct.TYPE_14__* %166)
  br label %267

168:                                              ; preds = %158
  br label %169

169:                                              ; preds = %168
  %170 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %171 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = icmp eq i64 0, %172
  %174 = zext i1 %173 to i32
  %175 = call i32 @assert(i32 %174)
  %176 = load i64, i64* %3, align 8
  %177 = load i32, i32* %7, align 4
  %178 = call i64 @iv_hash_value(i64 %176, i32 %177)
  store i64 %178, i64* %10, align 8
  %179 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %180 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %179, i32 0, i32 2
  %181 = load %struct.TYPE_12__*, %struct.TYPE_12__** %180, align 8
  %182 = load i64, i64* %10, align 8
  %183 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %181, i64 %182
  %184 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %183, i32 0, i32 3
  %185 = load i64, i64* %184, align 8
  %186 = load i64, i64* %4, align 8
  %187 = icmp eq i64 %185, %186
  br i1 %187, label %188, label %198

188:                                              ; preds = %169
  %189 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %190 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %189, i32 0, i32 4
  %191 = load i64, i64* %190, align 8
  %192 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %193 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %192, i32 0, i32 2
  %194 = load %struct.TYPE_12__*, %struct.TYPE_12__** %193, align 8
  %195 = load i64, i64* %10, align 8
  %196 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %194, i64 %195
  %197 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %196, i32 0, i32 3
  store i64 %191, i64* %197, align 8
  br label %244

198:                                              ; preds = %169
  %199 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %200 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %199, i32 0, i32 2
  %201 = load %struct.TYPE_12__*, %struct.TYPE_12__** %200, align 8
  %202 = load i64, i64* %10, align 8
  %203 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %201, i64 %202
  %204 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %203, i32 0, i32 3
  %205 = load i64, i64* %204, align 8
  store i64 %205, i64* %10, align 8
  %206 = load i64, i64* @IV_HASH_END, align 8
  %207 = load i64, i64* %10, align 8
  %208 = icmp ne i64 %206, %207
  %209 = zext i1 %208 to i32
  %210 = call i32 @assert(i32 %209)
  br label %211

211:                                              ; preds = %221, %198
  %212 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %213 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %212, i32 0, i32 2
  %214 = load %struct.TYPE_12__*, %struct.TYPE_12__** %213, align 8
  %215 = load i64, i64* %10, align 8
  %216 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %214, i64 %215
  %217 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %216, i32 0, i32 4
  %218 = load i64, i64* %217, align 8
  %219 = load i64, i64* %4, align 8
  %220 = icmp ne i64 %218, %219
  br i1 %220, label %221, label %234

221:                                              ; preds = %211
  %222 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %223 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %222, i32 0, i32 2
  %224 = load %struct.TYPE_12__*, %struct.TYPE_12__** %223, align 8
  %225 = load i64, i64* %10, align 8
  %226 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %224, i64 %225
  %227 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %226, i32 0, i32 4
  %228 = load i64, i64* %227, align 8
  store i64 %228, i64* %10, align 8
  %229 = load i64, i64* @IV_HASH_END, align 8
  %230 = load i64, i64* %10, align 8
  %231 = icmp ne i64 %229, %230
  %232 = zext i1 %231 to i32
  %233 = call i32 @assert(i32 %232)
  br label %211

234:                                              ; preds = %211
  %235 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %236 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %235, i32 0, i32 4
  %237 = load i64, i64* %236, align 8
  %238 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %239 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %238, i32 0, i32 2
  %240 = load %struct.TYPE_12__*, %struct.TYPE_12__** %239, align 8
  %241 = load i64, i64* %10, align 8
  %242 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %240, i64 %241
  %243 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %242, i32 0, i32 4
  store i64 %237, i64* %243, align 8
  br label %244

244:                                              ; preds = %234, %188
  %245 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %246 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %245, i32 0, i32 1
  store i32 -559038242, i32* %246, align 8
  %247 = load i8*, i8** @FALSE, align 8
  %248 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %249 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %248, i32 0, i32 6
  store i8* %247, i8** %249, align 8
  %250 = load i8*, i8** @TRUE, align 8
  %251 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %252 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %251, i32 0, i32 5
  store i8* %250, i8** %252, align 8
  %253 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %254 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %253, i32 0, i32 2
  store i64 0, i64* %254, align 8
  %255 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %256 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %255, i32 0, i32 1
  %257 = load i64, i64* %256, align 8
  %258 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %259 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %258, i32 0, i32 4
  store i64 %257, i64* %259, align 8
  %260 = load i64, i64* %4, align 8
  %261 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %262 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %261, i32 0, i32 1
  store i64 %260, i64* %262, align 8
  %263 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %264 = call i32 @ivac_unlock(%struct.TYPE_14__* %263)
  %265 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %266 = call i32 @ivac_release(%struct.TYPE_14__* %265)
  br label %267

267:                                              ; preds = %244, %162, %152, %79, %64, %55, %16
  ret void
}

declare dso_local i32 @ivgt_lookup(i64, i8*, %struct.TYPE_13__**, %struct.TYPE_14__**) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ivac_lock(%struct.TYPE_14__*) #1

declare dso_local i32 @ivac_unlock(%struct.TYPE_14__*) #1

declare dso_local i64 @iv_index_to_key(i64) #1

declare dso_local i64 @iv_hash_value(i64, i32) #1

declare dso_local i32 @ivac_release(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
