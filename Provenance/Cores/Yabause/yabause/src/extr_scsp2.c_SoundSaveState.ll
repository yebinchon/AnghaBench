; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_scsp2.c_SoundSaveState.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_scsp2.c_SoundSaveState.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 (i32)*, i32 (i32)*, i32 (...)*, i32 (...)* }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i64, i64, i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }

@scsp_thread_running = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"SCSP\00", align 1
@m68k_running = common dso_local global i32 0, align 4
@M68K = common dso_local global %struct.TYPE_9__* null, align 8
@scsp_regcache = common dso_local global i64 0, align 8
@SoundRam = common dso_local global i64 0, align 8
@scsp = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@SCSP_ENV_RELEASE = common dso_local global i64 0, align 8
@SCSP_ENV_SUSTAIN = common dso_local global i64 0, align 8
@SCSP_ENV_DECAY = common dso_local global i64 0, align 8
@SCSP_ENV_ATTACK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SoundSaveState(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_7__, align 4
  store i32* %0, i32** %2, align 8
  %8 = bitcast %struct.TYPE_7__* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %8, i8 0, i64 8, i1 false)
  %9 = load i64, i64* @scsp_thread_running, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = call i32 (...) @ScspSyncThread()
  br label %13

13:                                               ; preds = %11, %1
  %14 = load i32*, i32** %2, align 8
  %15 = call i32 @StateWriteHeader(i32* %14, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 2)
  store i32 %15, i32* %6, align 4
  %16 = load i32*, i32** %2, align 8
  %17 = call i32 @ywrite(%struct.TYPE_7__* %7, i8* bitcast (i32* @m68k_running to i8*), i32 1, i32 1, i32* %16)
  store i32 0, i32* %3, align 4
  br label %18

18:                                               ; preds = %30, %13
  %19 = load i32, i32* %3, align 4
  %20 = icmp slt i32 %19, 8
  br i1 %20, label %21, label %33

21:                                               ; preds = %18
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** @M68K, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = load i32 (i32)*, i32 (i32)** %23, align 8
  %25 = load i32, i32* %3, align 4
  %26 = call i32 %24(i32 %25)
  store i32 %26, i32* %4, align 4
  %27 = bitcast i32* %4 to i8*
  %28 = load i32*, i32** %2, align 8
  %29 = call i32 @ywrite(%struct.TYPE_7__* %7, i8* %27, i32 4, i32 1, i32* %28)
  br label %30

30:                                               ; preds = %21
  %31 = load i32, i32* %3, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %3, align 4
  br label %18

33:                                               ; preds = %18
  store i32 0, i32* %3, align 4
  br label %34

34:                                               ; preds = %46, %33
  %35 = load i32, i32* %3, align 4
  %36 = icmp slt i32 %35, 8
  br i1 %36, label %37, label %49

37:                                               ; preds = %34
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** @M68K, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 1
  %40 = load i32 (i32)*, i32 (i32)** %39, align 8
  %41 = load i32, i32* %3, align 4
  %42 = call i32 %40(i32 %41)
  store i32 %42, i32* %4, align 4
  %43 = bitcast i32* %4 to i8*
  %44 = load i32*, i32** %2, align 8
  %45 = call i32 @ywrite(%struct.TYPE_7__* %7, i8* %43, i32 4, i32 1, i32* %44)
  br label %46

46:                                               ; preds = %37
  %47 = load i32, i32* %3, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %3, align 4
  br label %34

