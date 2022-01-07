; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_hapdec.c_hap_parse_frame_header.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_hapdec.c_hap_parse_frame_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i64, i32, %struct.TYPE_14__*, %struct.TYPE_15__ }
%struct.TYPE_14__ = type { i32, i64, i32, i64, i64 }
%struct.TYPE_15__ = type { i64 }

@HAP_FMT_RGBDXT1 = common dso_local global i32 0, align 4
@HAP_FMT_RGBADXT5 = common dso_local global i32 0, align 4
@HAP_FMT_YCOCGDXT5 = common dso_local global i32 0, align 4
@HAP_FMT_RGTC1 = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Invalid texture format %#04x.\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"snappy\00", align 1
@HAP_ST_DECODE_INSTRUCTIONS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"complex\00", align 1
@AV_LOG_DEBUG = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [15 x i8] c"%s compressor\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*)* @hap_parse_frame_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hap_parse_frame_header(%struct.TYPE_16__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_14__*, align 8
  %12 = alloca %struct.TYPE_15__, align 8
  %13 = alloca i64, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %3, align 8
  %14 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  store %struct.TYPE_13__* %16, %struct.TYPE_13__** %4, align 8
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 4
  store %struct.TYPE_15__* %18, %struct.TYPE_15__** %5, align 8
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 0
  %22 = call i32 @ff_hap_parse_section_header(%struct.TYPE_15__* %19, i32* %21, i32* %7)
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %1
  %26 = load i32, i32* %10, align 4
  store i32 %26, i32* %2, align 4
  br label %254

27:                                               ; preds = %1
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i64 @MKTAG(i8 signext 72, i8 signext 97, i8 signext 112, i8 signext 49)
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %27
  %34 = load i32, i32* %7, align 4
  %35 = and i32 %34, 15
  %36 = load i32, i32* @HAP_FMT_RGBDXT1, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %87, label %38

38:                                               ; preds = %33, %27
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = call i64 @MKTAG(i8 signext 72, i8 signext 97, i8 signext 112, i8 signext 53)
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %38
  %45 = load i32, i32* %7, align 4
  %46 = and i32 %45, 15
  %47 = load i32, i32* @HAP_FMT_RGBADXT5, align 4
  %48 = icmp ne i32 %46, %47
  br i1 %48, label %87, label %49

49:                                               ; preds = %44, %38
  %50 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = call i64 @MKTAG(i8 signext 72, i8 signext 97, i8 signext 112, i8 signext 89)
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %60

55:                                               ; preds = %49
  %56 = load i32, i32* %7, align 4
  %57 = and i32 %56, 15
  %58 = load i32, i32* @HAP_FMT_YCOCGDXT5, align 4
  %59 = icmp ne i32 %57, %58
  br i1 %59, label %87, label %60

60:                                               ; preds = %55, %49
  %61 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = call i64 @MKTAG(i8 signext 72, i8 signext 97, i8 signext 112, i8 signext 65)
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %71

66:                                               ; preds = %60
  %67 = load i32, i32* %7, align 4
  %68 = and i32 %67, 15
  %69 = load i32, i32* @HAP_FMT_RGTC1, align 4
  %70 = icmp ne i32 %68, %69
  br i1 %70, label %87, label %71

71:                                               ; preds = %66, %60
  %72 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = call i64 @MKTAG(i8 signext 72, i8 signext 97, i8 signext 112, i8 signext 77)
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %94

77:                                               ; preds = %71
  %78 = load i32, i32* %7, align 4
  %79 = and i32 %78, 15
  %80 = load i32, i32* @HAP_FMT_RGTC1, align 4
  %81 = icmp ne i32 %79, %80
  br i1 %81, label %82, label %94

82:                                               ; preds = %77
  %83 = load i32, i32* %7, align 4
  %84 = and i32 %83, 15
  %85 = load i32, i32* @HAP_FMT_YCOCGDXT5, align 4
  %86 = icmp ne i32 %84, %85
  br i1 %86, label %87, label %94

87:                                               ; preds = %82, %66, %55, %44, %33
  %88 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %89 = load i32, i32* @AV_LOG_ERROR, align 4
  %90 = load i32, i32* %7, align 4
  %91 = and i32 %90, 15
  %92 = call i32 (%struct.TYPE_16__*, i32, i8*, ...) @av_log(%struct.TYPE_16__* %88, i32 %89, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %91)
  %93 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %93, i32* %2, align 4
  br label %254

