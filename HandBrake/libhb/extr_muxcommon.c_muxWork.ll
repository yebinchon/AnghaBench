; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_muxcommon.c_muxWork.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_muxcommon.c_muxWork.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i32*, %struct.TYPE_24__* }
%struct.TYPE_24__ = type { i32, %struct.TYPE_27__*, %struct.TYPE_28__* }
%struct.TYPE_27__ = type { i32, i64, i32, i64, i64, i32, %struct.TYPE_26__**, i32*, i32*, i32*, i32*, i32 }
%struct.TYPE_26__ = type { %struct.TYPE_23__ }
%struct.TYPE_23__ = type { i32, i32, i32, %struct.TYPE_22__** }
%struct.TYPE_22__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i64 }
%struct.TYPE_28__ = type { i64 }
%struct.TYPE_19__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i32 }

@HB_WORK_DONE = common dso_local global i32 0, align 4
@HB_BUF_FLAG_EOF = common dso_local global i32 0, align 4
@HB_PASS_ENCODE = common dso_local global i64 0, align 8
@HB_PASS_ENCODE_2ND = common dso_local global i64 0, align 8
@HB_WORK_OK = common dso_local global i32 0, align 4
@MIN_BUFFERING = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_25__*, %struct.TYPE_19__**, %struct.TYPE_19__**)* @muxWork to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @muxWork(%struct.TYPE_25__* %0, %struct.TYPE_19__** %1, %struct.TYPE_19__** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_25__*, align 8
  %6 = alloca %struct.TYPE_19__**, align 8
  %7 = alloca %struct.TYPE_19__**, align 8
  %8 = alloca %struct.TYPE_24__*, align 8
  %9 = alloca %struct.TYPE_28__*, align 8
  %10 = alloca %struct.TYPE_27__*, align 8
  %11 = alloca %struct.TYPE_26__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_19__*, align 8
  %14 = alloca i32*, align 8
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %5, align 8
  store %struct.TYPE_19__** %1, %struct.TYPE_19__*** %6, align 8
  store %struct.TYPE_19__** %2, %struct.TYPE_19__*** %7, align 8
  %15 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  store %struct.TYPE_24__* %17, %struct.TYPE_24__** %8, align 8
  %18 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %18, i32 0, i32 2
  %20 = load %struct.TYPE_28__*, %struct.TYPE_28__** %19, align 8
  store %struct.TYPE_28__* %20, %struct.TYPE_28__** %9, align 8
  %21 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_27__*, %struct.TYPE_27__** %22, align 8
  store %struct.TYPE_27__* %23, %struct.TYPE_27__** %10, align 8
  %24 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %6, align 8
  %25 = load %struct.TYPE_19__*, %struct.TYPE_19__** %24, align 8
  store %struct.TYPE_19__* %25, %struct.TYPE_19__** %13, align 8
  %26 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %27 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %26, i32 0, i32 5
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @hb_lock(i32 %28)
  %30 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %3
  %35 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %35, i32 0, i32 5
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @hb_unlock(i32 %37)
  %39 = load i32, i32* @HB_WORK_DONE, align 4
  store i32 %39, i32* %4, align 4
  br label %348

40:                                               ; preds = %3
  %41 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %42 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @HB_BUF_FLAG_EOF, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %64

48:                                               ; preds = %40
  %49 = call i32 @hb_buffer_close(%struct.TYPE_19__** %13)
  %50 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %50, i32 0, i32 8
  %52 = load i32*, i32** %51, align 8
  %53 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @hb_bitvec_set(i32* %52, i32 %55)
  %57 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %58 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %57, i32 0, i32 9
  %59 = load i32*, i32** %58, align 8
  %60 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @hb_bitvec_set(i32* %59, i32 %62)
  br label %95

64:                                               ; preds = %40
  %65 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @HB_PASS_ENCODE, align 8
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %70, label %76

70:                                               ; preds = %64
  %71 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %72 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @HB_PASS_ENCODE_2ND, align 8
  %75 = icmp ne i64 %73, %74
  br i1 %75, label %85, label %76

76:                                               ; preds = %70, %64
  %77 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %78 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %77, i32 0, i32 8
  %79 = load i32*, i32** %78, align 8
  %80 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i64 @hb_bitvec_bit(i32* %79, i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %76, %70
  %86 = call i32 @hb_buffer_close(%struct.TYPE_19__** %13)
  br label %94

87:                                               ; preds = %76
  %88 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %92 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %93 = call i32 @MoveToInternalFifos(i32 %90, %struct.TYPE_27__* %91, %struct.TYPE_19__* %92)
  br label %94

94:                                               ; preds = %87, %85
  br label %95

95:                                               ; preds = %94, %48
  %96 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %6, align 8
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %96, align 8
  %97 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %98 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %97, i32 0, i32 9
  %99 = load i32*, i32** %98, align 8
  %100 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %101 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %100, i32 0, i32 10
  %102 = load i32*, i32** %101, align 8
  %103 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %104 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %103, i32 0, i32 10
  %105 = load i32*, i32** %104, align 8
  %106 = call i64 @hb_bitvec_and_cmp(i32* %99, i32* %102, i32* %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %126, label %108

108:                                              ; preds = %95
  %109 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %110 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %109, i32 0, i32 8
  %111 = load i32*, i32** %110, align 8
  %112 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %113 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %112, i32 0, i32 7
  %114 = load i32*, i32** %113, align 8
  %115 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %116 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %115, i32 0, i32 7
  %117 = load i32*, i32** %116, align 8
  %118 = call i64 @hb_bitvec_and_cmp(i32* %111, i32* %114, i32* %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %126, label %120

120:                                              ; preds = %108
  %121 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %122 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %121, i32 0, i32 5
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @hb_unlock(i32 %123)
  %125 = load i32, i32* @HB_WORK_OK, align 4
  store i32 %125, i32* %4, align 4
  br label %348

126:                                              ; preds = %108, %95
  %127 = call i32* @hb_bitvec_new(i32 0)
  store i32* %127, i32** %14, align 8
  %128 = load i32*, i32** %14, align 8
  %129 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %130 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %129, i32 0, i32 9
  %131 = load i32*, i32** %130, align 8
  %132 = call i32 @hb_bitvec_cpy(i32* %128, i32* %131)
  br label %133

133:                                              ; preds = %333, %126
  %134 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %135 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %134, i32 0, i32 9
  %136 = load i32*, i32** %135, align 8
  %137 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %138 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %137, i32 0, i32 10
  %139 = load i32*, i32** %138, align 8
  %140 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %141 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %140, i32 0, i32 10
  %142 = load i32*, i32** %141, align 8
  %143 = call i64 @hb_bitvec_and_cmp(i32* %136, i32* %139, i32* %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %155

145:                                              ; preds = %133
  %146 = load i32*, i32** %14, align 8
  %147 = call i64 @hb_bitvec_any(i32* %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %155

149:                                              ; preds = %145
  %150 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %151 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %150, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  %153 = load i64, i64* @MIN_BUFFERING, align 8
  %154 = icmp sgt i64 %152, %153
  br i1 %154, label %164, label %155

155:                                              ; preds = %149, %145, %133
  %156 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %157 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %156, i32 0, i32 8
  %158 = load i32*, i32** %157, align 8
  %159 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %160 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %159, i32 0, i32 7
  %161 = load i32*, i32** %160, align 8
  %162 = call i64 @hb_bitvec_cmp(i32* %158, i32* %161)
  %163 = icmp ne i64 %162, 0
  br label %164

164:                                              ; preds = %155, %149
  %165 = phi i1 [ true, %149 ], [ %163, %155 ]
  br i1 %165, label %166, label %341

166:                                              ; preds = %164
  %167 = load i32*, i32** %14, align 8
  %168 = call i32 @hb_bitvec_zero(i32* %167)
  store i32 0, i32* %12, align 4
  br label %169

169:                                              ; preds = %268, %166
  %170 = load i32, i32* %12, align 4
  %171 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %172 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 8
  %174 = icmp slt i32 %170, %173
  br i1 %174, label %175, label %271

175:                                              ; preds = %169
  %176 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %177 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %176, i32 0, i32 6
  %178 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %177, align 8
  %179 = load i32, i32* %12, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds %struct.TYPE_26__*, %struct.TYPE_26__** %178, i64 %180
  %182 = load %struct.TYPE_26__*, %struct.TYPE_26__** %181, align 8
  store %struct.TYPE_26__* %182, %struct.TYPE_26__** %11, align 8
  %183 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %184 = load i32, i32* %12, align 4
  %185 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %186 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %185, i32 0, i32 11
  %187 = load i32, i32* %186, align 8
  %188 = call i32 @OutputTrackChunk(%struct.TYPE_27__* %183, i32 %184, i32 %187)
  %189 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %190 = call i64 @mf_full(%struct.TYPE_26__* %189)
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %200

192:                                              ; preds = %175
  %193 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %194 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %193, i32 0, i32 9
  %195 = load i32*, i32** %194, align 8
  %196 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %197 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %196, i32 0, i32 10
  %198 = load i32*, i32** %197, align 8
  %199 = call i32 @hb_bitvec_cpy(i32* %195, i32* %198)
  br label %271

200:                                              ; preds = %175
  %201 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %202 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %201, i32 0, i32 8
  %203 = load i32*, i32** %202, align 8
  %204 = load i32, i32* %12, align 4
  %205 = call i64 @hb_bitvec_bit(i32* %203, i32 %204)
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %253

207:                                              ; preds = %200
  %208 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %209 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %208, i32 0, i32 0
  %210 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 8
  %212 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %213 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 4
  %216 = icmp eq i32 %211, %215
  br i1 %216, label %247, label %217

217:                                              ; preds = %207
  %218 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %219 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %219, i32 0, i32 3
  %221 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %220, align 8
  %222 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %223 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %222, i32 0, i32 0
  %224 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %223, i32 0, i32 1
  %225 = load i32, i32* %224, align 4
  %226 = sub nsw i32 %225, 1
  %227 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %228 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %227, i32 0, i32 0
  %229 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %228, i32 0, i32 2
  %230 = load i32, i32* %229, align 8
  %231 = sub nsw i32 %230, 1
  %232 = and i32 %226, %231
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds %struct.TYPE_22__*, %struct.TYPE_22__** %221, i64 %233
  %235 = load %struct.TYPE_22__*, %struct.TYPE_22__** %234, align 8
  %236 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %235, i32 0, i32 0
  %237 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %236, i32 0, i32 0
  %238 = load i64, i64* %237, align 8
  %239 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %240 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %239, i32 0, i32 3
  %241 = load i64, i64* %240, align 8
  %242 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %243 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %242, i32 0, i32 4
  %244 = load i64, i64* %243, align 8
  %245 = add nsw i64 %241, %244
  %246 = icmp slt i64 %238, %245
  br i1 %246, label %247, label %253

247:                                              ; preds = %217, %207
  %248 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %249 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %248, i32 0, i32 9
  %250 = load i32*, i32** %249, align 8
  %251 = load i32, i32* %12, align 4
  %252 = call i32 @hb_bitvec_clr(i32* %250, i32 %251)
  br label %253

253:                                              ; preds = %247, %217, %200
  %254 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %255 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %254, i32 0, i32 0
  %256 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 8
  %258 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %259 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %258, i32 0, i32 0
  %260 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %259, i32 0, i32 1
  %261 = load i32, i32* %260, align 4
  %262 = icmp ne i32 %257, %261
  br i1 %262, label %263, label %267

263:                                              ; preds = %253
  %264 = load i32*, i32** %14, align 8
  %265 = load i32, i32* %12, align 4
  %266 = call i32 @hb_bitvec_set(i32* %264, i32 %265)
  br label %267

267:                                              ; preds = %263, %253
  br label %268

268:                                              ; preds = %267
  %269 = load i32, i32* %12, align 4
  %270 = add nsw i32 %269, 1
  store i32 %270, i32* %12, align 4
  br label %169

271:                                              ; preds = %192, %169
  %272 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %273 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %272, i32 0, i32 8
  %274 = load i32*, i32** %273, align 8
  %275 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %276 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %275, i32 0, i32 7
  %277 = load i32*, i32** %276, align 8
  %278 = call i64 @hb_bitvec_cmp(i32* %274, i32* %277)
  %279 = icmp ne i64 %278, 0
  br i1 %279, label %280, label %333

280:                                              ; preds = %271
  store i32 0, i32* %12, align 4
  br label %281

281:                                              ; preds = %311, %280
  %282 = load i32, i32* %12, align 4
  %283 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %284 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %283, i32 0, i32 2
  %285 = load i32, i32* %284, align 8
  %286 = icmp slt i32 %282, %285
  br i1 %286, label %287, label %314

287:                                              ; preds = %281
  %288 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %289 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %288, i32 0, i32 6
  %290 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %289, align 8
  %291 = load i32, i32* %12, align 4
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds %struct.TYPE_26__*, %struct.TYPE_26__** %290, i64 %292
  %294 = load %struct.TYPE_26__*, %struct.TYPE_26__** %293, align 8
  %295 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %294, i32 0, i32 0
  %296 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %295, i32 0, i32 0
  %297 = load i32, i32* %296, align 8
  %298 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %299 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %298, i32 0, i32 6
  %300 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %299, align 8
  %301 = load i32, i32* %12, align 4
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds %struct.TYPE_26__*, %struct.TYPE_26__** %300, i64 %302
  %304 = load %struct.TYPE_26__*, %struct.TYPE_26__** %303, align 8
  %305 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %304, i32 0, i32 0
  %306 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %305, i32 0, i32 1
  %307 = load i32, i32* %306, align 4
  %308 = icmp ne i32 %297, %307
  br i1 %308, label %309, label %310

309:                                              ; preds = %287
  br label %314

310:                                              ; preds = %287
  br label %311

311:                                              ; preds = %310
  %312 = load i32, i32* %12, align 4
  %313 = add nsw i32 %312, 1
  store i32 %313, i32* %12, align 4
  br label %281

314:                                              ; preds = %309, %281
  %315 = load i32, i32* %12, align 4
  %316 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %317 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %316, i32 0, i32 2
  %318 = load i32, i32* %317, align 8
  %319 = icmp sge i32 %315, %318
  br i1 %319, label %320, label %332

320:                                              ; preds = %314
  %321 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %322 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %321, i32 0, i32 0
  store i32 1, i32* %322, align 8
  %323 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %324 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %323, i32 0, i32 0
  %325 = load i32*, i32** %324, align 8
  store i32 1, i32* %325, align 4
  %326 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %327 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %326, i32 0, i32 5
  %328 = load i32, i32* %327, align 8
  %329 = call i32 @hb_unlock(i32 %328)
  %330 = call i32 @hb_bitvec_free(i32** %14)
  %331 = load i32, i32* @HB_WORK_DONE, align 4
  store i32 %331, i32* %4, align 4
  br label %348

332:                                              ; preds = %314
  br label %333

333:                                              ; preds = %332, %271
  %334 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %335 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %334, i32 0, i32 4
  %336 = load i64, i64* %335, align 8
  %337 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %338 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %337, i32 0, i32 3
  %339 = load i64, i64* %338, align 8
  %340 = add nsw i64 %339, %336
  store i64 %340, i64* %338, align 8
  br label %133

341:                                              ; preds = %164
  %342 = call i32 @hb_bitvec_free(i32** %14)
  %343 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %344 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %343, i32 0, i32 5
  %345 = load i32, i32* %344, align 8
  %346 = call i32 @hb_unlock(i32 %345)
  %347 = load i32, i32* @HB_WORK_OK, align 4
  store i32 %347, i32* %4, align 4
  br label %348

348:                                              ; preds = %341, %320, %120, %34
  %349 = load i32, i32* %4, align 4
  ret i32 %349
}

declare dso_local i32 @hb_lock(i32) #1

declare dso_local i32 @hb_unlock(i32) #1

declare dso_local i32 @hb_buffer_close(%struct.TYPE_19__**) #1

declare dso_local i32 @hb_bitvec_set(i32*, i32) #1

declare dso_local i64 @hb_bitvec_bit(i32*, i32) #1

declare dso_local i32 @MoveToInternalFifos(i32, %struct.TYPE_27__*, %struct.TYPE_19__*) #1

declare dso_local i64 @hb_bitvec_and_cmp(i32*, i32*, i32*) #1

declare dso_local i32* @hb_bitvec_new(i32) #1

declare dso_local i32 @hb_bitvec_cpy(i32*, i32*) #1

declare dso_local i64 @hb_bitvec_any(i32*) #1

declare dso_local i64 @hb_bitvec_cmp(i32*, i32*) #1

declare dso_local i32 @hb_bitvec_zero(i32*) #1

declare dso_local i32 @OutputTrackChunk(%struct.TYPE_27__*, i32, i32) #1

declare dso_local i64 @mf_full(%struct.TYPE_26__*) #1

declare dso_local i32 @hb_bitvec_clr(i32*, i32) #1

declare dso_local i32 @hb_bitvec_free(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
