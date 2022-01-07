; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/dev/dtrace/extr_dtrace.c_dtrace_dstate_init.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/dev/dtrace/extr_dtrace.c_dtrace_dstate_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64 }
%struct.TYPE_10__ = type { i64, i64, i64, %struct.TYPE_9__*, %struct.TYPE_10__*, %struct.TYPE_8__*, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { %struct.TYPE_9__* }
%struct.TYPE_8__ = type { %struct.TYPE_11__* }

@dtrace_lock = common dso_local global i32 0, align 4
@LCK_MTX_ASSERT_OWNED = common dso_local global i32 0, align 4
@DTRACE_DYNVAR_CHUNKSIZE = common dso_local global i64 0, align 8
@LONG_MAX = common dso_local global i32 0, align 4
@KM_NOSLEEP = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@dtrace_state_cache = common dso_local global i32 0, align 4
@KM_SLEEP = common dso_local global i32 0, align 4
@NCPU = common dso_local global i64 0, align 8
@dtrace_dynhash_sink = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@DTRACE_DYNHASH_SINK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, i64)* @dtrace_dstate_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dtrace_dstate_init(%struct.TYPE_10__* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_9__*, align 8
  %13 = alloca %struct.TYPE_9__*, align 8
  %14 = alloca %struct.TYPE_9__*, align 8
  %15 = alloca i64, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store i64 %1, i64* %5, align 8
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %9, align 8
  %19 = load i32, i32* @LCK_MTX_ASSERT_OWNED, align 4
  %20 = call i32 @LCK_MTX_ASSERT(i32* @dtrace_lock, i32 %19)
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 6
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %24 = icmp eq %struct.TYPE_8__* %23, null
  br i1 %24, label %25, label %30

25:                                               ; preds = %2
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 4
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %27, align 8
  %29 = icmp eq %struct.TYPE_10__* %28, null
  br label %30

30:                                               ; preds = %25, %2
  %31 = phi i1 [ false, %2 ], [ %29, %25 ]
  %32 = zext i1 %31 to i32
  %33 = call i32 @ASSERT(i32 %32)
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %35 = call i32 @bzero(%struct.TYPE_10__* %34, i32 56)
  %36 = load i64, i64* %9, align 8
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 0
  store i64 %36, i64* %38, align 8
  %39 = icmp eq i64 %36, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %30
  %41 = load i64, i64* @DTRACE_DYNVAR_CHUNKSIZE, align 8
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 0
  store i64 %41, i64* %43, align 8
  br label %44

44:                                               ; preds = %40, %30
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i32, i32* @LONG_MAX, align 4
  %49 = sext i32 %48 to i64
  %50 = sub i64 %49, 4
  %51 = icmp ult i64 %47, %50
  %52 = zext i1 %51 to i32
  %53 = call i32 @VERIFY(i32 %52)
  %54 = load i64, i64* %5, align 8
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = add i64 %57, 4
  store i64 %58, i64* %8, align 8
  %59 = icmp ult i64 %54, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %44
  %61 = load i64, i64* %8, align 8
  store i64 %61, i64* %5, align 8
  br label %62

62:                                               ; preds = %60, %44
  %63 = load i64, i64* %5, align 8
  %64 = load i32, i32* @KM_NOSLEEP, align 4
  %65 = call i8* @kmem_zalloc(i64 %63, i32 %64)
  store i8* %65, i8** %10, align 8
  %66 = icmp eq i8* %65, null
  br i1 %66, label %67, label %69

67:                                               ; preds = %62
  %68 = load i32, i32* @ENOMEM, align 4
  store i32 %68, i32* %3, align 4
  br label %264

69:                                               ; preds = %62
  %70 = load i64, i64* %5, align 8
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 1
  store i64 %70, i64* %72, align 8
  %73 = load i8*, i8** %10, align 8
  %74 = bitcast i8* %73 to %struct.TYPE_8__*
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 6
  store %struct.TYPE_8__* %74, %struct.TYPE_8__** %76, align 8
  %77 = load i32, i32* @dtrace_state_cache, align 4
  %78 = load i32, i32* @KM_SLEEP, align 4
  %79 = call %struct.TYPE_10__* @kmem_cache_alloc(i32 %77, i32 %78)
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 4
  store %struct.TYPE_10__* %79, %struct.TYPE_10__** %81, align 8
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 4
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %83, align 8
  %85 = load i64, i64* @NCPU, align 8
  %86 = trunc i64 %85 to i32
  %87 = sext i32 %86 to i64
  %88 = mul i64 %87, 4
  %89 = trunc i64 %88 to i32
  %90 = call i32 @bzero(%struct.TYPE_10__* %84, i32 %89)
  %91 = load i64, i64* %5, align 8
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = add i64 %94, 4
  %96 = udiv i64 %91, %95
  store i64 %96, i64* %6, align 8
  %97 = load i64, i64* %6, align 8
  %98 = icmp ne i64 %97, 1
  br i1 %98, label %99, label %106

99:                                               ; preds = %69
  %100 = load i64, i64* %6, align 8
  %101 = and i64 %100, 1
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %99
  %104 = load i64, i64* %6, align 8
  %105 = add i64 %104, -1
  store i64 %105, i64* %6, align 8
  br label %106

106:                                              ; preds = %103, %99, %69
  %107 = load i64, i64* %6, align 8
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 2
  store i64 %107, i64* %109, align 8
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 6
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %111, align 8
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 5
  store %struct.TYPE_8__* %112, %struct.TYPE_8__** %114, align 8
  store i64 0, i64* %15, align 8
  br label %115

115:                                              ; preds = %126, %106
  %116 = load i64, i64* %15, align 8
  %117 = load i64, i64* %6, align 8
  %118 = icmp ult i64 %116, %117
  br i1 %118, label %119, label %129

119:                                              ; preds = %115
  %120 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 5
  %122 = load %struct.TYPE_8__*, %struct.TYPE_8__** %121, align 8
  %123 = load i64, i64* %15, align 8
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 0
  store %struct.TYPE_11__* @dtrace_dynhash_sink, %struct.TYPE_11__** %125, align 8
  br label %126

126:                                              ; preds = %119
  %127 = load i64, i64* %15, align 8
  %128 = add i64 %127, 1
  store i64 %128, i64* %15, align 8
  br label %115

129:                                              ; preds = %115
  %130 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @dtrace_dynhash_sink, i32 0, i32 0), align 8
  %131 = load i64, i64* @DTRACE_DYNHASH_SINK, align 8
  %132 = icmp ne i64 %130, %131
  br i1 %132, label %133, label %135

