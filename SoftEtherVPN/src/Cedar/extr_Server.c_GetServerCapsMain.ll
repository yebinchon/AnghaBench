; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Server.c_GetServerCapsMain.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Server.c_GetServerCapsMain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32, %struct.TYPE_8__*, i32* }
%struct.TYPE_8__ = type { i32, i64 }
%struct.TYPE_9__ = type { i64 }

@.str = private unnamed_addr constant [18 x i8] c"i_max_packet_size\00", align 1
@MAX_PACKET_SIZE = common dso_local global i64 0, align 8
@INFINITE = common dso_local global i64 0, align 8
@SERVER_MAX_SESSIONS_FOR_CARRIER_EDITION = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"i_max_hubs\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"i_max_sessions\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"i_max_user_creation\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"i_max_clients\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"i_max_bridges\00", align 1
@SERVER_TYPE_FARM_MEMBER = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [20 x i8] c"i_max_users_per_hub\00", align 1
@MAX_USERS = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [21 x i8] c"i_max_groups_per_hub\00", align 1
@MAX_GROUPS = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [19 x i8] c"i_max_access_lists\00", align 1
@MAX_ACCESSLISTS = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [27 x i8] c"b_support_limit_multilogin\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"b_support_qos\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"b_support_syslog\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"b_support_ipsec\00", align 1
@SERVER_TYPE_STANDALONE = common dso_local global i64 0, align 8
@.str.13 = private unnamed_addr constant [15 x i8] c"b_support_sstp\00", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"b_support_openvpn\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"b_support_ddns\00", align 1
@.str.16 = private unnamed_addr constant [21 x i8] c"b_support_ddns_proxy\00", align 1
@.str.17 = private unnamed_addr constant [27 x i8] c"b_support_special_listener\00", align 1
@.str.18 = private unnamed_addr constant [25 x i8] c"b_cluster_hub_type_fixed\00", align 1
@.str.19 = private unnamed_addr constant [17 x i8] c"i_max_mac_tables\00", align 1
@MAX_MAC_TABLES = common dso_local global i64 0, align 8
@.str.20 = private unnamed_addr constant [16 x i8] c"i_max_ip_tables\00", align 1
@MAX_IP_TABLES = common dso_local global i64 0, align 8
@.str.21 = private unnamed_addr constant [20 x i8] c"b_support_securenat\00", align 1
@.str.22 = private unnamed_addr constant [22 x i8] c"b_suppport_push_route\00", align 1
@.str.23 = private unnamed_addr constant [29 x i8] c"b_suppport_push_route_config\00", align 1
@.str.24 = private unnamed_addr constant [23 x i8] c"b_virtual_nat_disabled\00", align 1
@.str.25 = private unnamed_addr constant [20 x i8] c"i_max_secnat_tables\00", align 1
@NAT_MAX_SESSIONS = common dso_local global i64 0, align 8
@.str.26 = private unnamed_addr constant [18 x i8] c"b_support_cascade\00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"b_bridge\00", align 1
@.str.28 = private unnamed_addr constant [13 x i8] c"b_standalone\00", align 1
@SERVER_TYPE_FARM_CONTROLLER = common dso_local global i64 0, align 8
@.str.29 = private unnamed_addr constant [21 x i8] c"b_cluster_controller\00", align 1
@.str.30 = private unnamed_addr constant [17 x i8] c"b_cluster_member\00", align 1
@.str.31 = private unnamed_addr constant [21 x i8] c"b_support_config_hub\00", align 1
@.str.32 = private unnamed_addr constant [21 x i8] c"b_vpn_client_connect\00", align 1
@.str.33 = private unnamed_addr constant [17 x i8] c"b_support_radius\00", align 1
@.str.34 = private unnamed_addr constant [15 x i8] c"b_local_bridge\00", align 1
@.str.35 = private unnamed_addr constant [20 x i8] c"b_must_install_pcap\00", align 1
@.str.36 = private unnamed_addr constant [16 x i8] c"b_tap_supported\00", align 1
@OSTYPE_LINUX = common dso_local global i64 0, align 8
@OSTYPE_BSD = common dso_local global i64 0, align 8
@.str.37 = private unnamed_addr constant [23 x i8] c"b_support_cascade_cert\00", align 1
@.str.38 = private unnamed_addr constant [21 x i8] c"b_support_config_log\00", align 1
@.str.39 = private unnamed_addr constant [21 x i8] c"b_support_autodelete\00", align 1
@.str.40 = private unnamed_addr constant [20 x i8] c"b_support_config_rw\00", align 1
@.str.41 = private unnamed_addr constant [27 x i8] c"b_support_hub_admin_option\00", align 1
@.str.42 = private unnamed_addr constant [30 x i8] c"b_support_cascade_client_cert\00", align 1
@.str.43 = private unnamed_addr constant [19 x i8] c"b_support_hide_hub\00", align 1
@.str.44 = private unnamed_addr constant [24 x i8] c"b_support_cluster_admin\00", align 1
@.str.45 = private unnamed_addr constant [15 x i8] c"b_is_softether\00", align 1
@.str.46 = private unnamed_addr constant [17 x i8] c"b_support_layer3\00", align 1
@.str.47 = private unnamed_addr constant [12 x i8] c"i_max_l3_sw\00", align 1
@MAX_NUM_L3_SWITCH = common dso_local global i64 0, align 8
@.str.48 = private unnamed_addr constant [12 x i8] c"i_max_l3_if\00", align 1
@MAX_NUM_L3_IF = common dso_local global i64 0, align 8
@.str.49 = private unnamed_addr constant [15 x i8] c"i_max_l3_table\00", align 1
@MAX_NUM_L3_TABLE = common dso_local global i64 0, align 8
@.str.50 = private unnamed_addr constant [18 x i8] c"b_support_cluster\00", align 1
@.str.51 = private unnamed_addr constant [14 x i8] c"b_support_crl\00", align 1
@.str.52 = private unnamed_addr constant [13 x i8] c"b_support_ac\00", align 1
@.str.53 = private unnamed_addr constant [19 x i8] c"b_support_read_log\00", align 1
@.str.54 = private unnamed_addr constant [25 x i8] c"b_support_rename_cascade\00", align 1
@.str.55 = private unnamed_addr constant [15 x i8] c"b_beta_version\00", align 1
@.str.56 = private unnamed_addr constant [11 x i8] c"b_is_in_vm\00", align 1
@.str.57 = private unnamed_addr constant [34 x i8] c"b_support_network_connection_name\00", align 1
@.str.58 = private unnamed_addr constant [20 x i8] c"b_support_check_mac\00", align 1
@.str.59 = private unnamed_addr constant [26 x i8] c"b_support_check_tcp_state\00", align 1
@.str.60 = private unnamed_addr constant [52 x i8] c"b_support_radius_retry_interval_and_several_servers\00", align 1
@.str.61 = private unnamed_addr constant [15 x i8] c"b_support_vlan\00", align 1
@.str.62 = private unnamed_addr constant [26 x i8] c"b_support_hub_ext_options\00", align 1
@.str.63 = private unnamed_addr constant [23 x i8] c"b_support_policy_ver_3\00", align 1
@.str.64 = private unnamed_addr constant [19 x i8] c"b_support_ipv6_acl\00", align 1
@.str.65 = private unnamed_addr constant [17 x i8] c"b_support_ex_acl\00", align 1
@.str.66 = private unnamed_addr constant [27 x i8] c"b_support_redirect_url_acl\00", align 1
@.str.67 = private unnamed_addr constant [20 x i8] c"b_support_acl_group\00", align 1
@.str.68 = private unnamed_addr constant [18 x i8] c"b_support_ipv6_ac\00", align 1
@.str.69 = private unnamed_addr constant [19 x i8] c"b_support_eth_vlan\00", align 1
@.str.70 = private unnamed_addr constant [14 x i8] c"b_support_msg\00", align 1
@.str.71 = private unnamed_addr constant [27 x i8] c"b_support_udp_acceleration\00", align 1
@.str.72 = private unnamed_addr constant [17 x i8] c"b_support_aes_ni\00", align 1
@.str.73 = private unnamed_addr constant [16 x i8] c"b_support_azure\00", align 1
@.str.74 = private unnamed_addr constant [7 x i8] c"b_vpn3\00", align 1
@.str.75 = private unnamed_addr constant [7 x i8] c"b_vpn4\00", align 1
@OSTYPE_WINDOWS_2000_PROFESSIONAL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @GetServerCapsMain(%struct.TYPE_7__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %5, align 4
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %12 = icmp eq %struct.TYPE_7__* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32*, i32** %4, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %13, %2
  br label %514

17:                                               ; preds = %13
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 2
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %21 = call i32 @SiIsEnterpriseFunctionsRestrictedOnOpenSource(%struct.TYPE_8__* %20)
  store i32 %21, i32* %5, align 4
  %22 = load i32*, i32** %4, align 8
  %23 = call i32 @InitCapsList(i32* %22)
  %24 = load i32*, i32** %4, align 8
  %25 = load i64, i64* @MAX_PACKET_SIZE, align 8
  %26 = call i32 @AddCapsInt(i32* %24, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i64 %25)
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 2
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %123

33:                                               ; preds = %17
  %34 = load i64, i64* @INFINITE, align 8
  store i64 %34, i64* %7, align 8
  %35 = load i64, i64* @INFINITE, align 8
  store i64 %35, i64* %8, align 8
  %36 = load i64, i64* @SERVER_MAX_SESSIONS_FOR_CARRIER_EDITION, align 8
  store i64 %36, i64* %6, align 8
  %37 = load i64, i64* @INFINITE, align 8
  store i64 %37, i64* %9, align 8
  %38 = load i32*, i32** %4, align 8
  %39 = load i64, i64* @SERVER_MAX_SESSIONS_FOR_CARRIER_EDITION, align 8
  %40 = call i32 @AddCapsInt(i32* %38, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i64 %39)
  %41 = load i32*, i32** %4, align 8
  %42 = load i64, i64* %6, align 8
  %43 = call i32 @AddCapsInt(i32* %41, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i64 %42)
  %44 = load i32*, i32** %4, align 8
  %45 = load i64, i64* %9, align 8
  %46 = call i32 @AddCapsInt(i32* %44, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i64 %45)
  %47 = load i32*, i32** %4, align 8
  %48 = load i64, i64* %7, align 8
  %49 = call i32 @AddCapsInt(i32* %47, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i64 %48)
  %50 = load i32*, i32** %4, align 8
  %51 = load i64, i64* %8, align 8
  %52 = call i32 @AddCapsInt(i32* %50, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i64 %51)
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @SERVER_TYPE_FARM_MEMBER, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %68

58:                                               ; preds = %33
  %59 = load i32*, i32** %4, align 8
  %60 = load i64, i64* @MAX_USERS, align 8
  %61 = call i32 @AddCapsInt(i32* %59, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i64 %60)
  %62 = load i32*, i32** %4, align 8
  %63 = load i64, i64* @MAX_GROUPS, align 8
  %64 = call i32 @AddCapsInt(i32* %62, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i64 %63)
  %65 = load i32*, i32** %4, align 8
  %66 = load i64, i64* @MAX_ACCESSLISTS, align 8
  %67 = call i32 @AddCapsInt(i32* %65, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0), i64 %66)
  br label %75

