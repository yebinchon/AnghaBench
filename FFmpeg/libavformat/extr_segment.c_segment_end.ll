; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_segment.c_segment_end.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_segment.c_segment_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_32__ = type { i32, i32, i32, %struct.TYPE_28__**, i32, %struct.TYPE_30__* }
%struct.TYPE_28__ = type { i32, i32, %struct.TYPE_27__* }
%struct.TYPE_27__ = type { i64 }
%struct.TYPE_30__ = type { i64, i64, i64, %struct.TYPE_29__, i64, %struct.TYPE_32__*, i32, i64, i32, i64, %struct.TYPE_29__*, %struct.TYPE_29__* }
%struct.TYPE_29__ = type { i32, i32, %struct.TYPE_29__*, %struct.TYPE_29__* }
%struct.TYPE_31__ = type { i32 }
%struct.TYPE_33__ = type { i32 }

@AV_TIMECODE_STR_SIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Failure occurred when ending segment '%s'\0A\00", align 1
@LIST_TYPE_M3U8 = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"#EXT-X-ENDLIST\0A\00", align 1
@AV_LOG_VERBOSE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"segment:'%s' count:%d ended\0A\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"timecode\00", align 1
@AVMEDIA_TYPE_VIDEO = common dso_local global i64 0, align 8
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [79 x i8] c"Could not increment global timecode, error occurred during timecode creation.\0A\00", align 1
@.str.5 = private unnamed_addr constant [73 x i8] c"Could not increment global timecode, no global timecode metadata found.\0A\00", align 1
@.str.6 = private unnamed_addr constant [82 x i8] c"Could not increment stream %d timecode, error occurred during timecode creation.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_32__*, i32, i32)* @segment_end to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @segment_end(%struct.TYPE_32__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_32__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_30__*, align 8
  %9 = alloca %struct.TYPE_32__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_31__, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_33__*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_29__*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  %22 = alloca %struct.TYPE_31__, align 4
  %23 = alloca i32, align 4
  %24 = alloca %struct.TYPE_33__*, align 8
  store %struct.TYPE_32__* %0, %struct.TYPE_32__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %25 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %25, i32 0, i32 5
  %27 = load %struct.TYPE_30__*, %struct.TYPE_30__** %26, align 8
  store %struct.TYPE_30__* %27, %struct.TYPE_30__** %8, align 8
  %28 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %28, i32 0, i32 5
  %30 = load %struct.TYPE_32__*, %struct.TYPE_32__** %29, align 8
  store %struct.TYPE_32__* %30, %struct.TYPE_32__** %9, align 8
  store i32 0, i32* %10, align 4
  %31 = load i32, i32* @AV_TIMECODE_STR_SIZE, align 4
  %32 = zext i32 %31 to i64
  %33 = call i8* @llvm.stacksave()
  store i8* %33, i8** %14, align 8
  %34 = alloca i8, i64 %32, align 16
  store i64 %32, i64* %15, align 8
  %35 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %36 = icmp ne %struct.TYPE_32__* %35, null
  br i1 %36, label %37, label %42

37:                                               ; preds = %3
  %38 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %37, %3
  %43 = load i32, i32* @EINVAL, align 4
  %44 = call i32 @AVERROR(i32 %43)
  store i32 %44, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %422

45:                                               ; preds = %37
  %46 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %47 = call i32 @av_write_frame(%struct.TYPE_32__* %46, i32* null)
  %48 = load i32, i32* %6, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %52 = call i32 @av_write_trailer(%struct.TYPE_32__* %51)
  store i32 %52, i32* %10, align 4
  br label %53

53:                                               ; preds = %50, %45
  %54 = load i32, i32* %10, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %53
  %57 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %58 = load i32, i32* @AV_LOG_ERROR, align 4
  %59 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 (%struct.TYPE_32__*, i32, i8*, ...) @av_log(%struct.TYPE_32__* %57, i32 %58, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %61)
  br label %63

63:                                               ; preds = %56, %53
  %64 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %64, i32 0, i32 7
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %219

68:                                               ; preds = %63
  %69 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %79, label %73

73:                                               ; preds = %68
  %74 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @LIST_TYPE_M3U8, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %203

