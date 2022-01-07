; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/gatt/extr_gatt_utils.c_gatt_end_operation.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/gatt/extr_gatt_utils.c_gatt_end_operation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i64, i64, i32, i32, i64, %struct.TYPE_15__*, i32, i64, %struct.TYPE_14__* }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 (i32, i64, i32)*, i32 (i32, i64, i32, %struct.TYPE_17__*)* }
%struct.TYPE_17__ = type { i32, %struct.TYPE_16__, i32 }
%struct.TYPE_16__ = type { i32, i64, i32 }

@GATT_DISC_MAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [46 x i8] c"gatt_end_operation status=%d op=%d subtype=%d\00", align 1
@GATTC_OPTYPE_READ = common dso_local global i64 0, align 8
@GATTC_OPTYPE_WRITE = common dso_local global i64 0, align 8
@GATT_WRITE_PREPARE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [34 x i8] c"Rcv Prepare write rsp but no data\00", align 1
@GATTC_OPTYPE_CONFIG = common dso_local global i64 0, align 8
@GATTC_OPTYPE_DISCOVERY = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [69 x i8] c"gatt_end_operation not sent out op=%d p_disc_cmpl_cb:%p p_cmpl_cb:%p\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gatt_end_operation(%struct.TYPE_18__* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_17__, align 8
  %8 = alloca i32 (i32, i64, i32, %struct.TYPE_17__*)**, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32 (i32, i64, i32)**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %14 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %14, i32 0, i32 8
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %17 = icmp ne %struct.TYPE_14__* %16, null
  br i1 %17, label %18, label %25

18:                                               ; preds = %3
  %19 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %19, i32 0, i32 8
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 1
  %24 = load i32 (i32, i64, i32, %struct.TYPE_17__*)*, i32 (i32, i64, i32, %struct.TYPE_17__*)** %23, align 8
  br label %26

25:                                               ; preds = %3
  br label %26

26:                                               ; preds = %25, %18
  %27 = phi i32 (i32, i64, i32, %struct.TYPE_17__*)* [ %24, %18 ], [ null, %25 ]
  %28 = bitcast i32 (i32, i64, i32, %struct.TYPE_17__*)* %27 to i32 (i32, i64, i32, %struct.TYPE_17__*)**
  store i32 (i32, i64, i32, %struct.TYPE_17__*)** %28, i32 (i32, i64, i32, %struct.TYPE_17__*)*** %8, align 8
  %29 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %9, align 8
  %32 = load i64, i64* @GATT_DISC_MAX, align 8
  store i64 %32, i64* %10, align 8
  %33 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %33, i32 0, i32 8
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %34, align 8
  %36 = icmp ne %struct.TYPE_14__* %35, null
  br i1 %36, label %37, label %44

37:                                               ; preds = %26
  %38 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %38, i32 0, i32 8
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 0
  %43 = load i32 (i32, i64, i32)*, i32 (i32, i64, i32)** %42, align 8
  br label %45

44:                                               ; preds = %26
  br label %45

45:                                               ; preds = %44, %37
  %46 = phi i32 (i32, i64, i32)* [ %43, %37 ], [ null, %44 ]
  %47 = bitcast i32 (i32, i64, i32)* %46 to i32 (i32, i64, i32)**
  store i32 (i32, i64, i32)** %47, i32 (i32, i64, i32)*** %11, align 8
  %48 = load i32, i32* %5, align 4
  %49 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = call i32 (i8*, ...) @GATT_TRACE_DEBUG(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %48, i64 %51, i64 %54)
  %56 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 1
  %57 = call i32 @memset(%struct.TYPE_16__* %56, i32 0, i32 24)
  %58 = load i32 (i32, i64, i32, %struct.TYPE_17__*)**, i32 (i32, i64, i32, %struct.TYPE_17__*)*** %8, align 8
  %59 = icmp ne i32 (i32, i64, i32, %struct.TYPE_17__*)** %58, null
  br i1 %59, label %60, label %156

60:                                               ; preds = %45
  %61 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %156

65:                                               ; preds = %60
  %66 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @GATTC_OPTYPE_READ, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %99

71:                                               ; preds = %65
  %72 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %72, i32 0, i32 6
  %74 = load i32, i32* %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 8
  %77 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %77, i32 0, i32 7
  %79 = load i64, i64* %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %80, i32 0, i32 1
  store i64 %79, i64* %81, align 8
  %82 = load i8*, i8** %6, align 8
  %83 = icmp ne i8* %82, null
  br i1 %83, label %84, label %98

84:                                               ; preds = %71
  %85 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %85, i32 0, i32 7
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %98

89:                                               ; preds = %84
  %90 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = load i8*, i8** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = call i32 @memcpy(i32 %92, i8* %93, i64 %96)
  br label %98

98:                                               ; preds = %89, %84, %71
  br label %99

99:                                               ; preds = %98, %65
  %100 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @GATTC_OPTYPE_WRITE, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %105, label %132

105:                                              ; preds = %99
  %106 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 1
  %107 = call i32 @memset(%struct.TYPE_16__* %106, i32 0, i32 24)
  %108 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %108, i32 0, i32 6
  %110 = load i32, i32* %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %111, i32 0, i32 0
  store i32 %110, i32* %112, align 8
  %113 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 2
  store i32 %110, i32* %113, align 8
  %114 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @GATT_WRITE_PREPARE, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %119, label %131

119:                                              ; preds = %105
  %120 = load i8*, i8** %6, align 8
  %121 = icmp ne i8* %120, null
  br i1 %121, label %122, label %128

122:                                              ; preds = %119
  %123 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 1
  %124 = load i8*, i8** %6, align 8
  %125 = bitcast i8* %124 to %struct.TYPE_16__*
  %126 = bitcast %struct.TYPE_16__* %123 to i8*
  %127 = bitcast %struct.TYPE_16__* %125 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %126, i8* align 8 %127, i64 24, i1 false)
  br label %130