133:                                              ; preds = %129
  %134 = load i64, i64* @DTRACE_DYNHASH_SINK, align 8
  store i64 %134, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @dtrace_dynhash_sink, i32 0, i32 0), align 8
  br label %135

135:                                              ; preds = %133, %129
  %136 = load i8*, i8** %10, align 8
  %137 = ptrtoint i8* %136 to i64
  %138 = load i64, i64* %6, align 8
  %139 = mul i64 %138, 4
  %140 = add i64 %137, %139
  %141 = inttoptr i64 %140 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %141, %struct.TYPE_9__** %14, align 8
  %142 = load i8*, i8** %10, align 8
  %143 = ptrtoint i8* %142 to i64
  %144 = load i64, i64* %5, align 8
  %145 = add i64 %143, %144
  store i64 %145, i64* %11, align 8
  %146 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %147 = ptrtoint %struct.TYPE_9__* %146 to i64
  %148 = load i64, i64* %11, align 8
  %149 = icmp ult i64 %147, %148
  %150 = zext i1 %149 to i32
  %151 = call i32 @VERIFY(i32 %150)
  %152 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %153 = ptrtoint %struct.TYPE_9__* %152 to i64
  %154 = load i8*, i8** %10, align 8
  %155 = ptrtoint i8* %154 to i64
  %156 = icmp uge i64 %153, %155
  %157 = zext i1 %156 to i32
  %158 = call i32 @VERIFY(i32 %157)
  %159 = load i64, i64* %11, align 8
  %160 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %161 = ptrtoint %struct.TYPE_9__* %160 to i64
  %162 = sub i64 %159, %161
  %163 = load i64, i64* @NCPU, align 8
  %164 = trunc i64 %163 to i32
  %165 = sext i32 %164 to i64
  %166 = udiv i64 %162, %165
  store i64 %166, i64* %7, align 8
  %167 = load i64, i64* %7, align 8
  %168 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %169 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = udiv i64 %167, %170
  %172 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %173 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = mul i64 %171, %174
  store i64 %175, i64* %7, align 8
  store i64 0, i64* %15, align 8
  br label %176

176:                                              ; preds = %260, %135
  %177 = load i64, i64* %15, align 8
  %178 = load i64, i64* @NCPU, align 8
  %179 = icmp ult i64 %177, %178
  br i1 %179, label %180, label %263

