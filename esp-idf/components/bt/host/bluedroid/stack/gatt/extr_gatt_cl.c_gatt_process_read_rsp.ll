; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/gatt/extr_gatt_cl.c_gatt_process_read_rsp.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/gatt/extr_gatt_cl.c_gatt_process_read_rsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i32 }
%struct.TYPE_25__ = type { i64, i64, i64, i64, %struct.TYPE_23__, i32, %struct.TYPE_22__*, i32 }
%struct.TYPE_23__ = type { %struct.TYPE_16__, i64, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i64, %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_22__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i32 (i32, i64, %struct.TYPE_16__*)* }

@GATTC_OPTYPE_READ = common dso_local global i64 0, align 8
@GATT_READ_BY_HANDLE = common dso_local global i64 0, align 8
@GATT_SUCCESS = common dso_local global i32 0, align 4
@GATT_MAX_ATTR_LEN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [80 x i8] c"full pkt issue read blob for remianing bytes old offset=%d len=%d new offset=%d\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"attr offset = %d p_attr_buf = %p \00", align 1
@GATT_NO_RESOURCES = common dso_local global i32 0, align 4
@GATTC_OPTYPE_DISCOVERY = common dso_local global i64 0, align 8
@GATT_DISC_INC_SRVC = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@LEN_UUID_128 = common dso_local global i64 0, align 8
@GATT_INVALID_PDU = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gatt_process_read_rsp(%struct.TYPE_24__* %0, %struct.TYPE_25__* %1, i32 %2, i64 %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_24__*, align 8
  %7 = alloca %struct.TYPE_25__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %6, align 8
  store %struct.TYPE_25__* %1, %struct.TYPE_25__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  store i32* %4, i32** %10, align 8
  %13 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %14 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %11, align 8
  %16 = load i32*, i32** %10, align 8
  store i32* %16, i32** %12, align 8
  %17 = load i32, i32* %8, align 4
  %18 = call i32 @UNUSED(i32 %17)
  %19 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @GATTC_OPTYPE_READ, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %133

24:                                               ; preds = %5
  %25 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @GATT_READ_BY_HANDLE, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %39

30:                                               ; preds = %24
  %31 = load i64, i64* %9, align 8
  %32 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %32, i32 0, i32 0
  store i64 %31, i64* %33, align 8
  %34 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %35 = load i32, i32* @GATT_SUCCESS, align 4
  %36 = load i32*, i32** %12, align 8
  %37 = bitcast i32* %36 to i8*
  %38 = call i32 @gatt_end_operation(%struct.TYPE_25__* %34, i32 %35, i8* %37)
  br label %132

39:                                               ; preds = %24
  %40 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %40, i32 0, i32 3
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %51, label %44

44:                                               ; preds = %39
  %45 = load i64, i64* @GATT_MAX_ATTR_LEN, align 8
  %46 = call i64 @osi_malloc(i64 %45)
  %47 = inttoptr i64 %46 to i32*
  %48 = ptrtoint i32* %47 to i64
  %49 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %49, i32 0, i32 3
  store i64 %48, i64* %50, align 8
  br label %51

51:                                               ; preds = %44, %39
  %52 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %52, i32 0, i32 3
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %118

56:                                               ; preds = %51
  %57 = load i64, i64* %11, align 8
  %58 = load i64, i64* @GATT_MAX_ATTR_LEN, align 8
  %59 = icmp slt i64 %57, %58
  br i1 %59, label %60, label %118

60:                                               ; preds = %56
  %61 = load i64, i64* %9, align 8
  %62 = load i64, i64* %11, align 8
  %63 = add nsw i64 %61, %62
  %64 = load i64, i64* @GATT_MAX_ATTR_LEN, align 8
  %65 = icmp sgt i64 %63, %64
  br i1 %65, label %66, label %70

66:                                               ; preds = %60
  %67 = load i64, i64* @GATT_MAX_ATTR_LEN, align 8
  %68 = load i64, i64* %11, align 8
  %69 = sub nsw i64 %67, %68
  store i64 %69, i64* %9, align 8
  br label %70

70:                                               ; preds = %66, %60
  %71 = load i64, i64* %9, align 8
  %72 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = add nsw i64 %74, %71
  store i64 %75, i64* %73, align 8
  %76 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %76, i32 0, i32 3
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* %11, align 8
  %80 = add nsw i64 %78, %79
  %81 = load i32*, i32** %12, align 8
  %82 = load i64, i64* %9, align 8
  %83 = call i32 @memcpy(i64 %80, i32* %81, i64 %82)
  %84 = load i64, i64* %9, align 8
  %85 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = sub nsw i32 %87, 1
  %89 = sext i32 %88 to i64
  %90 = icmp eq i64 %84, %89
  br i1 %90, label %91, label %109

91:                                               ; preds = %70
  %92 = load i64, i64* %9, align 8
  %93 = load i64, i64* %11, align 8
  %94 = add nsw i64 %92, %93
  %95 = load i64, i64* @GATT_MAX_ATTR_LEN, align 8
  %96 = icmp slt i64 %94, %95
  br i1 %96, label %97, label %109

97:                                               ; preds = %91
  %98 = load i64, i64* %11, align 8
  %99 = load i64, i64* %9, align 8
  %100 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = call i32 @GATT_TRACE_DEBUG(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str, i64 0, i64 0), i64 %98, i64 %99, i64 %102)
  %104 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %105 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %106 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = call i32 @gatt_act_read(%struct.TYPE_25__* %104, i64 %107)
  br label %117

