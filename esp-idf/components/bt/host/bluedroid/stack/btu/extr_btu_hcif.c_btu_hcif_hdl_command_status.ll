; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btu/extr_btu_hcif.c_btu_hcif_hdl_command_status.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btu/extr_btu_hcif.c_btu_hcif_hdl_command_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HCI_SUCCESS = common dso_local global i32 0, align 4
@BTM_BR_INQUIRY_MASK = common dso_local global i32 0, align 4
@BTM_ROLE_UNDEFINED = common dso_local global i32 0, align 4
@HCI_ERR_COMMAND_DISALLOWED = common dso_local global i32 0, align 4
@HCI_INVALID_HANDLE = common dso_local global i32 0, align 4
@BTM_INVALID_HCI_HANDLE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@HCI_GRP_VENDOR_SPECIFIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32*, i8*)* @btu_hcif_hdl_command_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @btu_hcif_hdl_command_status(i32 %0, i32 %1, i32* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i8* %3, i8** %8, align 8
  %12 = load i32, i32* %5, align 4
  switch i32 %12, label %34 [
    i32 138, label %13
    i32 139, label %13
    i32 137, label %31
    i32 129, label %31
    i32 135, label %31
  ]

13:                                               ; preds = %4, %4
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @HCI_SUCCESS, align 4
  %16 = icmp ne i32 %14, %15
  br i1 %16, label %17, label %30

17:                                               ; preds = %13
  %18 = load i32*, i32** %7, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %29

20:                                               ; preds = %17
  %21 = load i32*, i32** %7, align 8
  %22 = getelementptr inbounds i32, i32* %21, i32 1
  store i32* %22, i32** %7, align 8
  %23 = load i32, i32* %10, align 4
  %24 = load i32*, i32** %7, align 8
  %25 = call i32 @STREAM_TO_UINT16(i32 %23, i32* %24)
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %10, align 4
  %28 = call i32 @btm_sco_chk_pend_unpark(i32 %26, i32 %27)
  br label %29

29:                                               ; preds = %20, %17
  br label %30

30:                                               ; preds = %29, %13
  br label %31

31:                                               ; preds = %4, %4, %4, %30
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @btm_pm_proc_cmd_status(i32 %32)
  br label %179

34:                                               ; preds = %4
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @HCI_SUCCESS, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %38, label %166

38:                                               ; preds = %34
  %39 = load i32, i32* %5, align 4
  switch i32 %39, label %153 [
    i32 136, label %40
    i32 132, label %44
    i32 134, label %49
    i32 128, label %52
    i32 140, label %73
    i32 133, label %91
    i32 143, label %106
    i32 130, label %110
    i32 142, label %115
    i32 141, label %118
    i32 131, label %131
  ]

40:                                               ; preds = %38
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @BTM_BR_INQUIRY_MASK, align 4
  %43 = call i32 @btm_process_inq_complete(i32 %41, i32 %42)
  br label %165

44:                                               ; preds = %38
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @btm_process_remote_name(i32* null, i32* null, i32 0, i32 %45)
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @btm_sec_rmt_name_request_complete(i32* null, i32* null, i32 %47)
  br label %165

49:                                               ; preds = %38
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @btm_qos_setup_complete(i32 %50, i32 0, i32* null)
  br label %165

52:                                               ; preds = %38
  %53 = load i32*, i32** %7, align 8
  %54 = icmp ne i32* %53, null
  br i1 %54, label %55, label %65

55:                                               ; preds = %52
  %56 = load i32*, i32** %7, align 8
  %57 = getelementptr inbounds i32, i32* %56, i32 1
  store i32* %57, i32** %7, align 8
  %58 = load i32*, i32** %9, align 8
  %59 = load i32*, i32** %7, align 8
  %60 = call i32 @STREAM_TO_BDADDR(i32* %58, i32* %59)
  %61 = load i32, i32* %6, align 4
  %62 = load i32*, i32** %9, align 8
  %63 = load i32, i32* @BTM_ROLE_UNDEFINED, align 4
  %64 = call i32 @btm_acl_role_changed(i32 %61, i32* %62, i32 %63)
  br label %69

65:                                               ; preds = %52
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* @BTM_ROLE_UNDEFINED, align 4
  %68 = call i32 @btm_acl_role_changed(i32 %66, i32* null, i32 %67)
  br label %69

69:                                               ; preds = %65, %55
  %70 = load i32, i32* @BTM_ROLE_UNDEFINED, align 4
  %71 = load i32, i32* @HCI_ERR_COMMAND_DISALLOWED, align 4
  %72 = call i32 @l2c_link_role_changed(i32* null, i32 %70, i32 %71)
  br label %165

73:                                               ; preds = %38
  %74 = load i32*, i32** %7, align 8
  %75 = icmp ne i32* %74, null
  br i1 %75, label %76, label %90

76:                                               ; preds = %73
  %77 = load i32*, i32** %7, align 8
  %78 = getelementptr inbounds i32, i32* %77, i32 1
  store i32* %78, i32** %7, align 8
  %79 = load i32*, i32** %9, align 8
  %80 = load i32*, i32** %7, align 8
  %81 = call i32 @STREAM_TO_BDADDR(i32* %79, i32* %80)
  %82 = load i32*, i32** %9, align 8
  %83 = load i32, i32* @HCI_INVALID_HANDLE, align 4
  %84 = load i32, i32* %6, align 4
  %85 = call i32 @btm_sec_connected(i32* %82, i32 %83, i32 %84, i32 0)
  %86 = load i32, i32* %6, align 4
  %87 = load i32, i32* @HCI_INVALID_HANDLE, align 4
  %88 = load i32*, i32** %9, align 8
  %89 = call i32 @l2c_link_hci_conn_comp(i32 %86, i32 %87, i32* %88)
  br label %90

90:                                               ; preds = %76, %73
  br label %165

91:                                               ; preds = %38
  %92 = load i32*, i32** %7, align 8
  %93 = icmp ne i32* %92, null
  br i1 %93, label %94, label %100

94:                                               ; preds = %91
  %95 = load i32*, i32** %7, align 8
  %96 = getelementptr inbounds i32, i32* %95, i32 1
  store i32* %96, i32** %7, align 8
  %97 = load i32, i32* %10, align 4
  %98 = load i32*, i32** %7, align 8
  %99 = call i32 @STREAM_TO_UINT16(i32 %97, i32* %98)
  br label %102

100:                                              ; preds = %91
  %101 = load i32, i32* @HCI_INVALID_HANDLE, align 4
  store i32 %101, i32* %10, align 4
  br label %102

102:                                              ; preds = %100, %94
  %103 = load i32, i32* %6, align 4
  %104 = load i32, i32* %10, align 4
  %105 = call i32 @btm_read_remote_ext_features_failed(i32 %103, i32 %104)
  br label %165

106:                                              ; preds = %38
  %107 = load i32, i32* @BTM_INVALID_HCI_HANDLE, align 4
  %108 = load i32, i32* %6, align 4
  %109 = call i32 @btm_sec_auth_complete(i32 %107, i32 %108)
  br label %165

110:                                              ; preds = %38
  %111 = load i32, i32* @BTM_INVALID_HCI_HANDLE, align 4
  %112 = load i32, i32* %6, align 4
  %113 = load i32, i32* @FALSE, align 4
  %114 = call i32 @btm_sec_encrypt_change(i32 %111, i32 %112, i32 %113)
  br label %165

115:                                              ; preds = %38
  %116 = load i32, i32* %6, align 4
  %117 = call i32 @btm_ble_create_ll_conn_complete(i32 %116)
  br label %165

118:                                              ; preds = %38
  %119 = load i32*, i32** %7, align 8
  %120 = icmp ne i32* %119, null
  br i1 %120, label %121, label %130

121:                                              ; preds = %118
  %122 = load i32*, i32** %7, align 8
  %123 = getelementptr inbounds i32, i32* %122, i32 1
  store i32* %123, i32** %7, align 8
  %124 = load i32, i32* %10, align 4
  %125 = load i32*, i32** %7, align 8
  %126 = call i32 @STREAM_TO_UINT16(i32 %124, i32* %125)
  %127 = load i32, i32* %6, align 4
  %128 = load i32, i32* %10, align 4
  %129 = call i32 @btu_ble_ll_get_conn_param_format_err_from_contoller(i32 %127, i32 %128)
  br label %130

130:                                              ; preds = %121, %118
  br label %165

131:                                              ; preds = %38
  %132 = load i32*, i32** %7, align 8
  %133 = icmp ne i32* %132, null
  br i1 %133, label %134, label %152

134:                                              ; preds = %131
  %135 = load i32*, i32** %7, align 8
  %136 = getelementptr inbounds i32, i32* %135, i32 1
  store i32* %136, i32** %7, align 8
  %137 = load i32, i32* %10, align 4
  %138 = load i32*, i32** %7, align 8
  %139 = call i32 @STREAM_TO_UINT16(i32 %137, i32* %138)
  %140 = load i32, i32* %10, align 4
  %141 = call i32 @btm_is_sco_active(i32 %140)
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %147

143:                                              ; preds = %134
  %144 = load i32, i32* %6, align 4
  %145 = load i32, i32* %10, align 4
  %146 = call i32 @btm_esco_proc_conn_chg(i32 %144, i32 %145, i32 0, i32 0, i32 0, i32 0)
  br label %151

147:                                              ; preds = %134
  %148 = load i32, i32* %6, align 4
  %149 = load i32, i32* %10, align 4
  %150 = call i32 @btm_sco_connected(i32 %148, i32* null, i32 %149, i32* %11)
  br label %151

151:                                              ; preds = %147, %143
  br label %152

152:                                              ; preds = %151, %131
  br label %165

153:                                              ; preds = %38
  %154 = load i32, i32* %5, align 4
  %155 = load i32, i32* @HCI_GRP_VENDOR_SPECIFIC, align 4
  %156 = and i32 %154, %155
  %157 = load i32, i32* @HCI_GRP_VENDOR_SPECIFIC, align 4
  %158 = icmp eq i32 %156, %157
  br i1 %158, label %159, label %164

159:                                              ; preds = %153
  %160 = load i32, i32* %5, align 4
  %161 = load i8*, i8** %8, align 8
  %162 = bitcast i8* %161 to i32*
  %163 = call i32 @btm_vsc_complete(i32* %6, i32 %160, i32 1, i32* %162)
  br label %164

164:                                              ; preds = %159, %153
  br label %165

165:                                              ; preds = %164, %152, %130, %115, %110, %106, %102, %90, %69, %49, %44, %40
  br label %178

166:                                              ; preds = %34
  %167 = load i32, i32* %5, align 4
  %168 = load i32, i32* @HCI_GRP_VENDOR_SPECIFIC, align 4
  %169 = and i32 %167, %168
  %170 = load i32, i32* @HCI_GRP_VENDOR_SPECIFIC, align 4
  %171 = icmp eq i32 %169, %170
  br i1 %171, label %172, label %177

172:                                              ; preds = %166
  %173 = load i32, i32* %5, align 4
  %174 = load i8*, i8** %8, align 8
  %175 = bitcast i8* %174 to i32*
  %176 = call i32 @btm_vsc_complete(i32* %6, i32 %173, i32 1, i32* %175)
  br label %177

177:                                              ; preds = %172, %166
  br label %178

178:                                              ; preds = %177, %165
  br label %179

179:                                              ; preds = %178, %31
  ret void
}

