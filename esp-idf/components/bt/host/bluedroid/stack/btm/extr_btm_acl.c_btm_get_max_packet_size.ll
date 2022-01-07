; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_acl.c_btm_get_max_packet_size.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_acl.c_btm_get_max_packet_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32 (...)* }

@BT_TRANSPORT_BR_EDR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"btm_get_max_packet_size\0A\00", align 1
@BD_ADDR_LEN = common dso_local global i32 0, align 4
@btm_cb = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@BTM_ACL_PKT_TYPES_MASK_NO_3_DH5 = common dso_local global i32 0, align 4
@HCI_EDR3_DH5_PACKET_SIZE = common dso_local global i32 0, align 4
@BTM_ACL_PKT_TYPES_MASK_NO_2_DH5 = common dso_local global i32 0, align 4
@HCI_EDR2_DH5_PACKET_SIZE = common dso_local global i32 0, align 4
@BTM_ACL_PKT_TYPES_MASK_NO_3_DH3 = common dso_local global i32 0, align 4
@HCI_EDR3_DH3_PACKET_SIZE = common dso_local global i32 0, align 4
@BTM_ACL_PKT_TYPES_MASK_DH5 = common dso_local global i32 0, align 4
@HCI_DH5_PACKET_SIZE = common dso_local global i32 0, align 4
@BTM_ACL_PKT_TYPES_MASK_NO_2_DH3 = common dso_local global i32 0, align 4
@HCI_EDR2_DH3_PACKET_SIZE = common dso_local global i32 0, align 4
@BTM_ACL_PKT_TYPES_MASK_DM5 = common dso_local global i32 0, align 4
@HCI_DM5_PACKET_SIZE = common dso_local global i32 0, align 4
@BTM_ACL_PKT_TYPES_MASK_DH3 = common dso_local global i32 0, align 4
@HCI_DH3_PACKET_SIZE = common dso_local global i32 0, align 4
@BTM_ACL_PKT_TYPES_MASK_DM3 = common dso_local global i32 0, align 4
@HCI_DM3_PACKET_SIZE = common dso_local global i32 0, align 4
@BTM_ACL_PKT_TYPES_MASK_NO_3_DH1 = common dso_local global i32 0, align 4
@HCI_EDR3_DH1_PACKET_SIZE = common dso_local global i32 0, align 4
@BTM_ACL_PKT_TYPES_MASK_NO_2_DH1 = common dso_local global i32 0, align 4
@HCI_EDR2_DH1_PACKET_SIZE = common dso_local global i32 0, align 4
@BTM_ACL_PKT_TYPES_MASK_DH1 = common dso_local global i32 0, align 4
@HCI_DH1_PACKET_SIZE = common dso_local global i32 0, align 4
@BTM_ACL_PKT_TYPES_MASK_DM1 = common dso_local global i32 0, align 4
@HCI_DM1_PACKET_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btm_get_max_packet_size(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = load i32, i32* @BT_TRANSPORT_BR_EDR, align 4
  %8 = call %struct.TYPE_5__* @btm_bda_to_acl(i32 %6, i32 %7)
  store %struct.TYPE_5__* %8, %struct.TYPE_5__** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %9 = call i32 @BTM_TRACE_DEBUG(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %11 = icmp ne %struct.TYPE_5__* %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %4, align 4
  br label %28

16:                                               ; preds = %1
  %17 = call %struct.TYPE_6__* (...) @controller_get_interface()
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i32 (...)*, i32 (...)** %18, align 8
  %20 = call i32 (...) %19()
  %21 = load i32, i32* %2, align 4
  %22 = load i32, i32* @BD_ADDR_LEN, align 4
  %23 = call i64 @memcmp(i32 %20, i32 %21, i32 %22)
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %16
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @btm_cb, i32 0, i32 0), align 4
  store i32 %26, i32* %4, align 4
  br label %27

27:                                               ; preds = %25, %16
  br label %28

28:                                               ; preds = %27, %12
  %29 = load i32, i32* %4, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %127

31:                                               ; preds = %28
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @BTM_ACL_PKT_TYPES_MASK_NO_3_DH5, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %31
  %37 = load i32, i32* @HCI_EDR3_DH5_PACKET_SIZE, align 4
  store i32 %37, i32* %5, align 4
  br label %126

38:                                               ; preds = %31
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* @BTM_ACL_PKT_TYPES_MASK_NO_2_DH5, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %38
  %44 = load i32, i32* @HCI_EDR2_DH5_PACKET_SIZE, align 4
  store i32 %44, i32* %5, align 4
  br label %125

45:                                               ; preds = %38
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* @BTM_ACL_PKT_TYPES_MASK_NO_3_DH3, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %45
  %51 = load i32, i32* @HCI_EDR3_DH3_PACKET_SIZE, align 4
  store i32 %51, i32* %5, align 4
  br label %124

52:                                               ; preds = %45
  %53 = load i32, i32* %4, align 4
  %54 = load i32, i32* @BTM_ACL_PKT_TYPES_MASK_DH5, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %52
  %58 = load i32, i32* @HCI_DH5_PACKET_SIZE, align 4
  store i32 %58, i32* %5, align 4
  br label %123

59:                                               ; preds = %52
  %60 = load i32, i32* %4, align 4
  %61 = load i32, i32* @BTM_ACL_PKT_TYPES_MASK_NO_2_DH3, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %66, label %64

64:                                               ; preds = %59
  %65 = load i32, i32* @HCI_EDR2_DH3_PACKET_SIZE, align 4
  store i32 %65, i32* %5, align 4
  br label %122

66:                                               ; preds = %59
  %67 = load i32, i32* %4, align 4
  %68 = load i32, i32* @BTM_ACL_PKT_TYPES_MASK_DM5, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %66
  %72 = load i32, i32* @HCI_DM5_PACKET_SIZE, align 4
  store i32 %72, i32* %5, align 4
  br label %121

73:                                               ; preds = %66
  %74 = load i32, i32* %4, align 4
  %75 = load i32, i32* @BTM_ACL_PKT_TYPES_MASK_DH3, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %73
  %79 = load i32, i32* @HCI_DH3_PACKET_SIZE, align 4
  store i32 %79, i32* %5, align 4
  br label %120

80:                                               ; preds = %73
  %81 = load i32, i32* %4, align 4
  %82 = load i32, i32* @BTM_ACL_PKT_TYPES_MASK_DM3, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %80
  %86 = load i32, i32* @HCI_DM3_PACKET_SIZE, align 4
  store i32 %86, i32* %5, align 4
  br label %119

87:                                               ; preds = %80
  %88 = load i32, i32* %4, align 4
  %89 = load i32, i32* @BTM_ACL_PKT_TYPES_MASK_NO_3_DH1, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %94, label %92

92:                                               ; preds = %87
  %93 = load i32, i32* @HCI_EDR3_DH1_PACKET_SIZE, align 4
  store i32 %93, i32* %5, align 4
  br label %118

94:                                               ; preds = %87
  %95 = load i32, i32* %4, align 4
  %96 = load i32, i32* @BTM_ACL_PKT_TYPES_MASK_NO_2_DH1, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %101, label %99

99:                                               ; preds = %94
  %100 = load i32, i32* @HCI_EDR2_DH1_PACKET_SIZE, align 4
  store i32 %100, i32* %5, align 4
  br label %117

101:                                              ; preds = %94
  %102 = load i32, i32* %4, align 4
  %103 = load i32, i32* @BTM_ACL_PKT_TYPES_MASK_DH1, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %101
  %107 = load i32, i32* @HCI_DH1_PACKET_SIZE, align 4
  store i32 %107, i32* %5, align 4
  br label %116

108:                                              ; preds = %101
  %109 = load i32, i32* %4, align 4
  %110 = load i32, i32* @BTM_ACL_PKT_TYPES_MASK_DM1, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %108
  %114 = load i32, i32* @HCI_DM1_PACKET_SIZE, align 4
  store i32 %114, i32* %5, align 4
  br label %115

115:                                              ; preds = %113, %108
  br label %116

116:                                              ; preds = %115, %106
  br label %117

117:                                              ; preds = %116, %99
  br label %118

118:                                              ; preds = %117, %92
  br label %119

119:                                              ; preds = %118, %85
  br label %120

120:                                              ; preds = %119, %78
  br label %121

121:                                              ; preds = %120, %71
  br label %122

122:                                              ; preds = %121, %64
  br label %123

123:                                              ; preds = %122, %57
  br label %124

124:                                              ; preds = %123, %50
  br label %125

125:                                              ; preds = %124, %43
  br label %126

126:                                              ; preds = %125, %36
  br label %127

127:                                              ; preds = %126, %28
  %128 = load i32, i32* %5, align 4
  ret i32 %128
}

declare dso_local %struct.TYPE_5__* @btm_bda_to_acl(i32, i32) #1

declare dso_local i32 @BTM_TRACE_DEBUG(i8*) #1

declare dso_local i64 @memcmp(i32, i32, i32) #1

declare dso_local %struct.TYPE_6__* @controller_get_interface(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
