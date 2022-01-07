; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_cl_cin.c_RoQInterrupt.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_cl_cin.c_RoQInterrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32*, i64, i64* }
%struct.TYPE_5__ = type { i32, i64, i64, i64, i64, i32, i32, i8, i8, i32, i32, i32, i32, i32, i32, i64, i32, i32, i64, i64, i32 (i32*, i32*)*, i32*, i32, i32 (i32*, i32*)*, i32 }
%struct.TYPE_4__ = type { i32 }

@currentHandle = common dso_local global i64 0, align 8
@cin = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@cinTable = common dso_local global %struct.TYPE_5__* null, align 8
@qfalse = common dso_local global i64 0, align 8
@FMV_EOF = common dso_local global i64 0, align 8
@FMV_IDLE = common dso_local global i8* null, align 8
@qtrue = common dso_local global i32 0, align 4
@s_soundtime = common dso_local global i32 0, align 4
@s_rawend = common dso_local global i32 0, align 4
@com_timescale = common dso_local global %struct.TYPE_4__* null, align 8
@.str = private unnamed_addr constant [32 x i8] c"roq_size>65536||roq_id==0x1084\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @RoQInterrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @RoQInterrupt() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca [32768 x i16], align 16
  %3 = alloca i32, align 4
  %4 = load i64, i64* @currentHandle, align 8
  %5 = icmp ult i64 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  br label %517

7:                                                ; preds = %0
  %8 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cin, i32 0, i32 0), align 8
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cinTable, align 8
  %10 = load i64, i64* @currentHandle, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i64 %10
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = add nsw i32 %13, 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cinTable, align 8
  %16 = load i64, i64* @currentHandle, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 24
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @Sys_StreamedRead(i32* %8, i32 %14, i32 1, i32 %19)
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cinTable, align 8
  %22 = load i64, i64* @currentHandle, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cinTable, align 8
  %27 = load i64, i64* @currentHandle, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = icmp sge i64 %25, %30
  br i1 %31, label %32, label %64

32:                                               ; preds = %7
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cinTable, align 8
  %34 = load i64, i64* @currentHandle, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 3
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @qfalse, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %56

40:                                               ; preds = %32
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cinTable, align 8
  %42 = load i64, i64* @currentHandle, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 15
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %40
  %48 = call i32 (...) @RoQReset()
  br label %55

49:                                               ; preds = %40
  %50 = load i64, i64* @FMV_EOF, align 8
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cinTable, align 8
  %52 = load i64, i64* @currentHandle, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 4
  store i64 %50, i64* %54, align 8
  br label %55

55:                                               ; preds = %49, %47
  br label %63

56:                                               ; preds = %32
  %57 = load i8*, i8** @FMV_IDLE, align 8
  %58 = ptrtoint i8* %57 to i64
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cinTable, align 8
  %60 = load i64, i64* @currentHandle, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 4
  store i64 %58, i64* %62, align 8
  br label %63

63:                                               ; preds = %56, %55
  br label %517

64:                                               ; preds = %7
  %65 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cin, i32 0, i32 0), align 8
  store i32* %65, i32** %1, align 8
  br label %66

66:                                               ; preds = %494, %64
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cinTable, align 8
  %68 = load i64, i64* @currentHandle, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 5
  %71 = load i32, i32* %70, align 8
  switch i32 %71, label %334 [
    i32 130, label %72
    i32 135, label %204
    i32 129, label %213
    i32 128, label %240
    i32 132, label %277
    i32 134, label %314
    i32 133, label %328
    i32 131, label %333
  ]

72:                                               ; preds = %66
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cinTable, align 8
  %74 = load i64, i64* @currentHandle, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 6
  %77 = load i32, i32* %76, align 4
  %78 = and i32 %77, 1
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %125