68:                                               ; preds = %33
  %69 = load i32*, i32** %4, align 8
  %70 = call i32 @AddCapsInt(i32* %69, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i64 0)
  %71 = load i32*, i32** %4, align 8
  %72 = call i32 @AddCapsInt(i32* %71, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i64 0)
  %73 = load i32*, i32** %4, align 8
  %74 = call i32 @AddCapsInt(i32* %73, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0), i64 0)
  br label %75

75:                                               ; preds = %68, %58
  %76 = load i32*, i32** %4, align 8
  %77 = call i32 @AddCapsBool(i32* %76, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0), i32 1)
  %78 = load i32*, i32** %4, align 8
  %79 = call i32 @AddCapsBool(i32* %78, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), i32 1)
  %80 = load i32*, i32** %4, align 8
  %81 = call i32 @AddCapsBool(i32* %80, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0), i32 1)
  %82 = load i32*, i32** %4, align 8
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @SERVER_TYPE_STANDALONE, align 8
  %87 = icmp eq i64 %85, %86
  %88 = zext i1 %87 to i32
  %89 = call i32 @AddCapsBool(i32* %82, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0), i32 %88)
  %90 = load i32*, i32** %4, align 8
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @SERVER_TYPE_STANDALONE, align 8
  %95 = icmp eq i64 %93, %94
  %96 = zext i1 %95 to i32
  %97 = call i32 @AddCapsBool(i32* %90, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i64 0, i64 0), i32 %96)
  %98 = load i32*, i32** %4, align 8
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @SERVER_TYPE_STANDALONE, align 8
  %103 = icmp eq i64 %101, %102
  %104 = zext i1 %103 to i32
  %105 = call i32 @AddCapsBool(i32* %98, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i64 0, i64 0), i32 %104)
  %106 = load i32*, i32** %4, align 8
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 3
  %109 = load i32*, i32** %108, align 8
  %110 = icmp ne i32* %109, null
  %111 = zext i1 %110 to i32
  %112 = call i32 @AddCapsBool(i32* %106, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i64 0, i64 0), i32 %111)
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 3
  %115 = load i32*, i32** %114, align 8
  %116 = icmp ne i32* %115, null
  br i1 %116, label %117, label %120

