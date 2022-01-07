; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_necp.c_necp_kernel_socket_policy_is_unnecessary.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_necp.c_necp_kernel_socket_policy_is_unnecessary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.necp_kernel_socket_policy = type { i64, i64, i64, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, %struct.TYPE_4__, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64, i64 }
%struct.TYPE_3__ = type { i64 }
%struct.sockaddr = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@NECP_KERNEL_POLICY_RESULT_SKIP = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@NECP_KERNEL_CONDITION_ALL_INTERFACES = common dso_local global i32 0, align 4
@NECP_KERNEL_CONDITION_DOMAIN = common dso_local global i32 0, align 4
@NECP_KERNEL_CONDITION_CUSTOM_ENTITLEMENT = common dso_local global i32 0, align 4
@NECP_KERNEL_CONDITION_ACCOUNT_ID = common dso_local global i32 0, align 4
@NECP_KERNEL_CONDITION_POLICY_ID = common dso_local global i32 0, align 4
@NECP_KERNEL_CONDITION_APP_ID = common dso_local global i32 0, align 4
@NECP_KERNEL_CONDITION_REAL_APP_ID = common dso_local global i32 0, align 4
@NECP_KERNEL_CONDITION_PID = common dso_local global i32 0, align 4
@NECP_KERNEL_CONDITION_UID = common dso_local global i32 0, align 4
@NECP_KERNEL_CONDITION_BOUND_INTERFACE = common dso_local global i32 0, align 4
@NECP_KERNEL_CONDITION_PROTOCOL = common dso_local global i32 0, align 4
@NECP_KERNEL_CONDITION_TRAFFIC_CLASS = common dso_local global i32 0, align 4
@NECP_KERNEL_CONDITION_LOCAL_START = common dso_local global i32 0, align 4
@NECP_KERNEL_CONDITION_LOCAL_END = common dso_local global i32 0, align 4
@NECP_KERNEL_CONDITION_LOCAL_PREFIX = common dso_local global i32 0, align 4
@NECP_KERNEL_CONDITION_REMOTE_START = common dso_local global i32 0, align 4
@NECP_KERNEL_CONDITION_REMOTE_END = common dso_local global i32 0, align 4
@NECP_KERNEL_CONDITION_REMOTE_PREFIX = common dso_local global i32 0, align 4
@NECP_KERNEL_CONDITION_AGENT_TYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy**, i32)* @necp_kernel_socket_policy_is_unnecessary to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @necp_kernel_socket_policy_is_unnecessary(%struct.necp_kernel_socket_policy* %0, %struct.necp_kernel_socket_policy** %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.necp_kernel_socket_policy*, align 8
  %6 = alloca %struct.necp_kernel_socket_policy**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.necp_kernel_socket_policy*, align 8
  store %struct.necp_kernel_socket_policy* %0, %struct.necp_kernel_socket_policy** %5, align 8
  store %struct.necp_kernel_socket_policy** %1, %struct.necp_kernel_socket_policy*** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load i32, i32* @FALSE, align 4
  store i32 %13, i32* %8, align 4
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  store i32 0, i32* %11, align 4
  br label %14

14:                                               ; preds = %468, %3
  %15 = load i32, i32* %11, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %471

18:                                               ; preds = %14
  %19 = load %struct.necp_kernel_socket_policy**, %struct.necp_kernel_socket_policy*** %6, align 8
  %20 = load i32, i32* %11, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %19, i64 %21
  %23 = load %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %22, align 8
  store %struct.necp_kernel_socket_policy* %23, %struct.necp_kernel_socket_policy** %12, align 8
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %64

26:                                               ; preds = %18
  %27 = load i64, i64* %9, align 8
  %28 = load %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %12, align 8
  %29 = getelementptr inbounds %struct.necp_kernel_socket_policy, %struct.necp_kernel_socket_policy* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %27, %30
  br i1 %31, label %41, label %32

32:                                               ; preds = %26
  %33 = load i64, i64* %10, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %32
  %36 = load %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %12, align 8
  %37 = getelementptr inbounds %struct.necp_kernel_socket_policy, %struct.necp_kernel_socket_policy* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* %10, align 8
  %40 = icmp sge i64 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %35, %26
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  %42 = load i32, i32* @FALSE, align 4
  store i32 %42, i32* %8, align 4
  br label %63

43:                                               ; preds = %35, %32
  %44 = load %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %12, align 8
  %45 = getelementptr inbounds %struct.necp_kernel_socket_policy, %struct.necp_kernel_socket_policy* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @NECP_KERNEL_POLICY_RESULT_SKIP, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %62

49:                                               ; preds = %43
  %50 = load %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %12, align 8
  %51 = getelementptr inbounds %struct.necp_kernel_socket_policy, %struct.necp_kernel_socket_policy* %50, i32 0, i32 23
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* %10, align 8
  %55 = icmp sgt i64 %53, %54
  br i1 %55, label %56, label %61

56:                                               ; preds = %49
  %57 = load %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %12, align 8
  %58 = getelementptr inbounds %struct.necp_kernel_socket_policy, %struct.necp_kernel_socket_policy* %57, i32 0, i32 23
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  store i64 %60, i64* %10, align 8
  br label %61

61:                                               ; preds = %56, %49
  br label %62

62:                                               ; preds = %61, %43
  br label %468

63:                                               ; preds = %41
  br label %64

64:                                               ; preds = %63, %18
  %65 = load %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %12, align 8
  %66 = getelementptr inbounds %struct.necp_kernel_socket_policy, %struct.necp_kernel_socket_policy* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @NECP_KERNEL_POLICY_RESULT_SKIP, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %79

70:                                               ; preds = %64
  %71 = load i32, i32* @TRUE, align 4
  store i32 %71, i32* %8, align 4
  %72 = load %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %12, align 8
  %73 = getelementptr inbounds %struct.necp_kernel_socket_policy, %struct.necp_kernel_socket_policy* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  store i64 %74, i64* %9, align 8
  %75 = load %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %12, align 8
  %76 = getelementptr inbounds %struct.necp_kernel_socket_policy, %struct.necp_kernel_socket_policy* %75, i32 0, i32 23
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  store i64 %78, i64* %10, align 8
  br label %79

79:                                               ; preds = %70, %64
  %80 = load %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %12, align 8
  %81 = load %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %5, align 8
  %82 = call i32 @necp_kernel_socket_policy_results_overlap(%struct.necp_kernel_socket_policy* %80, %struct.necp_kernel_socket_policy* %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %79
  br label %468

85:                                               ; preds = %79
  %86 = load %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %5, align 8
  %87 = getelementptr inbounds %struct.necp_kernel_socket_policy, %struct.necp_kernel_socket_policy* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @NECP_KERNEL_CONDITION_ALL_INTERFACES, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %100

92:                                               ; preds = %85
  %93 = load %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %12, align 8
  %94 = getelementptr inbounds %struct.necp_kernel_socket_policy, %struct.necp_kernel_socket_policy* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @NECP_KERNEL_CONDITION_ALL_INTERFACES, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %100, label %99

99:                                               ; preds = %92
  br label %468

100:                                              ; preds = %92, %85
  %101 = load %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %12, align 8
  %102 = getelementptr inbounds %struct.necp_kernel_socket_policy, %struct.necp_kernel_socket_policy* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 8
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %100
  %106 = load i32, i32* @TRUE, align 4
  store i32 %106, i32* %4, align 4
  br label %473

107:                                              ; preds = %100
  %108 = load %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %5, align 8
  %109 = getelementptr inbounds %struct.necp_kernel_socket_policy, %struct.necp_kernel_socket_policy* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %12, align 8
  %112 = getelementptr inbounds %struct.necp_kernel_socket_policy, %struct.necp_kernel_socket_policy* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 8
  %114 = and i32 %110, %113
  %115 = load %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %12, align 8
  %116 = getelementptr inbounds %struct.necp_kernel_socket_policy, %struct.necp_kernel_socket_policy* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 8
  %118 = icmp ne i32 %114, %117
  br i1 %118, label %119, label %120

119:                                              ; preds = %107
  br label %468

120:                                              ; preds = %107
  %121 = load %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %5, align 8
  %122 = getelementptr inbounds %struct.necp_kernel_socket_policy, %struct.necp_kernel_socket_policy* %121, i32 0, i32 4
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %12, align 8
  %125 = getelementptr inbounds %struct.necp_kernel_socket_policy, %struct.necp_kernel_socket_policy* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 8
  %127 = and i32 %123, %126
  %128 = load %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %12, align 8
  %129 = getelementptr inbounds %struct.necp_kernel_socket_policy, %struct.necp_kernel_socket_policy* %128, i32 0, i32 4
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %12, align 8
  %132 = getelementptr inbounds %struct.necp_kernel_socket_policy, %struct.necp_kernel_socket_policy* %131, i32 0, i32 3
  %133 = load i32, i32* %132, align 8
  %134 = and i32 %130, %133
  %135 = icmp ne i32 %127, %134
  br i1 %135, label %136, label %137

136:                                              ; preds = %120
  br label %468

137:                                              ; preds = %120
  %138 = load %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %12, align 8
  %139 = getelementptr inbounds %struct.necp_kernel_socket_policy, %struct.necp_kernel_socket_policy* %138, i32 0, i32 3
  %140 = load i32, i32* %139, align 8
  %141 = load i32, i32* @NECP_KERNEL_CONDITION_DOMAIN, align 4
  %142 = and i32 %140, %141
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %154

144:                                              ; preds = %137
  %145 = load %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %12, align 8
  %146 = getelementptr inbounds %struct.necp_kernel_socket_policy, %struct.necp_kernel_socket_policy* %145, i32 0, i32 22
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %5, align 8
  %149 = getelementptr inbounds %struct.necp_kernel_socket_policy, %struct.necp_kernel_socket_policy* %148, i32 0, i32 22
  %150 = load i32, i32* %149, align 4
  %151 = call i64 @strcmp(i32 %147, i32 %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %144
  br label %468

154:                                              ; preds = %144, %137
  %155 = load %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %12, align 8
  %156 = getelementptr inbounds %struct.necp_kernel_socket_policy, %struct.necp_kernel_socket_policy* %155, i32 0, i32 3
  %157 = load i32, i32* %156, align 8
  %158 = load i32, i32* @NECP_KERNEL_CONDITION_CUSTOM_ENTITLEMENT, align 4
  %159 = and i32 %157, %158
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %171

161:                                              ; preds = %154
  %162 = load %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %12, align 8
  %163 = getelementptr inbounds %struct.necp_kernel_socket_policy, %struct.necp_kernel_socket_policy* %162, i32 0, i32 21
  %164 = load i32, i32* %163, align 8
  %165 = load %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %5, align 8
  %166 = getelementptr inbounds %struct.necp_kernel_socket_policy, %struct.necp_kernel_socket_policy* %165, i32 0, i32 21
  %167 = load i32, i32* %166, align 8
  %168 = call i64 @strcmp(i32 %164, i32 %167)
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %171

170:                                              ; preds = %161
  br label %468

171:                                              ; preds = %161, %154
  %172 = load %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %12, align 8
  %173 = getelementptr inbounds %struct.necp_kernel_socket_policy, %struct.necp_kernel_socket_policy* %172, i32 0, i32 3
  %174 = load i32, i32* %173, align 8
  %175 = load i32, i32* @NECP_KERNEL_CONDITION_ACCOUNT_ID, align 4
  %176 = and i32 %174, %175
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %187

178:                                              ; preds = %171
  %179 = load %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %12, align 8
  %180 = getelementptr inbounds %struct.necp_kernel_socket_policy, %struct.necp_kernel_socket_policy* %179, i32 0, i32 5
  %181 = load i64, i64* %180, align 8
  %182 = load %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %5, align 8
  %183 = getelementptr inbounds %struct.necp_kernel_socket_policy, %struct.necp_kernel_socket_policy* %182, i32 0, i32 5
  %184 = load i64, i64* %183, align 8
  %185 = icmp ne i64 %181, %184
  br i1 %185, label %186, label %187

186:                                              ; preds = %178
  br label %468

187:                                              ; preds = %178, %171
  %188 = load %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %12, align 8
  %189 = getelementptr inbounds %struct.necp_kernel_socket_policy, %struct.necp_kernel_socket_policy* %188, i32 0, i32 3
  %190 = load i32, i32* %189, align 8
  %191 = load i32, i32* @NECP_KERNEL_CONDITION_POLICY_ID, align 4
  %192 = and i32 %190, %191
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %203

194:                                              ; preds = %187
  %195 = load %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %12, align 8
  %196 = getelementptr inbounds %struct.necp_kernel_socket_policy, %struct.necp_kernel_socket_policy* %195, i32 0, i32 6
  %197 = load i64, i64* %196, align 8
  %198 = load %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %5, align 8
  %199 = getelementptr inbounds %struct.necp_kernel_socket_policy, %struct.necp_kernel_socket_policy* %198, i32 0, i32 6
  %200 = load i64, i64* %199, align 8
  %201 = icmp ne i64 %197, %200
  br i1 %201, label %202, label %203

202:                                              ; preds = %194
  br label %468

203:                                              ; preds = %194, %187
  %204 = load %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %12, align 8
  %205 = getelementptr inbounds %struct.necp_kernel_socket_policy, %struct.necp_kernel_socket_policy* %204, i32 0, i32 3
  %206 = load i32, i32* %205, align 8
  %207 = load i32, i32* @NECP_KERNEL_CONDITION_APP_ID, align 4
  %208 = and i32 %206, %207
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %219

210:                                              ; preds = %203
  %211 = load %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %12, align 8
  %212 = getelementptr inbounds %struct.necp_kernel_socket_policy, %struct.necp_kernel_socket_policy* %211, i32 0, i32 7
  %213 = load i64, i64* %212, align 8
  %214 = load %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %5, align 8
  %215 = getelementptr inbounds %struct.necp_kernel_socket_policy, %struct.necp_kernel_socket_policy* %214, i32 0, i32 7
  %216 = load i64, i64* %215, align 8
  %217 = icmp ne i64 %213, %216
  br i1 %217, label %218, label %219

218:                                              ; preds = %210
  br label %468

219:                                              ; preds = %210, %203
  %220 = load %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %12, align 8
  %221 = getelementptr inbounds %struct.necp_kernel_socket_policy, %struct.necp_kernel_socket_policy* %220, i32 0, i32 3
  %222 = load i32, i32* %221, align 8
  %223 = load i32, i32* @NECP_KERNEL_CONDITION_REAL_APP_ID, align 4
  %224 = and i32 %222, %223
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %235

226:                                              ; preds = %219
  %227 = load %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %12, align 8
  %228 = getelementptr inbounds %struct.necp_kernel_socket_policy, %struct.necp_kernel_socket_policy* %227, i32 0, i32 8
  %229 = load i64, i64* %228, align 8
  %230 = load %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %5, align 8
  %231 = getelementptr inbounds %struct.necp_kernel_socket_policy, %struct.necp_kernel_socket_policy* %230, i32 0, i32 8
  %232 = load i64, i64* %231, align 8
  %233 = icmp ne i64 %229, %232
  br i1 %233, label %234, label %235

234:                                              ; preds = %226
  br label %468

235:                                              ; preds = %226, %219
  %236 = load %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %12, align 8
  %237 = getelementptr inbounds %struct.necp_kernel_socket_policy, %struct.necp_kernel_socket_policy* %236, i32 0, i32 3
  %238 = load i32, i32* %237, align 8
  %239 = load i32, i32* @NECP_KERNEL_CONDITION_PID, align 4
  %240 = and i32 %238, %239
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %251

242:                                              ; preds = %235
  %243 = load %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %12, align 8
  %244 = getelementptr inbounds %struct.necp_kernel_socket_policy, %struct.necp_kernel_socket_policy* %243, i32 0, i32 9
  %245 = load i64, i64* %244, align 8
  %246 = load %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %5, align 8
  %247 = getelementptr inbounds %struct.necp_kernel_socket_policy, %struct.necp_kernel_socket_policy* %246, i32 0, i32 9
  %248 = load i64, i64* %247, align 8
  %249 = icmp ne i64 %245, %248
  br i1 %249, label %250, label %251

250:                                              ; preds = %242
  br label %468

251:                                              ; preds = %242, %235
  %252 = load %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %12, align 8
  %253 = getelementptr inbounds %struct.necp_kernel_socket_policy, %struct.necp_kernel_socket_policy* %252, i32 0, i32 3
  %254 = load i32, i32* %253, align 8
  %255 = load i32, i32* @NECP_KERNEL_CONDITION_UID, align 4
  %256 = and i32 %254, %255
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %267

258:                                              ; preds = %251
  %259 = load %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %12, align 8
  %260 = getelementptr inbounds %struct.necp_kernel_socket_policy, %struct.necp_kernel_socket_policy* %259, i32 0, i32 10
  %261 = load i64, i64* %260, align 8
  %262 = load %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %5, align 8
  %263 = getelementptr inbounds %struct.necp_kernel_socket_policy, %struct.necp_kernel_socket_policy* %262, i32 0, i32 10
  %264 = load i64, i64* %263, align 8
  %265 = icmp ne i64 %261, %264
  br i1 %265, label %266, label %267

266:                                              ; preds = %258
  br label %468

267:                                              ; preds = %258, %251
  %268 = load %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %12, align 8
  %269 = getelementptr inbounds %struct.necp_kernel_socket_policy, %struct.necp_kernel_socket_policy* %268, i32 0, i32 3
  %270 = load i32, i32* %269, align 8
  %271 = load i32, i32* @NECP_KERNEL_CONDITION_BOUND_INTERFACE, align 4
  %272 = and i32 %270, %271
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %274, label %283

274:                                              ; preds = %267
  %275 = load %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %12, align 8
  %276 = getelementptr inbounds %struct.necp_kernel_socket_policy, %struct.necp_kernel_socket_policy* %275, i32 0, i32 11
  %277 = load i64, i64* %276, align 8
  %278 = load %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %5, align 8
  %279 = getelementptr inbounds %struct.necp_kernel_socket_policy, %struct.necp_kernel_socket_policy* %278, i32 0, i32 11
  %280 = load i64, i64* %279, align 8
  %281 = icmp ne i64 %277, %280
  br i1 %281, label %282, label %283

282:                                              ; preds = %274
  br label %468

283:                                              ; preds = %274, %267
  %284 = load %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %12, align 8
  %285 = getelementptr inbounds %struct.necp_kernel_socket_policy, %struct.necp_kernel_socket_policy* %284, i32 0, i32 3
  %286 = load i32, i32* %285, align 8
  %287 = load i32, i32* @NECP_KERNEL_CONDITION_PROTOCOL, align 4
  %288 = and i32 %286, %287
  %289 = icmp ne i32 %288, 0
  br i1 %289, label %290, label %299

290:                                              ; preds = %283
  %291 = load %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %12, align 8
  %292 = getelementptr inbounds %struct.necp_kernel_socket_policy, %struct.necp_kernel_socket_policy* %291, i32 0, i32 12
  %293 = load i64, i64* %292, align 8
  %294 = load %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %5, align 8
  %295 = getelementptr inbounds %struct.necp_kernel_socket_policy, %struct.necp_kernel_socket_policy* %294, i32 0, i32 12
  %296 = load i64, i64* %295, align 8
  %297 = icmp ne i64 %293, %296
  br i1 %297, label %298, label %299

298:                                              ; preds = %290
  br label %468

299:                                              ; preds = %290, %283
  %300 = load %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %12, align 8
  %301 = getelementptr inbounds %struct.necp_kernel_socket_policy, %struct.necp_kernel_socket_policy* %300, i32 0, i32 3
  %302 = load i32, i32* %301, align 8
  %303 = load i32, i32* @NECP_KERNEL_CONDITION_TRAFFIC_CLASS, align 4
  %304 = and i32 %302, %303
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %306, label %327

306:                                              ; preds = %299
  %307 = load %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %12, align 8
  %308 = getelementptr inbounds %struct.necp_kernel_socket_policy, %struct.necp_kernel_socket_policy* %307, i32 0, i32 20
  %309 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %308, i32 0, i32 0
  %310 = load i64, i64* %309, align 8
  %311 = load %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %5, align 8
  %312 = getelementptr inbounds %struct.necp_kernel_socket_policy, %struct.necp_kernel_socket_policy* %311, i32 0, i32 20
  %313 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %312, i32 0, i32 0
  %314 = load i64, i64* %313, align 8
  %315 = icmp sle i64 %310, %314
  br i1 %315, label %316, label %326

316:                                              ; preds = %306
  %317 = load %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %12, align 8
  %318 = getelementptr inbounds %struct.necp_kernel_socket_policy, %struct.necp_kernel_socket_policy* %317, i32 0, i32 20
  %319 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %318, i32 0, i32 1
  %320 = load i64, i64* %319, align 8
  %321 = load %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %5, align 8
  %322 = getelementptr inbounds %struct.necp_kernel_socket_policy, %struct.necp_kernel_socket_policy* %321, i32 0, i32 20
  %323 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %322, i32 0, i32 1
  %324 = load i64, i64* %323, align 8
  %325 = icmp sge i64 %320, %324
  br i1 %325, label %327, label %326

326:                                              ; preds = %316, %306
  br label %468

327:                                              ; preds = %316, %299
  %328 = load %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %12, align 8
  %329 = getelementptr inbounds %struct.necp_kernel_socket_policy, %struct.necp_kernel_socket_policy* %328, i32 0, i32 3
  %330 = load i32, i32* %329, align 8
  %331 = load i32, i32* @NECP_KERNEL_CONDITION_LOCAL_START, align 4
  %332 = and i32 %330, %331
  %333 = icmp ne i32 %332, 0
  br i1 %333, label %334, label %389

334:                                              ; preds = %327
  %335 = load %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %12, align 8
  %336 = getelementptr inbounds %struct.necp_kernel_socket_policy, %struct.necp_kernel_socket_policy* %335, i32 0, i32 3
  %337 = load i32, i32* %336, align 8
  %338 = load i32, i32* @NECP_KERNEL_CONDITION_LOCAL_END, align 4
  %339 = and i32 %337, %338
  %340 = icmp ne i32 %339, 0
  br i1 %340, label %341, label %358

341:                                              ; preds = %334
  %342 = load %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %5, align 8
  %343 = getelementptr inbounds %struct.necp_kernel_socket_policy, %struct.necp_kernel_socket_policy* %342, i32 0, i32 18
  %344 = bitcast i32* %343 to %struct.sockaddr*
  %345 = load %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %5, align 8
  %346 = getelementptr inbounds %struct.necp_kernel_socket_policy, %struct.necp_kernel_socket_policy* %345, i32 0, i32 19
  %347 = bitcast i32* %346 to %struct.sockaddr*
  %348 = load %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %12, align 8
  %349 = getelementptr inbounds %struct.necp_kernel_socket_policy, %struct.necp_kernel_socket_policy* %348, i32 0, i32 18
  %350 = bitcast i32* %349 to %struct.sockaddr*
  %351 = load %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %12, align 8
  %352 = getelementptr inbounds %struct.necp_kernel_socket_policy, %struct.necp_kernel_socket_policy* %351, i32 0, i32 19
  %353 = bitcast i32* %352 to %struct.sockaddr*
  %354 = call i32 @necp_is_range_in_range(%struct.sockaddr* %344, %struct.sockaddr* %347, %struct.sockaddr* %350, %struct.sockaddr* %353)
  %355 = icmp ne i32 %354, 0
  br i1 %355, label %357, label %356

356:                                              ; preds = %341
  br label %468

357:                                              ; preds = %341
  br label %388

358:                                              ; preds = %334
  %359 = load %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %12, align 8
  %360 = getelementptr inbounds %struct.necp_kernel_socket_policy, %struct.necp_kernel_socket_policy* %359, i32 0, i32 3
  %361 = load i32, i32* %360, align 8
  %362 = load i32, i32* @NECP_KERNEL_CONDITION_LOCAL_PREFIX, align 4
  %363 = and i32 %361, %362
  %364 = icmp ne i32 %363, 0
  br i1 %364, label %365, label %387

365:                                              ; preds = %358
  %366 = load %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %12, align 8
  %367 = getelementptr inbounds %struct.necp_kernel_socket_policy, %struct.necp_kernel_socket_policy* %366, i32 0, i32 13
  %368 = load i64, i64* %367, align 8
  %369 = load %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %5, align 8
  %370 = getelementptr inbounds %struct.necp_kernel_socket_policy, %struct.necp_kernel_socket_policy* %369, i32 0, i32 13
  %371 = load i64, i64* %370, align 8
  %372 = icmp sgt i64 %368, %371
  br i1 %372, label %385, label %373

373:                                              ; preds = %365
  %374 = load %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %5, align 8
  %375 = getelementptr inbounds %struct.necp_kernel_socket_policy, %struct.necp_kernel_socket_policy* %374, i32 0, i32 18
  %376 = bitcast i32* %375 to %struct.sockaddr*
  %377 = load %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %12, align 8
  %378 = getelementptr inbounds %struct.necp_kernel_socket_policy, %struct.necp_kernel_socket_policy* %377, i32 0, i32 18
  %379 = bitcast i32* %378 to %struct.sockaddr*
  %380 = load %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %12, align 8
  %381 = getelementptr inbounds %struct.necp_kernel_socket_policy, %struct.necp_kernel_socket_policy* %380, i32 0, i32 13
  %382 = load i64, i64* %381, align 8
  %383 = call i32 @necp_is_addr_in_subnet(%struct.sockaddr* %376, %struct.sockaddr* %379, i64 %382)
  %384 = icmp ne i32 %383, 0
  br i1 %384, label %386, label %385

385:                                              ; preds = %373, %365
  br label %468

386:                                              ; preds = %373
  br label %387

387:                                              ; preds = %386, %358
  br label %388

388:                                              ; preds = %387, %357
  br label %389

389:                                              ; preds = %388, %327
  %390 = load %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %12, align 8
  %391 = getelementptr inbounds %struct.necp_kernel_socket_policy, %struct.necp_kernel_socket_policy* %390, i32 0, i32 3
  %392 = load i32, i32* %391, align 8
  %393 = load i32, i32* @NECP_KERNEL_CONDITION_REMOTE_START, align 4
  %394 = and i32 %392, %393
  %395 = icmp ne i32 %394, 0
  br i1 %395, label %396, label %451

396:                                              ; preds = %389
  %397 = load %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %12, align 8
  %398 = getelementptr inbounds %struct.necp_kernel_socket_policy, %struct.necp_kernel_socket_policy* %397, i32 0, i32 3
  %399 = load i32, i32* %398, align 8
  %400 = load i32, i32* @NECP_KERNEL_CONDITION_REMOTE_END, align 4
  %401 = and i32 %399, %400
  %402 = icmp ne i32 %401, 0
  br i1 %402, label %403, label %420

403:                                              ; preds = %396
  %404 = load %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %5, align 8
  %405 = getelementptr inbounds %struct.necp_kernel_socket_policy, %struct.necp_kernel_socket_policy* %404, i32 0, i32 16
  %406 = bitcast i32* %405 to %struct.sockaddr*
  %407 = load %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %5, align 8
  %408 = getelementptr inbounds %struct.necp_kernel_socket_policy, %struct.necp_kernel_socket_policy* %407, i32 0, i32 17
  %409 = bitcast i32* %408 to %struct.sockaddr*
  %410 = load %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %12, align 8
  %411 = getelementptr inbounds %struct.necp_kernel_socket_policy, %struct.necp_kernel_socket_policy* %410, i32 0, i32 16
  %412 = bitcast i32* %411 to %struct.sockaddr*
  %413 = load %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %12, align 8
  %414 = getelementptr inbounds %struct.necp_kernel_socket_policy, %struct.necp_kernel_socket_policy* %413, i32 0, i32 17
  %415 = bitcast i32* %414 to %struct.sockaddr*
  %416 = call i32 @necp_is_range_in_range(%struct.sockaddr* %406, %struct.sockaddr* %409, %struct.sockaddr* %412, %struct.sockaddr* %415)
  %417 = icmp ne i32 %416, 0
  br i1 %417, label %419, label %418

418:                                              ; preds = %403
  br label %468

419:                                              ; preds = %403
  br label %450

420:                                              ; preds = %396
  %421 = load %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %12, align 8
  %422 = getelementptr inbounds %struct.necp_kernel_socket_policy, %struct.necp_kernel_socket_policy* %421, i32 0, i32 3
  %423 = load i32, i32* %422, align 8
  %424 = load i32, i32* @NECP_KERNEL_CONDITION_REMOTE_PREFIX, align 4
  %425 = and i32 %423, %424
  %426 = icmp ne i32 %425, 0
  br i1 %426, label %427, label %449

427:                                              ; preds = %420
  %428 = load %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %12, align 8
  %429 = getelementptr inbounds %struct.necp_kernel_socket_policy, %struct.necp_kernel_socket_policy* %428, i32 0, i32 14
  %430 = load i64, i64* %429, align 8
  %431 = load %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %5, align 8
  %432 = getelementptr inbounds %struct.necp_kernel_socket_policy, %struct.necp_kernel_socket_policy* %431, i32 0, i32 14
  %433 = load i64, i64* %432, align 8
  %434 = icmp sgt i64 %430, %433
  br i1 %434, label %447, label %435

435:                                              ; preds = %427
  %436 = load %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %5, align 8
  %437 = getelementptr inbounds %struct.necp_kernel_socket_policy, %struct.necp_kernel_socket_policy* %436, i32 0, i32 16
  %438 = bitcast i32* %437 to %struct.sockaddr*
  %439 = load %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %12, align 8
  %440 = getelementptr inbounds %struct.necp_kernel_socket_policy, %struct.necp_kernel_socket_policy* %439, i32 0, i32 16
  %441 = bitcast i32* %440 to %struct.sockaddr*
  %442 = load %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %12, align 8
  %443 = getelementptr inbounds %struct.necp_kernel_socket_policy, %struct.necp_kernel_socket_policy* %442, i32 0, i32 14
  %444 = load i64, i64* %443, align 8
  %445 = call i32 @necp_is_addr_in_subnet(%struct.sockaddr* %438, %struct.sockaddr* %441, i64 %444)
  %446 = icmp ne i32 %445, 0
  br i1 %446, label %448, label %447

447:                                              ; preds = %435, %427
  br label %468

448:                                              ; preds = %435
  br label %449

449:                                              ; preds = %448, %420
  br label %450

450:                                              ; preds = %449, %419
  br label %451

451:                                              ; preds = %450, %389
  %452 = load %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %12, align 8
  %453 = getelementptr inbounds %struct.necp_kernel_socket_policy, %struct.necp_kernel_socket_policy* %452, i32 0, i32 3
  %454 = load i32, i32* %453, align 8
  %455 = load i32, i32* @NECP_KERNEL_CONDITION_AGENT_TYPE, align 4
  %456 = and i32 %454, %455
  %457 = icmp ne i32 %456, 0
  br i1 %457, label %458, label %466

458:                                              ; preds = %451
  %459 = load %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %12, align 8
  %460 = getelementptr inbounds %struct.necp_kernel_socket_policy, %struct.necp_kernel_socket_policy* %459, i32 0, i32 15
  %461 = load %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %5, align 8
  %462 = getelementptr inbounds %struct.necp_kernel_socket_policy, %struct.necp_kernel_socket_policy* %461, i32 0, i32 15
  %463 = call i64 @memcmp(i32* %460, i32* %462, i32 4)
  %464 = icmp eq i64 %463, 0
  br i1 %464, label %465, label %466

465:                                              ; preds = %458
  br label %468

466:                                              ; preds = %458, %451
  %467 = load i32, i32* @TRUE, align 4
  store i32 %467, i32* %4, align 4
  br label %473

468:                                              ; preds = %465, %447, %418, %385, %356, %326, %298, %282, %266, %250, %234, %218, %202, %186, %170, %153, %136, %119, %99, %84, %62
  %469 = load i32, i32* %11, align 4
  %470 = add nsw i32 %469, 1
  store i32 %470, i32* %11, align 4
  br label %14

471:                                              ; preds = %14
  %472 = load i32, i32* @FALSE, align 4
  store i32 %472, i32* %4, align 4
  br label %473

473:                                              ; preds = %471, %466, %105
  %474 = load i32, i32* %4, align 4
  ret i32 %474
}

declare dso_local i32 @necp_kernel_socket_policy_results_overlap(%struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy*) #1

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local i32 @necp_is_range_in_range(%struct.sockaddr*, %struct.sockaddr*, %struct.sockaddr*, %struct.sockaddr*) #1

declare dso_local i32 @necp_is_addr_in_subnet(%struct.sockaddr*, %struct.sockaddr*, i64) #1

declare dso_local i64 @memcmp(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
