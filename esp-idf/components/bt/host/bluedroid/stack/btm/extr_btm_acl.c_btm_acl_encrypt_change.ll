; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_acl.c_btm_acl_encrypt_change.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_acl.c_btm_acl_encrypt_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32 (i32*)*, %struct.TYPE_9__, %struct.TYPE_12__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, i32, i32 }
%struct.TYPE_12__ = type { i64, i32, i8*, i32 }
%struct.TYPE_10__ = type { i64, i32 }
%struct.TYPE_11__ = type { i64, i32, i32, i32 }

@.str = private unnamed_addr constant [58 x i8] c"btm_acl_encrypt_change handle=%d status=%d encr_enabl=%d\0A\00", align 1
@MAX_L2CAP_LINKS = common dso_local global i64 0, align 8
@btm_cb = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@BTM_ACL_SWKEY_STATE_ENCRYPTION_OFF = common dso_local global i64 0, align 8
@BTM_ACL_SWKEY_STATE_IDLE = common dso_local global i8* null, align 8
@BTM_ACL_ENCRYPT_STATE_IDLE = common dso_local global i8* null, align 8
@BTM_ACL_SWKEY_STATE_SWITCHING = common dso_local global i64 0, align 8
@BTM_ACL_ENCRYPT_STATE_TEMP_FUNC = common dso_local global i8* null, align 8
@BTM_SEC_RS_PENDING = common dso_local global i64 0, align 8
@BTM_ACL_SWKEY_STATE_ENCRYPTION_ON = common dso_local global i64 0, align 8
@BTM_BL_ROLE_CHG_MASK = common dso_local global i32 0, align 4
@BTM_BL_ROLE_CHG_EVT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [65 x i8] c"Role Switch Event: new_role 0x%02x, HCI Status 0x%02x, rs_st:%d\0A\00", align 1
@BTM_SEC_DISC_PENDING = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [61 x i8] c"btm_acl_encrypt_change -> Issuing delayed HCI_Disconnect!!!\0A\00", align 1
@HCI_ERR_PEER_USER = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [62 x i8] c"btm_acl_encrypt_change: tBTM_SEC_DEV:0x%x rs_disc_pending=%d\0A\00", align 1
@BTM_SEC_RS_NOT_PENDING = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @btm_acl_encrypt_change(i32 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca %struct.TYPE_11__, align 8
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %11 = load i32, i32* %4, align 4
  %12 = load i64, i64* %5, align 8
  %13 = load i64, i64* %6, align 8
  %14 = call i32 @BTM_TRACE_DEBUG(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %11, i64 %12, i64 %13)
  %15 = load i32, i32* %4, align 4
  %16 = call i64 @btm_handle_to_acl_index(i32 %15)
  store i64 %16, i64* %8, align 8
  %17 = load i64, i64* %8, align 8
  %18 = load i64, i64* @MAX_L2CAP_LINKS, align 8
  %19 = icmp ult i64 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %3
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @btm_cb, i32 0, i32 3), align 8
  %22 = load i64, i64* %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i64 %22
  store %struct.TYPE_12__* %23, %struct.TYPE_12__** %7, align 8
  br label %25

24:                                               ; preds = %3
  br label %164

25:                                               ; preds = %20
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @BTM_ACL_SWKEY_STATE_ENCRYPTION_OFF, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %87

31:                                               ; preds = %25
  %32 = load i64, i64* %6, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %31
  %35 = load i8*, i8** @BTM_ACL_SWKEY_STATE_IDLE, align 8
  %36 = ptrtoint i8* %35 to i64
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 0
  store i64 %36, i64* %38, align 8
  %39 = load i8*, i8** @BTM_ACL_ENCRYPT_STATE_IDLE, align 8
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 2
  store i8* %39, i8** %41, align 8
  br label %49

42:                                               ; preds = %31
  %43 = load i64, i64* @BTM_ACL_SWKEY_STATE_SWITCHING, align 8
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 0
  store i64 %43, i64* %45, align 8
  %46 = load i8*, i8** @BTM_ACL_ENCRYPT_STATE_TEMP_FUNC, align 8
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 2
  store i8* %46, i8** %48, align 8
  br label %49

49:                                               ; preds = %42, %34
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 8
  %56 = icmp ne i32 %55, 0
  %57 = xor i1 %56, true
  %58 = zext i1 %57 to i32
  %59 = sext i32 %58 to i64
  %60 = call i32 @btsnd_hcic_switch_role(i32 %52, i64 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %75, label %62

62:                                               ; preds = %49
  %63 = load i8*, i8** @BTM_ACL_SWKEY_STATE_IDLE, align 8
  %64 = ptrtoint i8* %63 to i64
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 0
  store i64 %64, i64* %66, align 8
  %67 = load i8*, i8** @BTM_ACL_ENCRYPT_STATE_IDLE, align 8
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 2
  store i8* %67, i8** %69, align 8
  %70 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @btm_cb, i32 0, i32 2, i32 0, i32 0), align 8
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @btm_acl_report_role_change(i64 %70, i32 %73)
  br label %86