117:                                              ; preds = %75
  %118 = load i32*, i32** %4, align 8
  %119 = call i32 @AddCapsBool(i32* %118, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i64 0, i64 0), i32 1)
  br label %120

120:                                              ; preds = %117, %75
  %121 = load i32*, i32** %4, align 8
  %122 = call i32 @AddCapsBool(i32* %121, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.17, i64 0, i64 0), i32 1)
  br label %152

123:                                              ; preds = %17
  %124 = load i32*, i32** %4, align 8
  %125 = call i32 @AddCapsInt(i32* %124, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i64 0)
  %126 = load i32*, i32** %4, align 8
  %127 = call i32 @AddCapsInt(i32* %126, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i64 0)
  %128 = load i32*, i32** %4, align 8
  %129 = call i32 @AddCapsInt(i32* %128, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i64 0)
  %130 = load i32*, i32** %4, align 8
  %131 = call i32 @AddCapsInt(i32* %130, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i64 0)
  %132 = load i32*, i32** %4, align 8
  %133 = call i32 @AddCapsInt(i32* %132, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i64 0)
  %134 = load i32*, i32** %4, align 8
  %135 = call i32 @AddCapsInt(i32* %134, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i64 0)
  %136 = load i32*, i32** %4, align 8
  %137 = call i32 @AddCapsInt(i32* %136, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0), i64 0)
  %138 = load i32*, i32** %4, align 8
  %139 = call i32 @AddCapsBool(i32* %138, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), i32 1)
  %140 = load i32*, i32** %4, align 8
  %141 = call i32 @AddCapsBool(i32* %140, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0), i32 1)
  %142 = load i32*, i32** %4, align 8
  %143 = call i32 @AddCapsBool(i32* %142, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0), i32 0)
  %144 = load i32*, i32** %4, align 8
  %145 = call i32 @AddCapsBool(i32* %144, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i64 0, i64 0), i32 0)
  %146 = load i32*, i32** %4, align 8
  %147 = call i32 @AddCapsBool(i32* %146, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i64 0, i64 0), i32 0)
  %148 = load i32*, i32** %4, align 8
  %149 = call i32 @AddCapsBool(i32* %148, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i64 0, i64 0), i32 0)
  %150 = load i32*, i32** %4, align 8
  %151 = call i32 @AddCapsBool(i32* %150, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.17, i64 0, i64 0), i32 0)
  br label %152