49:                                               ; preds = %34
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** @M68K, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 2
  %52 = load i32 (...)*, i32 (...)** %51, align 8
  %53 = call i32 (...) %52()
  store i32 %53, i32* %4, align 4
  %54 = bitcast i32* %4 to i8*
  %55 = load i32*, i32** %2, align 8
  %56 = call i32 @ywrite(%struct.TYPE_7__* %7, i8* %54, i32 4, i32 1, i32* %55)
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** @M68K, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 3
  %59 = load i32 (...)*, i32 (...)** %58, align 8
  %60 = call i32 (...) %59()
  store i32 %60, i32* %4, align 4
  %61 = bitcast i32* %4 to i8*
  %62 = load i32*, i32** %2, align 8
  %63 = call i32 @ywrite(%struct.TYPE_7__* %7, i8* %61, i32 4, i32 1, i32* %62)
  %64 = load i64, i64* @scsp_regcache, align 8
  %65 = inttoptr i64 %64 to i8*
  %66 = load i32*, i32** %2, align 8
  %67 = call i32 @ywrite(%struct.TYPE_7__* %7, i8* %65, i32 4096, i32 1, i32* %66)
  %68 = load i64, i64* @SoundRam, align 8
  %69 = inttoptr i64 %68 to i8*
  %70 = load i32*, i32** %2, align 8
  %71 = call i32 @ywrite(%struct.TYPE_7__* %7, i8* %69, i32 524288, i32 1, i32* %70)
  store i32 0, i32* %3, align 4
  br label %72

72:                                               ; preds = %187, %49
  %73 = load i32, i32* %3, align 4
  %74 = icmp slt i32 %73, 32
  br i1 %74, label %75, label %190

75:                                               ; preds = %72
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @scsp, i32 0, i32 34), align 8
  %77 = load i32, i32* %3, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 7
  %81 = bitcast i32* %80 to i8*
  %82 = load i32*, i32** %2, align 8
  %83 = call i32 @ywrite(%struct.TYPE_7__* %7, i8* %81, i32 1, i32 1, i32* %82)
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @scsp, i32 0, i32 34), align 8
  %85 = load i32, i32* %3, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 6
  %89 = bitcast i32* %88 to i8*
  %90 = load i32*, i32** %2, align 8
  %91 = call i32 @ywrite(%struct.TYPE_7__* %7, i8* %89, i32 4, i32 1, i32* %90)
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @scsp, i32 0, i32 34), align 8
  %93 = load i32, i32* %3, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 5
  %97 = bitcast i32* %96 to i8*
  %98 = load i32*, i32** %2, align 8
  %99 = call i32 @ywrite(%struct.TYPE_7__* %7, i8* %97, i32 4, i32 1, i32* %98)
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @scsp, i32 0, i32 34), align 8
  %101 = load i32, i32* %3, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 4
  %105 = bitcast i32* %104 to i8*
  %106 = load i32*, i32** %2, align 8
  %107 = call i32 @ywrite(%struct.TYPE_7__* %7, i8* %105, i32 4, i32 1, i32* %106)
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @scsp, i32 0, i32 34), align 8
  %109 = load i32, i32* %3, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 3
  %113 = bitcast i32* %112 to i8*
  %114 = load i32*, i32** %2, align 8
  %115 = call i32 @ywrite(%struct.TYPE_7__* %7, i8* %113, i32 4, i32 1, i32* %114)
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @scsp, i32 0, i32 34), align 8
  %117 = load i32, i32* %3, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 0
  %121 = bitcast i64* %120 to i8*
  %122 = load i32*, i32** %2, align 8
  %123 = call i32 @ywrite(%struct.TYPE_7__* %7, i8* %121, i32 4, i32 1, i32* %122)
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @scsp, i32 0, i32 34), align 8
  %125 = load i32, i32* %3, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* @SCSP_ENV_RELEASE, align 8
  %131 = icmp eq i64 %129, %130
  br i1 %131, label %132, label %133

132:                                              ; preds = %75
  store i32 1, i32* %5, align 4
  br label %167

133:                                              ; preds = %75
  %134 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @scsp, i32 0, i32 34), align 8
  %135 = load i32, i32* %3, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* @SCSP_ENV_SUSTAIN, align 8
  %141 = icmp eq i64 %139, %140
  br i1 %141, label %142, label %143

142:                                              ; preds = %133
  store i32 2, i32* %5, align 4
  br label %166

143:                                              ; preds = %133
  %144 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @scsp, i32 0, i32 34), align 8
  %145 = load i32, i32* %3, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i64 %146
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = load i64, i64* @SCSP_ENV_DECAY, align 8
  %151 = icmp eq i64 %149, %150
  br i1 %151, label %152, label %153

152:                                              ; preds = %143
  store i32 3, i32* %5, align 4
  br label %165

