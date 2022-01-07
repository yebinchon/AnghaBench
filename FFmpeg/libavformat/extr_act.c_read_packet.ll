; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_act.c_read_packet.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_act.c_read_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_10__**, i32*, %struct.TYPE_13__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_13__ = type { i32, i32, i32* }
%struct.TYPE_11__ = type { i32, i32* }

@EIO = common dso_local global i32 0, align 4
@CHUNK_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, %struct.TYPE_11__*)* @read_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_packet(%struct.TYPE_12__* %0, %struct.TYPE_11__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %5, align 8
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 2
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  store %struct.TYPE_13__* %12, %struct.TYPE_13__** %6, align 8
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %7, align 8
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %18, i64 0
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp eq i32 %24, 8000
  %26 = zext i1 %25 to i64
  %27 = select i1 %25, i32 10, i32 22
  store i32 %27, i32* %9, align 4
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %30, i64 0
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 %36, 8000
  br i1 %37, label %38, label %41

38:                                               ; preds = %2
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %40 = call i32 @av_new_packet(%struct.TYPE_11__* %39, i32 10)
  store i32 %40, i32* %8, align 4
  br label %44

41:                                               ; preds = %2
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %43 = call i32 @av_new_packet(%struct.TYPE_11__* %42, i32 11)
  store i32 %43, i32* %8, align 4
  br label %44

44:                                               ; preds = %41, %38
  %45 = load i32, i32* %8, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %44
  %48 = load i32, i32* %8, align 4
  store i32 %48, i32* %3, align 4
  br label %437

49:                                               ; preds = %44
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %52, i64 0
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = icmp eq i32 %58, 4400
  br i1 %59, label %60, label %185

60:                                               ; preds = %49
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %185, label %65

65:                                               ; preds = %60
  %66 = load i32*, i32** %7, align 8
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 2
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* %9, align 4
  %71 = call i32 @avio_read(i32* %66, i32* %69, i32 %70)
  store i32 %71, i32* %8, align 4
  %72 = load i32, i32* %8, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %65
  %75 = load i32, i32* %8, align 4
  store i32 %75, i32* %3, align 4
  br label %437

76:                                               ; preds = %65
  %77 = load i32, i32* %8, align 4
  %78 = load i32, i32* %9, align 4
  %79 = icmp ne i32 %77, %78
  br i1 %79, label %80, label %83

80:                                               ; preds = %76
  %81 = load i32, i32* @EIO, align 4
  %82 = call i32 @AVERROR(i32 %81)
  store i32 %82, i32* %3, align 4
  br label %437

83:                                               ; preds = %76
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i32 0, i32 2
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 11
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 1
  %91 = load i32*, i32** %90, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 0
  store i32 %88, i32* %92, align 4
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i32 0, i32 2
  %95 = load i32*, i32** %94, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 0
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 1
  %100 = load i32*, i32** %99, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 1
  store i32 %97, i32* %101, align 4
  %102 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %102, i32 0, i32 2
  %104 = load i32*, i32** %103, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 12
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 1
  %109 = load i32*, i32** %108, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 2
  store i32 %106, i32* %110, align 4
  %111 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %111, i32 0, i32 2
  %113 = load i32*, i32** %112, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 1
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i32 0, i32 1
  %118 = load i32*, i32** %117, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 3
  store i32 %115, i32* %119, align 4
  %120 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %121 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %120, i32 0, i32 2
  %122 = load i32*, i32** %121, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 13
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %125, i32 0, i32 1
  %127 = load i32*, i32** %126, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 4
  store i32 %124, i32* %128, align 4
  %129 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %130 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %129, i32 0, i32 2
  %131 = load i32*, i32** %130, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 2
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %134, i32 0, i32 1
  %136 = load i32*, i32** %135, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 5
  store i32 %133, i32* %137, align 4
  %138 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %139 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %138, i32 0, i32 2
  %140 = load i32*, i32** %139, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 14
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %144 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %143, i32 0, i32 1
  %145 = load i32*, i32** %144, align 8
  %146 = getelementptr inbounds i32, i32* %145, i64 6
  store i32 %142, i32* %146, align 4
  %147 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %148 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %147, i32 0, i32 2
  %149 = load i32*, i32** %148, align 8
  %150 = getelementptr inbounds i32, i32* %149, i64 3
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %153 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %152, i32 0, i32 1
  %154 = load i32*, i32** %153, align 8
  %155 = getelementptr inbounds i32, i32* %154, i64 7
  store i32 %151, i32* %155, align 4
  %156 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %157 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %156, i32 0, i32 2
  %158 = load i32*, i32** %157, align 8
  %159 = getelementptr inbounds i32, i32* %158, i64 15
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %162 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %161, i32 0, i32 1
  %163 = load i32*, i32** %162, align 8
  %164 = getelementptr inbounds i32, i32* %163, i64 8
  store i32 %160, i32* %164, align 4
  %165 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %166 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %165, i32 0, i32 2
  %167 = load i32*, i32** %166, align 8
  %168 = getelementptr inbounds i32, i32* %167, i64 4
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %171 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %170, i32 0, i32 1
  %172 = load i32*, i32** %171, align 8
  %173 = getelementptr inbounds i32, i32* %172, i64 9
  store i32 %169, i32* %173, align 4
  %174 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %175 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %174, i32 0, i32 2
  %176 = load i32*, i32** %175, align 8
  %177 = getelementptr inbounds i32, i32* %176, i64 16
  %178 = load i32, i32* %177, align 4
  %179 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %180 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %179, i32 0, i32 1
  %181 = load i32*, i32** %180, align 8
  %182 = getelementptr inbounds i32, i32* %181, i64 10
  store i32 %178, i32* %182, align 4
  %183 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %184 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %183, i32 0, i32 0
  store i32 1, i32* %184, align 8
  br label %413

185:                                              ; preds = %60, %49
  %186 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %187 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %186, i32 0, i32 0
  %188 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %188, i64 0
  %190 = load %struct.TYPE_10__*, %struct.TYPE_10__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %190, i32 0, i32 0
  %192 = load %struct.TYPE_9__*, %struct.TYPE_9__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 4
  %195 = icmp eq i32 %194, 4400
  br i1 %195, label %196, label %303

196:                                              ; preds = %185
  %197 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %198 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %303

201:                                              ; preds = %196
  %202 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %203 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %202, i32 0, i32 2
  %204 = load i32*, i32** %203, align 8
  %205 = getelementptr inbounds i32, i32* %204, i64 5
  %206 = load i32, i32* %205, align 4
  %207 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %208 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %207, i32 0, i32 1
  %209 = load i32*, i32** %208, align 8
  %210 = getelementptr inbounds i32, i32* %209, i64 0
  store i32 %206, i32* %210, align 4
  %211 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %212 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %211, i32 0, i32 2
  %213 = load i32*, i32** %212, align 8
  %214 = getelementptr inbounds i32, i32* %213, i64 17
  %215 = load i32, i32* %214, align 4
  %216 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %217 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %216, i32 0, i32 1
  %218 = load i32*, i32** %217, align 8
  %219 = getelementptr inbounds i32, i32* %218, i64 1
  store i32 %215, i32* %219, align 4
  %220 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %221 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %220, i32 0, i32 2
  %222 = load i32*, i32** %221, align 8
  %223 = getelementptr inbounds i32, i32* %222, i64 6
  %224 = load i32, i32* %223, align 4
  %225 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %226 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %225, i32 0, i32 1
  %227 = load i32*, i32** %226, align 8
  %228 = getelementptr inbounds i32, i32* %227, i64 2
  store i32 %224, i32* %228, align 4
  %229 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %230 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %229, i32 0, i32 2
  %231 = load i32*, i32** %230, align 8
  %232 = getelementptr inbounds i32, i32* %231, i64 18
  %233 = load i32, i32* %232, align 4
  %234 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %235 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %234, i32 0, i32 1
  %236 = load i32*, i32** %235, align 8
  %237 = getelementptr inbounds i32, i32* %236, i64 3
  store i32 %233, i32* %237, align 4
  %238 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %239 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %238, i32 0, i32 2
  %240 = load i32*, i32** %239, align 8
  %241 = getelementptr inbounds i32, i32* %240, i64 7
  %242 = load i32, i32* %241, align 4
  %243 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %244 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %243, i32 0, i32 1
  %245 = load i32*, i32** %244, align 8
  %246 = getelementptr inbounds i32, i32* %245, i64 4
  store i32 %242, i32* %246, align 4
  %247 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %248 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %247, i32 0, i32 2
  %249 = load i32*, i32** %248, align 8
  %250 = getelementptr inbounds i32, i32* %249, i64 19
  %251 = load i32, i32* %250, align 4
  %252 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %253 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %252, i32 0, i32 1
  %254 = load i32*, i32** %253, align 8
  %255 = getelementptr inbounds i32, i32* %254, i64 5
  store i32 %251, i32* %255, align 4
  %256 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %257 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %256, i32 0, i32 2
  %258 = load i32*, i32** %257, align 8
  %259 = getelementptr inbounds i32, i32* %258, i64 8
  %260 = load i32, i32* %259, align 4
  %261 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %262 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %261, i32 0, i32 1
  %263 = load i32*, i32** %262, align 8
  %264 = getelementptr inbounds i32, i32* %263, i64 6
  store i32 %260, i32* %264, align 4
  %265 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %266 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %265, i32 0, i32 2
  %267 = load i32*, i32** %266, align 8
  %268 = getelementptr inbounds i32, i32* %267, i64 20
  %269 = load i32, i32* %268, align 4
  %270 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %271 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %270, i32 0, i32 1
  %272 = load i32*, i32** %271, align 8
  %273 = getelementptr inbounds i32, i32* %272, i64 7
  store i32 %269, i32* %273, align 4
  %274 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %275 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %274, i32 0, i32 2
  %276 = load i32*, i32** %275, align 8
  %277 = getelementptr inbounds i32, i32* %276, i64 9
  %278 = load i32, i32* %277, align 4
  %279 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %280 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %279, i32 0, i32 1
  %281 = load i32*, i32** %280, align 8
  %282 = getelementptr inbounds i32, i32* %281, i64 8
  store i32 %278, i32* %282, align 4
  %283 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %284 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %283, i32 0, i32 2
  %285 = load i32*, i32** %284, align 8
  %286 = getelementptr inbounds i32, i32* %285, i64 21
  %287 = load i32, i32* %286, align 4
  %288 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %289 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %288, i32 0, i32 1
  %290 = load i32*, i32** %289, align 8
  %291 = getelementptr inbounds i32, i32* %290, i64 9
  store i32 %287, i32* %291, align 4
  %292 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %293 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %292, i32 0, i32 2
  %294 = load i32*, i32** %293, align 8
  %295 = getelementptr inbounds i32, i32* %294, i64 10
  %296 = load i32, i32* %295, align 4
  %297 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %298 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %297, i32 0, i32 1
  %299 = load i32*, i32** %298, align 8
  %300 = getelementptr inbounds i32, i32* %299, i64 10
  store i32 %296, i32* %300, align 4
  %301 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %302 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %301, i32 0, i32 0
  store i32 0, i32* %302, align 8
  br label %412

303:                                              ; preds = %196, %185
  %304 = load i32*, i32** %7, align 8
  %305 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %306 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %305, i32 0, i32 2
  %307 = load i32*, i32** %306, align 8
  %308 = load i32, i32* %9, align 4
  %309 = call i32 @avio_read(i32* %304, i32* %307, i32 %308)
  store i32 %309, i32* %8, align 4
  %310 = load i32, i32* %8, align 4
  %311 = icmp slt i32 %310, 0
  br i1 %311, label %312, label %314

312:                                              ; preds = %303
  %313 = load i32, i32* %8, align 4
  store i32 %313, i32* %3, align 4
  br label %437

314:                                              ; preds = %303
  %315 = load i32, i32* %8, align 4
  %316 = load i32, i32* %9, align 4
  %317 = icmp ne i32 %315, %316
  br i1 %317, label %318, label %321

318:                                              ; preds = %314
  %319 = load i32, i32* @EIO, align 4
  %320 = call i32 @AVERROR(i32 %319)
  store i32 %320, i32* %3, align 4
  br label %437

321:                                              ; preds = %314
  %322 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %323 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %322, i32 0, i32 2
  %324 = load i32*, i32** %323, align 8
  %325 = getelementptr inbounds i32, i32* %324, i64 5
  %326 = load i32, i32* %325, align 4
  %327 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %328 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %327, i32 0, i32 1
  %329 = load i32*, i32** %328, align 8
  %330 = getelementptr inbounds i32, i32* %329, i64 0
  store i32 %326, i32* %330, align 4
  %331 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %332 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %331, i32 0, i32 2
  %333 = load i32*, i32** %332, align 8
  %334 = getelementptr inbounds i32, i32* %333, i64 0
  %335 = load i32, i32* %334, align 4
  %336 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %337 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %336, i32 0, i32 1
  %338 = load i32*, i32** %337, align 8
  %339 = getelementptr inbounds i32, i32* %338, i64 1
  store i32 %335, i32* %339, align 4
  %340 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %341 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %340, i32 0, i32 2
  %342 = load i32*, i32** %341, align 8
  %343 = getelementptr inbounds i32, i32* %342, i64 6
  %344 = load i32, i32* %343, align 4
  %345 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %346 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %345, i32 0, i32 1
  %347 = load i32*, i32** %346, align 8
  %348 = getelementptr inbounds i32, i32* %347, i64 2
  store i32 %344, i32* %348, align 4
  %349 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %350 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %349, i32 0, i32 2
  %351 = load i32*, i32** %350, align 8
  %352 = getelementptr inbounds i32, i32* %351, i64 1
  %353 = load i32, i32* %352, align 4
  %354 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %355 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %354, i32 0, i32 1
  %356 = load i32*, i32** %355, align 8
  %357 = getelementptr inbounds i32, i32* %356, i64 3
  store i32 %353, i32* %357, align 4
  %358 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %359 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %358, i32 0, i32 2
  %360 = load i32*, i32** %359, align 8
  %361 = getelementptr inbounds i32, i32* %360, i64 7
  %362 = load i32, i32* %361, align 4
  %363 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %364 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %363, i32 0, i32 1
  %365 = load i32*, i32** %364, align 8
  %366 = getelementptr inbounds i32, i32* %365, i64 4
  store i32 %362, i32* %366, align 4
  %367 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %368 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %367, i32 0, i32 2
  %369 = load i32*, i32** %368, align 8
  %370 = getelementptr inbounds i32, i32* %369, i64 2
  %371 = load i32, i32* %370, align 4
  %372 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %373 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %372, i32 0, i32 1
  %374 = load i32*, i32** %373, align 8
  %375 = getelementptr inbounds i32, i32* %374, i64 5
  store i32 %371, i32* %375, align 4
  %376 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %377 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %376, i32 0, i32 2
  %378 = load i32*, i32** %377, align 8
  %379 = getelementptr inbounds i32, i32* %378, i64 8
  %380 = load i32, i32* %379, align 4
  %381 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %382 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %381, i32 0, i32 1
  %383 = load i32*, i32** %382, align 8
  %384 = getelementptr inbounds i32, i32* %383, i64 6
  store i32 %380, i32* %384, align 4
  %385 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %386 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %385, i32 0, i32 2
  %387 = load i32*, i32** %386, align 8
  %388 = getelementptr inbounds i32, i32* %387, i64 3
  %389 = load i32, i32* %388, align 4
  %390 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %391 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %390, i32 0, i32 1
  %392 = load i32*, i32** %391, align 8
  %393 = getelementptr inbounds i32, i32* %392, i64 7
  store i32 %389, i32* %393, align 4
  %394 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %395 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %394, i32 0, i32 2
  %396 = load i32*, i32** %395, align 8
  %397 = getelementptr inbounds i32, i32* %396, i64 9
  %398 = load i32, i32* %397, align 4
  %399 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %400 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %399, i32 0, i32 1
  %401 = load i32*, i32** %400, align 8
  %402 = getelementptr inbounds i32, i32* %401, i64 8
  store i32 %398, i32* %402, align 4
  %403 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %404 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %403, i32 0, i32 2
  %405 = load i32*, i32** %404, align 8
  %406 = getelementptr inbounds i32, i32* %405, i64 4
  %407 = load i32, i32* %406, align 4
  %408 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %409 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %408, i32 0, i32 1
  %410 = load i32*, i32** %409, align 8
  %411 = getelementptr inbounds i32, i32* %410, i64 9
  store i32 %407, i32* %411, align 4
  br label %412

412:                                              ; preds = %321, %201
  br label %413

413:                                              ; preds = %412, %83
  %414 = load i32, i32* %9, align 4
  %415 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %416 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %415, i32 0, i32 1
  %417 = load i32, i32* %416, align 4
  %418 = sub nsw i32 %417, %414
  store i32 %418, i32* %416, align 4
  %419 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %420 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %419, i32 0, i32 1
  %421 = load i32, i32* %420, align 4
  %422 = load i32, i32* %9, align 4
  %423 = icmp slt i32 %421, %422
  br i1 %423, label %424, label %433

424:                                              ; preds = %413
  %425 = load i32*, i32** %7, align 8
  %426 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %427 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %426, i32 0, i32 1
  %428 = load i32, i32* %427, align 4
  %429 = call i32 @avio_skip(i32* %425, i32 %428)
  %430 = load i32, i32* @CHUNK_SIZE, align 4
  %431 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %432 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %431, i32 0, i32 1
  store i32 %430, i32* %432, align 4
  br label %433

433:                                              ; preds = %424, %413
  %434 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %435 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %434, i32 0, i32 0
  store i32 1, i32* %435, align 8
  %436 = load i32, i32* %8, align 4
  store i32 %436, i32* %3, align 4
  br label %437

437:                                              ; preds = %433, %318, %312, %80, %74, %47
  %438 = load i32, i32* %3, align 4
  ret i32 %438
}

declare dso_local i32 @av_new_packet(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @avio_read(i32*, i32*, i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @avio_skip(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
