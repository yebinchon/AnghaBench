; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_cl_main.c_CL_UpdateVisiblePings_f.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_cl_main.c_CL_UpdateVisiblePings_f.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, i64, i32*, i32, %struct.TYPE_8__*, %struct.TYPE_8__*, %struct.TYPE_8__*, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32, i64 }
%struct.TYPE_11__ = type { %struct.TYPE_9__, i64, i32 }
%struct.TYPE_9__ = type { i32 }

@MAX_STRING_CHARS = common dso_local global i32 0, align 4
@qfalse = common dso_local global i32 0, align 4
@cls = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@MAX_PINGREQUESTS = common dso_local global i32 0, align 4
@MAX_GLOBAL_SERVERS = common dso_local global i32 0, align 4
@MAX_OTHER_SERVERS = common dso_local global i32 0, align 4
@cl_pinglist = common dso_local global %struct.TYPE_11__* null, align 8
@qtrue = common dso_local global i32 0, align 4
@NS_CLIENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"getinfo xxx\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CL_UpdateVisiblePings_f(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_8__*, align 8
  %13 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %14 = load i32, i32* @MAX_STRING_CHARS, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %6, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %7, align 8
  %18 = load i32, i32* @qfalse, align 4
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %3, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %1
  %22 = load i32, i32* %3, align 4
  %23 = icmp sgt i32 %22, 131
  br i1 %23, label %24, label %26

24:                                               ; preds = %21, %1
  %25 = load i32, i32* @qfalse, align 4
  store i32 %25, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %249

26:                                               ; preds = %21
  %27 = load i32, i32* %3, align 4
  store i32 %27, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cls, i32 0, i32 0), align 8
  %28 = call i32 (...) @CL_GetPingQueueCount()
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @MAX_PINGREQUESTS, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %213

32:                                               ; preds = %26
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %12, align 8
  %33 = load i32, i32* %3, align 4
  %34 = icmp eq i32 %33, 130
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  %36 = load i32, i32* @MAX_GLOBAL_SERVERS, align 4
  br label %39

37:                                               ; preds = %32
  %38 = load i32, i32* @MAX_OTHER_SERVERS, align 4
  br label %39

39:                                               ; preds = %37, %35
  %40 = phi i32 [ %36, %35 ], [ %38, %37 ]
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %3, align 4
  switch i32 %41, label %58 [
    i32 129, label %42
    i32 128, label %46
    i32 130, label %50
    i32 131, label %54
  ]

42:                                               ; preds = %39
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cls, i32 0, i32 11), align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i64 0
  store %struct.TYPE_8__* %44, %struct.TYPE_8__** %12, align 8
  %45 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cls, i32 0, i32 1), align 4
  store i32 %45, i32* %9, align 4
  br label %58

46:                                               ; preds = %39
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cls, i32 0, i32 10), align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i64 0
  store %struct.TYPE_8__* %48, %struct.TYPE_8__** %12, align 8
  %49 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cls, i32 0, i32 2), align 8
  store i32 %49, i32* %9, align 4
  br label %58

50:                                               ; preds = %39
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cls, i32 0, i32 9), align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i64 0
  store %struct.TYPE_8__* %52, %struct.TYPE_8__** %12, align 8
  %53 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cls, i32 0, i32 3), align 4
  store i32 %53, i32* %9, align 4
  br label %58

54:                                               ; preds = %39
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cls, i32 0, i32 8), align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i64 0
  store %struct.TYPE_8__* %56, %struct.TYPE_8__** %12, align 8
  %57 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cls, i32 0, i32 4), align 8
  store i32 %57, i32* %9, align 4
  br label %58

58:                                               ; preds = %39, %54, %50, %46, %42
  store i32 0, i32* %5, align 4
  br label %59

59:                                               ; preds = %209, %58
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* %9, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %212

63:                                               ; preds = %59
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %65 = load i32, i32* %5, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %208

71:                                               ; preds = %63
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %73 = load i32, i32* %5, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = icmp eq i32 %77, -1
  br i1 %78, label %79, label %179

