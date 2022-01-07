; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Admin.c_ScGetCapsEx.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Admin.c_ScGetCapsEx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i64, i32, i32, i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_12__ = type { i32, i8** }

@ERR_NO_ERROR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"bridge\00", align 1
@INFINITE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"i_max_packet_size\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"i_max_hubs\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"i_max_sessions\00", align 1
@SERVER_TYPE_FARM_MEMBER = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [20 x i8] c"i_max_users_per_hub\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"i_max_groups_per_hub\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"i_max_access_lists\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"i_max_mac_tables\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"i_max_ip_tables\00", align 1
@SERVER_TYPE_STANDALONE = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [20 x i8] c"b_support_securenat\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"i_max_secnat_tables\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"b_bridge\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"b_standalone\00", align 1
@SERVER_TYPE_FARM_CONTROLLER = common dso_local global i64 0, align 8
@.str.13 = private unnamed_addr constant [21 x i8] c"b_cluster_controller\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"b_cluster_member\00", align 1
@.str.15 = private unnamed_addr constant [21 x i8] c"b_support_config_hub\00", align 1
@.str.16 = private unnamed_addr constant [21 x i8] c"b_vpn_client_connect\00", align 1
@.str.17 = private unnamed_addr constant [17 x i8] c"b_support_radius\00", align 1
@.str.18 = private unnamed_addr constant [15 x i8] c"b_local_bridge\00", align 1
@.str.19 = private unnamed_addr constant [20 x i8] c"b_must_install_pcap\00", align 1
@.str.20 = private unnamed_addr constant [16 x i8] c"b_tap_supported\00", align 1
@.str.21 = private unnamed_addr constant [18 x i8] c"b_support_cascade\00", align 1
@.str.22 = private unnamed_addr constant [23 x i8] c"b_support_cascade_cert\00", align 1
@.str.23 = private unnamed_addr constant [21 x i8] c"b_support_config_log\00", align 1
@.str.24 = private unnamed_addr constant [21 x i8] c"b_support_autodelete\00", align 1
@.str.25 = private unnamed_addr constant [18 x i8] c"b_support_cluster\00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"CT_b_\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @ScGetCapsEx(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_13__, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_13__, align 8
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store i32 0, i32* %6, align 4
  %13 = load i32*, i32** %3, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store i32* null, i32** %2, align 8
  br label %271

16:                                               ; preds = %1
  %17 = call i32 @Zero(%struct.TYPE_13__* %4, i32 32)
  %18 = load i32*, i32** %3, align 8
  %19 = call i32 @ScGetServerInfo(i32* %18, %struct.TYPE_13__* %4)
  %20 = call i32* @ZeroMalloc(i32 4)
  store i32* %20, i32** %5, align 8
  %21 = load i32*, i32** %3, align 8
  %22 = load i32*, i32** %5, align 8
  %23 = call i64 @ScGetCaps(i32* %21, i32* %22)
  %24 = load i64, i64* @ERR_NO_ERROR, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %212

26:                                               ; preds = %16
  %27 = load i32*, i32** %5, align 8
  %28 = call i32 @Free(i32* %27)
  %29 = call i32* (...) @NewCapsList()
  store i32* %29, i32** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %4, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %7, align 4
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %4, i32 0, i32 4
  %33 = load i32, i32* %32, align 8
  %34 = call i64 @SearchStrEx(i32 %33, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 0, i32 0)
  %35 = load i64, i64* @INFINITE, align 8
  %36 = icmp eq i64 %34, %35
  %37 = zext i1 %36 to i64
  %38 = select i1 %36, i32 0, i32 1
  store i32 %38, i32* %6, align 4
  %39 = load i32*, i32** %5, align 8
  %40 = call i32 @AddCapsInt(i32* %39, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 1514)
  %41 = load i32, i32* %6, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %67

43:                                               ; preds = %26
  %44 = load i32*, i32** %5, align 8
  %45 = call i32 @AddCapsInt(i32* %44, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 4096)
  %46 = load i32*, i32** %5, align 8
  %47 = call i32 @AddCapsInt(i32* %46, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 4096)
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %4, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @SERVER_TYPE_FARM_MEMBER, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %59

52:                                               ; preds = %43
  %53 = load i32*, i32** %5, align 8
  %54 = call i32 @AddCapsInt(i32* %53, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 10000)
  %55 = load i32*, i32** %5, align 8
  %56 = call i32 @AddCapsInt(i32* %55, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32 10000)
  %57 = load i32*, i32** %5, align 8
  %58 = call i32 @AddCapsInt(i32* %57, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i32 4096)
  br label %66

59:                                               ; preds = %43
  %60 = load i32*, i32** %5, align 8
  %61 = call i32 @AddCapsInt(i32* %60, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 0)
  %62 = load i32*, i32** %5, align 8
  %63 = call i32 @AddCapsInt(i32* %62, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32 0)
  %64 = load i32*, i32** %5, align 8
  %65 = call i32 @AddCapsInt(i32* %64, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i32 0)
  br label %66

66:                                               ; preds = %59, %52
  br label %78

67:                                               ; preds = %26
  %68 = load i32*, i32** %5, align 8
  %69 = call i32 @AddCapsInt(i32* %68, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 0)
  %70 = load i32*, i32** %5, align 8
  %71 = call i32 @AddCapsInt(i32* %70, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 0)
  %72 = load i32*, i32** %5, align 8
  %73 = call i32 @AddCapsInt(i32* %72, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 0)
  %74 = load i32*, i32** %5, align 8
  %75 = call i32 @AddCapsInt(i32* %74, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32 0)
  %76 = load i32*, i32** %5, align 8
  %77 = call i32 @AddCapsInt(i32* %76, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i32 0)
  br label %78

78:                                               ; preds = %67, %66
  %79 = load i32*, i32** %5, align 8
  %80 = call i32 @AddCapsInt(i32* %79, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0), i32 10000)
  %81 = load i32*, i32** %5, align 8
  %82 = call i32 @AddCapsInt(i32* %81, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0), i32 10000)
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %4, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @SERVER_TYPE_STANDALONE, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %96