79:                                               ; preds = %73, %68
  %80 = call %struct.TYPE_29__* @av_mallocz(i32 24)
  store %struct.TYPE_29__* %80, %struct.TYPE_29__** %19, align 8
  %81 = load %struct.TYPE_29__*, %struct.TYPE_29__** %19, align 8
  %82 = icmp ne %struct.TYPE_29__* %81, null
  br i1 %82, label %86, label %83

83:                                               ; preds = %79
  %84 = load i32, i32* @ENOMEM, align 4
  %85 = call i32 @AVERROR(i32 %84)
  store i32 %85, i32* %10, align 4
  br label %416

86:                                               ; preds = %79
  %87 = load %struct.TYPE_29__*, %struct.TYPE_29__** %19, align 8
  %88 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %88, i32 0, i32 3
  %90 = call i32 @memcpy(%struct.TYPE_29__* %87, %struct.TYPE_29__* %89, i32 24)
  %91 = load %struct.TYPE_29__*, %struct.TYPE_29__** %19, align 8
  %92 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %91, i32 0, i32 3
  %93 = load %struct.TYPE_29__*, %struct.TYPE_29__** %92, align 8
  %94 = call %struct.TYPE_29__* @av_strdup(%struct.TYPE_29__* %93)
  %95 = load %struct.TYPE_29__*, %struct.TYPE_29__** %19, align 8
  %96 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %95, i32 0, i32 3
  store %struct.TYPE_29__* %94, %struct.TYPE_29__** %96, align 8
  %97 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %97, i32 0, i32 10
  %99 = load %struct.TYPE_29__*, %struct.TYPE_29__** %98, align 8
  %100 = icmp ne %struct.TYPE_29__* %99, null
  br i1 %100, label %107, label %101

101:                                              ; preds = %86
  %102 = load %struct.TYPE_29__*, %struct.TYPE_29__** %19, align 8
  %103 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %104 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %103, i32 0, i32 11
  store %struct.TYPE_29__* %102, %struct.TYPE_29__** %104, align 8
  %105 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %106 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %105, i32 0, i32 10
  store %struct.TYPE_29__* %102, %struct.TYPE_29__** %106, align 8
  br label %113

107:                                              ; preds = %86
  %108 = load %struct.TYPE_29__*, %struct.TYPE_29__** %19, align 8
  %109 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %110 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %109, i32 0, i32 11
  %111 = load %struct.TYPE_29__*, %struct.TYPE_29__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %111, i32 0, i32 2
  store %struct.TYPE_29__* %108, %struct.TYPE_29__** %112, align 8
  br label %113

113:                                              ; preds = %107, %101
  %114 = load %struct.TYPE_29__*, %struct.TYPE_29__** %19, align 8
  %115 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %116 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %115, i32 0, i32 11
  store %struct.TYPE_29__* %114, %struct.TYPE_29__** %116, align 8
  %117 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %118 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %144

121:                                              ; preds = %113
  %122 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %123 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %122, i32 0, i32 2
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %126 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = icmp sge i64 %124, %127
  br i1 %128, label %129, label %144

129:                                              ; preds = %121
  %130 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %131 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %130, i32 0, i32 10
  %132 = load %struct.TYPE_29__*, %struct.TYPE_29__** %131, align 8
  store %struct.TYPE_29__* %132, %struct.TYPE_29__** %19, align 8
  %133 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %134 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %133, i32 0, i32 10
  %135 = load %struct.TYPE_29__*, %struct.TYPE_29__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %135, i32 0, i32 2
  %137 = load %struct.TYPE_29__*, %struct.TYPE_29__** %136, align 8
  %138 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %139 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %138, i32 0, i32 10
  store %struct.TYPE_29__* %137, %struct.TYPE_29__** %139, align 8
  %140 = load %struct.TYPE_29__*, %struct.TYPE_29__** %19, align 8
  %141 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %140, i32 0, i32 3
  %142 = call i32 @av_freep(%struct.TYPE_29__** %141)
  %143 = call i32 @av_freep(%struct.TYPE_29__** %19)
  br label %144

144:                                              ; preds = %129, %121, %113
  %145 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %146 = call i32 @segment_list_open(%struct.TYPE_32__* %145)
  store i32 %146, i32* %10, align 4
  %147 = icmp slt i32 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %144
  br label %416