109:                                              ; preds = %91, %70
  %110 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %111 = load i32, i32* @GATT_SUCCESS, align 4
  %112 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %113 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %112, i32 0, i32 3
  %114 = load i64, i64* %113, align 8
  %115 = inttoptr i64 %114 to i8*
  %116 = call i32 @gatt_end_operation(%struct.TYPE_25__* %110, i32 %111, i8* %115)
  br label %117

117:                                              ; preds = %109, %97
  br label %131

118:                                              ; preds = %56, %51
  %119 = load i64, i64* %11, align 8
  %120 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %121 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %120, i32 0, i32 3
  %122 = load i64, i64* %121, align 8
  %123 = call i32 @GATT_TRACE_ERROR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i64 %119, i64 %122)
  %124 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %125 = load i32, i32* @GATT_NO_RESOURCES, align 4
  %126 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %127 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %126, i32 0, i32 3
  %128 = load i64, i64* %127, align 8
  %129 = inttoptr i64 %128 to i8*
  %130 = call i32 @gatt_end_operation(%struct.TYPE_25__* %124, i32 %125, i8* %129)
  br label %131

131:                                              ; preds = %118, %117
  br label %132

132:                                              ; preds = %131, %30
  br label %221

133:                                              ; preds = %5
  %134 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %135 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* @GATTC_OPTYPE_DISCOVERY, align 8
  %138 = icmp eq i64 %136, %137
  br i1 %138, label %139, label %220

139:                                              ; preds = %133
  %140 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %141 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %140, i32 0, i32 2
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* @GATT_DISC_INC_SRVC, align 8
  %144 = icmp eq i64 %142, %143
  br i1 %144, label %145, label %220

145:                                              ; preds = %139
  %146 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %147 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %146, i32 0, i32 4
  %148 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %147, i32 0, i32 1
  %149 = load i64, i64* %148, align 8
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %220

151:                                              ; preds = %145
  %152 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %153 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %152, i32 0, i32 4
  %154 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 8
  %156 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %157 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %156, i32 0, i32 7
  store i32 %155, i32* %157, align 8
  %158 = load i64, i64* @FALSE, align 8
  %159 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %160 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %159, i32 0, i32 4
  %161 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %160, i32 0, i32 1
  store i64 %158, i64* %161, align 8
  %162 = load i64, i64* %9, align 8
  %163 = load i64, i64* @LEN_UUID_128, align 8
  %164 = icmp eq i64 %162, %163
  br i1 %164, label %165, label %213

165:                                              ; preds = %151
  %166 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %167 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %166, i32 0, i32 4
  %168 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %171, i32 0, i32 1
  %173 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = load i32*, i32** %12, align 8
  %176 = load i64, i64* %9, align 8
  %177 = call i32 @memcpy(i64 %174, i32* %175, i64 %176)
  %178 = load i64, i64* @LEN_UUID_128, align 8
  %179 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %180 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %179, i32 0, i32 4
  %181 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %184, i32 0, i32 0
  store i64 %178, i64* %185, align 8
  %186 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %187 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %186, i32 0, i32 6
  %188 = load %struct.TYPE_22__*, %struct.TYPE_22__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %189, i32 0, i32 0
  %191 = load i32 (i32, i64, %struct.TYPE_16__*)*, i32 (i32, i64, %struct.TYPE_16__*)** %190, align 8
  %192 = icmp ne i32 (i32, i64, %struct.TYPE_16__*)* %191, null
  br i1 %192, label %193, label %210

193:                                              ; preds = %165
  %194 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %195 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %194, i32 0, i32 6
  %196 = load %struct.TYPE_22__*, %struct.TYPE_22__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %197, i32 0, i32 0
  %199 = load i32 (i32, i64, %struct.TYPE_16__*)*, i32 (i32, i64, %struct.TYPE_16__*)** %198, align 8
  %200 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %201 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %200, i32 0, i32 5
  %202 = load i32, i32* %201, align 8
  %203 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %204 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %203, i32 0, i32 2
  %205 = load i64, i64* %204, align 8
  %206 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %207 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %206, i32 0, i32 4
  %208 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %207, i32 0, i32 0
  %209 = call i32 %199(i32 %202, i64 %205, %struct.TYPE_16__* %208)
  br label %210

210:                                              ; preds = %193, %165
  %211 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %212 = call i32 @gatt_act_discovery(%struct.TYPE_25__* %211)
  br label %219

213:                                              ; preds = %151
  %214 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %215 = load i32, i32* @GATT_INVALID_PDU, align 4
  %216 = load i32*, i32** %12, align 8
  %217 = bitcast i32* %216 to i8*
  %218 = call i32 @gatt_end_operation(%struct.TYPE_25__* %214, i32 %215, i8* %217)
  br label %219

219:                                              ; preds = %213, %210
  br label %220

220:                                              ; preds = %219, %145, %139, %133
  br label %221

221:                                              ; preds = %220, %132
  ret void
}

declare dso_local i32 @UNUSED(i32) #1

declare dso_local i32 @gatt_end_operation(%struct.TYPE_25__*, i32, i8*) #1

declare dso_local i64 @osi_malloc(i64) #1

declare dso_local i32 @memcpy(i64, i32*, i64) #1

declare dso_local i32 @GATT_TRACE_DEBUG(i8*, i64, i64, i64) #1

declare dso_local i32 @gatt_act_read(%struct.TYPE_25__*, i64) #1

declare dso_local i32 @GATT_TRACE_ERROR(i8*, i64, i64) #1

declare dso_local i32 @gatt_act_discovery(%struct.TYPE_25__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