128:                                              ; preds = %119
  %129 = call i32 (i8*, ...) @GATT_TRACE_DEBUG(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %130

130:                                              ; preds = %128, %122
  br label %131

131:                                              ; preds = %130, %105
  br label %132

132:                                              ; preds = %131, %99
  %133 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* @GATTC_OPTYPE_CONFIG, align 8
  %137 = icmp eq i64 %135, %136
  br i1 %137, label %138, label %145

138:                                              ; preds = %132
  %139 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %140 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %139, i32 0, i32 5
  %141 = load %struct.TYPE_15__*, %struct.TYPE_15__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 0
  store i32 %143, i32* %144, align 8
  br label %145

145:                                              ; preds = %138, %132
  %146 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %147 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = load i64, i64* @GATTC_OPTYPE_DISCOVERY, align 8
  %150 = icmp eq i64 %148, %149
  br i1 %150, label %151, label %155

151:                                              ; preds = %145
  %152 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %153 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %152, i32 0, i32 1
  %154 = load i64, i64* %153, align 8
  store i64 %154, i64* %10, align 8
  br label %155

155:                                              ; preds = %151, %145
  br label %156

156:                                              ; preds = %155, %60, %45
  %157 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %158 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %157, i32 0, i32 4
  %159 = load i64, i64* %158, align 8
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %166

161:                                              ; preds = %156
  %162 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %163 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %162, i32 0, i32 4
  %164 = load i64, i64* %163, align 8
  %165 = call i32 @osi_free(i64 %164)
  br label %166

166:                                              ; preds = %161, %156
  %167 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %168 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  store i64 %169, i64* %13, align 8
  %170 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %171 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %170, i32 0, i32 3
  %172 = load i32, i32* %171, align 4
  store i32 %172, i32* %12, align 4
  %173 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %174 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %173, i32 0, i32 2
  %175 = call i32 @btu_stop_timer(i32* %174)
  %176 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %177 = call i32 @gatt_clcb_dealloc(%struct.TYPE_18__* %176)
  %178 = load i32 (i32, i64, i32)**, i32 (i32, i64, i32)*** %11, align 8
  %179 = icmp ne i32 (i32, i64, i32)** %178, null
  br i1 %179, label %180, label %191

180:                                              ; preds = %166
  %181 = load i64, i64* %9, align 8
  %182 = load i64, i64* @GATTC_OPTYPE_DISCOVERY, align 8
  %183 = icmp eq i64 %181, %182
  br i1 %183, label %184, label %191

184:                                              ; preds = %180
  %185 = load i32 (i32, i64, i32)**, i32 (i32, i64, i32)*** %11, align 8
  %186 = load i32 (i32, i64, i32)*, i32 (i32, i64, i32)** %185, align 8
  %187 = load i32, i32* %12, align 4
  %188 = load i64, i64* %10, align 8
  %189 = load i32, i32* %5, align 4
  %190 = call i32 %186(i32 %187, i64 %188, i32 %189)
  br label %212

191:                                              ; preds = %180, %166
  %192 = load i32 (i32, i64, i32, %struct.TYPE_17__*)**, i32 (i32, i64, i32, %struct.TYPE_17__*)*** %8, align 8
  %193 = icmp ne i32 (i32, i64, i32, %struct.TYPE_17__*)** %192, null
  br i1 %193, label %194, label %204

194:                                              ; preds = %191
  %195 = load i64, i64* %9, align 8
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %204

197:                                              ; preds = %194
  %198 = load i32 (i32, i64, i32, %struct.TYPE_17__*)**, i32 (i32, i64, i32, %struct.TYPE_17__*)*** %8, align 8
  %199 = load i32 (i32, i64, i32, %struct.TYPE_17__*)*, i32 (i32, i64, i32, %struct.TYPE_17__*)** %198, align 8
  %200 = load i32, i32* %12, align 4
  %201 = load i64, i64* %9, align 8
  %202 = load i32, i32* %5, align 4
  %203 = call i32 %199(i32 %200, i64 %201, i32 %202, %struct.TYPE_17__* %7)
  br label %211

204:                                              ; preds = %194, %191
  %205 = load i64, i64* %13, align 8
  %206 = load i32 (i32, i64, i32)**, i32 (i32, i64, i32)*** %11, align 8
  %207 = bitcast i32 (i32, i64, i32)** %206 to i32 (i32, i64, i32)*
  %208 = load i32 (i32, i64, i32, %struct.TYPE_17__*)**, i32 (i32, i64, i32, %struct.TYPE_17__*)*** %8, align 8
  %209 = bitcast i32 (i32, i64, i32, %struct.TYPE_17__*)** %208 to i32 (i32, i64, i32, %struct.TYPE_17__*)*
  %210 = call i32 @GATT_TRACE_WARNING(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.2, i64 0, i64 0), i64 %205, i32 (i32, i64, i32)* %207, i32 (i32, i64, i32, %struct.TYPE_17__*)* %209)
  br label %211

211:                                              ; preds = %204, %197
  br label %212

212:                                              ; preds = %211, %184
  ret void
}

declare dso_local i32 @GATT_TRACE_DEBUG(i8*, ...) #1

declare dso_local i32 @memset(%struct.TYPE_16__*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @osi_free(i64) #1

declare dso_local i32 @btu_stop_timer(i32*) #1

declare dso_local i32 @gatt_clcb_dealloc(%struct.TYPE_18__*) #1

declare dso_local i32 @GATT_TRACE_WARNING(i8*, i64, i32 (i32, i64, i32)*, i32 (i32, i64, i32, %struct.TYPE_17__*)*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