149:                                              ; preds = %144
  %150 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %151 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %150, i32 0, i32 10
  %152 = load %struct.TYPE_29__*, %struct.TYPE_29__** %151, align 8
  store %struct.TYPE_29__* %152, %struct.TYPE_29__** %19, align 8
  br label %153

153:                                              ; preds = %166, %149
  %154 = load %struct.TYPE_29__*, %struct.TYPE_29__** %19, align 8
  %155 = icmp ne %struct.TYPE_29__* %154, null
  br i1 %155, label %156, label %170

156:                                              ; preds = %153
  %157 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %158 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %157, i32 0, i32 6
  %159 = load i32, i32* %158, align 8
  %160 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %161 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %160, i32 0, i32 1
  %162 = load i64, i64* %161, align 8
  %163 = load %struct.TYPE_29__*, %struct.TYPE_29__** %19, align 8
  %164 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %165 = call i32 @segment_list_print_entry(i32 %159, i64 %162, %struct.TYPE_29__* %163, %struct.TYPE_32__* %164)
  br label %166

166:                                              ; preds = %156
  %167 = load %struct.TYPE_29__*, %struct.TYPE_29__** %19, align 8
  %168 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %167, i32 0, i32 2
  %169 = load %struct.TYPE_29__*, %struct.TYPE_29__** %168, align 8
  store %struct.TYPE_29__* %169, %struct.TYPE_29__** %19, align 8
  br label %153

170:                                              ; preds = %153
  %171 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %172 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %171, i32 0, i32 1
  %173 = load i64, i64* %172, align 8
  %174 = load i64, i64* @LIST_TYPE_M3U8, align 8
  %175 = icmp eq i64 %173, %174
  br i1 %175, label %176, label %184

176:                                              ; preds = %170
  %177 = load i32, i32* %7, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %184