180:                                              ; preds = %176
  %181 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  store %struct.TYPE_9__* %181, %struct.TYPE_9__** %12, align 8
  %182 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %183 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %182, i32 0, i32 4
  %184 = load %struct.TYPE_10__*, %struct.TYPE_10__** %183, align 8
  %185 = load i64, i64* %15, align 8
  %186 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %184, i64 %185
  %187 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %186, i32 0, i32 3
  store %struct.TYPE_9__* %181, %struct.TYPE_9__** %187, align 8
  %188 = load i64, i64* %7, align 8
  %189 = icmp eq i64 %188, 0
  br i1 %189, label %195, label %190

190:                                              ; preds = %180
  %191 = load i64, i64* %15, align 8
  %192 = load i64, i64* @NCPU, align 8
  %193 = sub i64 %192, 1
  %194 = icmp eq i64 %191, %193
  br i1 %194, label %195, label %200

195:                                              ; preds = %190, %180
  %196 = load i8*, i8** %10, align 8
  %197 = ptrtoint i8* %196 to i64
  %198 = load i64, i64* %5, align 8
  %199 = add i64 %197, %198
  store i64 %199, i64* %11, align 8
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %14, align 8
  br label %207

200:                                              ; preds = %190
  %201 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %202 = ptrtoint %struct.TYPE_9__* %201 to i64
  %203 = load i64, i64* %7, align 8
  %204 = add i64 %202, %203
  store i64 %204, i64* %11, align 8
  %205 = load i64, i64* %11, align 8
  %206 = inttoptr i64 %205 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %206, %struct.TYPE_9__** %14, align 8
  br label %207

207:                                              ; preds = %200, %195
  %208 = load i64, i64* %11, align 8
  %209 = load i8*, i8** %10, align 8
  %210 = ptrtoint i8* %209 to i64
  %211 = load i64, i64* %5, align 8
  %212 = add i64 %210, %211
  %213 = icmp ule i64 %208, %212
  %214 = zext i1 %213 to i32
  %215 = call i32 @VERIFY(i32 %214)
  br label %216

216:                                              ; preds = %247, %207
  %217 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %218 = ptrtoint %struct.TYPE_9__* %217 to i64
  %219 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %220 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %219, i32 0, i32 0
  %221 = load i64, i64* %220, align 8
  %222 = add i64 %218, %221
  %223 = inttoptr i64 %222 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %223, %struct.TYPE_9__** %13, align 8
  %224 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %225 = ptrtoint %struct.TYPE_9__* %224 to i64
  %226 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %227 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %226, i32 0, i32 0
  %228 = load i64, i64* %227, align 8
  %229 = add i64 %225, %228
  %230 = load i64, i64* %11, align 8
  %231 = icmp uge i64 %229, %230
  br i1 %231, label %232, label %233

232:                                              ; preds = %216
  br label %255

233:                                              ; preds = %216
  %234 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %235 = ptrtoint %struct.TYPE_9__* %234 to i64
  %236 = load i8*, i8** %10, align 8
  %237 = ptrtoint i8* %236 to i64
  %238 = icmp uge i64 %235, %237
  br i1 %238, label %239, label %247

239:                                              ; preds = %233
  %240 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %241 = ptrtoint %struct.TYPE_9__* %240 to i64
  %242 = load i8*, i8** %10, align 8
  %243 = ptrtoint i8* %242 to i64
  %244 = load i64, i64* %5, align 8
  %245 = add i64 %243, %244
  %246 = icmp ule i64 %241, %245
  br label %247

247:                                              ; preds = %239, %233
  %248 = phi i1 [ false, %233 ], [ %246, %239 ]
  %249 = zext i1 %248 to i32
  %250 = call i32 @VERIFY(i32 %249)
  %251 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %252 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %253 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %252, i32 0, i32 0
  store %struct.TYPE_9__* %251, %struct.TYPE_9__** %253, align 8
  %254 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  store %struct.TYPE_9__* %254, %struct.TYPE_9__** %12, align 8
  br label %216

255:                                              ; preds = %232
  %256 = load i64, i64* %7, align 8
  %257 = icmp eq i64 %256, 0
  br i1 %257, label %258, label %259

258:                                              ; preds = %255
  br label %263

259:                                              ; preds = %255
  br label %260

260:                                              ; preds = %259
  %261 = load i64, i64* %15, align 8
  %262 = add i64 %261, 1
  store i64 %262, i64* %15, align 8
  br label %176

263:                                              ; preds = %258, %176
  store i32 0, i32* %3, align 4
  br label %264

264:                                              ; preds = %263, %67
  %265 = load i32, i32* %3, align 4
  ret i32 %265
}

declare dso_local i32 @LCK_MTX_ASSERT(i32*, i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @bzero(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i8* @kmem_zalloc(i64, i32) #1

declare dso_local %struct.TYPE_10__* @kmem_cache_alloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