152:                                              ; preds = %123, %120
  %153 = load i32*, i32** %4, align 8
  %154 = call i32 @AddCapsBool(i32* %153, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.18, i64 0, i64 0), i32 1)
  %155 = load i32*, i32** %4, align 8
  %156 = load i64, i64* @MAX_MAC_TABLES, align 8
  %157 = call i32 @AddCapsInt(i32* %155, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.19, i64 0, i64 0), i64 %156)
  %158 = load i32*, i32** %4, align 8
  %159 = load i64, i64* @MAX_IP_TABLES, align 8
  %160 = call i32 @AddCapsInt(i32* %158, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.20, i64 0, i64 0), i64 %159)
  %161 = load i32*, i32** %4, align 8
  %162 = call i32 @AddCapsBool(i32* %161, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.21, i64 0, i64 0), i32 1)
  %163 = load i32*, i32** %4, align 8
  %164 = load i32, i32* %5, align 4
  %165 = icmp ne i32 %164, 0
  %166 = xor i1 %165, true
  %167 = zext i1 %166 to i32
  %168 = call i32 @AddCapsBool(i32* %163, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.22, i64 0, i64 0), i32 %167)
  %169 = load i32*, i32** %4, align 8
  %170 = call i32 @AddCapsBool(i32* %169, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.23, i64 0, i64 0), i32 1)
  %171 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %172 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = load i64, i64* @SERVER_TYPE_STANDALONE, align 8
  %175 = icmp ne i64 %173, %174
  br i1 %175, label %176, label %179

176:                                              ; preds = %152
  %177 = load i32*, i32** %4, align 8
  %178 = call i32 @AddCapsBool(i32* %177, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.24, i64 0, i64 0), i32 1)
  br label %179

179:                                              ; preds = %176, %152
  %180 = load i32*, i32** %4, align 8
  %181 = load i64, i64* @NAT_MAX_SESSIONS, align 8
  %182 = call i32 @AddCapsInt(i32* %180, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.25, i64 0, i64 0), i64 %181)
  %183 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %184 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = load i64, i64* @SERVER_TYPE_STANDALONE, align 8
  %187 = icmp eq i64 %185, %186
  br i1 %187, label %188, label %191

188:                                              ; preds = %179
  %189 = load i32*, i32** %4, align 8
  %190 = call i32 @AddCapsBool(i32* %189, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.26, i64 0, i64 0), i32 1)
  br label %194

191:                                              ; preds = %179
  %192 = load i32*, i32** %4, align 8
  %193 = call i32 @AddCapsBool(i32* %192, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.26, i64 0, i64 0), i32 0)
  br label %194

194:                                              ; preds = %191, %188
  %195 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %196 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %195, i32 0, i32 2
  %197 = load %struct.TYPE_8__*, %struct.TYPE_8__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %204

201:                                              ; preds = %194
  %202 = load i32*, i32** %4, align 8
  %203 = call i32 @AddCapsBool(i32* %202, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.27, i64 0, i64 0), i32 1)
  br label %227

204:                                              ; preds = %194
  %205 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %206 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %205, i32 0, i32 0
  %207 = load i64, i64* %206, align 8
  %208 = load i64, i64* @SERVER_TYPE_STANDALONE, align 8
  %209 = icmp eq i64 %207, %208
  br i1 %209, label %210, label %213

210:                                              ; preds = %204
  %211 = load i32*, i32** %4, align 8
  %212 = call i32 @AddCapsBool(i32* %211, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.28, i64 0, i64 0), i32 1)
  br label %226

213:                                              ; preds = %204
  %214 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %215 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %214, i32 0, i32 0
  %216 = load i64, i64* %215, align 8
  %217 = load i64, i64* @SERVER_TYPE_FARM_CONTROLLER, align 8
  %218 = icmp eq i64 %216, %217
  br i1 %218, label %219, label %222

