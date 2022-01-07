; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/qsynth/extr_qsynth_reader.c_qsynth_get_duration.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/qsynth/extr_qsynth_reader.c_qsynth_get_duration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { %struct.TYPE_15__*, i64, i64, %struct.TYPE_18__*, %struct.TYPE_18__* }
%struct.TYPE_15__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32*, i32 }
%struct.TYPE_18__ = type { i32*, %struct.TYPE_18__*, i64 }

@HEADER_LENGTH = common dso_local global i64 0, align 8
@VC_CONTAINER_ERROR_OUT_OF_MEMORY = common dso_local global i32 0, align 4
@VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED = common dso_local global i32 0, align 4
@VC_CONTAINER_SUCCESS = common dso_local global i32 0, align 4
@MAX_TRACKS = common dso_local global i64 0, align 8
@VC_CONTAINER_ERROR_FORMAT_INVALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*)* @qsynth_get_duration to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qsynth_get_duration(%struct.TYPE_16__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_18__**, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca [8 x i32], align 16
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %3, align 8
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_17__*, %struct.TYPE_17__** %25, align 8
  store %struct.TYPE_17__* %26, %struct.TYPE_17__** %4, align 8
  %27 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %27, i32 0, i32 3
  store %struct.TYPE_18__** %28, %struct.TYPE_18__*** %6, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  store i64 500000, i64* %11, align 8
  store i64 0, i64* %12, align 8
  store i64 0, i64* %13, align 8
  store i64 0, i64* %14, align 8
  store i32 1, i32* %15, align 4
  store i32 1, i32* %16, align 4
  %29 = load i64, i64* @HEADER_LENGTH, align 8
  %30 = add i64 24, %29
  %31 = trunc i64 %30 to i32
  %32 = call %struct.TYPE_18__* @malloc(i32 %31)
  %33 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %6, align 8
  store %struct.TYPE_18__* %32, %struct.TYPE_18__** %33, align 8
  %34 = icmp eq %struct.TYPE_18__* %32, null
  br i1 %34, label %35, label %37

35:                                               ; preds = %1
  %36 = load i32, i32* @VC_CONTAINER_ERROR_OUT_OF_MEMORY, align 4
  store i32 %36, i32* %2, align 4
  br label %248

37:                                               ; preds = %1
  %38 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %6, align 8
  %39 = load %struct.TYPE_18__*, %struct.TYPE_18__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %39, i32 0, i32 1
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %40, align 8
  %41 = load i64, i64* @HEADER_LENGTH, align 8
  %42 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %6, align 8
  %43 = load %struct.TYPE_18__*, %struct.TYPE_18__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %43, i32 0, i32 2
  store i64 %41, i64* %44, align 8
  %45 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %6, align 8
  %46 = load %struct.TYPE_18__*, %struct.TYPE_18__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %46, i64 1
  %48 = bitcast %struct.TYPE_18__* %47 to i32*
  %49 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %6, align 8
  %50 = load %struct.TYPE_18__*, %struct.TYPE_18__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %50, i32 0, i32 0
  store i32* %48, i32** %51, align 8
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %53 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %6, align 8
  %54 = load %struct.TYPE_18__*, %struct.TYPE_18__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = load i64, i64* @HEADER_LENGTH, align 8
  %58 = call i64 @PEEK_BYTES(%struct.TYPE_16__* %52, i32* %56, i64 %57)
  %59 = load i64, i64* @HEADER_LENGTH, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %37
  %62 = load i32, i32* @VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED, align 4
  store i32 %62, i32* %2, align 4
  br label %248

63:                                               ; preds = %37
  %64 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %6, align 8
  %65 = load %struct.TYPE_18__*, %struct.TYPE_18__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = call i32 @qsynth_read_header(i32* %67, i64* %8, i64* %9, i32* %15, i32* %16)
  store i32 %68, i32* %5, align 4
  %69 = load i32, i32* @VC_CONTAINER_SUCCESS, align 4
  %70 = icmp ne i32 %68, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %63
  %72 = load i32, i32* %5, align 4
  store i32 %72, i32* %2, align 4
  br label %248

73:                                               ; preds = %63
  %74 = load i64, i64* %8, align 8
  %75 = load i64, i64* @MAX_TRACKS, align 8
  %76 = icmp sgt i64 %74, %75
  br i1 %76, label %77, label %79

77:                                               ; preds = %73
  %78 = load i32, i32* @VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED, align 4
  store i32 %78, i32* %2, align 4
  br label %248

79:                                               ; preds = %73
  %80 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %81 = load i64, i64* @HEADER_LENGTH, align 8
  %82 = call i32 @SKIP_BYTES(%struct.TYPE_16__* %80, i64 %81)
  %83 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %6, align 8
  %84 = load %struct.TYPE_18__*, %struct.TYPE_18__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %84, i32 0, i32 1
  store %struct.TYPE_18__** %85, %struct.TYPE_18__*** %6, align 8
  %86 = load i64, i64* @HEADER_LENGTH, align 8
  %87 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %87, i32 0, i32 1
  store i64 %86, i64* %88, align 8
  %89 = load i64, i64* %9, align 8
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %91, label %97

91:                                               ; preds = %79
  %92 = load i32, i32* %15, align 4
  %93 = load i32, i32* %16, align 4
  %94 = mul nsw i32 %92, %93
  %95 = sdiv i32 1000000, %94
  %96 = sext i32 %95 to i64
  store i64 %96, i64* %11, align 8
  store i64 1, i64* %9, align 8
  br label %97

97:                                               ; preds = %91, %79
  store i64 0, i64* %7, align 8
  br label %98

98:                                               ; preds = %205, %97
  %99 = load i64, i64* %7, align 8
  %100 = load i64, i64* %8, align 8
  %101 = icmp slt i64 %99, %100
  br i1 %101, label %102, label %208

102:                                              ; preds = %98
  %103 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %104 = getelementptr inbounds [8 x i32], [8 x i32]* %21, i64 0, i64 0
  %105 = call i64 @READ_BYTES(%struct.TYPE_16__* %103, i32* %104, i64 32)
  %106 = icmp ne i64 %105, 32
  br i1 %106, label %123, label %107

107:                                              ; preds = %102
  %108 = getelementptr inbounds [8 x i32], [8 x i32]* %21, i64 0, i64 0
  %109 = load i32, i32* %108, align 16
  %110 = icmp ne i32 %109, 77
  br i1 %110, label %123, label %111

111:                                              ; preds = %107
  %112 = getelementptr inbounds [8 x i32], [8 x i32]* %21, i64 0, i64 1
  %113 = load i32, i32* %112, align 4
  %114 = icmp ne i32 %113, 84
  br i1 %114, label %123, label %115

115:                                              ; preds = %111
  %116 = getelementptr inbounds [8 x i32], [8 x i32]* %21, i64 0, i64 2
  %117 = load i32, i32* %116, align 8
  %118 = icmp ne i32 %117, 114
  br i1 %118, label %123, label %119

119:                                              ; preds = %115
  %120 = getelementptr inbounds [8 x i32], [8 x i32]* %21, i64 0, i64 3
  %121 = load i32, i32* %120, align 4
  %122 = icmp ne i32 %121, 107
  br i1 %122, label %123, label %125

123:                                              ; preds = %119, %115, %111, %107, %102
  %124 = load i32, i32* @VC_CONTAINER_ERROR_FORMAT_INVALID, align 4
  store i32 %124, i32* %2, align 4
  br label %248

125:                                              ; preds = %119
  %126 = getelementptr inbounds [8 x i32], [8 x i32]* %21, i64 0, i64 0
  %127 = getelementptr inbounds i32, i32* %126, i64 4
  %128 = call i64 @BI32(i32* %127)
  store i64 %128, i64* %17, align 8
  %129 = load i64, i64* %17, align 8
  %130 = icmp sgt i64 %129, 1048576
  br i1 %130, label %138, label %131

131:                                              ; preds = %125
  %132 = load i64, i64* %17, align 8
  %133 = add i64 32, %132
  %134 = trunc i64 %133 to i32
  %135 = call %struct.TYPE_18__* @malloc(i32 %134)
  %136 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %6, align 8
  store %struct.TYPE_18__* %135, %struct.TYPE_18__** %136, align 8
  %137 = icmp eq %struct.TYPE_18__* %135, null
  br i1 %137, label %138, label %140

138:                                              ; preds = %131, %125
  %139 = load i32, i32* @VC_CONTAINER_ERROR_OUT_OF_MEMORY, align 4
  store i32 %139, i32* %2, align 4
  br label %248

140:                                              ; preds = %131
  %141 = load i64, i64* %17, align 8
  %142 = add nsw i64 %141, 8
  %143 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %144 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %143, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = add nsw i64 %145, %142
  store i64 %146, i64* %144, align 8
  %147 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %6, align 8
  %148 = load %struct.TYPE_18__*, %struct.TYPE_18__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %148, i32 0, i32 1
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %149, align 8
  %150 = load i64, i64* %17, align 8
  %151 = add nsw i64 %150, 8
  %152 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %6, align 8
  %153 = load %struct.TYPE_18__*, %struct.TYPE_18__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %153, i32 0, i32 2
  store i64 %151, i64* %154, align 8
  %155 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %6, align 8
  %156 = load %struct.TYPE_18__*, %struct.TYPE_18__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %156, i64 1
  %158 = bitcast %struct.TYPE_18__* %157 to i32*
  %159 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %6, align 8
  %160 = load %struct.TYPE_18__*, %struct.TYPE_18__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %160, i32 0, i32 0
  store i32* %158, i32** %161, align 8
  %162 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %6, align 8
  %163 = load %struct.TYPE_18__*, %struct.TYPE_18__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %163, i32 0, i32 0
  %165 = load i32*, i32** %164, align 8
  %166 = getelementptr inbounds [8 x i32], [8 x i32]* %21, i64 0, i64 0
  %167 = call i32 @memcpy(i32* %165, i32* %166, i32 8)
  %168 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %169 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %6, align 8
  %170 = load %struct.TYPE_18__*, %struct.TYPE_18__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %170, i32 0, i32 0
  %172 = load i32*, i32** %171, align 8
  %173 = getelementptr inbounds i32, i32* %172, i64 8
  %174 = load i64, i64* %17, align 8
  %175 = call i64 @READ_BYTES(%struct.TYPE_16__* %168, i32* %173, i64 %174)
  %176 = load i64, i64* %17, align 8
  %177 = icmp ne i64 %175, %176
  br i1 %177, label %178, label %180

178:                                              ; preds = %140
  %179 = load i32, i32* @VC_CONTAINER_ERROR_FORMAT_INVALID, align 4
  store i32 %179, i32* %2, align 4
  br label %248

180:                                              ; preds = %140
  %181 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %6, align 8
  %182 = load %struct.TYPE_18__*, %struct.TYPE_18__** %181, align 8
  %183 = call i32 @qsynth_read_track(%struct.TYPE_18__* %182, i64* %18, i64* %20, i64* %11, i64* %19)
  store i32 %183, i32* %5, align 4
  %184 = load i32, i32* @VC_CONTAINER_SUCCESS, align 4
  %185 = icmp ne i32 %183, %184
  br i1 %185, label %186, label %188

186:                                              ; preds = %180
  %187 = load i32, i32* %5, align 4
  store i32 %187, i32* %2, align 4
  br label %248

188:                                              ; preds = %180
  %189 = load i64, i64* %12, align 8
  %190 = icmp eq i64 %189, 0
  br i1 %190, label %191, label %195

191:                                              ; preds = %188
  %192 = load i64, i64* %11, align 8
  store i64 %192, i64* %12, align 8
  %193 = load i64, i64* %19, align 8
  store i64 %193, i64* %13, align 8
  %194 = load i64, i64* %20, align 8
  store i64 %194, i64* %14, align 8
  br label %195

195:                                              ; preds = %191, %188
  %196 = load i64, i64* %18, align 8
  %197 = load i64, i64* %10, align 8
  %198 = icmp sgt i64 %196, %197
  br i1 %198, label %199, label %201

199:                                              ; preds = %195
  %200 = load i64, i64* %18, align 8
  store i64 %200, i64* %10, align 8
  br label %201

201:                                              ; preds = %199, %195
  %202 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %6, align 8
  %203 = load %struct.TYPE_18__*, %struct.TYPE_18__** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %203, i32 0, i32 1
  store %struct.TYPE_18__** %204, %struct.TYPE_18__*** %6, align 8
  br label %205

205:                                              ; preds = %201
  %206 = load i64, i64* %7, align 8
  %207 = add nsw i64 %206, 1
  store i64 %207, i64* %7, align 8
  br label %98

208:                                              ; preds = %98
  %209 = load i64, i64* %12, align 8
  %210 = icmp eq i64 %209, 0
  br i1 %210, label %211, label %213

211:                                              ; preds = %208
  %212 = load i32, i32* @VC_CONTAINER_ERROR_FORMAT_INVALID, align 4
  store i32 %212, i32* %2, align 4
  br label %248

213:                                              ; preds = %208
  %214 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %215 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %214, i32 0, i32 3
  %216 = load %struct.TYPE_18__*, %struct.TYPE_18__** %215, align 8
  %217 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %218 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %217, i32 0, i32 4
  store %struct.TYPE_18__* %216, %struct.TYPE_18__** %218, align 8
  %219 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %220 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %219, i32 0, i32 2
  store i64 0, i64* %220, align 8
  %221 = load i64, i64* %14, align 8
  %222 = load i64, i64* %10, align 8
  %223 = load i64, i64* %13, align 8
  %224 = sub nsw i64 %222, %223
  %225 = load i64, i64* %12, align 8
  %226 = mul nsw i64 %224, %225
  %227 = add nsw i64 %221, %226
  %228 = load i64, i64* %9, align 8
  %229 = sdiv i64 %227, %228
  %230 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %231 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %230, i32 0, i32 0
  store i64 %229, i64* %231, align 8
  %232 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %233 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %232, i32 0, i32 1
  %234 = bitcast i64* %233 to i32*
  %235 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %236 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %235, i32 0, i32 0
  %237 = load %struct.TYPE_15__*, %struct.TYPE_15__** %236, align 8
  %238 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %237, i32 0, i32 0
  %239 = load %struct.TYPE_14__*, %struct.TYPE_14__** %238, align 8
  %240 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %239, i32 0, i32 0
  store i32* %234, i32** %240, align 8
  %241 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %242 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %241, i32 0, i32 0
  %243 = load %struct.TYPE_15__*, %struct.TYPE_15__** %242, align 8
  %244 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %243, i32 0, i32 0
  %245 = load %struct.TYPE_14__*, %struct.TYPE_14__** %244, align 8
  %246 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %245, i32 0, i32 1
  store i32 4, i32* %246, align 8
  %247 = load i32, i32* @VC_CONTAINER_SUCCESS, align 4
  store i32 %247, i32* %2, align 4
  br label %248

248:                                              ; preds = %213, %211, %186, %178, %138, %123, %77, %71, %61, %35
  %249 = load i32, i32* %2, align 4
  ret i32 %249
}

declare dso_local %struct.TYPE_18__* @malloc(i32) #1

declare dso_local i64 @PEEK_BYTES(%struct.TYPE_16__*, i32*, i64) #1

declare dso_local i32 @qsynth_read_header(i32*, i64*, i64*, i32*, i32*) #1

declare dso_local i32 @SKIP_BYTES(%struct.TYPE_16__*, i64) #1

declare dso_local i64 @READ_BYTES(%struct.TYPE_16__*, i32*, i64) #1

declare dso_local i64 @BI32(i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @qsynth_read_track(%struct.TYPE_18__*, i64*, i64*, i64*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
