; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_decavcodec.c_decavcodecvInfo.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_decavcodec.c_decavcodecvInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { %struct.TYPE_18__*, %struct.TYPE_23__* }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_23__ = type { i32, %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_21__*, i32, i32, %struct.TYPE_20__, i32 }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_20__ = type { i32, i32 }
%struct.TYPE_25__ = type { i32, i32, %struct.TYPE_16__, i32, i32, %struct.TYPE_17__, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_16__ = type { i32, i32, %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i32, i32 }
%struct.TYPE_17__ = type { i32, i32 }

@HB_ROTATION_90 = common dso_local global i64 0, align 8
@HB_ROTATION_270 = common dso_local global i64 0, align 8
@HB_DECODE_SUPPORT_SW = common dso_local global i32 0, align 4
@AV_PIX_FMT_YUV420P = common dso_local global i32 0, align 4
@AV_PIX_FMT_YUV420P10LE = common dso_local global i32 0, align 4
@AV_PIX_FMT_YUVJ420P = common dso_local global i32 0, align 4
@HB_DECODE_SUPPORT_QSV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_24__*, %struct.TYPE_25__*)* @decavcodecvInfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decavcodecvInfo(%struct.TYPE_24__* %0, %struct.TYPE_25__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_24__*, align 8
  %5 = alloca %struct.TYPE_25__*, align 8
  %6 = alloca %struct.TYPE_23__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %4, align 8
  store %struct.TYPE_25__* %1, %struct.TYPE_25__** %5, align 8
  %10 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  store %struct.TYPE_23__* %12, %struct.TYPE_23__** %6, align 8
  %13 = call i32 @hb_video_framerate_get_limits(i32* %7, i32* %8, i32* %9)
  %14 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %15 = call i32 @memset(%struct.TYPE_25__* %14, i32 0, i32 64)
  %16 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_22__*, %struct.TYPE_22__** %17, align 8
  %19 = icmp eq %struct.TYPE_22__* %18, null
  br i1 %19, label %27, label %20

20:                                               ; preds = %2
  %21 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %23, i32 0, i32 8
  %25 = load %struct.TYPE_21__*, %struct.TYPE_21__** %24, align 8
  %26 = icmp eq %struct.TYPE_21__* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %20, %2
  store i32 0, i32* %3, align 4
  br label %230

28:                                               ; preds = %20
  %29 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_22__*, %struct.TYPE_22__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %31, i32 0, i32 12
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %34, i32 0, i32 11
  store i32 %33, i32* %35, align 4
  %36 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_18__*, %struct.TYPE_18__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @HB_ROTATION_90, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %51, label %43

43:                                               ; preds = %28
  %44 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_18__*, %struct.TYPE_18__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @HB_ROTATION_270, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %90

51:                                               ; preds = %43, %28
  %52 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %52, i32 0, i32 1
  %54 = load %struct.TYPE_22__*, %struct.TYPE_22__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = and i32 %56, -2
  %58 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %59, i32 0, i32 0
  store i32 %57, i32* %60, align 4
  %61 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %61, i32 0, i32 1
  %63 = load %struct.TYPE_22__*, %struct.TYPE_22__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = and i32 %65, -2
  %67 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %68, i32 0, i32 1
  store i32 %66, i32* %69, align 4
  %70 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %70, i32 0, i32 1
  %72 = load %struct.TYPE_22__*, %struct.TYPE_22__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %72, i32 0, i32 11
  %74 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %78, i32 0, i32 1
  store i32 %75, i32* %79, align 4
  %80 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %80, i32 0, i32 1
  %82 = load %struct.TYPE_22__*, %struct.TYPE_22__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %82, i32 0, i32 11
  %84 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %87, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %88, i32 0, i32 0
  store i32 %85, i32* %89, align 4
  br label %129

90:                                               ; preds = %43
  %91 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %91, i32 0, i32 1
  %93 = load %struct.TYPE_22__*, %struct.TYPE_22__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = and i32 %95, -2
  %97 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %98, i32 0, i32 0
  store i32 %96, i32* %99, align 4
  %100 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %100, i32 0, i32 1
  %102 = load %struct.TYPE_22__*, %struct.TYPE_22__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = and i32 %104, -2
  %106 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %106, i32 0, i32 2
  %108 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %107, i32 0, i32 1
  store i32 %105, i32* %108, align 4
  %109 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %109, i32 0, i32 1
  %111 = load %struct.TYPE_22__*, %struct.TYPE_22__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %111, i32 0, i32 11
  %113 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %115, i32 0, i32 2
  %117 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %116, i32 0, i32 2
  %118 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %117, i32 0, i32 1
  store i32 %114, i32* %118, align 4
  %119 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %120 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %119, i32 0, i32 1
  %121 = load %struct.TYPE_22__*, %struct.TYPE_22__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %121, i32 0, i32 11
  %123 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %125, i32 0, i32 2
  %127 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %126, i32 0, i32 2
  %128 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %127, i32 0, i32 0
  store i32 %124, i32* %128, align 4
  br label %129

129:                                              ; preds = %90, %51
  %130 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %131 = call i32 @compute_frame_duration(%struct.TYPE_23__* %130)
  %132 = load i32, i32* %9, align 4
  %133 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %134 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %133, i32 0, i32 5
  %135 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %134, i32 0, i32 0
  store i32 %132, i32* %135, align 4
  %136 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %137 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = sitofp i32 %138 to double
  %140 = load i32, i32* %9, align 4
  %141 = sitofp i32 %140 to double
  %142 = fdiv double %141, 9.000000e+04
  %143 = fmul double %139, %142
  %144 = fptosi double %143 to i32
  %145 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %146 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %145, i32 0, i32 5
  %147 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %146, i32 0, i32 1
  store i32 %144, i32* %147, align 4
  %148 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %149 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %148, i32 0, i32 1
  %150 = load %struct.TYPE_22__*, %struct.TYPE_22__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %150, i32 0, i32 10
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %154 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %153, i32 0, i32 10
  store i32 %152, i32* %154, align 4
  %155 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %156 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %155, i32 0, i32 1
  %157 = load %struct.TYPE_22__*, %struct.TYPE_22__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %157, i32 0, i32 9
  %159 = load i32, i32* %158, align 8
  %160 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %161 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %160, i32 0, i32 9
  store i32 %159, i32* %161, align 4
  %162 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %163 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %162, i32 0, i32 1
  %164 = load %struct.TYPE_22__*, %struct.TYPE_22__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %164, i32 0, i32 8
  %166 = load %struct.TYPE_21__*, %struct.TYPE_21__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %170 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %169, i32 0, i32 8
  store i32 %168, i32* %170, align 4
  %171 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %172 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %171, i32 0, i32 1
  %173 = load %struct.TYPE_22__*, %struct.TYPE_22__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %173, i32 0, i32 3
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %177 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %176, i32 0, i32 7
  store i32 %175, i32* %177, align 4
  %178 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %179 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %178, i32 0, i32 1
  %180 = load %struct.TYPE_22__*, %struct.TYPE_22__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %180, i32 0, i32 7
  %182 = load i32, i32* %181, align 4
  %183 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %184 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %183, i32 0, i32 2
  %185 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %186 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %185, i32 0, i32 5
  %187 = bitcast %struct.TYPE_16__* %184 to { i64, i64 }*
  %188 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %187, i32 0, i32 0
  %189 = load i64, i64* %188, align 4
  %190 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %187, i32 0, i32 1
  %191 = load i64, i64* %190, align 4
  %192 = bitcast %struct.TYPE_17__* %186 to i64*
  %193 = load i64, i64* %192, align 4
  %194 = call i32 @get_color_prim(i32 %182, i64 %189, i64 %191, i64 %193)
  %195 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %196 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %195, i32 0, i32 6
  store i32 %194, i32* %196, align 4
  %197 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %198 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %197, i32 0, i32 1
  %199 = load %struct.TYPE_22__*, %struct.TYPE_22__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %199, i32 0, i32 6
  %201 = load i32, i32* %200, align 8
  %202 = call i32 @get_color_transfer(i32 %201)
  %203 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %204 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %203, i32 0, i32 4
  store i32 %202, i32* %204, align 4
  %205 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %206 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %205, i32 0, i32 1
  %207 = load %struct.TYPE_22__*, %struct.TYPE_22__** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %207, i32 0, i32 5
  %209 = load i32, i32* %208, align 4
  %210 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %211 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %210, i32 0, i32 2
  %212 = bitcast %struct.TYPE_16__* %211 to { i64, i64 }*
  %213 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %212, i32 0, i32 0
  %214 = load i64, i64* %213, align 4
  %215 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %212, i32 0, i32 1
  %216 = load i64, i64* %215, align 4
  %217 = call i32 @get_color_matrix(i32 %209, i64 %214, i64 %216)
  %218 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %219 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %218, i32 0, i32 3
  store i32 %217, i32* %219, align 4
  %220 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %221 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %220, i32 0, i32 1
  %222 = load %struct.TYPE_22__*, %struct.TYPE_22__** %221, align 8
  %223 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %222, i32 0, i32 4
  %224 = load i32, i32* %223, align 8
  %225 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %226 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %225, i32 0, i32 1
  store i32 %224, i32* %226, align 4
  %227 = load i32, i32* @HB_DECODE_SUPPORT_SW, align 4
  %228 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %229 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %228, i32 0, i32 0
  store i32 %227, i32* %229, align 4
  store i32 1, i32* %3, align 4
  br label %230

230:                                              ; preds = %129, %27
  %231 = load i32, i32* %3, align 4
  ret i32 %231
}

declare dso_local i32 @hb_video_framerate_get_limits(i32*, i32*, i32*) #1

declare dso_local i32 @memset(%struct.TYPE_25__*, i32, i32) #1

declare dso_local i32 @compute_frame_duration(%struct.TYPE_23__*) #1

declare dso_local i32 @get_color_prim(i32, i64, i64, i64) #1

declare dso_local i32 @get_color_transfer(i32) #1

declare dso_local i32 @get_color_matrix(i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
