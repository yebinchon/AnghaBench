; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_mxfenc.c_mxf_write_package.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_mxfenc.c_mxf_write_package.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_39__ = type { i32 (%struct.TYPE_43__*, %struct.TYPE_41__*)* }
%struct.TYPE_43__ = type { i32, %struct.TYPE_41__**, i32, %struct.TYPE_42__*, %struct.TYPE_40__* }
%struct.TYPE_42__ = type { i64 }
%struct.TYPE_40__ = type { i32, i32, i32, %struct.TYPE_41__*, i32 }
%struct.TYPE_41__ = type { %struct.TYPE_37__* }
%struct.TYPE_37__ = type { i64 }
%struct.TYPE_38__ = type { i32, i32, i32 }

@MaterialPackage = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Material Package key\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"Source Package key\00", align 1
@AV_LOG_DEBUG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"package type:%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"package uid\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"package umid second part\00", align 1
@Track = common dso_local global i32 0, align 4
@TaggedValue = common dso_local global i32 0, align 4
@SourcePackage = common dso_local global i32 0, align 4
@MultipleDescriptor = common dso_local global i32 0, align 4
@SubDescriptor = common dso_local global i32 0, align 4
@TapeDescriptor = common dso_local global i32 0, align 4
@mxf_essence_container_uls = common dso_local global %struct.TYPE_39__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_43__*, %struct.TYPE_38__*)* @mxf_write_package to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mxf_write_package(%struct.TYPE_43__* %0, %struct.TYPE_38__* %1) #0 {
  %3 = alloca %struct.TYPE_43__*, align 8
  %4 = alloca %struct.TYPE_38__*, align 8
  %5 = alloca %struct.TYPE_40__*, align 8
  %6 = alloca %struct.TYPE_42__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_41__*, align 8
  %12 = alloca %struct.TYPE_37__*, align 8
  store %struct.TYPE_43__* %0, %struct.TYPE_43__** %3, align 8
  store %struct.TYPE_38__* %1, %struct.TYPE_38__** %4, align 8
  %13 = load %struct.TYPE_43__*, %struct.TYPE_43__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %13, i32 0, i32 4
  %15 = load %struct.TYPE_40__*, %struct.TYPE_40__** %14, align 8
  store %struct.TYPE_40__* %15, %struct.TYPE_40__** %5, align 8
  %16 = load %struct.TYPE_43__*, %struct.TYPE_43__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %16, i32 0, i32 3
  %18 = load %struct.TYPE_42__*, %struct.TYPE_42__** %17, align 8
  store %struct.TYPE_42__* %18, %struct.TYPE_42__** %6, align 8
  %19 = load %struct.TYPE_43__*, %struct.TYPE_43__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %8, align 4
  %23 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @mxf_utf16_local_tag_length(i32 %25)
  store i32 %26, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %27 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @MaterialPackage, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %70

32:                                               ; preds = %2
  %33 = load %struct.TYPE_40__*, %struct.TYPE_40__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %32
  %38 = load %struct.TYPE_43__*, %struct.TYPE_43__** %3, align 8
  %39 = load %struct.TYPE_43__*, %struct.TYPE_43__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @mxf_write_user_comments(%struct.TYPE_43__* %38, i32 %41)
  store i32 %42, i32* %10, align 4
  br label %43

43:                                               ; preds = %37, %32
  %44 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %45 = call i32 @mxf_write_metadata_key(%struct.TYPE_42__* %44, i32 79360)
  %46 = load %struct.TYPE_43__*, %struct.TYPE_43__** %3, align 8
  %47 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = sub nsw i64 %49, 16
  %51 = call i32 @PRINT_KEY(%struct.TYPE_43__* %46, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i64 %50)
  %52 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %53 = load i32, i32* %9, align 4
  %54 = add nsw i32 92, %53
  %55 = load i32, i32* %8, align 4
  %56 = mul nsw i32 16, %55
  %57 = add nsw i32 %54, %56
  %58 = load i32, i32* %10, align 4
  %59 = mul nsw i32 16, %58
  %60 = add nsw i32 %57, %59
  %61 = sext i32 %60 to i64
  %62 = load %struct.TYPE_40__*, %struct.TYPE_40__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = sext i32 %64 to i64
  %66 = mul nsw i64 12, %65
  %67 = add nsw i64 %61, %66
  %68 = trunc i64 %67 to i32
  %69 = call i32 @klv_encode_ber_length(%struct.TYPE_42__* %52, i32 %68)
  br label %94

