; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_vfr.c_adjust_frame_rate.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_vfr.c_adjust_frame_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, double, i32, double, i32, i32, i64*, i32, i32, i32, i32 }
%struct.TYPE_20__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { double, double, double, i64 }

@AV_NOPTS_VALUE = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_20__* (%struct.TYPE_19__*, %struct.TYPE_20__*)* @adjust_frame_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_20__* @adjust_frame_rate(%struct.TYPE_19__* %0, %struct.TYPE_20__* %1) #0 {
  %3 = alloca %struct.TYPE_20__*, align 8
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_20__*, align 8
  %8 = alloca %struct.TYPE_20__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_20__*, align 8
  %11 = alloca double, align 8
  %12 = alloca i32, align 4
  %13 = alloca double, align 8
  %14 = alloca %struct.TYPE_20__*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %4, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %5, align 8
  %15 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %31

19:                                               ; preds = %2
  %20 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 8
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %21, align 8
  %24 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %25, i32 0, i32 0
  %27 = load double, double* %26, align 8
  %28 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %28, i32 0, i32 1
  store double %27, double* %29, align 8
  %30 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  store %struct.TYPE_20__* %30, %struct.TYPE_20__** %3, align 8
  br label %247

31:                                               ; preds = %2
  %32 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %33 = icmp ne %struct.TYPE_20__* %32, null
  br i1 %33, label %34, label %94

34:                                               ; preds = %31
  %35 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %35, i32 0, i32 1
  %37 = load double, double* %36, align 8
  %38 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %39 = sitofp i64 %38 to double
  %40 = fcmp oeq double %37, %39
  br i1 %40, label %41, label %48

41:                                               ; preds = %34
  %42 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %43, i32 0, i32 1
  %45 = load double, double* %44, align 8
  %46 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %46, i32 0, i32 1
  store double %45, double* %47, align 8
  br label %48

48:                                               ; preds = %41, %34
  %49 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %49, i32 0, i32 7
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %53 = call i32 @hb_list_add(i32 %51, %struct.TYPE_20__* %52)
  %54 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %54, i32 0, i32 7
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @hb_list_count(i32 %56)
  store i32 %57, i32* %6, align 4
  %58 = load i32, i32* %6, align 4
  %59 = icmp slt i32 %58, 2
  br i1 %59, label %60, label %61

60:                                               ; preds = %48
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %3, align 8
  br label %247

61:                                               ; preds = %48
  %62 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %62, i32 0, i32 7
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* %6, align 4
  %66 = sub nsw i32 %65, 2
  %67 = call %struct.TYPE_20__* @hb_list_item(i32 %64, i32 %66)
  store %struct.TYPE_20__* %67, %struct.TYPE_20__** %7, align 8
  %68 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %68, i32 0, i32 7
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* %6, align 4
  %72 = sub nsw i32 %71, 1
  %73 = call %struct.TYPE_20__* @hb_list_item(i32 %70, i32 %72)
  store %struct.TYPE_20__* %73, %struct.TYPE_20__** %8, align 8
  %74 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %74, i32 0, i32 9
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %78 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %79 = call i64 @motion_metric(i32 %76, %struct.TYPE_20__* %77, %struct.TYPE_20__* %78)
  %80 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %80, i32 0, i32 6
  %82 = load i64*, i64** %81, align 8
  %83 = load i32, i32* %6, align 4
  %84 = sub nsw i32 %83, 1
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i64, i64* %82, i64 %85
  store i64 %79, i64* %86, align 8
  %87 = load i32, i32* %6, align 4
  %88 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = icmp slt i32 %87, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %61
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %3, align 8
  br label %247

93:                                               ; preds = %61
  br label %99

94:                                               ; preds = %31
  %95 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %95, i32 0, i32 7
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @hb_list_count(i32 %97)
  store i32 %98, i32* %6, align 4
  br label %99