80:                                               ; preds = %72
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cinTable, align 8
  %82 = load i64, i64* @currentHandle, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 21
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 1
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cinTable, align 8
  %89 = load i64, i64* @currentHandle, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 22
  store i32 %87, i32* %91, align 8
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cinTable, align 8
  %93 = load i64, i64* @currentHandle, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 7
  %96 = load i8, i8* %95, align 8
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cinTable, align 8
  %98 = load i64, i64* @currentHandle, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 8
  %101 = load i8, i8* %100, align 1
  %102 = call i32 @RoQPrepMcomp(i8 signext %96, i8 signext %101)
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cinTable, align 8
  %104 = load i64, i64* @currentHandle, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 23
  %107 = load i32 (i32*, i32*)*, i32 (i32*, i32*)** %106, align 8
  %108 = load i64*, i64** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cin, i32 0, i32 2), align 8
  %109 = getelementptr inbounds i64, i64* %108, i64 1
  %110 = load i64, i64* %109, align 8
  %111 = inttoptr i64 %110 to i32*
  %112 = load i32*, i32** %1, align 8
  %113 = call i32 %107(i32* %111, i32* %112)
  %114 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cin, i32 0, i32 1), align 8
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cinTable, align 8
  %116 = load i64, i64* @currentHandle, align 8
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 18
  %119 = load i64, i64* %118, align 8
  %120 = add nsw i64 %114, %119
  %121 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cinTable, align 8
  %122 = load i64, i64* @currentHandle, align 8
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 19
  store i64 %120, i64* %124, align 8
  br label %164

125:                                              ; preds = %72
  %126 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cinTable, align 8
  %127 = load i64, i64* @currentHandle, align 8
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 21
  %130 = load i32*, i32** %129, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 0
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cinTable, align 8
  %134 = load i64, i64* @currentHandle, align 8
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 22
  store i32 %132, i32* %136, align 8
  %137 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cinTable, align 8
  %138 = load i64, i64* @currentHandle, align 8
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i64 %138
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 7
  %141 = load i8, i8* %140, align 8
  %142 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cinTable, align 8
  %143 = load i64, i64* @currentHandle, align 8
  %144 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %144, i32 0, i32 8
  %146 = load i8, i8* %145, align 1
  %147 = call i32 @RoQPrepMcomp(i8 signext %141, i8 signext %146)
  %148 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cinTable, align 8
  %149 = load i64, i64* @currentHandle, align 8
  %150 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %148, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %150, i32 0, i32 20
  %152 = load i32 (i32*, i32*)*, i32 (i32*, i32*)** %151, align 8
  %153 = load i64*, i64** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cin, i32 0, i32 2), align 8
  %154 = getelementptr inbounds i64, i64* %153, i64 0
  %155 = load i64, i64* %154, align 8
  %156 = inttoptr i64 %155 to i32*
  %157 = load i32*, i32** %1, align 8
  %158 = call i32 %152(i32* %156, i32* %157)
  %159 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cin, i32 0, i32 1), align 8
  %160 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cinTable, align 8
  %161 = load i64, i64* @currentHandle, align 8
  %162 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %160, i64 %161
  %163 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %162, i32 0, i32 19
  store i64 %159, i64* %163, align 8
  br label %164

164:                                              ; preds = %125, %80
  %165 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cinTable, align 8
  %166 = load i64, i64* @currentHandle, align 8
  %167 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %165, i64 %166
  %168 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %167, i32 0, i32 6
  %169 = load i32, i32* %168, align 4
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %171, label %192

171:                                              ; preds = %164
  %172 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cin, i32 0, i32 1), align 8
  %173 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cinTable, align 8
  %174 = load i64, i64* @currentHandle, align 8
  %175 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %173, i64 %174
  %176 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %175, i32 0, i32 18
  %177 = load i64, i64* %176, align 8
  %178 = add nsw i64 %172, %177
  %179 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cin, i32 0, i32 1), align 8
  %180 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cinTable, align 8
  %181 = load i64, i64* @currentHandle, align 8
  %182 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %180, i64 %181
  %183 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %182, i32 0, i32 9
  %184 = load i32, i32* %183, align 4
  %185 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cinTable, align 8
  %186 = load i64, i64* @currentHandle, align 8
  %187 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %185, i64 %186
  %188 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %187, i32 0, i32 10
  %189 = load i32, i32* %188, align 8
  %190 = mul nsw i32 %184, %189
  %191 = call i32 @Com_Memcpy(i64 %178, i64 %179, i32 %190)
  br label %192

192:                                              ; preds = %171, %164
  %193 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cinTable, align 8
  %194 = load i64, i64* @currentHandle, align 8
  %195 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %193, i64 %194
  %196 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %195, i32 0, i32 6
  %197 = load i32, i32* %196, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %196, align 4
  %199 = load i32, i32* @qtrue, align 4
  %200 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cinTable, align 8
  %201 = load i64, i64* @currentHandle, align 8
  %202 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %200, i64 %201
  %203 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %202, i32 0, i32 17
  store i32 %199, i32* %203, align 4
  br label %340