153:                                              ; preds = %143
  %154 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @scsp, i32 0, i32 34), align 8
  %155 = load i32, i32* %3, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i64 %156
  %158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = load i64, i64* @SCSP_ENV_ATTACK, align 8
  %161 = icmp eq i64 %159, %160
  br i1 %161, label %162, label %163

162:                                              ; preds = %153
  store i32 4, i32* %5, align 4
  br label %164

163:                                              ; preds = %153
  store i32 0, i32* %5, align 4
  br label %164

164:                                              ; preds = %163, %162
  br label %165

165:                                              ; preds = %164, %152
  br label %166

166:                                              ; preds = %165, %142
  br label %167

167:                                              ; preds = %166, %132
  %168 = bitcast i32* %5 to i8*
  %169 = load i32*, i32** %2, align 8
  %170 = call i32 @ywrite(%struct.TYPE_7__* %7, i8* %168, i32 1, i32 1, i32* %169)
  %171 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @scsp, i32 0, i32 34), align 8
  %172 = load i32, i32* %3, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %171, i64 %173
  %175 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %174, i32 0, i32 2
  %176 = bitcast i32* %175 to i8*
  %177 = load i32*, i32** %2, align 8
  %178 = call i32 @ywrite(%struct.TYPE_7__* %7, i8* %176, i32 4, i32 1, i32* %177)
  %179 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @scsp, i32 0, i32 34), align 8
  %180 = load i32, i32* %3, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %179, i64 %181
  %183 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %182, i32 0, i32 1
  %184 = bitcast i32* %183 to i8*
  %185 = load i32*, i32** %2, align 8
  %186 = call i32 @ywrite(%struct.TYPE_7__* %7, i8* %184, i32 4, i32 1, i32* %185)
  br label %187

187:                                              ; preds = %167
  %188 = load i32, i32* %3, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %3, align 4
  br label %72