87:                                               ; preds = %78
  %88 = load i32*, i32** %5, align 8
  %89 = load i32, i32* %7, align 4
  %90 = icmp sge i32 %89, 3600
  %91 = zext i1 %90 to i64
  %92 = select i1 %90, i32 1, i32 0
  %93 = call i32 @AddCapsBool(i32* %88, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0), i32 %92)
  %94 = load i32*, i32** %5, align 8
  %95 = call i32 @AddCapsInt(i32* %94, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0), i32 4096)
  br label %101

96:                                               ; preds = %78
  %97 = load i32*, i32** %5, align 8
  %98 = call i32 @AddCapsBool(i32* %97, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0), i32 0)
  %99 = load i32*, i32** %5, align 8
  %100 = call i32 @AddCapsInt(i32* %99, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0), i32 0)
  br label %101

101:                                              ; preds = %96, %87
  %102 = load i32, i32* %6, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %101
  %105 = load i32*, i32** %5, align 8
  %106 = call i32 @AddCapsBool(i32* %105, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0), i32 1)
  br label %128

107:                                              ; preds = %101
  %108 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %4, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @SERVER_TYPE_STANDALONE, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %112, label %115

112:                                              ; preds = %107
  %113 = load i32*, i32** %5, align 8
  %114 = call i32 @AddCapsBool(i32* %113, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0), i32 1)
  br label %127

115:                                              ; preds = %107
  %116 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %4, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @SERVER_TYPE_FARM_CONTROLLER, align 8
  %119 = icmp eq i64 %117, %118
  br i1 %119, label %120, label %123

120:                                              ; preds = %115
  %121 = load i32*, i32** %5, align 8
  %122 = call i32 @AddCapsBool(i32* %121, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.13, i64 0, i64 0), i32 1)
  br label %126

123:                                              ; preds = %115
  %124 = load i32*, i32** %5, align 8
  %125 = call i32 @AddCapsBool(i32* %124, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0), i32 1)
  br label %126

126:                                              ; preds = %123, %120
  br label %127

127:                                              ; preds = %126, %112
  br label %128

128:                                              ; preds = %127, %104
  %129 = load i32*, i32** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %4, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @SERVER_TYPE_FARM_MEMBER, align 8
  %133 = icmp ne i64 %131, %132
  br i1 %133, label %134, label %137

134:                                              ; preds = %128
  %135 = load i32, i32* %6, align 4
  %136 = icmp eq i32 %135, 0
  br label %137

137:                                              ; preds = %134, %128
  %138 = phi i1 [ false, %128 ], [ %136, %134 ]
  %139 = zext i1 %138 to i32
  %140 = call i32 @AddCapsBool(i32* %129, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.15, i64 0, i64 0), i32 %139)
  %141 = load i32*, i32** %5, align 8
  %142 = load i32, i32* %6, align 4
  %143 = icmp eq i32 %142, 0
  %144 = zext i1 %143 to i64
  %145 = select i1 %143, i32 1, i32 0
  %146 = call i32 @AddCapsBool(i32* %141, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i64 0, i64 0), i32 %145)
  %147 = load i32*, i32** %5, align 8
  %148 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %4, i32 0, i32 1
  %149 = load i64, i64* %148, align 8
  %150 = load i64, i64* @SERVER_TYPE_FARM_MEMBER, align 8
  %151 = icmp ne i64 %149, %150
  br i1 %151, label %152, label %155

