; ModuleID = '/home/carl/AnghaBench/esp-idf/components/driver/extr_mcpwm.c_mcpwm_fault_set_cyc_mode.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/driver/extr_mcpwm.c_mcpwm_fault_set_cyc_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i32, i32, i8*, i8*, i8*, i8*, i64, i64, i64 }
%struct.TYPE_5__ = type { i32 }

@MCPWM_UNIT_MAX = common dso_local global i64 0, align 8
@MCPWM_UNIT_NUM_ERROR = common dso_local global i32 0, align 4
@ESP_ERR_INVALID_ARG = common dso_local global i32 0, align 4
@MCPWM_TIMER_MAX = common dso_local global i64 0, align 8
@MCPWM_TIMER_ERROR = common dso_local global i32 0, align 4
@mcpwm_spinlock = common dso_local global i32 0, align 4
@MCPWM = common dso_local global %struct.TYPE_8__** null, align 8
@MCPWM_SELECT_F0 = common dso_local global i64 0, align 8
@MCPWM_SELECT_F1 = common dso_local global i64 0, align 8
@ESP_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mcpwm_fault_set_cyc_mode(i64 %0, i64 %1, i64 %2, i8* %3, i8* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  store i8* %4, i8** %10, align 8
  %11 = load i64, i64* %6, align 8
  %12 = load i64, i64* @MCPWM_UNIT_MAX, align 8
  %13 = icmp ult i64 %11, %12
  %14 = zext i1 %13 to i32
  %15 = load i32, i32* @MCPWM_UNIT_NUM_ERROR, align 4
  %16 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  %17 = call i32 @MCPWM_CHECK(i32 %14, i32 %15, i32 %16)
  %18 = load i64, i64* %7, align 8
  %19 = load i64, i64* @MCPWM_TIMER_MAX, align 8
  %20 = icmp ult i64 %18, %19
  %21 = zext i1 %20 to i32
  %22 = load i32, i32* @MCPWM_TIMER_ERROR, align 4
  %23 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  %24 = call i32 @MCPWM_CHECK(i32 %21, i32 %22, i32 %23)
  %25 = call i32 @portENTER_CRITICAL(i32* @mcpwm_spinlock)
  %26 = call i32 @BIT(i32 0)
  %27 = load %struct.TYPE_8__**, %struct.TYPE_8__*** @MCPWM, align 8
  %28 = load i64, i64* %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %27, i64 %28
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %31, align 8
  %33 = load i64, i64* %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  store i32 %26, i32* %36, align 8
  %37 = load i64, i64* %8, align 8
  %38 = load i64, i64* @MCPWM_SELECT_F0, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %105

40:                                               ; preds = %5
  %41 = load %struct.TYPE_8__**, %struct.TYPE_8__*** @MCPWM, align 8
  %42 = load i64, i64* %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %41, i64 %42
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %45, align 8
  %47 = load i64, i64* %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  store i32 1, i32* %50, align 8
  %51 = load %struct.TYPE_8__**, %struct.TYPE_8__*** @MCPWM, align 8
  %52 = load i64, i64* %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %51, i64 %52
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %55, align 8
  %57 = load i64, i64* %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 9
  store i64 0, i64* %60, align 8
  %61 = load i8*, i8** %9, align 8
  %62 = load %struct.TYPE_8__**, %struct.TYPE_8__*** @MCPWM, align 8
  %63 = load i64, i64* %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %62, i64 %63
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %66, align 8
  %68 = load i64, i64* %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 6
  store i8* %61, i8** %71, align 8
  %72 = load i8*, i8** %9, align 8
  %73 = load %struct.TYPE_8__**, %struct.TYPE_8__*** @MCPWM, align 8
  %74 = load i64, i64* %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %73, i64 %74
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %77, align 8
  %79 = load i64, i64* %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 5
  store i8* %72, i8** %82, align 8
  %83 = load i8*, i8** %10, align 8
  %84 = load %struct.TYPE_8__**, %struct.TYPE_8__*** @MCPWM, align 8
  %85 = load i64, i64* %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %84, i64 %85
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %88, align 8
  %90 = load i64, i64* %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 4
  store i8* %83, i8** %93, align 8
  %94 = load i8*, i8** %10, align 8
  %95 = load %struct.TYPE_8__**, %struct.TYPE_8__*** @MCPWM, align 8
  %96 = load i64, i64* %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %95, i64 %96
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 0
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %99, align 8
  %101 = load i64, i64* %7, align 8
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 3
  store i8* %94, i8** %104, align 8
  br label %240

105:                                              ; preds = %5
  %106 = load i64, i64* %8, align 8
  %107 = load i64, i64* @MCPWM_SELECT_F1, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %174

109:                                              ; preds = %105
  %110 = load %struct.TYPE_8__**, %struct.TYPE_8__*** @MCPWM, align 8
  %111 = load i64, i64* %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %110, i64 %111
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 0
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %114, align 8
  %116 = load i64, i64* %7, align 8
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 1
  store i32 1, i32* %119, align 4
  %120 = load %struct.TYPE_8__**, %struct.TYPE_8__*** @MCPWM, align 8
  %121 = load i64, i64* %6, align 8
  %122 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %120, i64 %121
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 0
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %124, align 8
  %126 = load i64, i64* %7, align 8
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 8
  store i64 0, i64* %129, align 8
  %130 = load i8*, i8** %9, align 8
  %131 = load %struct.TYPE_8__**, %struct.TYPE_8__*** @MCPWM, align 8
  %132 = load i64, i64* %6, align 8
  %133 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %131, i64 %132
  %134 = load %struct.TYPE_8__*, %struct.TYPE_8__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 0
  %136 = load %struct.TYPE_7__*, %struct.TYPE_7__** %135, align 8
  %137 = load i64, i64* %7, align 8
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 6
  store i8* %130, i8** %140, align 8
  %141 = load i8*, i8** %9, align 8
  %142 = load %struct.TYPE_8__**, %struct.TYPE_8__*** @MCPWM, align 8
  %143 = load i64, i64* %6, align 8
  %144 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %142, i64 %143
  %145 = load %struct.TYPE_8__*, %struct.TYPE_8__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %145, i32 0, i32 0
  %147 = load %struct.TYPE_7__*, %struct.TYPE_7__** %146, align 8
  %148 = load i64, i64* %7, align 8
  %149 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i64 %148
  %150 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 5
  store i8* %141, i8** %151, align 8
  %152 = load i8*, i8** %10, align 8
  %153 = load %struct.TYPE_8__**, %struct.TYPE_8__*** @MCPWM, align 8
  %154 = load i64, i64* %6, align 8
  %155 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %153, i64 %154
  %156 = load %struct.TYPE_8__*, %struct.TYPE_8__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %156, i32 0, i32 0
  %158 = load %struct.TYPE_7__*, %struct.TYPE_7__** %157, align 8
  %159 = load i64, i64* %7, align 8
  %160 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %158, i64 %159
  %161 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %161, i32 0, i32 4
  store i8* %152, i8** %162, align 8
  %163 = load i8*, i8** %10, align 8
  %164 = load %struct.TYPE_8__**, %struct.TYPE_8__*** @MCPWM, align 8
  %165 = load i64, i64* %6, align 8
  %166 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %164, i64 %165
  %167 = load %struct.TYPE_8__*, %struct.TYPE_8__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %167, i32 0, i32 0
  %169 = load %struct.TYPE_7__*, %struct.TYPE_7__** %168, align 8
  %170 = load i64, i64* %7, align 8
  %171 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %169, i64 %170
  %172 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %172, i32 0, i32 3
  store i8* %163, i8** %173, align 8
  br label %239

174:                                              ; preds = %105
  %175 = load %struct.TYPE_8__**, %struct.TYPE_8__*** @MCPWM, align 8
  %176 = load i64, i64* %6, align 8
  %177 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %175, i64 %176
  %178 = load %struct.TYPE_8__*, %struct.TYPE_8__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %178, i32 0, i32 0
  %180 = load %struct.TYPE_7__*, %struct.TYPE_7__** %179, align 8
  %181 = load i64, i64* %7, align 8
  %182 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %180, i64 %181
  %183 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %183, i32 0, i32 2
  store i32 1, i32* %184, align 8
  %185 = load %struct.TYPE_8__**, %struct.TYPE_8__*** @MCPWM, align 8
  %186 = load i64, i64* %6, align 8
  %187 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %185, i64 %186
  %188 = load %struct.TYPE_8__*, %struct.TYPE_8__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %188, i32 0, i32 0
  %190 = load %struct.TYPE_7__*, %struct.TYPE_7__** %189, align 8
  %191 = load i64, i64* %7, align 8
  %192 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %190, i64 %191
  %193 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %193, i32 0, i32 7
  store i64 0, i64* %194, align 8
  %195 = load i8*, i8** %9, align 8
  %196 = load %struct.TYPE_8__**, %struct.TYPE_8__*** @MCPWM, align 8
  %197 = load i64, i64* %6, align 8
  %198 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %196, i64 %197
  %199 = load %struct.TYPE_8__*, %struct.TYPE_8__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %199, i32 0, i32 0
  %201 = load %struct.TYPE_7__*, %struct.TYPE_7__** %200, align 8
  %202 = load i64, i64* %7, align 8
  %203 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %201, i64 %202
  %204 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %203, i32 0, i32 0
  %205 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %204, i32 0, i32 6
  store i8* %195, i8** %205, align 8
  %206 = load i8*, i8** %9, align 8
  %207 = load %struct.TYPE_8__**, %struct.TYPE_8__*** @MCPWM, align 8
  %208 = load i64, i64* %6, align 8
  %209 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %207, i64 %208
  %210 = load %struct.TYPE_8__*, %struct.TYPE_8__** %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %210, i32 0, i32 0
  %212 = load %struct.TYPE_7__*, %struct.TYPE_7__** %211, align 8
  %213 = load i64, i64* %7, align 8
  %214 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %212, i64 %213
  %215 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %214, i32 0, i32 0
  %216 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %215, i32 0, i32 5
  store i8* %206, i8** %216, align 8
  %217 = load i8*, i8** %10, align 8
  %218 = load %struct.TYPE_8__**, %struct.TYPE_8__*** @MCPWM, align 8
  %219 = load i64, i64* %6, align 8
  %220 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %218, i64 %219
  %221 = load %struct.TYPE_8__*, %struct.TYPE_8__** %220, align 8
  %222 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %221, i32 0, i32 0
  %223 = load %struct.TYPE_7__*, %struct.TYPE_7__** %222, align 8
  %224 = load i64, i64* %7, align 8
  %225 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %223, i64 %224
  %226 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %225, i32 0, i32 0
  %227 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %226, i32 0, i32 4
  store i8* %217, i8** %227, align 8
  %228 = load i8*, i8** %10, align 8
  %229 = load %struct.TYPE_8__**, %struct.TYPE_8__*** @MCPWM, align 8
  %230 = load i64, i64* %6, align 8
  %231 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %229, i64 %230
  %232 = load %struct.TYPE_8__*, %struct.TYPE_8__** %231, align 8
  %233 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %232, i32 0, i32 0
  %234 = load %struct.TYPE_7__*, %struct.TYPE_7__** %233, align 8
  %235 = load i64, i64* %7, align 8
  %236 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %234, i64 %235
  %237 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %236, i32 0, i32 0
  %238 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %237, i32 0, i32 3
  store i8* %228, i8** %238, align 8
  br label %239

239:                                              ; preds = %174, %109
  br label %240

240:                                              ; preds = %239, %40
  %241 = call i32 @portEXIT_CRITICAL(i32* @mcpwm_spinlock)
  %242 = load i32, i32* @ESP_OK, align 4
  ret i32 %242
}

declare dso_local i32 @MCPWM_CHECK(i32, i32, i32) #1

declare dso_local i32 @portENTER_CRITICAL(i32*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @portEXIT_CRITICAL(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
