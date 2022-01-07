; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_movenc.c_mov_write_ftyp_tag.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_movenc.c_mov_write_ftyp_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, %struct.TYPE_9__**, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64, i64 }
%struct.TYPE_8__ = type { i8*, i32, i32 }

@AVMEDIA_TYPE_VIDEO = common dso_local global i64 0, align 8
@AV_CODEC_ID_H264 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"ftyp\00", align 1
@MODE_3GP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"3gp6\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"3gp4\00", align 1
@MODE_3G2 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"3g2b\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"3g2a\00", align 1
@MODE_PSP = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"MSNV\00", align 1
@MODE_MP4 = common dso_local global i32 0, align 4
@FF_MOV_FLAG_DEFAULT_BASE_MOOF = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [5 x i8] c"iso5\00", align 1
@FF_MOV_FLAG_NEGATIVE_CTS_OFFSETS = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [5 x i8] c"iso4\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"isom\00", align 1
@MODE_IPOD = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [5 x i8] c"M4V \00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"M4A \00", align 1
@MODE_ISM = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [5 x i8] c"isml\00", align 1
@MODE_F4V = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [5 x i8] c"f4v \00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"qt  \00", align 1
@MODE_MOV = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [5 x i8] c"piff\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"iso2\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"avc1\00", align 1
@FF_MOV_FLAG_FRAGMENT = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [5 x i8] c"iso6\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"mp41\00", align 1
@FF_MOV_FLAG_DASH = common dso_local global i32 0, align 4
@FF_MOV_FLAG_GLOBAL_SIDX = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [5 x i8] c"dash\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_10__*)* @mov_write_ftyp_tag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mov_write_ftyp_tag(i32* %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_9__*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %4, align 8
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 2
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  store %struct.TYPE_8__* %14, %struct.TYPE_8__** %5, align 8
  %15 = load i32*, i32** %3, align 8
  %16 = call i32 @avio_tell(i32* %15)
  store i32 %16, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 512, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %17

17:                                               ; preds = %54, %2
  %18 = load i32, i32* %10, align 4
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %57