219:                                              ; preds = %213
  %220 = load i32*, i32** %4, align 8
  %221 = call i32 @AddCapsBool(i32* %220, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i64 0, i64 0), i32 1)
  br label %225

222:                                              ; preds = %213
  %223 = load i32*, i32** %4, align 8
  %224 = call i32 @AddCapsBool(i32* %223, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.30, i64 0, i64 0), i32 1)
  br label %225

225:                                              ; preds = %222, %219
  br label %226

226:                                              ; preds = %225, %210
  br label %227

227:                                              ; preds = %226, %201
  %228 = load i32*, i32** %4, align 8
  %229 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %230 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %229, i32 0, i32 0
  %231 = load i64, i64* %230, align 8
  %232 = load i64, i64* @SERVER_TYPE_FARM_MEMBER, align 8
  %233 = icmp ne i64 %231, %232
  br i1 %233, label %234, label %241

234:                                              ; preds = %227
  %235 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %236 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %235, i32 0, i32 2
  %237 = load %struct.TYPE_8__*, %struct.TYPE_8__** %236, align 8
  %238 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 8
  %240 = icmp eq i32 %239, 0
  br label %241

241:                                              ; preds = %234, %227
  %242 = phi i1 [ false, %227 ], [ %240, %234 ]
  %243 = zext i1 %242 to i32
  %244 = call i32 @AddCapsBool(i32* %228, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.31, i64 0, i64 0), i32 %243)
  %245 = load i32*, i32** %4, align 8
  %246 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %247 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %246, i32 0, i32 2
  %248 = load %struct.TYPE_8__*, %struct.TYPE_8__** %247, align 8
  %249 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 8
  %251 = icmp eq i32 %250, 0
  %252 = zext i1 %251 to i64
  %253 = select i1 %251, i32 1, i32 0
  %254 = call i32 @AddCapsBool(i32* %245, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.32, i64 0, i64 0), i32 %253)
  %255 = load i32*, i32** %4, align 8
  %256 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %257 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %256, i32 0, i32 0
  %258 = load i64, i64* %257, align 8
  %259 = load i64, i64* @SERVER_TYPE_FARM_MEMBER, align 8
  %260 = icmp ne i64 %258, %259
  br i1 %260, label %261, label %268

261:                                              ; preds = %241
  %262 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %263 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %262, i32 0, i32 2
  %264 = load %struct.TYPE_8__*, %struct.TYPE_8__** %263, align 8
  %265 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 8
  %267 = icmp eq i32 %266, 0
  br label %268

268:                                              ; preds = %261, %241
  %269 = phi i1 [ false, %241 ], [ %267, %261 ]
  %270 = zext i1 %269 to i32
  %271 = call i32 @AddCapsBool(i32* %255, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.33, i64 0, i64 0), i32 %270)
  %272 = load i32*, i32** %4, align 8
  %273 = call i32 (...) @IsBridgeSupported()
  %274 = call i32 @AddCapsBool(i32* %272, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.34, i64 0, i64 0), i32 %273)
  %275 = call %struct.TYPE_9__* (...) @GetOsInfo()
  %276 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %275, i32 0, i32 0
  %277 = load i64, i64* %276, align 8
  %278 = call i64 @OS_IS_WINDOWS(i64 %277)
  %279 = icmp ne i64 %278, 0
  br i1 %279, label %280, label %287

280:                                              ; preds = %268
  %281 = load i32*, i32** %4, align 8
  %282 = call i32 (...) @IsEthSupported()
  %283 = icmp eq i32 %282, 0
  %284 = zext i1 %283 to i64
  %285 = select i1 %283, i32 1, i32 0
  %286 = call i32 @AddCapsBool(i32* %281, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.35, i64 0, i64 0), i32 %285)
  br label %290

287:                                              ; preds = %268
  %288 = load i32*, i32** %4, align 8
  %289 = call i32 @AddCapsBool(i32* %288, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.35, i64 0, i64 0), i32 0)
  br label %290

290:                                              ; preds = %287, %280
  %291 = call i32 (...) @IsBridgeSupported()
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %293, label %309

293:                                              ; preds = %290
  %294 = call %struct.TYPE_9__* (...) @GetOsInfo()
  %295 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %294, i32 0, i32 0
  %296 = load i64, i64* %295, align 8
  store i64 %296, i64* %10, align 8
  %297 = load i32*, i32** %4, align 8
  %298 = load i64, i64* %10, align 8
  %299 = load i64, i64* @OSTYPE_LINUX, align 8
  %300 = icmp eq i64 %298, %299
  br i1 %300, label %305, label %301

301:                                              ; preds = %293
  %302 = load i64, i64* %10, align 8
  %303 = load i64, i64* @OSTYPE_BSD, align 8
  %304 = icmp eq i64 %302, %303
  br label %305

305:                                              ; preds = %301, %293
  %306 = phi i1 [ true, %293 ], [ %304, %301 ]
  %307 = zext i1 %306 to i32
  %308 = call i32 @AddCapsBool(i32* %297, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.36, i64 0, i64 0), i32 %307)
  br label %309

