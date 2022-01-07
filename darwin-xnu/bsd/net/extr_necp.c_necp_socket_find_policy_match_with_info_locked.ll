; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_necp.c_necp_socket_find_policy_match_with_info_locked.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_necp.c_necp_socket_find_policy_match_with_info_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.necp_kernel_socket_policy = type { i64, i64, i64, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i64, i64, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i8*, i64 }
%struct.necp_socket_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.TYPE_7__ = type { i8*, i64 }
%struct.necp_client_parameter_netagent_type = type { i32 }
%struct.substring = type { i32, i32 }

@MAX_AGGREGATE_ROUTE_RULES = common dso_local global i32 0, align 4
@necp_drop_all_order = common dso_local global i64 0, align 8
@NECP_KERNEL_POLICY_RESULT_SOCKET_FILTER = common dso_local global i64 0, align 8
@necp_debug = common dso_local global i32 0, align 4
@LOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [89 x i8] c"Socket Policy: (Application %d Real Application %d BoundInterface %d Proto %d) Filter %d\00", align 1
@NECP_KERNEL_POLICY_RESULT_ROUTE_RULES = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [93 x i8] c"Socket Policy: (Application %d Real Application %d BoundInterface %d Proto %d) Route Rule %d\00", align 1
@.str.2 = private unnamed_addr constant [97 x i8] c"Socket Policy: (Application %d Real Application %d BoundInterface %d Proto %d) Service Action %d\00", align 1
@.str.3 = private unnamed_addr constant [101 x i8] c"Socket Policy: (Application %d Real Application %d BoundInterface %d Proto %d) Service ID %d Data %d\00", align 1
@NECP_KERNEL_POLICY_RESULT_USE_NETAGENT = common dso_local global i64 0, align 8
@NECP_KERNEL_POLICY_RESULT_NETAGENT_SCOPED = common dso_local global i64 0, align 8
@NECP_AGENT_USE_FLAG_SCOPE = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [94 x i8] c"Socket Policy: (Application %d Real Application %d BoundInterface %d Proto %d) %s Netagent %d\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"Use\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"Scope\00", align 1
@NECP_KERNEL_POLICY_RESULT_SKIP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.necp_kernel_socket_policy* (%struct.necp_kernel_socket_policy**, %struct.necp_socket_info*, i32*, i64*, i64*, %struct.TYPE_7__*, i64*, i64*, i64, %struct.necp_client_parameter_netagent_type*, i64, i32, i32*)* @necp_socket_find_policy_match_with_info_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.necp_kernel_socket_policy* @necp_socket_find_policy_match_with_info_locked(%struct.necp_kernel_socket_policy** %0, %struct.necp_socket_info* %1, i32* %2, i64* %3, i64* %4, %struct.TYPE_7__* %5, i64* %6, i64* %7, i64 %8, %struct.necp_client_parameter_netagent_type* %9, i64 %10, i32 %11, i32* %12) #0 {
  %14 = alloca %struct.necp_kernel_socket_policy**, align 8
  %15 = alloca %struct.necp_socket_info*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i64*, align 8
  %18 = alloca i64*, align 8
  %19 = alloca %struct.TYPE_7__*, align 8
  %20 = alloca i64*, align 8
  %21 = alloca i64*, align 8
  %22 = alloca i64, align 8
  %23 = alloca %struct.necp_client_parameter_netagent_type*, align 8
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32*, align 8
  %27 = alloca %struct.necp_kernel_socket_policy*, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca i8*, align 8
  %31 = alloca i64, align 8
  %32 = alloca i64, align 8
  %33 = alloca i32, align 4
  %34 = alloca i64, align 8
  %35 = alloca %struct.substring, align 4
  %36 = alloca i32, align 4
  store %struct.necp_kernel_socket_policy** %0, %struct.necp_kernel_socket_policy*** %14, align 8
  store %struct.necp_socket_info* %1, %struct.necp_socket_info** %15, align 8
  store i32* %2, i32** %16, align 8
  store i64* %3, i64** %17, align 8
  store i64* %4, i64** %18, align 8
  store %struct.TYPE_7__* %5, %struct.TYPE_7__** %19, align 8
  store i64* %6, i64** %20, align 8
  store i64* %7, i64** %21, align 8
  store i64 %8, i64* %22, align 8
  store %struct.necp_client_parameter_netagent_type* %9, %struct.necp_client_parameter_netagent_type** %23, align 8
  store i64 %10, i64* %24, align 8
  store i32 %11, i32* %25, align 4
  store i32* %12, i32** %26, align 8
  store %struct.necp_kernel_socket_policy* null, %struct.necp_kernel_socket_policy** %27, align 8
  store i64 0, i64* %28, align 8
  store i64 0, i64* %29, align 8
  %37 = load i32, i32* @MAX_AGGREGATE_ROUTE_RULES, align 4
  %38 = zext i32 %37 to i64
  %39 = call i8* @llvm.stacksave()
  store i8* %39, i8** %30, align 8
  %40 = alloca i64, i64 %38, align 16
  store i64 %38, i64* %31, align 8
  store i64 0, i64* %32, align 8
  store i64 0, i64* %34, align 8
  %41 = load %struct.necp_socket_info*, %struct.necp_socket_info** %15, align 8
  %42 = getelementptr inbounds %struct.necp_socket_info, %struct.necp_socket_info* %41, i32 0, i32 11
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.necp_socket_info*, %struct.necp_socket_info** %15, align 8
  %45 = getelementptr inbounds %struct.necp_socket_info, %struct.necp_socket_info* %44, i32 0, i32 11
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %13
  %49 = load %struct.necp_socket_info*, %struct.necp_socket_info** %15, align 8
  %50 = getelementptr inbounds %struct.necp_socket_info, %struct.necp_socket_info* %49, i32 0, i32 11
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @strlen(i64 %51)
  br label %54