75:                                               ; preds = %49
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = call %struct.TYPE_10__* @btm_find_dev(i32 %78)
  store %struct.TYPE_10__* %79, %struct.TYPE_10__** %9, align 8
  %80 = icmp ne %struct.TYPE_10__* %79, null
  br i1 %80, label %81, label %85

81:                                               ; preds = %75
  %82 = load i64, i64* @BTM_SEC_RS_PENDING, align 8
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 0
  store i64 %82, i64* %84, align 8
  br label %85

85:                                               ; preds = %81, %75
  br label %86

86:                                               ; preds = %85, %62
  br label %164

87:                                               ; preds = %25
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @BTM_ACL_SWKEY_STATE_ENCRYPTION_ON, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %163

93:                                               ; preds = %87
  %94 = load i8*, i8** @BTM_ACL_SWKEY_STATE_IDLE, align 8
  %95 = ptrtoint i8* %94 to i64
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %96, i32 0, i32 0
  store i64 %95, i64* %97, align 8
  %98 = load i8*, i8** @BTM_ACL_ENCRYPT_STATE_IDLE, align 8
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 2
  store i8* %98, i8** %100, align 8
  %101 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @btm_cb, i32 0, i32 2, i32 0, i32 0), align 8
  %102 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @btm_acl_report_role_change(i64 %101, i32 %104)
  %106 = load i32 (i32*)*, i32 (i32*)** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @btm_cb, i32 0, i32 1), align 8
  %107 = icmp ne i32 (i32*)* %106, null
  br i1 %107, label %108, label %133

108:                                              ; preds = %93
  %109 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @btm_cb, i32 0, i32 0), align 8
  %110 = load i32, i32* @BTM_BL_ROLE_CHG_MASK, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %133

113:                                              ; preds = %108
  %114 = load i32, i32* @BTM_BL_ROLE_CHG_EVT, align 4
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 3
  store i32 %114, i32* %115, align 8
  %116 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @btm_cb, i32 0, i32 2, i32 0, i32 2), align 4
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 1
  store i32 %116, i32* %117, align 8
  %118 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @btm_cb, i32 0, i32 2, i32 0, i32 1), align 8
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 2
  store i32 %118, i32* %119, align 4
  %120 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @btm_cb, i32 0, i32 2, i32 0, i32 0), align 8
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 0
  store i64 %120, i64* %121, align 8
  %122 = load i32 (i32*)*, i32 (i32*)** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @btm_cb, i32 0, i32 1), align 8
  %123 = bitcast %struct.TYPE_11__* %10 to i32*
  %124 = call i32 %122(i32* %123)
  %125 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %130 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = call i32 @BTM_TRACE_DEBUG(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1, i64 0, i64 0), i32 %126, i64 %128, i64 %131)
  br label %133

133:                                              ; preds = %113, %108, %93
  %134 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %135 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 8
  %137 = call %struct.TYPE_10__* @btm_find_dev(i32 %136)
  store %struct.TYPE_10__* %137, %struct.TYPE_10__** %9, align 8
  %138 = icmp ne %struct.TYPE_10__* %137, null
  br i1 %138, label %139, label %162

139:                                              ; preds = %133
  %140 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* @BTM_SEC_DISC_PENDING, align 8
  %144 = icmp eq i64 %142, %143
  br i1 %144, label %145, label %152

145:                                              ; preds = %139
  %146 = call i32 @BTM_TRACE_WARNING(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.2, i64 0, i64 0))
  %147 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %148 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 8
  %150 = load i32, i32* @HCI_ERR_PEER_USER, align 4
  %151 = call i32 @btsnd_hcic_disconnect(i32 %149, i32 %150)
  br label %152

152:                                              ; preds = %145, %139
  %153 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %154 = ptrtoint %struct.TYPE_10__* %153 to i32
  %155 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %156 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = call i32 @BTM_TRACE_ERROR(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.3, i64 0, i64 0), i32 %154, i64 %157)
  %159 = load i64, i64* @BTM_SEC_RS_NOT_PENDING, align 8
  %160 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %161 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %160, i32 0, i32 0
  store i64 %159, i64* %161, align 8
  br label %162

162:                                              ; preds = %152, %133
  br label %163

163:                                              ; preds = %162, %87
  br label %164

164:                                              ; preds = %24, %163, %86
  ret void
}

declare dso_local i32 @BTM_TRACE_DEBUG(i8*, i32, i64, i64) #1

declare dso_local i64 @btm_handle_to_acl_index(i32) #1

declare dso_local i32 @btsnd_hcic_switch_role(i32, i64) #1

declare dso_local i32 @btm_acl_report_role_change(i64, i32) #1

declare dso_local %struct.TYPE_10__* @btm_find_dev(i32) #1

declare dso_local i32 @BTM_TRACE_WARNING(i8*) #1

declare dso_local i32 @btsnd_hcic_disconnect(i32, i32) #1

declare dso_local i32 @BTM_TRACE_ERROR(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
