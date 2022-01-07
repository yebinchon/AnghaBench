; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/l2cap/extr_l2c_link.c_l2c_link_adjust_allocation.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/l2cap/extr_l2c_link.c_l2c_link_adjust_allocation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64, i32, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32, i64, i32, i32, i32, i64 }

@l2cb = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@L2CAP_HIGH_PRI_MIN_XMIT_QUOTA_A = common dso_local global i32 0, align 4
@MAX_L2CAP_LINKS = common dso_local global i32 0, align 4
@L2CAP_PRIORITY_HIGH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [105 x i8] c"l2c_link_adjust_allocation  num_hipri: %u  num_lowpri: %u  low_quota: %u  round_robin_quota: %u  qq: %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [65 x i8] c"l2c_link_adjust_allocation LCB %d   Priority: %d  XmitQuota: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"        SentNotAcked: %d  RRUnacked: %d\0A\00", align 1
@LST_CONNECTED = common dso_local global i64 0, align 8
@BTU_TTYPE_L2CAP_LINK = common dso_local global i32 0, align 4
@L2CAP_LINK_FLOW_CONTROL_TOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @l2c_link_adjust_allocation() #0 {
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
  br label %197

17:                                               ; preds = %0
  store i32 0, i32* %2, align 4
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @l2cb, i32 0, i32 5), align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i64 0
  store %struct.TYPE_3__* %19, %struct.TYPE_3__** %4, align 8
  br label %20

20:                                               ; preds = %43, %17
  %21 = load i32, i32* %2, align 4
  %22 = load i32, i32* @MAX_L2CAP_LINKS, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %48

24:                                               ; preds = %20
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 6
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %42

29:                                               ; preds = %24
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 5
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @L2CAP_PRIORITY_HIGH, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %29
  %36 = load i32, i32* %8, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %8, align 4
  br label %41

38:                                               ; preds = %29
  %39 = load i32, i32* %7, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %7, align 4
  br label %41

41:                                               ; preds = %38, %35
  br label %42

42:                                               ; preds = %41, %24
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %2, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %2, align 4
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 1
  store %struct.TYPE_3__* %47, %struct.TYPE_3__** %4, align 8
  br label %20

48:                                               ; preds = %20
  %49 = load i32, i32* %7, align 4
  %50 = icmp ne i32 %49, 0
  %51 = zext i1 %50 to i64
  %52 = select i1 %50, i32 1, i32 0
  store i32 %52, i32* %6, align 4
  br label %53

53:                                               ; preds = %61, %48
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* %10, align 4
  %56 = mul nsw i32 %54, %55
  %57 = load i32, i32* %6, align 4
  %58 = add nsw i32 %56, %57
  %59 = load i32, i32* %9, align 4
  %60 = icmp sgt i32 %58, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %53
  %62 = load i32, i32* %10, align 4
  %63 = add nsw i32 %62, -1
  store i32 %63, i32* %10, align 4
  br label %53

64:                                               ; preds = %53
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* %10, align 4
  %67 = mul nsw i32 %65, %66
  store i32 %67, i32* %5, align 4
  %68 = load i32, i32* %5, align 4
  %69 = load i32, i32* %9, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %75

71:                                               ; preds = %64
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* %5, align 4
  %74 = sub nsw i32 %72, %73
  br label %76

75:                                               ; preds = %64
  br label %76

76:                                               ; preds = %75, %71
  %77 = phi i32 [ %74, %71 ], [ 1, %75 ]
  store i32 %77, i32* %6, align 4
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* %6, align 4
  %80 = icmp sgt i32 %78, %79
  br i1 %80, label %81, label %83

81:                                               ; preds = %76
  %82 = load i32, i32* %6, align 4
  store i32 %82, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @l2cb, i32 0, i32 3), align 4
  store i32 1, i32* %3, align 4
  store i32 1, i32* %1, align 4
  br label %95

83:                                               ; preds = %76
  %84 = load i32, i32* %7, align 4
  %85 = icmp sgt i32 %84, 0
  br i1 %85, label %86, label %93

86:                                               ; preds = %83
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @l2cb, i32 0, i32 3), align 4
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @l2cb, i32 0, i32 4), align 8
  %87 = load i32, i32* %6, align 4
  %88 = load i32, i32* %7, align 4
  %89 = sdiv i32 %87, %88
  store i32 %89, i32* %1, align 4
  %90 = load i32, i32* %6, align 4
  %91 = load i32, i32* %7, align 4
  %92 = srem i32 %90, %91
  store i32 %92, i32* %3, align 4
  br label %94

93:                                               ; preds = %83
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @l2cb, i32 0, i32 3), align 4
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @l2cb, i32 0, i32 4), align 8
  store i32 1, i32* %3, align 4
  store i32 1, i32* %1, align 4
  br label %94