53:                                               ; preds = %13
  br label %54

54:                                               ; preds = %53, %48
  %55 = phi i32 [ %52, %48 ], [ 0, %53 ]
  %56 = call i64 @necp_trim_dots_and_stars(i64 %43, i32 %55)
  %57 = bitcast %struct.substring* %35 to i64*
  store i64 %56, i64* %57, align 4
  %58 = getelementptr inbounds %struct.substring, %struct.substring* %35, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = getelementptr inbounds %struct.substring, %struct.substring* %35, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @necp_count_dots(i32 %59, i32 %61)
  store i32 %62, i32* %36, align 4
  %63 = load i32*, i32** %16, align 8
  %64 = icmp ne i32* %63, null
  br i1 %64, label %65, label %67

65:                                               ; preds = %54
  %66 = load i32*, i32** %16, align 8
  store i32 0, i32* %66, align 4
  br label %67

67:                                               ; preds = %65, %54
  %68 = load i64*, i64** %17, align 8
  %69 = icmp ne i64* %68, null
  br i1 %69, label %70, label %72

70:                                               ; preds = %67
  %71 = load i64*, i64** %17, align 8
  store i64 0, i64* %71, align 8
  br label %72

72:                                               ; preds = %70, %67
  %73 = load i64*, i64** %18, align 8
  %74 = icmp ne i64* %73, null
  br i1 %74, label %75, label %77

75:                                               ; preds = %72
  %76 = load i64*, i64** %18, align 8
  store i64 0, i64* %76, align 8
  br label %77

77:                                               ; preds = %75, %72
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %79 = icmp ne %struct.TYPE_7__* %78, null
  br i1 %79, label %80, label %85

80:                                               ; preds = %77
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 0
  store i8* null, i8** %82, align 8
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 1
  store i64 0, i64* %84, align 8
  br label %85

85:                                               ; preds = %80, %77
  %86 = load %struct.necp_kernel_socket_policy**, %struct.necp_kernel_socket_policy*** %14, align 8
  %87 = icmp ne %struct.necp_kernel_socket_policy** %86, null
  br i1 %87, label %88, label %574

88:                                               ; preds = %85
  store i32 0, i32* %33, align 4
  br label %89

89:                                               ; preds = %570, %88
  %90 = load %struct.necp_kernel_socket_policy**, %struct.necp_kernel_socket_policy*** %14, align 8
  %91 = load i32, i32* %33, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %90, i64 %92
  %94 = load %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %93, align 8
  %95 = icmp ne %struct.necp_kernel_socket_policy* %94, null
  br i1 %95, label %96, label %573

96:                                               ; preds = %89
  %97 = load i64, i64* @necp_drop_all_order, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %110

99:                                               ; preds = %96
  %100 = load %struct.necp_kernel_socket_policy**, %struct.necp_kernel_socket_policy*** %14, align 8
  %101 = load i32, i32* %33, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %100, i64 %102
  %104 = load %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %103, align 8
  %105 = getelementptr inbounds %struct.necp_kernel_socket_policy, %struct.necp_kernel_socket_policy* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @necp_drop_all_order, align 8
  %108 = icmp sge i64 %106, %107
  br i1 %108, label %109, label %110

109:                                              ; preds = %99
  br label %573

110:                                              ; preds = %99, %96
  %111 = load i64, i64* %29, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %124

113:                                              ; preds = %110
  %114 = load %struct.necp_kernel_socket_policy**, %struct.necp_kernel_socket_policy*** %14, align 8
  %115 = load i32, i32* %33, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %114, i64 %116
  %118 = load %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %117, align 8
  %119 = getelementptr inbounds %struct.necp_kernel_socket_policy, %struct.necp_kernel_socket_policy* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* %29, align 8
  %122 = icmp sge i64 %120, %121
  br i1 %122, label %123, label %124

123:                                              ; preds = %113
  store i64 0, i64* %28, align 8
  store i64 0, i64* %29, align 8
  br label %124

124:                                              ; preds = %123, %113, %110
  %125 = load i64, i64* %28, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %140

127:                                              ; preds = %124
  %128 = load %struct.necp_kernel_socket_policy**, %struct.necp_kernel_socket_policy*** %14, align 8
  %129 = load i32, i32* %33, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %128, i64 %130
  %132 = load %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %131, align 8
  %133 = getelementptr inbounds %struct.necp_kernel_socket_policy, %struct.necp_kernel_socket_policy* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* %28, align 8
  %136 = icmp slt i64 %134, %135
  br i1 %136, label %137, label %138

137:                                              ; preds = %127
  br label %570

138:                                              ; preds = %127
  store i64 0, i64* %28, align 8
  store i64 0, i64* %29, align 8
  br label %139

139:                                              ; preds = %138
  br label %145

140:                                              ; preds = %124
  %141 = load i64, i64* %29, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %140
  br label %570

144:                                              ; preds = %140
  br label %145

