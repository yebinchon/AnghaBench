; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_scsp2.c_SoundLoadState.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_scsp2.c_SoundLoadState.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 (i32)*, i32 (i32)*, i32 (i32, i32)*, i32 (i32, i32)* }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i64, i64, i32, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }

@scsp_thread_running = common dso_local global i64 0, align 8
@m68k_running = common dso_local global i32 0, align 4
@M68K = common dso_local global %struct.TYPE_10__* null, align 8
@scsp_regcache = common dso_local global i32* null, align 8
@SoundRam = common dso_local global i64 0, align 8
@scsp = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SoundLoadState(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_7__, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = bitcast %struct.TYPE_7__* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %12, i8 0, i64 8, i1 false)
  %13 = load i64, i64* @scsp_thread_running, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = call i32 (...) @ScspSyncThread()
  br label %17

17:                                               ; preds = %15, %3
  %18 = load i32*, i32** %4, align 8
  %19 = call i32 @yread(%struct.TYPE_7__* %11, i8* bitcast (i32* @m68k_running to i8*), i32 1, i32 1, i32* %18)
  store i32 0, i32* %7, align 4
  br label %20

20:                                               ; preds = %33, %17
  %21 = load i32, i32* %7, align 4
  %22 = icmp slt i32 %21, 8
  br i1 %22, label %23, label %36

23:                                               ; preds = %20
  %24 = bitcast i32* %9 to i8*
  %25 = load i32*, i32** %4, align 8
  %26 = call i32 @yread(%struct.TYPE_7__* %11, i8* %24, i32 4, i32 1, i32* %25)
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** @M68K, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 3
  %29 = load i32 (i32, i32)*, i32 (i32, i32)** %28, align 8
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %9, align 4
  %32 = call i32 %29(i32 %30, i32 %31)
  br label %33

33:                                               ; preds = %23
  %34 = load i32, i32* %7, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %7, align 4
  br label %20

36:                                               ; preds = %20
  store i32 0, i32* %7, align 4
  br label %37

37:                                               ; preds = %50, %36
  %38 = load i32, i32* %7, align 4
  %39 = icmp slt i32 %38, 8
  br i1 %39, label %40, label %53

40:                                               ; preds = %37
  %41 = bitcast i32* %9 to i8*
  %42 = load i32*, i32** %4, align 8
  %43 = call i32 @yread(%struct.TYPE_7__* %11, i8* %41, i32 4, i32 1, i32* %42)
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** @M68K, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 2
  %46 = load i32 (i32, i32)*, i32 (i32, i32)** %45, align 8
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* %9, align 4
  %49 = call i32 %46(i32 %47, i32 %48)
  br label %50

50:                                               ; preds = %40
  %51 = load i32, i32* %7, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %7, align 4
  br label %37

53:                                               ; preds = %37
  %54 = bitcast i32* %9 to i8*
  %55 = load i32*, i32** %4, align 8
  %56 = call i32 @yread(%struct.TYPE_7__* %11, i8* %54, i32 4, i32 1, i32* %55)
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** @M68K, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 1
  %59 = load i32 (i32)*, i32 (i32)** %58, align 8
  %60 = load i32, i32* %9, align 4
  %61 = call i32 %59(i32 %60)
  %62 = bitcast i32* %9 to i8*
  %63 = load i32*, i32** %4, align 8
  %64 = call i32 @yread(%struct.TYPE_7__* %11, i8* %62, i32 4, i32 1, i32* %63)
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** @M68K, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 0
  %67 = load i32 (i32)*, i32 (i32)** %66, align 8
  %68 = load i32, i32* %9, align 4
  %69 = call i32 %67(i32 %68)
  %70 = load i32*, i32** @scsp_regcache, align 8
  %71 = bitcast i32* %70 to i8*
  %72 = load i32*, i32** %4, align 8
  %73 = call i32 @yread(%struct.TYPE_7__* %11, i8* %71, i32 4096, i32 1, i32* %72)
  %74 = load i64, i64* @SoundRam, align 8
  %75 = inttoptr i64 %74 to i8*
  %76 = load i32*, i32** %4, align 8
  %77 = call i32 @yread(%struct.TYPE_7__* %11, i8* %75, i32 524288, i32 1, i32* %76)
  store i32 0, i32* %7, align 4
  br label %78

