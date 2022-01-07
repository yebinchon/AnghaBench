; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_cs2.c_Cs2ReadUnFilteredSector.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_cs2.c_Cs2ReadUnFilteredSector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, %struct.TYPE_9__, %struct.TYPE_8__*, i32, i32 }
%struct.TYPE_9__ = type { i32*, i32, i32 }
%struct.TYPE_8__ = type { i32 (i32, i32*)* }
%struct.TYPE_10__ = type { i64, i32, %struct.TYPE_12__**, i32* }
%struct.TYPE_12__ = type { i32, i32, i32, i32, i64, i32 }

@__const.Cs2ReadUnFilteredSector.syncheader = private unnamed_addr constant [12 x i8] c"\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00", align 1
@Cs2Area = common dso_local global %struct.TYPE_11__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_10__* @Cs2ReadUnFilteredSector(i32 %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca [12 x i8], align 1
  store i32 %0, i32* %3, align 4
  %6 = bitcast [12 x i8]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %6, i8* align 1 getelementptr inbounds ([12 x i8], [12 x i8]* @__const.Cs2ReadUnFilteredSector.syncheader, i32 0, i32 0), i64 12, i1 false)
  %7 = load %struct.TYPE_11__*, %struct.TYPE_11__** @Cs2Area, align 8
  %8 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 4
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.TYPE_10__* @Cs2GetPartition(i32 %9)
  store %struct.TYPE_10__* %10, %struct.TYPE_10__** %4, align 8
  %11 = icmp ne %struct.TYPE_10__* %10, null
  br i1 %11, label %12, label %311

12:                                               ; preds = %1
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** @Cs2Area, align 8
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %311, label %17

17:                                               ; preds = %12
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 3
  %20 = load i32*, i32** %19, align 8
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds i32, i32* %20, i64 %23
  %25 = call %struct.TYPE_12__* @Cs2AllocateBlock(i32* %24)
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 2
  %28 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %27, align 8
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %28, i64 %31
  store %struct.TYPE_12__* %25, %struct.TYPE_12__** %32, align 8
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 2
  %35 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %34, align 8
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %35, i64 %38
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %39, align 8
  %41 = icmp eq %struct.TYPE_12__* %40, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %17
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %2, align 8
  br label %312

