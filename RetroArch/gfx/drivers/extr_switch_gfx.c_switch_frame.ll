; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_switch_gfx.c_switch_frame.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_switch_gfx.c_switch_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i64 }
%struct.TYPE_12__ = type { i32*, i32, i32, i32, %struct.TYPE_10__, %struct.TYPE_13__, i64 }
%struct.TYPE_10__ = type { i8*, i32, i32, %struct.TYPE_13__, i64, i64 }
%struct.TYPE_13__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@switch_frame.last_frame = internal global i32 0, align 4
@SCALER_FMT_ARGB8888 = common dso_local global i32 0, align 4
@SCALER_FMT_RGB565 = common dso_local global i32 0, align 4
@SCALER_FMT_ABGR8888 = common dso_local global i32 0, align 4
@SCALER_TYPE_POINT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"failed to generate scaler for main image\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"message: %s\0A\00", align 1
@RESULT_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32, i32, i32, i32, i8*, %struct.TYPE_11__*)* @switch_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @switch_frame(i8* %0, i8* %1, i32 %2, i32 %3, i32 %4, i32 %5, i8* %6, %struct.TYPE_11__* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca %struct.TYPE_11__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32*, align 8
  %26 = alloca %struct.TYPE_12__*, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  store i8* %0, i8** %10, align 8
  store i8* %1, i8** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i8* %6, i8** %16, align 8
  store %struct.TYPE_11__* %7, %struct.TYPE_11__** %17, align 8
  store i32* null, i32** %25, align 8
  %30 = load i8*, i8** %10, align 8
  %31 = bitcast i8* %30 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %31, %struct.TYPE_12__** %26, align 8
  %32 = load i32, i32* %12, align 4
  %33 = udiv i32 1280, %32
  store i32 %33, i32* %27, align 4
  %34 = load i32, i32* %13, align 4
  %35 = udiv i32 720, %34
  store i32 %35, i32* %28, align 4
  %36 = load i32, i32* %27, align 4
  store i32 %36, i32* %29, align 4
  %37 = load i32, i32* %28, align 4
  %38 = load i32, i32* %29, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %8
  %41 = load i32, i32* %28, align 4
  store i32 %41, i32* %29, align 4
  br label %42

42:                                               ; preds = %40, %8
  %43 = load i32, i32* %12, align 4
  %44 = load i32, i32* %29, align 4
  %45 = mul i32 %43, %44
  store i32 %45, i32* %21, align 4
  %46 = load i32, i32* %13, align 4
  %47 = load i32, i32* %29, align 4
  %48 = mul i32 %46, %47
  store i32 %48, i32* %22, align 4
  %49 = load i32, i32* %21, align 4
  %50 = sub nsw i32 1280, %49
  %51 = sdiv i32 %50, 2
  store i32 %51, i32* %23, align 4
  %52 = load i32, i32* %22, align 4
  %53 = sub nsw i32 720, %52
  %54 = sdiv i32 %53, 2
  store i32 %54, i32* %24, align 4
  store i32 0, i32* %19, align 4
  br label %55

55:                                               ; preds = %76, %42
  %56 = load i32, i32* %19, align 4
  %57 = icmp ult i32 %56, 720
  br i1 %57, label %58, label %79

58:                                               ; preds = %55
  store i32 0, i32* %18, align 4
  br label %59

59:                                               ; preds = %72, %58
  %60 = load i32, i32* %18, align 4
  %61 = icmp ult i32 %60, 1280
  br i1 %61, label %62, label %75

62:                                               ; preds = %59
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %26, align 8
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %19, align 4
  %67 = mul i32 %66, 1280
  %68 = load i32, i32* %18, align 4
  %69 = add i32 %67, %68
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %65, i64 %70
  store i32 -16777216, i32* %71, align 4
  br label %72

72:                                               ; preds = %62
  %73 = load i32, i32* %18, align 4
  %74 = add i32 %73, 1
  store i32 %74, i32* %18, align 4
  br label %59

75:                                               ; preds = %59
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %19, align 4
  %78 = add i32 %77, 1
  store i32 %78, i32* %19, align 4
  br label %55

79:                                               ; preds = %55
  %80 = load i32, i32* %12, align 4
  %81 = icmp ugt i32 %80, 0
  br i1 %81, label %82, label %173

82:                                               ; preds = %79
  %83 = load i32, i32* %13, align 4
  %84 = icmp ugt i32 %83, 0
  br i1 %84, label %85, label %173

85:                                               ; preds = %82
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %26, align 8
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* %12, align 4
  %90 = icmp ne i32 %88, %89
  br i1 %90, label %97, label %91

91:                                               ; preds = %85
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %26, align 8
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* %13, align 4
  %96 = icmp ne i32 %94, %95
  br i1 %96, label %97, label %158

97:                                               ; preds = %91, %85
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %26, align 8
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 5
  %100 = call i32 @scaler_ctx_gen_reset(%struct.TYPE_13__* %99)
  %101 = load i32, i32* %12, align 4
  %102 = load %struct.TYPE_12__*, %struct.TYPE_12__** %26, align 8
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i32 0, i32 5
  %104 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %103, i32 0, i32 0
  store i32 %101, i32* %104, align 8
  %105 = load i32, i32* %13, align 4
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** %26, align 8
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 5
  %108 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %107, i32 0, i32 1
  store i32 %105, i32* %108, align 4
  %109 = load i32, i32* %15, align 4
  %110 = load %struct.TYPE_12__*, %struct.TYPE_12__** %26, align 8
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %110, i32 0, i32 5
  %112 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %111, i32 0, i32 2
  store i32 %109, i32* %112, align 8
  %113 = load %struct.TYPE_12__*, %struct.TYPE_12__** %26, align 8
  %114 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %113, i32 0, i32 6
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %97
  %118 = load i32, i32* @SCALER_FMT_ARGB8888, align 4
  br label %121

119:                                              ; preds = %97
  %120 = load i32, i32* @SCALER_FMT_RGB565, align 4
  br label %121

121:                                              ; preds = %119, %117
  %122 = phi i32 [ %118, %117 ], [ %120, %119 ]
  %123 = load %struct.TYPE_12__*, %struct.TYPE_12__** %26, align 8
  %124 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %123, i32 0, i32 5
  %125 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %124, i32 0, i32 8
  store i32 %122, i32* %125, align 8
  %126 = load i32, i32* %21, align 4
  %127 = load %struct.TYPE_12__*, %struct.TYPE_12__** %26, align 8
  %128 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %127, i32 0, i32 5
  %129 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %128, i32 0, i32 3
  store i32 %126, i32* %129, align 4
  %130 = load i32, i32* %22, align 4
  %131 = load %struct.TYPE_12__*, %struct.TYPE_12__** %26, align 8
  %132 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %131, i32 0, i32 5
  %133 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %132, i32 0, i32 4
  store i32 %130, i32* %133, align 8
  %134 = load %struct.TYPE_12__*, %struct.TYPE_12__** %26, align 8
  %135 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %134, i32 0, i32 5
  %136 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %135, i32 0, i32 5
  store i32 5120, i32* %136, align 4
  %137 = load i32, i32* @SCALER_FMT_ABGR8888, align 4
  %138 = load %struct.TYPE_12__*, %struct.TYPE_12__** %26, align 8
  %139 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %138, i32 0, i32 5
  %140 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %139, i32 0, i32 7
  store i32 %137, i32* %140, align 4
  %141 = load i32, i32* @SCALER_TYPE_POINT, align 4
  %142 = load %struct.TYPE_12__*, %struct.TYPE_12__** %26, align 8
  %143 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %142, i32 0, i32 5
  %144 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %143, i32 0, i32 6
  store i32 %141, i32* %144, align 8
  %145 = load %struct.TYPE_12__*, %struct.TYPE_12__** %26, align 8
  %146 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %145, i32 0, i32 5
  %147 = call i32 @scaler_ctx_gen_filter(%struct.TYPE_13__* %146)
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %151, label %149

149:                                              ; preds = %121
  %150 = call i32 @RARCH_ERR(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %9, align 4
  br label %214

151:                                              ; preds = %121
  %152 = load i32, i32* %12, align 4
  %153 = load %struct.TYPE_12__*, %struct.TYPE_12__** %26, align 8
  %154 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %153, i32 0, i32 1
  store i32 %152, i32* %154, align 8
  %155 = load i32, i32* %13, align 4
  %156 = load %struct.TYPE_12__*, %struct.TYPE_12__** %26, align 8
  %157 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %156, i32 0, i32 2
  store i32 %155, i32* %157, align 4
  br label %158

158:                                              ; preds = %151, %91
  %159 = load %struct.TYPE_12__*, %struct.TYPE_12__** %26, align 8
  %160 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %159, i32 0, i32 5
  %161 = load %struct.TYPE_12__*, %struct.TYPE_12__** %26, align 8
  %162 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %161, i32 0, i32 0
  %163 = load i32*, i32** %162, align 8
  %164 = load i32, i32* %24, align 4
  %165 = mul nsw i32 %164, 1280
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i32, i32* %163, i64 %166
  %168 = load i32, i32* %23, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i32, i32* %167, i64 %169
  %171 = load i8*, i8** %11, align 8
  %172 = call i32 @scaler_ctx_scale(%struct.TYPE_13__* %160, i32* %170, i8* %171)
  br label %173

173:                                              ; preds = %158, %82, %79
  %174 = load i8*, i8** %16, align 8
  %175 = icmp ne i8* %174, null
  br i1 %175, label %176, label %183

176:                                              ; preds = %173
  %177 = load i8*, i8** %16, align 8
  %178 = call i64 @strlen(i8* %177)
  %179 = icmp sgt i64 %178, 0
  br i1 %179, label %180, label %183

180:                                              ; preds = %176
  %181 = load i8*, i8** %16, align 8
  %182 = call i32 @RARCH_LOG(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* %181)
  br label %183

183:                                              ; preds = %180, %176, %173
  %184 = load %struct.TYPE_12__*, %struct.TYPE_12__** %26, align 8
  %185 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %184, i32 0, i32 3
  %186 = call i64 @surface_dequeue_buffer(i32* %185, i32** %25)
  store i64 %186, i64* %20, align 8
  %187 = load i64, i64* %20, align 8
  %188 = load i64, i64* @RESULT_OK, align 8
  %189 = icmp ne i64 %187, %188
  br i1 %189, label %190, label %191

190:                                              ; preds = %183
  store i32 1, i32* %9, align 4
  br label %214

191:                                              ; preds = %183
  %192 = load %struct.TYPE_12__*, %struct.TYPE_12__** %26, align 8
  %193 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %192, i32 0, i32 3
  %194 = call i64 @surface_wait_buffer(i32* %193)
  store i64 %194, i64* %20, align 8
  %195 = load i64, i64* %20, align 8
  %196 = load i64, i64* @RESULT_OK, align 8
  %197 = icmp ne i64 %195, %196
  br i1 %197, label %198, label %199

198:                                              ; preds = %191
  store i32 1, i32* %9, align 4
  br label %214

199:                                              ; preds = %191
  %200 = load i32*, i32** %25, align 8
  %201 = load %struct.TYPE_12__*, %struct.TYPE_12__** %26, align 8
  %202 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %201, i32 0, i32 0
  %203 = load i32*, i32** %202, align 8
  %204 = call i32 @gfx_slow_swizzling_blit(i32* %200, i32* %203, i32 1280, i32 720, i32 0, i32 0)
  %205 = load %struct.TYPE_12__*, %struct.TYPE_12__** %26, align 8
  %206 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %205, i32 0, i32 3
  %207 = call i64 @surface_queue_buffer(i32* %206)
  store i64 %207, i64* %20, align 8
  %208 = load i64, i64* %20, align 8
  %209 = load i64, i64* @RESULT_OK, align 8
  %210 = icmp ne i64 %208, %209
  br i1 %210, label %211, label %212

211:                                              ; preds = %199
  store i32 0, i32* %9, align 4
  br label %214

212:                                              ; preds = %199
  %213 = call i32 (...) @svcGetSystemTick()
  store i32 %213, i32* @switch_frame.last_frame, align 4
  store i32 1, i32* %9, align 4
  br label %214

214:                                              ; preds = %212, %211, %198, %190, %149
  %215 = load i32, i32* %9, align 4
  ret i32 %215
}

declare dso_local i32 @scaler_ctx_gen_reset(%struct.TYPE_13__*) #1

declare dso_local i32 @scaler_ctx_gen_filter(%struct.TYPE_13__*) #1

declare dso_local i32 @RARCH_ERR(i8*) #1

declare dso_local i32 @scaler_ctx_scale(%struct.TYPE_13__*, i32*, i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @RARCH_LOG(i8*, i8*) #1

declare dso_local i64 @surface_dequeue_buffer(i32*, i32**) #1

declare dso_local i64 @surface_wait_buffer(i32*) #1

declare dso_local i32 @gfx_slow_swizzling_blit(i32*, i32*, i32, i32, i32, i32) #1

declare dso_local i64 @surface_queue_buffer(i32*) #1

declare dso_local i32 @svcGetSystemTick(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