78:                                               ; preds = %114, %53
  %79 = load i32, i32* %7, align 4
  %80 = icmp slt i32 %79, 32
  br i1 %80, label %81, label %117

81:                                               ; preds = %78
  store i32 0, i32* %8, align 4
  br label %82

82:                                               ; preds = %100, %81
  %83 = load i32, i32* %8, align 4
  %84 = icmp slt i32 %83, 24
  br i1 %84, label %85, label %103

85:                                               ; preds = %82
  %86 = load i32, i32* %7, align 4
  %87 = shl i32 %86, 5
  %88 = load i32, i32* %8, align 4
  %89 = or i32 %87, %88
  %90 = load i32*, i32** @scsp_regcache, align 8
  %91 = load i32, i32* %7, align 4
  %92 = shl i32 %91, 5
  %93 = load i32, i32* %8, align 4
  %94 = or i32 %92, %93
  %95 = ashr i32 %94, 1
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %90, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @ScspWriteWordDirect(i32 %89, i32 %98)
  br label %100

100:                                              ; preds = %85
  %101 = load i32, i32* %8, align 4
  %102 = add nsw i32 %101, 2
  store i32 %102, i32* %8, align 4
  br label %82

103:                                              ; preds = %82
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @scsp, i32 0, i32 35), align 8
  %105 = load i32, i32* %7, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i64 %106
  %108 = call i32 @ScspUpdateSlotAddress(%struct.TYPE_9__* %107)
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @scsp, i32 0, i32 35), align 8
  %110 = load i32, i32* %7, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i64 %111
  %113 = call i32 @ScspUpdateSlotFunc(%struct.TYPE_9__* %112)
  br label %114

114:                                              ; preds = %103
  %115 = load i32, i32* %7, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %7, align 4
  br label %78

117:                                              ; preds = %78
  %118 = load i32, i32* %5, align 4
  %119 = icmp sgt i32 %118, 1
  br i1 %119, label %120, label %327

120:                                              ; preds = %117
  store i32 0, i32* %7, align 4
  br label %121

121:                                              ; preds = %192, %120
  %122 = load i32, i32* %7, align 4
  %123 = icmp slt i32 %122, 32
  br i1 %123, label %124, label %195

124:                                              ; preds = %121
  %125 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @scsp, i32 0, i32 35), align 8
  %126 = load i32, i32* %7, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i32 0, i32 7
  %130 = bitcast i32* %129 to i8*
  %131 = load i32*, i32** %4, align 8
  %132 = call i32 @yread(%struct.TYPE_7__* %11, i8* %130, i32 1, i32 1, i32* %131)
  %133 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @scsp, i32 0, i32 35), align 8
  %134 = load i32, i32* %7, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %136, i32 0, i32 6
  %138 = bitcast i32* %137 to i8*
  %139 = load i32*, i32** %4, align 8
  %140 = call i32 @yread(%struct.TYPE_7__* %11, i8* %138, i32 4, i32 1, i32* %139)
  %141 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @scsp, i32 0, i32 35), align 8
  %142 = load i32, i32* %7, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %141, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %144, i32 0, i32 5
  %146 = bitcast i32* %145 to i8*
  %147 = load i32*, i32** %4, align 8
  %148 = call i32 @yread(%struct.TYPE_7__* %11, i8* %146, i32 4, i32 1, i32* %147)
  %149 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @scsp, i32 0, i32 35), align 8
  %150 = load i32, i32* %7, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %149, i64 %151
  %153 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %152, i32 0, i32 4
  %154 = bitcast i32* %153 to i8*
  %155 = load i32*, i32** %4, align 8
  %156 = call i32 @yread(%struct.TYPE_7__* %11, i8* %154, i32 4, i32 1, i32* %155)
  %157 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @scsp, i32 0, i32 35), align 8
  %158 = load i32, i32* %7, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %157, i64 %159
  %161 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %160, i32 0, i32 3
  %162 = bitcast i32* %161 to i8*
  %163 = load i32*, i32** %4, align 8
  %164 = call i32 @yread(%struct.TYPE_7__* %11, i8* %162, i32 4, i32 1, i32* %163)
  %165 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @scsp, i32 0, i32 35), align 8
  %166 = load i32, i32* %7, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %165, i64 %167
  %169 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %168, i32 0, i32 2
  %170 = bitcast i32* %169 to i8*
  %171 = load i32*, i32** %4, align 8
  %172 = call i32 @yread(%struct.TYPE_7__* %11, i8* %170, i32 4, i32 1, i32* %171)
  %173 = bitcast i32* %10 to i8*
  %174 = load i32*, i32** %4, align 8
  %175 = call i32 @yread(%struct.TYPE_7__* %11, i8* %173, i32 1, i32 1, i32* %174)
  %176 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @scsp, i32 0, i32 35), align 8
  %177 = load i32, i32* %7, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %176, i64 %178
  %180 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %179, i32 0, i32 1
  %181 = bitcast i32* %180 to i8*
  %182 = load i32*, i32** %4, align 8
  %183 = call i32 @yread(%struct.TYPE_7__* %11, i8* %181, i32 4, i32 1, i32* %182)
  %184 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @scsp, i32 0, i32 35), align 8
  %185 = load i32, i32* %7, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %184, i64 %186
  %188 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %187, i32 0, i32 0
  %189 = bitcast i32* %188 to i8*
  %190 = load i32*, i32** %4, align 8
  %191 = call i32 @yread(%struct.TYPE_7__* %11, i8* %189, i32 4, i32 1, i32* %190)
  br label %192