152:                                              ; preds = %137
  %153 = load i32, i32* %6, align 4
  %154 = icmp eq i32 %153, 0
  br label %155

155:                                              ; preds = %152, %137
  %156 = phi i1 [ false, %137 ], [ %154, %152 ]
  %157 = zext i1 %156 to i32
  %158 = call i32 @AddCapsBool(i32* %147, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.17, i64 0, i64 0), i32 %157)
  %159 = load i32, i32* %7, align 4
  %160 = icmp sge i32 %159, 3600
  br i1 %160, label %161, label %182

161:                                              ; preds = %155
  %162 = call i32 @Zero(%struct.TYPE_13__* %8, i32 32)
  %163 = load i32*, i32** %3, align 8
  %164 = call i64 @ScGetBridgeSupport(i32* %163, %struct.TYPE_13__* %8)
  %165 = load i64, i64* @ERR_NO_ERROR, align 8
  %166 = icmp eq i64 %164, %165
  br i1 %166, label %167, label %176

167:                                              ; preds = %161
  %168 = load i32*, i32** %5, align 8
  %169 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 2
  %170 = load i32, i32* %169, align 8
  %171 = call i32 @AddCapsBool(i32* %168, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i64 0, i64 0), i32 %170)
  %172 = load i32*, i32** %5, align 8
  %173 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 3
  %174 = load i32, i32* %173, align 4
  %175 = call i32 @AddCapsBool(i32* %172, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19, i64 0, i64 0), i32 %174)
  br label %181

176:                                              ; preds = %161
  %177 = load i32*, i32** %5, align 8
  %178 = call i32 @AddCapsBool(i32* %177, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i64 0, i64 0), i32 0)
  %179 = load i32*, i32** %5, align 8
  %180 = call i32 @AddCapsBool(i32* %179, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19, i64 0, i64 0), i32 0)
  br label %181

181:                                              ; preds = %176, %167
  br label %187

182:                                              ; preds = %155
  %183 = load i32*, i32** %5, align 8
  %184 = call i32 @AddCapsBool(i32* %183, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i64 0, i64 0), i32 0)
  %185 = load i32*, i32** %5, align 8
  %186 = call i32 @AddCapsBool(i32* %185, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19, i64 0, i64 0), i32 0)
  br label %187

187:                                              ; preds = %182, %181
  %188 = load i32*, i32** %5, align 8
  %189 = call i32 @AddCapsBool(i32* %188, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.20, i64 0, i64 0), i32 0)
  %190 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %4, i32 0, i32 1
  %191 = load i64, i64* %190, align 8
  %192 = load i64, i64* @SERVER_TYPE_STANDALONE, align 8
  %193 = icmp eq i64 %191, %192
  br i1 %193, label %194, label %197

194:                                              ; preds = %187
  %195 = load i32*, i32** %5, align 8
  %196 = call i32 @AddCapsBool(i32* %195, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.21, i64 0, i64 0), i32 1)
  br label %200

197:                                              ; preds = %187
  %198 = load i32*, i32** %5, align 8
  %199 = call i32 @AddCapsBool(i32* %198, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.21, i64 0, i64 0), i32 0)
  br label %200

200:                                              ; preds = %197, %194
  %201 = load i32*, i32** %5, align 8
  %202 = call i32 @AddCapsBool(i32* %201, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0), i32 0)
  %203 = load i32*, i32** %5, align 8
  %204 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %4, i32 0, i32 1
  %205 = load i64, i64* %204, align 8
  %206 = load i64, i64* @SERVER_TYPE_FARM_MEMBER, align 8
  %207 = icmp ne i64 %205, %206
  %208 = zext i1 %207 to i32
  %209 = call i32 @AddCapsBool(i32* %203, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.23, i64 0, i64 0), i32 %208)
  %210 = load i32*, i32** %5, align 8
  %211 = call i32 @AddCapsBool(i32* %210, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.24, i64 0, i64 0), i32 0)
  br label %233

212:                                              ; preds = %16
  %213 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %4, i32 0, i32 0
  %214 = load i32, i32* %213, align 8
  %215 = icmp sle i32 %214, 4350
  br i1 %215, label %216, label %232

