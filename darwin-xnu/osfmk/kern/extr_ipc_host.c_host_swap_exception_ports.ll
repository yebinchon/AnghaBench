; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_ipc_host.c_host_swap_exception_ports.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_ipc_host.c_host_swap_exception_ports.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64, i32, i64, i32* }

@EXC_TYPES_COUNT = common dso_local global i32 0, align 4
@HOST_PRIV_NULL = common dso_local global %struct.TYPE_8__* null, align 8
@KERN_INVALID_ARGUMENT = common dso_local global i32 0, align 4
@EXC_MASK_VALID = common dso_local global i32 0, align 4
@FIRST_EXCEPTION = common dso_local global i32 0, align 4
@IP_NULL = common dso_local global i64 0, align 8
@KERN_SUCCESS = common dso_local global i32 0, align 4
@KERN_NO_ACCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @host_swap_exception_ports(%struct.TYPE_8__* %0, i32 %1, i64 %2, i32 %3, i64 %4, i32* %5, i32* %6, i64* %7, i32* %8, i64* %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_8__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i64*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i64*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i8*, align 8
  %26 = alloca i64, align 8
  %27 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %12, align 8
  store i32 %1, i32* %13, align 4
  store i64 %2, i64* %14, align 8
  store i32 %3, i32* %15, align 4
  store i64 %4, i64* %16, align 8
  store i32* %5, i32** %17, align 8
  store i32* %6, i32** %18, align 8
  store i64* %7, i64** %19, align 8
  store i32* %8, i32** %20, align 8
  store i64* %9, i64** %21, align 8
  %28 = load i32, i32* @EXC_TYPES_COUNT, align 4
  %29 = zext i32 %28 to i64
  %30 = call i8* @llvm.stacksave()
  store i8* %30, i8** %25, align 8
  %31 = alloca i64, i64 %29, align 16
  store i64 %29, i64* %26, align 8
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** @HOST_PRIV_NULL, align 8
  %34 = icmp eq %struct.TYPE_8__* %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %10
  %36 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  store i32 %36, i32* %11, align 4
  store i32 1, i32* %27, align 4
  br label %282

37:                                               ; preds = %10
  %38 = load i32, i32* %13, align 4
  %39 = load i32, i32* @EXC_MASK_VALID, align 4
  %40 = xor i32 %39, -1
  %41 = and i32 %38, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %37
  %44 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  store i32 %44, i32* %11, align 4
  store i32 1, i32* %27, align 4
  br label %282

45:                                               ; preds = %37
  %46 = load i64, i64* %14, align 8
  %47 = call i64 @IP_VALID(i64 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %45
  %50 = load i32, i32* %15, align 4
  switch i32 %50, label %52 [
    i32 130, label %51
    i32 129, label %51
    i32 128, label %51
  ]

51:                                               ; preds = %49, %49, %49
  br label %54

52:                                               ; preds = %49
  %53 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  store i32 %53, i32* %11, align 4
  store i32 1, i32* %27, align 4
  br label %282

54:                                               ; preds = %51
  br label %55

55:                                               ; preds = %54, %45
  %56 = load i64, i64* %16, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %55
  %59 = load i64, i64* %16, align 8
  %60 = call i32 @VALID_THREAD_STATE_FLAVOR(i64 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %64, label %62

62:                                               ; preds = %58
  %63 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  store i32 %63, i32* %11, align 4
  store i32 1, i32* %27, align 4
  br label %282

64:                                               ; preds = %58, %55
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %66 = call i32 @host_lock(%struct.TYPE_8__* %65)
  %67 = load i32, i32* @EXC_TYPES_COUNT, align 4
  %68 = load i32, i32* @FIRST_EXCEPTION, align 4
  %69 = icmp sgt i32 %67, %68
  %70 = zext i1 %69 to i32
  %71 = call i32 @assert(i32 %70)
  store i32 0, i32* %24, align 4
  %72 = load i32, i32* @FIRST_EXCEPTION, align 4
  store i32 %72, i32* %22, align 4
  br label %73

73:                                               ; preds = %246, %64
  %74 = load i32, i32* %22, align 4
  %75 = load i32, i32* @EXC_TYPES_COUNT, align 4
  %76 = icmp ult i32 %74, %75
  br i1 %76, label %77, label %82

77:                                               ; preds = %73
  %78 = load i32, i32* %24, align 4
  %79 = load i32*, i32** %18, align 8
  %80 = load i32, i32* %79, align 4
  %81 = icmp ult i32 %78, %80
  br label %82

82:                                               ; preds = %77, %73
  %83 = phi i1 [ false, %73 ], [ %81, %77 ]
  br i1 %83, label %84, label %249

84:                                               ; preds = %82
  %85 = load i32, i32* %13, align 4
  %86 = load i32, i32* %22, align 4
  %87 = shl i32 1, %86
  %88 = and i32 %85, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %240

90:                                               ; preds = %84
  store i32 0, i32* %23, align 4
  br label %91

91:                                               ; preds = %150, %90
  %92 = load i32, i32* %23, align 4
  %93 = load i32, i32* %24, align 4
  %94 = icmp ult i32 %92, %93
  br i1 %94, label %95, label %153

95:                                               ; preds = %91
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 0
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %97, align 8
  %99 = load i32, i32* %22, align 4
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64*, i64** %19, align 8
  %105 = load i32, i32* %23, align 4
  %106 = zext i32 %105 to i64
  %107 = getelementptr inbounds i64, i64* %104, i64 %106
  %108 = load i64, i64* %107, align 8
  %109 = icmp eq i64 %103, %108
  br i1 %109, label %110, label %149

110:                                              ; preds = %95
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 0
  %113 = load %struct.TYPE_9__*, %struct.TYPE_9__** %112, align 8
  %114 = load i32, i32* %22, align 4
  %115 = zext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 8
  %119 = load i32*, i32** %20, align 8
  %120 = load i32, i32* %23, align 4
  %121 = zext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %119, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = icmp eq i32 %118, %123
  br i1 %124, label %125, label %149

125:                                              ; preds = %110
  %126 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 0
  %128 = load %struct.TYPE_9__*, %struct.TYPE_9__** %127, align 8
  %129 = load i32, i32* %22, align 4
  %130 = zext i32 %129 to i64
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i64 %130
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i32 0, i32 2
  %133 = load i64, i64* %132, align 8
  %134 = load i64*, i64** %21, align 8
  %135 = load i32, i32* %23, align 4
  %136 = zext i32 %135 to i64
  %137 = getelementptr inbounds i64, i64* %134, i64 %136
  %138 = load i64, i64* %137, align 8
  %139 = icmp eq i64 %133, %138
  br i1 %139, label %140, label %149

140:                                              ; preds = %125
  %141 = load i32, i32* %22, align 4
  %142 = shl i32 1, %141
  %143 = load i32*, i32** %17, align 8
  %144 = load i32, i32* %23, align 4
  %145 = zext i32 %144 to i64
  %146 = getelementptr inbounds i32, i32* %143, i64 %145
  %147 = load i32, i32* %146, align 4
  %148 = or i32 %147, %142
  store i32 %148, i32* %146, align 4
  br label %153

149:                                              ; preds = %125, %110, %95
  br label %150

150:                                              ; preds = %149
  %151 = load i32, i32* %23, align 4
  %152 = add i32 %151, 1
  store i32 %152, i32* %23, align 4
  br label %91

153:                                              ; preds = %140, %91
  %154 = load i32, i32* %23, align 4
  %155 = load i32, i32* %24, align 4
  %156 = icmp eq i32 %154, %155
  br i1 %156, label %157, label %203

157:                                              ; preds = %153
  %158 = load i32, i32* %22, align 4
  %159 = shl i32 1, %158
  %160 = load i32*, i32** %17, align 8
  %161 = load i32, i32* %23, align 4
  %162 = zext i32 %161 to i64
  %163 = getelementptr inbounds i32, i32* %160, i64 %162
  store i32 %159, i32* %163, align 4
  %164 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %165 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %164, i32 0, i32 0
  %166 = load %struct.TYPE_9__*, %struct.TYPE_9__** %165, align 8
  %167 = load i32, i32* %22, align 4
  %168 = zext i32 %167 to i64
  %169 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %166, i64 %168
  %170 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = call i64 @ipc_port_copy_send(i64 %171)
  %173 = load i64*, i64** %19, align 8
  %174 = load i32, i32* %23, align 4
  %175 = zext i32 %174 to i64
  %176 = getelementptr inbounds i64, i64* %173, i64 %175
  store i64 %172, i64* %176, align 8
  %177 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %178 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %177, i32 0, i32 0
  %179 = load %struct.TYPE_9__*, %struct.TYPE_9__** %178, align 8
  %180 = load i32, i32* %22, align 4
  %181 = zext i32 %180 to i64
  %182 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %179, i64 %181
  %183 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 8
  %185 = load i32*, i32** %20, align 8
  %186 = load i32, i32* %23, align 4
  %187 = zext i32 %186 to i64
  %188 = getelementptr inbounds i32, i32* %185, i64 %187
  store i32 %184, i32* %188, align 4
  %189 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %190 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %189, i32 0, i32 0
  %191 = load %struct.TYPE_9__*, %struct.TYPE_9__** %190, align 8
  %192 = load i32, i32* %22, align 4
  %193 = zext i32 %192 to i64
  %194 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %191, i64 %193
  %195 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %194, i32 0, i32 2
  %196 = load i64, i64* %195, align 8
  %197 = load i64*, i64** %21, align 8
  %198 = load i32, i32* %23, align 4
  %199 = zext i32 %198 to i64
  %200 = getelementptr inbounds i64, i64* %197, i64 %199
  store i64 %196, i64* %200, align 8
  %201 = load i32, i32* %24, align 4
  %202 = add i32 %201, 1
  store i32 %202, i32* %24, align 4
  br label %203

203:                                              ; preds = %157, %153
  %204 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %205 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %204, i32 0, i32 0
  %206 = load %struct.TYPE_9__*, %struct.TYPE_9__** %205, align 8
  %207 = load i32, i32* %22, align 4
  %208 = zext i32 %207 to i64
  %209 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %206, i64 %208
  %210 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %209, i32 0, i32 0
  %211 = load i64, i64* %210, align 8
  %212 = load i32, i32* %22, align 4
  %213 = zext i32 %212 to i64
  %214 = getelementptr inbounds i64, i64* %31, i64 %213
  store i64 %211, i64* %214, align 8
  %215 = load i64, i64* %14, align 8
  %216 = call i64 @ipc_port_copy_send(i64 %215)
  %217 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %218 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %217, i32 0, i32 0
  %219 = load %struct.TYPE_9__*, %struct.TYPE_9__** %218, align 8
  %220 = load i32, i32* %22, align 4
  %221 = zext i32 %220 to i64
  %222 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %219, i64 %221
  %223 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %222, i32 0, i32 0
  store i64 %216, i64* %223, align 8
  %224 = load i32, i32* %15, align 4
  %225 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %226 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %225, i32 0, i32 0
  %227 = load %struct.TYPE_9__*, %struct.TYPE_9__** %226, align 8
  %228 = load i32, i32* %22, align 4
  %229 = zext i32 %228 to i64
  %230 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %227, i64 %229
  %231 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %230, i32 0, i32 1
  store i32 %224, i32* %231, align 8
  %232 = load i64, i64* %16, align 8
  %233 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %234 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %233, i32 0, i32 0
  %235 = load %struct.TYPE_9__*, %struct.TYPE_9__** %234, align 8
  %236 = load i32, i32* %22, align 4
  %237 = zext i32 %236 to i64
  %238 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %235, i64 %237
  %239 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %238, i32 0, i32 2
  store i64 %232, i64* %239, align 8
  br label %245

240:                                              ; preds = %84
  %241 = load i64, i64* @IP_NULL, align 8
  %242 = load i32, i32* %22, align 4
  %243 = zext i32 %242 to i64
  %244 = getelementptr inbounds i64, i64* %31, i64 %243
  store i64 %241, i64* %244, align 8
  br label %245

245:                                              ; preds = %240, %203
  br label %246

246:                                              ; preds = %245
  %247 = load i32, i32* %22, align 4
  %248 = add i32 %247, 1
  store i32 %248, i32* %22, align 4
  br label %73

249:                                              ; preds = %82
  %250 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %251 = call i32 @host_unlock(%struct.TYPE_8__* %250)
  br label %252

252:                                              ; preds = %270, %249
  %253 = load i32, i32* %22, align 4
  %254 = add i32 %253, -1
  store i32 %254, i32* %22, align 4
  %255 = load i32, i32* @FIRST_EXCEPTION, align 4
  %256 = icmp uge i32 %254, %255
  br i1 %256, label %257, label %271

257:                                              ; preds = %252
  %258 = load i32, i32* %22, align 4
  %259 = zext i32 %258 to i64
  %260 = getelementptr inbounds i64, i64* %31, i64 %259
  %261 = load i64, i64* %260, align 8
  %262 = call i64 @IP_VALID(i64 %261)
  %263 = icmp ne i64 %262, 0
  br i1 %263, label %264, label %270

264:                                              ; preds = %257
  %265 = load i32, i32* %22, align 4
  %266 = zext i32 %265 to i64
  %267 = getelementptr inbounds i64, i64* %31, i64 %266
  %268 = load i64, i64* %267, align 8
  %269 = call i32 @ipc_port_release_send(i64 %268)
  br label %270

270:                                              ; preds = %264, %257
  br label %252

271:                                              ; preds = %252
  %272 = load i64, i64* %14, align 8
  %273 = call i64 @IP_VALID(i64 %272)
  %274 = icmp ne i64 %273, 0
  br i1 %274, label %275, label %278

275:                                              ; preds = %271
  %276 = load i64, i64* %14, align 8
  %277 = call i32 @ipc_port_release_send(i64 %276)
  br label %278

278:                                              ; preds = %275, %271
  %279 = load i32, i32* %24, align 4
  %280 = load i32*, i32** %18, align 8
  store i32 %279, i32* %280, align 4
  %281 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %281, i32* %11, align 4
  store i32 1, i32* %27, align 4
  br label %282

282:                                              ; preds = %278, %62, %52, %43, %35
  %283 = load i8*, i8** %25, align 8
  call void @llvm.stackrestore(i8* %283)
  %284 = load i32, i32* %11, align 4
  ret i32 %284
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @IP_VALID(i64) #2

declare dso_local i32 @VALID_THREAD_STATE_FLAVOR(i64) #2

declare dso_local i32 @host_lock(%struct.TYPE_8__*) #2

declare dso_local i32 @assert(i32) #2

declare dso_local i64 @ipc_port_copy_send(i64) #2

declare dso_local i32 @host_unlock(%struct.TYPE_8__*) #2

declare dso_local i32 @ipc_port_release_send(i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