145:                                              ; preds = %144, %139
  %146 = load %struct.necp_kernel_socket_policy**, %struct.necp_kernel_socket_policy*** %14, align 8
  %147 = load i32, i32* %33, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %146, i64 %148
  %150 = load %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %149, align 8
  %151 = load %struct.necp_socket_info*, %struct.necp_socket_info** %15, align 8
  %152 = getelementptr inbounds %struct.necp_socket_info, %struct.necp_socket_info* %151, i32 0, i32 3
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.necp_socket_info*, %struct.necp_socket_info** %15, align 8
  %155 = getelementptr inbounds %struct.necp_socket_info, %struct.necp_socket_info* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 8
  %157 = load %struct.necp_socket_info*, %struct.necp_socket_info** %15, align 8
  %158 = getelementptr inbounds %struct.necp_socket_info, %struct.necp_socket_info* %157, i32 0, i32 10
  %159 = load i32, i32* %158, align 8
  %160 = load %struct.necp_socket_info*, %struct.necp_socket_info** %15, align 8
  %161 = getelementptr inbounds %struct.necp_socket_info, %struct.necp_socket_info* %160, i32 0, i32 9
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* %36, align 4
  %164 = load %struct.necp_socket_info*, %struct.necp_socket_info** %15, align 8
  %165 = getelementptr inbounds %struct.necp_socket_info, %struct.necp_socket_info* %164, i32 0, i32 8
  %166 = load i32, i32* %165, align 8
  %167 = load %struct.necp_socket_info*, %struct.necp_socket_info** %15, align 8
  %168 = getelementptr inbounds %struct.necp_socket_info, %struct.necp_socket_info* %167, i32 0, i32 7
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.necp_socket_info*, %struct.necp_socket_info** %15, align 8
  %171 = getelementptr inbounds %struct.necp_socket_info, %struct.necp_socket_info* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.necp_socket_info*, %struct.necp_socket_info** %15, align 8
  %174 = getelementptr inbounds %struct.necp_socket_info, %struct.necp_socket_info* %173, i32 0, i32 6
  %175 = load i32, i32* %174, align 8
  %176 = load %struct.necp_socket_info*, %struct.necp_socket_info** %15, align 8
  %177 = getelementptr inbounds %struct.necp_socket_info, %struct.necp_socket_info* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = load %struct.necp_socket_info*, %struct.necp_socket_info** %15, align 8
  %180 = getelementptr inbounds %struct.necp_socket_info, %struct.necp_socket_info* %179, i32 0, i32 5
  %181 = load %struct.necp_socket_info*, %struct.necp_socket_info** %15, align 8
  %182 = getelementptr inbounds %struct.necp_socket_info, %struct.necp_socket_info* %181, i32 0, i32 4
  %183 = load %struct.necp_client_parameter_netagent_type*, %struct.necp_client_parameter_netagent_type** %23, align 8
  %184 = load i64, i64* %24, align 8
  %185 = load i32, i32* %25, align 4
  %186 = bitcast %struct.substring* %35 to i64*
  %187 = load i64, i64* %186, align 4
  %188 = call i64 @necp_socket_check_policy(%struct.necp_kernel_socket_policy* %150, i32 %153, i32 %156, i32 %159, i32 %162, i64 %187, i32 %163, i32 %166, i32 %169, i32 %172, i32 %175, i32 %178, i32* %180, i32* %182, %struct.necp_client_parameter_netagent_type* %183, i64 %184, i32 %185)
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %569

190:                                              ; preds = %145
  %191 = load %struct.necp_kernel_socket_policy**, %struct.necp_kernel_socket_policy*** %14, align 8
  %192 = load i32, i32* %33, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %191, i64 %193
  %195 = load %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %194, align 8
  %196 = getelementptr inbounds %struct.necp_kernel_socket_policy, %struct.necp_kernel_socket_policy* %195, i32 0, i32 2
  %197 = load i64, i64* %196, align 8
  %198 = load i64, i64* @NECP_KERNEL_POLICY_RESULT_SOCKET_FILTER, align 8
  %199 = icmp eq i64 %197, %198
  br i1 %199, label %200, label %246

200:                                              ; preds = %190
  %201 = load i32*, i32** %16, align 8
  %202 = icmp ne i32* %201, null
  br i1 %202, label %203, label %245

203:                                              ; preds = %200
  %204 = load i32*, i32** %16, align 8
  %205 = load i32, i32* %204, align 4
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %207, label %245

207:                                              ; preds = %203
  %208 = load %struct.necp_kernel_socket_policy**, %struct.necp_kernel_socket_policy*** %14, align 8
  %209 = load i32, i32* %33, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %208, i64 %210
  %212 = load %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %211, align 8
  %213 = getelementptr inbounds %struct.necp_kernel_socket_policy, %struct.necp_kernel_socket_policy* %212, i32 0, i32 4
  %214 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %213, i32 0, i32 4
  %215 = load i32, i32* %214, align 8
  %216 = load i32*, i32** %16, align 8
  store i32 %215, i32* %216, align 4
  %217 = load i32, i32* @necp_debug, align 4
  %218 = icmp sgt i32 %217, 1
  br i1 %218, label %219, label %244