204:                                              ; preds = %66
  %205 = load i32*, i32** %1, align 8
  %206 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cinTable, align 8
  %207 = load i64, i64* @currentHandle, align 8
  %208 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %206, i64 %207
  %209 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %208, i32 0, i32 11
  %210 = load i32, i32* %209, align 4
  %211 = trunc i32 %210 to i16
  %212 = call i32 @decodeCodeBook(i32* %205, i16 zeroext %211)
  br label %340

213:                                              ; preds = %66
  %214 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cinTable, align 8
  %215 = load i64, i64* @currentHandle, align 8
  %216 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %214, i64 %215
  %217 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %216, i32 0, i32 16
  %218 = load i32, i32* %217, align 8
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %239, label %220

220:                                              ; preds = %213
  %221 = load i32*, i32** %1, align 8
  %222 = getelementptr inbounds [32768 x i16], [32768 x i16]* %2, i64 0, i64 0
  %223 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cinTable, align 8
  %224 = load i64, i64* @currentHandle, align 8
  %225 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %223, i64 %224
  %226 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 8
  %228 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cinTable, align 8
  %229 = load i64, i64* @currentHandle, align 8
  %230 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %228, i64 %229
  %231 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %230, i32 0, i32 11
  %232 = load i32, i32* %231, align 4
  %233 = trunc i32 %232 to i16
  %234 = call i32 @RllDecodeMonoToStereo(i32* %221, i16* %222, i32 %227, i32 0, i16 zeroext %233)
  store i32 %234, i32* %3, align 4
  %235 = load i32, i32* %3, align 4
  %236 = getelementptr inbounds [32768 x i16], [32768 x i16]* %2, i64 0, i64 0
  %237 = bitcast i16* %236 to i32*
  %238 = call i32 @S_RawSamples(i32 %235, i32 22050, i32 2, i32 1, i32* %237, float 1.000000e+00)
  br label %239

239:                                              ; preds = %220, %213
  br label %340

240:                                              ; preds = %66
  %241 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cinTable, align 8
  %242 = load i64, i64* @currentHandle, align 8
  %243 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %241, i64 %242
  %244 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %243, i32 0, i32 16
  %245 = load i32, i32* %244, align 8
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %276, label %247

247:                                              ; preds = %240
  %248 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cinTable, align 8
  %249 = load i64, i64* @currentHandle, align 8
  %250 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %248, i64 %249
  %251 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %250, i32 0, i32 6
  %252 = load i32, i32* %251, align 4
  %253 = icmp eq i32 %252, -1
  br i1 %253, label %254, label %257

254:                                              ; preds = %247
  %255 = call i32 (...) @S_Update()
  %256 = load i32, i32* @s_soundtime, align 4
  store i32 %256, i32* @s_rawend, align 4
  br label %257

257:                                              ; preds = %254, %247
  %258 = load i32*, i32** %1, align 8
  %259 = getelementptr inbounds [32768 x i16], [32768 x i16]* %2, i64 0, i64 0
  %260 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cinTable, align 8
  %261 = load i64, i64* @currentHandle, align 8
  %262 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %260, i64 %261
  %263 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 8
  %265 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cinTable, align 8
  %266 = load i64, i64* @currentHandle, align 8
  %267 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %265, i64 %266
  %268 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %267, i32 0, i32 11
  %269 = load i32, i32* %268, align 4
  %270 = trunc i32 %269 to i16
  %271 = call i32 @RllDecodeStereoToStereo(i32* %258, i16* %259, i32 %264, i32 0, i16 zeroext %270)
  store i32 %271, i32* %3, align 4
  %272 = load i32, i32* %3, align 4
  %273 = getelementptr inbounds [32768 x i16], [32768 x i16]* %2, i64 0, i64 0
  %274 = bitcast i16* %273 to i32*
  %275 = call i32 @S_RawSamples(i32 %272, i32 22050, i32 2, i32 2, i32* %274, float 1.000000e+00)
  br label %276

276:                                              ; preds = %257, %240
  br label %340

277:                                              ; preds = %66
  %278 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cinTable, align 8
  %279 = load i64, i64* @currentHandle, align 8
  %280 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %278, i64 %279
  %281 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %280, i32 0, i32 6
  %282 = load i32, i32* %281, align 4
  %283 = icmp eq i32 %282, -1
  br i1 %283, label %284, label %301

