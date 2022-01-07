; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/mp4/extr_mp4_reader.c_mp4_read_sample_header.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/mp4/extr_mp4_reader.c_mp4_read_sample_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { %struct.TYPE_16__** }
%struct.TYPE_16__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32, i64, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_21__ = type { i64, i64, i64, i64, i32, i32, i32, i32, i64, i32, i64, i64, i32, %struct.TYPE_17__*, i32, i32, i32 }
%struct.TYPE_17__ = type { i64 }

@VC_CONTAINER_SUCCESS = common dso_local global i64 0, align 8
@MP4_SAMPLE_TABLE_STSC = common dso_local global i64 0, align 8
@MP4_SAMPLE_TABLE_STCO = common dso_local global i64 0, align 8
@MP4_SAMPLE_TABLE_STSZ = common dso_local global i64 0, align 8
@MP4_SAMPLE_TABLE_STTS = common dso_local global i64 0, align 8
@MP4_SAMPLE_TABLE_CTTS = common dso_local global i64 0, align 8
@MP4_SAMPLE_TABLE_STSS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_20__*, i64, %struct.TYPE_21__*)* @mp4_read_sample_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mp4_read_sample_header(%struct.TYPE_20__* %0, i64 %1, %struct.TYPE_21__* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_21__*, align 8
  %8 = alloca %struct.TYPE_19__*, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.TYPE_21__* %2, %struct.TYPE_21__** %7, align 8
  %10 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %11, align 8
  %13 = load i64, i64* %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %12, i64 %13
  %15 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  store %struct.TYPE_19__* %19, %struct.TYPE_19__** %8, align 8
  %20 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %3
  %26 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %4, align 8
  br label %369

29:                                               ; preds = %3
  %30 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = icmp slt i64 %32, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %29
  %38 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  store i64 %40, i64* %4, align 8
  br label %369

41:                                               ; preds = %29
  %42 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %45, i32 0, i32 16
  %47 = load i32, i32* %46, align 8
  %48 = sext i32 %47 to i64
  %49 = add nsw i64 %48, %44
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %46, align 8
  %51 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %51, i32 0, i32 1
  store i64 0, i64* %52, align 8
  %53 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %53, i32 0, i32 2
  store i64 0, i64* %54, align 8
  %55 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %55, i32 0, i32 3
  %57 = load i64, i64* %56, align 8
  %58 = add nsw i64 %57, 1
  store i64 %58, i64* %56, align 8
  %59 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %59, i32 0, i32 10
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %104, label %63

63:                                               ; preds = %41
  %64 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %64, i32 0, i32 15
  %66 = load i32, i32* %65, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %84, label %68

68:                                               ; preds = %63
  %69 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %70 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %71 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %72 = load i64, i64* @MP4_SAMPLE_TABLE_STSC, align 8
  %73 = call i8* @mp4_read_sample_table(%struct.TYPE_20__* %69, %struct.TYPE_19__* %70, %struct.TYPE_21__* %71, i64 %72, i32 1)
  %74 = ptrtoint i8* %73 to i64
  %75 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %75, i32 0, i32 0
  store i64 %74, i64* %76, align 8
  %77 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  %81 = icmp ne i64 %79, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %68
  br label %365

83:                                               ; preds = %68
  br label %84

84:                                               ; preds = %83, %63
  %85 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %86 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %87 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %88 = load i64, i64* @MP4_SAMPLE_TABLE_STCO, align 8
  %89 = call i8* @mp4_read_sample_table(%struct.TYPE_20__* %85, %struct.TYPE_19__* %86, %struct.TYPE_21__* %87, i64 %88, i32 1)
  %90 = ptrtoint i8* %89 to i64
  %91 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %91, i32 0, i32 0
  store i64 %90, i64* %92, align 8
  %93 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  %97 = icmp ne i64 %95, %96
  br i1 %97, label %98, label %99

98:                                               ; preds = %84
  br label %365

99:                                               ; preds = %84
  %100 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %100, i32 0, i32 15
  %102 = load i32, i32* %101, align 4
  %103 = add nsw i32 %102, -1
  store i32 %103, i32* %101, align 4
  br label %104

104:                                              ; preds = %99, %41
  %105 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %106 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %105, i32 0, i32 10
  %107 = load i64, i64* %106, align 8
  %108 = add nsw i64 %107, -1
  store i64 %108, i64* %106, align 8
  %109 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %110 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %111 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %112 = load i64, i64* @MP4_SAMPLE_TABLE_STSZ, align 8
  %113 = call i8* @mp4_read_sample_table(%struct.TYPE_20__* %109, %struct.TYPE_19__* %110, %struct.TYPE_21__* %111, i64 %112, i32 1)
  %114 = ptrtoint i8* %113 to i64
  %115 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %116 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %115, i32 0, i32 0
  store i64 %114, i64* %116, align 8
  %117 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %118 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  %121 = icmp ne i64 %119, %120
  br i1 %121, label %122, label %123

122:                                              ; preds = %104
  br label %365

123:                                              ; preds = %104
  %124 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %125 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %141

128:                                              ; preds = %123
  %129 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %130 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %129, i32 0, i32 6
  %131 = load i32, i32* %130, align 8
  %132 = mul nsw i32 %131, 1000000
  %133 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %134 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = sdiv i32 %132, %135
  %137 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %138 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %137, i32 0, i32 5
  store i32 %136, i32* %138, align 4
  %139 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %140 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %139, i32 0, i32 4
  store i32 %136, i32* %140, align 8
  br label %141

141:                                              ; preds = %128, %123
  %142 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %143 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %142, i32 0, i32 12
  %144 = load i32, i32* %143, align 8
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %162, label %146

146:                                              ; preds = %141
  %147 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %148 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %149 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %150 = load i64, i64* @MP4_SAMPLE_TABLE_STTS, align 8
  %151 = call i8* @mp4_read_sample_table(%struct.TYPE_20__* %147, %struct.TYPE_19__* %148, %struct.TYPE_21__* %149, i64 %150, i32 1)
  %152 = ptrtoint i8* %151 to i64
  %153 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %154 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %153, i32 0, i32 0
  store i64 %152, i64* %154, align 8
  %155 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %156 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  %159 = icmp ne i64 %157, %158
  br i1 %159, label %160, label %161

160:                                              ; preds = %146
  br label %365

161:                                              ; preds = %146
  br label %162

162:                                              ; preds = %161, %141
  %163 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %164 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %163, i32 0, i32 12
  %165 = load i32, i32* %164, align 8
  %166 = add nsw i32 %165, -1
  store i32 %166, i32* %164, align 8
  %167 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %168 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %167, i32 0, i32 2
  %169 = load %struct.TYPE_18__*, %struct.TYPE_18__** %168, align 8
  %170 = load i64, i64* @MP4_SAMPLE_TABLE_CTTS, align 8
  %171 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %169, i64 %170
  %172 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %221

175:                                              ; preds = %162
  %176 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %177 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %176, i32 0, i32 14
  %178 = load i32, i32* %177, align 8
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %196, label %180

180:                                              ; preds = %175
  %181 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %182 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %183 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %184 = load i64, i64* @MP4_SAMPLE_TABLE_CTTS, align 8
  %185 = call i8* @mp4_read_sample_table(%struct.TYPE_20__* %181, %struct.TYPE_19__* %182, %struct.TYPE_21__* %183, i64 %184, i32 1)
  %186 = ptrtoint i8* %185 to i64
  %187 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %188 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %187, i32 0, i32 0
  store i64 %186, i64* %188, align 8
  %189 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %190 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %189, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  %193 = icmp ne i64 %191, %192
  br i1 %193, label %194, label %195

194:                                              ; preds = %180
  br label %365

195:                                              ; preds = %180
  br label %196

196:                                              ; preds = %195, %175
  %197 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %198 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %216

201:                                              ; preds = %196
  %202 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %203 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %202, i32 0, i32 6
  %204 = load i32, i32* %203, align 8
  %205 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %206 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %205, i32 0, i32 7
  %207 = load i32, i32* %206, align 4
  %208 = add nsw i32 %204, %207
  %209 = mul nsw i32 %208, 1000000
  %210 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %211 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 8
  %213 = sdiv i32 %209, %212
  %214 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %215 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %214, i32 0, i32 4
  store i32 %213, i32* %215, align 8
  br label %216

216:                                              ; preds = %201, %196
  %217 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %218 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %217, i32 0, i32 14
  %219 = load i32, i32* %218, align 8
  %220 = add nsw i32 %219, -1
  store i32 %220, i32* %218, align 8
  br label %221

221:                                              ; preds = %216, %162
  %222 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %223 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %222, i32 0, i32 11
  %224 = load i64, i64* %223, align 8
  %225 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %226 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %225, i32 0, i32 6
  %227 = load i32, i32* %226, align 8
  %228 = sext i32 %227 to i64
  %229 = add nsw i64 %228, %224
  %230 = trunc i64 %229 to i32
  store i32 %230, i32* %226, align 8
  %231 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %232 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %231, i32 0, i32 13
  %233 = load %struct.TYPE_17__*, %struct.TYPE_17__** %232, align 8
  %234 = load i64, i64* @MP4_SAMPLE_TABLE_STSS, align 8
  %235 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %233, i64 %234
  %236 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %235, i32 0, i32 0
  %237 = load i64, i64* %236, align 8
  %238 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %239 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %238, i32 0, i32 2
  %240 = load %struct.TYPE_18__*, %struct.TYPE_18__** %239, align 8
  %241 = load i64, i64* @MP4_SAMPLE_TABLE_STSS, align 8
  %242 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %240, i64 %241
  %243 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %242, i32 0, i32 0
  %244 = load i64, i64* %243, align 8
  %245 = icmp slt i64 %237, %244
  br i1 %245, label %246, label %260

246:                                              ; preds = %221
  %247 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %248 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %247, i32 0, i32 8
  %249 = load i64, i64* %248, align 8
  %250 = icmp ne i64 %249, 0
  br i1 %250, label %260, label %251

251:                                              ; preds = %246
  %252 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %253 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %254 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %255 = load i64, i64* @MP4_SAMPLE_TABLE_STSS, align 8
  %256 = call i8* @mp4_read_sample_table(%struct.TYPE_20__* %252, %struct.TYPE_19__* %253, %struct.TYPE_21__* %254, i64 %255, i32 1)
  %257 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  %258 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %259 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %258, i32 0, i32 0
  store i64 %257, i64* %259, align 8
  br label %260

260:                                              ; preds = %251, %246, %221
  %261 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %262 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %261, i32 0, i32 2
  %263 = load %struct.TYPE_18__*, %struct.TYPE_18__** %262, align 8
  %264 = load i64, i64* @MP4_SAMPLE_TABLE_STSS, align 8
  %265 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %263, i64 %264
  %266 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %265, i32 0, i32 0
  %267 = load i64, i64* %266, align 8
  %268 = icmp ne i64 %267, 0
  br i1 %268, label %269, label %277

269:                                              ; preds = %260
  %270 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %271 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %270, i32 0, i32 3
  %272 = load i64, i64* %271, align 8
  %273 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %274 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %273, i32 0, i32 8
  %275 = load i64, i64* %274, align 8
  %276 = icmp eq i64 %272, %275
  br label %277

277:                                              ; preds = %269, %260
  %278 = phi i1 [ false, %260 ], [ %276, %269 ]
  %279 = zext i1 %278 to i32
  %280 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %281 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %280, i32 0, i32 9
  store i32 %279, i32* %281, align 8
  %282 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %283 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %282, i32 0, i32 9
  %284 = load i32, i32* %283, align 8
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %286, label %289

286:                                              ; preds = %277
  %287 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %288 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %287, i32 0, i32 8
  store i64 0, i64* %288, align 8
  br label %289

289:                                              ; preds = %286, %277
  %290 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %291 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %290, i32 0, i32 1
  %292 = load i64, i64* %291, align 8
  %293 = icmp ne i64 %292, 0
  br i1 %293, label %294, label %364

294:                                              ; preds = %289
  %295 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %296 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %295, i32 0, i32 2
  %297 = load i64, i64* %296, align 8
  store i64 %297, i64* %9, align 8
  br label %298

298:                                              ; preds = %333, %294
  %299 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %300 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %299, i32 0, i32 10
  %301 = load i64, i64* %300, align 8
  %302 = icmp ne i64 %301, 0
  br i1 %302, label %303, label %309

303:                                              ; preds = %298
  %304 = load i64, i64* %9, align 8
  %305 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %306 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %305, i32 0, i32 1
  %307 = load i64, i64* %306, align 8
  %308 = icmp ult i64 %304, %307
  br label %309

309:                                              ; preds = %303, %298
  %310 = phi i1 [ false, %298 ], [ %308, %303 ]
  br i1 %310, label %311, label %360

311:                                              ; preds = %309
  %312 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %313 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %314 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %315 = load i64, i64* @MP4_SAMPLE_TABLE_STSZ, align 8
  %316 = call i8* @mp4_read_sample_table(%struct.TYPE_20__* %312, %struct.TYPE_19__* %313, %struct.TYPE_21__* %314, i64 %315, i32 1)
  %317 = icmp ne i8* %316, null
  br i1 %317, label %318, label %319

318:                                              ; preds = %311
  br label %360

319:                                              ; preds = %311
  %320 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %321 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %320, i32 0, i32 12
  %322 = load i32, i32* %321, align 8
  %323 = icmp ne i32 %322, 0
  br i1 %323, label %333, label %324

324:                                              ; preds = %319
  %325 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %326 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %327 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %328 = load i64, i64* @MP4_SAMPLE_TABLE_STTS, align 8
  %329 = call i8* @mp4_read_sample_table(%struct.TYPE_20__* %325, %struct.TYPE_19__* %326, %struct.TYPE_21__* %327, i64 %328, i32 1)
  %330 = icmp ne i8* %329, null
  br i1 %330, label %331, label %332

331:                                              ; preds = %324
  br label %360

332:                                              ; preds = %324
  br label %333

333:                                              ; preds = %332, %319
  %334 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %335 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %334, i32 0, i32 12
  %336 = load i32, i32* %335, align 8
  %337 = add nsw i32 %336, -1
  store i32 %337, i32* %335, align 8
  %338 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %339 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %338, i32 0, i32 11
  %340 = load i64, i64* %339, align 8
  %341 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %342 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %341, i32 0, i32 6
  %343 = load i32, i32* %342, align 8
  %344 = sext i32 %343 to i64
  %345 = add nsw i64 %344, %340
  %346 = trunc i64 %345 to i32
  store i32 %346, i32* %342, align 8
  %347 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %348 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %347, i32 0, i32 2
  %349 = load i64, i64* %348, align 8
  %350 = load i64, i64* %9, align 8
  %351 = add i64 %350, %349
  store i64 %351, i64* %9, align 8
  %352 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %353 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %352, i32 0, i32 10
  %354 = load i64, i64* %353, align 8
  %355 = add nsw i64 %354, -1
  store i64 %355, i64* %353, align 8
  %356 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %357 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %356, i32 0, i32 3
  %358 = load i64, i64* %357, align 8
  %359 = add nsw i64 %358, 1
  store i64 %359, i64* %357, align 8
  br label %298

360:                                              ; preds = %331, %318, %309
  %361 = load i64, i64* %9, align 8
  %362 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %363 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %362, i32 0, i32 2
  store i64 %361, i64* %363, align 8
  br label %364

364:                                              ; preds = %360, %289
  br label %365

365:                                              ; preds = %364, %194, %160, %122, %98, %82
  %366 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %367 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %366, i32 0, i32 0
  %368 = load i64, i64* %367, align 8
  store i64 %368, i64* %4, align 8
  br label %369

369:                                              ; preds = %365, %37, %25
  %370 = load i64, i64* %4, align 8
  ret i64 %370
}

declare dso_local i8* @mp4_read_sample_table(%struct.TYPE_20__*, %struct.TYPE_19__*, %struct.TYPE_21__*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