79:                                               ; preds = %71
  %80 = load i32, i32* %4, align 4
  %81 = load i32, i32* @MAX_PINGREQUESTS, align 4
  %82 = icmp sge i32 %80, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %79
  br label %212

84:                                               ; preds = %79
  store i32 0, i32* %13, align 4
  br label %85

85:                                               ; preds = %117, %84
  %86 = load i32, i32* %13, align 4
  %87 = load i32, i32* @MAX_PINGREQUESTS, align 4
  %88 = icmp slt i32 %86, %87
  br i1 %88, label %89, label %120

89:                                               ; preds = %85
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** @cl_pinglist, align 8
  %91 = load i32, i32* %13, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %99, label %98

98:                                               ; preds = %89
  br label %117

99:                                               ; preds = %89
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** @cl_pinglist, align 8
  %101 = load i32, i32* %13, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 0
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %106 = load i32, i32* %5, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = call i64 @NET_CompareAdr(i32 %112, i32 %110)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %99
  br label %120

116:                                              ; preds = %99
  br label %117

117:                                              ; preds = %116, %98
  %118 = load i32, i32* %13, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %13, align 4
  br label %85

120:                                              ; preds = %115, %85
  %121 = load i32, i32* %13, align 4
  %122 = load i32, i32* @MAX_PINGREQUESTS, align 4
  %123 = icmp sge i32 %121, %122
  br i1 %123, label %124, label %178

124:                                              ; preds = %120
  %125 = load i32, i32* @qtrue, align 4
  store i32 %125, i32* %10, align 4
  store i32 0, i32* %13, align 4
  br label %126

126:                                              ; preds = %141, %124
  %127 = load i32, i32* %13, align 4
  %128 = load i32, i32* @MAX_PINGREQUESTS, align 4
  %129 = icmp slt i32 %127, %128
  br i1 %129, label %130, label %144

130:                                              ; preds = %126
  %131 = load %struct.TYPE_11__*, %struct.TYPE_11__** @cl_pinglist, align 8
  %132 = load i32, i32* %13, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %131, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %140, label %139

139:                                              ; preds = %130
  br label %144

140:                                              ; preds = %130
  br label %141

141:                                              ; preds = %140
  %142 = load i32, i32* %13, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %13, align 4
  br label %126

144:                                              ; preds = %139, %126
  %145 = load %struct.TYPE_11__*, %struct.TYPE_11__** @cl_pinglist, align 8
  %146 = load i32, i32* %13, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %145, i64 %147
  %149 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %148, i32 0, i32 0
  %150 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %151 = load i32, i32* %5, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i64 %152
  %154 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %153, i32 0, i32 1
  %155 = call i32 @memcpy(%struct.TYPE_9__* %149, i32* %154, i32 4)
  %156 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cls, i32 0, i32 7), align 8
  %157 = load %struct.TYPE_11__*, %struct.TYPE_11__** @cl_pinglist, align 8
  %158 = load i32, i32* %13, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %157, i64 %159
  %161 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %160, i32 0, i32 2
  store i32 %156, i32* %161, align 8
  %162 = load %struct.TYPE_11__*, %struct.TYPE_11__** @cl_pinglist, align 8
  %163 = load i32, i32* %13, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %162, i64 %164
  %166 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %165, i32 0, i32 1
  store i64 0, i64* %166, align 8
  %167 = load i32, i32* @NS_CLIENT, align 4
  %168 = load %struct.TYPE_11__*, %struct.TYPE_11__** @cl_pinglist, align 8
  %169 = load i32, i32* %13, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %168, i64 %170
  %172 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = call i32 @NET_OutOfBandPrint(i32 %167, i32 %174, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %176 = load i32, i32* %4, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %4, align 4
  br label %178

178:                                              ; preds = %144, %120
  br label %207

179:                                              ; preds = %71
  %180 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %181 = load i32, i32* %5, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %180, i64 %182
  %184 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %187, label %206

187:                                              ; preds = %179
  %188 = load i32, i32* %3, align 4
  %189 = icmp eq i32 %188, 130
  br i1 %189, label %190, label %205

190:                                              ; preds = %187
  %191 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cls, i32 0, i32 5), align 8
  %192 = icmp ugt i64 %191, 0
  br i1 %192, label %193, label %204