219:                                              ; preds = %207
  %220 = load i32, i32* @LOG_DEBUG, align 4
  %221 = load %struct.necp_socket_info*, %struct.necp_socket_info** %15, align 8
  %222 = getelementptr inbounds %struct.necp_socket_info, %struct.necp_socket_info* %221, i32 0, i32 3
  %223 = load i32, i32* %222, align 4
  %224 = load %struct.necp_socket_info*, %struct.necp_socket_info** %15, align 8
  %225 = getelementptr inbounds %struct.necp_socket_info, %struct.necp_socket_info* %224, i32 0, i32 2
  %226 = load i32, i32* %225, align 8
  %227 = load %struct.necp_socket_info*, %struct.necp_socket_info** %15, align 8
  %228 = getelementptr inbounds %struct.necp_socket_info, %struct.necp_socket_info* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 4
  %230 = load %struct.necp_socket_info*, %struct.necp_socket_info** %15, align 8
  %231 = getelementptr inbounds %struct.necp_socket_info, %struct.necp_socket_info* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 8
  %233 = load %struct.necp_kernel_socket_policy**, %struct.necp_kernel_socket_policy*** %14, align 8
  %234 = load i32, i32* %33, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %233, i64 %235
  %237 = load %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %236, align 8
  %238 = getelementptr inbounds %struct.necp_kernel_socket_policy, %struct.necp_kernel_socket_policy* %237, i32 0, i32 4
  %239 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %238, i32 0, i32 4
  %240 = load i32, i32* %239, align 8
  %241 = sext i32 %240 to i64
  %242 = inttoptr i64 %241 to i8*
  %243 = call i32 (i32, i8*, i32, i32, i32, i32, i8*, ...) @NECPLOG(i32 %220, i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str, i64 0, i64 0), i32 %223, i32 %226, i32 %229, i32 %232, i8* %242)
  br label %244

244:                                              ; preds = %219, %207
  br label %245

245:                                              ; preds = %244, %203, %200
  br label %570

246:                                              ; preds = %190
  %247 = load %struct.necp_kernel_socket_policy**, %struct.necp_kernel_socket_policy*** %14, align 8
  %248 = load i32, i32* %33, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %247, i64 %249
  %251 = load %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %250, align 8
  %252 = getelementptr inbounds %struct.necp_kernel_socket_policy, %struct.necp_kernel_socket_policy* %251, i32 0, i32 2
  %253 = load i64, i64* %252, align 8
  %254 = load i64, i64* @NECP_KERNEL_POLICY_RESULT_ROUTE_RULES, align 8
  %255 = icmp eq i64 %253, %254
  br i1 %255, label %256, label %304

256:                                              ; preds = %246
  %257 = load i64*, i64** %17, align 8
  %258 = icmp ne i64* %257, null
  br i1 %258, label %259, label %303

259:                                              ; preds = %256
  %260 = load i64, i64* %32, align 8
  %261 = load i32, i32* @MAX_AGGREGATE_ROUTE_RULES, align 4
  %262 = sext i32 %261 to i64
  %263 = icmp ult i64 %260, %262
  br i1 %263, label %264, label %303

264:                                              ; preds = %259
  %265 = load %struct.necp_kernel_socket_policy**, %struct.necp_kernel_socket_policy*** %14, align 8
  %266 = load i32, i32* %33, align 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %265, i64 %267
  %269 = load %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %268, align 8
  %270 = getelementptr inbounds %struct.necp_kernel_socket_policy, %struct.necp_kernel_socket_policy* %269, i32 0, i32 4
  %271 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %270, i32 0, i32 0
  %272 = load i64, i64* %271, align 8
  %273 = load i64, i64* %32, align 8
  %274 = add i64 %273, 1
  store i64 %274, i64* %32, align 8
  %275 = getelementptr inbounds i64, i64* %40, i64 %273
  store i64 %272, i64* %275, align 8
  %276 = load i32, i32* @necp_debug, align 4
  %277 = icmp sgt i32 %276, 1
  br i1 %277, label %278, label %302

278:                                              ; preds = %264
  %279 = load i32, i32* @LOG_DEBUG, align 4
  %280 = load %struct.necp_socket_info*, %struct.necp_socket_info** %15, align 8
  %281 = getelementptr inbounds %struct.necp_socket_info, %struct.necp_socket_info* %280, i32 0, i32 3
  %282 = load i32, i32* %281, align 4
  %283 = load %struct.necp_socket_info*, %struct.necp_socket_info** %15, align 8
  %284 = getelementptr inbounds %struct.necp_socket_info, %struct.necp_socket_info* %283, i32 0, i32 2
  %285 = load i32, i32* %284, align 8
  %286 = load %struct.necp_socket_info*, %struct.necp_socket_info** %15, align 8
  %287 = getelementptr inbounds %struct.necp_socket_info, %struct.necp_socket_info* %286, i32 0, i32 1
  %288 = load i32, i32* %287, align 4
  %289 = load %struct.necp_socket_info*, %struct.necp_socket_info** %15, align 8
  %290 = getelementptr inbounds %struct.necp_socket_info, %struct.necp_socket_info* %289, i32 0, i32 0
  %291 = load i32, i32* %290, align 8
  %292 = load %struct.necp_kernel_socket_policy**, %struct.necp_kernel_socket_policy*** %14, align 8
  %293 = load i32, i32* %33, align 4
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %292, i64 %294
  %296 = load %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %295, align 8
  %297 = getelementptr inbounds %struct.necp_kernel_socket_policy, %struct.necp_kernel_socket_policy* %296, i32 0, i32 4
  %298 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %297, i32 0, i32 0
  %299 = load i64, i64* %298, align 8
  %300 = inttoptr i64 %299 to i8*
  %301 = call i32 (i32, i8*, i32, i32, i32, i32, i8*, ...) @NECPLOG(i32 %279, i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str.1, i64 0, i64 0), i32 %282, i32 %285, i32 %288, i32 %291, i8* %300)
  br label %302

