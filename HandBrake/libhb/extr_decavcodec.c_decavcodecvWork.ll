; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_decavcodec.c_decavcodecvWork.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_decavcodec.c_decavcodecvWork.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i64, i64, i64, i32, i32, %struct.TYPE_19__, %struct.TYPE_17__*, i32, %struct.TYPE_16__*, i32, i32* }
%struct.TYPE_19__ = type { i64, i32, i32, i32, i32, i8*, i8*, i32* }
%struct.TYPE_17__ = type { i32, i32* }
%struct.TYPE_16__ = type { i8*, i8* }
%struct.TYPE_22__ = type { i32, %struct.TYPE_18__, i32*, i32*, i64 }
%struct.TYPE_18__ = type { i32, i64, i64, i32, i32, i8* }

@HB_WORK_OK = common dso_local global i32 0, align 4
@HB_BUF_FLAG_EOF = common dso_local global i32 0, align 4
@HB_WORK_DONE = common dso_local global i32 0, align 4
@AV_NOPTS_VALUE = common dso_local global i64 0, align 8
@HB_FLAG_DISCARD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_21__*, %struct.TYPE_22__**, %struct.TYPE_22__**)* @decavcodecvWork to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decavcodecvWork(%struct.TYPE_21__* %0, %struct.TYPE_22__** %1, %struct.TYPE_22__** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca %struct.TYPE_22__**, align 8
  %7 = alloca %struct.TYPE_22__**, align 8
  %8 = alloca %struct.TYPE_20__*, align 8
  %9 = alloca %struct.TYPE_22__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %5, align 8
  store %struct.TYPE_22__** %1, %struct.TYPE_22__*** %6, align 8
  store %struct.TYPE_22__** %2, %struct.TYPE_22__*** %7, align 8
  %20 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_20__*, %struct.TYPE_20__** %21, align 8
  store %struct.TYPE_20__* %22, %struct.TYPE_20__** %8, align 8
  %23 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %6, align 8
  %24 = load %struct.TYPE_22__*, %struct.TYPE_22__** %23, align 8
  store %struct.TYPE_22__* %24, %struct.TYPE_22__** %9, align 8
  %25 = load i32, i32* @HB_WORK_OK, align 4
  store i32 %25, i32* %10, align 4
  %26 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %7, align 8
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %26, align 8
  %27 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %28 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %27, i32 0, i32 2
  %29 = load i32*, i32** %28, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %49

31:                                               ; preds = %3
  %32 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %33 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %32, i32 0, i32 2
  %34 = load i32*, i32** %33, align 8
  %35 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %34, i64 %38
  %40 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %40, i32 0, i32 4
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = sext i32 %45 to i64
  %47 = sub nsw i64 %42, %46
  %48 = call i32 @memset(i32* %39, i32 0, i64 %47)
  br label %49

49:                                               ; preds = %31, %3
  %50 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %50, i32 0, i32 3
  %52 = load i32*, i32** %51, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %54, label %62

54:                                               ; preds = %49
  %55 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %56 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %55, i32 0, i32 3
  %57 = load i32*, i32** %56, align 8
  %58 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %58, i32 0, i32 10
  store i32* %57, i32** %59, align 8
  %60 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %61 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %60, i32 0, i32 3
  store i32* null, i32** %61, align 8
  br label %62

62:                                               ; preds = %54, %49
  %63 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %64 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @HB_BUF_FLAG_EOF, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %102

70:                                               ; preds = %62
  %71 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %71, i32 0, i32 6
  %73 = load %struct.TYPE_17__*, %struct.TYPE_17__** %72, align 8
  %74 = icmp ne %struct.TYPE_17__* %73, null
  br i1 %74, label %75, label %91

75:                                               ; preds = %70
  %76 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %76, i32 0, i32 6
  %78 = load %struct.TYPE_17__*, %struct.TYPE_17__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %78, i32 0, i32 1
  %80 = load i32*, i32** %79, align 8
  %81 = icmp ne i32* %80, null
  br i1 %81, label %82, label %91

82:                                               ; preds = %75
  %83 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %84 = call i32 @videoParserFlush(%struct.TYPE_21__* %83)
  br label %85

85:                                               ; preds = %89, %82
  %86 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %87 = call i64 @decodeFrame(%struct.TYPE_20__* %86, i32* null)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %85
  br label %85

90:                                               ; preds = %85
  br label %91

91:                                               ; preds = %90, %75, %70
  %92 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %93 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %92, i32 0, i32 4
  %94 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %95 = call i32 @hb_buffer_dup(%struct.TYPE_22__* %94)
  %96 = call i32 @hb_buffer_list_append(i32* %93, i32 %95)
  %97 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %97, i32 0, i32 4
  %99 = call %struct.TYPE_22__* @hb_buffer_list_clear(i32* %98)
  %100 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %7, align 8
  store %struct.TYPE_22__* %99, %struct.TYPE_22__** %100, align 8
  %101 = load i32, i32* @HB_WORK_DONE, align 4
  store i32 %101, i32* %4, align 4
  br label %373

102:                                              ; preds = %62
  %103 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %104 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = inttoptr i64 %106 to i8*
  store i8* %107, i8** %13, align 8
  %108 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %109 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %109, i32 0, i32 5
  %111 = load i8*, i8** %110, align 8
  store i8* %111, i8** %14, align 8
  %112 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %113 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %113, i32 0, i32 2
  %115 = load i64, i64* %114, align 8
  %116 = icmp sgt i64 %115, 0
  br i1 %116, label %117, label %151

117:                                              ; preds = %102
  %118 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %119 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %119, i32 0, i32 2
  %121 = load i64, i64* %120, align 8
  %122 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %123 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %122, i32 0, i32 0
  store i64 %121, i64* %123, align 8
  %124 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %125 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %125, i32 0, i32 4
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %129 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %128, i32 0, i32 9
  store i32 %127, i32* %129, align 8
  %130 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %131 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %135 = icmp ne i64 %133, %134
  br i1 %135, label %136, label %143

136:                                              ; preds = %117
  %137 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %138 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %142 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %141, i32 0, i32 1
  store i64 %140, i64* %142, align 8
  br label %150

143:                                              ; preds = %117
  %144 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %145 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %144, i32 0, i32 2
  %146 = load i64, i64* %145, align 8
  %147 = add nsw i64 %146, 1
  %148 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %149 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %148, i32 0, i32 1
  store i64 %147, i64* %149, align 8
  br label %150

150:                                              ; preds = %143, %136
  br label %151

151:                                              ; preds = %150, %102
  %152 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %153 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %152, i32 0, i32 1
  %154 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %153, i32 0, i32 1
  %155 = load i64, i64* %154, align 8
  %156 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %157 = icmp ne i64 %155, %156
  br i1 %157, label %158, label %165

158:                                              ; preds = %151
  %159 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %160 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %159, i32 0, i32 1
  %161 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %160, i32 0, i32 1
  %162 = load i64, i64* %161, align 8
  %163 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %164 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %163, i32 0, i32 2
  store i64 %162, i64* %164, align 8
  br label %165

165:                                              ; preds = %158, %151
  %166 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %167 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %166, i32 0, i32 3
  %168 = load i32, i32* %167, align 8
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %205, label %170

170:                                              ; preds = %165
  %171 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %172 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %171, i32 0, i32 1
  %173 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %172, i32 0, i32 4
  %174 = load i32, i32* %173, align 4
  %175 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %176 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %175, i32 0, i32 5
  %177 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %176, i32 0, i32 4
  store i32 %174, i32* %177, align 4
  %178 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %179 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %178, i32 0, i32 1
  %180 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %179, i32 0, i32 2
  %181 = load i64, i64* %180, align 8
  %182 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %183 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %182, i32 0, i32 5
  %184 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %183, i32 0, i32 0
  store i64 %181, i64* %184, align 8
  %185 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %186 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %185, i32 0, i32 1
  %187 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %186, i32 0, i32 3
  %188 = load i32, i32* %187, align 8
  %189 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %190 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %189, i32 0, i32 5
  %191 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %190, i32 0, i32 3
  store i32 %188, i32* %191, align 8
  %192 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %193 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %192, i32 0, i32 1
  %194 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = load i32, i32* @HB_FLAG_DISCARD, align 4
  %197 = and i32 %195, %196
  %198 = icmp ne i32 %197, 0
  %199 = xor i1 %198, true
  %200 = xor i1 %199, true
  %201 = zext i1 %200 to i32
  %202 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %203 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %202, i32 0, i32 5
  %204 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %203, i32 0, i32 1
  store i32 %201, i32* %204, align 8
  br label %205

205:                                              ; preds = %170, %165
  store i32 0, i32* %11, align 4
  br label %206

206:                                              ; preds = %363, %205
  %207 = load i32, i32* %11, align 4
  %208 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %209 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = icmp slt i32 %207, %210
  br i1 %211, label %212, label %367

212:                                              ; preds = %206
  store i32* null, i32** %15, align 8
  store i32 0, i32* %16, align 4
  %213 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %214 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %213, i32 0, i32 8
  %215 = load %struct.TYPE_16__*, %struct.TYPE_16__** %214, align 8
  %216 = icmp ne %struct.TYPE_16__* %215, null
  br i1 %216, label %217, label %274

217:                                              ; preds = %212
  %218 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %219 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %218, i32 0, i32 6
  %220 = load %struct.TYPE_17__*, %struct.TYPE_17__** %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 8
  store i32 %222, i32* %19, align 4
  %223 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %224 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %223, i32 0, i32 8
  %225 = load %struct.TYPE_16__*, %struct.TYPE_16__** %224, align 8
  %226 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %227 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %226, i32 0, i32 6
  %228 = load %struct.TYPE_17__*, %struct.TYPE_17__** %227, align 8
  %229 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %230 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %229, i32 0, i32 2
  %231 = load i32*, i32** %230, align 8
  %232 = load i32, i32* %11, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds i32, i32* %231, i64 %233
  %235 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %236 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 8
  %238 = load i32, i32* %11, align 4
  %239 = sub nsw i32 %237, %238
  %240 = load i8*, i8** %13, align 8
  %241 = load i8*, i8** %14, align 8
  %242 = call i32 @av_parser_parse2(%struct.TYPE_16__* %225, %struct.TYPE_17__* %228, i32** %15, i32* %16, i32* %234, i32 %239, i8* %240, i8* %241, i32 0)
  store i32 %242, i32* %12, align 4
  %243 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %244 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %243, i32 0, i32 8
  %245 = load %struct.TYPE_16__*, %struct.TYPE_16__** %244, align 8
  %246 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %245, i32 0, i32 1
  %247 = load i8*, i8** %246, align 8
  store i8* %247, i8** %17, align 8
  %248 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %249 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %248, i32 0, i32 8
  %250 = load %struct.TYPE_16__*, %struct.TYPE_16__** %249, align 8
  %251 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %250, i32 0, i32 0
  %252 = load i8*, i8** %251, align 8
  store i8* %252, i8** %18, align 8
  %253 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %254 = inttoptr i64 %253 to i8*
  store i8* %254, i8** %13, align 8
  %255 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %256 = inttoptr i64 %255 to i8*
  store i8* %256, i8** %14, align 8
  %257 = load i32, i32* %19, align 4
  %258 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %259 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %258, i32 0, i32 6
  %260 = load %struct.TYPE_17__*, %struct.TYPE_17__** %259, align 8
  %261 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 8
  %263 = icmp ne i32 %257, %262
  br i1 %263, label %264, label %273

264:                                              ; preds = %217
  %265 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %266 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %265, i32 0, i32 6
  %267 = load %struct.TYPE_17__*, %struct.TYPE_17__** %266, align 8
  %268 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 8
  %270 = call i32 @avcodec_find_decoder(i32 %269)
  %271 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %272 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %271, i32 0, i32 7
  store i32 %270, i32* %272, align 8
  br label %273

273:                                              ; preds = %264, %217
  br label %283

274:                                              ; preds = %212
  %275 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %276 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %275, i32 0, i32 2
  %277 = load i32*, i32** %276, align 8
  store i32* %277, i32** %15, align 8
  %278 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %279 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %278, i32 0, i32 0
  %280 = load i32, i32* %279, align 8
  store i32 %280, i32* %16, align 4
  store i32 %280, i32* %12, align 4
  %281 = load i8*, i8** %13, align 8
  store i8* %281, i8** %17, align 8
  %282 = load i8*, i8** %14, align 8
  store i8* %282, i8** %18, align 8
  br label %283

283:                                              ; preds = %274, %273
  %284 = load i32*, i32** %15, align 8
  %285 = icmp ne i32* %284, null
  br i1 %285, label %286, label %353

286:                                              ; preds = %283
  %287 = load i32, i32* %16, align 4
  %288 = icmp sgt i32 %287, 0
  br i1 %288, label %289, label %353

289:                                              ; preds = %286
  %290 = load i32*, i32** %15, align 8
  %291 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %292 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %291, i32 0, i32 5
  %293 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %292, i32 0, i32 7
  store i32* %290, i32** %293, align 8
  %294 = load i32, i32* %16, align 4
  %295 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %296 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %295, i32 0, i32 5
  %297 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %296, i32 0, i32 2
  store i32 %294, i32* %297, align 4
  %298 = load i8*, i8** %17, align 8
  %299 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %300 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %299, i32 0, i32 5
  %301 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %300, i32 0, i32 6
  store i8* %298, i8** %301, align 8
  %302 = load i8*, i8** %18, align 8
  %303 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %304 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %303, i32 0, i32 5
  %305 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %304, i32 0, i32 5
  store i8* %302, i8** %305, align 8
  %306 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %307 = call i32 @decodePacket(%struct.TYPE_21__* %306)
  store i32 %307, i32* %10, align 4
  %308 = load i32, i32* %10, align 4
  %309 = load i32, i32* @HB_WORK_OK, align 4
  %310 = icmp ne i32 %308, %309
  br i1 %310, label %311, label %312

311:                                              ; preds = %289
  br label %367

312:                                              ; preds = %289
  %313 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %314 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %313, i32 0, i32 0
  %315 = load i32, i32* %314, align 8
  %316 = add nsw i32 %315, 1
  store i32 %316, i32* %314, align 8
  %317 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %318 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %317, i32 0, i32 1
  %319 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %318, i32 0, i32 4
  %320 = load i32, i32* %319, align 4
  %321 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %322 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %321, i32 0, i32 5
  %323 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %322, i32 0, i32 4
  store i32 %320, i32* %323, align 4
  %324 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %325 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %324, i32 0, i32 1
  %326 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %325, i32 0, i32 2
  %327 = load i64, i64* %326, align 8
  %328 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %329 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %328, i32 0, i32 5
  %330 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %329, i32 0, i32 0
  store i64 %327, i64* %330, align 8
  %331 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %332 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %331, i32 0, i32 1
  %333 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %332, i32 0, i32 3
  %334 = load i32, i32* %333, align 8
  %335 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %336 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %335, i32 0, i32 5
  %337 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %336, i32 0, i32 3
  store i32 %334, i32* %337, align 8
  %338 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %339 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %338, i32 0, i32 1
  %340 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %339, i32 0, i32 0
  %341 = load i32, i32* %340, align 8
  %342 = load i32, i32* @HB_FLAG_DISCARD, align 4
  %343 = and i32 %341, %342
  %344 = icmp ne i32 %343, 0
  %345 = xor i1 %344, true
  %346 = xor i1 %345, true
  %347 = zext i1 %346 to i32
  %348 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %349 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %348, i32 0, i32 5
  %350 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %349, i32 0, i32 1
  store i32 %347, i32* %350, align 8
  %351 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %352 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %351, i32 0, i32 3
  store i32 0, i32* %352, align 8
  br label %353

353:                                              ; preds = %312, %286, %283
  %354 = load i32, i32* %12, align 4
  %355 = icmp sgt i32 %354, 0
  br i1 %355, label %356, label %362

356:                                              ; preds = %353
  %357 = load i32, i32* %16, align 4
  %358 = icmp sle i32 %357, 0
  br i1 %358, label %359, label %362

359:                                              ; preds = %356
  %360 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %361 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %360, i32 0, i32 3
  store i32 1, i32* %361, align 8
  br label %362

362:                                              ; preds = %359, %356, %353
  br label %363

363:                                              ; preds = %362
  %364 = load i32, i32* %12, align 4
  %365 = load i32, i32* %11, align 4
  %366 = add nsw i32 %365, %364
  store i32 %366, i32* %11, align 4
  br label %206

367:                                              ; preds = %311, %206
  %368 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %369 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %368, i32 0, i32 4
  %370 = call %struct.TYPE_22__* @hb_buffer_list_clear(i32* %369)
  %371 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %7, align 8
  store %struct.TYPE_22__* %370, %struct.TYPE_22__** %371, align 8
  %372 = load i32, i32* %10, align 4
  store i32 %372, i32* %4, align 4
  br label %373

373:                                              ; preds = %367, %91
  %374 = load i32, i32* %4, align 4
  ret i32 %374
}

declare dso_local i32 @memset(i32*, i32, i64) #1

declare dso_local i32 @videoParserFlush(%struct.TYPE_21__*) #1

declare dso_local i64 @decodeFrame(%struct.TYPE_20__*, i32*) #1

declare dso_local i32 @hb_buffer_list_append(i32*, i32) #1

declare dso_local i32 @hb_buffer_dup(%struct.TYPE_22__*) #1

declare dso_local %struct.TYPE_22__* @hb_buffer_list_clear(i32*) #1

declare dso_local i32 @av_parser_parse2(%struct.TYPE_16__*, %struct.TYPE_17__*, i32**, i32*, i32*, i32, i8*, i8*, i32) #1

declare dso_local i32 @avcodec_find_decoder(i32) #1

declare dso_local i32 @decodePacket(%struct.TYPE_21__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