94:                                               ; preds = %82, %77, %71
  %95 = load i32, i32* %7, align 4
  %96 = and i32 %95, 240
  switch i32 %96, label %153 [
    i32 129, label %97
    i32 128, label %97
    i32 130, label %134
  ]

97:                                               ; preds = %94, %94
  %98 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %99 = call i32 @ff_hap_set_chunk_count(%struct.TYPE_13__* %98, i32 1, i32 1)
  store i32 %99, i32* %10, align 4
  %100 = load i32, i32* %10, align 4
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %123

102:                                              ; preds = %97
  %103 = load i32, i32* %7, align 4
  %104 = and i32 %103, 240
  %105 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %105, i32 0, i32 3
  %107 = load %struct.TYPE_14__*, %struct.TYPE_14__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %107, i64 0
  %109 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %108, i32 0, i32 0
  store i32 %104, i32* %109, align 8
  %110 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %110, i32 0, i32 3
  %112 = load %struct.TYPE_14__*, %struct.TYPE_14__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %112, i64 0
  %114 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %113, i32 0, i32 1
  store i64 0, i64* %114, align 8
  %115 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %118, i32 0, i32 3
  %120 = load %struct.TYPE_14__*, %struct.TYPE_14__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %120, i64 0
  %122 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %121, i32 0, i32 2
  store i32 %117, i32* %122, align 8
  br label %123

123:                                              ; preds = %102, %97
  %124 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %124, i32 0, i32 3
  %126 = load %struct.TYPE_14__*, %struct.TYPE_14__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %126, i64 0
  %128 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = icmp eq i32 %129, 129
  br i1 %130, label %131, label %132

131:                                              ; preds = %123
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %8, align 8
  br label %133

132:                                              ; preds = %123
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8** %8, align 8
  br label %133

133:                                              ; preds = %132, %131
  br label %155

134:                                              ; preds = %94
  %135 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %136 = call i32 @ff_hap_parse_section_header(%struct.TYPE_15__* %135, i32* %6, i32* %7)
  store i32 %136, i32* %10, align 4
  %137 = load i32, i32* %10, align 4
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %145

139:                                              ; preds = %134
  %140 = load i32, i32* %7, align 4
  %141 = load i32, i32* @HAP_ST_DECODE_INSTRUCTIONS, align 4
  %142 = icmp ne i32 %140, %141
  br i1 %142, label %143, label %145

143:                                              ; preds = %139
  %144 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %144, i32* %10, align 4
  br label %145

145:                                              ; preds = %143, %139, %134
  %146 = load i32, i32* %10, align 4
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %152

148:                                              ; preds = %145
  %149 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %150 = load i32, i32* %6, align 4
  %151 = call i32 @hap_parse_decode_instructions(%struct.TYPE_13__* %149, i32 %150)
  store i32 %151, i32* %10, align 4
  br label %152

152:                                              ; preds = %148, %145
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8** %8, align 8
  br label %155

153:                                              ; preds = %94
  %154 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %154, i32* %10, align 4
  br label %155

155:                                              ; preds = %153, %152, %133
  %156 = load i32, i32* %10, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %160

158:                                              ; preds = %155
  %159 = load i32, i32* %10, align 4
  store i32 %159, i32* %2, align 4
  br label %254

160:                                              ; preds = %155
  %161 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %162 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %161, i32 0, i32 1
  store i64 0, i64* %162, align 8
  store i32 0, i32* %9, align 4
  br label %163

163:                                              ; preds = %245, %160
  %164 = load i32, i32* %9, align 4
  %165 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %166 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 8
  %168 = icmp slt i32 %164, %167
  br i1 %168, label %169, label %248

169:                                              ; preds = %163
  %170 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %171 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %170, i32 0, i32 3
  %172 = load %struct.TYPE_14__*, %struct.TYPE_14__** %171, align 8
  %173 = load i32, i32* %9, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %172, i64 %174
  store %struct.TYPE_14__* %175, %struct.TYPE_14__** %11, align 8
  %176 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %177 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %176, i32 0, i32 1
  %178 = load i64, i64* %177, align 8
  %179 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %180 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %179, i32 0, i32 2
  %181 = load i32, i32* %180, align 8
  %182 = sext i32 %181 to i64
  %183 = add nsw i64 %178, %182
  %184 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %185 = call i64 @bytestream2_get_bytes_left(%struct.TYPE_15__* %184)
  %186 = icmp sgt i64 %183, %185
  br i1 %186, label %187, label %189

