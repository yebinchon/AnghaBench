; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/l2cap/extr_l2c_ble.c_l2c_ble_link_adjust_allocation.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/l2cap/extr_l2c_ble.c_l2c_ble_link_adjust_allocation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64, i32, i32, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i32, i32, i64, i32, i32, i32, i64 }

@l2cb = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@L2CAP_HIGH_PRI_MIN_XMIT_QUOTA_A = common dso_local global i32 0, align 4
@MAX_L2CAP_LINKS = common dso_local global i32 0, align 4
@BT_TRANSPORT_LE = common dso_local global i64 0, align 8
@L2CAP_PRIORITY_HIGH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [108 x i8] c"l2c_ble_link_adjust_allocation  num_hipri: %u  num_lowpri: %u  low_quota: %u  round_robin_quota: %u  qq: %u\00", align 1
@.str.1 = private unnamed_addr constant [68 x i8] c"l2c_ble_link_adjust_allocation LCB %d   Priority: %d  XmitQuota: %d\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"        SentNotAcked: %d  RRUnacked: %d\00", align 1
@LST_CONNECTED = common dso_local global i64 0, align 8
@BTU_TTYPE_L2CAP_LINK = common dso_local global i32 0, align 4
@L2CAP_LINK_FLOW_CONTROL_TOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @l2c_ble_link_adjust_allocation() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @l2cb, i32 0, i32 0), align 8
  store i32 %11, i32* %9, align 4
  %12 = load i32, i32* @L2CAP_HIGH_PRI_MIN_XMIT_QUOTA_A, align 4
  store i32 %12, i32* %10, align 4
  %13 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @l2cb, i32 0, i32 1), align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %0
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @l2cb, i32 0, i32 0), align 8
  store i32 %16, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @l2cb, i32 0, i32 2), align 8
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @l2cb, i32 0, i32 4), align 8
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @l2cb, i32 0, i32 3), align 4
  br label %209

17:                                               ; preds = %0
  store i32 0, i32* %2, align 4
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @l2cb, i32 0, i32 6), align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i64 0
  store %struct.TYPE_3__* %19, %struct.TYPE_3__** %4, align 8
  br label %20

20:                                               ; preds = %49, %17
  %21 = load i32, i32* %2, align 4
  %22 = load i32, i32* @MAX_L2CAP_LINKS, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %54

24:                                               ; preds = %20
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 7
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %48

29:                                               ; preds = %24
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @BT_TRANSPORT_LE, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %48

35:                                               ; preds = %29
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 6
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @L2CAP_PRIORITY_HIGH, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %35
  %42 = load i32, i32* %8, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %8, align 4
  br label %47

44:                                               ; preds = %35
  %45 = load i32, i32* %7, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %7, align 4
  br label %47

47:                                               ; preds = %44, %41
  br label %48

48:                                               ; preds = %47, %29, %24
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %2, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %2, align 4
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 1
  store %struct.TYPE_3__* %53, %struct.TYPE_3__** %4, align 8
  br label %20

54:                                               ; preds = %20
  %55 = load i32, i32* %7, align 4
  %56 = icmp ne i32 %55, 0
  %57 = zext i1 %56 to i64
  %58 = select i1 %56, i32 1, i32 0
  store i32 %58, i32* %6, align 4
  br label %59

59:                                               ; preds = %67, %54
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* %10, align 4
  %62 = mul nsw i32 %60, %61
  %63 = load i32, i32* %6, align 4
  %64 = add nsw i32 %62, %63
  %65 = load i32, i32* %9, align 4
  %66 = icmp sgt i32 %64, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %59
  %68 = load i32, i32* %10, align 4
  %69 = add nsw i32 %68, -1
  store i32 %69, i32* %10, align 4
  br label %59

70:                                               ; preds = %59
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* %10, align 4
  %73 = mul nsw i32 %71, %72
  store i32 %73, i32* %5, align 4
  %74 = load i32, i32* %5, align 4
  %75 = load i32, i32* %9, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %77, label %81

77:                                               ; preds = %70
  %78 = load i32, i32* %9, align 4
  %79 = load i32, i32* %5, align 4
  %80 = sub nsw i32 %78, %79
  br label %82

81:                                               ; preds = %70
  br label %82

82:                                               ; preds = %81, %77
  %83 = phi i32 [ %80, %77 ], [ 1, %81 ]
  store i32 %83, i32* %6, align 4
  %84 = load i32, i32* %7, align 4
  %85 = load i32, i32* %6, align 4
  %86 = icmp sgt i32 %84, %85
  br i1 %86, label %87, label %89

87:                                               ; preds = %82
  %88 = load i32, i32* %6, align 4
  store i32 %88, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @l2cb, i32 0, i32 3), align 4
  store i32 0, i32* %3, align 4
  store i32 0, i32* %1, align 4
  br label %101

89:                                               ; preds = %82
  %90 = load i32, i32* %7, align 4
  %91 = icmp sgt i32 %90, 0
  br i1 %91, label %92, label %99

92:                                               ; preds = %89
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @l2cb, i32 0, i32 3), align 4
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @l2cb, i32 0, i32 4), align 8
  %93 = load i32, i32* %6, align 4
  %94 = load i32, i32* %7, align 4
  %95 = sdiv i32 %93, %94
  store i32 %95, i32* %1, align 4
  %96 = load i32, i32* %6, align 4
  %97 = load i32, i32* %7, align 4
  %98 = srem i32 %96, %97
  store i32 %98, i32* %3, align 4
  br label %100

