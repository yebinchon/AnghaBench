; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavdevice/extr_xv.c_xv_write_header.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavdevice/extr_xv.c_xv_write_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_31__ = type { i32, i32, %struct.TYPE_24__**, %struct.TYPE_28__* }
%struct.TYPE_24__ = type { %struct.TYPE_32__* }
%struct.TYPE_32__ = type { i64, i64, i8*, i8*, i32, %struct.TYPE_30__ }
%struct.TYPE_30__ = type { i64, i64 }
%struct.TYPE_28__ = type { i8*, i8*, i32, i32, i64, %struct.TYPE_23__, %struct.TYPE_22__*, i8*, i8*, i32, i64, i32, i64, i32, i32, i32, i32 }
%struct.TYPE_23__ = type { i8*, i32, i32 }
%struct.TYPE_22__ = type { i8*, i32 }
%struct.TYPE_26__ = type { i32 }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_29__ = type { i32, i32, i64, i64, i64 }
%struct.TYPE_27__ = type { i32 }

@AVMEDIA_TYPE_VIDEO = common dso_local global i64 0, align 8
@AV_CODEC_ID_RAWVIDEO = common dso_local global i64 0, align 8
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Only supports one rawvideo stream\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [87 x i8] c"Unsupported pixel format '%s', only yuv420p, uyvy422, yuyv422 are currently supported\0A\00", align 1
@AVERROR_PATCHWELCOME = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"Could not open the X11 display '%s'\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"WM_DELETE_WINDOW\00", align 1
@False = common dso_local global i32 0, align 4
@Success = common dso_local global i64 0, align 8
@AVERROR_EXTERNAL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"No X-Video adaptors present\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [51 x i8] c"Device does not support pixel format %s, aborting\0A\00", align 1
@IPC_PRIVATE = common dso_local global i32 0, align 4
@IPC_CREAT = common dso_local global i32 0, align 4
@IPC_RMID = common dso_local global i32 0, align 4
@DoRed = common dso_local global i32 0, align 4
@DoGreen = common dso_local global i32 0, align 4
@DoBlue = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_31__*)* @xv_write_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xv_write_header(%struct.TYPE_31__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_31__*, align 8
  %4 = alloca %struct.TYPE_28__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_26__*, align 8
  %7 = alloca %struct.TYPE_25__*, align 8
  %8 = alloca %struct.TYPE_29__, align 8
  %9 = alloca %struct.TYPE_27__, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_32__*, align 8
  %15 = alloca %struct.TYPE_30__, align 8
  store %struct.TYPE_31__* %0, %struct.TYPE_31__** %3, align 8
  %16 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %16, i32 0, i32 3
  %18 = load %struct.TYPE_28__*, %struct.TYPE_28__** %17, align 8
  store %struct.TYPE_28__* %18, %struct.TYPE_28__** %4, align 8
  store i32 0, i32* %10, align 4
  %19 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %19, i32 0, i32 2
  %21 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %21, i64 0
  %23 = load %struct.TYPE_24__*, %struct.TYPE_24__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_32__*, %struct.TYPE_32__** %24, align 8
  store %struct.TYPE_32__* %25, %struct.TYPE_32__** %14, align 8
  %26 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp sgt i32 %28, 1
  br i1 %29, label %42, label %30

30:                                               ; preds = %1
  %31 = load %struct.TYPE_32__*, %struct.TYPE_32__** %14, align 8
  %32 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @AVMEDIA_TYPE_VIDEO, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %42, label %36

36:                                               ; preds = %30
  %37 = load %struct.TYPE_32__*, %struct.TYPE_32__** %14, align 8
  %38 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @AV_CODEC_ID_RAWVIDEO, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %48

42:                                               ; preds = %36, %30, %1
  %43 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %44 = load i32, i32* @AV_LOG_ERROR, align 4
  %45 = call i32 (%struct.TYPE_31__*, i32, i8*, ...) @av_log(%struct.TYPE_31__* %43, i32 %44, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %46 = load i32, i32* @EINVAL, align 4
  %47 = call i32 @AVERROR(i32 %46)
  store i32 %47, i32* %2, align 4
  br label %450

48:                                               ; preds = %36
  %49 = load %struct.TYPE_32__*, %struct.TYPE_32__** %14, align 8
  %50 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @xv_get_tag_from_format(i32 %51)
  store i32 %52, i32* %12, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %63, label %54

54:                                               ; preds = %48
  %55 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %56 = load i32, i32* @AV_LOG_ERROR, align 4
  %57 = load %struct.TYPE_32__*, %struct.TYPE_32__** %14, align 8
  %58 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @av_get_pix_fmt_name(i32 %59)
  %61 = call i32 (%struct.TYPE_31__*, i32, i8*, ...) @av_log(%struct.TYPE_31__* %55, i32 %56, i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.1, i64 0, i64 0), i32 %60)
  %62 = load i32, i32* @AVERROR_PATCHWELCOME, align 4
  store i32 %62, i32* %2, align 4
  br label %450

63:                                               ; preds = %48
  %64 = load %struct.TYPE_32__*, %struct.TYPE_32__** %14, align 8
  %65 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %67, i32 0, i32 16
  store i32 %66, i32* %68, align 4
  %69 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %69, i32 0, i32 15
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @XOpenDisplay(i32 %71)
  %73 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %73, i32 0, i32 3
  store i32 %72, i32* %74, align 4
  %75 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %88, label %79

79:                                               ; preds = %63
  %80 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %81 = load i32, i32* @AV_LOG_ERROR, align 4
  %82 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %82, i32 0, i32 15
  %84 = load i32, i32* %83, align 8
  %85 = call i32 (%struct.TYPE_31__*, i32, i8*, ...) @av_log(%struct.TYPE_31__* %80, i32 %81, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %84)
  %86 = load i32, i32* @EINVAL, align 4
  %87 = call i32 @AVERROR(i32 %86)
  store i32 %87, i32* %2, align 4
  br label %450

88:                                               ; preds = %63
  %89 = load %struct.TYPE_32__*, %struct.TYPE_32__** %14, align 8
  %90 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %89, i32 0, i32 3
  %91 = load i8*, i8** %90, align 8
  %92 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %92, i32 0, i32 8
  store i8* %91, i8** %93, align 8
  %94 = load %struct.TYPE_32__*, %struct.TYPE_32__** %14, align 8
  %95 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %94, i32 0, i32 2
  %96 = load i8*, i8** %95, align 8
  %97 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %97, i32 0, i32 7
  store i8* %96, i8** %98, align 8
  %99 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %99, i32 0, i32 1
  %101 = load i8*, i8** %100, align 8
  %102 = icmp ne i8* %101, null
  br i1 %102, label %162, label %103

103:                                              ; preds = %88
  %104 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %104, i32 0, i32 0
  %106 = load i8*, i8** %105, align 8
  %107 = icmp ne i8* %106, null
  br i1 %107, label %162, label %108

108:                                              ; preds = %103
  %109 = load %struct.TYPE_32__*, %struct.TYPE_32__** %14, align 8
  %110 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %109, i32 0, i32 5
  %111 = bitcast %struct.TYPE_30__* %15 to i8*
  %112 = bitcast %struct.TYPE_30__* %110 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %111, i8* align 8 %112, i64 16, i1 false)
  %113 = load %struct.TYPE_32__*, %struct.TYPE_32__** %14, align 8
  %114 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %113, i32 0, i32 3
  %115 = load i8*, i8** %114, align 8
  %116 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %116, i32 0, i32 1
  store i8* %115, i8** %117, align 8
  %118 = load %struct.TYPE_32__*, %struct.TYPE_32__** %14, align 8
  %119 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %118, i32 0, i32 2
  %120 = load i8*, i8** %119, align 8
  %121 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %121, i32 0, i32 0
  store i8* %120, i8** %122, align 8
  %123 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %15, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %161