284:                                              ; preds = %277
  %285 = load i32*, i32** %1, align 8
  %286 = call i32 @readQuadInfo(i32* %285)
  %287 = call i32 @setupQuad(i32 0, i32 0)
  %288 = call i32 (...) @CL_ScaledMilliseconds()
  %289 = load %struct.TYPE_4__*, %struct.TYPE_4__** @com_timescale, align 8
  %290 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %289, i32 0, i32 0
  %291 = load i32, i32* %290, align 4
  %292 = mul nsw i32 %288, %291
  %293 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cinTable, align 8
  %294 = load i64, i64* @currentHandle, align 8
  %295 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %293, i64 %294
  %296 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %295, i32 0, i32 13
  store i32 %292, i32* %296, align 4
  %297 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cinTable, align 8
  %298 = load i64, i64* @currentHandle, align 8
  %299 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %297, i64 %298
  %300 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %299, i32 0, i32 12
  store i32 %292, i32* %300, align 8
  br label %301

301:                                              ; preds = %284, %277
  %302 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cinTable, align 8
  %303 = load i64, i64* @currentHandle, align 8
  %304 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %302, i64 %303
  %305 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %304, i32 0, i32 6
  %306 = load i32, i32* %305, align 4
  %307 = icmp ne i32 %306, 1
  br i1 %307, label %308, label %313

308:                                              ; preds = %301
  %309 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cinTable, align 8
  %310 = load i64, i64* @currentHandle, align 8
  %311 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %309, i64 %310
  %312 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %311, i32 0, i32 6
  store i32 0, i32* %312, align 4
  br label %313

313:                                              ; preds = %308, %301
  br label %340

314:                                              ; preds = %66
  %315 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cinTable, align 8
  %316 = load i64, i64* @currentHandle, align 8
  %317 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %315, i64 %316
  %318 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %317, i32 0, i32 11
  %319 = load i32, i32* %318, align 4
  %320 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cinTable, align 8
  %321 = load i64, i64* @currentHandle, align 8
  %322 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %320, i64 %321
  %323 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %322, i32 0, i32 14
  store i32 %319, i32* %323, align 8
  %324 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cinTable, align 8
  %325 = load i64, i64* @currentHandle, align 8
  %326 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %324, i64 %325
  %327 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %326, i32 0, i32 0
  store i32 0, i32* %327, align 8
  br label %340

328:                                              ; preds = %66
  %329 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cinTable, align 8
  %330 = load i64, i64* @currentHandle, align 8
  %331 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %329, i64 %330
  %332 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %331, i32 0, i32 0
  store i32 0, i32* %332, align 8
  br label %340

333:                                              ; preds = %66
  br label %340

334:                                              ; preds = %66
  %335 = load i64, i64* @FMV_EOF, align 8
  %336 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cinTable, align 8
  %337 = load i64, i64* @currentHandle, align 8
  %338 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %336, i64 %337
  %339 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %338, i32 0, i32 4
  store i64 %335, i64* %339, align 8
  br label %340

340:                                              ; preds = %334, %333, %328, %314, %313, %276, %239, %204, %192
  %341 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cinTable, align 8
  %342 = load i64, i64* @currentHandle, align 8
  %343 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %341, i64 %342
  %344 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %343, i32 0, i32 1
  %345 = load i64, i64* %344, align 8
  %346 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cinTable, align 8
  %347 = load i64, i64* @currentHandle, align 8
  %348 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %346, i64 %347
  %349 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %348, i32 0, i32 2
  %350 = load i64, i64* %349, align 8
  %351 = icmp sge i64 %345, %350
  br i1 %351, label %352, label %384

352:                                              ; preds = %340
  %353 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cinTable, align 8
  %354 = load i64, i64* @currentHandle, align 8
  %355 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %353, i64 %354
  %356 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %355, i32 0, i32 3
  %357 = load i64, i64* %356, align 8
  %358 = load i64, i64* @qfalse, align 8
  %359 = icmp eq i64 %357, %358
  br i1 %359, label %360, label %376

360:                                              ; preds = %352
  %361 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cinTable, align 8
  %362 = load i64, i64* @currentHandle, align 8
  %363 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %361, i64 %362
  %364 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %363, i32 0, i32 15
  %365 = load i64, i64* %364, align 8
  %366 = icmp ne i64 %365, 0
  br i1 %366, label %367, label %369

367:                                              ; preds = %360
  %368 = call i32 (...) @RoQReset()
  br label %375