70:                                               ; preds = %2
  %71 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %72 = call i32 @mxf_write_metadata_key(%struct.TYPE_42__* %71, i32 79616)
  %73 = load %struct.TYPE_43__*, %struct.TYPE_43__** %3, align 8
  %74 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = sub nsw i64 %76, 16
  %78 = call i32 @PRINT_KEY(%struct.TYPE_43__* %73, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i64 %77)
  %79 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %80 = load i32, i32* %9, align 4
  %81 = add nsw i32 112, %80
  %82 = load i32, i32* %8, align 4
  %83 = mul nsw i32 16, %82
  %84 = add nsw i32 %81, %83
  %85 = sext i32 %84 to i64
  %86 = load %struct.TYPE_40__*, %struct.TYPE_40__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = sext i32 %88 to i64
  %90 = mul nsw i64 12, %89
  %91 = add nsw i64 %85, %90
  %92 = trunc i64 %91 to i32
  %93 = call i32 @klv_encode_ber_length(%struct.TYPE_42__* %79, i32 %92)
  br label %94

94:                                               ; preds = %70, %43
  %95 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %96 = call i32 @mxf_write_local_tag(%struct.TYPE_42__* %95, i32 16, i32 15370)
  %97 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %98 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @mxf_write_uuid(%struct.TYPE_42__* %97, i32 %100, i32 %103)
  %105 = load %struct.TYPE_43__*, %struct.TYPE_43__** %3, align 8
  %106 = load i32, i32* @AV_LOG_DEBUG, align 4
  %107 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @av_log(%struct.TYPE_43__* %105, i32 %106, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %109)
  %111 = load %struct.TYPE_43__*, %struct.TYPE_43__** %3, align 8
  %112 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = sub nsw i64 %114, 16
  %116 = call i32 @PRINT_KEY(%struct.TYPE_43__* %111, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i64 %115)
  %117 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %118 = call i32 @mxf_write_local_tag(%struct.TYPE_42__* %117, i32 32, i32 17409)
  %119 = load %struct.TYPE_43__*, %struct.TYPE_43__** %3, align 8
  %120 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @mxf_write_umid(%struct.TYPE_43__* %119, i32 %122)
  %124 = load %struct.TYPE_43__*, %struct.TYPE_43__** %3, align 8
  %125 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %126 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = sub nsw i64 %127, 16
  %129 = call i32 @PRINT_KEY(%struct.TYPE_43__* %124, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i64 %128)
  %130 = load i32, i32* %9, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %138

132:                                              ; preds = %94
  %133 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %134 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @mxf_write_local_tag_utf16(%struct.TYPE_42__* %133, i32 17410, i32 %136)
  br label %138

138:                                              ; preds = %132, %94
  %139 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %140 = call i32 @mxf_write_local_tag(%struct.TYPE_42__* %139, i32 8, i32 17413)
  %141 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %142 = load %struct.TYPE_40__*, %struct.TYPE_40__** %5, align 8
  %143 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %142, i32 0, i32 4
  %144 = load i32, i32* %143, align 8
  %145 = call i32 @avio_wb64(%struct.TYPE_42__* %141, i32 %144)
  %146 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %147 = call i32 @mxf_write_local_tag(%struct.TYPE_42__* %146, i32 8, i32 17412)
  %148 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %149 = load %struct.TYPE_40__*, %struct.TYPE_40__** %5, align 8
  %150 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %149, i32 0, i32 4
  %151 = load i32, i32* %150, align 8
  %152 = call i32 @avio_wb64(%struct.TYPE_42__* %148, i32 %151)
  %153 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %154 = load i32, i32* %8, align 4
  %155 = mul nsw i32 %154, 16
  %156 = add nsw i32 %155, 8
  %157 = call i32 @mxf_write_local_tag(%struct.TYPE_42__* %153, i32 %156, i32 17411)
  %158 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %159 = load i32, i32* %8, align 4
  %160 = call i32 @mxf_write_refs_count(%struct.TYPE_42__* %158, i32 %159)
  store i32 0, i32* %7, align 4
  br label %161

161:                                              ; preds = %174, %138
  %162 = load i32, i32* %7, align 4
  %163 = load i32, i32* %8, align 4
  %164 = icmp slt i32 %162, %163
  br i1 %164, label %165, label %177