126:                                              ; preds = %108
  %127 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %15, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %15, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = icmp sgt i64 %128, %130
  br i1 %131, label %132, label %143

132:                                              ; preds = %126
  %133 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %133, i32 0, i32 1
  %135 = load i8*, i8** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %15, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %15, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = call i8* @av_rescale(i8* %135, i64 %137, i64 %139)
  %141 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %142 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %141, i32 0, i32 1
  store i8* %140, i8** %142, align 8
  br label %143

143:                                              ; preds = %132, %126
  %144 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %15, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %15, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = icmp slt i64 %145, %147
  br i1 %148, label %149, label %160

149:                                              ; preds = %143
  %150 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %151 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %150, i32 0, i32 0
  %152 = load i8*, i8** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %15, i32 0, i32 1
  %154 = load i64, i64* %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %15, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = call i8* @av_rescale(i8* %152, i64 %154, i64 %156)
  %158 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %159 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %158, i32 0, i32 0
  store i8* %157, i8** %159, align 8
  br label %160

160:                                              ; preds = %149, %143
  br label %161

161:                                              ; preds = %160, %108
  br label %162

162:                                              ; preds = %161, %103, %88
  %163 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %164 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %163, i32 0, i32 10
  %165 = load i64, i64* %164, align 8
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %240, label %167

