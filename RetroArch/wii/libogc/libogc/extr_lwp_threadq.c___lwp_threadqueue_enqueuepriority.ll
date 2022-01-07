; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_lwp_threadq.c___lwp_threadqueue_enqueuepriority.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_lwp_threadq.c___lwp_threadqueue_enqueuepriority.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i64, i64, %struct.TYPE_19__ }
%struct.TYPE_19__ = type { %struct.TYPE_25__* }
%struct.TYPE_25__ = type { i64, i64 }
%struct.TYPE_27__ = type { i64, i32, %struct.TYPE_23__, %struct.TYPE_21__, i32 }
%struct.TYPE_23__ = type { %struct.TYPE_22__*, i32, i32 }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_21__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i64, i64 }
%struct.TYPE_26__ = type { %struct.TYPE_26__*, %struct.TYPE_26__* }

@LWP_THREADQ_PRIOPERHEADER = common dso_local global i64 0, align 8
@LWP_THREADQ_REVERSESEARCHMASK = common dso_local global i64 0, align 8
@LWP_PRIO_MIN = common dso_local global i64 0, align 8
@LWP_PRIO_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__lwp_threadqueue_enqueuepriority(%struct.TYPE_24__* %0, %struct.TYPE_27__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_24__*, align 8
  %5 = alloca %struct.TYPE_27__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_27__*, align 8
  %14 = alloca %struct.TYPE_25__*, align 8
  %15 = alloca %struct.TYPE_26__*, align 8
  %16 = alloca %struct.TYPE_26__*, align 8
  %17 = alloca %struct.TYPE_26__*, align 8
  %18 = alloca %struct.TYPE_26__*, align 8
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %4, align 8
  store %struct.TYPE_27__* %1, %struct.TYPE_27__** %5, align 8
  store i32 %2, i32* %6, align 4
  %19 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %20, i32 0, i32 2
  %22 = call i32 @__lwp_queue_init_empty(i32* %21)
  %23 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %10, align 8
  %26 = load i64, i64* %10, align 8
  %27 = load i64, i64* @LWP_THREADQ_PRIOPERHEADER, align 8
  %28 = udiv i64 %26, %27
  store i64 %28, i64* %9, align 8
  %29 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_25__*, %struct.TYPE_25__** %31, align 8
  %33 = load i64, i64* %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %32, i64 %33
  store %struct.TYPE_25__* %34, %struct.TYPE_25__** %14, align 8
  %35 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %11, align 8
  %38 = load i64, i64* %10, align 8
  %39 = load i64, i64* @LWP_THREADQ_REVERSESEARCHMASK, align 8
  %40 = and i64 %38, %39
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %3
  br label %122

43:                                               ; preds = %3
  br label %44

44:                                               ; preds = %77, %43
  %45 = load i64, i64* @LWP_PRIO_MIN, align 8
  %46 = sub i64 %45, 1
  store i64 %46, i64* %8, align 8
  %47 = load i64, i64* %7, align 8
  %48 = call i32 @_CPU_ISR_Disable(i64 %47)
  %49 = load %struct.TYPE_25__*, %struct.TYPE_25__** %14, align 8
  %50 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = inttoptr i64 %51 to %struct.TYPE_27__*
  store %struct.TYPE_27__* %52, %struct.TYPE_27__** %13, align 8
  br label %53

53:                                               ; preds = %80, %44
  %54 = load %struct.TYPE_25__*, %struct.TYPE_25__** %14, align 8
  %55 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %56 = bitcast %struct.TYPE_27__* %55 to %struct.TYPE_26__*
  %57 = call i32 @__lwp_queue_istail(%struct.TYPE_25__* %54, %struct.TYPE_26__* %56)
  %58 = icmp ne i32 %57, 0
  %59 = xor i1 %58, true
  br i1 %59, label %60, label %87

60:                                               ; preds = %53
  %61 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %62 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  store i64 %63, i64* %8, align 8
  %64 = load i64, i64* %10, align 8
  %65 = load i64, i64* %8, align 8
  %66 = icmp ule i64 %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %60
  br label %87

68:                                               ; preds = %60
  %69 = load i64, i64* %7, align 8
  %70 = call i32 @_CPU_ISR_Flash(i64 %69)
  %71 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %72 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 8
  %74 = load i64, i64* %11, align 8
  %75 = call i32 @__lwp_statesset(i32 %73, i64 %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %80, label %77

77:                                               ; preds = %68
  %78 = load i64, i64* %7, align 8
  %79 = call i32 @_CPU_ISR_Restore(i64 %78)
  br label %44

80:                                               ; preds = %68
  %81 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %82 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %81, i32 0, i32 3
  %83 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = inttoptr i64 %85 to %struct.TYPE_27__*
  store %struct.TYPE_27__* %86, %struct.TYPE_27__** %13, align 8
  br label %53

87:                                               ; preds = %67, %53
  %88 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 131
  br i1 %91, label %92, label %93

92:                                               ; preds = %87
  br label %225

93:                                               ; preds = %87
  %94 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %94, i32 0, i32 1
  store i64 129, i64* %95, align 8
  %96 = load i64, i64* %10, align 8
  %97 = load i64, i64* %8, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %93
  br label %201

100:                                              ; preds = %93
  %101 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %102 = bitcast %struct.TYPE_27__* %101 to %struct.TYPE_26__*
  store %struct.TYPE_26__* %102, %struct.TYPE_26__** %18, align 8
  %103 = load %struct.TYPE_26__*, %struct.TYPE_26__** %18, align 8
  %104 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %103, i32 0, i32 0
  %105 = load %struct.TYPE_26__*, %struct.TYPE_26__** %104, align 8
  store %struct.TYPE_26__* %105, %struct.TYPE_26__** %17, align 8
  %106 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %107 = bitcast %struct.TYPE_27__* %106 to %struct.TYPE_26__*
  store %struct.TYPE_26__* %107, %struct.TYPE_26__** %15, align 8
  %108 = load %struct.TYPE_26__*, %struct.TYPE_26__** %18, align 8
  %109 = load %struct.TYPE_26__*, %struct.TYPE_26__** %15, align 8
  %110 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %109, i32 0, i32 1
  store %struct.TYPE_26__* %108, %struct.TYPE_26__** %110, align 8
  %111 = load %struct.TYPE_26__*, %struct.TYPE_26__** %17, align 8
  %112 = load %struct.TYPE_26__*, %struct.TYPE_26__** %15, align 8
  %113 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %112, i32 0, i32 0
  store %struct.TYPE_26__* %111, %struct.TYPE_26__** %113, align 8
  %114 = load %struct.TYPE_26__*, %struct.TYPE_26__** %15, align 8
  %115 = load %struct.TYPE_26__*, %struct.TYPE_26__** %17, align 8
  %116 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %115, i32 0, i32 1
  store %struct.TYPE_26__* %114, %struct.TYPE_26__** %116, align 8
  %117 = load %struct.TYPE_26__*, %struct.TYPE_26__** %15, align 8
  %118 = load %struct.TYPE_26__*, %struct.TYPE_26__** %18, align 8
  %119 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %118, i32 0, i32 0
  store %struct.TYPE_26__* %117, %struct.TYPE_26__** %119, align 8
  %120 = load i64, i64* %7, align 8
  %121 = call i32 @_CPU_ISR_Restore(i64 %120)
  br label %267

122:                                              ; preds = %156, %42
  %123 = load i32, i32* @LWP_PRIO_MAX, align 4
  %124 = add nsw i32 %123, 1
  %125 = sext i32 %124 to i64
  store i64 %125, i64* %8, align 8
  %126 = load i64, i64* %7, align 8
  %127 = call i32 @_CPU_ISR_Disable(i64 %126)
  %128 = load %struct.TYPE_25__*, %struct.TYPE_25__** %14, align 8
  %129 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = inttoptr i64 %130 to %struct.TYPE_27__*
  store %struct.TYPE_27__* %131, %struct.TYPE_27__** %13, align 8
  br label %132

132:                                              ; preds = %159, %122
  %133 = load %struct.TYPE_25__*, %struct.TYPE_25__** %14, align 8
  %134 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %135 = bitcast %struct.TYPE_27__* %134 to %struct.TYPE_26__*
  %136 = call i32 @__lwp_queue_ishead(%struct.TYPE_25__* %133, %struct.TYPE_26__* %135)
  %137 = icmp ne i32 %136, 0
  %138 = xor i1 %137, true
  br i1 %138, label %139, label %166

139:                                              ; preds = %132
  %140 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %141 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  store i64 %142, i64* %8, align 8
  %143 = load i64, i64* %10, align 8
  %144 = load i64, i64* %8, align 8
  %145 = icmp uge i64 %143, %144
  br i1 %145, label %146, label %147

146:                                              ; preds = %139
  br label %166

147:                                              ; preds = %139
  %148 = load i64, i64* %7, align 8
  %149 = call i32 @_CPU_ISR_Flash(i64 %148)
  %150 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %151 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %150, i32 0, i32 4
  %152 = load i32, i32* %151, align 8
  %153 = load i64, i64* %11, align 8
  %154 = call i32 @__lwp_statesset(i32 %152, i64 %153)
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %159, label %156

156:                                              ; preds = %147
  %157 = load i64, i64* %7, align 8
  %158 = call i32 @_CPU_ISR_Restore(i64 %157)
  br label %122

159:                                              ; preds = %147
  %160 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %161 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %160, i32 0, i32 3
  %162 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = inttoptr i64 %164 to %struct.TYPE_27__*
  store %struct.TYPE_27__* %165, %struct.TYPE_27__** %13, align 8
  br label %132

166:                                              ; preds = %146, %132
  %167 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %168 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %167, i32 0, i32 1
  %169 = load i64, i64* %168, align 8
  %170 = icmp ne i64 %169, 131
  br i1 %170, label %171, label %172

171:                                              ; preds = %166
  br label %225

172:                                              ; preds = %166
  %173 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %174 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %173, i32 0, i32 1
  store i64 129, i64* %174, align 8
  %175 = load i64, i64* %10, align 8
  %176 = load i64, i64* %8, align 8
  %177 = icmp eq i64 %175, %176
  br i1 %177, label %178, label %179

178:                                              ; preds = %172
  br label %201

179:                                              ; preds = %172
  %180 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %181 = bitcast %struct.TYPE_27__* %180 to %struct.TYPE_26__*
  store %struct.TYPE_26__* %181, %struct.TYPE_26__** %18, align 8
  %182 = load %struct.TYPE_26__*, %struct.TYPE_26__** %18, align 8
  %183 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %182, i32 0, i32 1
  %184 = load %struct.TYPE_26__*, %struct.TYPE_26__** %183, align 8
  store %struct.TYPE_26__* %184, %struct.TYPE_26__** %16, align 8
  %185 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %186 = bitcast %struct.TYPE_27__* %185 to %struct.TYPE_26__*
  store %struct.TYPE_26__* %186, %struct.TYPE_26__** %15, align 8
  %187 = load %struct.TYPE_26__*, %struct.TYPE_26__** %16, align 8
  %188 = load %struct.TYPE_26__*, %struct.TYPE_26__** %15, align 8
  %189 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %188, i32 0, i32 1
  store %struct.TYPE_26__* %187, %struct.TYPE_26__** %189, align 8
  %190 = load %struct.TYPE_26__*, %struct.TYPE_26__** %18, align 8
  %191 = load %struct.TYPE_26__*, %struct.TYPE_26__** %15, align 8
  %192 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %191, i32 0, i32 0
  store %struct.TYPE_26__* %190, %struct.TYPE_26__** %192, align 8
  %193 = load %struct.TYPE_26__*, %struct.TYPE_26__** %15, align 8
  %194 = load %struct.TYPE_26__*, %struct.TYPE_26__** %18, align 8
  %195 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %194, i32 0, i32 1
  store %struct.TYPE_26__* %193, %struct.TYPE_26__** %195, align 8
  %196 = load %struct.TYPE_26__*, %struct.TYPE_26__** %15, align 8
  %197 = load %struct.TYPE_26__*, %struct.TYPE_26__** %16, align 8
  %198 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %197, i32 0, i32 0
  store %struct.TYPE_26__* %196, %struct.TYPE_26__** %198, align 8
  %199 = load i64, i64* %7, align 8
  %200 = call i32 @_CPU_ISR_Restore(i64 %199)
  br label %267

201:                                              ; preds = %178, %99
  %202 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %203 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %202, i32 0, i32 2
  %204 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %203, i32 0, i32 2
  %205 = call %struct.TYPE_26__* @__lwp_queue_tail(i32* %204)
  store %struct.TYPE_26__* %205, %struct.TYPE_26__** %18, align 8
  %206 = load %struct.TYPE_26__*, %struct.TYPE_26__** %18, align 8
  %207 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %206, i32 0, i32 0
  %208 = load %struct.TYPE_26__*, %struct.TYPE_26__** %207, align 8
  store %struct.TYPE_26__* %208, %struct.TYPE_26__** %17, align 8
  %209 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %210 = bitcast %struct.TYPE_27__* %209 to %struct.TYPE_26__*
  store %struct.TYPE_26__* %210, %struct.TYPE_26__** %15, align 8
  %211 = load %struct.TYPE_26__*, %struct.TYPE_26__** %18, align 8
  %212 = load %struct.TYPE_26__*, %struct.TYPE_26__** %15, align 8
  %213 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %212, i32 0, i32 1
  store %struct.TYPE_26__* %211, %struct.TYPE_26__** %213, align 8
  %214 = load %struct.TYPE_26__*, %struct.TYPE_26__** %17, align 8
  %215 = load %struct.TYPE_26__*, %struct.TYPE_26__** %15, align 8
  %216 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %215, i32 0, i32 0
  store %struct.TYPE_26__* %214, %struct.TYPE_26__** %216, align 8
  %217 = load %struct.TYPE_26__*, %struct.TYPE_26__** %15, align 8
  %218 = load %struct.TYPE_26__*, %struct.TYPE_26__** %17, align 8
  %219 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %218, i32 0, i32 1
  store %struct.TYPE_26__* %217, %struct.TYPE_26__** %219, align 8
  %220 = load %struct.TYPE_26__*, %struct.TYPE_26__** %15, align 8
  %221 = load %struct.TYPE_26__*, %struct.TYPE_26__** %18, align 8
  %222 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %221, i32 0, i32 0
  store %struct.TYPE_26__* %220, %struct.TYPE_26__** %222, align 8
  %223 = load i64, i64* %7, align 8
  %224 = call i32 @_CPU_ISR_Restore(i64 %223)
  br label %267

225:                                              ; preds = %171, %92
  %226 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %227 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %226, i32 0, i32 1
  %228 = load i64, i64* %227, align 8
  store i64 %228, i64* %12, align 8
  %229 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %230 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %229, i32 0, i32 1
  store i64 129, i64* %230, align 8
  %231 = load i64, i64* %12, align 8
  switch i64 %231, label %264 [
    i64 129, label %232
    i64 131, label %233
    i64 128, label %234
    i64 130, label %246
  ]

232:                                              ; preds = %225
  br label %264

233:                                              ; preds = %225
  br label %264

234:                                              ; preds = %225
  %235 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %236 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %235, i32 0, i32 2
  %237 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %236, i32 0, i32 0
  %238 = load %struct.TYPE_22__*, %struct.TYPE_22__** %237, align 8
  %239 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 4
  %241 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %242 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %241, i32 0, i32 2
  %243 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %242, i32 0, i32 1
  store i32 %240, i32* %243, align 8
  %244 = load i64, i64* %7, align 8
  %245 = call i32 @_CPU_ISR_Restore(i64 %244)
  br label %264

246:                                              ; preds = %225
  %247 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %248 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %247, i32 0, i32 1
  %249 = call i32 @__lwp_wd_isactive(i32* %248)
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %260

251:                                              ; preds = %246
  %252 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %253 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %252, i32 0, i32 1
  %254 = call i32 @__lwp_wd_deactivate(i32* %253)
  %255 = load i64, i64* %7, align 8
  %256 = call i32 @_CPU_ISR_Restore(i64 %255)
  %257 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %258 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %257, i32 0, i32 1
  %259 = call i32 @__lwp_wd_remove_ticks(i32* %258)
  br label %263

260:                                              ; preds = %246
  %261 = load i64, i64* %7, align 8
  %262 = call i32 @_CPU_ISR_Restore(i64 %261)
  br label %263

263:                                              ; preds = %260, %251
  br label %264

264:                                              ; preds = %225, %263, %234, %233, %232
  %265 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %266 = call i32 @__lwp_thread_unblock(%struct.TYPE_27__* %265)
  br label %267

267:                                              ; preds = %264, %201, %179, %100
  ret void
}

declare dso_local i32 @__lwp_queue_init_empty(i32*) #1

declare dso_local i32 @_CPU_ISR_Disable(i64) #1

declare dso_local i32 @__lwp_queue_istail(%struct.TYPE_25__*, %struct.TYPE_26__*) #1

declare dso_local i32 @_CPU_ISR_Flash(i64) #1

declare dso_local i32 @__lwp_statesset(i32, i64) #1

declare dso_local i32 @_CPU_ISR_Restore(i64) #1

declare dso_local i32 @__lwp_queue_ishead(%struct.TYPE_25__*, %struct.TYPE_26__*) #1

declare dso_local %struct.TYPE_26__* @__lwp_queue_tail(i32*) #1

declare dso_local i32 @__lwp_wd_isactive(i32*) #1

declare dso_local i32 @__lwp_wd_deactivate(i32*) #1

declare dso_local i32 @__lwp_wd_remove_ticks(i32*) #1

declare dso_local i32 @__lwp_thread_unblock(%struct.TYPE_27__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