193:                                              ; preds = %190
  %194 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cls, i32 0, i32 5), align 8
  %195 = add i64 %194, -1
  store i64 %195, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cls, i32 0, i32 5), align 8
  %196 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %197 = load i32, i32* %5, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %196, i64 %198
  %200 = load i32*, i32** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cls, i32 0, i32 6), align 8
  %201 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cls, i32 0, i32 5), align 8
  %202 = getelementptr inbounds i32, i32* %200, i64 %201
  %203 = call i32 @CL_InitServerInfo(%struct.TYPE_8__* %199, i32* %202)
  br label %204

204:                                              ; preds = %193, %190
  br label %205

205:                                              ; preds = %204, %187
  br label %206

206:                                              ; preds = %205, %179
  br label %207

207:                                              ; preds = %206, %178
  br label %208

208:                                              ; preds = %207, %63
  br label %209

209:                                              ; preds = %208
  %210 = load i32, i32* %5, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %5, align 4
  br label %59

212:                                              ; preds = %83, %59
  br label %213

213:                                              ; preds = %212, %26
  %214 = load i32, i32* %4, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %218

216:                                              ; preds = %213
  %217 = load i32, i32* @qtrue, align 4
  store i32 %217, i32* %10, align 4
  br label %218

218:                                              ; preds = %216, %213
  store i32 0, i32* %5, align 4
  br label %219

219:                                              ; preds = %244, %218
  %220 = load i32, i32* %5, align 4
  %221 = load i32, i32* @MAX_PINGREQUESTS, align 4
  %222 = icmp slt i32 %220, %221
  br i1 %222, label %223, label %247

223:                                              ; preds = %219
  %224 = load %struct.TYPE_11__*, %struct.TYPE_11__** @cl_pinglist, align 8
  %225 = load i32, i32* %5, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %224, i64 %226
  %228 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %227, i32 0, i32 0
  %229 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 8
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %233, label %232

232:                                              ; preds = %223
  br label %244

233:                                              ; preds = %223
  %234 = load i32, i32* %5, align 4
  %235 = load i32, i32* @MAX_STRING_CHARS, align 4
  %236 = call i32 @CL_GetPing(i32 %234, i8* %17, i32 %235, i32* %8)
  %237 = load i32, i32* %8, align 4
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %243

239:                                              ; preds = %233
  %240 = load i32, i32* %5, align 4
  %241 = call i32 @CL_ClearPing(i32 %240)
  %242 = load i32, i32* @qtrue, align 4
  store i32 %242, i32* %10, align 4
  br label %243

243:                                              ; preds = %239, %233
  br label %244

244:                                              ; preds = %243, %232
  %245 = load i32, i32* %5, align 4
  %246 = add nsw i32 %245, 1
  store i32 %246, i32* %5, align 4
  br label %219

247:                                              ; preds = %219
  %248 = load i32, i32* %10, align 4
  store i32 %248, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %249

249:                                              ; preds = %247, %24
  %250 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %250)
  %251 = load i32, i32* %2, align 4
  ret i32 %251
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @CL_GetPingQueueCount(...) #2

declare dso_local i64 @NET_CompareAdr(i32, i32) #2

declare dso_local i32 @memcpy(%struct.TYPE_9__*, i32*, i32) #2

declare dso_local i32 @NET_OutOfBandPrint(i32, i32, i8*) #2

declare dso_local i32 @CL_InitServerInfo(%struct.TYPE_8__*, i32*) #2

declare dso_local i32 @CL_GetPing(i32, i8*, i32, i32*) #2

declare dso_local i32 @CL_ClearPing(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