167:                                              ; preds = %162
  %168 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %169 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %168, i32 0, i32 3
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %172 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %171, i32 0, i32 3
  %173 = load i32, i32* %172, align 4
  %174 = call i32 @DefaultRootWindow(i32 %173)
  %175 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %176 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %175, i32 0, i32 14
  %177 = load i32, i32* %176, align 4
  %178 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %179 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %178, i32 0, i32 13
  %180 = load i32, i32* %179, align 8
  %181 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %182 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %181, i32 0, i32 1
  %183 = load i8*, i8** %182, align 8
  %184 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %185 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %184, i32 0, i32 0
  %186 = load i8*, i8** %185, align 8
  %187 = call i64 @XCreateSimpleWindow(i32 %170, i32 %174, i32 %177, i32 %180, i8* %183, i8* %186, i32 0, i32 0, i32 0)
  %188 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %189 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %188, i32 0, i32 4
  store i64 %187, i64* %189, align 8
  %190 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %191 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %190, i32 0, i32 12
  %192 = load i64, i64* %191, align 8
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %206, label %194

194:                                              ; preds = %167
  %195 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %196 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = call i64 @av_strdup(i32 %197)
  %199 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %200 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %199, i32 0, i32 12
  store i64 %198, i64* %200, align 8
  %201 = icmp ne i64 %198, 0
  br i1 %201, label %205, label %202

202:                                              ; preds = %194
  %203 = load i32, i32* @ENOMEM, align 4
  %204 = call i32 @AVERROR(i32 %203)
  store i32 %204, i32* %13, align 4
  br label %446

205:                                              ; preds = %194
  br label %206

206:                                              ; preds = %205, %167
  %207 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %208 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %207, i32 0, i32 3
  %209 = load i32, i32* %208, align 4
  %210 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %211 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %210, i32 0, i32 4
  %212 = load i64, i64* %211, align 8
  %213 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %214 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %213, i32 0, i32 12
  %215 = load i64, i64* %214, align 8
  %216 = call i32 @XStoreName(i32 %209, i64 %212, i64 %215)
  %217 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %218 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %217, i32 0, i32 3
  %219 = load i32, i32* %218, align 4
  %220 = load i32, i32* @False, align 4
  %221 = call i32 @XInternAtom(i32 %219, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %220)
  %222 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %223 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %222, i32 0, i32 11
  store i32 %221, i32* %223, align 8
  %224 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %225 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %224, i32 0, i32 3
  %226 = load i32, i32* %225, align 4
  %227 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %228 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %227, i32 0, i32 4
  %229 = load i64, i64* %228, align 8
  %230 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %231 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %230, i32 0, i32 11
  %232 = call i32 @XSetWMProtocols(i32 %226, i64 %229, i32* %231, i32 1)
  %233 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %234 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %233, i32 0, i32 3
  %235 = load i32, i32* %234, align 4
  %236 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %237 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %236, i32 0, i32 4
  %238 = load i64, i64* %237, align 8
  %239 = call i32 @XMapWindow(i32 %235, i64 %238)
  br label %246

240:                                              ; preds = %162
  %241 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %242 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %241, i32 0, i32 10
  %243 = load i64, i64* %242, align 8
  %244 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %245 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %244, i32 0, i32 4
  store i64 %243, i64* %245, align 8
  br label %246

246:                                              ; preds = %240, %206
  %247 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %248 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %247, i32 0, i32 3
  %249 = load i32, i32* %248, align 4
  %250 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %251 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %250, i32 0, i32 3
  %252 = load i32, i32* %251, align 4
  %253 = call i32 @DefaultRootWindow(i32 %252)
  %254 = call i64 @XvQueryAdaptors(i32 %249, i32 %253, i32* %5, %struct.TYPE_26__** %6)
  %255 = load i64, i64* @Success, align 8
  %256 = icmp ne i64 %254, %255
  br i1 %256, label %257, label %259