369:                                              ; preds = %360
  %370 = load i64, i64* @FMV_EOF, align 8
  %371 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cinTable, align 8
  %372 = load i64, i64* @currentHandle, align 8
  %373 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %371, i64 %372
  %374 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %373, i32 0, i32 4
  store i64 %370, i64* %374, align 8
  br label %375

375:                                              ; preds = %369, %367
  br label %383

376:                                              ; preds = %352
  %377 = load i8*, i8** @FMV_IDLE, align 8
  %378 = ptrtoint i8* %377 to i64
  %379 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cinTable, align 8
  %380 = load i64, i64* @currentHandle, align 8
  %381 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %379, i64 %380
  %382 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %381, i32 0, i32 4
  store i64 %378, i64* %382, align 8
  br label %383

383:                                              ; preds = %376, %375
  br label %517

384:                                              ; preds = %340
  %385 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cinTable, align 8
  %386 = load i64, i64* @currentHandle, align 8
  %387 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %385, i64 %386
  %388 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %387, i32 0, i32 0
  %389 = load i32, i32* %388, align 8
  %390 = load i32*, i32** %1, align 8
  %391 = sext i32 %389 to i64
  %392 = getelementptr inbounds i32, i32* %390, i64 %391
  store i32* %392, i32** %1, align 8
  %393 = load i32*, i32** %1, align 8
  %394 = getelementptr inbounds i32, i32* %393, i64 0
  %395 = load i32, i32* %394, align 4
  %396 = load i32*, i32** %1, align 8
  %397 = getelementptr inbounds i32, i32* %396, i64 1
  %398 = load i32, i32* %397, align 4
  %399 = mul nsw i32 %398, 256
  %400 = add nsw i32 %395, %399
  %401 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cinTable, align 8
  %402 = load i64, i64* @currentHandle, align 8
  %403 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %401, i64 %402
  %404 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %403, i32 0, i32 5
  store i32 %400, i32* %404, align 8
  %405 = load i32*, i32** %1, align 8
  %406 = getelementptr inbounds i32, i32* %405, i64 2
  %407 = load i32, i32* %406, align 4
  %408 = load i32*, i32** %1, align 8
  %409 = getelementptr inbounds i32, i32* %408, i64 3
  %410 = load i32, i32* %409, align 4
  %411 = mul nsw i32 %410, 256
  %412 = add nsw i32 %407, %411
  %413 = load i32*, i32** %1, align 8
  %414 = getelementptr inbounds i32, i32* %413, i64 4
  %415 = load i32, i32* %414, align 4
  %416 = mul nsw i32 %415, 65536
  %417 = add nsw i32 %412, %416
  %418 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cinTable, align 8
  %419 = load i64, i64* @currentHandle, align 8
  %420 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %418, i64 %419
  %421 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %420, i32 0, i32 0
  store i32 %417, i32* %421, align 8
  %422 = load i32*, i32** %1, align 8
  %423 = getelementptr inbounds i32, i32* %422, i64 6
  %424 = load i32, i32* %423, align 4
  %425 = load i32*, i32** %1, align 8
  %426 = getelementptr inbounds i32, i32* %425, i64 7
  %427 = load i32, i32* %426, align 4
  %428 = mul nsw i32 %427, 256
  %429 = add nsw i32 %424, %428
  %430 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cinTable, align 8
  %431 = load i64, i64* @currentHandle, align 8
  %432 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %430, i64 %431
  %433 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %432, i32 0, i32 11
  store i32 %429, i32* %433, align 4
  %434 = load i32*, i32** %1, align 8
  %435 = getelementptr inbounds i32, i32* %434, i64 7
  %436 = load i32, i32* %435, align 4
  %437 = trunc i32 %436 to i8
  %438 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cinTable, align 8
  %439 = load i64, i64* @currentHandle, align 8
  %440 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %438, i64 %439
  %441 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %440, i32 0, i32 7
  store i8 %437, i8* %441, align 8
  %442 = load i32*, i32** %1, align 8
  %443 = getelementptr inbounds i32, i32* %442, i64 6
  %444 = load i32, i32* %443, align 4
  %445 = trunc i32 %444 to i8
  %446 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cinTable, align 8
  %447 = load i64, i64* @currentHandle, align 8
  %448 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %446, i64 %447
  %449 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %448, i32 0, i32 8
  store i8 %445, i8* %449, align 1
  %450 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cinTable, align 8
  %451 = load i64, i64* @currentHandle, align 8
  %452 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %450, i64 %451
  %453 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %452, i32 0, i32 0
  %454 = load i32, i32* %453, align 8
  %455 = icmp sgt i32 %454, 65536
  br i1 %455, label %463, label %456

