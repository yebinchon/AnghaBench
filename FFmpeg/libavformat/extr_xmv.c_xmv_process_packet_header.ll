; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_xmv.c_xmv_process_packet_header.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_xmv.c_xmv_process_packet_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64, %struct.TYPE_14__**, i32*, %struct.TYPE_12__* }
%struct.TYPE_14__ = type { i64, %struct.TYPE_16__*, i32 }
%struct.TYPE_16__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_12__ = type { i32, i32, i32, %struct.TYPE_11__, %struct.TYPE_13__*, i32, i32, i32, i32 }
%struct.TYPE_11__ = type { i32, i32, i32, i32, i64, i32, i32, i64 }
%struct.TYPE_13__ = type { i32, i32, i32, i32, i64, i32, i32, i32, i8*, i32, i32, i32, i32 }

@EIO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@AVMEDIA_TYPE_VIDEO = common dso_local global i32 0, align 4
@AV_CODEC_ID_WMV2 = common dso_local global i32 0, align 4
@AVMEDIA_TYPE_AUDIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*)* @xmv_process_packet_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xmv_process_packet_header(%struct.TYPE_15__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [8 x i32], align 16
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca %struct.TYPE_13__*, align 8
  %12 = alloca %struct.TYPE_14__*, align 8
  %13 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %3, align 8
  %14 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 3
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  store %struct.TYPE_12__* %16, %struct.TYPE_12__** %4, align 8
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 2
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %5, align 8
  %20 = load i32*, i32** %5, align 8
  %21 = call i32 @avio_rl32(i32* %20)
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 8
  store i32 %21, i32* %23, align 4
  %24 = load i32*, i32** %5, align 8
  %25 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 0
  %26 = call i32 @avio_read(i32* %24, i32* %25, i32 8)
  %27 = icmp ne i32 %26, 8
  br i1 %27, label %28, label %31

28:                                               ; preds = %1
  %29 = load i32, i32* @EIO, align 4
  %30 = call i32 @AVERROR(i32 %29)
  store i32 %30, i32* %2, align 4
  br label %433

31:                                               ; preds = %1
  %32 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 0
  %33 = call i32 @AV_RL32(i32* %32)
  %34 = and i32 %33, 8388607
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 3
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 0
  store i32 %34, i32* %37, align 8
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 3
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 7
  store i64 0, i64* %40, align 8
  %41 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 0
  %42 = call i32 @AV_RL32(i32* %41)
  %43 = ashr i32 %42, 23
  %44 = and i32 %43, 255
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 3
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 1
  store i32 %44, i32* %47, align 4
  %48 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 3
  %49 = load i32, i32* %48, align 4
  %50 = and i32 %49, 128
  %51 = icmp ne i32 %50, 0
  %52 = zext i1 %51 to i32
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 3
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 2
  store i32 %52, i32* %55, align 8
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 3
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %115, label %61

61:                                               ; preds = %31
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %63 = call %struct.TYPE_14__* @avformat_new_stream(%struct.TYPE_15__* %62, i32* null)
  store %struct.TYPE_14__* %63, %struct.TYPE_14__** %10, align 8
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %65 = icmp ne %struct.TYPE_14__* %64, null
  br i1 %65, label %69, label %66

66:                                               ; preds = %61
  %67 = load i32, i32* @ENOMEM, align 4
  %68 = call i32 @AVERROR(i32 %67)
  store i32 %68, i32* %2, align 4
  br label %433

69:                                               ; preds = %61
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %71 = call i32 @avpriv_set_pts_info(%struct.TYPE_14__* %70, i32 32, i32 1, i32 1000)
  %72 = load i32, i32* @AVMEDIA_TYPE_VIDEO, align 4
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i32 0, i32 1
  %75 = load %struct.TYPE_16__*, %struct.TYPE_16__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %75, i32 0, i32 9
  store i32 %72, i32* %76, align 4
  %77 = load i32, i32* @AV_CODEC_ID_WMV2, align 4
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 1
  %80 = load %struct.TYPE_16__*, %struct.TYPE_16__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %80, i32 0, i32 8
  store i32 %77, i32* %81, align 4
  %82 = call i32 @MKBETAG(i8 signext 87, i8 signext 77, i8 signext 86, i8 signext 50)
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %83, i32 0, i32 1
  %85 = load %struct.TYPE_16__*, %struct.TYPE_16__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %85, i32 0, i32 7
  store i32 %82, i32* %86, align 4
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 7
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %91 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %90, i32 0, i32 1
  %92 = load %struct.TYPE_16__*, %struct.TYPE_16__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %92, i32 0, i32 11
  store i32 %89, i32* %93, align 4
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 6
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %98 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %97, i32 0, i32 1
  %99 = load %struct.TYPE_16__*, %struct.TYPE_16__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %99, i32 0, i32 10
  store i32 %96, i32* %100, align 4
  %101 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 5
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %105 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %104, i32 0, i32 2
  store i32 %103, i32* %105, align 8
  %106 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %107 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i32 0, i32 3
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 4
  store i64 %108, i64* %111, align 8
  %112 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i32 0, i32 3
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i32 0, i32 3
  store i32 1, i32* %114, align 4
  br label %115

115:                                              ; preds = %69, %31
  %116 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = mul nsw i32 %118, 4
  %120 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i32 0, i32 3
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = sub nsw i32 %123, %119
  store i32 %124, i32* %122, align 8
  %125 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %125, i32 0, i32 1
  store i32 0, i32* %126, align 4
  %127 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %127, i32 0, i32 3
  %129 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %143, label %132

132:                                              ; preds = %115
  %133 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %133, i32 0, i32 3
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %134, i32 0, i32 1
  store i32 1, i32* %135, align 4
  %136 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 8
  %139 = icmp sgt i32 %138, 1
  %140 = zext i1 %139 to i32
  %141 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %142 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %141, i32 0, i32 1
  store i32 %140, i32* %142, align 4
  br label %143

143:                                              ; preds = %132, %115
  store i64 0, i64* %8, align 8
  br label %144

144:                                              ; preds = %299, %143
  %145 = load i64, i64* %8, align 8
  %146 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %147 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = sext i32 %148 to i64
  %150 = icmp ult i64 %145, %149
  br i1 %150, label %151, label %302

151:                                              ; preds = %144
  %152 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %153 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %152, i32 0, i32 4
  %154 = load %struct.TYPE_13__*, %struct.TYPE_13__** %153, align 8
  %155 = load i64, i64* %8, align 8
  %156 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %154, i64 %155
  store %struct.TYPE_13__* %156, %struct.TYPE_13__** %11, align 8
  %157 = load i32*, i32** %5, align 8
  %158 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 0
  %159 = call i32 @avio_read(i32* %157, i32* %158, i32 4)
  %160 = icmp ne i32 %159, 4
  br i1 %160, label %161, label %164

161:                                              ; preds = %151
  %162 = load i32, i32* @EIO, align 4
  %163 = call i32 @AVERROR(i32 %162)
  store i32 %163, i32* %2, align 4
  br label %433

164:                                              ; preds = %151
  %165 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %166 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %253, label %169

169:                                              ; preds = %164
  %170 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %171 = call %struct.TYPE_14__* @avformat_new_stream(%struct.TYPE_15__* %170, i32* null)
  store %struct.TYPE_14__* %171, %struct.TYPE_14__** %12, align 8
  %172 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %173 = icmp ne %struct.TYPE_14__* %172, null
  br i1 %173, label %177, label %174

174:                                              ; preds = %169
  %175 = load i32, i32* @ENOMEM, align 4
  %176 = call i32 @AVERROR(i32 %175)
  store i32 %176, i32* %2, align 4
  br label %433

177:                                              ; preds = %169
  %178 = load i32, i32* @AVMEDIA_TYPE_AUDIO, align 4
  %179 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %180 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %179, i32 0, i32 1
  %181 = load %struct.TYPE_16__*, %struct.TYPE_16__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %181, i32 0, i32 9
  store i32 %178, i32* %182, align 4
  %183 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %184 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %183, i32 0, i32 12
  %185 = load i32, i32* %184, align 4
  %186 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %187 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %186, i32 0, i32 1
  %188 = load %struct.TYPE_16__*, %struct.TYPE_16__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %188, i32 0, i32 8
  store i32 %185, i32* %189, align 4
  %190 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %191 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %190, i32 0, i32 11
  %192 = load i32, i32* %191, align 8
  %193 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %194 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %193, i32 0, i32 1
  %195 = load %struct.TYPE_16__*, %struct.TYPE_16__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %195, i32 0, i32 7
  store i32 %192, i32* %196, align 4
  %197 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %198 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 4
  %200 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %201 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %200, i32 0, i32 1
  %202 = load %struct.TYPE_16__*, %struct.TYPE_16__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %202, i32 0, i32 0
  store i32 %199, i32* %203, align 4
  %204 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %205 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %204, i32 0, i32 2
  %206 = load i32, i32* %205, align 8
  %207 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %208 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %207, i32 0, i32 1
  %209 = load %struct.TYPE_16__*, %struct.TYPE_16__** %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %209, i32 0, i32 1
  store i32 %206, i32* %210, align 4
  %211 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %212 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %211, i32 0, i32 10
  %213 = load i32, i32* %212, align 4
  %214 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %215 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %214, i32 0, i32 1
  %216 = load %struct.TYPE_16__*, %struct.TYPE_16__** %215, align 8
  %217 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %216, i32 0, i32 6
  store i32 %213, i32* %217, align 4
  %218 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %219 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %218, i32 0, i32 9
  %220 = load i32, i32* %219, align 8
  %221 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %222 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %221, i32 0, i32 1
  %223 = load %struct.TYPE_16__*, %struct.TYPE_16__** %222, align 8
  %224 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %223, i32 0, i32 5
  store i32 %220, i32* %224, align 4
  %225 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %226 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %225, i32 0, i32 1
  %227 = load i32, i32* %226, align 4
  %228 = mul nsw i32 36, %227
  %229 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %230 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %229, i32 0, i32 1
  %231 = load %struct.TYPE_16__*, %struct.TYPE_16__** %230, align 8
  %232 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %231, i32 0, i32 2
  store i32 %228, i32* %232, align 4
  %233 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %234 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %235 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %234, i32 0, i32 3
  %236 = load i32, i32* %235, align 4
  %237 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %238 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %237, i32 0, i32 2
  %239 = load i32, i32* %238, align 8
  %240 = call i32 @avpriv_set_pts_info(%struct.TYPE_14__* %233, i32 32, i32 %236, i32 %239)
  %241 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %242 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %241, i32 0, i32 0
  %243 = load i64, i64* %242, align 8
  %244 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %245 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %244, i32 0, i32 4
  store i64 %243, i64* %245, align 8
  %246 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %247 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %246, i32 0, i32 5
  %248 = load i32, i32* %247, align 8
  %249 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %250 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %249, i32 0, i32 2
  store i32 %248, i32* %250, align 8
  %251 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %252 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %251, i32 0, i32 0
  store i32 1, i32* %252, align 8
  br label %253

253:                                              ; preds = %177, %164
  %254 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 0
  %255 = call i32 @AV_RL32(i32* %254)
  %256 = and i32 %255, 8388607
  %257 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %258 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %257, i32 0, i32 5
  store i32 %256, i32* %258, align 8
  %259 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %260 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %259, i32 0, i32 5
  %261 = load i32, i32* %260, align 8
  %262 = icmp eq i32 %261, 0
  br i1 %262, label %263, label %277

263:                                              ; preds = %253
  %264 = load i64, i64* %8, align 8
  %265 = icmp ne i64 %264, 0
  br i1 %265, label %266, label %277

266:                                              ; preds = %263
  %267 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %268 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %267, i32 0, i32 4
  %269 = load %struct.TYPE_13__*, %struct.TYPE_13__** %268, align 8
  %270 = load i64, i64* %8, align 8
  %271 = sub i64 %270, 1
  %272 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %269, i64 %271
  %273 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %272, i32 0, i32 5
  %274 = load i32, i32* %273, align 8
  %275 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %276 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %275, i32 0, i32 5
  store i32 %274, i32* %276, align 8
  br label %277

277:                                              ; preds = %266, %263, %253
  %278 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %279 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %278, i32 0, i32 5
  %280 = load i32, i32* %279, align 8
  %281 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %282 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %281, i32 0, i32 3
  %283 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %282, i32 0, i32 1
  %284 = load i32, i32* %283, align 4
  %285 = sdiv i32 %280, %284
  %286 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %287 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %286, i32 0, i32 6
  store i32 %285, i32* %287, align 4
  %288 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %289 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %288, i32 0, i32 6
  %290 = load i32, i32* %289, align 4
  %291 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %292 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %291, i32 0, i32 7
  %293 = load i32, i32* %292, align 8
  %294 = srem i32 %290, %293
  %295 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %296 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %295, i32 0, i32 6
  %297 = load i32, i32* %296, align 4
  %298 = sub nsw i32 %297, %294
  store i32 %298, i32* %296, align 4
  br label %299

299:                                              ; preds = %277
  %300 = load i64, i64* %8, align 8
  %301 = add i64 %300, 1
  store i64 %301, i64* %8, align 8
  br label %144

302:                                              ; preds = %144
  %303 = load i32*, i32** %5, align 8
  %304 = call i8* @avio_tell(i32* %303)
  store i8* %304, i8** %9, align 8
  %305 = load i8*, i8** %9, align 8
  %306 = ptrtoint i8* %305 to i32
  %307 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %308 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %307, i32 0, i32 3
  %309 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %308, i32 0, i32 5
  store i32 %306, i32* %309, align 8
  %310 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %311 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %310, i32 0, i32 3
  %312 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %311, i32 0, i32 0
  %313 = load i32, i32* %312, align 8
  %314 = load i8*, i8** %9, align 8
  %315 = sext i32 %313 to i64
  %316 = getelementptr i8, i8* %314, i64 %315
  store i8* %316, i8** %9, align 8
  store i64 0, i64* %8, align 8
  br label %317

317:                                              ; preds = %342, %302
  %318 = load i64, i64* %8, align 8
  %319 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %320 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %319, i32 0, i32 0
  %321 = load i32, i32* %320, align 8
  %322 = sext i32 %321 to i64
  %323 = icmp ult i64 %318, %322
  br i1 %323, label %324, label %345

324:                                              ; preds = %317
  %325 = load i8*, i8** %9, align 8
  %326 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %327 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %326, i32 0, i32 4
  %328 = load %struct.TYPE_13__*, %struct.TYPE_13__** %327, align 8
  %329 = load i64, i64* %8, align 8
  %330 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %328, i64 %329
  %331 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %330, i32 0, i32 8
  store i8* %325, i8** %331, align 8
  %332 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %333 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %332, i32 0, i32 4
  %334 = load %struct.TYPE_13__*, %struct.TYPE_13__** %333, align 8
  %335 = load i64, i64* %8, align 8
  %336 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %334, i64 %335
  %337 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %336, i32 0, i32 5
  %338 = load i32, i32* %337, align 8
  %339 = load i8*, i8** %9, align 8
  %340 = sext i32 %338 to i64
  %341 = getelementptr i8, i8* %339, i64 %340
  store i8* %341, i8** %9, align 8
  br label %342

342:                                              ; preds = %324
  %343 = load i64, i64* %8, align 8
  %344 = add i64 %343, 1
  store i64 %344, i64* %8, align 8
  br label %317

345:                                              ; preds = %317
  %346 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %347 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %346, i32 0, i32 3
  %348 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %347, i32 0, i32 0
  %349 = load i32, i32* %348, align 8
  %350 = icmp sgt i32 %349, 0
  br i1 %350, label %351, label %432

351:                                              ; preds = %345
  %352 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %353 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %352, i32 0, i32 3
  %354 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %353, i32 0, i32 2
  %355 = load i32, i32* %354, align 8
  %356 = icmp ne i32 %355, 0
  br i1 %356, label %357, label %431

357:                                              ; preds = %351
  %358 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %359 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %358, i32 0, i32 3
  %360 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %359, i32 0, i32 6
  %361 = load i32, i32* %360, align 4
  %362 = load i32*, i32** %5, align 8
  %363 = call i32 @xmv_read_extradata(i32 %361, i32* %362)
  %364 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %365 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %364, i32 0, i32 3
  %366 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %365, i32 0, i32 0
  %367 = load i32, i32* %366, align 8
  %368 = sub nsw i32 %367, 4
  store i32 %368, i32* %366, align 8
  %369 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %370 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %369, i32 0, i32 3
  %371 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %370, i32 0, i32 5
  %372 = load i32, i32* %371, align 8
  %373 = add nsw i32 %372, 4
  store i32 %373, i32* %371, align 8
  %374 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %375 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %374, i32 0, i32 3
  %376 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %375, i32 0, i32 4
  %377 = load i64, i64* %376, align 8
  %378 = icmp uge i64 %377, 0
  br i1 %378, label %379, label %430

379:                                              ; preds = %357
  %380 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %381 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %380, i32 0, i32 1
  %382 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %381, align 8
  %383 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %384 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %383, i32 0, i32 3
  %385 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %384, i32 0, i32 4
  %386 = load i64, i64* %385, align 8
  %387 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %382, i64 %386
  %388 = load %struct.TYPE_14__*, %struct.TYPE_14__** %387, align 8
  store %struct.TYPE_14__* %388, %struct.TYPE_14__** %13, align 8
  %389 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %390 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %389, i32 0, i32 3
  %391 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %390, i32 0, i32 4
  %392 = load i64, i64* %391, align 8
  %393 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %394 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %393, i32 0, i32 0
  %395 = load i64, i64* %394, align 8
  %396 = icmp ult i64 %392, %395
  %397 = zext i1 %396 to i32
  %398 = call i32 @av_assert0(i32 %397)
  %399 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %400 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %399, i32 0, i32 1
  %401 = load %struct.TYPE_16__*, %struct.TYPE_16__** %400, align 8
  %402 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %401, i32 0, i32 3
  %403 = load i32, i32* %402, align 4
  %404 = icmp slt i32 %403, 4
  br i1 %404, label %405, label %419

405:                                              ; preds = %379
  %406 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %407 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %406, i32 0, i32 1
  %408 = load %struct.TYPE_16__*, %struct.TYPE_16__** %407, align 8
  %409 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %408, i32 0, i32 4
  %410 = call i32 @av_freep(i32* %409)
  %411 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %412 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %411, i32 0, i32 1
  %413 = load %struct.TYPE_16__*, %struct.TYPE_16__** %412, align 8
  %414 = call i32 @ff_alloc_extradata(%struct.TYPE_16__* %413, i32 4)
  store i32 %414, i32* %6, align 4
  %415 = icmp slt i32 %414, 0
  br i1 %415, label %416, label %418

416:                                              ; preds = %405
  %417 = load i32, i32* %6, align 4
  store i32 %417, i32* %2, align 4
  br label %433

418:                                              ; preds = %405
  br label %419

419:                                              ; preds = %418, %379
  %420 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %421 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %420, i32 0, i32 1
  %422 = load %struct.TYPE_16__*, %struct.TYPE_16__** %421, align 8
  %423 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %422, i32 0, i32 4
  %424 = load i32, i32* %423, align 4
  %425 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %426 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %425, i32 0, i32 3
  %427 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %426, i32 0, i32 6
  %428 = load i32, i32* %427, align 4
  %429 = call i32 @memcpy(i32 %424, i32 %428, i32 4)
  br label %430

430:                                              ; preds = %419, %357
  br label %431

431:                                              ; preds = %430, %351
  br label %432

432:                                              ; preds = %431, %345
  store i32 0, i32* %2, align 4
  br label %433

433:                                              ; preds = %432, %416, %174, %161, %66, %28
  %434 = load i32, i32* %2, align 4
  ret i32 %434
}

declare dso_local i32 @avio_rl32(i32*) #1

declare dso_local i32 @avio_read(i32*, i32*, i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @AV_RL32(i32*) #1

declare dso_local %struct.TYPE_14__* @avformat_new_stream(%struct.TYPE_15__*, i32*) #1

declare dso_local i32 @avpriv_set_pts_info(%struct.TYPE_14__*, i32, i32, i32) #1

declare dso_local i32 @MKBETAG(i8 signext, i8 signext, i8 signext, i8 signext) #1

declare dso_local i8* @avio_tell(i32*) #1

declare dso_local i32 @xmv_read_extradata(i32, i32*) #1

declare dso_local i32 @av_assert0(i32) #1

declare dso_local i32 @av_freep(i32*) #1

declare dso_local i32 @ff_alloc_extradata(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