302:                                              ; preds = %278, %264
  br label %303

303:                                              ; preds = %302, %259, %256
  br label %570

304:                                              ; preds = %246
  %305 = load %struct.necp_kernel_socket_policy**, %struct.necp_kernel_socket_policy*** %14, align 8
  %306 = load i32, i32* %33, align 4
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %305, i64 %307
  %309 = load %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %308, align 8
  %310 = call i64 @necp_kernel_socket_result_is_trigger_service_type(%struct.necp_kernel_socket_policy* %309)
  %311 = icmp ne i64 %310, 0
  br i1 %311, label %312, label %422

312:                                              ; preds = %304
  %313 = load i64*, i64** %18, align 8
  %314 = icmp ne i64* %313, null
  br i1 %314, label %315, label %354

315:                                              ; preds = %312
  %316 = load i64*, i64** %18, align 8
  %317 = load i64, i64* %316, align 8
  %318 = icmp eq i64 %317, 0
  br i1 %318, label %319, label %354

319:                                              ; preds = %315
  %320 = load %struct.necp_kernel_socket_policy**, %struct.necp_kernel_socket_policy*** %14, align 8
  %321 = load i32, i32* %33, align 4
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %320, i64 %322
  %324 = load %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %323, align 8
  %325 = getelementptr inbounds %struct.necp_kernel_socket_policy, %struct.necp_kernel_socket_policy* %324, i32 0, i32 2
  %326 = load i64, i64* %325, align 8
  %327 = load i64*, i64** %18, align 8
  store i64 %326, i64* %327, align 8
  %328 = load i32, i32* @necp_debug, align 4
  %329 = icmp sgt i32 %328, 1
  br i1 %329, label %330, label %353

330:                                              ; preds = %319
  %331 = load i32, i32* @LOG_DEBUG, align 4
  %332 = load %struct.necp_socket_info*, %struct.necp_socket_info** %15, align 8
  %333 = getelementptr inbounds %struct.necp_socket_info, %struct.necp_socket_info* %332, i32 0, i32 3
  %334 = load i32, i32* %333, align 4
  %335 = load %struct.necp_socket_info*, %struct.necp_socket_info** %15, align 8
  %336 = getelementptr inbounds %struct.necp_socket_info, %struct.necp_socket_info* %335, i32 0, i32 2
  %337 = load i32, i32* %336, align 8
  %338 = load %struct.necp_socket_info*, %struct.necp_socket_info** %15, align 8
  %339 = getelementptr inbounds %struct.necp_socket_info, %struct.necp_socket_info* %338, i32 0, i32 1
  %340 = load i32, i32* %339, align 4
  %341 = load %struct.necp_socket_info*, %struct.necp_socket_info** %15, align 8
  %342 = getelementptr inbounds %struct.necp_socket_info, %struct.necp_socket_info* %341, i32 0, i32 0
  %343 = load i32, i32* %342, align 8
  %344 = load %struct.necp_kernel_socket_policy**, %struct.necp_kernel_socket_policy*** %14, align 8
  %345 = load i32, i32* %33, align 4
  %346 = sext i32 %345 to i64
  %347 = getelementptr inbounds %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %344, i64 %346
  %348 = load %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %347, align 8
  %349 = getelementptr inbounds %struct.necp_kernel_socket_policy, %struct.necp_kernel_socket_policy* %348, i32 0, i32 2
  %350 = load i64, i64* %349, align 8
  %351 = inttoptr i64 %350 to i8*
  %352 = call i32 (i32, i8*, i32, i32, i32, i32, i8*, ...) @NECPLOG(i32 %331, i8* getelementptr inbounds ([97 x i8], [97 x i8]* @.str.2, i64 0, i64 0), i32 %334, i32 %337, i32 %340, i32 %343, i8* %351)
  br label %353

353:                                              ; preds = %330, %319
  br label %354

354:                                              ; preds = %353, %315, %312
  %355 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %356 = icmp ne %struct.TYPE_7__* %355, null
  br i1 %356, label %357, label %421

357:                                              ; preds = %354
  %358 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %359 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %358, i32 0, i32 0
  %360 = load i8*, i8** %359, align 8
  %361 = icmp eq i8* %360, null
  br i1 %361, label %362, label %421

362:                                              ; preds = %357
  %363 = load %struct.necp_kernel_socket_policy**, %struct.necp_kernel_socket_policy*** %14, align 8
  %364 = load i32, i32* %33, align 4
  %365 = sext i32 %364 to i64
  %366 = getelementptr inbounds %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %363, i64 %365
  %367 = load %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %366, align 8
  %368 = getelementptr inbounds %struct.necp_kernel_socket_policy, %struct.necp_kernel_socket_policy* %367, i32 0, i32 4
  %369 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %368, i32 0, i32 3
  %370 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %369, i32 0, i32 0
  %371 = load i8*, i8** %370, align 8
  %372 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %373 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %372, i32 0, i32 0
  store i8* %371, i8** %373, align 8
  %374 = load %struct.necp_kernel_socket_policy**, %struct.necp_kernel_socket_policy*** %14, align 8
  %375 = load i32, i32* %33, align 4
  %376 = sext i32 %375 to i64
  %377 = getelementptr inbounds %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %374, i64 %376
  %378 = load %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %377, align 8
  %379 = getelementptr inbounds %struct.necp_kernel_socket_policy, %struct.necp_kernel_socket_policy* %378, i32 0, i32 4
  %380 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %379, i32 0, i32 3
  %381 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %380, i32 0, i32 1
  %382 = load i64, i64* %381, align 8
  %383 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %384 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %383, i32 0, i32 1
  store i64 %382, i64* %384, align 8
  %385 = load i32, i32* @necp_debug, align 4
  %386 = icmp sgt i32 %385, 1
  br i1 %386, label %387, label %420