216:                                              ; preds = %212
  %217 = load i32, i32* %6, align 4
  %218 = icmp eq i32 %217, 0
  br i1 %218, label %219, label %231

219:                                              ; preds = %216
  %220 = load i32*, i32** %5, align 8
  %221 = call %struct.TYPE_14__* @GetCaps(i32* %220, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.25, i64 0, i64 0))
  store %struct.TYPE_14__* %221, %struct.TYPE_14__** %9, align 8
  %222 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %223 = icmp eq %struct.TYPE_14__* %222, null
  br i1 %223, label %224, label %227

224:                                              ; preds = %219
  %225 = load i32*, i32** %5, align 8
  %226 = call i32 @AddCapsBool(i32* %225, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.25, i64 0, i64 0), i32 1)
  br label %230

227:                                              ; preds = %219
  %228 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %229 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %228, i32 0, i32 0
  store i32 1, i32* %229, align 4
  br label %230

230:                                              ; preds = %227, %224
  br label %231

231:                                              ; preds = %230, %216
  br label %232

232:                                              ; preds = %231, %212
  br label %233

233:                                              ; preds = %232, %200
  %234 = call %struct.TYPE_12__* @GetTableNameStartWith(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i64 0, i64 0))
  store %struct.TYPE_12__* %234, %struct.TYPE_12__** %10, align 8
  %235 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %236 = icmp ne %struct.TYPE_12__* %235, null
  br i1 %236, label %237, label %268

237:                                              ; preds = %233
  store i32 0, i32* %11, align 4
  br label %238

238:                                              ; preds = %262, %237
  %239 = load i32, i32* %11, align 4
  %240 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %241 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 8
  %243 = icmp slt i32 %239, %242
  br i1 %243, label %244, label %265

244:                                              ; preds = %238
  %245 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %246 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %245, i32 0, i32 1
  %247 = load i8**, i8*** %246, align 8
  %248 = load i32, i32* %11, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds i8*, i8** %247, i64 %249
  %251 = load i8*, i8** %250, align 8
  %252 = getelementptr inbounds i8, i8* %251, i64 3
  store i8* %252, i8** %12, align 8
  %253 = load i32*, i32** %5, align 8
  %254 = load i8*, i8** %12, align 8
  %255 = call %struct.TYPE_14__* @GetCaps(i32* %253, i8* %254)
  %256 = icmp eq %struct.TYPE_14__* %255, null
  br i1 %256, label %257, label %261

257:                                              ; preds = %244
  %258 = load i32*, i32** %5, align 8
  %259 = load i8*, i8** %12, align 8
  %260 = call i32 @AddCapsBool(i32* %258, i8* %259, i32 0)
  br label %261

261:                                              ; preds = %257, %244
  br label %262

262:                                              ; preds = %261
  %263 = load i32, i32* %11, align 4
  %264 = add nsw i32 %263, 1
  store i32 %264, i32* %11, align 4
  br label %238

265:                                              ; preds = %238
  %266 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %267 = call i32 @FreeToken(%struct.TYPE_12__* %266)
  br label %268

268:                                              ; preds = %265, %233
  %269 = call i32 @FreeRpcServerInfo(%struct.TYPE_13__* %4)
  %270 = load i32*, i32** %5, align 8
  store i32* %270, i32** %2, align 8
  br label %271

271:                                              ; preds = %268, %15
  %272 = load i32*, i32** %2, align 8
  ret i32* %272
}

declare dso_local i32 @Zero(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @ScGetServerInfo(i32*, %struct.TYPE_13__*) #1

declare dso_local i32* @ZeroMalloc(i32) #1

declare dso_local i64 @ScGetCaps(i32*, i32*) #1

declare dso_local i32 @Free(i32*) #1

declare dso_local i32* @NewCapsList(...) #1

declare dso_local i64 @SearchStrEx(i32, i8*, i32, i32) #1

declare dso_local i32 @AddCapsInt(i32*, i8*, i32) #1

declare dso_local i32 @AddCapsBool(i32*, i8*, i32) #1

declare dso_local i64 @ScGetBridgeSupport(i32*, %struct.TYPE_13__*) #1

declare dso_local %struct.TYPE_14__* @GetCaps(i32*, i8*) #1

declare dso_local %struct.TYPE_12__* @GetTableNameStartWith(i8*) #1

declare dso_local i32 @FreeToken(%struct.TYPE_12__*) #1

declare dso_local i32 @FreeRpcServerInfo(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
