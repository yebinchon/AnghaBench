; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_inq.c_BTM_SetDiscoverability.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_inq.c_BTM_SetDiscoverability.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64, i32, i64 }
%struct.TYPE_5__ = type { i32 (...)* }

@.str = private unnamed_addr constant [24 x i8] c"BTM_SetDiscoverability\0A\00", align 1
@BTM_MAX_DISCOVERABLE = common dso_local global i64 0, align 8
@BTM_ILLEGAL_VALUE = common dso_local global i32 0, align 4
@BTM_DEV_RESET = common dso_local global i32 0, align 4
@BTM_DEFAULT_DISC_WINDOW = common dso_local global i64 0, align 8
@BTM_DEFAULT_DISC_INTERVAL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [91 x i8] c"BTM_SetDiscoverability: mode %d [NonDisc-0, Lim-1, Gen-2], window 0x%04x, interval 0x%04x\0A\00", align 1
@BTM_NON_DISCOVERABLE = common dso_local global i64 0, align 8
@HCI_MIN_INQUIRYSCAN_WINDOW = common dso_local global i64 0, align 8
@HCI_MAX_INQUIRYSCAN_WINDOW = common dso_local global i64 0, align 8
@HCI_MIN_INQUIRYSCAN_INTERVAL = common dso_local global i64 0, align 8
@HCI_MAX_INQUIRYSCAN_INTERVAL = common dso_local global i64 0, align 8
@BTM_LIMITED_DISCOVERABLE = common dso_local global i64 0, align 8
@limited_inq_lap = common dso_local global i32 0, align 4
@LAP_LEN = common dso_local global i32 0, align 4
@general_inq_lap = common dso_local global i32 0, align 4
@BTM_NO_RESOURCES = common dso_local global i32 0, align 4
@HCI_INQUIRY_SCAN_ENABLED = common dso_local global i32 0, align 4
@btm_cb = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@BTM_CONNECTABLE_MASK = common dso_local global i32 0, align 4
@HCI_PAGE_SCAN_ENABLED = common dso_local global i32 0, align 4
@BTM_DISCOVERABLE_MASK = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@BTM_COD_SERVICE_LMTD_DISCOVER = common dso_local global i64 0, align 8
@BTM_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BTM_SetDiscoverability(i64 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [2 x i32], align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 0, i32* %8, align 4
  %17 = call i32 (i8*, ...) @BTM_TRACE_API(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %18 = load i64, i64* %5, align 8
  %19 = load i64, i64* @BTM_MAX_DISCOVERABLE, align 8
  %20 = icmp sgt i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load i32, i32* @BTM_ILLEGAL_VALUE, align 4
  store i32 %22, i32* %4, align 4
  br label %207

23:                                               ; preds = %3
  %24 = call %struct.TYPE_5__* (...) @controller_get_interface()
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32 (...)*, i32 (...)** %25, align 8
  %27 = call i32 (...) %26()
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %23
  %30 = load i32, i32* @BTM_DEV_RESET, align 4
  store i32 %30, i32* %4, align 4
  br label %207

31:                                               ; preds = %23
  %32 = load i64, i64* %6, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %31
  %35 = load i64, i64* @BTM_DEFAULT_DISC_WINDOW, align 8
  store i64 %35, i64* %6, align 8
  br label %36

36:                                               ; preds = %34, %31
  %37 = load i64, i64* %7, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %36
  %40 = load i64, i64* @BTM_DEFAULT_DISC_INTERVAL, align 8
  store i64 %40, i64* %7, align 8
  br label %41

41:                                               ; preds = %39, %36
  %42 = load i64, i64* %5, align 8
  %43 = load i64, i64* %6, align 8
  %44 = load i64, i64* %7, align 8
  %45 = call i32 (i8*, ...) @BTM_TRACE_API(i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.1, i64 0, i64 0), i64 %42, i64 %43, i64 %44)
  %46 = load i64, i64* %5, align 8
  %47 = load i64, i64* @BTM_NON_DISCOVERABLE, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %72

49:                                               ; preds = %41
  %50 = load i64, i64* %6, align 8
  %51 = load i64, i64* @HCI_MIN_INQUIRYSCAN_WINDOW, align 8
  %52 = icmp slt i64 %50, %51
  br i1 %52, label %69, label %53

53:                                               ; preds = %49
  %54 = load i64, i64* %6, align 8
  %55 = load i64, i64* @HCI_MAX_INQUIRYSCAN_WINDOW, align 8
  %56 = icmp sgt i64 %54, %55
  br i1 %56, label %69, label %57

57:                                               ; preds = %53
  %58 = load i64, i64* %7, align 8
  %59 = load i64, i64* @HCI_MIN_INQUIRYSCAN_INTERVAL, align 8
  %60 = icmp slt i64 %58, %59
  br i1 %60, label %69, label %61

61:                                               ; preds = %57
  %62 = load i64, i64* %7, align 8
  %63 = load i64, i64* @HCI_MAX_INQUIRYSCAN_INTERVAL, align 8
  %64 = icmp sgt i64 %62, %63
  br i1 %64, label %69, label %65

65:                                               ; preds = %61
  %66 = load i64, i64* %6, align 8
  %67 = load i64, i64* %7, align 8
  %68 = icmp sgt i64 %66, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %65, %61, %57, %53, %49
  %70 = load i32, i32* @BTM_ILLEGAL_VALUE, align 4
  store i32 %70, i32* %4, align 4
  br label %207

71:                                               ; preds = %65
  br label %72

72:                                               ; preds = %71, %41
  %73 = load i64, i64* %5, align 8
  %74 = load i64, i64* @BTM_NON_DISCOVERABLE, align 8
  %75 = icmp ne i64 %73, %74
  br i1 %75, label %76, label %108

76:                                               ; preds = %72
  %77 = load i64, i64* %5, align 8
  %78 = load i64, i64* @BTM_LIMITED_DISCOVERABLE, align 8
  %79 = and i64 %77, %78
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %98

81:                                               ; preds = %76
  %82 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @limited_inq_lap, align 4
  %85 = load i32, i32* @LAP_LEN, align 4
  %86 = call i32 @memcpy(i32 %83, i32 %84, i32 %85)
  %87 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 1
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @general_inq_lap, align 4
  %90 = load i32, i32* @LAP_LEN, align 4
  %91 = call i32 @memcpy(i32 %88, i32 %89, i32 %90)
  %92 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  %93 = call i32 @btsnd_hcic_write_cur_iac_lap(i32 2, i32* %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %97, label %95

95:                                               ; preds = %81
  %96 = load i32, i32* @BTM_NO_RESOURCES, align 4
  store i32 %96, i32* %4, align 4
  br label %207

97:                                               ; preds = %81
  br label %104

98:                                               ; preds = %76
  %99 = call i32 @btsnd_hcic_write_cur_iac_lap(i32 1, i32* @general_inq_lap)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %103, label %101

101:                                              ; preds = %98
  %102 = load i32, i32* @BTM_NO_RESOURCES, align 4
  store i32 %102, i32* %4, align 4
  br label %207

103:                                              ; preds = %98
  br label %104

104:                                              ; preds = %103, %97
  %105 = load i32, i32* @HCI_INQUIRY_SCAN_ENABLED, align 4
  %106 = load i32, i32* %8, align 4
  %107 = or i32 %106, %105
  store i32 %107, i32* %8, align 4
  br label %108

108:                                              ; preds = %104, %72
  %109 = load i64, i64* %6, align 8
  %110 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @btm_cb, i32 0, i32 0, i32 0), align 8
  %111 = icmp ne i64 %109, %110
  br i1 %111, label %116, label %112

112:                                              ; preds = %108
  %113 = load i64, i64* %7, align 8
  %114 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @btm_cb, i32 0, i32 0, i32 1), align 8
  %115 = icmp ne i64 %113, %114
  br i1 %115, label %116, label %127

