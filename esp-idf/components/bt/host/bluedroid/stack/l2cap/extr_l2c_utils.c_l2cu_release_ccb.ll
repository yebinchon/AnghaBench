; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/l2cap/extr_l2c_utils.c_l2cu_release_ccb.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/l2cap/extr_l2c_utils.c_l2cu_release_ccb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_17__*, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i64, i32, i64, %struct.TYPE_17__*, %struct.TYPE_17__*, %struct.TYPE_16__*, %struct.TYPE_13__, i32*, i32, %struct.TYPE_15__* }
%struct.TYPE_16__ = type { i64, %struct.TYPE_14__, i64, i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32*, i32*, i32* }
%struct.TYPE_15__ = type { i64, i64 }

@.str = private unnamed_addr constant [41 x i8] c"l2cu_release_ccb: cid 0x%04x  in_use: %u\00", align 1
@osi_free_func = common dso_local global i32 0, align 4
@L2CAP_BASE_APPL_CID = common dso_local global i64 0, align 8
@L2CAP_CONNECTIONLESS_CID = common dso_local global i64 0, align 8
@l2cb = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@FALSE = common dso_local global i64 0, align 8
@LST_CONNECTED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @l2cu_release_ccb(%struct.TYPE_17__* %0) #0 {
  %2 = alloca %struct.TYPE_17__*, align 8
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %2, align 8
  %5 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %5, i32 0, i32 5
  %7 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  store %struct.TYPE_16__* %7, %struct.TYPE_16__** %3, align 8
  %8 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %8, i32 0, i32 9
  %10 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  store %struct.TYPE_15__* %10, %struct.TYPE_15__** %4, align 8
  %11 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @L2CAP_TRACE_DEBUG(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i64 %13, i64 %16)
  %18 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %1
  br label %167

23:                                               ; preds = %1
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %25 = icmp ne %struct.TYPE_15__* %24, null
  br i1 %25, label %26, label %39

26:                                               ; preds = %23
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %29, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %26
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @btm_sec_clr_service_by_psm(i64 %37)
  br label %39

39:                                               ; preds = %34, %26, %23
  %40 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %39
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %46 = call i32 @osi_free(%struct.TYPE_15__* %45)
  %47 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %47, i32 0, i32 9
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %48, align 8
  %49 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %49, i32 0, i32 1
  store i32 0, i32* %50, align 8
  br label %51

51:                                               ; preds = %44, %39
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %53 = icmp ne %struct.TYPE_16__* %52, null
  br i1 %53, label %54, label %59

54:                                               ; preds = %51
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @btm_sec_clr_temp_auth_service(i32 %57)
  br label %59

59:                                               ; preds = %54, %51
  %60 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %60, i32 0, i32 8
  %62 = call i32 @btu_free_timer(i32* %61)
  %63 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %63, i32 0, i32 7
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* @osi_free_func, align 4
  %67 = call i32 @fixed_queue_free(i32* %65, i32 %66)
  %68 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %69 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %68, i32 0, i32 7
  store i32* null, i32** %69, align 8
  %70 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %71 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %70, i32 0, i32 6
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 2
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* @osi_free_func, align 4
  %75 = call i32 @fixed_queue_free(i32* %73, i32 %74)
  %76 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %77 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %76, i32 0, i32 6
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 1
  %79 = load i32*, i32** %78, align 8
  %80 = load i32, i32* @osi_free_func, align 4
  %81 = call i32 @fixed_queue_free(i32* %79, i32 %80)
  %82 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %83 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %82, i32 0, i32 6
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = load i32, i32* @osi_free_func, align 4
  %87 = call i32 @fixed_queue_free(i32* %85, i32 %86)
  %88 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %89 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %88, i32 0, i32 6
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i32 0, i32 2
  store i32* null, i32** %90, align 8
  %91 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %92 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %91, i32 0, i32 6
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i32 0, i32 1
  store i32* null, i32** %93, align 8
  %94 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %95 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %94, i32 0, i32 6
  %96 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %95, i32 0, i32 0
  store i32* null, i32** %96, align 8
  %97 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %98 = call i32 @l2c_fcr_cleanup(%struct.TYPE_17__* %97)
  %99 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %100 = icmp ne %struct.TYPE_16__* %99, null
  br i1 %100, label %101, label %118