309:                                              ; preds = %305, %290
  %310 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %311 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %310, i32 0, i32 0
  %312 = load i64, i64* %311, align 8
  %313 = load i64, i64* @SERVER_TYPE_STANDALONE, align 8
  %314 = icmp eq i64 %312, %313
  br i1 %314, label %315, label %318

315:                                              ; preds = %309
  %316 = load i32*, i32** %4, align 8
  %317 = call i32 @AddCapsBool(i32* %316, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.26, i64 0, i64 0), i32 1)
  br label %321

318:                                              ; preds = %309
  %319 = load i32*, i32** %4, align 8
  %320 = call i32 @AddCapsBool(i32* %319, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.26, i64 0, i64 0), i32 0)
  br label %321

321:                                              ; preds = %318, %315
  %322 = load i32*, i32** %4, align 8
  %323 = call i32 @AddCapsBool(i32* %322, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.37, i64 0, i64 0), i32 1)
  %324 = load i32*, i32** %4, align 8
  %325 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %326 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %325, i32 0, i32 0
  %327 = load i64, i64* %326, align 8
  %328 = load i64, i64* @SERVER_TYPE_FARM_MEMBER, align 8
  %329 = icmp ne i64 %327, %328
  %330 = zext i1 %329 to i32
  %331 = call i32 @AddCapsBool(i32* %324, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.38, i64 0, i64 0), i32 %330)
  %332 = load i32*, i32** %4, align 8
  %333 = call i32 @AddCapsBool(i32* %332, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.39, i64 0, i64 0), i32 1)
  %334 = load i32*, i32** %4, align 8
  %335 = call i32 @AddCapsBool(i32* %334, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.40, i64 0, i64 0), i32 1)
  %336 = load i32*, i32** %4, align 8
  %337 = call i32 @AddCapsBool(i32* %336, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.41, i64 0, i64 0), i32 1)
  %338 = load i32*, i32** %4, align 8
  %339 = call i32 @AddCapsBool(i32* %338, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.42, i64 0, i64 0), i32 1)
  %340 = load i32*, i32** %4, align 8
  %341 = call i32 @AddCapsBool(i32* %340, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.43, i64 0, i64 0), i32 1)
  %342 = load i32*, i32** %4, align 8
  %343 = call i32 @AddCapsBool(i32* %342, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.44, i64 0, i64 0), i32 1)
  %344 = load i32*, i32** %4, align 8
  %345 = call i32 @AddCapsBool(i32* %344, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.45, i64 0, i64 0), i32 1)
  %346 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %347 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %346, i32 0, i32 2
  %348 = load %struct.TYPE_8__*, %struct.TYPE_8__** %347, align 8
  %349 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %348, i32 0, i32 0
  %350 = load i32, i32* %349, align 8
  %351 = icmp eq i32 %350, 0
  br i1 %351, label %352, label %366

352:                                              ; preds = %321
  %353 = load i32*, i32** %4, align 8
  %354 = call i32 @AddCapsBool(i32* %353, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.46, i64 0, i64 0), i32 1)
  %355 = load i32*, i32** %4, align 8
  %356 = load i64, i64* @MAX_NUM_L3_SWITCH, align 8
  %357 = call i32 @AddCapsInt(i32* %355, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.47, i64 0, i64 0), i64 %356)
  %358 = load i32*, i32** %4, align 8
  %359 = load i64, i64* @MAX_NUM_L3_IF, align 8
  %360 = call i32 @AddCapsInt(i32* %358, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.48, i64 0, i64 0), i64 %359)
  %361 = load i32*, i32** %4, align 8
  %362 = load i64, i64* @MAX_NUM_L3_TABLE, align 8
  %363 = call i32 @AddCapsInt(i32* %361, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.49, i64 0, i64 0), i64 %362)
  %364 = load i32*, i32** %4, align 8
  %365 = call i32 @AddCapsBool(i32* %364, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.50, i64 0, i64 0), i32 1)
  br label %377

366:                                              ; preds = %321
  %367 = load i32*, i32** %4, align 8
  %368 = call i32 @AddCapsBool(i32* %367, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.46, i64 0, i64 0), i32 0)
  %369 = load i32*, i32** %4, align 8
  %370 = call i32 @AddCapsInt(i32* %369, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.47, i64 0, i64 0), i64 0)
  %371 = load i32*, i32** %4, align 8
  %372 = call i32 @AddCapsInt(i32* %371, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.48, i64 0, i64 0), i64 0)
  %373 = load i32*, i32** %4, align 8
  %374 = call i32 @AddCapsInt(i32* %373, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.49, i64 0, i64 0), i64 0)
  %375 = load i32*, i32** %4, align 8
  %376 = call i32 @AddCapsBool(i32* %375, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.50, i64 0, i64 0), i32 0)
  br label %377