declare dso_local i32 @STREAM_TO_UINT16(i32, i32*) #1

declare dso_local i32 @btm_sco_chk_pend_unpark(i32, i32) #1

declare dso_local i32 @btm_pm_proc_cmd_status(i32) #1

declare dso_local i32 @btm_process_inq_complete(i32, i32) #1

declare dso_local i32 @btm_process_remote_name(i32*, i32*, i32, i32) #1

declare dso_local i32 @btm_sec_rmt_name_request_complete(i32*, i32*, i32) #1

declare dso_local i32 @btm_qos_setup_complete(i32, i32, i32*) #1

declare dso_local i32 @STREAM_TO_BDADDR(i32*, i32*) #1

declare dso_local i32 @btm_acl_role_changed(i32, i32*, i32) #1

declare dso_local i32 @l2c_link_role_changed(i32*, i32, i32) #1

declare dso_local i32 @btm_sec_connected(i32*, i32, i32, i32) #1

declare dso_local i32 @l2c_link_hci_conn_comp(i32, i32, i32*) #1

declare dso_local i32 @btm_read_remote_ext_features_failed(i32, i32) #1

declare dso_local i32 @btm_sec_auth_complete(i32, i32) #1

declare dso_local i32 @btm_sec_encrypt_change(i32, i32, i32) #1

declare dso_local i32 @btm_ble_create_ll_conn_complete(i32) #1

declare dso_local i32 @btu_ble_ll_get_conn_param_format_err_from_contoller(i32, i32) #1

declare dso_local i32 @btm_is_sco_active(i32) #1

declare dso_local i32 @btm_esco_proc_conn_chg(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @btm_sco_connected(i32, i32*, i32, i32*) #1

declare dso_local i32 @btm_vsc_complete(i32*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