101:                                              ; preds = %59
  %102 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %103 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @L2CAP_BASE_APPL_CID, align 8
  %106 = icmp sge i64 %104, %105
  br i1 %106, label %113, label %107

107:                                              ; preds = %101
  %108 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %109 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @L2CAP_CONNECTIONLESS_CID, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %113, label %118

113:                                              ; preds = %107, %101
  %114 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %115 = call i32 @l2cu_dequeue_ccb(%struct.TYPE_17__* %114)
  %116 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %117 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %116, i32 0, i32 5
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %117, align 8
  br label %118

118:                                              ; preds = %113, %107, %59
  %119 = load %struct.TYPE_17__*, %struct.TYPE_17__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @l2cb, i32 0, i32 1), align 8
  %120 = icmp ne %struct.TYPE_17__* %119, null
  br i1 %120, label %128, label %121

121:                                              ; preds = %118
  %122 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  store %struct.TYPE_17__* %122, %struct.TYPE_17__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @l2cb, i32 0, i32 1), align 8
  %123 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  store %struct.TYPE_17__* %123, %struct.TYPE_17__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @l2cb, i32 0, i32 0), align 8
  %124 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %125 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %124, i32 0, i32 3
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %125, align 8
  %126 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %127 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %126, i32 0, i32 4
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %127, align 8
  br label %138

128:                                              ; preds = %118
  %129 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %130 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %129, i32 0, i32 3
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %130, align 8
  %131 = load %struct.TYPE_17__*, %struct.TYPE_17__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @l2cb, i32 0, i32 0), align 8
  %132 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %133 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %132, i32 0, i32 4
  store %struct.TYPE_17__* %131, %struct.TYPE_17__** %133, align 8
  %134 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %135 = load %struct.TYPE_17__*, %struct.TYPE_17__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @l2cb, i32 0, i32 0), align 8
  %136 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %135, i32 0, i32 3
  store %struct.TYPE_17__* %134, %struct.TYPE_17__** %136, align 8
  %137 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  store %struct.TYPE_17__* %137, %struct.TYPE_17__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @l2cb, i32 0, i32 0), align 8
  br label %138

138:                                              ; preds = %128, %121
  %139 = load i64, i64* @FALSE, align 8
  %140 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %141 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %140, i32 0, i32 2
  store i64 %139, i64* %141, align 8
  %142 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %143 = icmp ne %struct.TYPE_16__* %142, null
  br i1 %143, label %144, label %167

144:                                              ; preds = %138
  %145 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %146 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %145, i32 0, i32 2
  %147 = load i64, i64* %146, align 8
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %167

149:                                              ; preds = %144
  %150 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %151 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = load i64, i64* @LST_CONNECTED, align 8
  %154 = icmp eq i64 %152, %153
  br i1 %154, label %155, label %167

155:                                              ; preds = %149
  %156 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %157 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %164, label %161

161:                                              ; preds = %155
  %162 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %163 = call i32 @l2cu_no_dynamic_ccbs(%struct.TYPE_16__* %162)
  br label %166

164:                                              ; preds = %155
  %165 = call i32 (...) @l2c_link_adjust_chnl_allocation()
  br label %166

166:                                              ; preds = %164, %161
  br label %167

167:                                              ; preds = %22, %166, %149, %144, %138
  ret void
}

declare dso_local i32 @L2CAP_TRACE_DEBUG(i8*, i64, i64) #1

declare dso_local i32 @btm_sec_clr_service_by_psm(i64) #1

declare dso_local i32 @osi_free(%struct.TYPE_15__*) #1

declare dso_local i32 @btm_sec_clr_temp_auth_service(i32) #1

declare dso_local i32 @btu_free_timer(i32*) #1

declare dso_local i32 @fixed_queue_free(i32*, i32) #1

declare dso_local i32 @l2c_fcr_cleanup(%struct.TYPE_17__*) #1

declare dso_local i32 @l2cu_dequeue_ccb(%struct.TYPE_17__*) #1

declare dso_local i32 @l2cu_no_dynamic_ccbs(%struct.TYPE_16__*) #1

declare dso_local i32 @l2c_link_adjust_chnl_allocation(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