165:                                              ; preds = %161
  %166 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %167 = load i32, i32* @Track, align 4
  %168 = load %struct.TYPE_40__*, %struct.TYPE_40__** %5, align 8
  %169 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = load i32, i32* %7, align 4
  %172 = add nsw i32 %170, %171
  %173 = call i32 @mxf_write_uuid(%struct.TYPE_42__* %166, i32 %167, i32 %172)
  br label %174

174:                                              ; preds = %165
  %175 = load i32, i32* %7, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %7, align 4
  br label %161

177:                                              ; preds = %161
  %178 = load %struct.TYPE_40__*, %struct.TYPE_40__** %5, align 8
  %179 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %210

182:                                              ; preds = %177
  %183 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %184 = load i32, i32* %10, align 4
  %185 = mul nsw i32 %184, 16
  %186 = add nsw i32 %185, 8
  %187 = call i32 @mxf_write_local_tag(%struct.TYPE_42__* %183, i32 %186, i32 17414)
  %188 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %189 = load i32, i32* %10, align 4
  %190 = call i32 @mxf_write_refs_count(%struct.TYPE_42__* %188, i32 %189)
  store i32 0, i32* %7, align 4
  br label %191

191:                                              ; preds = %206, %182
  %192 = load i32, i32* %7, align 4
  %193 = load i32, i32* %10, align 4
  %194 = icmp slt i32 %192, %193
  br i1 %194, label %195, label %209

195:                                              ; preds = %191
  %196 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %197 = load i32, i32* @TaggedValue, align 4
  %198 = load %struct.TYPE_40__*, %struct.TYPE_40__** %5, align 8
  %199 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %198, i32 0, i32 2
  %200 = load i32, i32* %199, align 8
  %201 = load i32, i32* %10, align 4
  %202 = sub nsw i32 %200, %201
  %203 = load i32, i32* %7, align 4
  %204 = add nsw i32 %202, %203
  %205 = call i32 @mxf_write_uuid(%struct.TYPE_42__* %196, i32 %197, i32 %204)
  br label %206

206:                                              ; preds = %195
  %207 = load i32, i32* %7, align 4
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %7, align 4
  br label %191

209:                                              ; preds = %191
  br label %210

210:                                              ; preds = %209, %177
  %211 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %212 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 4
  %214 = load i32, i32* @SourcePackage, align 4
  %215 = icmp eq i32 %213, %214
  br i1 %215, label %216, label %239

216:                                              ; preds = %210
  %217 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %218 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 4
  %220 = icmp eq i32 %219, 1
  br i1 %220, label %221, label %239

221:                                              ; preds = %216
  %222 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %223 = call i32 @mxf_write_local_tag(%struct.TYPE_42__* %222, i32 16, i32 18177)
  %224 = load %struct.TYPE_43__*, %struct.TYPE_43__** %3, align 8
  %225 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 8
  %227 = icmp sgt i32 %226, 1
  br i1 %227, label %228, label %234

228:                                              ; preds = %221
  %229 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %230 = load i32, i32* @MultipleDescriptor, align 4
  %231 = call i32 @mxf_write_uuid(%struct.TYPE_42__* %229, i32 %230, i32 0)
  %232 = load %struct.TYPE_43__*, %struct.TYPE_43__** %3, align 8
  %233 = call i32 @mxf_write_multi_descriptor(%struct.TYPE_43__* %232)
  br label %238

234:                                              ; preds = %221
  %235 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %236 = load i32, i32* @SubDescriptor, align 4
  %237 = call i32 @mxf_write_uuid(%struct.TYPE_42__* %235, i32 %236, i32 0)
  br label %238

238:                                              ; preds = %234, %228
  br label %259

239:                                              ; preds = %216, %210
  %240 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %241 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %240, i32 0, i32 1
  %242 = load i32, i32* %241, align 4
  %243 = load i32, i32* @SourcePackage, align 4
  %244 = icmp eq i32 %242, %243
  br i1 %244, label %245, label %258

245:                                              ; preds = %239
  %246 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %247 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 4
  %249 = icmp eq i32 %248, 2
  br i1 %249, label %250, label %258