190:                                              ; preds = %72
  %191 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @scsp, i32 0, i32 0), align 8
  store i32 %191, i32* %4, align 4
  %192 = bitcast i32* %4 to i8*
  %193 = load i32*, i32** %2, align 8
  %194 = call i32 @ywrite(%struct.TYPE_7__* %7, i8* %192, i32 4, i32 1, i32* %193)
  %195 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @scsp, i32 0, i32 1), align 4
  store i32 %195, i32* %4, align 4
  %196 = bitcast i32* %4 to i8*
  %197 = load i32*, i32** %2, align 8
  %198 = call i32 @ywrite(%struct.TYPE_7__* %7, i8* %196, i32 4, i32 1, i32* %197)
  %199 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @scsp, i32 0, i32 2), align 8
  store i32 %199, i32* %4, align 4
  %200 = bitcast i32* %4 to i8*
  %201 = load i32*, i32** %2, align 8
  %202 = call i32 @ywrite(%struct.TYPE_7__* %7, i8* %200, i32 4, i32 1, i32* %201)
  %203 = load i32*, i32** %2, align 8
  %204 = call i32 @ywrite(%struct.TYPE_7__* %7, i8* bitcast (i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @scsp, i32 0, i32 33) to i8*), i32 4, i32 1, i32* %203)
  %205 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @scsp, i32 0, i32 3), align 4
  store i32 %205, i32* %4, align 4
  %206 = bitcast i32* %4 to i8*
  %207 = load i32*, i32** %2, align 8
  %208 = call i32 @ywrite(%struct.TYPE_7__* %7, i8* %206, i32 4, i32 1, i32* %207)
  %209 = load i32*, i32** %2, align 8
  %210 = call i32 @ywrite(%struct.TYPE_7__* %7, i8* bitcast (i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @scsp, i32 0, i32 32) to i8*), i32 4, i32 1, i32* %209)
  %211 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @scsp, i32 0, i32 4), align 8
  store i32 %211, i32* %4, align 4
  %212 = bitcast i32* %4 to i8*
  %213 = load i32*, i32** %2, align 8
  %214 = call i32 @ywrite(%struct.TYPE_7__* %7, i8* %212, i32 4, i32 1, i32* %213)
  %215 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @scsp, i32 0, i32 5), align 4
  %216 = shl i32 %215, 6
  %217 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @scsp, i32 0, i32 6), align 8
  %218 = shl i32 %217, 5
  %219 = or i32 %216, %218
  %220 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @scsp, i32 0, i32 7), align 4
  %221 = shl i32 %220, 4
  %222 = or i32 %219, %221
  store i32 %222, i32* %4, align 4
  %223 = bitcast i32* %4 to i8*
  %224 = load i32*, i32** %2, align 8
  %225 = call i32 @ywrite(%struct.TYPE_7__* %7, i8* %223, i32 4, i32 1, i32* %224)
  %226 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @scsp, i32 0, i32 8), align 8
  store i32 %226, i32* %4, align 4
  %227 = bitcast i32* %4 to i8*
  %228 = load i32*, i32** %2, align 8
  %229 = call i32 @ywrite(%struct.TYPE_7__* %7, i8* %227, i32 4, i32 1, i32* %228)
  %230 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @scsp, i32 0, i32 31), align 8
  %231 = inttoptr i64 %230 to i8*
  %232 = load i32*, i32** %2, align 8
  %233 = call i32 @ywrite(%struct.TYPE_7__* %7, i8* %231, i32 1, i32 4, i32* %232)
  %234 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @scsp, i32 0, i32 30), align 8
  %235 = inttoptr i64 %234 to i8*
  %236 = load i32*, i32** %2, align 8
  %237 = call i32 @ywrite(%struct.TYPE_7__* %7, i8* %235, i32 1, i32 4, i32* %236)
  %238 = load i32*, i32** %2, align 8
  %239 = call i32 @ywrite(%struct.TYPE_7__* %7, i8* bitcast (i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @scsp, i32 0, i32 29) to i8*), i32 1, i32 1, i32* %238)
  %240 = load i32*, i32** %2, align 8
  %241 = call i32 @ywrite(%struct.TYPE_7__* %7, i8* bitcast (i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @scsp, i32 0, i32 28) to i8*), i32 1, i32 1, i32* %240)
  %242 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @scsp, i32 0, i32 9), align 4
  %243 = shl i32 %242, 4
  %244 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @scsp, i32 0, i32 10), align 8
  %245 = shl i32 %244, 3
  %246 = or i32 %243, %245
  %247 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @scsp, i32 0, i32 11), align 4
  %248 = shl i32 %247, 2
  %249 = or i32 %246, %248
  %250 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @scsp, i32 0, i32 12), align 8
  %251 = shl i32 %250, 1
  %252 = or i32 %249, %251
  %253 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @scsp, i32 0, i32 13), align 4
  %254 = shl i32 %253, 0
  %255 = or i32 %252, %254
  store i32 %255, i32* %5, align 4
  %256 = bitcast i32* %5 to i8*
  %257 = load i32*, i32** %2, align 8
  %258 = call i32 @ywrite(%struct.TYPE_7__* %7, i8* %256, i32 1, i32 1, i32* %257)
  %259 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @scsp, i32 0, i32 14), align 8
  store i32 %259, i32* %4, align 4
  %260 = bitcast i32* %4 to i8*
  %261 = load i32*, i32** %2, align 8
  %262 = call i32 @ywrite(%struct.TYPE_7__* %7, i8* %260, i32 4, i32 1, i32* %261)
  %263 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @scsp, i32 0, i32 15), align 4
  store i32 %263, i32* %4, align 4
  %264 = bitcast i32* %4 to i8*
  %265 = load i32*, i32** %2, align 8
  %266 = call i32 @ywrite(%struct.TYPE_7__* %7, i8* %264, i32 4, i32 1, i32* %265)
  %267 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @scsp, i32 0, i32 16), align 8
  store i32 %267, i32* %4, align 4
  %268 = bitcast i32* %4 to i8*
  %269 = load i32*, i32** %2, align 8
  %270 = call i32 @ywrite(%struct.TYPE_7__* %7, i8* %268, i32 4, i32 1, i32* %269)
  %271 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @scsp, i32 0, i32 17), align 4
  store i32 %271, i32* %4, align 4
  %272 = bitcast i32* %4 to i8*
  %273 = load i32*, i32** %2, align 8
  %274 = call i32 @ywrite(%struct.TYPE_7__* %7, i8* %272, i32 4, i32 1, i32* %273)
  %275 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @scsp, i32 0, i32 18), align 8
  store i32 %275, i32* %4, align 4
  %276 = bitcast i32* %4 to i8*
  %277 = load i32*, i32** %2, align 8
  %278 = call i32 @ywrite(%struct.TYPE_7__* %7, i8* %276, i32 4, i32 1, i32* %277)
  %279 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @scsp, i32 0, i32 19), align 4
  store i32 %279, i32* %4, align 4
  %280 = bitcast i32* %4 to i8*
  %281 = load i32*, i32** %2, align 8
  %282 = call i32 @ywrite(%struct.TYPE_7__* %7, i8* %280, i32 4, i32 1, i32* %281)
  %283 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @scsp, i32 0, i32 20), align 8
  store i32 %283, i32* %4, align 4
  %284 = bitcast i32* %4 to i8*
  %285 = load i32*, i32** %2, align 8
  %286 = call i32 @ywrite(%struct.TYPE_7__* %7, i8* %284, i32 4, i32 1, i32* %285)
  %287 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @scsp, i32 0, i32 21), align 4
  store i32 %287, i32* %4, align 4
  %288 = bitcast i32* %4 to i8*
  %289 = load i32*, i32** %2, align 8
  %290 = call i32 @ywrite(%struct.TYPE_7__* %7, i8* %288, i32 4, i32 1, i32* %289)
  %291 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @scsp, i32 0, i32 22), align 8
  store i32 %291, i32* %4, align 4
  %292 = bitcast i32* %4 to i8*
  %293 = load i32*, i32** %2, align 8
  %294 = call i32 @ywrite(%struct.TYPE_7__* %7, i8* %292, i32 4, i32 1, i32* %293)
  %295 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @scsp, i32 0, i32 23), align 4
  store i32 %295, i32* %4, align 4
  %296 = bitcast i32* %4 to i8*
  %297 = load i32*, i32** %2, align 8
  %298 = call i32 @ywrite(%struct.TYPE_7__* %7, i8* %296, i32 4, i32 1, i32* %297)
  %299 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @scsp, i32 0, i32 24), align 8
  store i32 %299, i32* %4, align 4
  %300 = bitcast i32* %4 to i8*
  %301 = load i32*, i32** %2, align 8
  %302 = call i32 @ywrite(%struct.TYPE_7__* %7, i8* %300, i32 4, i32 1, i32* %301)
  %303 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @scsp, i32 0, i32 25), align 4
  store i32 %303, i32* %4, align 4
  %304 = bitcast i32* %4 to i8*
  %305 = load i32*, i32** %2, align 8
  %306 = call i32 @ywrite(%struct.TYPE_7__* %7, i8* %304, i32 4, i32 1, i32* %305)
  %307 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @scsp, i32 0, i32 26), align 8
  store i32 %307, i32* %4, align 4
  %308 = bitcast i32* %4 to i8*
  %309 = load i32*, i32** %2, align 8
  %310 = call i32 @ywrite(%struct.TYPE_7__* %7, i8* %308, i32 4, i32 1, i32* %309)
  %311 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @scsp, i32 0, i32 27), align 8
  %312 = inttoptr i64 %311 to i8*
  %313 = load i32*, i32** %2, align 8
  %314 = call i32 @ywrite(%struct.TYPE_7__* %7, i8* %312, i32 4, i32 64, i32* %313)
  %315 = load i32*, i32** %2, align 8
  %316 = load i32, i32* %6, align 4
  %317 = call i32 @StateFinishHeader(i32* %315, i32 %316)
  ret i32 %317
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @ScspSyncThread(...) #2

declare dso_local i32 @StateWriteHeader(i32*, i8*, i32) #2

declare dso_local i32 @ywrite(%struct.TYPE_7__*, i8*, i32, i32, i32*) #2

declare dso_local i32 @StateFinishHeader(i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