187:                                              ; preds = %169
  %188 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %188, i32* %2, align 4
  br label %254

189:                                              ; preds = %169
  %190 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %191 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %190, i32 0, i32 1
  %192 = load i64, i64* %191, align 8
  %193 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %194 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %193, i32 0, i32 3
  store i64 %192, i64* %194, align 8
  %195 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %196 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = icmp eq i32 %197, 128
  br i1 %198, label %199, label %222

199:                                              ; preds = %189
  %200 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %201 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %200, i32 0, i32 0
  %202 = load i64, i64* %201, align 8
  %203 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %204 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %203, i32 0, i32 1
  %205 = load i64, i64* %204, align 8
  %206 = add nsw i64 %202, %205
  %207 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %208 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %207, i32 0, i32 2
  %209 = load i32, i32* %208, align 8
  %210 = sext i32 %209 to i64
  %211 = call i32 @bytestream2_init(%struct.TYPE_15__* %12, i64 %206, i64 %210)
  %212 = call i64 @ff_snappy_peek_uncompressed_length(%struct.TYPE_15__* %12)
  store i64 %212, i64* %13, align 8
  %213 = load i64, i64* %13, align 8
  %214 = icmp slt i64 %213, 0
  br i1 %214, label %215, label %218

215:                                              ; preds = %199
  %216 = load i64, i64* %13, align 8
  %217 = trunc i64 %216 to i32
  store i32 %217, i32* %2, align 4
  br label %254

218:                                              ; preds = %199
  %219 = load i64, i64* %13, align 8
  %220 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %221 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %220, i32 0, i32 4
  store i64 %219, i64* %221, align 8
  br label %237

222:                                              ; preds = %189
  %223 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %224 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  %226 = icmp eq i32 %225, 129
  br i1 %226, label %227, label %234

227:                                              ; preds = %222
  %228 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %229 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %228, i32 0, i32 2
  %230 = load i32, i32* %229, align 8
  %231 = sext i32 %230 to i64
  %232 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %233 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %232, i32 0, i32 4
  store i64 %231, i64* %233, align 8
  br label %236

234:                                              ; preds = %222
  %235 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %235, i32* %2, align 4
  br label %254

236:                                              ; preds = %227
  br label %237

237:                                              ; preds = %236, %218
  %238 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %239 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %238, i32 0, i32 4
  %240 = load i64, i64* %239, align 8
  %241 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %242 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %241, i32 0, i32 1
  %243 = load i64, i64* %242, align 8
  %244 = add nsw i64 %243, %240
  store i64 %244, i64* %242, align 8
  br label %245

245:                                              ; preds = %237
  %246 = load i32, i32* %9, align 4
  %247 = add nsw i32 %246, 1
  store i32 %247, i32* %9, align 4
  br label %163

248:                                              ; preds = %163
  %249 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %250 = load i32, i32* @AV_LOG_DEBUG, align 4
  %251 = load i8*, i8** %8, align 8
  %252 = call i32 (%struct.TYPE_16__*, i32, i8*, ...) @av_log(%struct.TYPE_16__* %249, i32 %250, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i8* %251)
  %253 = load i32, i32* %10, align 4
  store i32 %253, i32* %2, align 4
  br label %254

254:                                              ; preds = %248, %234, %215, %187, %158, %87, %25
  %255 = load i32, i32* %2, align 4
  ret i32 %255
}

declare dso_local i32 @ff_hap_parse_section_header(%struct.TYPE_15__*, i32*, i32*) #1

declare dso_local i64 @MKTAG(i8 signext, i8 signext, i8 signext, i8 signext) #1

declare dso_local i32 @av_log(%struct.TYPE_16__*, i32, i8*, ...) #1

declare dso_local i32 @ff_hap_set_chunk_count(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @hap_parse_decode_instructions(%struct.TYPE_13__*, i32) #1

declare dso_local i64 @bytestream2_get_bytes_left(%struct.TYPE_15__*) #1

declare dso_local i32 @bytestream2_init(%struct.TYPE_15__*, i64, i64) #1

declare dso_local i64 @ff_snappy_peek_uncompressed_length(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
