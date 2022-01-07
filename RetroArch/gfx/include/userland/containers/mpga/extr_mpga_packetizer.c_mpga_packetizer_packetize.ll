; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/mpga/extr_mpga_packetizer.c_mpga_packetizer_packetize.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/mpga/extr_mpga_packetizer.c_mpga_packetizer_packetize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i32, i64, i64, i32, i64, i32, i32, i32 }
%struct.TYPE_10__ = type { i64, i32, i32, i32, i32, i32 }

@MPGA_HEADER_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"lost sync\00", align 1
@VC_CONTAINER_SUCCESS = common dso_local global i32 0, align 4
@VC_CONTAINER_ERROR_INCOMPLETE_DATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"invalid header\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"free format not supported\00", align 1
@VC_PACKETIZER_FLAG_FLUSH = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"invalid next header\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"recovered sync after %i bytes\00", align 1
@VC_CONTAINER_TIME_UNKNOWN = common dso_local global i32 0, align 4
@VC_CONTAINER_PACKET_FLAG_FRAME_END = common dso_local global i32 0, align 4
@VC_CONTAINER_PACKET_FLAG_FRAME_START = common dso_local global i32 0, align 4
@VC_PACKETIZER_FLAG_INFO = common dso_local global i32 0, align 4
@VC_PACKETIZER_FLAG_SKIP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, %struct.TYPE_10__*, i32)* @mpga_packetizer_packetize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpga_packetizer_packetize(%struct.TYPE_8__* %0, %struct.TYPE_10__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %6, align 8
  store i32 %2, i32* %7, align 4
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 2
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %22, align 8
  store %struct.TYPE_9__* %23, %struct.TYPE_9__** %8, align 8
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 1
  store i32* %27, i32** %9, align 8
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  store i32* %31, i32** %10, align 8
  %32 = load i32, i32* @MPGA_HEADER_SIZE, align 4
  %33 = zext i32 %32 to i64
  %34 = call i8* @llvm.stacksave()
  store i8* %34, i8** %11, align 8
  %35 = alloca i32, i64 %33, align 16
  store i64 %33, i64* %12, align 8
  br label %36

36:                                               ; preds = %356, %3
  br label %37

37:                                               ; preds = %36
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  switch i32 %40, label %355 [
    i32 129, label %41
    i32 131, label %54
    i32 132, label %87
    i32 128, label %162
    i32 130, label %209
    i32 133, label %251
  ]

41:                                               ; preds = %37
  %42 = load i32*, i32** %9, align 8
  %43 = call i32 @bytestream_skip_byte(i32* %42)
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 10
  %46 = load i32, i32* %45, align 8
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %45, align 8
  %48 = icmp ne i32 %46, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %41
  %50 = call i32 (i32, i8*, ...) @LOG_DEBUG(i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  br label %51

51:                                               ; preds = %49, %41
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  store i32 131, i32* %53, align 8
  br label %54

54:                                               ; preds = %37, %51
  br label %55

55:                                               ; preds = %72, %54
  %56 = load i32*, i32** %9, align 8
  %57 = call i32 @bytestream_peek(i32* %56, i32* %35, i32 2)
  %58 = load i32, i32* @VC_CONTAINER_SUCCESS, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %79

60:                                               ; preds = %55
  %61 = getelementptr inbounds i32, i32* %35, i64 0
  %62 = load i32, i32* %61, align 16
  %63 = icmp eq i32 %62, 255
  br i1 %63, label %64, label %72

64:                                               ; preds = %60
  %65 = getelementptr inbounds i32, i32* %35, i64 1
  %66 = load i32, i32* %65, align 4
  %67 = and i32 %66, 224
  %68 = icmp eq i32 %67, 224
  br i1 %68, label %69, label %72

69:                                               ; preds = %64
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 0
  store i32 132, i32* %71, align 8
  br label %79

72:                                               ; preds = %64, %60
  %73 = load i32*, i32** %9, align 8
  %74 = call i32 @bytestream_skip_byte(i32* %73)
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 10
  %77 = load i32, i32* %76, align 8
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %76, align 8
  br label %55

79:                                               ; preds = %69, %55
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = icmp ne i32 %82, 132
  br i1 %83, label %84, label %86

84:                                               ; preds = %79
  %85 = load i32, i32* @VC_CONTAINER_ERROR_INCOMPLETE_DATA, align 4
  store i32 %85, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %357

86:                                               ; preds = %79
  br label %87

87:                                               ; preds = %37, %86
  %88 = load i32*, i32** %9, align 8
  %89 = load i32, i32* @MPGA_HEADER_SIZE, align 4
  %90 = call i32 @bytestream_peek(i32* %88, i32* %35, i32 %89)
  %91 = load i32, i32* @VC_CONTAINER_SUCCESS, align 4
  %92 = icmp ne i32 %90, %91
  br i1 %92, label %93, label %95

93:                                               ; preds = %87
  %94 = load i32, i32* @VC_CONTAINER_ERROR_INCOMPLETE_DATA, align 4
  store i32 %94, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %357

95:                                               ; preds = %87
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 6
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 12
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 1
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 2
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 8
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 11
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 5
  %110 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 9
  %112 = call i32 @mpga_read_header(i32* %35, i64* %97, i32* %99, i32* %101, i32* %103, i32* %105, i32* %107, i32* %109, i64* %111)
  store i32 %112, i32* %13, align 4
  %113 = load i32, i32* %13, align 4
  %114 = load i32, i32* @VC_CONTAINER_SUCCESS, align 4
  %115 = icmp ne i32 %113, %114
  br i1 %115, label %116, label %120

116:                                              ; preds = %95
  %117 = call i32 @LOG_ERROR(i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %118 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 0
  store i32 129, i32* %119, align 8
  br label %356

120:                                              ; preds = %95
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %133

125:                                              ; preds = %120
  %126 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = icmp ne i32 %128, %131
  br i1 %132, label %146, label %133

133:                                              ; preds = %125, %120
  %134 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 4
  %136 = load i32, i32* %135, align 8
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %150

138:                                              ; preds = %133
  %139 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %139, i32 0, i32 4
  %141 = load i32, i32* %140, align 8
  %142 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %143 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 8
  %145 = icmp ne i32 %141, %144
  br i1 %145, label %146, label %150

146:                                              ; preds = %138, %125
  %147 = call i32 @LOG_ERROR(i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %148 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %149 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %148, i32 0, i32 0
  store i32 129, i32* %149, align 8
  br label %356

150:                                              ; preds = %138, %133
  %151 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %152 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %151, i32 0, i32 6
  %153 = load i64, i64* %152, align 8
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %159, label %155

155:                                              ; preds = %150
  %156 = call i32 @LOG_ERROR(i32 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %157 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %158 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %157, i32 0, i32 0
  store i32 129, i32* %158, align 8
  br label %356

159:                                              ; preds = %150
  %160 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %161 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %160, i32 0, i32 0
  store i32 128, i32* %161, align 8
  br label %162

162:                                              ; preds = %37, %159
  %163 = load i32*, i32** %9, align 8
  %164 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %165 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %164, i32 0, i32 6
  %166 = load i64, i64* %165, align 8
  %167 = load i32, i32* @MPGA_HEADER_SIZE, align 4
  %168 = call i32 @bytestream_peek_at(i32* %163, i64 %166, i32* %35, i32 %167)
  %169 = load i32, i32* @VC_CONTAINER_SUCCESS, align 4
  %170 = icmp ne i32 %168, %169
  br i1 %170, label %171, label %181

171:                                              ; preds = %162
  %172 = load i32, i32* %7, align 4
  %173 = load i32, i32* @VC_PACKETIZER_FLAG_FLUSH, align 4
  %174 = and i32 %172, %173
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %179

176:                                              ; preds = %171
  %177 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %178 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %177, i32 0, i32 0
  store i32 130, i32* %178, align 8
  br label %356

179:                                              ; preds = %171
  %180 = load i32, i32* @VC_CONTAINER_ERROR_INCOMPLETE_DATA, align 4
  store i32 %180, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %357

181:                                              ; preds = %162
  %182 = call i32 @mpga_read_header(i32* %35, i64* null, i32* null, i32* %14, i32* %15, i32* null, i32* null, i32* null, i64* null)
  store i32 %182, i32* %13, align 4
  %183 = load i32, i32* %13, align 4
  %184 = load i32, i32* @VC_CONTAINER_SUCCESS, align 4
  %185 = icmp ne i32 %183, %184
  br i1 %185, label %186, label %190

186:                                              ; preds = %181
  %187 = call i32 @LOG_ERROR(i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %188 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %189 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %188, i32 0, i32 0
  store i32 129, i32* %189, align 8
  br label %356

190:                                              ; preds = %181
  %191 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %192 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  %194 = load i32, i32* %14, align 4
  %195 = icmp ne i32 %193, %194
  br i1 %195, label %202, label %196

196:                                              ; preds = %190
  %197 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %198 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %197, i32 0, i32 2
  %199 = load i32, i32* %198, align 8
  %200 = load i32, i32* %15, align 4
  %201 = icmp ne i32 %199, %200
  br i1 %201, label %202, label %206

202:                                              ; preds = %196, %190
  %203 = call i32 @LOG_ERROR(i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %204 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %205 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %204, i32 0, i32 0
  store i32 129, i32* %205, align 8
  br label %356

206:                                              ; preds = %196
  %207 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %208 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %207, i32 0, i32 0
  store i32 130, i32* %208, align 8
  br label %209

209:                                              ; preds = %37, %206
  %210 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %211 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %210, i32 0, i32 10
  %212 = load i32, i32* %211, align 8
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %219

214:                                              ; preds = %209
  %215 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %216 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %215, i32 0, i32 10
  %217 = load i32, i32* %216, align 8
  %218 = call i32 (i32, i8*, ...) @LOG_DEBUG(i32 0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 %217)
  br label %219

219:                                              ; preds = %214, %209
  %220 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %221 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %220, i32 0, i32 10
  store i32 0, i32* %221, align 8
  %222 = load i32*, i32** %9, align 8
  %223 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %224 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %223, i32 0, i32 9
  %225 = load i64, i64* %224, align 8
  %226 = call i32 @bytestream_skip(i32* %222, i64 %225)
  %227 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %228 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 4
  %230 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %231 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %230, i32 0, i32 3
  store i32 %229, i32* %231, align 4
  %232 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %233 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %232, i32 0, i32 2
  %234 = load i32, i32* %233, align 8
  %235 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %236 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %235, i32 0, i32 4
  store i32 %234, i32* %236, align 8
  %237 = load i32*, i32** %10, align 8
  %238 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %239 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %238, i32 0, i32 8
  %240 = load i32, i32* %239, align 8
  %241 = call i32 @vc_container_time_set_samplerate(i32* %237, i32 %240, i32 1)
  %242 = load i32*, i32** %9, align 8
  %243 = call i32 @bytestream_get_timestamps(i32* %242, i32* %16, i32* %17, i32 1)
  %244 = load i32*, i32** %10, align 8
  %245 = load i32, i32* %16, align 4
  %246 = call i32 @vc_container_time_set(i32* %244, i32 %245)
  %247 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %248 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %247, i32 0, i32 7
  store i64 0, i64* %248, align 8
  %249 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %250 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %249, i32 0, i32 0
  store i32 133, i32* %250, align 8
  br label %251

251:                                              ; preds = %37, %219
  %252 = load i32*, i32** %9, align 8
  %253 = call i64 @bytestream_size(i32* %252)
  %254 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %255 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %254, i32 0, i32 6
  %256 = load i64, i64* %255, align 8
  %257 = icmp slt i64 %253, %256
  br i1 %257, label %258, label %260

258:                                              ; preds = %251
  %259 = load i32, i32* @VC_CONTAINER_ERROR_INCOMPLETE_DATA, align 4
  store i32 %259, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %357

260:                                              ; preds = %251
  %261 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %262 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %261, i32 0, i32 6
  %263 = load i64, i64* %262, align 8
  %264 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %265 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %264, i32 0, i32 7
  %266 = load i64, i64* %265, align 8
  %267 = sub nsw i64 %263, %266
  %268 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %269 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %268, i32 0, i32 0
  store i64 %267, i64* %269, align 8
  %270 = load i32, i32* @VC_CONTAINER_TIME_UNKNOWN, align 4
  %271 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %272 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %271, i32 0, i32 4
  store i32 %270, i32* %272, align 4
  %273 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %274 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %273, i32 0, i32 5
  store i32 %270, i32* %274, align 8
  %275 = load i32, i32* @VC_CONTAINER_PACKET_FLAG_FRAME_END, align 4
  %276 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %277 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %276, i32 0, i32 3
  store i32 %275, i32* %277, align 8
  %278 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %279 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %278, i32 0, i32 7
  %280 = load i64, i64* %279, align 8
  %281 = icmp ne i64 %280, 0
  br i1 %281, label %294, label %282

282:                                              ; preds = %260
  %283 = load i32*, i32** %10, align 8
  %284 = call i32 @vc_container_time_get(i32* %283)
  %285 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %286 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %285, i32 0, i32 4
  store i32 %284, i32* %286, align 4
  %287 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %288 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %287, i32 0, i32 5
  store i32 %284, i32* %288, align 8
  %289 = load i32, i32* @VC_CONTAINER_PACKET_FLAG_FRAME_START, align 4
  %290 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %291 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %290, i32 0, i32 3
  %292 = load i32, i32* %291, align 8
  %293 = or i32 %292, %289
  store i32 %293, i32* %291, align 8
  br label %294

294:                                              ; preds = %282, %260
  %295 = load i32, i32* %7, align 4
  %296 = load i32, i32* @VC_PACKETIZER_FLAG_INFO, align 4
  %297 = and i32 %295, %296
  %298 = icmp ne i32 %297, 0
  br i1 %298, label %299, label %301

299:                                              ; preds = %294
  %300 = load i32, i32* @VC_CONTAINER_SUCCESS, align 4
  store i32 %300, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %357

301:                                              ; preds = %294
  %302 = load i32, i32* %7, align 4
  %303 = load i32, i32* @VC_PACKETIZER_FLAG_SKIP, align 4
  %304 = and i32 %302, %303
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %306, label %312

306:                                              ; preds = %301
  %307 = load i32*, i32** %9, align 8
  %308 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %309 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %308, i32 0, i32 0
  %310 = load i64, i64* %309, align 8
  %311 = call i32 @bytestream_skip(i32* %307, i64 %310)
  br label %330

312:                                              ; preds = %301
  %313 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %314 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %313, i32 0, i32 0
  %315 = load i64, i64* %314, align 8
  %316 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %317 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %316, i32 0, i32 2
  %318 = load i32, i32* %317, align 4
  %319 = call i64 @MIN(i64 %315, i32 %318)
  %320 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %321 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %320, i32 0, i32 0
  store i64 %319, i64* %321, align 8
  %322 = load i32*, i32** %9, align 8
  %323 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %324 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %323, i32 0, i32 1
  %325 = load i32, i32* %324, align 8
  %326 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %327 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %326, i32 0, i32 0
  %328 = load i64, i64* %327, align 8
  %329 = call i32 @bytestream_get(i32* %322, i32 %325, i64 %328)
  br label %330

330:                                              ; preds = %312, %306
  %331 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %332 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %331, i32 0, i32 0
  %333 = load i64, i64* %332, align 8
  %334 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %335 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %334, i32 0, i32 7
  %336 = load i64, i64* %335, align 8
  %337 = add nsw i64 %336, %333
  store i64 %337, i64* %335, align 8
  %338 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %339 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %338, i32 0, i32 7
  %340 = load i64, i64* %339, align 8
  %341 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %342 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %341, i32 0, i32 6
  %343 = load i64, i64* %342, align 8
  %344 = icmp eq i64 %340, %343
  br i1 %344, label %345, label %353

345:                                              ; preds = %330
  %346 = load i32*, i32** %10, align 8
  %347 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %348 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %347, i32 0, i32 5
  %349 = load i32, i32* %348, align 4
  %350 = call i32 @vc_container_time_add(i32* %346, i32 %349)
  %351 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %352 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %351, i32 0, i32 0
  store i32 132, i32* %352, align 8
  br label %353

353:                                              ; preds = %345, %330
  %354 = load i32, i32* @VC_CONTAINER_SUCCESS, align 4
  store i32 %354, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %357

355:                                              ; preds = %37
  br label %356

356:                                              ; preds = %355, %202, %186, %176, %155, %146, %116
  br label %36

357:                                              ; preds = %353, %299, %258, %179, %93, %84
  %358 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %358)
  %359 = load i32, i32* %4, align 4
  ret i32 %359
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @bytestream_skip_byte(i32*) #2

declare dso_local i32 @LOG_DEBUG(i32, i8*, ...) #2

declare dso_local i32 @bytestream_peek(i32*, i32*, i32) #2

declare dso_local i32 @mpga_read_header(i32*, i64*, i32*, i32*, i32*, i32*, i32*, i32*, i64*) #2

declare dso_local i32 @LOG_ERROR(i32, i8*) #2

declare dso_local i32 @bytestream_peek_at(i32*, i64, i32*, i32) #2

declare dso_local i32 @bytestream_skip(i32*, i64) #2

declare dso_local i32 @vc_container_time_set_samplerate(i32*, i32, i32) #2

declare dso_local i32 @bytestream_get_timestamps(i32*, i32*, i32*, i32) #2

declare dso_local i32 @vc_container_time_set(i32*, i32) #2

declare dso_local i64 @bytestream_size(i32*) #2

declare dso_local i32 @vc_container_time_get(i32*) #2

declare dso_local i64 @MIN(i64, i32) #2

declare dso_local i32 @bytestream_get(i32*, i32, i64) #2

declare dso_local i32 @vc_container_time_add(i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
