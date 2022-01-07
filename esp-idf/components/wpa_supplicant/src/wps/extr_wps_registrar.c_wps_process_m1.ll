; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/wps/extr_wps_registrar.c_wps_process_m1.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/wps/extr_wps_registrar.c_wps_process_m1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wps_data = type { i64, i32, i32, i32, %struct.TYPE_9__, i32, i32, %struct.TYPE_10__*, i32, %struct.wps_nfc_pw_token* }
%struct.TYPE_9__ = type { i64, i64 }
%struct.TYPE_10__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.wps_nfc_pw_token = type { i32, i32 }
%struct.wps_parse_attr = type { i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"WPS: Received M1\00", align 1
@RECV_M1 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [44 x i8] c"WPS: Unexpected state (%d) for receiving M1\00", align 1
@WPS_FAILURE = common dso_local global i32 0, align 4
@DEV_PW_DEFAULT = common dso_local global i32 0, align 4
@DEV_PW_USER_SPECIFIED = common dso_local global i32 0, align 4
@DEV_PW_MACHINE_SPECIFIED = common dso_local global i32 0, align 4
@DEV_PW_REGISTRAR_SPECIFIED = common dso_local global i32 0, align 4
@DEV_PW_PUSHBUTTON = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"WPS: Unsupported Device Password ID %d\00", align 1
@SEND_M2D = common dso_local global i8* null, align 8
@WPS_CONTINUE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [40 x i8] c"WPS: PBC overlap - deny PBC negotiation\00", align 1
@WPS_CFG_MULTIPLE_PBC_DETECTED = common dso_local global i32 0, align 4
@WPS_M1 = common dso_local global i32 0, align 4
@WPS_EI_NO_ERROR = common dso_local global i32 0, align 4
@SEND_M2 = common dso_local global i64 0, align 8
@MSG_ERROR = common dso_local global i32 0, align 4
@WPS_HASH_LEN = common dso_local global i32 0, align 4
@WPS_OOB_PUBKEY_HASH_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wps_data*, %struct.wps_parse_attr*)* @wps_process_m1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wps_process_m1(%struct.wps_data* %0, %struct.wps_parse_attr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wps_data*, align 8
  %5 = alloca %struct.wps_parse_attr*, align 8
  store %struct.wps_data* %0, %struct.wps_data** %4, align 8
  store %struct.wps_parse_attr* %1, %struct.wps_parse_attr** %5, align 8
  %6 = load i32, i32* @MSG_DEBUG, align 4
  %7 = call i32 (i32, i8*, ...) @wpa_printf(i32 %6, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %9 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @RECV_M1, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %20

13:                                               ; preds = %2
  %14 = load i32, i32* @MSG_DEBUG, align 4
  %15 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %16 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = call i32 (i32, i8*, ...) @wpa_printf(i32 %14, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i64 %17)
  %19 = load i32, i32* @WPS_FAILURE, align 4
  store i32 %19, i32* %3, align 4
  br label %271

20:                                               ; preds = %2
  %21 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %22 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %5, align 8
  %23 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %22, i32 0, i32 14
  %24 = load i32, i32* %23, align 8
  %25 = call i64 @wps_process_uuid_e(%struct.wps_data* %21, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %129, label %27

27:                                               ; preds = %20
  %28 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %29 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %5, align 8
  %30 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %29, i32 0, i32 13
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @wps_process_mac_addr(%struct.wps_data* %28, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %129, label %34

34:                                               ; preds = %27
  %35 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %36 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %5, align 8
  %37 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %36, i32 0, i32 12
  %38 = load i32, i32* %37, align 8
  %39 = call i64 @wps_process_enrollee_nonce(%struct.wps_data* %35, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %129, label %41

41:                                               ; preds = %34
  %42 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %43 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %5, align 8
  %44 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %5, align 8
  %47 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i64 @wps_process_pubkey(%struct.wps_data* %42, i32* %45, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %129, label %51

51:                                               ; preds = %41
  %52 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %53 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %5, align 8
  %54 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %53, i32 0, i32 11
  %55 = load i32, i32* %54, align 4
  %56 = call i64 @wps_process_auth_type_flags(%struct.wps_data* %52, i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %129, label %58

58:                                               ; preds = %51
  %59 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %60 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %5, align 8
  %61 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %60, i32 0, i32 10
  %62 = load i32, i32* %61, align 8
  %63 = call i64 @wps_process_encr_type_flags(%struct.wps_data* %59, i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %129, label %65

65:                                               ; preds = %58
  %66 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %67 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %5, align 8
  %68 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %67, i32 0, i32 9
  %69 = load i32, i32* %68, align 4
  %70 = call i64 @wps_process_conn_type_flags(%struct.wps_data* %66, i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %129, label %72

72:                                               ; preds = %65
  %73 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %74 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %5, align 8
  %75 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %74, i32 0, i32 8
  %76 = load i32, i32* %75, align 8
  %77 = call i64 @wps_process_config_methods(%struct.wps_data* %73, i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %129, label %79

79:                                               ; preds = %72
  %80 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %81 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %5, align 8
  %82 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %81, i32 0, i32 7
  %83 = load i32, i32* %82, align 4
  %84 = call i64 @wps_process_wps_state(%struct.wps_data* %80, i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %129, label %86

86:                                               ; preds = %79
  %87 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %88 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %87, i32 0, i32 4
  %89 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %5, align 8
  %90 = call i64 @wps_process_device_attrs(%struct.TYPE_9__* %88, %struct.wps_parse_attr* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %129, label %92

92:                                               ; preds = %86
  %93 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %94 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %93, i32 0, i32 4
  %95 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %5, align 8
  %96 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %95, i32 0, i32 6
  %97 = load i32, i32* %96, align 8
  %98 = call i64 @wps_process_rf_bands(%struct.TYPE_9__* %94, i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %129, label %100

100:                                              ; preds = %92
  %101 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %102 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %5, align 8
  %103 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %102, i32 0, i32 5
  %104 = load i32, i32* %103, align 4
  %105 = call i64 @wps_process_assoc_state(%struct.wps_data* %101, i32 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %129, label %107

107:                                              ; preds = %100
  %108 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %109 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %5, align 8
  %110 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %109, i32 0, i32 4
  %111 = load i32, i32* %110, align 8
  %112 = call i64 @wps_process_dev_password_id(%struct.wps_data* %108, i32 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %129, label %114

114:                                              ; preds = %107
  %115 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %116 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %5, align 8
  %117 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 4
  %119 = call i64 @wps_process_config_error(%struct.wps_data* %115, i32 %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %129, label %121

121:                                              ; preds = %114
  %122 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %123 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %122, i32 0, i32 4
  %124 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %5, align 8
  %125 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = call i64 @wps_process_os_version(%struct.TYPE_9__* %123, i32 %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %121, %114, %107, %100, %92, %86, %79, %72, %65, %58, %51, %41, %34, %27, %20
  %130 = load i32, i32* @WPS_FAILURE, align 4
  store i32 %130, i32* %3, align 4
  br label %271

131:                                              ; preds = %121
  %132 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %133 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 8
  %135 = icmp slt i32 %134, 16
  br i1 %135, label %136, label %186

136:                                              ; preds = %131
  %137 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %138 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 8
  %140 = load i32, i32* @DEV_PW_DEFAULT, align 4
  %141 = icmp ne i32 %139, %140
  br i1 %141, label %142, label %186

142:                                              ; preds = %136
  %143 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %144 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 8
  %146 = load i32, i32* @DEV_PW_USER_SPECIFIED, align 4
  %147 = icmp ne i32 %145, %146
  br i1 %147, label %148, label %186

148:                                              ; preds = %142
  %149 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %150 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 8
  %152 = load i32, i32* @DEV_PW_MACHINE_SPECIFIED, align 4
  %153 = icmp ne i32 %151, %152
  br i1 %153, label %154, label %186

154:                                              ; preds = %148
  %155 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %156 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 8
  %158 = load i32, i32* @DEV_PW_REGISTRAR_SPECIFIED, align 4
  %159 = icmp ne i32 %157, %158
  br i1 %159, label %160, label %186

160:                                              ; preds = %154
  %161 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %162 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 8
  %164 = load i32, i32* @DEV_PW_PUSHBUTTON, align 4
  %165 = icmp ne i32 %163, %164
  br i1 %165, label %175, label %166

166:                                              ; preds = %160
  %167 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %168 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %167, i32 0, i32 7
  %169 = load %struct.TYPE_10__*, %struct.TYPE_10__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %169, i32 0, i32 0
  %171 = load %struct.TYPE_8__*, %struct.TYPE_8__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %186, label %175

175:                                              ; preds = %166, %160
  %176 = load i32, i32* @MSG_DEBUG, align 4
  %177 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %178 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 8
  %180 = call i32 (i32, i8*, ...) @wpa_printf(i32 %176, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %179)
  %181 = load i8*, i8** @SEND_M2D, align 8
  %182 = ptrtoint i8* %181 to i64
  %183 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %184 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %183, i32 0, i32 0
  store i64 %182, i64* %184, align 8
  %185 = load i32, i32* @WPS_CONTINUE, align 4
  store i32 %185, i32* %3, align 4
  br label %271

186:                                              ; preds = %166, %154, %148, %142, %136, %131
  %187 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %188 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 8
  %190 = load i32, i32* @DEV_PW_PUSHBUTTON, align 4
  %191 = icmp eq i32 %189, %190
  br i1 %191, label %192, label %266

192:                                              ; preds = %186
  %193 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %194 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %193, i32 0, i32 7
  %195 = load %struct.TYPE_10__*, %struct.TYPE_10__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %195, i32 0, i32 0
  %197 = load %struct.TYPE_8__*, %struct.TYPE_8__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %219, label %201

201:                                              ; preds = %192
  %202 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %203 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %202, i32 0, i32 7
  %204 = load %struct.TYPE_10__*, %struct.TYPE_10__** %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %204, i32 0, i32 0
  %206 = load %struct.TYPE_8__*, %struct.TYPE_8__** %205, align 8
  %207 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %208 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %207, i32 0, i32 6
  %209 = load i32, i32* %208, align 4
  %210 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %211 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %210, i32 0, i32 5
  %212 = load i32, i32* %211, align 8
  %213 = call i64 @wps_registrar_pbc_overlap(%struct.TYPE_8__* %206, i32 %209, i32 %212)
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %219, label %215

215:                                              ; preds = %201
  %216 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %217 = call i32 @wps_registrar_p2p_dev_addr_match(%struct.wps_data* %216)
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %251, label %219

219:                                              ; preds = %215, %201, %192
  %220 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %221 = call i32 @wps_registrar_skip_overlap(%struct.wps_data* %220)
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %251, label %223

223:                                              ; preds = %219
  %224 = load i32, i32* @MSG_DEBUG, align 4
  %225 = call i32 (i32, i8*, ...) @wpa_printf(i32 %224, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  %226 = load i8*, i8** @SEND_M2D, align 8
  %227 = ptrtoint i8* %226 to i64
  %228 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %229 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %228, i32 0, i32 0
  store i64 %227, i64* %229, align 8
  %230 = load i32, i32* @WPS_CFG_MULTIPLE_PBC_DETECTED, align 4
  %231 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %232 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %231, i32 0, i32 8
  store i32 %230, i32* %232, align 8
  %233 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %234 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %233, i32 0, i32 7
  %235 = load %struct.TYPE_10__*, %struct.TYPE_10__** %234, align 8
  %236 = call i32 @wps_pbc_overlap_event(%struct.TYPE_10__* %235)
  %237 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %238 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %237, i32 0, i32 7
  %239 = load %struct.TYPE_10__*, %struct.TYPE_10__** %238, align 8
  %240 = load i32, i32* @WPS_M1, align 4
  %241 = load i32, i32* @WPS_CFG_MULTIPLE_PBC_DETECTED, align 4
  %242 = load i32, i32* @WPS_EI_NO_ERROR, align 4
  %243 = call i32 @wps_fail_event(%struct.TYPE_10__* %239, i32 %240, i32 %241, i32 %242)
  %244 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %245 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %244, i32 0, i32 7
  %246 = load %struct.TYPE_10__*, %struct.TYPE_10__** %245, align 8
  %247 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %246, i32 0, i32 0
  %248 = load %struct.TYPE_8__*, %struct.TYPE_8__** %247, align 8
  %249 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %248, i32 0, i32 0
  store i32 1, i32* %249, align 4
  %250 = load i32, i32* @WPS_CONTINUE, align 4
  store i32 %250, i32* %3, align 4
  br label %271

251:                                              ; preds = %219, %215
  %252 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %253 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %252, i32 0, i32 7
  %254 = load %struct.TYPE_10__*, %struct.TYPE_10__** %253, align 8
  %255 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %254, i32 0, i32 0
  %256 = load %struct.TYPE_8__*, %struct.TYPE_8__** %255, align 8
  %257 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %258 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %257, i32 0, i32 6
  %259 = load i32, i32* %258, align 4
  %260 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %261 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %260, i32 0, i32 5
  %262 = load i32, i32* %261, align 8
  %263 = call i32 @wps_registrar_add_pbc_session(%struct.TYPE_8__* %256, i32 %259, i32 %262)
  %264 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %265 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %264, i32 0, i32 2
  store i32 1, i32* %265, align 4
  br label %266

266:                                              ; preds = %251, %186
  %267 = load i64, i64* @SEND_M2, align 8
  %268 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %269 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %268, i32 0, i32 0
  store i64 %267, i64* %269, align 8
  %270 = load i32, i32* @WPS_CONTINUE, align 4
  store i32 %270, i32* %3, align 4
  br label %271

271:                                              ; preds = %266, %223, %175, %129, %13
  %272 = load i32, i32* %3, align 4
  ret i32 %272
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i64 @wps_process_uuid_e(%struct.wps_data*, i32) #1

declare dso_local i64 @wps_process_mac_addr(%struct.wps_data*, i32) #1

declare dso_local i64 @wps_process_enrollee_nonce(%struct.wps_data*, i32) #1

declare dso_local i64 @wps_process_pubkey(%struct.wps_data*, i32*, i32) #1

declare dso_local i64 @wps_process_auth_type_flags(%struct.wps_data*, i32) #1

declare dso_local i64 @wps_process_encr_type_flags(%struct.wps_data*, i32) #1

declare dso_local i64 @wps_process_conn_type_flags(%struct.wps_data*, i32) #1

declare dso_local i64 @wps_process_config_methods(%struct.wps_data*, i32) #1

declare dso_local i64 @wps_process_wps_state(%struct.wps_data*, i32) #1

declare dso_local i64 @wps_process_device_attrs(%struct.TYPE_9__*, %struct.wps_parse_attr*) #1

declare dso_local i64 @wps_process_rf_bands(%struct.TYPE_9__*, i32) #1

declare dso_local i64 @wps_process_assoc_state(%struct.wps_data*, i32) #1

declare dso_local i64 @wps_process_dev_password_id(%struct.wps_data*, i32) #1

declare dso_local i64 @wps_process_config_error(%struct.wps_data*, i32) #1

declare dso_local i64 @wps_process_os_version(%struct.TYPE_9__*, i32) #1

declare dso_local i64 @wps_registrar_pbc_overlap(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @wps_registrar_p2p_dev_addr_match(%struct.wps_data*) #1

declare dso_local i32 @wps_registrar_skip_overlap(%struct.wps_data*) #1

declare dso_local i32 @wps_pbc_overlap_event(%struct.TYPE_10__*) #1

declare dso_local i32 @wps_fail_event(%struct.TYPE_10__*, i32, i32, i32) #1

declare dso_local i32 @wps_registrar_add_pbc_session(%struct.TYPE_8__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