23:                                               ; preds = %17
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %25, align 8
  %27 = load i32, i32* %10, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %26, i64 %28
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %29, align 8
  store %struct.TYPE_9__* %30, %struct.TYPE_9__** %11, align 8
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %32 = call i64 @is_cover_image(%struct.TYPE_9__* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %23
  br label %54

35:                                               ; preds = %23
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @AVMEDIA_TYPE_VIDEO, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %35
  store i32 1, i32* %8, align 4
  br label %44

44:                                               ; preds = %43, %35
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @AV_CODEC_ID_H264, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %44
  store i32 1, i32* %7, align 4
  br label %53

53:                                               ; preds = %52, %44
  br label %54

54:                                               ; preds = %53, %34
  %55 = load i32, i32* %10, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %10, align 4
  br label %17

57:                                               ; preds = %17
  %58 = load i32*, i32** %3, align 8
  %59 = call i32 @avio_wb32(i32* %58, i32 0)
  %60 = load i32*, i32** %3, align 8
  %61 = call i32 @ffio_wfourcc(i32* %60, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = load i8*, i8** %63, align 8
  %65 = icmp ne i8* %64, null
  br i1 %65, label %66, label %78

66:                                               ; preds = %57
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  %69 = load i8*, i8** %68, align 8
  %70 = call i32 @strlen(i8* %69)
  %71 = icmp sge i32 %70, 4
  br i1 %71, label %72, label %78

72:                                               ; preds = %66
  %73 = load i32*, i32** %3, align 8
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  %76 = load i8*, i8** %75, align 8
  %77 = call i32 @ffio_wfourcc(i32* %73, i8* %76)
  br label %206

78:                                               ; preds = %66, %57
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @MODE_3GP, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %95

84:                                               ; preds = %78
  %85 = load i32*, i32** %3, align 8
  %86 = load i32, i32* %7, align 4
  %87 = icmp ne i32 %86, 0
  %88 = zext i1 %87 to i64
  %89 = select i1 %87, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %90 = call i32 @ffio_wfourcc(i32* %85, i8* %89)
  %91 = load i32, i32* %7, align 4
  %92 = icmp ne i32 %91, 0
  %93 = zext i1 %92 to i64
  %94 = select i1 %92, i32 256, i32 512
  store i32 %94, i32* %9, align 4
  br label %205

95:                                               ; preds = %78
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @MODE_3G2, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %113

102:                                              ; preds = %95
  %103 = load i32*, i32** %3, align 8
  %104 = load i32, i32* %7, align 4
  %105 = icmp ne i32 %104, 0
  %106 = zext i1 %105 to i64
  %107 = select i1 %105, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0)
  %108 = call i32 @ffio_wfourcc(i32* %103, i8* %107)
  %109 = load i32, i32* %7, align 4
  %110 = icmp ne i32 %109, 0
  %111 = zext i1 %110 to i64
  %112 = select i1 %110, i32 131072, i32 65536
  store i32 %112, i32* %9, align 4
  br label %204

113:                                              ; preds = %95
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* @MODE_PSP, align 4
  %118 = icmp eq i32 %116, %117
  br i1 %118, label %119, label %122

119:                                              ; preds = %113
  %120 = load i32*, i32** %3, align 8
  %121 = call i32 @ffio_wfourcc(i32* %120, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  br label %203

122:                                              ; preds = %113
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* @MODE_MP4, align 4
  %127 = icmp eq i32 %125, %126
  br i1 %127, label %128, label %138

128:                                              ; preds = %122
  %129 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* @FF_MOV_FLAG_DEFAULT_BASE_MOOF, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %138

135:                                              ; preds = %128
  %136 = load i32*, i32** %3, align 8
  %137 = call i32 @ffio_wfourcc(i32* %136, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  br label %202

138:                                              ; preds = %128, %122
  %139 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* @MODE_MP4, align 4
  %143 = icmp eq i32 %141, %142
  br i1 %143, label %144, label %154

144:                                              ; preds = %138
  %145 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* @FF_MOV_FLAG_NEGATIVE_CTS_OFFSETS, align 4
  %149 = and i32 %147, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %154

151:                                              ; preds = %144
  %152 = load i32*, i32** %3, align 8
  %153 = call i32 @ffio_wfourcc(i32* %152, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  br label %201

154:                                              ; preds = %144, %138
  %155 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 8
  %158 = load i32, i32* @MODE_MP4, align 4
  %159 = icmp eq i32 %157, %158
  br i1 %159, label %160, label %163

160:                                              ; preds = %154
  %161 = load i32*, i32** %3, align 8
  %162 = call i32 @ffio_wfourcc(i32* %161, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  br label %200

163:                                              ; preds = %154
  %164 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %165 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 8
  %167 = load i32, i32* @MODE_IPOD, align 4
  %168 = icmp eq i32 %166, %167
  br i1 %168, label %169, label %176

169:                                              ; preds = %163
  %170 = load i32*, i32** %3, align 8
  %171 = load i32, i32* %8, align 4
  %172 = icmp ne i32 %171, 0
  %173 = zext i1 %172 to i64
  %174 = select i1 %172, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0)
  %175 = call i32 @ffio_wfourcc(i32* %170, i8* %174)
  br label %199

176:                                              ; preds = %163
  %177 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %178 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 8
  %180 = load i32, i32* @MODE_ISM, align 4
  %181 = icmp eq i32 %179, %180
  br i1 %181, label %182, label %185

182:                                              ; preds = %176
  %183 = load i32*, i32** %3, align 8
  %184 = call i32 @ffio_wfourcc(i32* %183, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0))
  br label %198

185:                                              ; preds = %176
  %186 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %187 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 8
  %189 = load i32, i32* @MODE_F4V, align 4
  %190 = icmp eq i32 %188, %189
  br i1 %190, label %191, label %194

191:                                              ; preds = %185
  %192 = load i32*, i32** %3, align 8
  %193 = call i32 @ffio_wfourcc(i32* %192, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0))
  br label %197

194:                                              ; preds = %185
  %195 = load i32*, i32** %3, align 8
  %196 = call i32 @ffio_wfourcc(i32* %195, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0))
  br label %197

197:                                              ; preds = %194, %191
  br label %198

198:                                              ; preds = %197, %182
  br label %199

199:                                              ; preds = %198, %169
  br label %200

200:                                              ; preds = %199, %160
  br label %201

201:                                              ; preds = %200, %151
  br label %202

202:                                              ; preds = %201, %135
  br label %203

203:                                              ; preds = %202, %119
  br label %204

204:                                              ; preds = %203, %102
  br label %205

205:                                              ; preds = %204, %84
  br label %206

206:                                              ; preds = %205, %72
  %207 = load i32*, i32** %3, align 8
  %208 = load i32, i32* %9, align 4
  %209 = call i32 @avio_wb32(i32* %207, i32 %208)
  %210 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %211 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 8
  %213 = load i32, i32* @MODE_MOV, align 4
  %214 = icmp eq i32 %212, %213
  br i1 %214, label %215, label %218

215:                                              ; preds = %206
  %216 = load i32*, i32** %3, align 8
  %217 = call i32 @ffio_wfourcc(i32* %216, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0))
  br label %247

218:                                              ; preds = %206
  %219 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %220 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 8
  %222 = load i32, i32* @MODE_ISM, align 4
  %223 = icmp eq i32 %221, %222
  br i1 %223, label %224, label %227

224:                                              ; preds = %218
  %225 = load i32*, i32** %3, align 8
  %226 = call i32 @ffio_wfourcc(i32* %225, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0))
  br label %246

227:                                              ; preds = %218
  %228 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %229 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %228, i32 0, i32 2
  %230 = load i32, i32* %229, align 4
  %231 = load i32, i32* @FF_MOV_FLAG_DEFAULT_BASE_MOOF, align 4
  %232 = and i32 %230, %231
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %245, label %234