192:                                              ; preds = %124
  %193 = load i32, i32* %7, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %7, align 4
  br label %121

195:                                              ; preds = %121
  %196 = bitcast i32* %9 to i8*
  %197 = load i32*, i32** %4, align 8
  %198 = call i32 @yread(%struct.TYPE_7__* %11, i8* %196, i32 4, i32 1, i32* %197)
  %199 = load i32, i32* %9, align 4
  store i32 %199, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @scsp, i32 0, i32 0), align 8
  %200 = load i32*, i32** @scsp_regcache, align 8
  %201 = getelementptr inbounds i32, i32* %200, i64 512
  %202 = load i32, i32* %201, align 4
  %203 = ashr i32 %202, 8
  %204 = and i32 %203, 1
  store i32 %204, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @scsp, i32 0, i32 1), align 4
  %205 = bitcast i32* %9 to i8*
  %206 = load i32*, i32** %4, align 8
  %207 = call i32 @yread(%struct.TYPE_7__* %11, i8* %205, i32 4, i32 1, i32* %206)
  %208 = load i32, i32* %9, align 4
  store i32 %208, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @scsp, i32 0, i32 2), align 8
  %209 = bitcast i32* %9 to i8*
  %210 = load i32*, i32** %4, align 8
  %211 = call i32 @yread(%struct.TYPE_7__* %11, i8* %209, i32 4, i32 1, i32* %210)
  %212 = load i32, i32* %9, align 4
  store i32 %212, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @scsp, i32 0, i32 3), align 4
  %213 = load i32*, i32** %4, align 8
  %214 = call i32 @yread(%struct.TYPE_7__* %11, i8* bitcast (i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @scsp, i32 0, i32 34) to i8*), i32 4, i32 1, i32* %213)
  %215 = bitcast i32* %9 to i8*
  %216 = load i32*, i32** %4, align 8
  %217 = call i32 @yread(%struct.TYPE_7__* %11, i8* %215, i32 4, i32 1, i32* %216)
  %218 = load i32, i32* %9, align 4
  store i32 %218, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @scsp, i32 0, i32 4), align 8
  %219 = load i32*, i32** %4, align 8
  %220 = call i32 @yread(%struct.TYPE_7__* %11, i8* bitcast (i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @scsp, i32 0, i32 33) to i8*), i32 4, i32 1, i32* %219)
  %221 = bitcast i32* %9 to i8*
  %222 = load i32*, i32** %4, align 8
  %223 = call i32 @yread(%struct.TYPE_7__* %11, i8* %221, i32 4, i32 1, i32* %222)
  %224 = load i32, i32* %9, align 4
  store i32 %224, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @scsp, i32 0, i32 5), align 4
  %225 = bitcast i32* %9 to i8*
  %226 = load i32*, i32** %4, align 8
  %227 = call i32 @yread(%struct.TYPE_7__* %11, i8* %225, i32 4, i32 1, i32* %226)
  %228 = load i32, i32* %9, align 4
  %229 = ashr i32 %228, 6
  %230 = and i32 %229, 1
  store i32 %230, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @scsp, i32 0, i32 6), align 8
  %231 = load i32, i32* %9, align 4
  %232 = ashr i32 %231, 5
  %233 = and i32 %232, 1
  store i32 %233, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @scsp, i32 0, i32 7), align 4
  %234 = load i32, i32* %9, align 4
  %235 = ashr i32 %234, 4
  %236 = and i32 %235, 1
  store i32 %236, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @scsp, i32 0, i32 8), align 8
  %237 = bitcast i32* %9 to i8*
  %238 = load i32*, i32** %4, align 8
  %239 = call i32 @yread(%struct.TYPE_7__* %11, i8* %237, i32 4, i32 1, i32* %238)
  %240 = load i32, i32* %9, align 4
  store i32 %240, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @scsp, i32 0, i32 9), align 4
  %241 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @scsp, i32 0, i32 32), align 8
  %242 = inttoptr i64 %241 to i8*
  %243 = load i32*, i32** %4, align 8
  %244 = call i32 @yread(%struct.TYPE_7__* %11, i8* %242, i32 1, i32 4, i32* %243)
  %245 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @scsp, i32 0, i32 31), align 8
  %246 = inttoptr i64 %245 to i8*
  %247 = load i32*, i32** %4, align 8
  %248 = call i32 @yread(%struct.TYPE_7__* %11, i8* %246, i32 1, i32 4, i32* %247)
  %249 = load i32*, i32** %4, align 8
  %250 = call i32 @yread(%struct.TYPE_7__* %11, i8* bitcast (i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @scsp, i32 0, i32 30) to i8*), i32 1, i32 1, i32* %249)
  %251 = load i32*, i32** %4, align 8
  %252 = call i32 @yread(%struct.TYPE_7__* %11, i8* bitcast (i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @scsp, i32 0, i32 29) to i8*), i32 1, i32 1, i32* %251)
  %253 = bitcast i32* %10 to i8*
  %254 = load i32*, i32** %4, align 8
  %255 = call i32 @yread(%struct.TYPE_7__* %11, i8* %253, i32 1, i32 1, i32* %254)
  %256 = load i32, i32* %10, align 4
  %257 = ashr i32 %256, 4
  %258 = and i32 %257, 1
  store i32 %258, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @scsp, i32 0, i32 10), align 8
  %259 = load i32, i32* %10, align 4
  %260 = ashr i32 %259, 3
  %261 = and i32 %260, 1
  store i32 %261, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @scsp, i32 0, i32 11), align 4
  %262 = load i32, i32* %10, align 4
  %263 = ashr i32 %262, 2
  %264 = and i32 %263, 1
  store i32 %264, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @scsp, i32 0, i32 12), align 8
  %265 = load i32, i32* %10, align 4
  %266 = ashr i32 %265, 1
  %267 = and i32 %266, 1
  store i32 %267, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @scsp, i32 0, i32 13), align 4
  %268 = load i32, i32* %10, align 4
  %269 = ashr i32 %268, 0
  %270 = and i32 %269, 1
  store i32 %270, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @scsp, i32 0, i32 14), align 8
  %271 = bitcast i32* %9 to i8*
  %272 = load i32*, i32** %4, align 8
  %273 = call i32 @yread(%struct.TYPE_7__* %11, i8* %271, i32 4, i32 1, i32* %272)
  %274 = load i32, i32* %9, align 4
  store i32 %274, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @scsp, i32 0, i32 15), align 4
  %275 = bitcast i32* %9 to i8*
  %276 = load i32*, i32** %4, align 8
  %277 = call i32 @yread(%struct.TYPE_7__* %11, i8* %275, i32 4, i32 1, i32* %276)
  %278 = load i32, i32* %9, align 4
  store i32 %278, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @scsp, i32 0, i32 16), align 8
  %279 = bitcast i32* %9 to i8*
  %280 = load i32*, i32** %4, align 8
  %281 = call i32 @yread(%struct.TYPE_7__* %11, i8* %279, i32 4, i32 1, i32* %280)
  %282 = load i32, i32* %9, align 4
  store i32 %282, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @scsp, i32 0, i32 17), align 4
  %283 = bitcast i32* %9 to i8*
  %284 = load i32*, i32** %4, align 8
  %285 = call i32 @yread(%struct.TYPE_7__* %11, i8* %283, i32 4, i32 1, i32* %284)
  %286 = load i32, i32* %9, align 4
  store i32 %286, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @scsp, i32 0, i32 18), align 8
  %287 = bitcast i32* %9 to i8*
  %288 = load i32*, i32** %4, align 8
  %289 = call i32 @yread(%struct.TYPE_7__* %11, i8* %287, i32 4, i32 1, i32* %288)
  %290 = load i32, i32* %9, align 4
  store i32 %290, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @scsp, i32 0, i32 19), align 4
  %291 = bitcast i32* %9 to i8*
  %292 = load i32*, i32** %4, align 8
  %293 = call i32 @yread(%struct.TYPE_7__* %11, i8* %291, i32 4, i32 1, i32* %292)
  %294 = load i32, i32* %9, align 4
  store i32 %294, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @scsp, i32 0, i32 20), align 8
  %295 = bitcast i32* %9 to i8*
  %296 = load i32*, i32** %4, align 8
  %297 = call i32 @yread(%struct.TYPE_7__* %11, i8* %295, i32 4, i32 1, i32* %296)
  %298 = load i32, i32* %9, align 4
  store i32 %298, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @scsp, i32 0, i32 21), align 4
  %299 = bitcast i32* %9 to i8*
  %300 = load i32*, i32** %4, align 8
  %301 = call i32 @yread(%struct.TYPE_7__* %11, i8* %299, i32 4, i32 1, i32* %300)
  %302 = load i32, i32* %9, align 4
  store i32 %302, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @scsp, i32 0, i32 22), align 8
  %303 = bitcast i32* %9 to i8*
  %304 = load i32*, i32** %4, align 8
  %305 = call i32 @yread(%struct.TYPE_7__* %11, i8* %303, i32 4, i32 1, i32* %304)
  %306 = load i32, i32* %9, align 4
  store i32 %306, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @scsp, i32 0, i32 23), align 4
  %307 = bitcast i32* %9 to i8*
  %308 = load i32*, i32** %4, align 8
  %309 = call i32 @yread(%struct.TYPE_7__* %11, i8* %307, i32 4, i32 1, i32* %308)
  %310 = load i32, i32* %9, align 4
  store i32 %310, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @scsp, i32 0, i32 24), align 8
  %311 = bitcast i32* %9 to i8*
  %312 = load i32*, i32** %4, align 8
  %313 = call i32 @yread(%struct.TYPE_7__* %11, i8* %311, i32 4, i32 1, i32* %312)
  %314 = load i32, i32* %9, align 4
  store i32 %314, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @scsp, i32 0, i32 25), align 4
  %315 = bitcast i32* %9 to i8*
  %316 = load i32*, i32** %4, align 8
  %317 = call i32 @yread(%struct.TYPE_7__* %11, i8* %315, i32 4, i32 1, i32* %316)
  %318 = load i32, i32* %9, align 4
  store i32 %318, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @scsp, i32 0, i32 26), align 8
  %319 = bitcast i32* %9 to i8*
  %320 = load i32*, i32** %4, align 8
  %321 = call i32 @yread(%struct.TYPE_7__* %11, i8* %319, i32 4, i32 1, i32* %320)
  %322 = load i32, i32* %9, align 4
  store i32 %322, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @scsp, i32 0, i32 27), align 4
  %323 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @scsp, i32 0, i32 28), align 8
  %324 = inttoptr i64 %323 to i8*
  %325 = load i32*, i32** %4, align 8
  %326 = call i32 @yread(%struct.TYPE_7__* %11, i8* %324, i32 4, i32 64, i32* %325)
  br label %327

327:                                              ; preds = %195, %117
  %328 = load i64, i64* @scsp_thread_running, align 8
  %329 = icmp ne i64 %328, 0
  br i1 %329, label %330, label %332

330:                                              ; preds = %327
  %331 = call i32 (...) @PSP_FLUSH_ALL()
  br label %332

332:                                              ; preds = %330, %327
  %333 = load i32, i32* %6, align 4
  ret i32 %333
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @ScspSyncThread(...) #2

declare dso_local i32 @yread(%struct.TYPE_7__*, i8*, i32, i32, i32*) #2

declare dso_local i32 @ScspWriteWordDirect(i32, i32) #2

declare dso_local i32 @ScspUpdateSlotAddress(%struct.TYPE_9__*) #2

declare dso_local i32 @ScspUpdateSlotFunc(%struct.TYPE_9__*) #2

declare dso_local i32 @PSP_FLUSH_ALL(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
