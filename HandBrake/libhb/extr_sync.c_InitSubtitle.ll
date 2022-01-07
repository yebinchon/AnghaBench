; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_sync.c_InitSubtitle.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_sync.c_InitSubtitle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32, %struct.TYPE_16__*, %struct.TYPE_19__* }
%struct.TYPE_16__ = type { i32, i32, i32, i32 }
%struct.TYPE_19__ = type { i32, i32*, i32*, %struct.TYPE_18__, i32, i32, i8*, i8*, i8*, i8*, i64, i32, i32, i32, i8*, %struct.TYPE_20__* }
%struct.TYPE_18__ = type { %struct.TYPE_23__, %struct.TYPE_22__* }
%struct.TYPE_23__ = type { i32, i32, i32 }
%struct.TYPE_22__ = type { i64, i64, %struct.TYPE_17__, i32, i32*, i32 }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_21__ = type { %struct.TYPE_19__*, i32, i32*, %struct.TYPE_22__*, %struct.TYPE_21__*, %struct.TYPE_20__* }

@SYNC_MAX_SUBTITLE_QUEUE_LEN = common dso_local global i32 0, align 4
@SYNC_MIN_SUBTITLE_QUEUE_LEN = common dso_local global i32 0, align 4
@SYNC_TYPE_SUBTITLE = common dso_local global i32 0, align 4
@AV_NOPTS_VALUE = common dso_local global i64 0, align 8
@WORK_SYNC_SUBTITLE = common dso_local global i32 0, align 4
@TEXTSUB = common dso_local global i64 0, align 8
@PASSTHRUSUB = common dso_local global i64 0, align 8
@HB_MUX_MASK_MP4 = common dso_local global i32 0, align 4
@PGSSUB = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_20__*, i32)* @InitSubtitle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @InitSubtitle(%struct.TYPE_20__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca %struct.TYPE_21__*, align 8
  %8 = alloca %struct.TYPE_22__*, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %6, align 8
  %9 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %9, i32 0, i32 1
  %11 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* %5, align 4
  %15 = call %struct.TYPE_22__* @hb_list_item(i32 %13, i32 %14)
  store %struct.TYPE_22__* %15, %struct.TYPE_22__** %8, align 8
  %16 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %17 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %16, i32 0, i32 4
  %18 = load i32*, i32** %17, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %267

21:                                               ; preds = %2
  %22 = call %struct.TYPE_21__* @calloc(i32 1, i32 48)
  store %struct.TYPE_21__* %22, %struct.TYPE_21__** %7, align 8
  %23 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %24 = icmp eq %struct.TYPE_21__* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  br label %242

26:                                               ; preds = %21
  %27 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %28 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %28, i32 0, i32 5
  store %struct.TYPE_20__* %27, %struct.TYPE_20__** %29, align 8
  %30 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %30, i32 0, i32 2
  %32 = load %struct.TYPE_19__*, %struct.TYPE_19__** %31, align 8
  %33 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @hb_list_count(i32 %37)
  %39 = add nsw i32 1, %38
  %40 = load i32, i32* %5, align 4
  %41 = add nsw i32 %39, %40
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %32, i64 %42
  %44 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %44, i32 0, i32 0
  store %struct.TYPE_19__* %43, %struct.TYPE_19__** %45, align 8
  %46 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %47 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_19__*, %struct.TYPE_19__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %49, i32 0, i32 15
  store %struct.TYPE_20__* %46, %struct.TYPE_20__** %50, align 8
  %51 = call i8* (...) @hb_list_init()
  %52 = bitcast i8* %51 to i32*
  %53 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_19__*, %struct.TYPE_19__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %55, i32 0, i32 1
  store i32* %52, i32** %56, align 8
  %57 = call i8* (...) @hb_list_init()
  %58 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_19__*, %struct.TYPE_19__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %60, i32 0, i32 14
  store i8* %57, i8** %61, align 8
  %62 = load i32, i32* @SYNC_MAX_SUBTITLE_QUEUE_LEN, align 4
  %63 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_19__*, %struct.TYPE_19__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %65, i32 0, i32 13
  store i32 %62, i32* %66, align 8
  %67 = load i32, i32* @SYNC_MIN_SUBTITLE_QUEUE_LEN, align 4
  %68 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_19__*, %struct.TYPE_19__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %70, i32 0, i32 12
  store i32 %67, i32* %71, align 4
  %72 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_19__*, %struct.TYPE_19__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %74, i32 0, i32 1
  %76 = load i32*, i32** %75, align 8
  %77 = icmp eq i32* %76, null
  br i1 %77, label %78, label %79

78:                                               ; preds = %26
  br label %242

79:                                               ; preds = %26
  %80 = call i8* (...) @hb_list_init()
  %81 = bitcast i8* %80 to i32*
  %82 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_19__*, %struct.TYPE_19__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %84, i32 0, i32 2
  store i32* %81, i32** %85, align 8
  %86 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_19__*, %struct.TYPE_19__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %88, i32 0, i32 2
  %90 = load i32*, i32** %89, align 8
  %91 = icmp eq i32* %90, null
  br i1 %91, label %92, label %93

92:                                               ; preds = %79
  br label %242

93:                                               ; preds = %79
  %94 = load i32, i32* @SYNC_TYPE_SUBTITLE, align 4
  %95 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %96 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %95, i32 0, i32 0
  %97 = load %struct.TYPE_19__*, %struct.TYPE_19__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %97, i32 0, i32 11
  store i32 %94, i32* %98, align 8
  %99 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %100 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %100, i32 0, i32 0
  %102 = load %struct.TYPE_19__*, %struct.TYPE_19__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %102, i32 0, i32 10
  store i64 %99, i64* %103, align 8
  %104 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %105 = inttoptr i64 %104 to i8*
  %106 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %107 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %106, i32 0, i32 0
  %108 = load %struct.TYPE_19__*, %struct.TYPE_19__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %108, i32 0, i32 9
  store i8* %105, i8** %109, align 8
  %110 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %111 = inttoptr i64 %110 to i8*
  %112 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %113 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %112, i32 0, i32 0
  %114 = load %struct.TYPE_19__*, %struct.TYPE_19__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %114, i32 0, i32 8
  store i8* %111, i8** %115, align 8
  %116 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %117 = inttoptr i64 %116 to i8*
  %118 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %119 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %118, i32 0, i32 0
  %120 = load %struct.TYPE_19__*, %struct.TYPE_19__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %120, i32 0, i32 7
  store i8* %117, i8** %121, align 8
  %122 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %123 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %122, i32 0, i32 0
  %124 = load %struct.TYPE_19__*, %struct.TYPE_19__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %124, i32 0, i32 0
  store i32 -1, i32* %125, align 8
  %126 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %127 = inttoptr i64 %126 to i8*
  %128 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %129 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %128, i32 0, i32 0
  %130 = load %struct.TYPE_19__*, %struct.TYPE_19__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %130, i32 0, i32 6
  store i8* %127, i8** %131, align 8
  %132 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %133 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %134 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %133, i32 0, i32 0
  %135 = load %struct.TYPE_19__*, %struct.TYPE_19__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %135, i32 0, i32 3
  %137 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %136, i32 0, i32 1
  store %struct.TYPE_22__* %132, %struct.TYPE_22__** %137, align 8
  %138 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %139 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %138, i32 0, i32 3
  %140 = load i32, i32* %139, align 8
  %141 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %142 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %141, i32 0, i32 0
  %143 = load %struct.TYPE_19__*, %struct.TYPE_19__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %143, i32 0, i32 5
  store i32 %140, i32* %144, align 4
  %145 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %146 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %145, i32 0, i32 5
  %147 = load i32, i32* %146, align 8
  %148 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %149 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %148, i32 0, i32 0
  %150 = load %struct.TYPE_19__*, %struct.TYPE_19__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %150, i32 0, i32 4
  store i32 %147, i32* %151, align 8
  %152 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %153 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %152, i32 0, i32 1
  %154 = load %struct.TYPE_16__*, %struct.TYPE_16__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* @WORK_SYNC_SUBTITLE, align 4
  %158 = call %struct.TYPE_21__* @hb_get_work(i32 %156, i32 %157)
  store %struct.TYPE_21__* %158, %struct.TYPE_21__** %6, align 8
  %159 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %160 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %161 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %160, i32 0, i32 4
  store %struct.TYPE_21__* %159, %struct.TYPE_21__** %161, align 8
  %162 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %163 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %164 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %163, i32 0, i32 3
  store %struct.TYPE_22__* %162, %struct.TYPE_22__** %164, align 8
  %165 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %166 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %165, i32 0, i32 4
  %167 = load i32*, i32** %166, align 8
  %168 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %169 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %168, i32 0, i32 2
  store i32* %167, i32** %169, align 8
  %170 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %171 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %170, i32 0, i32 3
  %172 = load i32, i32* %171, align 8
  %173 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %174 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %173, i32 0, i32 1
  store i32 %172, i32* %174, align 8
  %175 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %176 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %175, i32 0, i32 0
  %177 = load %struct.TYPE_19__*, %struct.TYPE_19__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %177, i32 0, i32 3
  %179 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %178, i32 0, i32 0
  %180 = call i32 @memset(%struct.TYPE_23__* %179, i32 0, i32 12)
  %181 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %182 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = load i64, i64* @TEXTSUB, align 8
  %185 = icmp eq i64 %183, %184
  br i1 %185, label %186, label %209

186:                                              ; preds = %93
  %187 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %188 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %187, i32 0, i32 2
  %189 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %188, i32 0, i32 0
  %190 = load i64, i64* %189, align 8
  %191 = load i64, i64* @PASSTHRUSUB, align 8
  %192 = icmp eq i64 %190, %191
  br i1 %192, label %193, label %209

193:                                              ; preds = %186
  %194 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %195 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %194, i32 0, i32 1
  %196 = load %struct.TYPE_16__*, %struct.TYPE_16__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = load i32, i32* @HB_MUX_MASK_MP4, align 4
  %200 = and i32 %198, %199
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %209

202:                                              ; preds = %193
  %203 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %204 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %203, i32 0, i32 0
  %205 = load %struct.TYPE_19__*, %struct.TYPE_19__** %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %205, i32 0, i32 3
  %207 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %206, i32 0, i32 0
  %208 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %207, i32 0, i32 0
  store i32 1, i32* %208, align 8
  br label %209

209:                                              ; preds = %202, %193, %186, %93
  %210 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %211 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %210, i32 0, i32 2
  %212 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %211, i32 0, i32 0
  %213 = load i64, i64* %212, align 8
  %214 = load i64, i64* @PASSTHRUSUB, align 8
  %215 = icmp eq i64 %213, %214
  br i1 %215, label %216, label %229

216:                                              ; preds = %209
  %217 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %218 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %217, i32 0, i32 1
  %219 = load i64, i64* %218, align 8
  %220 = load i64, i64* @PGSSUB, align 8
  %221 = icmp ne i64 %219, %220
  br i1 %221, label %222, label %229

222:                                              ; preds = %216
  %223 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %224 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %223, i32 0, i32 0
  %225 = load %struct.TYPE_19__*, %struct.TYPE_19__** %224, align 8
  %226 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %225, i32 0, i32 3
  %227 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %226, i32 0, i32 0
  %228 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %227, i32 0, i32 1
  store i32 1, i32* %228, align 4
  br label %229

229:                                              ; preds = %222, %216, %209
  %230 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %231 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %230, i32 0, i32 0
  %232 = load %struct.TYPE_19__*, %struct.TYPE_19__** %231, align 8
  %233 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %232, i32 0, i32 3
  %234 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %233, i32 0, i32 0
  %235 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %234, i32 0, i32 2
  %236 = call i32 @hb_buffer_list_clear(i32* %235)
  %237 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %238 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 8
  %240 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %241 = call i32 @hb_list_add(i32 %239, %struct.TYPE_21__* %240)
  store i32 0, i32* %3, align 4
  br label %267

242:                                              ; preds = %92, %78, %25
  %243 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %244 = icmp ne %struct.TYPE_21__* %243, null
  br i1 %244, label %245, label %262

245:                                              ; preds = %242
  %246 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %247 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %246, i32 0, i32 0
  %248 = load %struct.TYPE_19__*, %struct.TYPE_19__** %247, align 8
  %249 = icmp ne %struct.TYPE_19__* %248, null
  br i1 %249, label %250, label %261

250:                                              ; preds = %245
  %251 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %252 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %251, i32 0, i32 0
  %253 = load %struct.TYPE_19__*, %struct.TYPE_19__** %252, align 8
  %254 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %253, i32 0, i32 2
  %255 = call i32 @hb_list_close(i32** %254)
  %256 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %257 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %256, i32 0, i32 0
  %258 = load %struct.TYPE_19__*, %struct.TYPE_19__** %257, align 8
  %259 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %258, i32 0, i32 1
  %260 = call i32 @hb_list_close(i32** %259)
  br label %261

261:                                              ; preds = %250, %245
  br label %262

262:                                              ; preds = %261, %242
  %263 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %264 = call i32 @free(%struct.TYPE_21__* %263)
  %265 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %266 = call i32 @free(%struct.TYPE_21__* %265)
  store i32 1, i32* %3, align 4
  br label %267

267:                                              ; preds = %262, %229, %20
  %268 = load i32, i32* %3, align 4
  ret i32 %268
}

declare dso_local %struct.TYPE_22__* @hb_list_item(i32, i32) #1

declare dso_local %struct.TYPE_21__* @calloc(i32, i32) #1

declare dso_local i32 @hb_list_count(i32) #1

declare dso_local i8* @hb_list_init(...) #1

declare dso_local %struct.TYPE_21__* @hb_get_work(i32, i32) #1

declare dso_local i32 @memset(%struct.TYPE_23__*, i32, i32) #1

declare dso_local i32 @hb_buffer_list_clear(i32*) #1

declare dso_local i32 @hb_list_add(i32, %struct.TYPE_21__*) #1

declare dso_local i32 @hb_list_close(i32**) #1

declare dso_local i32 @free(%struct.TYPE_21__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