116:                                              ; preds = %112, %108
  %117 = load i64, i64* %7, align 8
  %118 = load i64, i64* %6, align 8
  %119 = call i64 @btsnd_hcic_write_inqscan_cfg(i64 %117, i64 %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %124

121:                                              ; preds = %116
  %122 = load i64, i64* %6, align 8
  store i64 %122, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @btm_cb, i32 0, i32 0, i32 0), align 8
  %123 = load i64, i64* %7, align 8
  store i64 %123, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @btm_cb, i32 0, i32 0, i32 1), align 8
  br label %126

124:                                              ; preds = %116
  %125 = load i32, i32* @BTM_NO_RESOURCES, align 4
  store i32 %125, i32* %4, align 4
  br label %207

126:                                              ; preds = %121
  br label %127

127:                                              ; preds = %126, %112
  %128 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @btm_cb, i32 0, i32 0, i32 2), align 8
  %129 = load i32, i32* @BTM_CONNECTABLE_MASK, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %136

132:                                              ; preds = %127
  %133 = load i32, i32* @HCI_PAGE_SCAN_ENABLED, align 4
  %134 = load i32, i32* %8, align 4
  %135 = or i32 %134, %133
  store i32 %135, i32* %8, align 4
  br label %136

136:                                              ; preds = %132, %127
  %137 = load i32, i32* %8, align 4
  %138 = call i64 @btsnd_hcic_write_scan_enable(i32 %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %148

140:                                              ; preds = %136
  %141 = load i64, i64* @BTM_DISCOVERABLE_MASK, align 8
  %142 = xor i64 %141, -1
  %143 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @btm_cb, i32 0, i32 0, i32 3), align 8
  %144 = and i64 %143, %142
  store i64 %144, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @btm_cb, i32 0, i32 0, i32 3), align 8
  %145 = load i64, i64* %5, align 8
  %146 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @btm_cb, i32 0, i32 0, i32 3), align 8
  %147 = or i64 %146, %145
  store i64 %147, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @btm_cb, i32 0, i32 0, i32 3), align 8
  br label %150