387:                                              ; preds = %362
  %388 = load i32, i32* @LOG_DEBUG, align 4
  %389 = load %struct.necp_socket_info*, %struct.necp_socket_info** %15, align 8
  %390 = getelementptr inbounds %struct.necp_socket_info, %struct.necp_socket_info* %389, i32 0, i32 3
  %391 = load i32, i32* %390, align 4
  %392 = load %struct.necp_socket_info*, %struct.necp_socket_info** %15, align 8
  %393 = getelementptr inbounds %struct.necp_socket_info, %struct.necp_socket_info* %392, i32 0, i32 2
  %394 = load i32, i32* %393, align 8
  %395 = load %struct.necp_socket_info*, %struct.necp_socket_info** %15, align 8
  %396 = getelementptr inbounds %struct.necp_socket_info, %struct.necp_socket_info* %395, i32 0, i32 1
  %397 = load i32, i32* %396, align 4
  %398 = load %struct.necp_socket_info*, %struct.necp_socket_info** %15, align 8
  %399 = getelementptr inbounds %struct.necp_socket_info, %struct.necp_socket_info* %398, i32 0, i32 0
  %400 = load i32, i32* %399, align 8
  %401 = load %struct.necp_kernel_socket_policy**, %struct.necp_kernel_socket_policy*** %14, align 8
  %402 = load i32, i32* %33, align 4
  %403 = sext i32 %402 to i64
  %404 = getelementptr inbounds %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %401, i64 %403
  %405 = load %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %404, align 8
  %406 = getelementptr inbounds %struct.necp_kernel_socket_policy, %struct.necp_kernel_socket_policy* %405, i32 0, i32 4
  %407 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %406, i32 0, i32 3
  %408 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %407, i32 0, i32 0
  %409 = load i8*, i8** %408, align 8
  %410 = load %struct.necp_kernel_socket_policy**, %struct.necp_kernel_socket_policy*** %14, align 8
  %411 = load i32, i32* %33, align 4
  %412 = sext i32 %411 to i64
  %413 = getelementptr inbounds %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %410, i64 %412
  %414 = load %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %413, align 8
  %415 = getelementptr inbounds %struct.necp_kernel_socket_policy, %struct.necp_kernel_socket_policy* %414, i32 0, i32 4
  %416 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %415, i32 0, i32 3
  %417 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %416, i32 0, i32 1
  %418 = load i64, i64* %417, align 8
  %419 = call i32 (i32, i8*, i32, i32, i32, i32, i8*, ...) @NECPLOG(i32 %388, i8* getelementptr inbounds ([101 x i8], [101 x i8]* @.str.3, i64 0, i64 0), i32 %391, i32 %394, i32 %397, i32 %400, i8* %409, i64 %418)
  br label %420

420:                                              ; preds = %387, %362
  br label %421

421:                                              ; preds = %420, %357, %354
  br label %570

422:                                              ; preds = %304
  %423 = load %struct.necp_kernel_socket_policy**, %struct.necp_kernel_socket_policy*** %14, align 8
  %424 = load i32, i32* %33, align 4
  %425 = sext i32 %424 to i64
  %426 = getelementptr inbounds %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %423, i64 %425
  %427 = load %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %426, align 8
  %428 = getelementptr inbounds %struct.necp_kernel_socket_policy, %struct.necp_kernel_socket_policy* %427, i32 0, i32 2
  %429 = load i64, i64* %428, align 8
  %430 = load i64, i64* @NECP_KERNEL_POLICY_RESULT_USE_NETAGENT, align 8
  %431 = icmp eq i64 %429, %430
  br i1 %431, label %442, label %432

432:                                              ; preds = %422
  %433 = load %struct.necp_kernel_socket_policy**, %struct.necp_kernel_socket_policy*** %14, align 8
  %434 = load i32, i32* %33, align 4
  %435 = sext i32 %434 to i64
  %436 = getelementptr inbounds %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %433, i64 %435
  %437 = load %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %436, align 8
  %438 = getelementptr inbounds %struct.necp_kernel_socket_policy, %struct.necp_kernel_socket_policy* %437, i32 0, i32 2
  %439 = load i64, i64* %438, align 8
  %440 = load i64, i64* @NECP_KERNEL_POLICY_RESULT_NETAGENT_SCOPED, align 8
  %441 = icmp eq i64 %439, %440
  br i1 %441, label %442, label %521

442:                                              ; preds = %432, %422
  %443 = load i64*, i64** %20, align 8
  %444 = icmp ne i64* %443, null
  br i1 %444, label %445, label %520

445:                                              ; preds = %442
  %446 = load i64, i64* %34, align 8
  %447 = load i64, i64* %22, align 8
  %448 = icmp ult i64 %446, %447
  br i1 %448, label %449, label %520