43:                                               ; preds = %17
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** @Cs2Area, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 2
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = load i32 (i32, i32*)*, i32 (i32, i32*)** %47, align 8
  %49 = load i32, i32* %3, align 4
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** @Cs2Area, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = call i32 %48(i32 %49, i32* %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %43
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %2, align 8
  br label %312

57:                                               ; preds = %43
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** @Cs2Area, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  switch i32 %60, label %199 [
    i32 2048, label %61
    i32 2336, label %146
    i32 2340, label %169
    i32 2352, label %192
  ]

61:                                               ; preds = %57
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** @Cs2Area, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 15
  %67 = load i32, i32* %66, align 4
  %68 = icmp eq i32 %67, 2
  br i1 %68, label %69, label %122

69:                                               ; preds = %61
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** @Cs2Area, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 18
  %75 = load i32, i32* %74, align 4
  %76 = and i32 %75, 32
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %101, label %78

78:                                               ; preds = %69
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 2
  %81 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %80, align 8
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %81, i64 %84
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 5
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** @Cs2Area, align 8
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 24
  %94 = call i32 @memcpy(i32 %88, i32* %93, i32 2048)
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** @Cs2Area, align 8
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** @Cs2Area, align 8
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 1
  store i32 %97, i32* %100, align 8
  br label %121

101:                                              ; preds = %69
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 2
  %104 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %103, align 8
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %104, i64 %107
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i32 0, i32 5
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** @Cs2Area, align 8
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 0
  %115 = load i32*, i32** %114, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 24
  %117 = call i32 @memcpy(i32 %111, i32* %116, i32 2324)
  %118 = load %struct.TYPE_11__*, %struct.TYPE_11__** @Cs2Area, align 8
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 1
  store i32 2324, i32* %120, align 8
  br label %121

121:                                              ; preds = %101, %78
  br label %145

122:                                              ; preds = %61
  %123 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %123, i32 0, i32 2
  %125 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %124, align 8
  %126 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %125, i64 %128
  %130 = load %struct.TYPE_12__*, %struct.TYPE_12__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %130, i32 0, i32 5
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.TYPE_11__*, %struct.TYPE_11__** @Cs2Area, align 8
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 0
  %136 = load i32*, i32** %135, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 16
  %138 = call i32 @memcpy(i32 %132, i32* %137, i32 2048)
  %139 = load %struct.TYPE_11__*, %struct.TYPE_11__** @Cs2Area, align 8
  %140 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = load %struct.TYPE_11__*, %struct.TYPE_11__** @Cs2Area, align 8
  %143 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %142, i32 0, i32 1
  %144 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %143, i32 0, i32 1
  store i32 %141, i32* %144, align 8
  br label %145

145:                                              ; preds = %122, %121
  br label %200

146:                                              ; preds = %57
  %147 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %148 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %147, i32 0, i32 2
  %149 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %148, align 8
  %150 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %151 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %149, i64 %152
  %154 = load %struct.TYPE_12__*, %struct.TYPE_12__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %154, i32 0, i32 5
  %156 = load i32, i32* %155, align 8
  %157 = load %struct.TYPE_11__*, %struct.TYPE_11__** @Cs2Area, align 8
  %158 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %157, i32 0, i32 1
  %159 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %158, i32 0, i32 0
  %160 = load i32*, i32** %159, align 8
  %161 = getelementptr inbounds i32, i32* %160, i64 16
  %162 = call i32 @memcpy(i32 %156, i32* %161, i32 2336)
  %163 = load %struct.TYPE_11__*, %struct.TYPE_11__** @Cs2Area, align 8
  %164 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = load %struct.TYPE_11__*, %struct.TYPE_11__** @Cs2Area, align 8
  %167 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %166, i32 0, i32 1
  %168 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %167, i32 0, i32 1
  store i32 %165, i32* %168, align 8
  br label %200

169:                                              ; preds = %57
  %170 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %171 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %170, i32 0, i32 2
  %172 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %171, align 8
  %173 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %174 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %172, i64 %175
  %177 = load %struct.TYPE_12__*, %struct.TYPE_12__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %177, i32 0, i32 5
  %179 = load i32, i32* %178, align 8
  %180 = load %struct.TYPE_11__*, %struct.TYPE_11__** @Cs2Area, align 8
  %181 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %180, i32 0, i32 1
  %182 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %181, i32 0, i32 0
  %183 = load i32*, i32** %182, align 8
  %184 = getelementptr inbounds i32, i32* %183, i64 12
  %185 = call i32 @memcpy(i32 %179, i32* %184, i32 2340)
  %186 = load %struct.TYPE_11__*, %struct.TYPE_11__** @Cs2Area, align 8
  %187 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = load %struct.TYPE_11__*, %struct.TYPE_11__** @Cs2Area, align 8
  %190 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %189, i32 0, i32 1
  %191 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %190, i32 0, i32 1
  store i32 %188, i32* %191, align 8
  br label %200

192:                                              ; preds = %57
  %193 = load %struct.TYPE_11__*, %struct.TYPE_11__** @Cs2Area, align 8
  %194 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = load %struct.TYPE_11__*, %struct.TYPE_11__** @Cs2Area, align 8
  %197 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %196, i32 0, i32 1
  %198 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %197, i32 0, i32 1
  store i32 %195, i32* %198, align 8
  br label %200

199:                                              ; preds = %57
  br label %200

200:                                              ; preds = %199, %192, %169, %146, %145
  %201 = getelementptr inbounds [12 x i8], [12 x i8]* %5, i64 0, i64 0
  %202 = load %struct.TYPE_11__*, %struct.TYPE_11__** @Cs2Area, align 8
  %203 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %202, i32 0, i32 1
  %204 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %203, i32 0, i32 0
  %205 = load i32*, i32** %204, align 8
  %206 = call i64 @memcmp(i8* %201, i32* %205, i32 12)
  %207 = icmp eq i64 %206, 0
  br i1 %207, label %208, label %277

208:                                              ; preds = %200
  %209 = load %struct.TYPE_11__*, %struct.TYPE_11__** @Cs2Area, align 8
  %210 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %209, i32 0, i32 1
  %211 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %210, i32 0, i32 0
  %212 = load i32*, i32** %211, align 8
  %213 = getelementptr inbounds i32, i32* %212, i64 15
  %214 = load i32, i32* %213, align 4
  %215 = icmp eq i32 %214, 2
  br i1 %215, label %216, label %277

216:                                              ; preds = %208
  %217 = load %struct.TYPE_11__*, %struct.TYPE_11__** @Cs2Area, align 8
  %218 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %217, i32 0, i32 1
  %219 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %218, i32 0, i32 0
  %220 = load i32*, i32** %219, align 8
  %221 = getelementptr inbounds i32, i32* %220, i64 16
  %222 = load i32, i32* %221, align 4
  %223 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %224 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %223, i32 0, i32 2
  %225 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %224, align 8
  %226 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %227 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %226, i32 0, i32 0
  %228 = load i64, i64* %227, align 8
  %229 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %225, i64 %228
  %230 = load %struct.TYPE_12__*, %struct.TYPE_12__** %229, align 8
  %231 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %230, i32 0, i32 0
  store i32 %222, i32* %231, align 8
  %232 = load %struct.TYPE_11__*, %struct.TYPE_11__** @Cs2Area, align 8
  %233 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %232, i32 0, i32 1
  %234 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %233, i32 0, i32 0
  %235 = load i32*, i32** %234, align 8
  %236 = getelementptr inbounds i32, i32* %235, i64 17
  %237 = load i32, i32* %236, align 4
  %238 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %239 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %238, i32 0, i32 2
  %240 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %239, align 8
  %241 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %242 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %241, i32 0, i32 0
  %243 = load i64, i64* %242, align 8
  %244 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %240, i64 %243
  %245 = load %struct.TYPE_12__*, %struct.TYPE_12__** %244, align 8
  %246 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %245, i32 0, i32 1
  store i32 %237, i32* %246, align 4
  %247 = load %struct.TYPE_11__*, %struct.TYPE_11__** @Cs2Area, align 8
  %248 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %247, i32 0, i32 1
  %249 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %248, i32 0, i32 0
  %250 = load i32*, i32** %249, align 8
  %251 = getelementptr inbounds i32, i32* %250, i64 18
  %252 = load i32, i32* %251, align 4
  %253 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %254 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %253, i32 0, i32 2
  %255 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %254, align 8
  %256 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %257 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %256, i32 0, i32 0
  %258 = load i64, i64* %257, align 8
  %259 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %255, i64 %258
  %260 = load %struct.TYPE_12__*, %struct.TYPE_12__** %259, align 8
  %261 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %260, i32 0, i32 2
  store i32 %252, i32* %261, align 8
  %262 = load %struct.TYPE_11__*, %struct.TYPE_11__** @Cs2Area, align 8
  %263 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %262, i32 0, i32 1
  %264 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %263, i32 0, i32 0
  %265 = load i32*, i32** %264, align 8
  %266 = getelementptr inbounds i32, i32* %265, i64 19
  %267 = load i32, i32* %266, align 4
  %268 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %269 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %268, i32 0, i32 2
  %270 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %269, align 8
  %271 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %272 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %271, i32 0, i32 0
  %273 = load i64, i64* %272, align 8
  %274 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %270, i64 %273
  %275 = load %struct.TYPE_12__*, %struct.TYPE_12__** %274, align 8
  %276 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %275, i32 0, i32 3
  store i32 %267, i32* %276, align 4
  br label %277

277:                                              ; preds = %216, %208, %200
  %278 = load i32, i32* %3, align 4
  %279 = load %struct.TYPE_11__*, %struct.TYPE_11__** @Cs2Area, align 8
  %280 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %279, i32 0, i32 1
  %281 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %280, i32 0, i32 2
  store i32 %278, i32* %281, align 4
  %282 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %283 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %282, i32 0, i32 1
  %284 = load i32, i32* %283, align 8
  %285 = icmp eq i32 %284, -1
  br i1 %285, label %286, label %289

286:                                              ; preds = %277
  %287 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %288 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %287, i32 0, i32 1
  store i32 0, i32* %288, align 8
  br label %289

289:                                              ; preds = %286, %277
  %290 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %291 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %290, i32 0, i32 2
  %292 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %291, align 8
  %293 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %294 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %293, i32 0, i32 0
  %295 = load i64, i64* %294, align 8
  %296 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %292, i64 %295
  %297 = load %struct.TYPE_12__*, %struct.TYPE_12__** %296, align 8
  %298 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %297, i32 0, i32 4
  %299 = load i64, i64* %298, align 8
  %300 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %301 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %300, i32 0, i32 1
  %302 = load i32, i32* %301, align 8
  %303 = sext i32 %302 to i64
  %304 = add nsw i64 %303, %299
  %305 = trunc i64 %304 to i32
  store i32 %305, i32* %301, align 8
  %306 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %307 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %306, i32 0, i32 0
  %308 = load i64, i64* %307, align 8
  %309 = add i64 %308, 1
  store i64 %309, i64* %307, align 8
  %310 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  store %struct.TYPE_10__* %310, %struct.TYPE_10__** %2, align 8
  br label %312

311:                                              ; preds = %12, %1
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %2, align 8
  br label %312

312:                                              ; preds = %311, %289, %56, %42
  %313 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  ret %struct.TYPE_10__* %313
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local %struct.TYPE_10__* @Cs2GetPartition(i32) #2

declare dso_local %struct.TYPE_12__* @Cs2AllocateBlock(i32*) #2

declare dso_local i32 @memcpy(i32, i32*, i32) #2

declare dso_local i64 @memcmp(i8*, i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