250:                                              ; preds = %245
  %251 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %252 = call i32 @mxf_write_local_tag(%struct.TYPE_42__* %251, i32 16, i32 18177)
  %253 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %254 = load i32, i32* @TapeDescriptor, align 4
  %255 = call i32 @mxf_write_uuid(%struct.TYPE_42__* %253, i32 %254, i32 0)
  %256 = load %struct.TYPE_43__*, %struct.TYPE_43__** %3, align 8
  %257 = call i32 @mxf_write_tape_descriptor(%struct.TYPE_43__* %256)
  br label %258

258:                                              ; preds = %250, %245, %239
  br label %259

259:                                              ; preds = %258, %238
  %260 = load %struct.TYPE_43__*, %struct.TYPE_43__** %3, align 8
  %261 = load %struct.TYPE_40__*, %struct.TYPE_40__** %5, align 8
  %262 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %261, i32 0, i32 3
  %263 = load %struct.TYPE_41__*, %struct.TYPE_41__** %262, align 8
  %264 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %265 = call i32 @mxf_write_track(%struct.TYPE_43__* %260, %struct.TYPE_41__* %263, %struct.TYPE_38__* %264)
  %266 = load %struct.TYPE_43__*, %struct.TYPE_43__** %3, align 8
  %267 = load %struct.TYPE_40__*, %struct.TYPE_40__** %5, align 8
  %268 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %267, i32 0, i32 3
  %269 = load %struct.TYPE_41__*, %struct.TYPE_41__** %268, align 8
  %270 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %271 = call i32 @mxf_write_sequence(%struct.TYPE_43__* %266, %struct.TYPE_41__* %269, %struct.TYPE_38__* %270)
  %272 = load %struct.TYPE_43__*, %struct.TYPE_43__** %3, align 8
  %273 = load %struct.TYPE_40__*, %struct.TYPE_40__** %5, align 8
  %274 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %273, i32 0, i32 3
  %275 = load %struct.TYPE_41__*, %struct.TYPE_41__** %274, align 8
  %276 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %277 = call i32 @mxf_write_timecode_component(%struct.TYPE_43__* %272, %struct.TYPE_41__* %275, %struct.TYPE_38__* %276)
  %278 = load %struct.TYPE_40__*, %struct.TYPE_40__** %5, align 8
  %279 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %278, i32 0, i32 1
  %280 = load i32, i32* %279, align 4
  %281 = add nsw i32 %280, 1
  store i32 %281, i32* %279, align 4
  store i32 0, i32* %7, align 4
  br label %282

282:                                              ; preds = %337, %259
  %283 = load i32, i32* %7, align 4
  %284 = load %struct.TYPE_43__*, %struct.TYPE_43__** %3, align 8
  %285 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %284, i32 0, i32 0
  %286 = load i32, i32* %285, align 8
  %287 = icmp slt i32 %283, %286
  br i1 %287, label %288, label %340

288:                                              ; preds = %282
  %289 = load %struct.TYPE_43__*, %struct.TYPE_43__** %3, align 8
  %290 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %289, i32 0, i32 1
  %291 = load %struct.TYPE_41__**, %struct.TYPE_41__*** %290, align 8
  %292 = load i32, i32* %7, align 4
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds %struct.TYPE_41__*, %struct.TYPE_41__** %291, i64 %293
  %295 = load %struct.TYPE_41__*, %struct.TYPE_41__** %294, align 8
  store %struct.TYPE_41__* %295, %struct.TYPE_41__** %11, align 8
  %296 = load %struct.TYPE_43__*, %struct.TYPE_43__** %3, align 8
  %297 = load %struct.TYPE_41__*, %struct.TYPE_41__** %11, align 8
  %298 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %299 = call i32 @mxf_write_track(%struct.TYPE_43__* %296, %struct.TYPE_41__* %297, %struct.TYPE_38__* %298)
  %300 = load %struct.TYPE_43__*, %struct.TYPE_43__** %3, align 8
  %301 = load %struct.TYPE_41__*, %struct.TYPE_41__** %11, align 8
  %302 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %303 = call i32 @mxf_write_sequence(%struct.TYPE_43__* %300, %struct.TYPE_41__* %301, %struct.TYPE_38__* %302)
  %304 = load %struct.TYPE_43__*, %struct.TYPE_43__** %3, align 8
  %305 = load %struct.TYPE_41__*, %struct.TYPE_41__** %11, align 8
  %306 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %307 = call i32 @mxf_write_structural_component(%struct.TYPE_43__* %304, %struct.TYPE_41__* %305, %struct.TYPE_38__* %306)
  %308 = load %struct.TYPE_40__*, %struct.TYPE_40__** %5, align 8
  %309 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %308, i32 0, i32 1
  %310 = load i32, i32* %309, align 4
  %311 = add nsw i32 %310, 1
  store i32 %311, i32* %309, align 4
  %312 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %313 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %312, i32 0, i32 1
  %314 = load i32, i32* %313, align 4
  %315 = load i32, i32* @SourcePackage, align 4
  %316 = icmp eq i32 %314, %315
  br i1 %316, label %317, label %336