179:                                              ; preds = %176
  %180 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %181 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %180, i32 0, i32 6
  %182 = load i32, i32* %181, align 8
  %183 = call i32 @avio_printf(i32 %182, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  br label %184

184:                                              ; preds = %179, %176, %170
  %185 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %186 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %187 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %186, i32 0, i32 6
  %188 = call i32 @ff_format_io_close(%struct.TYPE_32__* %185, i32* %187)
  %189 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %190 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %189, i32 0, i32 9
  %191 = load i64, i64* %190, align 8
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %202

193:                                              ; preds = %184
  %194 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %195 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %194, i32 0, i32 8
  %196 = load i32, i32* %195, align 8
  %197 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %198 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %197, i32 0, i32 7
  %199 = load i64, i64* %198, align 8
  %200 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %201 = call i32 @ff_rename(i32 %196, i64 %199, %struct.TYPE_32__* %200)
  br label %202

202:                                              ; preds = %193, %184
  br label %218

203:                                              ; preds = %73
  %204 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %205 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %204, i32 0, i32 6
  %206 = load i32, i32* %205, align 8
  %207 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %208 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %207, i32 0, i32 1
  %209 = load i64, i64* %208, align 8
  %210 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %211 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %210, i32 0, i32 3
  %212 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %213 = call i32 @segment_list_print_entry(i32 %206, i64 %209, %struct.TYPE_29__* %211, %struct.TYPE_32__* %212)
  %214 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %215 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %214, i32 0, i32 6
  %216 = load i32, i32* %215, align 8
  %217 = call i32 @avio_flush(i32 %216)
  br label %218

218:                                              ; preds = %203, %202
  br label %219

219:                                              ; preds = %218, %63
  %220 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %221 = load i32, i32* @AV_LOG_VERBOSE, align 4
  %222 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %223 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %222, i32 0, i32 5
  %224 = load %struct.TYPE_32__*, %struct.TYPE_32__** %223, align 8
  %225 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 8
  %227 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %228 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %227, i32 0, i32 2
  %229 = load i64, i64* %228, align 8
  %230 = call i32 (%struct.TYPE_32__*, i32, i8*, ...) @av_log(%struct.TYPE_32__* %220, i32 %221, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %226, i64 %229)
  %231 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %232 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %231, i32 0, i32 2
  %233 = load i64, i64* %232, align 8
  %234 = add nsw i64 %233, 1
  store i64 %234, i64* %232, align 8
  %235 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %236 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %235, i32 0, i32 4
  %237 = load i64, i64* %236, align 8
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %239, label %415

239:                                              ; preds = %219
  %240 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %241 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %240, i32 0, i32 4
  %242 = load i32, i32* %241, align 8
  %243 = call %struct.TYPE_33__* @av_dict_get(i32 %242, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32* null, i32 0)
  store %struct.TYPE_33__* %243, %struct.TYPE_33__** %13, align 8
  %244 = load %struct.TYPE_33__*, %struct.TYPE_33__** %13, align 8
  %245 = icmp ne %struct.TYPE_33__* %244, null
  br i1 %245, label %246, label %315

246:                                              ; preds = %239
  store i32 0, i32* %16, align 4
  br label %247

247:                                              ; preds = %311, %246
  %248 = load i32, i32* %16, align 4
  %249 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %250 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %249, i32 0, i32 1
  %251 = load i32, i32* %250, align 4
  %252 = icmp slt i32 %248, %251
  br i1 %252, label %253, label %314

253:                                              ; preds = %247
  %254 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %255 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %254, i32 0, i32 3
  %256 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %255, align 8
  %257 = load i32, i32* %16, align 4
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds %struct.TYPE_28__*, %struct.TYPE_28__** %256, i64 %258
  %260 = load %struct.TYPE_28__*, %struct.TYPE_28__** %259, align 8
  %261 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %260, i32 0, i32 2
  %262 = load %struct.TYPE_27__*, %struct.TYPE_27__** %261, align 8
  %263 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %262, i32 0, i32 0
  %264 = load i64, i64* %263, align 8
  %265 = load i64, i64* @AVMEDIA_TYPE_VIDEO, align 8
  %266 = icmp eq i64 %264, %265
  br i1 %266, label %267, label %310

267:                                              ; preds = %253
  %268 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %269 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %268, i32 0, i32 3
  %270 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %269, align 8
  %271 = load i32, i32* %16, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds %struct.TYPE_28__*, %struct.TYPE_28__** %270, i64 %272
  %274 = load %struct.TYPE_28__*, %struct.TYPE_28__** %273, align 8
  %275 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %274, i32 0, i32 1
  %276 = load i32, i32* %275, align 4
  store i32 %276, i32* %12, align 4
  %277 = load i32, i32* %12, align 4
  %278 = load %struct.TYPE_33__*, %struct.TYPE_33__** %13, align 8
  %279 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %278, i32 0, i32 0
  %280 = load i32, i32* %279, align 4
  %281 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %282 = call i64 @av_timecode_init_from_string(%struct.TYPE_31__* %11, i32 %277, i32 %280, %struct.TYPE_32__* %281)
  %283 = trunc i64 %282 to i32
  store i32 %283, i32* %17, align 4
  %284 = load i32, i32* %17, align 4
  %285 = icmp slt i32 %284, 0
  br i1 %285, label %286, label %290

286:                                              ; preds = %267
  %287 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %288 = load i32, i32* @AV_LOG_WARNING, align 4
  %289 = call i32 (%struct.TYPE_32__*, i32, i8*, ...) @av_log(%struct.TYPE_32__* %287, i32 %288, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.4, i64 0, i64 0))
  br label %314

290:                                              ; preds = %267
  %291 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %292 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %291, i32 0, i32 3
  %293 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %292, i32 0, i32 0
  %294 = load i32, i32* %293, align 8
  %295 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %296 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %295, i32 0, i32 3
  %297 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %296, i32 0, i32 1
  %298 = load i32, i32* %297, align 4
  %299 = sub nsw i32 %294, %298
  %300 = load i32, i32* %12, align 4
  %301 = call i32 @av_q2d(i32 %300)
  %302 = mul nsw i32 %299, %301
  %303 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %11, i32 0, i32 0
  %304 = load i32, i32* %303, align 4
  %305 = add nsw i32 %304, %302
  store i32 %305, i32* %303, align 4
  %306 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %307 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %306, i32 0, i32 4
  %308 = call i32 @av_timecode_make_string(%struct.TYPE_31__* %11, i8* %34, i32 0)
  %309 = call i32 @av_dict_set(i32* %307, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 %308, i32 0)
  br label %314

310:                                              ; preds = %253
  br label %311

311:                                              ; preds = %310
  %312 = load i32, i32* %16, align 4
  %313 = add nsw i32 %312, 1
  store i32 %313, i32* %16, align 4
  br label %247

