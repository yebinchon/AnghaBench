; ModuleID = '/home/carl/AnghaBench/esp-idf/components/driver/extr_mcpwm.c_mcpwm_set_duty_type.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/driver/extr_mcpwm.c_mcpwm_set_duty_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__*, %struct.TYPE_7__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, i64, i64 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }

@MCPWM_UNIT_MAX = common dso_local global i64 0, align 8
@MCPWM_UNIT_NUM_ERROR = common dso_local global i32 0, align 4
@ESP_ERR_INVALID_ARG = common dso_local global i32 0, align 4
@MCPWM_TIMER_MAX = common dso_local global i64 0, align 8
@MCPWM_TIMER_ERROR = common dso_local global i32 0, align 4
@MCPWM_OPR_MAX = common dso_local global i64 0, align 8
@MCPWM_OP_ERROR = common dso_local global i32 0, align 4
@MCPWM_DUTY_MODE_MAX = common dso_local global i64 0, align 8
@MCPWM_DUTY_TYPE_ERROR = common dso_local global i32 0, align 4
@mcpwm_spinlock = common dso_local global i32 0, align 4
@MCPWM_OPR_A = common dso_local global i64 0, align 8
@MCPWM = common dso_local global %struct.TYPE_10__** null, align 8
@MCPWM_UP_COUNTER = common dso_local global i64 0, align 8
@MCPWM_DUTY_MODE_1 = common dso_local global i64 0, align 8
@MCPWM_DOWN_COUNTER = common dso_local global i64 0, align 8
@MCPWM_OPR_B = common dso_local global i64 0, align 8
@ESP_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mcpwm_set_duty_type(i64 %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %9 = load i64, i64* %5, align 8
  %10 = load i64, i64* @MCPWM_UNIT_MAX, align 8
  %11 = icmp ult i64 %9, %10
  %12 = zext i1 %11 to i32
  %13 = load i32, i32* @MCPWM_UNIT_NUM_ERROR, align 4
  %14 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  %15 = call i32 @MCPWM_CHECK(i32 %12, i32 %13, i32 %14)
  %16 = load i64, i64* %6, align 8
  %17 = load i64, i64* @MCPWM_TIMER_MAX, align 8
  %18 = icmp ult i64 %16, %17
  %19 = zext i1 %18 to i32
  %20 = load i32, i32* @MCPWM_TIMER_ERROR, align 4
  %21 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  %22 = call i32 @MCPWM_CHECK(i32 %19, i32 %20, i32 %21)
  %23 = load i64, i64* %7, align 8
  %24 = load i64, i64* @MCPWM_OPR_MAX, align 8
  %25 = icmp ult i64 %23, %24
  %26 = zext i1 %25 to i32
  %27 = load i32, i32* @MCPWM_OP_ERROR, align 4
  %28 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  %29 = call i32 @MCPWM_CHECK(i32 %26, i32 %27, i32 %28)
  %30 = load i64, i64* %8, align 8
  %31 = load i64, i64* @MCPWM_DUTY_MODE_MAX, align 8
  %32 = icmp slt i64 %30, %31
  %33 = zext i1 %32 to i32
  %34 = load i32, i32* @MCPWM_DUTY_TYPE_ERROR, align 4
  %35 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  %36 = call i32 @MCPWM_CHECK(i32 %33, i32 %34, i32 %35)
  %37 = call i32 @portENTER_CRITICAL(i32* @mcpwm_spinlock)
  %38 = load i64, i64* %7, align 8
  %39 = load i64, i64* @MCPWM_OPR_A, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %326

41:                                               ; preds = %4
  %42 = load %struct.TYPE_10__**, %struct.TYPE_10__*** @MCPWM, align 8
  %43 = load i64, i64* %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %42, i64 %43
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 1
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %46, align 8
  %48 = load i64, i64* %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @MCPWM_UP_COUNTER, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %140

55:                                               ; preds = %41
  %56 = load i64, i64* %8, align 8
  %57 = load i64, i64* @MCPWM_DUTY_MODE_1, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %99

59:                                               ; preds = %55
  %60 = load %struct.TYPE_10__**, %struct.TYPE_10__*** @MCPWM, align 8
  %61 = load i64, i64* %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %60, i64 %61
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %64, align 8
  %66 = load i64, i64* %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %68, align 8
  %70 = load i64, i64* %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  store i32 1, i32* %72, align 8
  %73 = load %struct.TYPE_10__**, %struct.TYPE_10__*** @MCPWM, align 8
  %74 = load i64, i64* %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %73, i64 %74
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %77, align 8
  %79 = load i64, i64* %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %81, align 8
  %83 = load i64, i64* %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 1
  store i32 2, i32* %85, align 4
  %86 = load %struct.TYPE_10__**, %struct.TYPE_10__*** @MCPWM, align 8
  %87 = load i64, i64* %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %86, i64 %87
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %90, align 8
  %92 = load i64, i64* %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %94, align 8
  %96 = load i64, i64* %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 7
  store i64 0, i64* %98, align 8
  br label %139

99:                                               ; preds = %55
  %100 = load %struct.TYPE_10__**, %struct.TYPE_10__*** @MCPWM, align 8
  %101 = load i64, i64* %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %100, i64 %101
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 0
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** %104, align 8
  %106 = load i64, i64* %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 0
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %108, align 8
  %110 = load i64, i64* %7, align 8
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 0
  store i32 2, i32* %112, align 8
  %113 = load %struct.TYPE_10__**, %struct.TYPE_10__*** @MCPWM, align 8
  %114 = load i64, i64* %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %113, i64 %114
  %116 = load %struct.TYPE_10__*, %struct.TYPE_10__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 0
  %118 = load %struct.TYPE_9__*, %struct.TYPE_9__** %117, align 8
  %119 = load i64, i64* %6, align 8
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 0
  %122 = load %struct.TYPE_8__*, %struct.TYPE_8__** %121, align 8
  %123 = load i64, i64* %7, align 8
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 1
  store i32 1, i32* %125, align 4
  %126 = load %struct.TYPE_10__**, %struct.TYPE_10__*** @MCPWM, align 8
  %127 = load i64, i64* %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %126, i64 %127
  %129 = load %struct.TYPE_10__*, %struct.TYPE_10__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i32 0, i32 0
  %131 = load %struct.TYPE_9__*, %struct.TYPE_9__** %130, align 8
  %132 = load i64, i64* %6, align 8
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i32 0, i32 0
  %135 = load %struct.TYPE_8__*, %struct.TYPE_8__** %134, align 8
  %136 = load i64, i64* %7, align 8
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 7
  store i64 0, i64* %138, align 8
  br label %139

139:                                              ; preds = %99, %59
  br label %325

140:                                              ; preds = %41
  %141 = load %struct.TYPE_10__**, %struct.TYPE_10__*** @MCPWM, align 8
  %142 = load i64, i64* %5, align 8
  %143 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %141, i64 %142
  %144 = load %struct.TYPE_10__*, %struct.TYPE_10__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %144, i32 0, i32 1
  %146 = load %struct.TYPE_7__*, %struct.TYPE_7__** %145, align 8
  %147 = load i64, i64* %6, align 8
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i64 %147
  %149 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = load i64, i64* @MCPWM_DOWN_COUNTER, align 8
  %153 = icmp eq i64 %151, %152
  br i1 %153, label %154, label %239

154:                                              ; preds = %140
  %155 = load i64, i64* %8, align 8
  %156 = load i64, i64* @MCPWM_DUTY_MODE_1, align 8
  %157 = icmp eq i64 %155, %156
  br i1 %157, label %158, label %198

158:                                              ; preds = %154
  %159 = load %struct.TYPE_10__**, %struct.TYPE_10__*** @MCPWM, align 8
  %160 = load i64, i64* %5, align 8
  %161 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %159, i64 %160
  %162 = load %struct.TYPE_10__*, %struct.TYPE_10__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %162, i32 0, i32 0
  %164 = load %struct.TYPE_9__*, %struct.TYPE_9__** %163, align 8
  %165 = load i64, i64* %6, align 8
  %166 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %164, i64 %165
  %167 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %166, i32 0, i32 0
  %168 = load %struct.TYPE_8__*, %struct.TYPE_8__** %167, align 8
  %169 = load i64, i64* %7, align 8
  %170 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %168, i64 %169
  %171 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %170, i32 0, i32 2
  store i32 2, i32* %171, align 8
  %172 = load %struct.TYPE_10__**, %struct.TYPE_10__*** @MCPWM, align 8
  %173 = load i64, i64* %5, align 8
  %174 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %172, i64 %173
  %175 = load %struct.TYPE_10__*, %struct.TYPE_10__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %175, i32 0, i32 0
  %177 = load %struct.TYPE_9__*, %struct.TYPE_9__** %176, align 8
  %178 = load i64, i64* %6, align 8
  %179 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %177, i64 %178
  %180 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %179, i32 0, i32 0
  %181 = load %struct.TYPE_8__*, %struct.TYPE_8__** %180, align 8
  %182 = load i64, i64* %7, align 8
  %183 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %181, i64 %182
  %184 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %183, i32 0, i32 3
  store i32 1, i32* %184, align 4
  %185 = load %struct.TYPE_10__**, %struct.TYPE_10__*** @MCPWM, align 8
  %186 = load i64, i64* %5, align 8
  %187 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %185, i64 %186
  %188 = load %struct.TYPE_10__*, %struct.TYPE_10__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %188, i32 0, i32 0
  %190 = load %struct.TYPE_9__*, %struct.TYPE_9__** %189, align 8
  %191 = load i64, i64* %6, align 8
  %192 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %190, i64 %191
  %193 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %192, i32 0, i32 0
  %194 = load %struct.TYPE_8__*, %struct.TYPE_8__** %193, align 8
  %195 = load i64, i64* %7, align 8
  %196 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %194, i64 %195
  %197 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %196, i32 0, i32 6
  store i64 0, i64* %197, align 8
  br label %238

198:                                              ; preds = %154
  %199 = load %struct.TYPE_10__**, %struct.TYPE_10__*** @MCPWM, align 8
  %200 = load i64, i64* %5, align 8
  %201 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %199, i64 %200
  %202 = load %struct.TYPE_10__*, %struct.TYPE_10__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %202, i32 0, i32 0
  %204 = load %struct.TYPE_9__*, %struct.TYPE_9__** %203, align 8
  %205 = load i64, i64* %6, align 8
  %206 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %204, i64 %205
  %207 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %206, i32 0, i32 0
  %208 = load %struct.TYPE_8__*, %struct.TYPE_8__** %207, align 8
  %209 = load i64, i64* %7, align 8
  %210 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %208, i64 %209
  %211 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %210, i32 0, i32 2
  store i32 1, i32* %211, align 8
  %212 = load %struct.TYPE_10__**, %struct.TYPE_10__*** @MCPWM, align 8
  %213 = load i64, i64* %5, align 8
  %214 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %212, i64 %213
  %215 = load %struct.TYPE_10__*, %struct.TYPE_10__** %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %215, i32 0, i32 0
  %217 = load %struct.TYPE_9__*, %struct.TYPE_9__** %216, align 8
  %218 = load i64, i64* %6, align 8
  %219 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %217, i64 %218
  %220 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %219, i32 0, i32 0
  %221 = load %struct.TYPE_8__*, %struct.TYPE_8__** %220, align 8
  %222 = load i64, i64* %7, align 8
  %223 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %221, i64 %222
  %224 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %223, i32 0, i32 3
  store i32 2, i32* %224, align 4
  %225 = load %struct.TYPE_10__**, %struct.TYPE_10__*** @MCPWM, align 8
  %226 = load i64, i64* %5, align 8
  %227 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %225, i64 %226
  %228 = load %struct.TYPE_10__*, %struct.TYPE_10__** %227, align 8
  %229 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %228, i32 0, i32 0
  %230 = load %struct.TYPE_9__*, %struct.TYPE_9__** %229, align 8
  %231 = load i64, i64* %6, align 8
  %232 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %230, i64 %231
  %233 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %232, i32 0, i32 0
  %234 = load %struct.TYPE_8__*, %struct.TYPE_8__** %233, align 8
  %235 = load i64, i64* %7, align 8
  %236 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %234, i64 %235
  %237 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %236, i32 0, i32 6
  store i64 0, i64* %237, align 8
  br label %238

238:                                              ; preds = %198, %158
  br label %324

239:                                              ; preds = %140
  %240 = load i64, i64* %8, align 8
  %241 = load i64, i64* @MCPWM_DUTY_MODE_1, align 8
  %242 = icmp eq i64 %240, %241
  br i1 %242, label %243, label %283

243:                                              ; preds = %239
  %244 = load %struct.TYPE_10__**, %struct.TYPE_10__*** @MCPWM, align 8
  %245 = load i64, i64* %5, align 8
  %246 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %244, i64 %245
  %247 = load %struct.TYPE_10__*, %struct.TYPE_10__** %246, align 8
  %248 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %247, i32 0, i32 0
  %249 = load %struct.TYPE_9__*, %struct.TYPE_9__** %248, align 8
  %250 = load i64, i64* %6, align 8
  %251 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %249, i64 %250
  %252 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %251, i32 0, i32 0
  %253 = load %struct.TYPE_8__*, %struct.TYPE_8__** %252, align 8
  %254 = load i64, i64* %7, align 8
  %255 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %253, i64 %254
  %256 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %255, i32 0, i32 0
  store i32 1, i32* %256, align 8
  %257 = load %struct.TYPE_10__**, %struct.TYPE_10__*** @MCPWM, align 8
  %258 = load i64, i64* %5, align 8
  %259 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %257, i64 %258
  %260 = load %struct.TYPE_10__*, %struct.TYPE_10__** %259, align 8
  %261 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %260, i32 0, i32 0
  %262 = load %struct.TYPE_9__*, %struct.TYPE_9__** %261, align 8
  %263 = load i64, i64* %6, align 8
  %264 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %262, i64 %263
  %265 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %264, i32 0, i32 0
  %266 = load %struct.TYPE_8__*, %struct.TYPE_8__** %265, align 8
  %267 = load i64, i64* %7, align 8
  %268 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %266, i64 %267
  %269 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %268, i32 0, i32 1
  store i32 2, i32* %269, align 4
  %270 = load %struct.TYPE_10__**, %struct.TYPE_10__*** @MCPWM, align 8
  %271 = load i64, i64* %5, align 8
  %272 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %270, i64 %271
  %273 = load %struct.TYPE_10__*, %struct.TYPE_10__** %272, align 8
  %274 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %273, i32 0, i32 0
  %275 = load %struct.TYPE_9__*, %struct.TYPE_9__** %274, align 8
  %276 = load i64, i64* %6, align 8
  %277 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %275, i64 %276
  %278 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %277, i32 0, i32 0
  %279 = load %struct.TYPE_8__*, %struct.TYPE_8__** %278, align 8
  %280 = load i64, i64* %7, align 8
  %281 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %279, i64 %280
  %282 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %281, i32 0, i32 3
  store i32 1, i32* %282, align 4
  br label %323

283:                                              ; preds = %239
  %284 = load %struct.TYPE_10__**, %struct.TYPE_10__*** @MCPWM, align 8
  %285 = load i64, i64* %5, align 8
  %286 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %284, i64 %285
  %287 = load %struct.TYPE_10__*, %struct.TYPE_10__** %286, align 8
  %288 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %287, i32 0, i32 0
  %289 = load %struct.TYPE_9__*, %struct.TYPE_9__** %288, align 8
  %290 = load i64, i64* %6, align 8
  %291 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %289, i64 %290
  %292 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %291, i32 0, i32 0
  %293 = load %struct.TYPE_8__*, %struct.TYPE_8__** %292, align 8
  %294 = load i64, i64* %7, align 8
  %295 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %293, i64 %294
  %296 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %295, i32 0, i32 0
  store i32 2, i32* %296, align 8
  %297 = load %struct.TYPE_10__**, %struct.TYPE_10__*** @MCPWM, align 8
  %298 = load i64, i64* %5, align 8
  %299 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %297, i64 %298
  %300 = load %struct.TYPE_10__*, %struct.TYPE_10__** %299, align 8
  %301 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %300, i32 0, i32 0
  %302 = load %struct.TYPE_9__*, %struct.TYPE_9__** %301, align 8
  %303 = load i64, i64* %6, align 8
  %304 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %302, i64 %303
  %305 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %304, i32 0, i32 0
  %306 = load %struct.TYPE_8__*, %struct.TYPE_8__** %305, align 8
  %307 = load i64, i64* %7, align 8
  %308 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %306, i64 %307
  %309 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %308, i32 0, i32 1
  store i32 1, i32* %309, align 4
  %310 = load %struct.TYPE_10__**, %struct.TYPE_10__*** @MCPWM, align 8
  %311 = load i64, i64* %5, align 8
  %312 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %310, i64 %311
  %313 = load %struct.TYPE_10__*, %struct.TYPE_10__** %312, align 8
  %314 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %313, i32 0, i32 0
  %315 = load %struct.TYPE_9__*, %struct.TYPE_9__** %314, align 8
  %316 = load i64, i64* %6, align 8
  %317 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %315, i64 %316
  %318 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %317, i32 0, i32 0
  %319 = load %struct.TYPE_8__*, %struct.TYPE_8__** %318, align 8
  %320 = load i64, i64* %7, align 8
  %321 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %319, i64 %320
  %322 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %321, i32 0, i32 3
  store i32 2, i32* %322, align 4
  br label %323

323:                                              ; preds = %283, %243
  br label %324

324:                                              ; preds = %323, %238
  br label %325

325:                                              ; preds = %324, %139
  br label %326

326:                                              ; preds = %325, %4
  %327 = load i64, i64* %7, align 8
  %328 = load i64, i64* @MCPWM_OPR_B, align 8
  %329 = icmp eq i64 %327, %328
  br i1 %329, label %330, label %615

330:                                              ; preds = %326
  %331 = load %struct.TYPE_10__**, %struct.TYPE_10__*** @MCPWM, align 8
  %332 = load i64, i64* %5, align 8
  %333 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %331, i64 %332
  %334 = load %struct.TYPE_10__*, %struct.TYPE_10__** %333, align 8
  %335 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %334, i32 0, i32 1
  %336 = load %struct.TYPE_7__*, %struct.TYPE_7__** %335, align 8
  %337 = load i64, i64* %6, align 8
  %338 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %336, i64 %337
  %339 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %338, i32 0, i32 0
  %340 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %339, i32 0, i32 0
  %341 = load i64, i64* %340, align 8
  %342 = load i64, i64* @MCPWM_UP_COUNTER, align 8
  %343 = icmp eq i64 %341, %342
  br i1 %343, label %344, label %429

344:                                              ; preds = %330
  %345 = load i64, i64* %8, align 8
  %346 = load i64, i64* @MCPWM_DUTY_MODE_1, align 8
  %347 = icmp eq i64 %345, %346
  br i1 %347, label %348, label %388

348:                                              ; preds = %344
  %349 = load %struct.TYPE_10__**, %struct.TYPE_10__*** @MCPWM, align 8
  %350 = load i64, i64* %5, align 8
  %351 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %349, i64 %350
  %352 = load %struct.TYPE_10__*, %struct.TYPE_10__** %351, align 8
  %353 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %352, i32 0, i32 0
  %354 = load %struct.TYPE_9__*, %struct.TYPE_9__** %353, align 8
  %355 = load i64, i64* %6, align 8
  %356 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %354, i64 %355
  %357 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %356, i32 0, i32 0
  %358 = load %struct.TYPE_8__*, %struct.TYPE_8__** %357, align 8
  %359 = load i64, i64* %7, align 8
  %360 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %358, i64 %359
  %361 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %360, i32 0, i32 0
  store i32 1, i32* %361, align 8
  %362 = load %struct.TYPE_10__**, %struct.TYPE_10__*** @MCPWM, align 8
  %363 = load i64, i64* %5, align 8
  %364 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %362, i64 %363
  %365 = load %struct.TYPE_10__*, %struct.TYPE_10__** %364, align 8
  %366 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %365, i32 0, i32 0
  %367 = load %struct.TYPE_9__*, %struct.TYPE_9__** %366, align 8
  %368 = load i64, i64* %6, align 8
  %369 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %367, i64 %368
  %370 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %369, i32 0, i32 0
  %371 = load %struct.TYPE_8__*, %struct.TYPE_8__** %370, align 8
  %372 = load i64, i64* %7, align 8
  %373 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %371, i64 %372
  %374 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %373, i32 0, i32 4
  store i32 2, i32* %374, align 8
  %375 = load %struct.TYPE_10__**, %struct.TYPE_10__*** @MCPWM, align 8
  %376 = load i64, i64* %5, align 8
  %377 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %375, i64 %376
  %378 = load %struct.TYPE_10__*, %struct.TYPE_10__** %377, align 8
  %379 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %378, i32 0, i32 0
  %380 = load %struct.TYPE_9__*, %struct.TYPE_9__** %379, align 8
  %381 = load i64, i64* %6, align 8
  %382 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %380, i64 %381
  %383 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %382, i32 0, i32 0
  %384 = load %struct.TYPE_8__*, %struct.TYPE_8__** %383, align 8
  %385 = load i64, i64* %7, align 8
  %386 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %384, i64 %385
  %387 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %386, i32 0, i32 7
  store i64 0, i64* %387, align 8
  br label %428

388:                                              ; preds = %344
  %389 = load %struct.TYPE_10__**, %struct.TYPE_10__*** @MCPWM, align 8
  %390 = load i64, i64* %5, align 8
  %391 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %389, i64 %390
  %392 = load %struct.TYPE_10__*, %struct.TYPE_10__** %391, align 8
  %393 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %392, i32 0, i32 0
  %394 = load %struct.TYPE_9__*, %struct.TYPE_9__** %393, align 8
  %395 = load i64, i64* %6, align 8
  %396 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %394, i64 %395
  %397 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %396, i32 0, i32 0
  %398 = load %struct.TYPE_8__*, %struct.TYPE_8__** %397, align 8
  %399 = load i64, i64* %7, align 8
  %400 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %398, i64 %399
  %401 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %400, i32 0, i32 0
  store i32 2, i32* %401, align 8
  %402 = load %struct.TYPE_10__**, %struct.TYPE_10__*** @MCPWM, align 8
  %403 = load i64, i64* %5, align 8
  %404 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %402, i64 %403
  %405 = load %struct.TYPE_10__*, %struct.TYPE_10__** %404, align 8
  %406 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %405, i32 0, i32 0
  %407 = load %struct.TYPE_9__*, %struct.TYPE_9__** %406, align 8
  %408 = load i64, i64* %6, align 8
  %409 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %407, i64 %408
  %410 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %409, i32 0, i32 0
  %411 = load %struct.TYPE_8__*, %struct.TYPE_8__** %410, align 8
  %412 = load i64, i64* %7, align 8
  %413 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %411, i64 %412
  %414 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %413, i32 0, i32 4
  store i32 1, i32* %414, align 8
  %415 = load %struct.TYPE_10__**, %struct.TYPE_10__*** @MCPWM, align 8
  %416 = load i64, i64* %5, align 8
  %417 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %415, i64 %416
  %418 = load %struct.TYPE_10__*, %struct.TYPE_10__** %417, align 8
  %419 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %418, i32 0, i32 0
  %420 = load %struct.TYPE_9__*, %struct.TYPE_9__** %419, align 8
  %421 = load i64, i64* %6, align 8
  %422 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %420, i64 %421
  %423 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %422, i32 0, i32 0
  %424 = load %struct.TYPE_8__*, %struct.TYPE_8__** %423, align 8
  %425 = load i64, i64* %7, align 8
  %426 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %424, i64 %425
  %427 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %426, i32 0, i32 7
  store i64 0, i64* %427, align 8
  br label %428

428:                                              ; preds = %388, %348
  br label %614

429:                                              ; preds = %330
  %430 = load %struct.TYPE_10__**, %struct.TYPE_10__*** @MCPWM, align 8
  %431 = load i64, i64* %5, align 8
  %432 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %430, i64 %431
  %433 = load %struct.TYPE_10__*, %struct.TYPE_10__** %432, align 8
  %434 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %433, i32 0, i32 1
  %435 = load %struct.TYPE_7__*, %struct.TYPE_7__** %434, align 8
  %436 = load i64, i64* %6, align 8
  %437 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %435, i64 %436
  %438 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %437, i32 0, i32 0
  %439 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %438, i32 0, i32 0
  %440 = load i64, i64* %439, align 8
  %441 = load i64, i64* @MCPWM_DOWN_COUNTER, align 8
  %442 = icmp eq i64 %440, %441
  br i1 %442, label %443, label %528

443:                                              ; preds = %429
  %444 = load i64, i64* %8, align 8
  %445 = load i64, i64* @MCPWM_DUTY_MODE_1, align 8
  %446 = icmp eq i64 %444, %445
  br i1 %446, label %447, label %487

447:                                              ; preds = %443
  %448 = load %struct.TYPE_10__**, %struct.TYPE_10__*** @MCPWM, align 8
  %449 = load i64, i64* %5, align 8
  %450 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %448, i64 %449
  %451 = load %struct.TYPE_10__*, %struct.TYPE_10__** %450, align 8
  %452 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %451, i32 0, i32 0
  %453 = load %struct.TYPE_9__*, %struct.TYPE_9__** %452, align 8
  %454 = load i64, i64* %6, align 8
  %455 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %453, i64 %454
  %456 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %455, i32 0, i32 0
  %457 = load %struct.TYPE_8__*, %struct.TYPE_8__** %456, align 8
  %458 = load i64, i64* %7, align 8
  %459 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %457, i64 %458
  %460 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %459, i32 0, i32 2
  store i32 2, i32* %460, align 8
  %461 = load %struct.TYPE_10__**, %struct.TYPE_10__*** @MCPWM, align 8
  %462 = load i64, i64* %5, align 8
  %463 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %461, i64 %462
  %464 = load %struct.TYPE_10__*, %struct.TYPE_10__** %463, align 8
  %465 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %464, i32 0, i32 0
  %466 = load %struct.TYPE_9__*, %struct.TYPE_9__** %465, align 8
  %467 = load i64, i64* %6, align 8
  %468 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %466, i64 %467
  %469 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %468, i32 0, i32 0
  %470 = load %struct.TYPE_8__*, %struct.TYPE_8__** %469, align 8
  %471 = load i64, i64* %7, align 8
  %472 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %470, i64 %471
  %473 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %472, i32 0, i32 5
  store i32 1, i32* %473, align 4
  %474 = load %struct.TYPE_10__**, %struct.TYPE_10__*** @MCPWM, align 8
  %475 = load i64, i64* %5, align 8
  %476 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %474, i64 %475
  %477 = load %struct.TYPE_10__*, %struct.TYPE_10__** %476, align 8
  %478 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %477, i32 0, i32 0
  %479 = load %struct.TYPE_9__*, %struct.TYPE_9__** %478, align 8
  %480 = load i64, i64* %6, align 8
  %481 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %479, i64 %480
  %482 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %481, i32 0, i32 0
  %483 = load %struct.TYPE_8__*, %struct.TYPE_8__** %482, align 8
  %484 = load i64, i64* %7, align 8
  %485 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %483, i64 %484
  %486 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %485, i32 0, i32 6
  store i64 0, i64* %486, align 8
  br label %527

487:                                              ; preds = %443
  %488 = load %struct.TYPE_10__**, %struct.TYPE_10__*** @MCPWM, align 8
  %489 = load i64, i64* %5, align 8
  %490 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %488, i64 %489
  %491 = load %struct.TYPE_10__*, %struct.TYPE_10__** %490, align 8
  %492 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %491, i32 0, i32 0
  %493 = load %struct.TYPE_9__*, %struct.TYPE_9__** %492, align 8
  %494 = load i64, i64* %6, align 8
  %495 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %493, i64 %494
  %496 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %495, i32 0, i32 0
  %497 = load %struct.TYPE_8__*, %struct.TYPE_8__** %496, align 8
  %498 = load i64, i64* %7, align 8
  %499 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %497, i64 %498
  %500 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %499, i32 0, i32 2
  store i32 1, i32* %500, align 8
  %501 = load %struct.TYPE_10__**, %struct.TYPE_10__*** @MCPWM, align 8
  %502 = load i64, i64* %5, align 8
  %503 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %501, i64 %502
  %504 = load %struct.TYPE_10__*, %struct.TYPE_10__** %503, align 8
  %505 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %504, i32 0, i32 0
  %506 = load %struct.TYPE_9__*, %struct.TYPE_9__** %505, align 8
  %507 = load i64, i64* %6, align 8
  %508 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %506, i64 %507
  %509 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %508, i32 0, i32 0
  %510 = load %struct.TYPE_8__*, %struct.TYPE_8__** %509, align 8
  %511 = load i64, i64* %7, align 8
  %512 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %510, i64 %511
  %513 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %512, i32 0, i32 5
  store i32 2, i32* %513, align 4
  %514 = load %struct.TYPE_10__**, %struct.TYPE_10__*** @MCPWM, align 8
  %515 = load i64, i64* %5, align 8
  %516 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %514, i64 %515
  %517 = load %struct.TYPE_10__*, %struct.TYPE_10__** %516, align 8
  %518 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %517, i32 0, i32 0
  %519 = load %struct.TYPE_9__*, %struct.TYPE_9__** %518, align 8
  %520 = load i64, i64* %6, align 8
  %521 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %519, i64 %520
  %522 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %521, i32 0, i32 0
  %523 = load %struct.TYPE_8__*, %struct.TYPE_8__** %522, align 8
  %524 = load i64, i64* %7, align 8
  %525 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %523, i64 %524
  %526 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %525, i32 0, i32 6
  store i64 0, i64* %526, align 8
  br label %527

527:                                              ; preds = %487, %447
  br label %613

528:                                              ; preds = %429
  %529 = load i64, i64* %8, align 8
  %530 = load i64, i64* @MCPWM_DUTY_MODE_1, align 8
  %531 = icmp eq i64 %529, %530
  br i1 %531, label %532, label %572

532:                                              ; preds = %528
  %533 = load %struct.TYPE_10__**, %struct.TYPE_10__*** @MCPWM, align 8
  %534 = load i64, i64* %5, align 8
  %535 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %533, i64 %534
  %536 = load %struct.TYPE_10__*, %struct.TYPE_10__** %535, align 8
  %537 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %536, i32 0, i32 0
  %538 = load %struct.TYPE_9__*, %struct.TYPE_9__** %537, align 8
  %539 = load i64, i64* %6, align 8
  %540 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %538, i64 %539
  %541 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %540, i32 0, i32 0
  %542 = load %struct.TYPE_8__*, %struct.TYPE_8__** %541, align 8
  %543 = load i64, i64* %7, align 8
  %544 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %542, i64 %543
  %545 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %544, i32 0, i32 0
  store i32 1, i32* %545, align 8
  %546 = load %struct.TYPE_10__**, %struct.TYPE_10__*** @MCPWM, align 8
  %547 = load i64, i64* %5, align 8
  %548 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %546, i64 %547
  %549 = load %struct.TYPE_10__*, %struct.TYPE_10__** %548, align 8
  %550 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %549, i32 0, i32 0
  %551 = load %struct.TYPE_9__*, %struct.TYPE_9__** %550, align 8
  %552 = load i64, i64* %6, align 8
  %553 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %551, i64 %552
  %554 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %553, i32 0, i32 0
  %555 = load %struct.TYPE_8__*, %struct.TYPE_8__** %554, align 8
  %556 = load i64, i64* %7, align 8
  %557 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %555, i64 %556
  %558 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %557, i32 0, i32 4
  store i32 2, i32* %558, align 8
  %559 = load %struct.TYPE_10__**, %struct.TYPE_10__*** @MCPWM, align 8
  %560 = load i64, i64* %5, align 8
  %561 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %559, i64 %560
  %562 = load %struct.TYPE_10__*, %struct.TYPE_10__** %561, align 8
  %563 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %562, i32 0, i32 0
  %564 = load %struct.TYPE_9__*, %struct.TYPE_9__** %563, align 8
  %565 = load i64, i64* %6, align 8
  %566 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %564, i64 %565
  %567 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %566, i32 0, i32 0
  %568 = load %struct.TYPE_8__*, %struct.TYPE_8__** %567, align 8
  %569 = load i64, i64* %7, align 8
  %570 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %568, i64 %569
  %571 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %570, i32 0, i32 5
  store i32 1, i32* %571, align 4
  br label %612

572:                                              ; preds = %528
  %573 = load %struct.TYPE_10__**, %struct.TYPE_10__*** @MCPWM, align 8
  %574 = load i64, i64* %5, align 8
  %575 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %573, i64 %574
  %576 = load %struct.TYPE_10__*, %struct.TYPE_10__** %575, align 8
  %577 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %576, i32 0, i32 0
  %578 = load %struct.TYPE_9__*, %struct.TYPE_9__** %577, align 8
  %579 = load i64, i64* %6, align 8
  %580 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %578, i64 %579
  %581 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %580, i32 0, i32 0
  %582 = load %struct.TYPE_8__*, %struct.TYPE_8__** %581, align 8
  %583 = load i64, i64* %7, align 8
  %584 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %582, i64 %583
  %585 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %584, i32 0, i32 0
  store i32 2, i32* %585, align 8
  %586 = load %struct.TYPE_10__**, %struct.TYPE_10__*** @MCPWM, align 8
  %587 = load i64, i64* %5, align 8
  %588 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %586, i64 %587
  %589 = load %struct.TYPE_10__*, %struct.TYPE_10__** %588, align 8
  %590 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %589, i32 0, i32 0
  %591 = load %struct.TYPE_9__*, %struct.TYPE_9__** %590, align 8
  %592 = load i64, i64* %6, align 8
  %593 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %591, i64 %592
  %594 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %593, i32 0, i32 0
  %595 = load %struct.TYPE_8__*, %struct.TYPE_8__** %594, align 8
  %596 = load i64, i64* %7, align 8
  %597 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %595, i64 %596
  %598 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %597, i32 0, i32 4
  store i32 1, i32* %598, align 8
  %599 = load %struct.TYPE_10__**, %struct.TYPE_10__*** @MCPWM, align 8
  %600 = load i64, i64* %5, align 8
  %601 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %599, i64 %600
  %602 = load %struct.TYPE_10__*, %struct.TYPE_10__** %601, align 8
  %603 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %602, i32 0, i32 0
  %604 = load %struct.TYPE_9__*, %struct.TYPE_9__** %603, align 8
  %605 = load i64, i64* %6, align 8
  %606 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %604, i64 %605
  %607 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %606, i32 0, i32 0
  %608 = load %struct.TYPE_8__*, %struct.TYPE_8__** %607, align 8
  %609 = load i64, i64* %7, align 8
  %610 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %608, i64 %609
  %611 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %610, i32 0, i32 5
  store i32 2, i32* %611, align 4
  br label %612

612:                                              ; preds = %572, %532
  br label %613

613:                                              ; preds = %612, %527
  br label %614

614:                                              ; preds = %613, %428
  br label %615

615:                                              ; preds = %614, %326
  %616 = call i32 @portEXIT_CRITICAL(i32* @mcpwm_spinlock)
  %617 = load i32, i32* @ESP_OK, align 4
  ret i32 %617
}

declare dso_local i32 @MCPWM_CHECK(i32, i32, i32) #1

declare dso_local i32 @portENTER_CRITICAL(i32*) #1

declare dso_local i32 @portEXIT_CRITICAL(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
