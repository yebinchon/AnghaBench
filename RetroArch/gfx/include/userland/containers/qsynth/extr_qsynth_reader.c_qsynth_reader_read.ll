; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/qsynth/extr_qsynth_reader.c_qsynth_reader_read.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/qsynth/extr_qsynth_reader.c_qsynth_reader_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i32, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32, %struct.TYPE_9__* }
%struct.TYPE_11__ = type { i32, i32, i32, i32, i8*, i32, i64 }

@VC_CONTAINER_PACKET_FLAG_FRAME_START = common dso_local global i32 0, align 4
@VC_CONTAINER_ERROR_EOS = common dso_local global i32 0, align 4
@VC_CONTAINER_PACKET_FLAG_FRAME = common dso_local global i32 0, align 4
@VC_CONTAINER_READ_FLAG_SKIP = common dso_local global i32 0, align 4
@VC_CONTAINER_SUCCESS = common dso_local global i32 0, align 4
@VC_CONTAINER_READ_FLAG_INFO = common dso_local global i32 0, align 4
@VC_CONTAINER_PACKET_FLAG_FRAME_END = common dso_local global i32 0, align 4
@VC_CONTAINER_ERROR_BUFFER_TOO_SMALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, %struct.TYPE_11__*, i32)* @qsynth_reader_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qsynth_reader_read(%struct.TYPE_10__* %0, %struct.TYPE_11__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 1
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  store %struct.TYPE_12__* %15, %struct.TYPE_12__** %8, align 8
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 3
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %19 = icmp ne %struct.TYPE_9__* %18, null
  br i1 %19, label %20, label %49

20:                                               ; preds = %3
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 3
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = sub nsw i32 %25, %28
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 2
  store i32 0, i32* %33, align 8
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 1
  store i32 0, i32* %35, align 4
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 6
  store i64 0, i64* %37, align 8
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %20
  br label %45

43:                                               ; preds = %20
  %44 = load i32, i32* @VC_CONTAINER_PACKET_FLAG_FRAME_START, align 4
  br label %45

45:                                               ; preds = %43, %42
  %46 = phi i32 [ 0, %42 ], [ %44, %43 ]
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 5
  store i32 %46, i32* %48, align 8
  br label %74

49:                                               ; preds = %3
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp sgt i32 %52, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %49
  %58 = load i32, i32* @VC_CONTAINER_ERROR_EOS, align 4
  store i32 %58, i32* %4, align 4
  br label %260

59:                                               ; preds = %49
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 0
  store i32 5, i32* %61, align 8
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 2
  store i32 %64, i32* %66, align 8
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 1
  store i32 %64, i32* %68, align 4
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 6
  store i64 0, i64* %70, align 8
  %71 = load i32, i32* @VC_CONTAINER_PACKET_FLAG_FRAME, align 4
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 5
  store i32 %71, i32* %73, align 8
  br label %74

74:                                               ; preds = %59, %45
  %75 = load i32, i32* %7, align 4
  %76 = load i32, i32* @VC_CONTAINER_READ_FLAG_SKIP, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %103

79:                                               ; preds = %74
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 3
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %81, align 8
  %83 = icmp ne %struct.TYPE_9__* %82, null
  br i1 %83, label %84, label %94

84:                                               ; preds = %79
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 3
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 2
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %88, align 8
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i32 0, i32 3
  store %struct.TYPE_9__* %89, %struct.TYPE_9__** %91, align 8
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 0
  store i32 0, i32* %93, align 8
  br label %101

94:                                               ; preds = %79
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 2
  store i32 1, i32* %96, align 8
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = add nsw i32 %99, 40
  store i32 %100, i32* %98, align 4
  br label %101

101:                                              ; preds = %94, %84
  %102 = load i32, i32* @VC_CONTAINER_SUCCESS, align 4
  store i32 %102, i32* %4, align 4
  br label %260

103:                                              ; preds = %74
  %104 = load i32, i32* %7, align 4
  %105 = load i32, i32* @VC_CONTAINER_READ_FLAG_INFO, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %103
  %109 = load i32, i32* @VC_CONTAINER_SUCCESS, align 4
  store i32 %109, i32* %4, align 4
  br label %260

110:                                              ; preds = %103
  %111 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i32 0, i32 3
  %113 = load %struct.TYPE_9__*, %struct.TYPE_9__** %112, align 8
  %114 = icmp ne %struct.TYPE_9__* %113, null
  br i1 %114, label %115, label %167

115:                                              ; preds = %110
  %116 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i32 0, i32 3
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @MIN(i32 %118, i32 %121)
  store i32 %122, i32* %9, align 4
  %123 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %123, i32 0, i32 4
  %125 = load i8*, i8** %124, align 8
  %126 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %127 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %126, i32 0, i32 3
  %128 = load %struct.TYPE_9__*, %struct.TYPE_9__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %132 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = add nsw i32 %130, %133
  %135 = load i32, i32* %9, align 4
  %136 = call i32 @memcpy(i8* %125, i32 %134, i32 %135)
  %137 = load i32, i32* %9, align 4
  %138 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %139 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %138, i32 0, i32 0
  store i32 %137, i32* %139, align 8
  %140 = load i32, i32* %9, align 4
  %141 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %142 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = add nsw i32 %143, %140
  store i32 %144, i32* %142, align 8
  %145 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %146 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %145, i32 0, i32 3
  %147 = load %struct.TYPE_9__*, %struct.TYPE_9__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = icmp eq i32 %144, %149
  br i1 %150, label %151, label %166

151:                                              ; preds = %115
  %152 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %153 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %152, i32 0, i32 3
  %154 = load %struct.TYPE_9__*, %struct.TYPE_9__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %154, i32 0, i32 2
  %156 = load %struct.TYPE_9__*, %struct.TYPE_9__** %155, align 8
  %157 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %158 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %157, i32 0, i32 3
  store %struct.TYPE_9__* %156, %struct.TYPE_9__** %158, align 8
  %159 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %160 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %159, i32 0, i32 0
  store i32 0, i32* %160, align 8
  %161 = load i32, i32* @VC_CONTAINER_PACKET_FLAG_FRAME_END, align 4
  %162 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %163 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %162, i32 0, i32 5
  %164 = load i32, i32* %163, align 8
  %165 = or i32 %164, %161
  store i32 %165, i32* %163, align 8
  br label %166

166:                                              ; preds = %151, %115
  br label %258

167:                                              ; preds = %110
  %168 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %169 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %168, i32 0, i32 3
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %172 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = icmp slt i32 %170, %173
  br i1 %174, label %175, label %177

175:                                              ; preds = %167
  %176 = load i32, i32* @VC_CONTAINER_ERROR_BUFFER_TOO_SMALL, align 4
  store i32 %176, i32* %4, align 4
  br label %260

177:                                              ; preds = %167
  %178 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %179 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %178, i32 0, i32 2
  %180 = load i32, i32* %179, align 8
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %232

182:                                              ; preds = %177
  %183 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %184 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  %186 = sdiv i32 %185, 1000
  store i32 %186, i32* %10, align 4
  %187 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %188 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %187, i32 0, i32 4
  %189 = load i8*, i8** %188, align 8
  %190 = getelementptr inbounds i8, i8* %189, i64 0
  store i8 83, i8* %190, align 1
  %191 = load i32, i32* %10, align 4
  %192 = ashr i32 %191, 24
  %193 = and i32 %192, 255
  %194 = sext i32 %193 to i64
  %195 = inttoptr i64 %194 to i8*
  %196 = ptrtoint i8* %195 to i8
  %197 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %198 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %197, i32 0, i32 4
  %199 = load i8*, i8** %198, align 8
  %200 = getelementptr inbounds i8, i8* %199, i64 1
  store i8 %196, i8* %200, align 1
  %201 = load i32, i32* %10, align 4
  %202 = ashr i32 %201, 16
  %203 = and i32 %202, 255
  %204 = sext i32 %203 to i64
  %205 = inttoptr i64 %204 to i8*
  %206 = ptrtoint i8* %205 to i8
  %207 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %208 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %207, i32 0, i32 4
  %209 = load i8*, i8** %208, align 8
  %210 = getelementptr inbounds i8, i8* %209, i64 2
  store i8 %206, i8* %210, align 1
  %211 = load i32, i32* %10, align 4
  %212 = ashr i32 %211, 8
  %213 = and i32 %212, 255
  %214 = sext i32 %213 to i64
  %215 = inttoptr i64 %214 to i8*
  %216 = ptrtoint i8* %215 to i8
  %217 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %218 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %217, i32 0, i32 4
  %219 = load i8*, i8** %218, align 8
  %220 = getelementptr inbounds i8, i8* %219, i64 3
  store i8 %216, i8* %220, align 1
  %221 = load i32, i32* %10, align 4
  %222 = and i32 %221, 255
  %223 = sext i32 %222 to i64
  %224 = inttoptr i64 %223 to i8*
  %225 = ptrtoint i8* %224 to i8
  %226 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %227 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %226, i32 0, i32 4
  %228 = load i8*, i8** %227, align 8
  %229 = getelementptr inbounds i8, i8* %228, i64 4
  store i8 %225, i8* %229, align 1
  %230 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %231 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %230, i32 0, i32 2
  store i32 0, i32* %231, align 8
  br label %257

232:                                              ; preds = %177
  %233 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %234 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %233, i32 0, i32 4
  %235 = load i8*, i8** %234, align 8
  %236 = getelementptr inbounds i8, i8* %235, i64 0
  store i8 80, i8* %236, align 1
  %237 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %238 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %237, i32 0, i32 4
  %239 = load i8*, i8** %238, align 8
  %240 = getelementptr inbounds i8, i8* %239, i64 1
  store i8 0, i8* %240, align 1
  %241 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %242 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %241, i32 0, i32 4
  %243 = load i8*, i8** %242, align 8
  %244 = getelementptr inbounds i8, i8* %243, i64 2
  store i8 0, i8* %244, align 1
  %245 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %246 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %245, i32 0, i32 4
  %247 = load i8*, i8** %246, align 8
  %248 = getelementptr inbounds i8, i8* %247, i64 3
  store i8 0, i8* %248, align 1
  %249 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %250 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %249, i32 0, i32 4
  %251 = load i8*, i8** %250, align 8
  %252 = getelementptr inbounds i8, i8* %251, i64 4
  store i8 40, i8* %252, align 1
  %253 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %254 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %253, i32 0, i32 1
  %255 = load i32, i32* %254, align 4
  %256 = add nsw i32 %255, 40000
  store i32 %256, i32* %254, align 4
  br label %257

257:                                              ; preds = %232, %182
  br label %258

258:                                              ; preds = %257, %166
  %259 = load i32, i32* @VC_CONTAINER_SUCCESS, align 4
  store i32 %259, i32* %4, align 4
  br label %260

260:                                              ; preds = %258, %175, %108, %101, %57
  %261 = load i32, i32* %4, align 4
  ret i32 %261
}

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