449:                                              ; preds = %445
  %450 = load %struct.necp_kernel_socket_policy**, %struct.necp_kernel_socket_policy*** %14, align 8
  %451 = load i32, i32* %33, align 4
  %452 = sext i32 %451 to i64
  %453 = getelementptr inbounds %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %450, i64 %452
  %454 = load %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %453, align 8
  %455 = getelementptr inbounds %struct.necp_kernel_socket_policy, %struct.necp_kernel_socket_policy* %454, i32 0, i32 4
  %456 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %455, i32 0, i32 1
  %457 = load i64, i64* %456, align 8
  %458 = load i64*, i64** %20, align 8
  %459 = load i64, i64* %34, align 8
  %460 = getelementptr inbounds i64, i64* %458, i64 %459
  store i64 %457, i64* %460, align 8
  %461 = load i64*, i64** %21, align 8
  %462 = icmp ne i64* %461, null
  br i1 %462, label %463, label %480

463:                                              ; preds = %449
  %464 = load %struct.necp_kernel_socket_policy**, %struct.necp_kernel_socket_policy*** %14, align 8
  %465 = load i32, i32* %33, align 4
  %466 = sext i32 %465 to i64
  %467 = getelementptr inbounds %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %464, i64 %466
  %468 = load %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %467, align 8
  %469 = getelementptr inbounds %struct.necp_kernel_socket_policy, %struct.necp_kernel_socket_policy* %468, i32 0, i32 2
  %470 = load i64, i64* %469, align 8
  %471 = load i64, i64* @NECP_KERNEL_POLICY_RESULT_NETAGENT_SCOPED, align 8
  %472 = icmp eq i64 %470, %471
  br i1 %472, label %473, label %480

473:                                              ; preds = %463
  %474 = load i64, i64* @NECP_AGENT_USE_FLAG_SCOPE, align 8
  %475 = load i64*, i64** %21, align 8
  %476 = load i64, i64* %34, align 8
  %477 = getelementptr inbounds i64, i64* %475, i64 %476
  %478 = load i64, i64* %477, align 8
  %479 = or i64 %478, %474
  store i64 %479, i64* %477, align 8
  br label %480

480:                                              ; preds = %473, %463, %449
  %481 = load i64, i64* %34, align 8
  %482 = add i64 %481, 1
  store i64 %482, i64* %34, align 8
  %483 = load i32, i32* @necp_debug, align 4
  %484 = icmp sgt i32 %483, 1
  br i1 %484, label %485, label %519

485:                                              ; preds = %480
  %486 = load i32, i32* @LOG_DEBUG, align 4
  %487 = load %struct.necp_socket_info*, %struct.necp_socket_info** %15, align 8
  %488 = getelementptr inbounds %struct.necp_socket_info, %struct.necp_socket_info* %487, i32 0, i32 3
  %489 = load i32, i32* %488, align 4
  %490 = load %struct.necp_socket_info*, %struct.necp_socket_info** %15, align 8
  %491 = getelementptr inbounds %struct.necp_socket_info, %struct.necp_socket_info* %490, i32 0, i32 2
  %492 = load i32, i32* %491, align 8
  %493 = load %struct.necp_socket_info*, %struct.necp_socket_info** %15, align 8
  %494 = getelementptr inbounds %struct.necp_socket_info, %struct.necp_socket_info* %493, i32 0, i32 1
  %495 = load i32, i32* %494, align 4
  %496 = load %struct.necp_socket_info*, %struct.necp_socket_info** %15, align 8
  %497 = getelementptr inbounds %struct.necp_socket_info, %struct.necp_socket_info* %496, i32 0, i32 0
  %498 = load i32, i32* %497, align 8
  %499 = load %struct.necp_kernel_socket_policy**, %struct.necp_kernel_socket_policy*** %14, align 8
  %500 = load i32, i32* %33, align 4
  %501 = sext i32 %500 to i64
  %502 = getelementptr inbounds %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %499, i64 %501
  %503 = load %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %502, align 8
  %504 = getelementptr inbounds %struct.necp_kernel_socket_policy, %struct.necp_kernel_socket_policy* %503, i32 0, i32 2
  %505 = load i64, i64* %504, align 8
  %506 = load i64, i64* @NECP_KERNEL_POLICY_RESULT_USE_NETAGENT, align 8
  %507 = icmp eq i64 %505, %506
  %508 = zext i1 %507 to i64
  %509 = select i1 %507, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0)
  %510 = load %struct.necp_kernel_socket_policy**, %struct.necp_kernel_socket_policy*** %14, align 8
  %511 = load i32, i32* %33, align 4
  %512 = sext i32 %511 to i64
  %513 = getelementptr inbounds %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %510, i64 %512
  %514 = load %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %513, align 8
  %515 = getelementptr inbounds %struct.necp_kernel_socket_policy, %struct.necp_kernel_socket_policy* %514, i32 0, i32 4
  %516 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %515, i32 0, i32 1
  %517 = load i64, i64* %516, align 8
  %518 = call i32 (i32, i8*, i32, i32, i32, i32, i8*, ...) @NECPLOG(i32 %486, i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str.4, i64 0, i64 0), i32 %489, i32 %492, i32 %495, i32 %498, i8* %509, i64 %517)
  br label %519

519:                                              ; preds = %485, %480
  br label %520

520:                                              ; preds = %519, %445, %442
  br label %570

521:                                              ; preds = %432
  br label %522

522:                                              ; preds = %521
  br label %523

523:                                              ; preds = %522
  br label %524