456:                                              ; preds = %384
  %457 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cinTable, align 8
  %458 = load i64, i64* @currentHandle, align 8
  %459 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %457, i64 %458
  %460 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %459, i32 0, i32 5
  %461 = load i32, i32* %460, align 8
  %462 = icmp eq i32 %461, 4228
  br i1 %462, label %463, label %479

463:                                              ; preds = %456, %384
  %464 = call i32 @Com_DPrintf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %465 = load i64, i64* @FMV_EOF, align 8
  %466 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cinTable, align 8
  %467 = load i64, i64* @currentHandle, align 8
  %468 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %466, i64 %467
  %469 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %468, i32 0, i32 4
  store i64 %465, i64* %469, align 8
  %470 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cinTable, align 8
  %471 = load i64, i64* @currentHandle, align 8
  %472 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %470, i64 %471
  %473 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %472, i32 0, i32 15
  %474 = load i64, i64* %473, align 8
  %475 = icmp ne i64 %474, 0
  br i1 %475, label %476, label %478

476:                                              ; preds = %463
  %477 = call i32 (...) @RoQReset()
  br label %478

478:                                              ; preds = %476, %463
  br label %517

479:                                              ; preds = %456
  %480 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cinTable, align 8
  %481 = load i64, i64* @currentHandle, align 8
  %482 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %480, i64 %481
  %483 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %482, i32 0, i32 14
  %484 = load i32, i32* %483, align 8
  %485 = icmp ne i32 %484, 0
  br i1 %485, label %486, label %503

486:                                              ; preds = %479
  %487 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cinTable, align 8
  %488 = load i64, i64* @currentHandle, align 8
  %489 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %487, i64 %488
  %490 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %489, i32 0, i32 4
  %491 = load i64, i64* %490, align 8
  %492 = load i64, i64* @FMV_EOF, align 8
  %493 = icmp ne i64 %491, %492
  br i1 %493, label %494, label %503

494:                                              ; preds = %486
  %495 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cinTable, align 8
  %496 = load i64, i64* @currentHandle, align 8
  %497 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %495, i64 %496
  %498 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %497, i32 0, i32 14
  %499 = load i32, i32* %498, align 8
  %500 = add nsw i32 %499, -1
  store i32 %500, i32* %498, align 8
  %501 = load i32*, i32** %1, align 8
  %502 = getelementptr inbounds i32, i32* %501, i64 8
  store i32* %502, i32** %1, align 8
  br label %66

503:                                              ; preds = %486, %479
  %504 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cinTable, align 8
  %505 = load i64, i64* @currentHandle, align 8
  %506 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %504, i64 %505
  %507 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %506, i32 0, i32 0
  %508 = load i32, i32* %507, align 8
  %509 = add nsw i32 %508, 8
  %510 = sext i32 %509 to i64
  %511 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cinTable, align 8
  %512 = load i64, i64* @currentHandle, align 8
  %513 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %511, i64 %512
  %514 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %513, i32 0, i32 1
  %515 = load i64, i64* %514, align 8
  %516 = add nsw i64 %515, %510
  store i64 %516, i64* %514, align 8
  br label %517

517:                                              ; preds = %503, %478, %383, %63, %6
  ret void
}

declare dso_local i32 @Sys_StreamedRead(i32*, i32, i32, i32) #1

declare dso_local i32 @RoQReset(...) #1

declare dso_local i32 @RoQPrepMcomp(i8 signext, i8 signext) #1

declare dso_local i32 @Com_Memcpy(i64, i64, i32) #1

declare dso_local i32 @decodeCodeBook(i32*, i16 zeroext) #1

declare dso_local i32 @RllDecodeMonoToStereo(i32*, i16*, i32, i32, i16 zeroext) #1

declare dso_local i32 @S_RawSamples(i32, i32, i32, i32, i32*, float) #1

declare dso_local i32 @S_Update(...) #1

declare dso_local i32 @RllDecodeStereoToStereo(i32*, i16*, i32, i32, i16 zeroext) #1

declare dso_local i32 @readQuadInfo(i32*) #1

declare dso_local i32 @setupQuad(i32, i32) #1

declare dso_local i32 @CL_ScaledMilliseconds(...) #1

declare dso_local i32 @Com_DPrintf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
