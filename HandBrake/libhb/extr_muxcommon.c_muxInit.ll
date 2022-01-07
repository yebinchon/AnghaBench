; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_muxcommon.c_muxInit.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_muxcommon.c_muxInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i32, i32, i32, i32, %struct.TYPE_24__* }
%struct.TYPE_24__ = type { i32, i32, %struct.TYPE_27__*, %struct.TYPE_28__* }
%struct.TYPE_27__ = type { i32, i32, i32, %struct.TYPE_20__*, i32, i8*, i8*, i8*, i8* }
%struct.TYPE_20__ = type { i32 (%struct.TYPE_20__*)* }
%struct.TYPE_28__ = type { i64, i32, i32*, i32, i32, i32, i32, i32, %struct.TYPE_21__, i32* }
%struct.TYPE_21__ = type { i32, i64 }
%struct.TYPE_29__ = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i32, i32 }
%struct.TYPE_26__ = type { i32, i32, %struct.TYPE_23__ }
%struct.TYPE_23__ = type { i64 }

@HB_PASS_ENCODE = common dso_local global i64 0, align 8
@HB_PASS_ENCODE_2ND = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"No muxer selected, exiting\00", align 1
@HB_ERROR_INIT = common dso_local global i32 0, align 4
@WORK_MUX = common dso_local global i32 0, align 4
@PASSTHRUSUB = common dso_local global i64 0, align 8
@hb_work_loop = common dso_local global i32 0, align 4
@HB_LOW_PRIORITY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_25__*, %struct.TYPE_28__*)* @muxInit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @muxInit(%struct.TYPE_25__* %0, %struct.TYPE_28__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_25__*, align 8
  %5 = alloca %struct.TYPE_28__*, align 8
  %6 = alloca %struct.TYPE_24__*, align 8
  %7 = alloca %struct.TYPE_27__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_25__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_29__*, align 8
  %12 = alloca %struct.TYPE_26__*, align 8
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %4, align 8
  store %struct.TYPE_28__* %1, %struct.TYPE_28__** %5, align 8
  %13 = call i8* @calloc(i32 24, i32 1)
  %14 = bitcast i8* %13 to %struct.TYPE_24__*
  %15 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %15, i32 0, i32 4
  store %struct.TYPE_24__* %14, %struct.TYPE_24__** %16, align 8
  %17 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %17, i32 0, i32 4
  %19 = load %struct.TYPE_24__*, %struct.TYPE_24__** %18, align 8
  store %struct.TYPE_24__* %19, %struct.TYPE_24__** %6, align 8
  %20 = call i8* @calloc(i32 64, i32 1)
  %21 = bitcast i8* %20 to %struct.TYPE_27__*
  store %struct.TYPE_27__* %21, %struct.TYPE_27__** %7, align 8
  %22 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @HB_PASS_ENCODE, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %33, label %27

27:                                               ; preds = %2
  %28 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @HB_PASS_ENCODE_2ND, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %54

33:                                               ; preds = %27, %2
  %34 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  switch i32 %36, label %42 [
    i32 129, label %37
    i32 130, label %37
    i32 128, label %37
  ]

37:                                               ; preds = %33, %33, %33
  %38 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %39 = call %struct.TYPE_20__* @hb_mux_avformat_init(%struct.TYPE_28__* %38)
  %40 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %40, i32 0, i32 3
  store %struct.TYPE_20__* %39, %struct.TYPE_20__** %41, align 8
  br label %53

42:                                               ; preds = %33
  %43 = call i32 @hb_error(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %44 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %45 = call i32 @free(%struct.TYPE_27__* %44)
  %46 = load i32, i32* @HB_ERROR_INIT, align 4
  %47 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %47, i32 0, i32 9
  %49 = load i32*, i32** %48, align 8
  store i32 %46, i32* %49, align 4
  %50 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %50, i32 0, i32 2
  %52 = load i32*, i32** %51, align 8
  store i32 1, i32* %52, align 4
  store i32 -1, i32* %3, align 4
  br label %316

53:                                               ; preds = %37
  br label %54

54:                                               ; preds = %53, %27
  %55 = call i32 (...) @hb_list_init()
  %56 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  %58 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %58, i32 0, i32 5
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @hb_list_count(i32 %60)
  %62 = add nsw i32 1, %61
  %63 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @hb_list_count(i32 %65)
  %67 = add nsw i32 %62, %66
  store i32 %67, i32* %10, align 4
  %68 = load i32, i32* %10, align 4
  %69 = call i8* @hb_bitvec_new(i32 %68)
  %70 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %70, i32 0, i32 8
  store i8* %69, i8** %71, align 8
  %72 = load i32, i32* %10, align 4
  %73 = call i8* @hb_bitvec_new(i32 %72)
  %74 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %74, i32 0, i32 7
  store i8* %73, i8** %75, align 8
  %76 = load i32, i32* %10, align 4
  %77 = call i8* @hb_bitvec_new(i32 %76)
  %78 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %78, i32 0, i32 6
  store i8* %77, i8** %79, align 8
  %80 = load i32, i32* %10, align 4
  %81 = call i8* @hb_bitvec_new(i32 %80)
  %82 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %82, i32 0, i32 5
  store i8* %81, i8** %83, align 8
  %84 = call i32 (...) @hb_lock_init()
  %85 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %85, i32 0, i32 4
  store i32 %84, i32* %86, align 8
  %87 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %87, i32 0, i32 8
  %89 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = sitofp i64 %90 to double
  %92 = fmul double 9.000000e+04, %91
  %93 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %93, i32 0, i32 8
  %95 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = sitofp i32 %96 to double
  %98 = fdiv double %92, %97
  %99 = fptosi double %98 to i32
  %100 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %100, i32 0, i32 0
  store i32 %99, i32* %101, align 8
  %102 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %103 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %106 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %105, i32 0, i32 1
  store i32 %104, i32* %106, align 4
  %107 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @HB_PASS_ENCODE, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %118, label %112

112:                                              ; preds = %54
  %113 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @HB_PASS_ENCODE_2ND, align 8
  %117 = icmp eq i64 %115, %116
  br i1 %117, label %118, label %134

118:                                              ; preds = %112, %54
  %119 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %120 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %119, i32 0, i32 3
  %121 = load %struct.TYPE_20__*, %struct.TYPE_20__** %120, align 8
  %122 = icmp ne %struct.TYPE_20__* %121, null
  br i1 %122, label %123, label %133

123:                                              ; preds = %118
  %124 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %125 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %124, i32 0, i32 3
  %126 = load %struct.TYPE_20__*, %struct.TYPE_20__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %126, i32 0, i32 0
  %128 = load i32 (%struct.TYPE_20__*)*, i32 (%struct.TYPE_20__*)** %127, align 8
  %129 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %130 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %129, i32 0, i32 3
  %131 = load %struct.TYPE_20__*, %struct.TYPE_20__** %130, align 8
  %132 = call i32 %128(%struct.TYPE_20__* %131)
  br label %133

133:                                              ; preds = %123, %118
  br label %134

134:                                              ; preds = %133, %112
  %135 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %136 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %137 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %136, i32 0, i32 3
  store %struct.TYPE_28__* %135, %struct.TYPE_28__** %137, align 8
  %138 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %139 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %140 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %139, i32 0, i32 2
  store %struct.TYPE_27__* %138, %struct.TYPE_27__** %140, align 8
  %141 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %142 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 8
  %144 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %145 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %144, i32 0, i32 1
  store i32 %143, i32* %145, align 4
  %146 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %147 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %146, i32 0, i32 7
  %148 = load i32, i32* %147, align 8
  %149 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %150 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %149, i32 0, i32 3
  store i32 %148, i32* %150, align 4
  %151 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %152 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %153 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %152, i32 0, i32 6
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @add_mux_track(%struct.TYPE_27__* %151, i32 %154, i32 1)
  store i32 0, i32* %8, align 4
  br label %156

156:                                              ; preds = %213, %134
  %157 = load i32, i32* %8, align 4
  %158 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %159 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %158, i32 0, i32 5
  %160 = load i32, i32* %159, align 8
  %161 = call i32 @hb_list_count(i32 %160)
  %162 = icmp slt i32 %157, %161
  br i1 %162, label %163, label %216

163:                                              ; preds = %156
  %164 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %165 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %164, i32 0, i32 5
  %166 = load i32, i32* %165, align 8
  %167 = load i32, i32* %8, align 4
  %168 = call i8* @hb_list_item(i32 %166, i32 %167)
  %169 = bitcast i8* %168 to %struct.TYPE_29__*
  store %struct.TYPE_29__* %169, %struct.TYPE_29__** %11, align 8
  %170 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %171 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %170, i32 0, i32 3
  %172 = load i32, i32* %171, align 8
  %173 = load i32, i32* @WORK_MUX, align 4
  %174 = call %struct.TYPE_25__* @hb_get_work(i32 %172, i32 %173)
  store %struct.TYPE_25__* %174, %struct.TYPE_25__** %9, align 8
  %175 = call i8* @calloc(i32 24, i32 1)
  %176 = bitcast i8* %175 to %struct.TYPE_24__*
  %177 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %178 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %177, i32 0, i32 4
  store %struct.TYPE_24__* %176, %struct.TYPE_24__** %178, align 8
  %179 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %180 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %181 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %180, i32 0, i32 4
  %182 = load %struct.TYPE_24__*, %struct.TYPE_24__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %182, i32 0, i32 3
  store %struct.TYPE_28__* %179, %struct.TYPE_28__** %183, align 8
  %184 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %185 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %186 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %185, i32 0, i32 4
  %187 = load %struct.TYPE_24__*, %struct.TYPE_24__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %187, i32 0, i32 2
  store %struct.TYPE_27__* %184, %struct.TYPE_27__** %188, align 8
  %189 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %190 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %189, i32 0, i32 2
  %191 = load i32, i32* %190, align 8
  %192 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %193 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %192, i32 0, i32 4
  %194 = load %struct.TYPE_24__*, %struct.TYPE_24__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %194, i32 0, i32 1
  store i32 %191, i32* %195, align 4
  %196 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %197 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 4
  %200 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %201 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %200, i32 0, i32 3
  store i32 %199, i32* %201, align 4
  %202 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %203 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %204 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %203, i32 0, i32 0
  %205 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 4
  %207 = call i32 @add_mux_track(%struct.TYPE_27__* %202, i32 %206, i32 1)
  %208 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %209 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %212 = call i32 @hb_list_add(i32 %210, %struct.TYPE_25__* %211)
  br label %213

213:                                              ; preds = %163
  %214 = load i32, i32* %8, align 4
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* %8, align 4
  br label %156

216:                                              ; preds = %156
  store i32 0, i32* %8, align 4
  br label %217

217:                                              ; preds = %280, %216
  %218 = load i32, i32* %8, align 4
  %219 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %220 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %219, i32 0, i32 4
  %221 = load i32, i32* %220, align 4
  %222 = call i32 @hb_list_count(i32 %221)
  %223 = icmp slt i32 %218, %222
  br i1 %223, label %224, label %283

224:                                              ; preds = %217
  %225 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %226 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %225, i32 0, i32 4
  %227 = load i32, i32* %226, align 4
  %228 = load i32, i32* %8, align 4
  %229 = call i8* @hb_list_item(i32 %227, i32 %228)
  %230 = bitcast i8* %229 to %struct.TYPE_26__*
  store %struct.TYPE_26__* %230, %struct.TYPE_26__** %12, align 8
  %231 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %232 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %231, i32 0, i32 2
  %233 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %232, i32 0, i32 0
  %234 = load i64, i64* %233, align 8
  %235 = load i64, i64* @PASSTHRUSUB, align 8
  %236 = icmp ne i64 %234, %235
  br i1 %236, label %237, label %238

237:                                              ; preds = %224
  br label %280

238:                                              ; preds = %224
  %239 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %240 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %239, i32 0, i32 3
  %241 = load i32, i32* %240, align 8
  %242 = load i32, i32* @WORK_MUX, align 4
  %243 = call %struct.TYPE_25__* @hb_get_work(i32 %241, i32 %242)
  store %struct.TYPE_25__* %243, %struct.TYPE_25__** %9, align 8
  %244 = call i8* @calloc(i32 24, i32 1)
  %245 = bitcast i8* %244 to %struct.TYPE_24__*
  %246 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %247 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %246, i32 0, i32 4
  store %struct.TYPE_24__* %245, %struct.TYPE_24__** %247, align 8
  %248 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %249 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %250 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %249, i32 0, i32 4
  %251 = load %struct.TYPE_24__*, %struct.TYPE_24__** %250, align 8
  %252 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %251, i32 0, i32 3
  store %struct.TYPE_28__* %248, %struct.TYPE_28__** %252, align 8
  %253 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %254 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %255 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %254, i32 0, i32 4
  %256 = load %struct.TYPE_24__*, %struct.TYPE_24__** %255, align 8
  %257 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %256, i32 0, i32 2
  store %struct.TYPE_27__* %253, %struct.TYPE_27__** %257, align 8
  %258 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %259 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %258, i32 0, i32 2
  %260 = load i32, i32* %259, align 8
  %261 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %262 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %261, i32 0, i32 4
  %263 = load %struct.TYPE_24__*, %struct.TYPE_24__** %262, align 8
  %264 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %263, i32 0, i32 1
  store i32 %260, i32* %264, align 4
  %265 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %266 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %265, i32 0, i32 1
  %267 = load i32, i32* %266, align 4
  %268 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %269 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %268, i32 0, i32 3
  store i32 %267, i32* %269, align 4
  %270 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %271 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %272 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %271, i32 0, i32 0
  %273 = load i32, i32* %272, align 8
  %274 = call i32 @add_mux_track(%struct.TYPE_27__* %270, i32 %273, i32 0)
  %275 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %276 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %275, i32 0, i32 0
  %277 = load i32, i32* %276, align 8
  %278 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %279 = call i32 @hb_list_add(i32 %277, %struct.TYPE_25__* %278)
  br label %280

280:                                              ; preds = %238, %237
  %281 = load i32, i32* %8, align 4
  %282 = add nsw i32 %281, 1
  store i32 %282, i32* %8, align 4
  br label %217

283:                                              ; preds = %217
  store i32 0, i32* %8, align 4
  br label %284

284:                                              ; preds = %312, %283
  %285 = load i32, i32* %8, align 4
  %286 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %287 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %286, i32 0, i32 0
  %288 = load i32, i32* %287, align 8
  %289 = call i32 @hb_list_count(i32 %288)
  %290 = icmp slt i32 %285, %289
  br i1 %290, label %291, label %315

291:                                              ; preds = %284
  %292 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %293 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %292, i32 0, i32 0
  %294 = load i32, i32* %293, align 8
  %295 = load i32, i32* %8, align 4
  %296 = call i8* @hb_list_item(i32 %294, i32 %295)
  %297 = bitcast i8* %296 to %struct.TYPE_25__*
  store %struct.TYPE_25__* %297, %struct.TYPE_25__** %9, align 8
  %298 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %299 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %298, i32 0, i32 2
  %300 = load i32, i32* %299, align 8
  %301 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %302 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %301, i32 0, i32 2
  store i32 %300, i32* %302, align 8
  %303 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %304 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %303, i32 0, i32 0
  %305 = load i32, i32* %304, align 8
  %306 = load i32, i32* @hb_work_loop, align 4
  %307 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %308 = load i32, i32* @HB_LOW_PRIORITY, align 4
  %309 = call i32 @hb_thread_init(i32 %305, i32 %306, %struct.TYPE_25__* %307, i32 %308)
  %310 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %311 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %310, i32 0, i32 1
  store i32 %309, i32* %311, align 4
  br label %312

312:                                              ; preds = %291
  %313 = load i32, i32* %8, align 4
  %314 = add nsw i32 %313, 1
  store i32 %314, i32* %8, align 4
  br label %284

315:                                              ; preds = %284
  store i32 0, i32* %3, align 4
  br label %316

316:                                              ; preds = %315, %42
  %317 = load i32, i32* %3, align 4
  ret i32 %317
}

declare dso_local i8* @calloc(i32, i32) #1

declare dso_local %struct.TYPE_20__* @hb_mux_avformat_init(%struct.TYPE_28__*) #1

declare dso_local i32 @hb_error(i8*) #1

declare dso_local i32 @free(%struct.TYPE_27__*) #1

declare dso_local i32 @hb_list_init(...) #1

declare dso_local i32 @hb_list_count(i32) #1

declare dso_local i8* @hb_bitvec_new(i32) #1

declare dso_local i32 @hb_lock_init(...) #1

declare dso_local i32 @add_mux_track(%struct.TYPE_27__*, i32, i32) #1

declare dso_local i8* @hb_list_item(i32, i32) #1

declare dso_local %struct.TYPE_25__* @hb_get_work(i32, i32) #1

declare dso_local i32 @hb_list_add(i32, %struct.TYPE_25__*) #1

declare dso_local i32 @hb_thread_init(i32, i32, %struct.TYPE_25__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