314:                                              ; preds = %290, %286, %247
  br label %319

315:                                              ; preds = %239
  %316 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %317 = load i32, i32* @AV_LOG_WARNING, align 4
  %318 = call i32 (%struct.TYPE_32__*, i32, i8*, ...) @av_log(%struct.TYPE_32__* %316, i32 %317, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.5, i64 0, i64 0))
  br label %319

319:                                              ; preds = %315, %314
  store i32 0, i32* %16, align 4
  br label %320

320:                                              ; preds = %411, %319
  %321 = load i32, i32* %16, align 4
  %322 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %323 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %322, i32 0, i32 1
  %324 = load i32, i32* %323, align 4
  %325 = icmp slt i32 %321, %324
  br i1 %325, label %326, label %414

326:                                              ; preds = %320
  %327 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %328 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %327, i32 0, i32 3
  %329 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %328, align 8
  %330 = load i32, i32* %16, align 4
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds %struct.TYPE_28__*, %struct.TYPE_28__** %329, i64 %331
  %333 = load %struct.TYPE_28__*, %struct.TYPE_28__** %332, align 8
  %334 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %333, i32 0, i32 2
  %335 = load %struct.TYPE_27__*, %struct.TYPE_27__** %334, align 8
  %336 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %335, i32 0, i32 0
  %337 = load i64, i64* %336, align 8
  %338 = load i64, i64* @AVMEDIA_TYPE_VIDEO, align 8
  %339 = icmp eq i64 %337, %338
  br i1 %339, label %340, label %410

340:                                              ; preds = %326
  %341 = load i32, i32* @AV_TIMECODE_STR_SIZE, align 4
  %342 = zext i32 %341 to i64
  %343 = call i8* @llvm.stacksave()
  store i8* %343, i8** %20, align 8
  %344 = alloca i8, i64 %342, align 16
  store i64 %342, i64* %21, align 8
  %345 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %346 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %345, i32 0, i32 3
  %347 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %346, align 8
  %348 = load i32, i32* %16, align 4
  %349 = sext i32 %348 to i64
  %350 = getelementptr inbounds %struct.TYPE_28__*, %struct.TYPE_28__** %347, i64 %349
  %351 = load %struct.TYPE_28__*, %struct.TYPE_28__** %350, align 8
  %352 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %351, i32 0, i32 1
  %353 = load i32, i32* %352, align 4
  store i32 %353, i32* %23, align 4
  %354 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %355 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %354, i32 0, i32 3
  %356 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %355, align 8
  %357 = load i32, i32* %16, align 4
  %358 = sext i32 %357 to i64
  %359 = getelementptr inbounds %struct.TYPE_28__*, %struct.TYPE_28__** %356, i64 %358
  %360 = load %struct.TYPE_28__*, %struct.TYPE_28__** %359, align 8
  %361 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %360, i32 0, i32 0
  %362 = load i32, i32* %361, align 8
  %363 = call %struct.TYPE_33__* @av_dict_get(i32 %362, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32* null, i32 0)
  store %struct.TYPE_33__* %363, %struct.TYPE_33__** %24, align 8
  %364 = load %struct.TYPE_33__*, %struct.TYPE_33__** %24, align 8
  %365 = icmp ne %struct.TYPE_33__* %364, null
  br i1 %365, label %366, label %405

366:                                              ; preds = %340
  %367 = load i32, i32* %23, align 4
  %368 = load %struct.TYPE_33__*, %struct.TYPE_33__** %24, align 8
  %369 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %368, i32 0, i32 0
  %370 = load i32, i32* %369, align 4
  %371 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %372 = call i64 @av_timecode_init_from_string(%struct.TYPE_31__* %22, i32 %367, i32 %370, %struct.TYPE_32__* %371)
  %373 = icmp slt i64 %372, 0
  br i1 %373, label %374, label %379

374:                                              ; preds = %366
  %375 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %376 = load i32, i32* @AV_LOG_WARNING, align 4
  %377 = load i32, i32* %16, align 4
  %378 = call i32 (%struct.TYPE_32__*, i32, i8*, ...) @av_log(%struct.TYPE_32__* %375, i32 %376, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.6, i64 0, i64 0), i32 %377)
  store i32 11, i32* %18, align 4
  br label %406