524:                                              ; preds = %523
  %525 = load %struct.necp_kernel_socket_policy**, %struct.necp_kernel_socket_policy*** %14, align 8
  %526 = load i32, i32* %33, align 4
  %527 = sext i32 %526 to i64
  %528 = getelementptr inbounds %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %525, i64 %527
  %529 = load %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %528, align 8
  %530 = getelementptr inbounds %struct.necp_kernel_socket_policy, %struct.necp_kernel_socket_policy* %529, i32 0, i32 2
  %531 = load i64, i64* %530, align 8
  %532 = load i64, i64* @NECP_KERNEL_POLICY_RESULT_SKIP, align 8
  %533 = icmp eq i64 %531, %532
  br i1 %533, label %534, label %563

534:                                              ; preds = %524
  %535 = load %struct.necp_kernel_socket_policy**, %struct.necp_kernel_socket_policy*** %14, align 8
  %536 = load i32, i32* %33, align 4
  %537 = sext i32 %536 to i64
  %538 = getelementptr inbounds %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %535, i64 %537
  %539 = load %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %538, align 8
  %540 = getelementptr inbounds %struct.necp_kernel_socket_policy, %struct.necp_kernel_socket_policy* %539, i32 0, i32 4
  %541 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %540, i32 0, i32 2
  %542 = load i64, i64* %541, align 8
  store i64 %542, i64* %28, align 8
  %543 = load %struct.necp_kernel_socket_policy**, %struct.necp_kernel_socket_policy*** %14, align 8
  %544 = load i32, i32* %33, align 4
  %545 = sext i32 %544 to i64
  %546 = getelementptr inbounds %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %543, i64 %545
  %547 = load %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %546, align 8
  %548 = getelementptr inbounds %struct.necp_kernel_socket_policy, %struct.necp_kernel_socket_policy* %547, i32 0, i32 0
  %549 = load i64, i64* %548, align 8
  %550 = add nsw i64 %549, 1
  store i64 %550, i64* %29, align 8
  %551 = load i32*, i32** %26, align 8
  %552 = icmp ne i32* %551, null
  br i1 %552, label %553, label %562

553:                                              ; preds = %534
  %554 = load %struct.necp_kernel_socket_policy**, %struct.necp_kernel_socket_policy*** %14, align 8
  %555 = load i32, i32* %33, align 4
  %556 = sext i32 %555 to i64
  %557 = getelementptr inbounds %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %554, i64 %556
  %558 = load %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %557, align 8
  %559 = getelementptr inbounds %struct.necp_kernel_socket_policy, %struct.necp_kernel_socket_policy* %558, i32 0, i32 3
  %560 = load i32, i32* %559, align 8
  %561 = load i32*, i32** %26, align 8
  store i32 %560, i32* %561, align 4
  br label %562

562:                                              ; preds = %553, %534
  br label %570

563:                                              ; preds = %524
  %564 = load %struct.necp_kernel_socket_policy**, %struct.necp_kernel_socket_policy*** %14, align 8
  %565 = load i32, i32* %33, align 4
  %566 = sext i32 %565 to i64
  %567 = getelementptr inbounds %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %564, i64 %566
  %568 = load %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %567, align 8
  store %struct.necp_kernel_socket_policy* %568, %struct.necp_kernel_socket_policy** %27, align 8
  br label %573

569:                                              ; preds = %145
  br label %570

570:                                              ; preds = %569, %562, %520, %421, %303, %245, %143, %137
  %571 = load i32, i32* %33, align 4
  %572 = add nsw i32 %571, 1
  store i32 %572, i32* %33, align 4
  br label %89

573:                                              ; preds = %563, %109, %89
  br label %574

574:                                              ; preds = %573, %85
  %575 = load i64, i64* %32, align 8
  %576 = icmp eq i64 %575, 1
  br i1 %576, label %577, label %581

577:                                              ; preds = %574
  %578 = getelementptr inbounds i64, i64* %40, i64 0
  %579 = load i64, i64* %578, align 16
  %580 = load i64*, i64** %17, align 8
  store i64 %579, i64* %580, align 8
  br label %588

581:                                              ; preds = %574
  %582 = load i64, i64* %32, align 8
  %583 = icmp ugt i64 %582, 1
  br i1 %583, label %584, label %587

584:                                              ; preds = %581
  %585 = call i64 @necp_create_aggregate_route_rule(i64* %40)
  %586 = load i64*, i64** %17, align 8
  store i64 %585, i64* %586, align 8
  br label %587

587:                                              ; preds = %584, %581
  br label %588

588:                                              ; preds = %587, %577
  %589 = load %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %27, align 8
  %590 = load i8*, i8** %30, align 8
  call void @llvm.stackrestore(i8* %590)
  ret %struct.necp_kernel_socket_policy* %589
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @necp_trim_dots_and_stars(i64, i32) #2

declare dso_local i32 @strlen(i64) #2

declare dso_local i32 @necp_count_dots(i32, i32) #2

declare dso_local i64 @necp_socket_check_policy(%struct.necp_kernel_socket_policy*, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32*, i32*, %struct.necp_client_parameter_netagent_type*, i64, i32) #2

declare dso_local i32 @NECPLOG(i32, i8*, i32, i32, i32, i32, i8*, ...) #2

declare dso_local i64 @necp_kernel_socket_result_is_trigger_service_type(%struct.necp_kernel_socket_policy*) #2

declare dso_local i64 @necp_create_aggregate_route_rule(i64*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