317:                                              ; preds = %288
  %318 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %319 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %318, i32 0, i32 0
  %320 = load i32, i32* %319, align 4
  %321 = icmp eq i32 %320, 1
  br i1 %321, label %322, label %336

322:                                              ; preds = %317
  %323 = load %struct.TYPE_41__*, %struct.TYPE_41__** %11, align 8
  %324 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %323, i32 0, i32 0
  %325 = load %struct.TYPE_37__*, %struct.TYPE_37__** %324, align 8
  store %struct.TYPE_37__* %325, %struct.TYPE_37__** %12, align 8
  %326 = load %struct.TYPE_39__*, %struct.TYPE_39__** @mxf_essence_container_uls, align 8
  %327 = load %struct.TYPE_37__*, %struct.TYPE_37__** %12, align 8
  %328 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %327, i32 0, i32 0
  %329 = load i64, i64* %328, align 8
  %330 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %326, i64 %329
  %331 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %330, i32 0, i32 0
  %332 = load i32 (%struct.TYPE_43__*, %struct.TYPE_41__*)*, i32 (%struct.TYPE_43__*, %struct.TYPE_41__*)** %331, align 8
  %333 = load %struct.TYPE_43__*, %struct.TYPE_43__** %3, align 8
  %334 = load %struct.TYPE_41__*, %struct.TYPE_41__** %11, align 8
  %335 = call i32 %332(%struct.TYPE_43__* %333, %struct.TYPE_41__* %334)
  br label %336

336:                                              ; preds = %322, %317, %288
  br label %337

337:                                              ; preds = %336
  %338 = load i32, i32* %7, align 4
  %339 = add nsw i32 %338, 1
  store i32 %339, i32* %7, align 4
  br label %282

340:                                              ; preds = %282
  ret void
}

declare dso_local i32 @mxf_utf16_local_tag_length(i32) #1

declare dso_local i32 @mxf_write_user_comments(%struct.TYPE_43__*, i32) #1

declare dso_local i32 @mxf_write_metadata_key(%struct.TYPE_42__*, i32) #1

declare dso_local i32 @PRINT_KEY(%struct.TYPE_43__*, i8*, i64) #1

declare dso_local i32 @klv_encode_ber_length(%struct.TYPE_42__*, i32) #1

declare dso_local i32 @mxf_write_local_tag(%struct.TYPE_42__*, i32, i32) #1

declare dso_local i32 @mxf_write_uuid(%struct.TYPE_42__*, i32, i32) #1

declare dso_local i32 @av_log(%struct.TYPE_43__*, i32, i8*, i32) #1

declare dso_local i32 @mxf_write_umid(%struct.TYPE_43__*, i32) #1

declare dso_local i32 @mxf_write_local_tag_utf16(%struct.TYPE_42__*, i32, i32) #1

declare dso_local i32 @avio_wb64(%struct.TYPE_42__*, i32) #1

declare dso_local i32 @mxf_write_refs_count(%struct.TYPE_42__*, i32) #1

declare dso_local i32 @mxf_write_multi_descriptor(%struct.TYPE_43__*) #1

declare dso_local i32 @mxf_write_tape_descriptor(%struct.TYPE_43__*) #1

declare dso_local i32 @mxf_write_track(%struct.TYPE_43__*, %struct.TYPE_41__*, %struct.TYPE_38__*) #1

declare dso_local i32 @mxf_write_sequence(%struct.TYPE_43__*, %struct.TYPE_41__*, %struct.TYPE_38__*) #1

declare dso_local i32 @mxf_write_timecode_component(%struct.TYPE_43__*, %struct.TYPE_41__*, %struct.TYPE_38__*) #1

declare dso_local i32 @mxf_write_structural_component(%struct.TYPE_43__*, %struct.TYPE_41__*, %struct.TYPE_38__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