257:                                              ; preds = %246
  %258 = load i32, i32* @AVERROR_EXTERNAL, align 4
  store i32 %258, i32* %13, align 4
  br label %446

259:                                              ; preds = %246
  %260 = load i32, i32* %5, align 4
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %268, label %262

262:                                              ; preds = %259
  %263 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %264 = load i32, i32* @AV_LOG_ERROR, align 4
  %265 = call i32 (%struct.TYPE_31__*, i32, i8*, ...) @av_log(%struct.TYPE_31__* %263, i32 %264, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  %266 = load i32, i32* @ENODEV, align 4
  %267 = call i32 @AVERROR(i32 %266)
  store i32 %267, i32* %2, align 4
  br label %450

268:                                              ; preds = %259
  %269 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %270 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %269, i64 0
  %271 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 4
  %273 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %274 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %273, i32 0, i32 9
  store i32 %272, i32* %274, align 8
  %275 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %276 = call i32 @XvFreeAdaptorInfo(%struct.TYPE_26__* %275)
  %277 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %278 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %277, i32 0, i32 3
  %279 = load i32, i32* %278, align 4
  %280 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %281 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %280, i32 0, i32 9
  %282 = load i32, i32* %281, align 8
  %283 = call %struct.TYPE_25__* @XvListImageFormats(i32 %279, i32 %282, i32* %10)
  store %struct.TYPE_25__* %283, %struct.TYPE_25__** %7, align 8
  %284 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %285 = icmp ne %struct.TYPE_25__* %284, null
  br i1 %285, label %288, label %286

286:                                              ; preds = %268
  %287 = load i32, i32* @AVERROR_EXTERNAL, align 4
  store i32 %287, i32* %13, align 4
  br label %446

288:                                              ; preds = %268
  store i32 0, i32* %11, align 4
  br label %289

289:                                              ; preds = %304, %288
  %290 = load i32, i32* %11, align 4
  %291 = load i32, i32* %10, align 4
  %292 = icmp slt i32 %290, %291
  br i1 %292, label %293, label %307

293:                                              ; preds = %289
  %294 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %295 = load i32, i32* %11, align 4
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %294, i64 %296
  %298 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %297, i32 0, i32 0
  %299 = load i32, i32* %298, align 4
  %300 = load i32, i32* %12, align 4
  %301 = icmp eq i32 %299, %300
  br i1 %301, label %302, label %303

302:                                              ; preds = %293
  br label %307

303:                                              ; preds = %293
  br label %304

304:                                              ; preds = %303
  %305 = load i32, i32* %11, align 4
  %306 = add nsw i32 %305, 1
  store i32 %306, i32* %11, align 4
  br label %289

307:                                              ; preds = %302, %289
  %308 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %309 = call i32 @XFree(%struct.TYPE_25__* %308)
  %310 = load i32, i32* %11, align 4
  %311 = load i32, i32* %10, align 4
  %312 = icmp sge i32 %310, %311
  br i1 %312, label %313, label %323

313:                                              ; preds = %307
  %314 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %315 = load i32, i32* @AV_LOG_ERROR, align 4
  %316 = load %struct.TYPE_32__*, %struct.TYPE_32__** %14, align 8
  %317 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %316, i32 0, i32 4
  %318 = load i32, i32* %317, align 8
  %319 = call i32 @av_get_pix_fmt_name(i32 %318)
  %320 = call i32 (%struct.TYPE_31__*, i32, i8*, ...) @av_log(%struct.TYPE_31__* %314, i32 %315, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.5, i64 0, i64 0), i32 %319)
  %321 = load i32, i32* @EINVAL, align 4
  %322 = call i32 @AVERROR(i32 %321)
  store i32 %322, i32* %13, align 4
  br label %446

