; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_asfdec_o.c_asf_read_header.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_asfdec_o.c_asf_read_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_32__ = type { %struct.TYPE_30__**, %struct.TYPE_31__*, %struct.TYPE_33__* }
%struct.TYPE_30__ = type { %struct.TYPE_26__, i32 }
%struct.TYPE_26__ = type { i64, i64 }
%struct.TYPE_31__ = type { i32 }
%struct.TYPE_33__ = type { i64, i64, i32, i32, i32, %struct.TYPE_28__*, %struct.TYPE_25__**, i32, i64, i64, i64 }
%struct.TYPE_28__ = type { i8*, %struct.TYPE_27__, i32 }
%struct.TYPE_27__ = type { i64, i64 }
%struct.TYPE_25__ = type { i64, i64 }
%struct.TYPE_29__ = type { i32 (%struct.TYPE_32__*, %struct.TYPE_29__*)* }

@ff_asf_header = common dso_local global i32 0, align 4
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@AVERROR_EOF = common dso_local global i32 0, align 4
@AVIO_SEEKABLE_NORMAL = common dso_local global i32 0, align 4
@ASF_FLAG_BROADCAST = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Data Object was not found.\0A\00", align 1
@SEEK_SET = common dso_local global i32 0, align 4
@ASF_MAX_STREAMS = common dso_local global i32 0, align 4
@AV_DICT_IGNORE_SUFFIX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_32__*)* @asf_read_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asf_read_header(%struct.TYPE_32__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_32__*, align 8
  %4 = alloca %struct.TYPE_33__*, align 8
  %5 = alloca %struct.TYPE_31__*, align 8
  %6 = alloca %struct.TYPE_29__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_30__*, align 8
  %13 = alloca %struct.TYPE_30__*, align 8
  store %struct.TYPE_32__* %0, %struct.TYPE_32__** %3, align 8
  %14 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %14, i32 0, i32 2
  %16 = load %struct.TYPE_33__*, %struct.TYPE_33__** %15, align 8
  store %struct.TYPE_33__* %16, %struct.TYPE_33__** %4, align 8
  %17 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_31__*, %struct.TYPE_31__** %18, align 8
  store %struct.TYPE_31__* %19, %struct.TYPE_31__** %5, align 8
  store %struct.TYPE_29__* null, %struct.TYPE_29__** %6, align 8
  %20 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %20, i32 0, i32 10
  store i64 0, i64* %21, align 8
  %22 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %22, i32 0, i32 9
  store i64 0, i64* %23, align 8
  %24 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %25 = call i32 @ff_get_guid(%struct.TYPE_31__* %24, i32* %7)
  %26 = call i64 @ff_guidcmp(i32* %7, i32* @ff_asf_header)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %1
  %29 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %29, i32* %2, align 4
  br label %265

30:                                               ; preds = %1
  %31 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %32 = call i32 @avio_skip(%struct.TYPE_31__* %31, i32 8)
  %33 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %34 = call i32 @avio_skip(%struct.TYPE_31__* %33, i32 6)
  %35 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %35, i32 0, i32 8
  store i64 0, i64* %36, align 8
  br label %37

37:                                               ; preds = %30, %115
  %38 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %39 = call i64 @avio_tell(%struct.TYPE_31__* %38)
  %40 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %39, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %37
  br label %116

45:                                               ; preds = %37
  %46 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %47 = call i64 @avio_tell(%struct.TYPE_31__* %46)
  %48 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %48, i32 0, i32 0
  store i64 %47, i64* %49, align 8
  %50 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %51 = call i32 @ff_get_guid(%struct.TYPE_31__* %50, i32* %7)
  store i32 %51, i32* %9, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %64

53:                                               ; preds = %45
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* @AVERROR_EOF, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %63

57:                                               ; preds = %53
  %58 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %58, i32 0, i32 8
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %57
  br label %116

63:                                               ; preds = %57, %53
  br label %261

64:                                               ; preds = %45
  %65 = load i32, i32* %7, align 4
  %66 = call %struct.TYPE_29__* @find_guid(i32 %65)
  store %struct.TYPE_29__* %66, %struct.TYPE_29__** %6, align 8
  %67 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %68 = icmp ne %struct.TYPE_29__* %67, null
  br i1 %68, label %69, label %86

69:                                               ; preds = %64
  %70 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %73, i32 0, i32 1
  store i64 %72, i64* %74, align 8
  %75 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %75, i32 0, i32 2
  store i32 1, i32* %76, align 8
  %77 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %77, i32 0, i32 0
  %79 = load i32 (%struct.TYPE_32__*, %struct.TYPE_29__*)*, i32 (%struct.TYPE_32__*, %struct.TYPE_29__*)** %78, align 8
  %80 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %81 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %82 = call i32 %79(%struct.TYPE_32__* %80, %struct.TYPE_29__* %81)
  store i32 %82, i32* %9, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %69
  br label %261

85:                                               ; preds = %69
  br label %95

86:                                               ; preds = %64
  %87 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %88 = call i32 @avio_rl64(%struct.TYPE_31__* %87)
  store i32 %88, i32* %10, align 4
  %89 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %90 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i32, i32* %10, align 4
  %94 = call i32 @align_position(%struct.TYPE_31__* %89, i64 %92, i32 %93)
  br label %95

95:                                               ; preds = %86, %85
  %96 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %96, i32 0, i32 8
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %115

100:                                              ; preds = %95
  %101 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @AVIO_SEEKABLE_NORMAL, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %114

107:                                              ; preds = %100
  %108 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @ASF_FLAG_BROADCAST, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %107, %100
  br label %116

115:                                              ; preds = %107, %95
  br label %37

116:                                              ; preds = %114, %62, %44
  %117 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %117, i32 0, i32 8
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %126, label %121

121:                                              ; preds = %116
  %122 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %123 = load i32, i32* @AV_LOG_ERROR, align 4
  %124 = call i32 @av_log(%struct.TYPE_32__* %122, i32 %123, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %125 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %125, i32* %9, align 4
  br label %261

126:                                              ; preds = %116
  %127 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* @AVIO_SEEKABLE_NORMAL, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %140

133:                                              ; preds = %126
  %134 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %135 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %135, i32 0, i32 7
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* @SEEK_SET, align 4
  %139 = call i32 @avio_seek(%struct.TYPE_31__* %134, i32 %137, i32 %138)
  br label %140

140:                                              ; preds = %133, %126
  store i32 0, i32* %8, align 4
  br label %141

141:                                              ; preds = %182, %140
  %142 = load i32, i32* %8, align 4
  %143 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %144 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %143, i32 0, i32 4
  %145 = load i32, i32* %144, align 8
  %146 = icmp slt i32 %142, %145
  br i1 %146, label %147, label %185

147:                                              ; preds = %141
  %148 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %149 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %148, i32 0, i32 5
  %150 = load %struct.TYPE_28__*, %struct.TYPE_28__** %149, align 8
  %151 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %152 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %151, i32 0, i32 6
  %153 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %152, align 8
  %154 = load i32, i32* %8, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.TYPE_25__*, %struct.TYPE_25__** %153, i64 %155
  %157 = load %struct.TYPE_25__*, %struct.TYPE_25__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %150, i64 %159
  %161 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %160, i32 0, i32 0
  %162 = load i8*, i8** %161, align 8
  store i8* %162, i8** %11, align 8
  %163 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %164 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %163, i32 0, i32 0
  %165 = load %struct.TYPE_30__**, %struct.TYPE_30__*** %164, align 8
  %166 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %167 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %166, i32 0, i32 6
  %168 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %167, align 8
  %169 = load i32, i32* %8, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds %struct.TYPE_25__*, %struct.TYPE_25__** %168, i64 %170
  %172 = load %struct.TYPE_25__*, %struct.TYPE_25__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %172, i32 0, i32 1
  %174 = load i64, i64* %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_30__*, %struct.TYPE_30__** %165, i64 %174
  %176 = load %struct.TYPE_30__*, %struct.TYPE_30__** %175, align 8
  store %struct.TYPE_30__* %176, %struct.TYPE_30__** %12, align 8
  %177 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %178 = load i8*, i8** %11, align 8
  %179 = load %struct.TYPE_30__*, %struct.TYPE_30__** %12, align 8
  %180 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %179, i32 0, i32 1
  %181 = call i32 @set_language(%struct.TYPE_32__* %177, i8* %178, i32* %180)
  br label %182

182:                                              ; preds = %147
  %183 = load i32, i32* %8, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %8, align 4
  br label %141

185:                                              ; preds = %141
  store i32 0, i32* %8, align 4
  br label %186

186:                                              ; preds = %257, %185
  %187 = load i32, i32* %8, align 4
  %188 = load i32, i32* @ASF_MAX_STREAMS, align 4
  %189 = icmp slt i32 %187, %188
  br i1 %189, label %190, label %260

190:                                              ; preds = %186
  store %struct.TYPE_30__* null, %struct.TYPE_30__** %13, align 8
  %191 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %192 = load i32, i32* %8, align 4
  %193 = call %struct.TYPE_30__* @find_stream(%struct.TYPE_32__* %191, i32 %192)
  store %struct.TYPE_30__* %193, %struct.TYPE_30__** %13, align 8
  %194 = load %struct.TYPE_30__*, %struct.TYPE_30__** %13, align 8
  %195 = icmp ne %struct.TYPE_30__* %194, null
  br i1 %195, label %196, label %256

196:                                              ; preds = %190
  %197 = load %struct.TYPE_30__*, %struct.TYPE_30__** %13, align 8
  %198 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %197, i32 0, i32 1
  %199 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %200 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %199, i32 0, i32 5
  %201 = load %struct.TYPE_28__*, %struct.TYPE_28__** %200, align 8
  %202 = load i32, i32* %8, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %201, i64 %203
  %205 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %204, i32 0, i32 2
  %206 = load i32, i32* %205, align 8
  %207 = load i32, i32* @AV_DICT_IGNORE_SUFFIX, align 4
  %208 = call i32 @av_dict_copy(i32* %198, i32 %206, i32 %207)
  %209 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %210 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %209, i32 0, i32 5
  %211 = load %struct.TYPE_28__*, %struct.TYPE_28__** %210, align 8
  %212 = load i32, i32* %8, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %211, i64 %213
  %215 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %214, i32 0, i32 1
  %216 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %215, i32 0, i32 0
  %217 = load i64, i64* %216, align 8
  %218 = icmp sgt i64 %217, 0
  br i1 %218, label %219, label %255

219:                                              ; preds = %196
  %220 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %221 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %220, i32 0, i32 5
  %222 = load %struct.TYPE_28__*, %struct.TYPE_28__** %221, align 8
  %223 = load i32, i32* %8, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %222, i64 %224
  %226 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %225, i32 0, i32 1
  %227 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %226, i32 0, i32 1
  %228 = load i64, i64* %227, align 8
  %229 = icmp sgt i64 %228, 0
  br i1 %229, label %230, label %255

230:                                              ; preds = %219
  %231 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %232 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %231, i32 0, i32 5
  %233 = load %struct.TYPE_28__*, %struct.TYPE_28__** %232, align 8
  %234 = load i32, i32* %8, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %233, i64 %235
  %237 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %236, i32 0, i32 1
  %238 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %237, i32 0, i32 0
  %239 = load i64, i64* %238, align 8
  %240 = load %struct.TYPE_30__*, %struct.TYPE_30__** %13, align 8
  %241 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %240, i32 0, i32 0
  %242 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %241, i32 0, i32 0
  store i64 %239, i64* %242, align 8
  %243 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %244 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %243, i32 0, i32 5
  %245 = load %struct.TYPE_28__*, %struct.TYPE_28__** %244, align 8
  %246 = load i32, i32* %8, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %245, i64 %247
  %249 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %248, i32 0, i32 1
  %250 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %249, i32 0, i32 1
  %251 = load i64, i64* %250, align 8
  %252 = load %struct.TYPE_30__*, %struct.TYPE_30__** %13, align 8
  %253 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %252, i32 0, i32 0
  %254 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %253, i32 0, i32 1
  store i64 %251, i64* %254, align 8
  br label %255

255:                                              ; preds = %230, %219, %196
  br label %256

256:                                              ; preds = %255, %190
  br label %257

257:                                              ; preds = %256
  %258 = load i32, i32* %8, align 4
  %259 = add nsw i32 %258, 1
  store i32 %259, i32* %8, align 4
  br label %186

260:                                              ; preds = %186
  store i32 0, i32* %2, align 4
  br label %265

261:                                              ; preds = %121, %84, %63
  %262 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %263 = call i32 @asf_read_close(%struct.TYPE_32__* %262)
  %264 = load i32, i32* %9, align 4
  store i32 %264, i32* %2, align 4
  br label %265

265:                                              ; preds = %261, %260, %28
  %266 = load i32, i32* %2, align 4
  ret i32 %266
}

declare dso_local i32 @ff_get_guid(%struct.TYPE_31__*, i32*) #1

declare dso_local i64 @ff_guidcmp(i32*, i32*) #1

declare dso_local i32 @avio_skip(%struct.TYPE_31__*, i32) #1

declare dso_local i64 @avio_tell(%struct.TYPE_31__*) #1

declare dso_local %struct.TYPE_29__* @find_guid(i32) #1

declare dso_local i32 @avio_rl64(%struct.TYPE_31__*) #1

declare dso_local i32 @align_position(%struct.TYPE_31__*, i64, i32) #1

declare dso_local i32 @av_log(%struct.TYPE_32__*, i32, i8*) #1

declare dso_local i32 @avio_seek(%struct.TYPE_31__*, i32, i32) #1

declare dso_local i32 @set_language(%struct.TYPE_32__*, i8*, i32*) #1

declare dso_local %struct.TYPE_30__* @find_stream(%struct.TYPE_32__*, i32) #1

declare dso_local i32 @av_dict_copy(i32*, i32, i32) #1

declare dso_local i32 @asf_read_close(%struct.TYPE_32__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