377:                                              ; preds = %366, %352
  %378 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %379 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %378, i32 0, i32 0
  %380 = load i64, i64* %379, align 8
  %381 = load i64, i64* @SERVER_TYPE_FARM_MEMBER, align 8
  %382 = icmp ne i64 %380, %381
  br i1 %382, label %383, label %395

383:                                              ; preds = %377
  %384 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %385 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %384, i32 0, i32 2
  %386 = load %struct.TYPE_8__*, %struct.TYPE_8__** %385, align 8
  %387 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %386, i32 0, i32 0
  %388 = load i32, i32* %387, align 8
  %389 = icmp eq i32 %388, 0
  br i1 %389, label %390, label %395

390:                                              ; preds = %383
  %391 = load i32*, i32** %4, align 8
  %392 = call i32 @AddCapsBool(i32* %391, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.51, i64 0, i64 0), i32 1)
  %393 = load i32*, i32** %4, align 8
  %394 = call i32 @AddCapsBool(i32* %393, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.52, i64 0, i64 0), i32 1)
  br label %395

395:                                              ; preds = %390, %383, %377
  %396 = load i32*, i32** %4, align 8
  %397 = call i32 @AddCapsBool(i32* %396, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.53, i64 0, i64 0), i32 1)
  %398 = load i32*, i32** %4, align 8
  %399 = call i32 @AddCapsBool(i32* %398, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.54, i64 0, i64 0), i32 1)
  %400 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %401 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %400, i32 0, i32 2
  %402 = load %struct.TYPE_8__*, %struct.TYPE_8__** %401, align 8
  %403 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %402, i32 0, i32 1
  %404 = load i64, i64* %403, align 8
  %405 = icmp ne i64 %404, 0
  br i1 %405, label %406, label %409

406:                                              ; preds = %395
  %407 = load i32*, i32** %4, align 8
  %408 = call i32 @AddCapsBool(i32* %407, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.55, i64 0, i64 0), i32 1)
  br label %409

409:                                              ; preds = %406, %395
  %410 = load i32*, i32** %4, align 8
  %411 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %412 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %411, i32 0, i32 1
  %413 = load i32, i32* %412, align 8
  %414 = call i32 @AddCapsBool(i32* %410, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.56, i64 0, i64 0), i32 %413)
  %415 = call i32 (...) @IsBridgeSupported()
  %416 = icmp ne i32 %415, 0
  br i1 %416, label %417, label %423

417:                                              ; preds = %409
  %418 = call i64 (...) @EthIsInterfaceDescriptionSupportedUnix()
  %419 = icmp ne i64 %418, 0
  br i1 %419, label %420, label %423

420:                                              ; preds = %417
  %421 = load i32*, i32** %4, align 8
  %422 = call i32 @AddCapsBool(i32* %421, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.57, i64 0, i64 0), i32 1)
  br label %423

423:                                              ; preds = %420, %417, %409
  %424 = load i32*, i32** %4, align 8
  %425 = call i32 @AddCapsBool(i32* %424, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.58, i64 0, i64 0), i32 1)
  %426 = load i32*, i32** %4, align 8
  %427 = call i32 @AddCapsBool(i32* %426, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.59, i64 0, i64 0), i32 1)
  %428 = load i32*, i32** %4, align 8
  %429 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %430 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %429, i32 0, i32 0
  %431 = load i64, i64* %430, align 8
  %432 = load i64, i64* @SERVER_TYPE_FARM_MEMBER, align 8
  %433 = icmp ne i64 %431, %432
  br i1 %433, label %434, label %441

434:                                              ; preds = %423
  %435 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %436 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %435, i32 0, i32 2
  %437 = load %struct.TYPE_8__*, %struct.TYPE_8__** %436, align 8
  %438 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %437, i32 0, i32 0
  %439 = load i32, i32* %438, align 8
  %440 = icmp eq i32 %439, 0
  br label %441

441:                                              ; preds = %434, %423
  %442 = phi i1 [ false, %423 ], [ %440, %434 ]
  %443 = zext i1 %442 to i32
  %444 = call i32 @AddCapsBool(i32* %428, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.60, i64 0, i64 0), i32 %443)
  %445 = load i32*, i32** %4, align 8
  %446 = call i32 @AddCapsBool(i32* %445, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.61, i64 0, i64 0), i32 1)
  %447 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %448 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %447, i32 0, i32 2
  %449 = load %struct.TYPE_8__*, %struct.TYPE_8__** %448, align 8
  %450 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %449, i32 0, i32 0
  %451 = load i32, i32* %450, align 8
  %452 = icmp eq i32 %451, 0
  br i1 %452, label %453, label %468

453:                                              ; preds = %441
  %454 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %455 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %454, i32 0, i32 0
  %456 = load i64, i64* %455, align 8
  %457 = load i64, i64* @SERVER_TYPE_STANDALONE, align 8
  %458 = icmp eq i64 %456, %457
  br i1 %458, label %465, label %459