99:                                               ; preds = %94, %93
  %100 = call %struct.TYPE_20__* @hb_buffer_list_clear(i32* %9)
  %101 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %102 = load i32, i32* %6, align 4
  %103 = call i32 @find_drop_frame(%struct.TYPE_19__* %101, i32 %102)
  store i32 %103, i32* %12, align 4
  %104 = load i32, i32* %12, align 4
  %105 = icmp sge i32 %104, 0
  br i1 %105, label %106, label %128

106:                                              ; preds = %99
  %107 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %107, i32 0, i32 7
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* %12, align 4
  %111 = call %struct.TYPE_20__* @hb_list_item(i32 %109, i32 %110)
  store %struct.TYPE_20__* %111, %struct.TYPE_20__** %10, align 8
  %112 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %112, i32 0, i32 7
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %116 = call i32 @hb_list_rem(i32 %114, %struct.TYPE_20__* %115)
  %117 = call i32 @hb_buffer_close(%struct.TYPE_20__** %10)
  %118 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %118, i32 0, i32 6
  %120 = load i64*, i64** %119, align 8
  %121 = load i32, i32* %12, align 4
  %122 = load i32, i32* %6, align 4
  %123 = call i32 @delete_metric(i64* %120, i32 %121, i32 %122)
  %124 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %124, i32 0, i32 8
  %126 = load i32, i32* %125, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %125, align 4
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %3, align 8
  br label %247

128:                                              ; preds = %99
  %129 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %129, i32 0, i32 7
  %131 = load i32, i32* %130, align 8
  %132 = call %struct.TYPE_20__* @hb_list_item(i32 %131, i32 0)
  store %struct.TYPE_20__* %132, %struct.TYPE_20__** %10, align 8
  %133 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %133, i32 0, i32 7
  %135 = load i32, i32* %134, align 8
  %136 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %137 = call i32 @hb_list_rem(i32 %135, %struct.TYPE_20__* %136)
  %138 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %139 = call i32 @hb_buffer_list_append(i32* %9, %struct.TYPE_20__* %138)
  %140 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %141 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %140, i32 0, i32 6
  %142 = load i64*, i64** %141, align 8
  %143 = load i32, i32* %6, align 4
  %144 = call i32 @delete_metric(i64* %142, i32 0, i32 %143)
  %145 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %146 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %145, i32 0, i32 1
  %147 = load double, double* %146, align 8
  %148 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %149 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %149, i32 0, i32 1
  store double %147, double* %150, align 8
  %151 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %152 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %151, i32 0, i32 1
  %153 = load double, double* %152, align 8
  %154 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %155 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %154, i32 0, i32 3
  %156 = load double, double* %155, align 8
  %157 = fadd double %153, %156
  store double %157, double* %11, align 8
  %158 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %159 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %158, i32 0, i32 4
  %160 = load i32, i32* %159, align 8
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %159, align 8
  %162 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %163 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = icmp sgt i32 %164, 1
  br i1 %165, label %166, label %188

166:                                              ; preds = %128
  %167 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %168 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %168, i32 0, i32 0
  %170 = load double, double* %169, align 8
  %171 = load double, double* %11, align 8
  %172 = fcmp olt double %170, %171
  br i1 %172, label %173, label %180

173:                                              ; preds = %166
  %174 = load double, double* %11, align 8
  %175 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %176 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %175, i32 0, i32 1
  store double %174, double* %176, align 8
  %177 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %178 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %178, i32 0, i32 0
  store double %174, double* %179, align 8
  br label %187

180:                                              ; preds = %166
  %181 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %182 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %182, i32 0, i32 0
  %184 = load double, double* %183, align 8
  %185 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %186 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %185, i32 0, i32 1
  store double %184, double* %186, align 8
  br label %187

187:                                              ; preds = %180, %173
  br label %245