99:                                               ; preds = %89
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @l2cb, i32 0, i32 3), align 4
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @l2cb, i32 0, i32 4), align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %1, align 4
  br label %100

100:                                              ; preds = %99, %92
  br label %101

101:                                              ; preds = %100, %87
  %102 = load i32, i32* %8, align 4
  %103 = load i32, i32* %7, align 4
  %104 = load i32, i32* %6, align 4
  %105 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @l2cb, i32 0, i32 3), align 4
  %106 = load i32, i32* %1, align 4
  %107 = call i32 (i8*, i32, i32, ...) @L2CAP_TRACE_EVENT(i8* getelementptr inbounds ([108 x i8], [108 x i8]* @.str, i64 0, i64 0), i32 %102, i32 %103, i32 %104, i32 %105, i32 %106)
  store i32 0, i32* %2, align 4
  %108 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @l2cb, i32 0, i32 6), align 8
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i64 0
  store %struct.TYPE_3__* %109, %struct.TYPE_3__** %4, align 8
  br label %110

110:                                              ; preds = %204, %101
  %111 = load i32, i32* %2, align 4
  %112 = load i32, i32* @MAX_L2CAP_LINKS, align 4
  %113 = icmp slt i32 %111, %112
  br i1 %113, label %114, label %209

114:                                              ; preds = %110
  %115 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 7
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %203

119:                                              ; preds = %114
  %120 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @BT_TRANSPORT_LE, align 8
  %124 = icmp eq i64 %122, %123
  br i1 %124, label %125, label %203

125:                                              ; preds = %119
  %126 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 6
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* @L2CAP_PRIORITY_HIGH, align 4
  %130 = icmp eq i32 %128, %129
  br i1 %130, label %131, label %135

131:                                              ; preds = %125
  %132 = load i32, i32* %10, align 4
  %133 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 1
  store i32 %132, i32* %134, align 8
  br label %163

135:                                              ; preds = %125
  %136 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 8
  %139 = icmp sgt i32 %138, 0
  br i1 %139, label %140, label %149

140:                                              ; preds = %135
  %141 = load i32, i32* %1, align 4
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %149

143:                                              ; preds = %140
  %144 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %145 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @l2cb, i32 0, i32 4), align 8
  %148 = add nsw i32 %147, %146
  store i32 %148, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @l2cb, i32 0, i32 4), align 8
  br label %149

149:                                              ; preds = %143, %140, %135
  %150 = load i32, i32* %1, align 4
  %151 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %152 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %151, i32 0, i32 1
  store i32 %150, i32* %152, align 8
  %153 = load i32, i32* %3, align 4
  %154 = icmp sgt i32 %153, 0
  br i1 %154, label %155, label %162

155:                                              ; preds = %149
  %156 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %157 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 8
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %157, align 8
  %160 = load i32, i32* %3, align 4
  %161 = add nsw i32 %160, -1
  store i32 %161, i32* %3, align 4
  br label %162

162:                                              ; preds = %155, %149
  br label %163

163:                                              ; preds = %162, %131
  %164 = load i32, i32* %2, align 4
  %165 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %166 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %165, i32 0, i32 6
  %167 = load i32, i32* %166, align 8
  %168 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %169 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 8
  %171 = call i32 (i8*, i32, i32, ...) @L2CAP_TRACE_EVENT(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.1, i64 0, i64 0), i32 %164, i32 %167, i32 %170)
  %172 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %173 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 4
  %175 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @l2cb, i32 0, i32 5), align 4
  %176 = call i32 (i8*, i32, i32, ...) @L2CAP_TRACE_EVENT(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %174, i32 %175)
  %177 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %178 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %177, i32 0, i32 3
  %179 = load i64, i64* %178, align 8
  %180 = load i64, i64* @LST_CONNECTED, align 8
  %181 = icmp eq i64 %179, %180
  br i1 %181, label %182, label %202

182:                                              ; preds = %163
  %183 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %184 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %183, i32 0, i32 5
  %185 = load i32, i32* %184, align 4
  %186 = call i32 @list_is_empty(i32 %185)
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %202, label %188

188:                                              ; preds = %182
  %189 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %190 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %189, i32 0, i32 2
  %191 = load i32, i32* %190, align 4
  %192 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %193 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 8
  %195 = icmp slt i32 %191, %194
  br i1 %195, label %196, label %202

196:                                              ; preds = %188
  %197 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %198 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %197, i32 0, i32 4
  %199 = load i32, i32* @BTU_TTYPE_L2CAP_LINK, align 4
  %200 = load i32, i32* @L2CAP_LINK_FLOW_CONTROL_TOUT, align 4
  %201 = call i32 @btu_start_timer(i32* %198, i32 %199, i32 %200)
  br label %202

202:                                              ; preds = %196, %188, %182, %163
  br label %203

203:                                              ; preds = %202, %119, %114
  br label %204

204:                                              ; preds = %203
  %205 = load i32, i32* %2, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %2, align 4
  %207 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %208 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %207, i32 1
  store %struct.TYPE_3__* %208, %struct.TYPE_3__** %4, align 8
  br label %110

209:                                              ; preds = %15, %110
  ret void
}

declare dso_local i32 @L2CAP_TRACE_EVENT(i8*, i32, i32, ...) #1

declare dso_local i32 @list_is_empty(i32) #1

declare dso_local i32 @btu_start_timer(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