148:                                              ; preds = %136
  %149 = load i32, i32* @BTM_NO_RESOURCES, align 4
  store i32 %149, i32* %4, align 4
  br label %207

150:                                              ; preds = %140
  %151 = call i32* (...) @BTM_ReadDeviceClass()
  store i32* %151, i32** %10, align 8
  %152 = load i64, i64* %9, align 8
  %153 = load i32*, i32** %10, align 8
  %154 = call i32 @BTM_COD_SERVICE_CLASS(i64 %152, i32* %153)
  %155 = load i64, i64* %5, align 8
  %156 = load i64, i64* @BTM_LIMITED_DISCOVERABLE, align 8
  %157 = and i64 %155, %156
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %161

159:                                              ; preds = %150
  %160 = load i32, i32* @TRUE, align 4
  br label %163

161:                                              ; preds = %150
  %162 = load i32, i32* @FALSE, align 4
  br label %163

163:                                              ; preds = %161, %159
  %164 = phi i32 [ %160, %159 ], [ %162, %161 ]
  store i32 %164, i32* %15, align 4
  %165 = load i64, i64* %9, align 8
  %166 = load i64, i64* @BTM_COD_SERVICE_LMTD_DISCOVER, align 8
  %167 = and i64 %165, %166
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %171

169:                                              ; preds = %163
  %170 = load i32, i32* @TRUE, align 4
  br label %173

171:                                              ; preds = %163
  %172 = load i32, i32* @FALSE, align 4
  br label %173

173:                                              ; preds = %171, %169
  %174 = phi i32 [ %170, %169 ], [ %172, %171 ]
  store i32 %174, i32* %16, align 4
  %175 = load i32, i32* %15, align 4
  %176 = load i32, i32* %16, align 4
  %177 = xor i32 %175, %176
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %205

179:                                              ; preds = %173
  %180 = load i32, i32* %12, align 4
  %181 = load i32*, i32** %10, align 8
  %182 = call i32 @BTM_COD_MINOR_CLASS(i32 %180, i32* %181)
  %183 = load i32, i32* %11, align 4
  %184 = load i32*, i32** %10, align 8
  %185 = call i32 @BTM_COD_MAJOR_CLASS(i32 %183, i32* %184)
  %186 = load i32, i32* %15, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %192

188:                                              ; preds = %179
  %189 = load i64, i64* @BTM_COD_SERVICE_LMTD_DISCOVER, align 8
  %190 = load i64, i64* %9, align 8
  %191 = or i64 %190, %189
  store i64 %191, i64* %9, align 8
  br label %197

192:                                              ; preds = %179
  %193 = load i64, i64* @BTM_COD_SERVICE_LMTD_DISCOVER, align 8
  %194 = xor i64 %193, -1
  %195 = load i64, i64* %9, align 8
  %196 = and i64 %195, %194
  store i64 %196, i64* %9, align 8
  br label %197

197:                                              ; preds = %192, %188
  %198 = load i32, i32* %13, align 4
  %199 = load i32, i32* %12, align 4
  %200 = load i32, i32* %11, align 4
  %201 = load i64, i64* %9, align 8
  %202 = call i32 @FIELDS_TO_COD(i32 %198, i32 %199, i32 %200, i64 %201)
  %203 = load i32, i32* %13, align 4
  %204 = call i32 @BTM_SetDeviceClass(i32 %203)
  br label %205

205:                                              ; preds = %197, %173
  %206 = load i32, i32* @BTM_SUCCESS, align 4
  store i32 %206, i32* %4, align 4
  br label %207

207:                                              ; preds = %205, %148, %124, %101, %95, %69, %29, %21
  %208 = load i32, i32* %4, align 4
  ret i32 %208
}

declare dso_local i32 @BTM_TRACE_API(i8*, ...) #1

declare dso_local %struct.TYPE_5__* @controller_get_interface(...) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @btsnd_hcic_write_cur_iac_lap(i32, i32*) #1

declare dso_local i64 @btsnd_hcic_write_inqscan_cfg(i64, i64) #1

declare dso_local i64 @btsnd_hcic_write_scan_enable(i32) #1

declare dso_local i32* @BTM_ReadDeviceClass(...) #1

declare dso_local i32 @BTM_COD_SERVICE_CLASS(i64, i32*) #1

declare dso_local i32 @BTM_COD_MINOR_CLASS(i32, i32*) #1

declare dso_local i32 @BTM_COD_MAJOR_CLASS(i32, i32*) #1

declare dso_local i32 @FIELDS_TO_COD(i32, i32, i32, i64) #1

declare dso_local i32 @BTM_SetDeviceClass(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