323:                                              ; preds = %307
  %324 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %325 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %324, i32 0, i32 3
  %326 = load i32, i32* %325, align 4
  %327 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %328 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %327, i32 0, i32 4
  %329 = load i64, i64* %328, align 8
  %330 = call i32 @XCreateGC(i32 %326, i64 %329, i32 0, i32 0)
  %331 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %332 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %331, i32 0, i32 2
  store i32 %330, i32* %332, align 8
  %333 = load %struct.TYPE_32__*, %struct.TYPE_32__** %14, align 8
  %334 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %333, i32 0, i32 3
  %335 = load i8*, i8** %334, align 8
  %336 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %337 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %336, i32 0, i32 8
  store i8* %335, i8** %337, align 8
  %338 = load %struct.TYPE_32__*, %struct.TYPE_32__** %14, align 8
  %339 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %338, i32 0, i32 2
  %340 = load i8*, i8** %339, align 8
  %341 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %342 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %341, i32 0, i32 7
  store i8* %340, i8** %342, align 8
  %343 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %344 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %343, i32 0, i32 3
  %345 = load i32, i32* %344, align 4
  %346 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %347 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %346, i32 0, i32 9
  %348 = load i32, i32* %347, align 8
  %349 = load i32, i32* %12, align 4
  %350 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %351 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %350, i32 0, i32 8
  %352 = load i8*, i8** %351, align 8
  %353 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %354 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %353, i32 0, i32 7
  %355 = load i8*, i8** %354, align 8
  %356 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %357 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %356, i32 0, i32 5
  %358 = call %struct.TYPE_22__* @XvShmCreateImage(i32 %345, i32 %348, i32 %349, i32 0, i8* %352, i8* %355, %struct.TYPE_23__* %357)
  %359 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %360 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %359, i32 0, i32 6
  store %struct.TYPE_22__* %358, %struct.TYPE_22__** %360, align 8
  %361 = load i32, i32* @IPC_PRIVATE, align 4
  %362 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %363 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %362, i32 0, i32 6
  %364 = load %struct.TYPE_22__*, %struct.TYPE_22__** %363, align 8
  %365 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %364, i32 0, i32 1
  %366 = load i32, i32* %365, align 8
  %367 = load i32, i32* @IPC_CREAT, align 4
  %368 = or i32 %367, 511
  %369 = call i32 @shmget(i32 %361, i32 %366, i32 %368)
  %370 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %371 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %370, i32 0, i32 5
  %372 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %371, i32 0, i32 1
  store i32 %369, i32* %372, align 8
  %373 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %374 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %373, i32 0, i32 5
  %375 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %374, i32 0, i32 1
  %376 = load i32, i32* %375, align 8
  %377 = call i64 @shmat(i32 %376, i32 0, i32 0)
  %378 = inttoptr i64 %377 to i8*
  %379 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %380 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %379, i32 0, i32 5
  %381 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %380, i32 0, i32 0
  store i8* %378, i8** %381, align 8
  %382 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %383 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %382, i32 0, i32 5
  %384 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %383, i32 0, i32 0
  %385 = load i8*, i8** %384, align 8
  %386 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %387 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %386, i32 0, i32 6
  %388 = load %struct.TYPE_22__*, %struct.TYPE_22__** %387, align 8
  %389 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %388, i32 0, i32 0
  store i8* %385, i8** %389, align 8
  %390 = load i32, i32* @False, align 4
  %391 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %392 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %391, i32 0, i32 5
  %393 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %392, i32 0, i32 2
  store i32 %390, i32* %393, align 4
  %394 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %395 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %394, i32 0, i32 3
  %396 = load i32, i32* %395, align 4
  %397 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %398 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %397, i32 0, i32 5
  %399 = call i32 @XShmAttach(i32 %396, %struct.TYPE_23__* %398)
  %400 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %401 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %400, i32 0, i32 3
  %402 = load i32, i32* %401, align 4
  %403 = load i32, i32* @False, align 4
  %404 = call i32 @XSync(i32 %402, i32 %403)
  %405 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %406 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %405, i32 0, i32 5
  %407 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %406, i32 0, i32 1
  %408 = load i32, i32* %407, align 8
  %409 = load i32, i32* @IPC_RMID, align 4
  %410 = call i32 @shmctl(i32 %408, i32 %409, i32 0)
  %411 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %412 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %411, i32 0, i32 3
  %413 = load i32, i32* %412, align 4
  %414 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %415 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %414, i32 0, i32 4
  %416 = load i64, i64* %415, align 8
  %417 = call i32 @XGetWindowAttributes(i32 %413, i64 %416, %struct.TYPE_27__* %9)
  %418 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %8, i32 0, i32 2
  store i64 0, i64* %418, align 8
  %419 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %8, i32 0, i32 3
  store i64 0, i64* %419, align 8
  %420 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %8, i32 0, i32 4
  store i64 0, i64* %420, align 8
  %421 = load i32, i32* @DoRed, align 4
  %422 = load i32, i32* @DoGreen, align 4
  %423 = or i32 %421, %422
  %424 = load i32, i32* @DoBlue, align 4
  %425 = or i32 %423, %424
  %426 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %8, i32 0, i32 0
  store i32 %425, i32* %426, align 8
  %427 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %428 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %427, i32 0, i32 3
  %429 = load i32, i32* %428, align 4
  %430 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %9, i32 0, i32 0
  %431 = load i32, i32* %430, align 4
  %432 = call i32 @XAllocColor(i32 %429, i32 %431, %struct.TYPE_29__* %8)
  %433 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %434 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %433, i32 0, i32 3
  %435 = load i32, i32* %434, align 4
  %436 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %437 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %436, i32 0, i32 2
  %438 = load i32, i32* %437, align 8
  %439 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %8, i32 0, i32 1
  %440 = load i32, i32* %439, align 4
  %441 = call i32 @XSetForeground(i32 %435, i32 %438, i32 %440)
  %442 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %443 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %442, i32 0, i32 0
  store i8* null, i8** %443, align 8
  %444 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %445 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %444, i32 0, i32 1
  store i8* null, i8** %445, align 8
  store i32 0, i32* %2, align 4
  br label %450