188:                                              ; preds = %128
  %189 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %190 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %190, i32 0, i32 0
  %192 = load double, double* %191, align 8
  %193 = load double, double* %11, align 8
  %194 = fsub double %192, %193
  store double %194, double* %13, align 8
  %195 = load double, double* %11, align 8
  %196 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %197 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %196, i32 0, i32 1
  store double %195, double* %197, align 8
  %198 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %199 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %199, i32 0, i32 0
  store double %195, double* %200, align 8
  br label %201

201:                                              ; preds = %238, %188
  %202 = load double, double* %13, align 8
  %203 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %204 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %203, i32 0, i32 3
  %205 = load double, double* %204, align 8
  %206 = fcmp oge double %202, %205
  br i1 %206, label %207, label %244

207:                                              ; preds = %201
  %208 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %209 = call %struct.TYPE_20__* @hb_buffer_dup(%struct.TYPE_20__* %208)
  store %struct.TYPE_20__* %209, %struct.TYPE_20__** %14, align 8
  %210 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %211 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %210, i32 0, i32 0
  %212 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %211, i32 0, i32 3
  store i64 0, i64* %212, align 8
  %213 = load double, double* %11, align 8
  %214 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %215 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %214, i32 0, i32 0
  %216 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %215, i32 0, i32 1
  store double %213, double* %216, align 8
  %217 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %218 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %217, i32 0, i32 3
  %219 = load double, double* %218, align 8
  %220 = load double, double* %11, align 8
  %221 = fadd double %220, %219
  store double %221, double* %11, align 8
  %222 = load double, double* %11, align 8
  %223 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %224 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %223, i32 0, i32 1
  store double %222, double* %224, align 8
  %225 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %226 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %225, i32 0, i32 0
  %227 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %226, i32 0, i32 0
  store double %222, double* %227, align 8
  %228 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %229 = call i32 @hb_buffer_list_append(i32* %9, %struct.TYPE_20__* %228)
  %230 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %231 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %230, i32 0, i32 5
  %232 = load i32, i32* %231, align 4
  %233 = add nsw i32 %232, 1
  store i32 %233, i32* %231, align 4
  %234 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %235 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %234, i32 0, i32 4
  %236 = load i32, i32* %235, align 8
  %237 = add nsw i32 %236, 1
  store i32 %237, i32* %235, align 8
  br label %238

238:                                              ; preds = %207
  %239 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %240 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %239, i32 0, i32 3
  %241 = load double, double* %240, align 8
  %242 = load double, double* %13, align 8
  %243 = fsub double %242, %241
  store double %243, double* %13, align 8
  br label %201

244:                                              ; preds = %201
  br label %245

245:                                              ; preds = %244, %187
  %246 = call %struct.TYPE_20__* @hb_buffer_list_clear(i32* %9)
  store %struct.TYPE_20__* %246, %struct.TYPE_20__** %3, align 8
  br label %247

247:                                              ; preds = %245, %106, %92, %60, %19
  %248 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  ret %struct.TYPE_20__* %248
}

declare dso_local i32 @hb_list_add(i32, %struct.TYPE_20__*) #1

declare dso_local i32 @hb_list_count(i32) #1

declare dso_local %struct.TYPE_20__* @hb_list_item(i32, i32) #1

declare dso_local i64 @motion_metric(i32, %struct.TYPE_20__*, %struct.TYPE_20__*) #1

declare dso_local %struct.TYPE_20__* @hb_buffer_list_clear(i32*) #1

declare dso_local i32 @find_drop_frame(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @hb_list_rem(i32, %struct.TYPE_20__*) #1

declare dso_local i32 @hb_buffer_close(%struct.TYPE_20__**) #1

declare dso_local i32 @delete_metric(i64*, i32, i32) #1

declare dso_local i32 @hb_buffer_list_append(i32*, %struct.TYPE_20__*) #1

declare dso_local %struct.TYPE_20__* @hb_buffer_dup(%struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