94:                                               ; preds = %93, %86
  br label %95

95:                                               ; preds = %94, %81
  %96 = load i32, i32* %8, align 4
  %97 = load i32, i32* %7, align 4
  %98 = load i32, i32* %6, align 4
  %99 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @l2cb, i32 0, i32 3), align 4
  %100 = load i32, i32* %1, align 4
  %101 = call i32 (i8*, i32, i32, ...) @L2CAP_TRACE_EVENT(i8* getelementptr inbounds ([105 x i8], [105 x i8]* @.str, i64 0, i64 0), i32 %96, i32 %97, i32 %98, i32 %99, i32 %100)
  store i32 0, i32* %2, align 4
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @l2cb, i32 0, i32 5), align 8
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i64 0
  store %struct.TYPE_3__* %103, %struct.TYPE_3__** %4, align 8
  br label %104

104:                                              ; preds = %192, %95
  %105 = load i32, i32* %2, align 4
  %106 = load i32, i32* @MAX_L2CAP_LINKS, align 4
  %107 = icmp slt i32 %105, %106
  br i1 %107, label %108, label %197

108:                                              ; preds = %104
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 6
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %191

113:                                              ; preds = %108
  %114 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 5
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* @L2CAP_PRIORITY_HIGH, align 4
  %118 = icmp eq i32 %116, %117
  br i1 %118, label %119, label %123

119:                                              ; preds = %113
  %120 = load i32, i32* %10, align 4
  %121 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 0
  store i32 %120, i32* %122, align 8
  br label %151

123:                                              ; preds = %113
  %124 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = icmp sgt i32 %126, 0
  br i1 %127, label %128, label %137

128:                                              ; preds = %123
  %129 = load i32, i32* %1, align 4
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %137

131:                                              ; preds = %128
  %132 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @l2cb, i32 0, i32 4), align 8
  %136 = add nsw i32 %135, %134
  store i32 %136, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @l2cb, i32 0, i32 4), align 8
  br label %137

137:                                              ; preds = %131, %128, %123
  %138 = load i32, i32* %1, align 4
  %139 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i32 0, i32 0
  store i32 %138, i32* %140, align 8
  %141 = load i32, i32* %3, align 4
  %142 = icmp sgt i32 %141, 0
  br i1 %142, label %143, label %150

143:                                              ; preds = %137
  %144 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %145 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %145, align 8
  %148 = load i32, i32* %3, align 4
  %149 = add nsw i32 %148, -1
  store i32 %149, i32* %3, align 4
  br label %150

150:                                              ; preds = %143, %137
  br label %151

151:                                              ; preds = %150, %119
  %152 = load i32, i32* %2, align 4
  %153 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %154 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %153, i32 0, i32 5
  %155 = load i32, i32* %154, align 8
  %156 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %157 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = call i32 (i8*, i32, i32, ...) @L2CAP_TRACE_EVENT(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1, i64 0, i64 0), i32 %152, i32 %155, i32 %158)
  %160 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %161 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @l2cb, i32 0, i32 4), align 8
  %164 = call i32 (i8*, i32, i32, ...) @L2CAP_TRACE_EVENT(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %162, i32 %163)
  %165 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %166 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %165, i32 0, i32 2
  %167 = load i64, i64* %166, align 8
  %168 = load i64, i64* @LST_CONNECTED, align 8
  %169 = icmp eq i64 %167, %168
  br i1 %169, label %170, label %190

170:                                              ; preds = %151
  %171 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %172 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %171, i32 0, i32 4
  %173 = load i32, i32* %172, align 4
  %174 = call i32 @list_is_empty(i32 %173)
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %190, label %176

176:                                              ; preds = %170
  %177 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %178 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  %180 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %181 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = icmp slt i32 %179, %182
  br i1 %183, label %184, label %190

184:                                              ; preds = %176
  %185 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %186 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %185, i32 0, i32 3
  %187 = load i32, i32* @BTU_TTYPE_L2CAP_LINK, align 4
  %188 = load i32, i32* @L2CAP_LINK_FLOW_CONTROL_TOUT, align 4
  %189 = call i32 @btu_start_timer(i32* %186, i32 %187, i32 %188)
  br label %190

190:                                              ; preds = %184, %176, %170, %151
  br label %191

191:                                              ; preds = %190, %108
  br label %192

192:                                              ; preds = %191
  %193 = load i32, i32* %2, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %2, align 4
  %195 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %196 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %195, i32 1
  store %struct.TYPE_3__* %196, %struct.TYPE_3__** %4, align 8
  br label %104

197:                                              ; preds = %15, %104
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