379:                                              ; preds = %366
  %380 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %381 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %380, i32 0, i32 3
  %382 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %381, i32 0, i32 0
  %383 = load i32, i32* %382, align 8
  %384 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %385 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %384, i32 0, i32 3
  %386 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %385, i32 0, i32 1
  %387 = load i32, i32* %386, align 4
  %388 = sub nsw i32 %383, %387
  %389 = load i32, i32* %23, align 4
  %390 = call i32 @av_q2d(i32 %389)
  %391 = mul nsw i32 %388, %390
  %392 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %22, i32 0, i32 0
  %393 = load i32, i32* %392, align 4
  %394 = add nsw i32 %393, %391
  store i32 %394, i32* %392, align 4
  %395 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %396 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %395, i32 0, i32 3
  %397 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %396, align 8
  %398 = load i32, i32* %16, align 4
  %399 = sext i32 %398 to i64
  %400 = getelementptr inbounds %struct.TYPE_28__*, %struct.TYPE_28__** %397, i64 %399
  %401 = load %struct.TYPE_28__*, %struct.TYPE_28__** %400, align 8
  %402 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %401, i32 0, i32 0
  %403 = call i32 @av_timecode_make_string(%struct.TYPE_31__* %22, i8* %344, i32 0)
  %404 = call i32 @av_dict_set(i32* %402, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 %403, i32 0)
  br label %405

405:                                              ; preds = %379, %340
  store i32 0, i32* %18, align 4
  br label %406

406:                                              ; preds = %405, %374
  %407 = load i8*, i8** %20, align 8
  call void @llvm.stackrestore(i8* %407)
  %408 = load i32, i32* %18, align 4
  switch i32 %408, label %425 [
    i32 0, label %409
    i32 11, label %411
  ]

409:                                              ; preds = %406
  br label %410

410:                                              ; preds = %409, %326
  br label %411

411:                                              ; preds = %410, %406
  %412 = load i32, i32* %16, align 4
  %413 = add nsw i32 %412, 1
  store i32 %413, i32* %16, align 4
  br label %320

414:                                              ; preds = %320
  br label %415

415:                                              ; preds = %414, %219
  br label %416

416:                                              ; preds = %415, %148, %83
  %417 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %418 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %419 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %418, i32 0, i32 2
  %420 = call i32 @ff_format_io_close(%struct.TYPE_32__* %417, i32* %419)
  %421 = load i32, i32* %10, align 4
  store i32 %421, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %422

422:                                              ; preds = %416, %42
  %423 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %423)
  %424 = load i32, i32* %4, align 4
  ret i32 %424

425:                                              ; preds = %406
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @AVERROR(i32) #2

declare dso_local i32 @av_write_frame(%struct.TYPE_32__*, i32*) #2

declare dso_local i32 @av_write_trailer(%struct.TYPE_32__*) #2

declare dso_local i32 @av_log(%struct.TYPE_32__*, i32, i8*, ...) #2

declare dso_local %struct.TYPE_29__* @av_mallocz(i32) #2

declare dso_local i32 @memcpy(%struct.TYPE_29__*, %struct.TYPE_29__*, i32) #2

declare dso_local %struct.TYPE_29__* @av_strdup(%struct.TYPE_29__*) #2

declare dso_local i32 @av_freep(%struct.TYPE_29__**) #2

declare dso_local i32 @segment_list_open(%struct.TYPE_32__*) #2

declare dso_local i32 @segment_list_print_entry(i32, i64, %struct.TYPE_29__*, %struct.TYPE_32__*) #2

declare dso_local i32 @avio_printf(i32, i8*) #2

declare dso_local i32 @ff_format_io_close(%struct.TYPE_32__*, i32*) #2

declare dso_local i32 @ff_rename(i32, i64, %struct.TYPE_32__*) #2

declare dso_local i32 @avio_flush(i32) #2

declare dso_local %struct.TYPE_33__* @av_dict_get(i32, i8*, i32*, i32) #2

declare dso_local i64 @av_timecode_init_from_string(%struct.TYPE_31__*, i32, i32, %struct.TYPE_32__*) #2

declare dso_local i32 @av_q2d(i32) #2

declare dso_local i32 @av_dict_set(i32*, i8*, i32, i32) #2

declare dso_local i32 @av_timecode_make_string(%struct.TYPE_31__*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
