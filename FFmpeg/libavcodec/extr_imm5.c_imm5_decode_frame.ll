; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_imm5.c_imm5_decode_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_imm5.c_imm5_decode_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_15__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.TYPE_15__*, %struct.TYPE_15__* }
%struct.TYPE_14__ = type { i32, i32* }

@IMM5_units = common dso_local global %struct.TYPE_12__* null, align 8
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Error submitting a packet for decoding\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, i8*, i32*, %struct.TYPE_14__*)* @imm5_decode_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imm5_decode_frame(%struct.TYPE_15__* %0, i8* %1, i32* %2, %struct.TYPE_14__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_15__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_14__* %3, %struct.TYPE_14__** %9, align 8
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 11
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  store %struct.TYPE_13__* %21, %struct.TYPE_13__** %10, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = bitcast i8* %22 to i32*
  store i32* %23, i32** %11, align 8
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %25, align 8
  store %struct.TYPE_15__* %26, %struct.TYPE_15__** %12, align 8
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp sgt i32 %29, 24
  br i1 %30, label %31, label %195

31:                                               ; preds = %4
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 8
  %36 = load i32, i32* %35, align 4
  %37 = icmp sle i32 %36, 1
  br i1 %37, label %38, label %195

38:                                               ; preds = %31
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 4
  %43 = call i64 @AV_RL32(i32* %42)
  %44 = add i64 %43, 24
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = sext i32 %47 to i64
  %49 = icmp ule i64 %44, %48
  br i1 %49, label %50, label %195

50:                                               ; preds = %38
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 1
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %14, align 4
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 10
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %15, align 4
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 4
  %65 = call i64 @AV_RL32(i32* %64)
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %16, align 4
  %67 = load i32, i32* %14, align 4
  %68 = icmp eq i32 %67, 10
  br i1 %68, label %69, label %73

69:                                               ; preds = %50
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** %71, align 8
  store %struct.TYPE_15__* %72, %struct.TYPE_15__** %12, align 8
  br label %83

73:                                               ; preds = %50
  %74 = load i32, i32* %15, align 4
  %75 = icmp eq i32 %74, 17
  br i1 %75, label %76, label %77

76:                                               ; preds = %73
  store i32 4, i32* %15, align 4
  br label %82

77:                                               ; preds = %73
  %78 = load i32, i32* %15, align 4
  %79 = icmp eq i32 %78, 18
  br i1 %79, label %80, label %81

80:                                               ; preds = %77
  store i32 5, i32* %15, align 4
  br label %81

81:                                               ; preds = %80, %77
  br label %82

82:                                               ; preds = %81, %76
  br label %83

83:                                               ; preds = %82, %69
  %84 = load i32, i32* %15, align 4
  %85 = icmp sge i32 %84, 1
  br i1 %85, label %86, label %185

86:                                               ; preds = %83
  %87 = load i32, i32* %15, align 4
  %88 = icmp sle i32 %87, 12
  br i1 %88, label %89, label %185

89:                                               ; preds = %86
  %90 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %91 = call i32 @av_packet_make_writable(%struct.TYPE_14__* %90)
  store i32 %91, i32* %13, align 4
  %92 = load i32, i32* %13, align 4
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %89
  %95 = load i32, i32* %13, align 4
  store i32 %95, i32* %5, align 4
  br label %274

96:                                               ; preds = %89
  %97 = load i32, i32* %15, align 4
  %98 = sub nsw i32 %97, 1
  store i32 %98, i32* %15, align 4
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** @IMM5_units, align 8
  %100 = load i32, i32* %15, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  store i32 %104, i32* %17, align 4
  store i32 %104, i32* %18, align 4
  %105 = load i32, i32* %14, align 4
  %106 = icmp eq i32 %105, 2
  br i1 %106, label %107, label %114

107:                                              ; preds = %96
  %108 = load %struct.TYPE_12__*, %struct.TYPE_12__** @IMM5_units, align 8
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i64 12
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* %17, align 4
  %113 = add nsw i32 %112, %111
  store i32 %113, i32* %17, align 4
  br label %121

114:                                              ; preds = %96
  %115 = load %struct.TYPE_12__*, %struct.TYPE_12__** @IMM5_units, align 8
  %116 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %115, i64 13
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* %17, align 4
  %120 = add nsw i32 %119, %118
  store i32 %120, i32* %17, align 4
  br label %121

121:                                              ; preds = %114, %107
  %122 = load i32, i32* %17, align 4
  %123 = sub nsw i32 24, %122
  %124 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %125 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %124, i32 0, i32 1
  %126 = load i32*, i32** %125, align 8
  %127 = sext i32 %123 to i64
  %128 = getelementptr inbounds i32, i32* %126, i64 %127
  store i32* %128, i32** %125, align 8
  %129 = load i32, i32* %16, align 4
  %130 = load i32, i32* %17, align 4
  %131 = add nsw i32 %129, %130
  %132 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %133 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %132, i32 0, i32 0
  store i32 %131, i32* %133, align 8
  %134 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %135 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %134, i32 0, i32 1
  %136 = load i32*, i32** %135, align 8
  %137 = load %struct.TYPE_12__*, %struct.TYPE_12__** @IMM5_units, align 8
  %138 = load i32, i32* %15, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %137, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.TYPE_12__*, %struct.TYPE_12__** @IMM5_units, align 8
  %144 = load i32, i32* %15, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %143, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @memcpy(i32* %136, i32 %142, i32 %148)
  %150 = load i32, i32* %14, align 4
  %151 = icmp eq i32 %150, 2
  br i1 %151, label %152, label %168

152:                                              ; preds = %121
  %153 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %154 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %153, i32 0, i32 1
  %155 = load i32*, i32** %154, align 8
  %156 = load i32, i32* %18, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i32, i32* %155, i64 %157
  %159 = load %struct.TYPE_12__*, %struct.TYPE_12__** @IMM5_units, align 8
  %160 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %159, i64 12
  %161 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.TYPE_12__*, %struct.TYPE_12__** @IMM5_units, align 8
  %164 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %163, i64 12
  %165 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = call i32 @memcpy(i32* %158, i32 %162, i32 %166)
  br label %184

168:                                              ; preds = %121
  %169 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %170 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %169, i32 0, i32 1
  %171 = load i32*, i32** %170, align 8
  %172 = load i32, i32* %18, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i32, i32* %171, i64 %173
  %175 = load %struct.TYPE_12__*, %struct.TYPE_12__** @IMM5_units, align 8
  %176 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %175, i64 13
  %177 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = load %struct.TYPE_12__*, %struct.TYPE_12__** @IMM5_units, align 8
  %180 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %179, i64 13
  %181 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = call i32 @memcpy(i32* %174, i32 %178, i32 %182)
  br label %184

184:                                              ; preds = %168, %152
  br label %194

185:                                              ; preds = %86, %83
  %186 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %187 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %186, i32 0, i32 1
  %188 = load i32*, i32** %187, align 8
  %189 = getelementptr inbounds i32, i32* %188, i64 24
  store i32* %189, i32** %187, align 8
  %190 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %191 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = sub nsw i32 %192, 24
  store i32 %193, i32* %191, align 8
  br label %194

194:                                              ; preds = %185, %184
  br label %195

195:                                              ; preds = %194, %38, %31, %4
  %196 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %197 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %198 = call i32 @avcodec_send_packet(%struct.TYPE_15__* %196, %struct.TYPE_14__* %197)
  store i32 %198, i32* %13, align 4
  %199 = load i32, i32* %13, align 4
  %200 = icmp slt i32 %199, 0
  br i1 %200, label %201, label %206

201:                                              ; preds = %195
  %202 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %203 = load i32, i32* @AV_LOG_ERROR, align 4
  %204 = call i32 @av_log(%struct.TYPE_15__* %202, i32 %203, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %205 = load i32, i32* %13, align 4
  store i32 %205, i32* %5, align 4
  br label %274

206:                                              ; preds = %195
  %207 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %208 = load i32*, i32** %11, align 8
  %209 = call i32 @avcodec_receive_frame(%struct.TYPE_15__* %207, i32* %208)
  store i32 %209, i32* %13, align 4
  %210 = load i32, i32* %13, align 4
  %211 = icmp slt i32 %210, 0
  br i1 %211, label %212, label %214

212:                                              ; preds = %206
  %213 = load i32, i32* %13, align 4
  store i32 %213, i32* %5, align 4
  br label %274

214:                                              ; preds = %206
  %215 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %216 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %215, i32 0, i32 10
  %217 = load i32, i32* %216, align 8
  %218 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %219 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %218, i32 0, i32 10
  store i32 %217, i32* %219, align 8
  %220 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %221 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %220, i32 0, i32 9
  %222 = load i32, i32* %221, align 4
  %223 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %224 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %223, i32 0, i32 9
  store i32 %222, i32* %224, align 4
  %225 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %226 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %225, i32 0, i32 8
  %227 = load i32, i32* %226, align 8
  %228 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %229 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %228, i32 0, i32 8
  store i32 %227, i32* %229, align 8
  %230 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %231 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %230, i32 0, i32 7
  %232 = load i32, i32* %231, align 4
  %233 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %234 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %233, i32 0, i32 7
  store i32 %232, i32* %234, align 4
  %235 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %236 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %235, i32 0, i32 6
  %237 = load i32, i32* %236, align 8
  %238 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %239 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %238, i32 0, i32 6
  store i32 %237, i32* %239, align 8
  %240 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %241 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %240, i32 0, i32 5
  %242 = load i32, i32* %241, align 4
  %243 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %244 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %243, i32 0, i32 5
  store i32 %242, i32* %244, align 4
  %245 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %246 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %245, i32 0, i32 4
  %247 = load i32, i32* %246, align 8
  %248 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %249 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %248, i32 0, i32 4
  store i32 %247, i32* %249, align 8
  %250 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %251 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %250, i32 0, i32 3
  %252 = load i32, i32* %251, align 4
  %253 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %254 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %253, i32 0, i32 3
  store i32 %252, i32* %254, align 4
  %255 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %256 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %255, i32 0, i32 2
  %257 = load i32, i32* %256, align 8
  %258 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %259 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %258, i32 0, i32 2
  store i32 %257, i32* %259, align 8
  %260 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %261 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %260, i32 0, i32 1
  %262 = load i32, i32* %261, align 4
  %263 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %264 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %263, i32 0, i32 1
  store i32 %262, i32* %264, align 4
  %265 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %266 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %265, i32 0, i32 0
  %267 = load i32, i32* %266, align 8
  %268 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %269 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %268, i32 0, i32 0
  store i32 %267, i32* %269, align 8
  %270 = load i32*, i32** %8, align 8
  store i32 1, i32* %270, align 4
  %271 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %272 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %271, i32 0, i32 0
  %273 = load i32, i32* %272, align 8
  store i32 %273, i32* %5, align 4
  br label %274

274:                                              ; preds = %214, %212, %201, %94
  %275 = load i32, i32* %5, align 4
  ret i32 %275
}

declare dso_local i64 @AV_RL32(i32*) #1

declare dso_local i32 @av_packet_make_writable(%struct.TYPE_14__*) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @avcodec_send_packet(%struct.TYPE_15__*, %struct.TYPE_14__*) #1

declare dso_local i32 @av_log(%struct.TYPE_15__*, i32, i8*) #1

declare dso_local i32 @avcodec_receive_frame(%struct.TYPE_15__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