446:                                              ; preds = %313, %286, %257, %202
  %447 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %448 = call i32 @xv_write_trailer(%struct.TYPE_31__* %447)
  %449 = load i32, i32* %13, align 4
  store i32 %449, i32* %2, align 4
  br label %450

450:                                              ; preds = %446, %323, %262, %79, %54, %42
  %451 = load i32, i32* %2, align 4
  ret i32 %451
}

declare dso_local i32 @av_log(%struct.TYPE_31__*, i32, i8*, ...) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @xv_get_tag_from_format(i32) #1

declare dso_local i32 @av_get_pix_fmt_name(i32) #1

declare dso_local i32 @XOpenDisplay(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i8* @av_rescale(i8*, i64, i64) #1

declare dso_local i64 @XCreateSimpleWindow(i32, i32, i32, i32, i8*, i8*, i32, i32, i32) #1

declare dso_local i32 @DefaultRootWindow(i32) #1

declare dso_local i64 @av_strdup(i32) #1

declare dso_local i32 @XStoreName(i32, i64, i64) #1

declare dso_local i32 @XInternAtom(i32, i8*, i32) #1

declare dso_local i32 @XSetWMProtocols(i32, i64, i32*, i32) #1

declare dso_local i32 @XMapWindow(i32, i64) #1

declare dso_local i64 @XvQueryAdaptors(i32, i32, i32*, %struct.TYPE_26__**) #1

declare dso_local i32 @XvFreeAdaptorInfo(%struct.TYPE_26__*) #1

declare dso_local %struct.TYPE_25__* @XvListImageFormats(i32, i32, i32*) #1

declare dso_local i32 @XFree(%struct.TYPE_25__*) #1

declare dso_local i32 @XCreateGC(i32, i64, i32, i32) #1

declare dso_local %struct.TYPE_22__* @XvShmCreateImage(i32, i32, i32, i32, i8*, i8*, %struct.TYPE_23__*) #1

declare dso_local i32 @shmget(i32, i32, i32) #1

declare dso_local i64 @shmat(i32, i32, i32) #1

declare dso_local i32 @XShmAttach(i32, %struct.TYPE_23__*) #1

declare dso_local i32 @XSync(i32, i32) #1

declare dso_local i32 @shmctl(i32, i32, i32) #1

declare dso_local i32 @XGetWindowAttributes(i32, i64, %struct.TYPE_27__*) #1

declare dso_local i32 @XAllocColor(i32, i32, %struct.TYPE_29__*) #1

declare dso_local i32 @XSetForeground(i32, i32, i32) #1

declare dso_local i32 @xv_write_trailer(%struct.TYPE_31__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
