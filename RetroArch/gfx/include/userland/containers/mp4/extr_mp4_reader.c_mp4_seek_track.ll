; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/mp4/extr_mp4_reader.c_mp4_seek_track.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/mp4/extr_mp4_reader.c_mp4_seek_track.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { %struct.TYPE_17__** }
%struct.TYPE_17__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_22__ = type { i64, i64, i64, i32, i32, i64, i64, i64, i8*, i64, i32, i32, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i64 }

@MP4_SAMPLE_TABLE_STSC = common dso_local global i64 0, align 8
@VC_CONTAINER_SUCCESS = common dso_local global i8* null, align 8
@MP4_SAMPLE_TABLE_STCO = common dso_local global i64 0, align 8
@MP4_SAMPLE_TABLE_CO64 = common dso_local global i64 0, align 8
@MP4_SAMPLE_TABLE_STSZ = common dso_local global i64 0, align 8
@MP4_SAMPLE_TABLE_STTS = common dso_local global i64 0, align 8
@MP4_SAMPLE_TABLE_CTTS = common dso_local global i64 0, align 8
@MP4_SAMPLE_TABLE_STSS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_21__*, i64, %struct.TYPE_22__*, i64)* @mp4_seek_track to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @mp4_seek_track(%struct.TYPE_21__* %0, i64 %1, %struct.TYPE_22__* %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_22__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_20__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.TYPE_22__* %2, %struct.TYPE_22__** %7, align 8
  store i64 %3, i64* %8, align 8
  %13 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %14, align 8
  %16 = load i64, i64* %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %15, i64 %16
  %18 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_20__*, %struct.TYPE_20__** %21, align 8
  store %struct.TYPE_20__* %22, %struct.TYPE_20__** %9, align 8
  store i64 0, i64* %10, align 8
  %23 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %24 = call i32 @memset(%struct.TYPE_22__* %23, i32 0, i32 88)
  store i32 0, i32* %12, align 4
  %25 = load i64, i64* %8, align 8
  store i64 %25, i64* %11, align 8
  br label %26

26:                                               ; preds = %99, %4
  %27 = load i32, i32* %12, align 4
  %28 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_19__*, %struct.TYPE_19__** %29, align 8
  %31 = load i64, i64* @MP4_SAMPLE_TABLE_STSC, align 8
  %32 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %30, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp ult i32 %27, %34
  br i1 %35, label %36, label %102

36:                                               ; preds = %26
  %37 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %38 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %39 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %40 = load i64, i64* @MP4_SAMPLE_TABLE_STSC, align 8
  %41 = call i8* @mp4_read_sample_table(%struct.TYPE_21__* %37, %struct.TYPE_20__* %38, %struct.TYPE_22__* %39, i64 %40, i32 1)
  %42 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %42, i32 0, i32 8
  store i8* %41, i8** %43, align 8
  %44 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %44, i32 0, i32 8
  %46 = load i8*, i8** %45, align 8
  %47 = load i8*, i8** @VC_CONTAINER_SUCCESS, align 8
  %48 = icmp ne i8* %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %36
  br label %359

50:                                               ; preds = %36
  %51 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = mul i64 %53, %56
  %58 = load i64, i64* %11, align 8
  %59 = icmp ule i64 %57, %58
  br i1 %59, label %60, label %75

60:                                               ; preds = %50
  %61 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = mul i64 %63, %66
  %68 = load i64, i64* %11, align 8
  %69 = sub i64 %68, %67
  store i64 %69, i64* %11, align 8
  %70 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* %10, align 8
  %74 = add i64 %73, %72
  store i64 %74, i64* %10, align 8
  br label %99

75:                                               ; preds = %50
  br label %76

76:                                               ; preds = %82, %75
  %77 = load i64, i64* %11, align 8
  %78 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = icmp uge i64 %77, %80
  br i1 %81, label %82, label %94

82:                                               ; preds = %76
  %83 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* %11, align 8
  %87 = sub i64 %86, %85
  store i64 %87, i64* %11, align 8
  %88 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = add i64 %90, -1
  store i64 %91, i64* %89, align 8
  %92 = load i64, i64* %10, align 8
  %93 = add i64 %92, 1
  store i64 %93, i64* %10, align 8
  br label %76

94:                                               ; preds = %76
  %95 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %96 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = add i64 %97, -1
  store i64 %98, i64* %96, align 8
  br label %102

99:                                               ; preds = %60
  %100 = load i32, i32* %12, align 4
  %101 = add i32 %100, 1
  store i32 %101, i32* %12, align 4
  br label %26

102:                                              ; preds = %94, %26
  %103 = load i64, i64* %10, align 8
  %104 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %105 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %104, i32 0, i32 12
  %106 = load %struct.TYPE_18__*, %struct.TYPE_18__** %105, align 8
  %107 = load i64, i64* @MP4_SAMPLE_TABLE_STCO, align 8
  %108 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %106, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %108, i32 0, i32 0
  store i64 %103, i64* %109, align 8
  %110 = load i64, i64* %10, align 8
  %111 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %112 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %111, i32 0, i32 12
  %113 = load %struct.TYPE_18__*, %struct.TYPE_18__** %112, align 8
  %114 = load i64, i64* @MP4_SAMPLE_TABLE_CO64, align 8
  %115 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %113, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %115, i32 0, i32 0
  store i64 %110, i64* %116, align 8
  %117 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %118 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %119 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %120 = load i64, i64* @MP4_SAMPLE_TABLE_STCO, align 8
  %121 = call i8* @mp4_read_sample_table(%struct.TYPE_21__* %117, %struct.TYPE_20__* %118, %struct.TYPE_22__* %119, i64 %120, i32 1)
  %122 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %123 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %122, i32 0, i32 8
  store i8* %121, i8** %123, align 8
  %124 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %125 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %124, i32 0, i32 8
  %126 = load i8*, i8** %125, align 8
  %127 = load i8*, i8** @VC_CONTAINER_SUCCESS, align 8
  %128 = icmp ne i8* %126, %127
  br i1 %128, label %129, label %130

129:                                              ; preds = %102
  br label %359

130:                                              ; preds = %102
  %131 = load i64, i64* %8, align 8
  %132 = load i64, i64* %11, align 8
  %133 = sub i64 %131, %132
  %134 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %135 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %134, i32 0, i32 12
  %136 = load %struct.TYPE_18__*, %struct.TYPE_18__** %135, align 8
  %137 = load i64, i64* @MP4_SAMPLE_TABLE_STSZ, align 8
  %138 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %136, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %138, i32 0, i32 0
  store i64 %133, i64* %139, align 8
  store i32 0, i32* %12, align 4
  br label %140

140:                                              ; preds = %177, %130
  %141 = load i32, i32* %12, align 4
  %142 = zext i32 %141 to i64
  %143 = load i64, i64* %11, align 8
  %144 = icmp ult i64 %142, %143
  br i1 %144, label %145, label %180

145:                                              ; preds = %140
  %146 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %147 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %148 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %149 = load i64, i64* @MP4_SAMPLE_TABLE_STSZ, align 8
  %150 = load i32, i32* %12, align 4
  %151 = icmp ne i32 %150, 0
  %152 = xor i1 %151, true
  %153 = zext i1 %152 to i32
  %154 = call i8* @mp4_read_sample_table(%struct.TYPE_21__* %146, %struct.TYPE_20__* %147, %struct.TYPE_22__* %148, i64 %149, i32 %153)
  %155 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %156 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %155, i32 0, i32 8
  store i8* %154, i8** %156, align 8
  %157 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %158 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %157, i32 0, i32 8
  %159 = load i8*, i8** %158, align 8
  %160 = load i8*, i8** @VC_CONTAINER_SUCCESS, align 8
  %161 = icmp ne i8* %159, %160
  br i1 %161, label %162, label %163

162:                                              ; preds = %145
  br label %359

163:                                              ; preds = %145
  %164 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %165 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %164, i32 0, i32 9
  %166 = load i64, i64* %165, align 8
  %167 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %168 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %167, i32 0, i32 11
  %169 = load i32, i32* %168, align 4
  %170 = sext i32 %169 to i64
  %171 = add nsw i64 %170, %166
  %172 = trunc i64 %171 to i32
  store i32 %172, i32* %168, align 4
  %173 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %174 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %173, i32 0, i32 10
  %175 = load i32, i32* %174, align 8
  %176 = add nsw i32 %175, -1
  store i32 %176, i32* %174, align 8
  br label %177

177:                                              ; preds = %163
  %178 = load i32, i32* %12, align 4
  %179 = add i32 %178, 1
  store i32 %179, i32* %12, align 4
  br label %140

180:                                              ; preds = %140
  store i32 0, i32* %12, align 4
  %181 = load i64, i64* %8, align 8
  store i64 %181, i64* %11, align 8
  br label %182

182:                                              ; preds = %254, %180
  %183 = load i32, i32* %12, align 4
  %184 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %185 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %184, i32 0, i32 0
  %186 = load %struct.TYPE_19__*, %struct.TYPE_19__** %185, align 8
  %187 = load i64, i64* @MP4_SAMPLE_TABLE_STTS, align 8
  %188 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %186, i64 %187
  %189 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = icmp ult i32 %183, %190
  br i1 %191, label %192, label %257

192:                                              ; preds = %182
  %193 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %194 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %195 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %196 = load i64, i64* @MP4_SAMPLE_TABLE_STTS, align 8
  %197 = load i32, i32* %12, align 4
  %198 = icmp ne i32 %197, 0
  %199 = xor i1 %198, true
  %200 = zext i1 %199 to i32
  %201 = call i8* @mp4_read_sample_table(%struct.TYPE_21__* %193, %struct.TYPE_20__* %194, %struct.TYPE_22__* %195, i64 %196, i32 %200)
  %202 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %203 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %202, i32 0, i32 8
  store i8* %201, i8** %203, align 8
  %204 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %205 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %204, i32 0, i32 8
  %206 = load i8*, i8** %205, align 8
  %207 = load i8*, i8** @VC_CONTAINER_SUCCESS, align 8
  %208 = icmp ne i8* %206, %207
  br i1 %208, label %209, label %210

209:                                              ; preds = %192
  br label %359

210:                                              ; preds = %192
  %211 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %212 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %211, i32 0, i32 2
  %213 = load i64, i64* %212, align 8
  %214 = load i64, i64* %11, align 8
  %215 = icmp ule i64 %213, %214
  br i1 %215, label %216, label %236

216:                                              ; preds = %210
  %217 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %218 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %217, i32 0, i32 2
  %219 = load i64, i64* %218, align 8
  %220 = load i64, i64* %11, align 8
  %221 = sub i64 %220, %219
  store i64 %221, i64* %11, align 8
  %222 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %223 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %222, i32 0, i32 4
  %224 = load i32, i32* %223, align 4
  %225 = sext i32 %224 to i64
  %226 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %227 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %226, i32 0, i32 2
  %228 = load i64, i64* %227, align 8
  %229 = mul i64 %225, %228
  %230 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %231 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %230, i32 0, i32 3
  %232 = load i32, i32* %231, align 8
  %233 = sext i32 %232 to i64
  %234 = add i64 %233, %229
  %235 = trunc i64 %234 to i32
  store i32 %235, i32* %231, align 8
  br label %254

236:                                              ; preds = %210
  %237 = load i64, i64* %11, align 8
  %238 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %239 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %238, i32 0, i32 2
  %240 = load i64, i64* %239, align 8
  %241 = sub i64 %240, %237
  store i64 %241, i64* %239, align 8
  %242 = load i64, i64* %11, align 8
  %243 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %244 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %243, i32 0, i32 4
  %245 = load i32, i32* %244, align 4
  %246 = sext i32 %245 to i64
  %247 = mul i64 %242, %246
  %248 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %249 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %248, i32 0, i32 3
  %250 = load i32, i32* %249, align 8
  %251 = sext i32 %250 to i64
  %252 = add i64 %251, %247
  %253 = trunc i64 %252 to i32
  store i32 %253, i32* %249, align 8
  br label %257

254:                                              ; preds = %216
  %255 = load i32, i32* %12, align 4
  %256 = add i32 %255, 1
  store i32 %256, i32* %12, align 4
  br label %182

257:                                              ; preds = %236, %182
  store i32 0, i32* %12, align 4
  %258 = load i64, i64* %8, align 8
  store i64 %258, i64* %11, align 8
  br label %259

259:                                              ; preds = %305, %257
  %260 = load i32, i32* %12, align 4
  %261 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %262 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %261, i32 0, i32 0
  %263 = load %struct.TYPE_19__*, %struct.TYPE_19__** %262, align 8
  %264 = load i64, i64* @MP4_SAMPLE_TABLE_CTTS, align 8
  %265 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %263, i64 %264
  %266 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %265, i32 0, i32 0
  %267 = load i32, i32* %266, align 4
  %268 = icmp ult i32 %260, %267
  br i1 %268, label %269, label %308

269:                                              ; preds = %259
  %270 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %271 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %272 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %273 = load i64, i64* @MP4_SAMPLE_TABLE_CTTS, align 8
  %274 = load i32, i32* %12, align 4
  %275 = icmp ne i32 %274, 0
  %276 = xor i1 %275, true
  %277 = zext i1 %276 to i32
  %278 = call i8* @mp4_read_sample_table(%struct.TYPE_21__* %270, %struct.TYPE_20__* %271, %struct.TYPE_22__* %272, i64 %273, i32 %277)
  %279 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %280 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %279, i32 0, i32 8
  store i8* %278, i8** %280, align 8
  %281 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %282 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %281, i32 0, i32 8
  %283 = load i8*, i8** %282, align 8
  %284 = load i8*, i8** @VC_CONTAINER_SUCCESS, align 8
  %285 = icmp ne i8* %283, %284
  br i1 %285, label %286, label %287

286:                                              ; preds = %269
  br label %359

287:                                              ; preds = %269
  %288 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %289 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %288, i32 0, i32 5
  %290 = load i64, i64* %289, align 8
  %291 = load i64, i64* %11, align 8
  %292 = icmp ule i64 %290, %291
  br i1 %292, label %293, label %299

293:                                              ; preds = %287
  %294 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %295 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %294, i32 0, i32 5
  %296 = load i64, i64* %295, align 8
  %297 = load i64, i64* %11, align 8
  %298 = sub i64 %297, %296
  store i64 %298, i64* %11, align 8
  br label %305

299:                                              ; preds = %287
  %300 = load i64, i64* %11, align 8
  %301 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %302 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %301, i32 0, i32 5
  %303 = load i64, i64* %302, align 8
  %304 = sub i64 %303, %300
  store i64 %304, i64* %302, align 8
  br label %308

305:                                              ; preds = %293
  %306 = load i32, i32* %12, align 4
  %307 = add i32 %306, 1
  store i32 %307, i32* %12, align 4
  br label %259

308:                                              ; preds = %299, %259
  store i32 0, i32* %12, align 4
  br label %309

309:                                              ; preds = %346, %308
  %310 = load i32, i32* %12, align 4
  %311 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %312 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %311, i32 0, i32 0
  %313 = load %struct.TYPE_19__*, %struct.TYPE_19__** %312, align 8
  %314 = load i64, i64* @MP4_SAMPLE_TABLE_STSS, align 8
  %315 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %313, i64 %314
  %316 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %315, i32 0, i32 0
  %317 = load i32, i32* %316, align 4
  %318 = icmp ult i32 %310, %317
  br i1 %318, label %319, label %349

319:                                              ; preds = %309
  %320 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %321 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %322 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %323 = load i64, i64* @MP4_SAMPLE_TABLE_STSS, align 8
  %324 = load i32, i32* %12, align 4
  %325 = icmp ne i32 %324, 0
  %326 = xor i1 %325, true
  %327 = zext i1 %326 to i32
  %328 = call i8* @mp4_read_sample_table(%struct.TYPE_21__* %320, %struct.TYPE_20__* %321, %struct.TYPE_22__* %322, i64 %323, i32 %327)
  %329 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %330 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %329, i32 0, i32 8
  store i8* %328, i8** %330, align 8
  %331 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %332 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %331, i32 0, i32 8
  %333 = load i8*, i8** %332, align 8
  %334 = load i8*, i8** @VC_CONTAINER_SUCCESS, align 8
  %335 = icmp ne i8* %333, %334
  br i1 %335, label %336, label %337

336:                                              ; preds = %319
  br label %359

337:                                              ; preds = %319
  %338 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %339 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %338, i32 0, i32 6
  %340 = load i64, i64* %339, align 8
  %341 = load i64, i64* %8, align 8
  %342 = add i64 %341, 1
  %343 = icmp uge i64 %340, %342
  br i1 %343, label %344, label %345

344:                                              ; preds = %337
  br label %349

345:                                              ; preds = %337
  br label %346

346:                                              ; preds = %345
  %347 = load i32, i32* %12, align 4
  %348 = add i32 %347, 1
  store i32 %348, i32* %12, align 4
  br label %309

349:                                              ; preds = %344, %309
  %350 = load i64, i64* %8, align 8
  %351 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %352 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %351, i32 0, i32 7
  store i64 %350, i64* %352, align 8
  %353 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %354 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %353, i32 0, i32 9
  store i64 0, i64* %354, align 8
  %355 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %356 = load i64, i64* %6, align 8
  %357 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %358 = call i32 @mp4_read_sample_header(%struct.TYPE_21__* %355, i64 %356, %struct.TYPE_22__* %357)
  br label %359

359:                                              ; preds = %349, %336, %286, %209, %162, %129, %49
  %360 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %361 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %360, i32 0, i32 8
  %362 = load i8*, i8** %361, align 8
  ret i8* %362
}

declare dso_local i32 @memset(%struct.TYPE_22__*, i32, i32) #1

declare dso_local i8* @mp4_read_sample_table(%struct.TYPE_21__*, %struct.TYPE_20__*, %struct.TYPE_22__*, i64, i32) #1

declare dso_local i32 @mp4_read_sample_header(%struct.TYPE_21__*, i64, %struct.TYPE_22__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