234:                                              ; preds = %227
  %235 = load i32*, i32** %3, align 8
  %236 = call i32 @ffio_wfourcc(i32* %235, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  %237 = load i32*, i32** %3, align 8
  %238 = call i32 @ffio_wfourcc(i32* %237, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0))
  %239 = load i32, i32* %7, align 4
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %244

241:                                              ; preds = %234
  %242 = load i32*, i32** %3, align 8
  %243 = call i32 @ffio_wfourcc(i32* %242, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0))
  br label %244

244:                                              ; preds = %241, %234
  br label %245

245:                                              ; preds = %244, %227
  br label %246

246:                                              ; preds = %245, %224
  br label %247

247:                                              ; preds = %246, %215
  %248 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %249 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %248, i32 0, i32 2
  %250 = load i32, i32* %249, align 4
  %251 = load i32, i32* @FF_MOV_FLAG_FRAGMENT, align 4
  %252 = and i32 %250, %251
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %263

254:                                              ; preds = %247
  %255 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %256 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %255, i32 0, i32 1
  %257 = load i32, i32* %256, align 8
  %258 = load i32, i32* @MODE_ISM, align 4
  %259 = icmp ne i32 %257, %258
  br i1 %259, label %260, label %263

260:                                              ; preds = %254
  %261 = load i32*, i32** %3, align 8
  %262 = call i32 @ffio_wfourcc(i32* %261, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0))
  br label %263

263:                                              ; preds = %260, %254, %247
  %264 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %265 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %264, i32 0, i32 1
  %266 = load i32, i32* %265, align 8
  %267 = load i32, i32* @MODE_3GP, align 4
  %268 = icmp eq i32 %266, %267
  br i1 %268, label %269, label %276

269:                                              ; preds = %263
  %270 = load i32*, i32** %3, align 8
  %271 = load i32, i32* %7, align 4
  %272 = icmp ne i32 %271, 0
  %273 = zext i1 %272 to i64
  %274 = select i1 %272, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %275 = call i32 @ffio_wfourcc(i32* %270, i8* %274)
  br label %311

276:                                              ; preds = %263
  %277 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %278 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %277, i32 0, i32 1
  %279 = load i32, i32* %278, align 8
  %280 = load i32, i32* @MODE_3G2, align 4
  %281 = and i32 %279, %280
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %283, label %290

283:                                              ; preds = %276
  %284 = load i32*, i32** %3, align 8
  %285 = load i32, i32* %7, align 4
  %286 = icmp ne i32 %285, 0
  %287 = zext i1 %286 to i64
  %288 = select i1 %286, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0)
  %289 = call i32 @ffio_wfourcc(i32* %284, i8* %288)
  br label %310

290:                                              ; preds = %276
  %291 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %292 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %291, i32 0, i32 1
  %293 = load i32, i32* %292, align 8
  %294 = load i32, i32* @MODE_PSP, align 4
  %295 = icmp eq i32 %293, %294
  br i1 %295, label %296, label %299

296:                                              ; preds = %290
  %297 = load i32*, i32** %3, align 8
  %298 = call i32 @ffio_wfourcc(i32* %297, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  br label %309

299:                                              ; preds = %290
  %300 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %301 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %300, i32 0, i32 1
  %302 = load i32, i32* %301, align 8
  %303 = load i32, i32* @MODE_MP4, align 4
  %304 = icmp eq i32 %302, %303
  br i1 %304, label %305, label %308

305:                                              ; preds = %299
  %306 = load i32*, i32** %3, align 8
  %307 = call i32 @ffio_wfourcc(i32* %306, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0))
  br label %308

308:                                              ; preds = %305, %299
  br label %309

309:                                              ; preds = %308, %296
  br label %310

310:                                              ; preds = %309, %283
  br label %311

311:                                              ; preds = %310, %269
  %312 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %313 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %312, i32 0, i32 2
  %314 = load i32, i32* %313, align 4
  %315 = load i32, i32* @FF_MOV_FLAG_DASH, align 4
  %316 = and i32 %314, %315
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %318, label %328

318:                                              ; preds = %311
  %319 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %320 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %319, i32 0, i32 2
  %321 = load i32, i32* %320, align 4
  %322 = load i32, i32* @FF_MOV_FLAG_GLOBAL_SIDX, align 4
  %323 = and i32 %321, %322
  %324 = icmp ne i32 %323, 0
  br i1 %324, label %325, label %328

325:                                              ; preds = %318
  %326 = load i32*, i32** %3, align 8
  %327 = call i32 @ffio_wfourcc(i32* %326, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0))
  br label %328

328:                                              ; preds = %325, %318, %311
  %329 = load i32*, i32** %3, align 8
  %330 = load i32, i32* %6, align 4
  %331 = call i32 @update_size(i32* %329, i32 %330)
  ret i32 %331
}

declare dso_local i32 @avio_tell(i32*) #1

declare dso_local i64 @is_cover_image(%struct.TYPE_9__*) #1

declare dso_local i32 @avio_wb32(i32*, i32) #1

declare dso_local i32 @ffio_wfourcc(i32*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @update_size(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
