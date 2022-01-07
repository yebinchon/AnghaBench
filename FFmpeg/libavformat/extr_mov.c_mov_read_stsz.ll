; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_mov.c_mov_read_stsz.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_mov.c_mov_read_stsz.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, %struct.TYPE_18__** }
%struct.TYPE_18__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32, i32, i32, i8*, i32 }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_17__ = type { i64 }

@AV_LOG_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"sample_size = %u sample_count = %u\0A\00", align 1
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Invalid sample field size %u\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@UINT_MAX = common dso_local global i32 0, align 4
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"Duplicated STSZ atom\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@AV_INPUT_BUFFER_PADDING_SIZE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [21 x i8] c"STSZ atom truncated\0A\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"reached eof, corrupted STSZ atom\0A\00", align 1
@AVERROR_EOF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, %struct.TYPE_19__*, i64)* @mov_read_stsz to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mov_read_stsz(%struct.TYPE_16__* %0, %struct.TYPE_19__* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_17__, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca %struct.TYPE_19__*, align 8
  %8 = alloca %struct.TYPE_18__*, align 8
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %5, i32 0, i32 0
  store i64 %2, i64* %18, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %6, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %7, align 8
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp slt i32 %23, 1
  br i1 %24, label %25, label %26

25:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %248

26:                                               ; preds = %3
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %30, align 8
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = sub nsw i32 %36, 1
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %31, i64 %38
  %40 = load %struct.TYPE_18__*, %struct.TYPE_18__** %39, align 8
  store %struct.TYPE_18__* %40, %struct.TYPE_18__** %8, align 8
  %41 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %42, align 8
  store %struct.TYPE_15__* %43, %struct.TYPE_15__** %9, align 8
  %44 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %45 = call i32 @avio_r8(%struct.TYPE_19__* %44)
  %46 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %47 = call i32 @avio_rb24(%struct.TYPE_19__* %46)
  %48 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %5, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = call i64 @MKTAG(i8 signext 115, i8 signext 116, i8 signext 115, i8 signext 122)
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %67

52:                                               ; preds = %26
  %53 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %54 = call i32 @avio_rb32(%struct.TYPE_19__* %53)
  store i32 %54, i32* %12, align 4
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %63, label %59

59:                                               ; preds = %52
  %60 = load i32, i32* %12, align 4
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 8
  br label %63

63:                                               ; preds = %59, %52
  %64 = load i32, i32* %12, align 4
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 4
  store i32 32, i32* %13, align 4
  br label %72

67:                                               ; preds = %26
  store i32 0, i32* %12, align 4
  %68 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %69 = call i32 @avio_rb24(%struct.TYPE_19__* %68)
  %70 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %71 = call i32 @avio_r8(%struct.TYPE_19__* %70)
  store i32 %71, i32* %13, align 4
  br label %72

72:                                               ; preds = %67, %63
  %73 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %74 = call i32 @avio_rb32(%struct.TYPE_19__* %73)
  store i32 %74, i32* %11, align 4
  %75 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %76, align 8
  %78 = load i32, i32* @AV_LOG_TRACE, align 4
  %79 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %80 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* %11, align 4
  %83 = call i32 (%struct.TYPE_14__*, i32, i8*, ...) @av_log(%struct.TYPE_14__* %77, i32 %78, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %81, i32 %82)
  %84 = load i32, i32* %11, align 4
  %85 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %86 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %85, i32 0, i32 2
  store i32 %84, i32* %86, align 8
  %87 = load i32, i32* %12, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %72
  store i32 0, i32* %4, align 4
  br label %248

90:                                               ; preds = %72
  %91 = load i32, i32* %13, align 4
  %92 = icmp ne i32 %91, 4
  br i1 %92, label %93, label %110

93:                                               ; preds = %90
  %94 = load i32, i32* %13, align 4
  %95 = icmp ne i32 %94, 8
  br i1 %95, label %96, label %110

96:                                               ; preds = %93
  %97 = load i32, i32* %13, align 4
  %98 = icmp ne i32 %97, 16
  br i1 %98, label %99, label %110

99:                                               ; preds = %96
  %100 = load i32, i32* %13, align 4
  %101 = icmp ne i32 %100, 32
  br i1 %101, label %102, label %110

102:                                              ; preds = %99
  %103 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %103, i32 0, i32 0
  %105 = load %struct.TYPE_14__*, %struct.TYPE_14__** %104, align 8
  %106 = load i32, i32* @AV_LOG_ERROR, align 4
  %107 = load i32, i32* %13, align 4
  %108 = call i32 (%struct.TYPE_14__*, i32, i8*, ...) @av_log(%struct.TYPE_14__* %105, i32 %106, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %107)
  %109 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %109, i32* %4, align 4
  br label %248

110:                                              ; preds = %99, %96, %93, %90
  %111 = load i32, i32* %11, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %114, label %113

113:                                              ; preds = %110
  store i32 0, i32* %4, align 4
  br label %248

114:                                              ; preds = %110
  %115 = load i32, i32* %11, align 4
  %116 = load i32, i32* @UINT_MAX, align 4
  %117 = sub nsw i32 %116, 4
  %118 = load i32, i32* %13, align 4
  %119 = udiv i32 %117, %118
  %120 = icmp uge i32 %115, %119
  br i1 %120, label %121, label %123

121:                                              ; preds = %114
  %122 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %122, i32* %4, align 4
  br label %248

123:                                              ; preds = %114
  %124 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %125 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %124, i32 0, i32 3
  %126 = load i8*, i8** %125, align 8
  %127 = icmp ne i8* %126, null
  br i1 %127, label %128, label %134

128:                                              ; preds = %123
  %129 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %130 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %129, i32 0, i32 0
  %131 = load %struct.TYPE_14__*, %struct.TYPE_14__** %130, align 8
  %132 = load i32, i32* @AV_LOG_WARNING, align 4
  %133 = call i32 (%struct.TYPE_14__*, i32, i8*, ...) @av_log(%struct.TYPE_14__* %131, i32 %132, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %134

134:                                              ; preds = %128, %123
  %135 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %136 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %135, i32 0, i32 3
  %137 = load i8*, i8** %136, align 8
  %138 = call i32 @av_free(i8* %137)
  %139 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %140 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %139, i32 0, i32 2
  store i32 0, i32* %140, align 8
  %141 = load i32, i32* %11, align 4
  %142 = call i8* @av_malloc_array(i32 %141, i32 1)
  %143 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %144 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %143, i32 0, i32 3
  store i8* %142, i8** %144, align 8
  %145 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %146 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %145, i32 0, i32 3
  %147 = load i8*, i8** %146, align 8
  %148 = icmp ne i8* %147, null
  br i1 %148, label %152, label %149

149:                                              ; preds = %134
  %150 = load i32, i32* @ENOMEM, align 4
  %151 = call i32 @AVERROR(i32 %150)
  store i32 %151, i32* %4, align 4
  br label %248

152:                                              ; preds = %134
  %153 = load i32, i32* %11, align 4
  %154 = load i32, i32* %13, align 4
  %155 = mul i32 %153, %154
  %156 = add i32 %155, 4
  %157 = lshr i32 %156, 3
  store i32 %157, i32* %14, align 4
  %158 = load i32, i32* %14, align 4
  %159 = zext i32 %158 to i64
  %160 = load i64, i64* @AV_INPUT_BUFFER_PADDING_SIZE, align 8
  %161 = add nsw i64 %159, %160
  %162 = call i8* @av_malloc(i64 %161)
  store i8* %162, i8** %16, align 8
  %163 = load i8*, i8** %16, align 8
  %164 = icmp ne i8* %163, null
  br i1 %164, label %171, label %165

165:                                              ; preds = %152
  %166 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %167 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %166, i32 0, i32 3
  %168 = call i32 @av_freep(i8** %167)
  %169 = load i32, i32* @ENOMEM, align 4
  %170 = call i32 @AVERROR(i32 %169)
  store i32 %170, i32* %4, align 4
  br label %248

171:                                              ; preds = %152
  %172 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %173 = load i8*, i8** %16, align 8
  %174 = load i32, i32* %14, align 4
  %175 = call i32 @ffio_read_size(%struct.TYPE_19__* %172, i8* %173, i32 %174)
  store i32 %175, i32* %17, align 4
  %176 = load i32, i32* %17, align 4
  %177 = icmp slt i32 %176, 0
  br i1 %177, label %178, label %189

178:                                              ; preds = %171
  %179 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %180 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %179, i32 0, i32 3
  %181 = call i32 @av_freep(i8** %180)
  %182 = load i8*, i8** %16, align 8
  %183 = call i32 @av_free(i8* %182)
  %184 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %185 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %184, i32 0, i32 0
  %186 = load %struct.TYPE_14__*, %struct.TYPE_14__** %185, align 8
  %187 = load i32, i32* @AV_LOG_WARNING, align 4
  %188 = call i32 (%struct.TYPE_14__*, i32, i8*, ...) @av_log(%struct.TYPE_14__* %186, i32 %187, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %248

189:                                              ; preds = %171
  %190 = load i8*, i8** %16, align 8
  %191 = load i32, i32* %14, align 4
  %192 = mul i32 8, %191
  %193 = call i32 @init_get_bits(i32* %15, i8* %190, i32 %192)
  store i32 0, i32* %10, align 4
  br label %194

194:                                              ; preds = %227, %189
  %195 = load i32, i32* %10, align 4
  %196 = load i32, i32* %11, align 4
  %197 = icmp ult i32 %195, %196
  br i1 %197, label %198, label %204

198:                                              ; preds = %194
  %199 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %200 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %199, i32 0, i32 0
  %201 = load i64, i64* %200, align 8
  %202 = icmp ne i64 %201, 0
  %203 = xor i1 %202, true
  br label %204

204:                                              ; preds = %198, %194
  %205 = phi i1 [ false, %194 ], [ %203, %198 ]
  br i1 %205, label %206, label %230

206:                                              ; preds = %204
  %207 = load i32, i32* %13, align 4
  %208 = call zeroext i8 @get_bits_long(i32* %15, i32 %207)
  %209 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %210 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %209, i32 0, i32 3
  %211 = load i8*, i8** %210, align 8
  %212 = load i32, i32* %10, align 4
  %213 = zext i32 %212 to i64
  %214 = getelementptr inbounds i8, i8* %211, i64 %213
  store i8 %208, i8* %214, align 1
  %215 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %216 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %215, i32 0, i32 3
  %217 = load i8*, i8** %216, align 8
  %218 = load i32, i32* %10, align 4
  %219 = zext i32 %218 to i64
  %220 = getelementptr inbounds i8, i8* %217, i64 %219
  %221 = load i8, i8* %220, align 1
  %222 = zext i8 %221 to i32
  %223 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %224 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %223, i32 0, i32 4
  %225 = load i32, i32* %224, align 8
  %226 = add nsw i32 %225, %222
  store i32 %226, i32* %224, align 8
  br label %227

227:                                              ; preds = %206
  %228 = load i32, i32* %10, align 4
  %229 = add i32 %228, 1
  store i32 %229, i32* %10, align 4
  br label %194

230:                                              ; preds = %204
  %231 = load i32, i32* %10, align 4
  %232 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %233 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %232, i32 0, i32 2
  store i32 %231, i32* %233, align 8
  %234 = load i8*, i8** %16, align 8
  %235 = call i32 @av_free(i8* %234)
  %236 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %237 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %236, i32 0, i32 0
  %238 = load i64, i64* %237, align 8
  %239 = icmp ne i64 %238, 0
  br i1 %239, label %240, label %247

240:                                              ; preds = %230
  %241 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %242 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %241, i32 0, i32 0
  %243 = load %struct.TYPE_14__*, %struct.TYPE_14__** %242, align 8
  %244 = load i32, i32* @AV_LOG_WARNING, align 4
  %245 = call i32 (%struct.TYPE_14__*, i32, i8*, ...) @av_log(%struct.TYPE_14__* %243, i32 %244, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  %246 = load i32, i32* @AVERROR_EOF, align 4
  store i32 %246, i32* %4, align 4
  br label %248

247:                                              ; preds = %230
  store i32 0, i32* %4, align 4
  br label %248

248:                                              ; preds = %247, %240, %178, %165, %149, %121, %113, %102, %89, %25
  %249 = load i32, i32* %4, align 4
  ret i32 %249
}

declare dso_local i32 @avio_r8(%struct.TYPE_19__*) #1

declare dso_local i32 @avio_rb24(%struct.TYPE_19__*) #1

declare dso_local i64 @MKTAG(i8 signext, i8 signext, i8 signext, i8 signext) #1

declare dso_local i32 @avio_rb32(%struct.TYPE_19__*) #1

declare dso_local i32 @av_log(%struct.TYPE_14__*, i32, i8*, ...) #1

declare dso_local i32 @av_free(i8*) #1

declare dso_local i8* @av_malloc_array(i32, i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i8* @av_malloc(i64) #1

declare dso_local i32 @av_freep(i8**) #1

declare dso_local i32 @ffio_read_size(%struct.TYPE_19__*, i8*, i32) #1

declare dso_local i32 @init_get_bits(i32*, i8*, i32) #1

declare dso_local zeroext i8 @get_bits_long(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