459:                                              ; preds = %453
  %460 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %461 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %460, i32 0, i32 0
  %462 = load i64, i64* %461, align 8
  %463 = load i64, i64* @SERVER_TYPE_FARM_CONTROLLER, align 8
  %464 = icmp eq i64 %462, %463
  br i1 %464, label %465, label %468

465:                                              ; preds = %459, %453
  %466 = load i32*, i32** %4, align 8
  %467 = call i32 @AddCapsBool(i32* %466, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.62, i64 0, i64 0), i32 1)
  br label %471

468:                                              ; preds = %459, %441
  %469 = load i32*, i32** %4, align 8
  %470 = call i32 @AddCapsBool(i32* %469, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.62, i64 0, i64 0), i32 0)
  br label %471

471:                                              ; preds = %468, %465
  %472 = load i32*, i32** %4, align 8
  %473 = call i32 @AddCapsBool(i32* %472, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.63, i64 0, i64 0), i32 1)
  %474 = load i32*, i32** %4, align 8
  %475 = call i32 @AddCapsBool(i32* %474, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.64, i64 0, i64 0), i32 1)
  %476 = load i32*, i32** %4, align 8
  %477 = call i32 @AddCapsBool(i32* %476, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.65, i64 0, i64 0), i32 1)
  %478 = load i32*, i32** %4, align 8
  %479 = call i32 @AddCapsBool(i32* %478, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.66, i64 0, i64 0), i32 1)
  %480 = load i32*, i32** %4, align 8
  %481 = call i32 @AddCapsBool(i32* %480, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.67, i64 0, i64 0), i32 1)
  %482 = load i32*, i32** %4, align 8
  %483 = call i32 @AddCapsBool(i32* %482, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.68, i64 0, i64 0), i32 1)
  %484 = load i32*, i32** %4, align 8
  %485 = call i32 (...) @GetOsType()
  %486 = call i64 @OS_IS_WINDOWS_NT(i32 %485)
  %487 = icmp ne i64 %486, 0
  br i1 %487, label %488, label %492

488:                                              ; preds = %471
  %489 = call i32 (...) @GetOsType()
  %490 = call i32 @GET_KETA(i32 %489, i32 100)
  %491 = icmp sge i32 %490, 2
  br label %492

492:                                              ; preds = %488, %471
  %493 = phi i1 [ false, %471 ], [ %491, %488 ]
  %494 = zext i1 %493 to i32
  %495 = call i32 @AddCapsBool(i32* %484, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.69, i64 0, i64 0), i32 %494)
  %496 = load i32*, i32** %4, align 8
  %497 = call i32 @AddCapsBool(i32* %496, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.70, i64 0, i64 0), i32 1)
  %498 = load i32*, i32** %4, align 8
  %499 = call i32 @AddCapsBool(i32* %498, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.71, i64 0, i64 0), i32 1)
  %500 = load i32*, i32** %4, align 8
  %501 = call i32 (...) @IsAesNiSupported()
  %502 = call i32 @AddCapsBool(i32* %500, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.72, i64 0, i64 0), i32 %501)
  %503 = load i32*, i32** %4, align 8
  %504 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %505 = call i32 @SiIsAzureSupported(%struct.TYPE_7__* %504)
  %506 = call i32 @AddCapsBool(i32* %503, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.73, i64 0, i64 0), i32 %505)
  %507 = load i32*, i32** %4, align 8
  %508 = call i32 @AddCapsBool(i32* %507, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.74, i64 0, i64 0), i32 1)
  %509 = load i32*, i32** %4, align 8
  %510 = call i32 @AddCapsBool(i32* %509, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.75, i64 0, i64 0), i32 1)
  %511 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %512 = load i32*, i32** %4, align 8
  %513 = call i32 @UpdateGlobalServerFlags(%struct.TYPE_7__* %511, i32* %512)
  br label %514

514:                                              ; preds = %492, %16
  ret void
}

declare dso_local i32 @SiIsEnterpriseFunctionsRestrictedOnOpenSource(%struct.TYPE_8__*) #1

declare dso_local i32 @InitCapsList(i32*) #1

declare dso_local i32 @AddCapsInt(i32*, i8*, i64) #1

declare dso_local i32 @AddCapsBool(i32*, i8*, i32) #1

declare dso_local i32 @IsBridgeSupported(...) #1

declare dso_local i64 @OS_IS_WINDOWS(i64) #1

declare dso_local %struct.TYPE_9__* @GetOsInfo(...) #1

declare dso_local i32 @IsEthSupported(...) #1

declare dso_local i64 @EthIsInterfaceDescriptionSupportedUnix(...) #1

declare dso_local i64 @OS_IS_WINDOWS_NT(i32) #1

declare dso_local i32 @GetOsType(...) #1

declare dso_local i32 @GET_KETA(i32, i32) #1

declare dso_local i32 @IsAesNiSupported(...) #1

declare dso_local i32 @SiIsAzureSupported(%struct.TYPE_7__*) #1

declare dso_local i32 @UpdateGlobalServerFlags(%struct.TYPE_7__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
