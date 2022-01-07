; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_necp.c_necp_application_fillout_info_locked.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_necp.c_necp_application_fillout_info_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.necp_sockaddr_union = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.necp_socket_info = type { i64, i8*, i32, i32, i32, i32, i32, i8*, i8*, i32, i32, i32 }
%struct.necp_uuid_id_mapping = type { i32 }
%struct.necp_string_id_mapping = type { i32 }

@necp_kernel_application_policies_condition_mask = common dso_local global i32 0, align 4
@NECP_KERNEL_CONDITION_ENTITLEMENT = common dso_local global i32 0, align 4
@PRIV_NET_PRIVILEGED_NECP_MATCH = common dso_local global i32 0, align 4
@NECP_KERNEL_CONDITION_APP_ID = common dso_local global i32 0, align 4
@NECP_KERNEL_CONDITION_REAL_APP_ID = common dso_local global i32 0, align 4
@NECP_KERNEL_CONDITION_ACCOUNT_ID = common dso_local global i32 0, align 4
@necp_account_id_list = common dso_local global i32 0, align 4
@NECP_KERNEL_CONDITION_DOMAIN = common dso_local global i32 0, align 4
@NECP_KERNEL_ADDRESS_TYPE_CONDITIONS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i8*, i8*, i32, i32, i32, i8*, i8*, %union.necp_sockaddr_union*, %union.necp_sockaddr_union*, i32*, %struct.necp_socket_info*)* @necp_application_fillout_info_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @necp_application_fillout_info_locked(i32 %0, i32 %1, i8* %2, i8* %3, i32 %4, i32 %5, i32 %6, i8* %7, i8* %8, %union.necp_sockaddr_union* %9, %union.necp_sockaddr_union* %10, i32* %11, %struct.necp_socket_info* %12) #0 {
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca %union.necp_sockaddr_union*, align 8
  %24 = alloca %union.necp_sockaddr_union*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca %struct.necp_socket_info*, align 8
  %27 = alloca %struct.necp_uuid_id_mapping*, align 8
  %28 = alloca %struct.necp_uuid_id_mapping*, align 8
  %29 = alloca %struct.necp_string_id_mapping*, align 8
  store i32 %0, i32* %14, align 4
  store i32 %1, i32* %15, align 4
  store i8* %2, i8** %16, align 8
  store i8* %3, i8** %17, align 8
  store i32 %4, i32* %18, align 4
  store i32 %5, i32* %19, align 4
  store i32 %6, i32* %20, align 4
  store i8* %7, i8** %21, align 8
  store i8* %8, i8** %22, align 8
  store %union.necp_sockaddr_union* %9, %union.necp_sockaddr_union** %23, align 8
  store %union.necp_sockaddr_union* %10, %union.necp_sockaddr_union** %24, align 8
  store i32* %11, i32** %25, align 8
  store %struct.necp_socket_info* %12, %struct.necp_socket_info** %26, align 8
  %30 = load %struct.necp_socket_info*, %struct.necp_socket_info** %26, align 8
  %31 = call i32 @memset(%struct.necp_socket_info* %30, i32 0, i32 72)
  %32 = load i32, i32* %18, align 4
  %33 = load %struct.necp_socket_info*, %struct.necp_socket_info** %26, align 8
  %34 = getelementptr inbounds %struct.necp_socket_info, %struct.necp_socket_info* %33, i32 0, i32 11
  store i32 %32, i32* %34, align 8
  %35 = load i32, i32* %19, align 4
  %36 = load %struct.necp_socket_info*, %struct.necp_socket_info** %26, align 8
  %37 = getelementptr inbounds %struct.necp_socket_info, %struct.necp_socket_info* %36, i32 0, i32 10
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* %20, align 4
  %39 = load %struct.necp_socket_info*, %struct.necp_socket_info** %26, align 8
  %40 = getelementptr inbounds %struct.necp_socket_info, %struct.necp_socket_info* %39, i32 0, i32 9
  store i32 %38, i32* %40, align 8
  %41 = load i8*, i8** %21, align 8
  %42 = load %struct.necp_socket_info*, %struct.necp_socket_info** %26, align 8
  %43 = getelementptr inbounds %struct.necp_socket_info, %struct.necp_socket_info* %42, i32 0, i32 8
  store i8* %41, i8** %43, align 8
  %44 = load i8*, i8** %22, align 8
  %45 = load %struct.necp_socket_info*, %struct.necp_socket_info** %26, align 8
  %46 = getelementptr inbounds %struct.necp_socket_info, %struct.necp_socket_info* %45, i32 0, i32 7
  store i8* %44, i8** %46, align 8
  %47 = load i32, i32* @necp_kernel_application_policies_condition_mask, align 4
  %48 = load i32, i32* @NECP_KERNEL_CONDITION_ENTITLEMENT, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %70

51:                                               ; preds = %13
  %52 = load i32*, i32** %25, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %54, label %70

54:                                               ; preds = %51
  %55 = load i32*, i32** %25, align 8
  %56 = call i32 @proc_ucred(i32* %55)
  %57 = load i32, i32* @PRIV_NET_PRIVILEGED_NECP_MATCH, align 4
  %58 = call i64 @priv_check_cred(i32 %56, i32 %57, i32 0)
  %59 = load %struct.necp_socket_info*, %struct.necp_socket_info** %26, align 8
  %60 = getelementptr inbounds %struct.necp_socket_info, %struct.necp_socket_info* %59, i32 0, i32 0
  store i64 %58, i64* %60, align 8
  %61 = load %struct.necp_socket_info*, %struct.necp_socket_info** %26, align 8
  %62 = getelementptr inbounds %struct.necp_socket_info, %struct.necp_socket_info* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %54
  %66 = load i32*, i32** %25, align 8
  %67 = load %struct.necp_socket_info*, %struct.necp_socket_info** %26, align 8
  %68 = call i32 @necp_get_parent_cred_result(i32* %66, %struct.necp_socket_info* %67)
  br label %69

69:                                               ; preds = %65, %54
  br label %70

70:                                               ; preds = %69, %51, %13
  %71 = load i32, i32* @necp_kernel_application_policies_condition_mask, align 4
  %72 = load i32, i32* @NECP_KERNEL_CONDITION_APP_ID, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %91

75:                                               ; preds = %70
  %76 = load i32, i32* %14, align 4
  %77 = call i32 @uuid_is_null(i32 %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %91, label %79

79:                                               ; preds = %75
  %80 = load i32, i32* %14, align 4
  %81 = call %struct.necp_uuid_id_mapping* @necp_uuid_lookup_app_id_locked(i32 %80)
  store %struct.necp_uuid_id_mapping* %81, %struct.necp_uuid_id_mapping** %27, align 8
  %82 = load %struct.necp_uuid_id_mapping*, %struct.necp_uuid_id_mapping** %27, align 8
  %83 = icmp ne %struct.necp_uuid_id_mapping* %82, null
  br i1 %83, label %84, label %90

84:                                               ; preds = %79
  %85 = load %struct.necp_uuid_id_mapping*, %struct.necp_uuid_id_mapping** %27, align 8
  %86 = getelementptr inbounds %struct.necp_uuid_id_mapping, %struct.necp_uuid_id_mapping* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.necp_socket_info*, %struct.necp_socket_info** %26, align 8
  %89 = getelementptr inbounds %struct.necp_socket_info, %struct.necp_socket_info* %88, i32 0, i32 6
  store i32 %87, i32* %89, align 8
  br label %90

90:                                               ; preds = %84, %79
  br label %91

91:                                               ; preds = %90, %75, %70
  %92 = load i32, i32* @necp_kernel_application_policies_condition_mask, align 4
  %93 = load i32, i32* @NECP_KERNEL_CONDITION_REAL_APP_ID, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %124

96:                                               ; preds = %91
  %97 = load i32, i32* %15, align 4
  %98 = call i32 @uuid_is_null(i32 %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %124, label %100

100:                                              ; preds = %96
  %101 = load i32, i32* %14, align 4
  %102 = load i32, i32* %15, align 4
  %103 = call i64 @uuid_compare(i32 %101, i32 %102)
  %104 = icmp eq i64 %103, 0
  br i1 %104, label %105, label %111

105:                                              ; preds = %100
  %106 = load %struct.necp_socket_info*, %struct.necp_socket_info** %26, align 8
  %107 = getelementptr inbounds %struct.necp_socket_info, %struct.necp_socket_info* %106, i32 0, i32 6
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.necp_socket_info*, %struct.necp_socket_info** %26, align 8
  %110 = getelementptr inbounds %struct.necp_socket_info, %struct.necp_socket_info* %109, i32 0, i32 5
  store i32 %108, i32* %110, align 4
  br label %123

111:                                              ; preds = %100
  %112 = load i32, i32* %15, align 4
  %113 = call %struct.necp_uuid_id_mapping* @necp_uuid_lookup_app_id_locked(i32 %112)
  store %struct.necp_uuid_id_mapping* %113, %struct.necp_uuid_id_mapping** %28, align 8
  %114 = load %struct.necp_uuid_id_mapping*, %struct.necp_uuid_id_mapping** %28, align 8
  %115 = icmp ne %struct.necp_uuid_id_mapping* %114, null
  br i1 %115, label %116, label %122

116:                                              ; preds = %111
  %117 = load %struct.necp_uuid_id_mapping*, %struct.necp_uuid_id_mapping** %28, align 8
  %118 = getelementptr inbounds %struct.necp_uuid_id_mapping, %struct.necp_uuid_id_mapping* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.necp_socket_info*, %struct.necp_socket_info** %26, align 8
  %121 = getelementptr inbounds %struct.necp_socket_info, %struct.necp_socket_info* %120, i32 0, i32 5
  store i32 %119, i32* %121, align 4
  br label %122

122:                                              ; preds = %116, %111
  br label %123

123:                                              ; preds = %122, %105
  br label %124

124:                                              ; preds = %123, %96, %91
  %125 = load i32, i32* @necp_kernel_application_policies_condition_mask, align 4
  %126 = load i32, i32* @NECP_KERNEL_CONDITION_ACCOUNT_ID, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %144

129:                                              ; preds = %124
  %130 = load i8*, i8** %16, align 8
  %131 = icmp ne i8* %130, null
  br i1 %131, label %132, label %144

132:                                              ; preds = %129
  %133 = load i8*, i8** %16, align 8
  %134 = call %struct.necp_string_id_mapping* @necp_lookup_string_to_id_locked(i32* @necp_account_id_list, i8* %133)
  store %struct.necp_string_id_mapping* %134, %struct.necp_string_id_mapping** %29, align 8
  %135 = load %struct.necp_string_id_mapping*, %struct.necp_string_id_mapping** %29, align 8
  %136 = icmp ne %struct.necp_string_id_mapping* %135, null
  br i1 %136, label %137, label %143

137:                                              ; preds = %132
  %138 = load %struct.necp_string_id_mapping*, %struct.necp_string_id_mapping** %29, align 8
  %139 = getelementptr inbounds %struct.necp_string_id_mapping, %struct.necp_string_id_mapping* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.necp_socket_info*, %struct.necp_socket_info** %26, align 8
  %142 = getelementptr inbounds %struct.necp_socket_info, %struct.necp_socket_info* %141, i32 0, i32 4
  store i32 %140, i32* %142, align 8
  br label %143

143:                                              ; preds = %137, %132
  br label %144

144:                                              ; preds = %143, %129, %124
  %145 = load i32, i32* @necp_kernel_application_policies_condition_mask, align 4
  %146 = load i32, i32* @NECP_KERNEL_CONDITION_DOMAIN, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %153

149:                                              ; preds = %144
  %150 = load i8*, i8** %17, align 8
  %151 = load %struct.necp_socket_info*, %struct.necp_socket_info** %26, align 8
  %152 = getelementptr inbounds %struct.necp_socket_info, %struct.necp_socket_info* %151, i32 0, i32 1
  store i8* %150, i8** %152, align 8
  br label %153

153:                                              ; preds = %149, %144
  %154 = load i32, i32* @necp_kernel_application_policies_condition_mask, align 4
  %155 = load i32, i32* @NECP_KERNEL_ADDRESS_TYPE_CONDITIONS, align 4
  %156 = and i32 %154, %155
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %195

158:                                              ; preds = %153
  %159 = load %union.necp_sockaddr_union*, %union.necp_sockaddr_union** %23, align 8
  %160 = icmp ne %union.necp_sockaddr_union* %159, null
  br i1 %160, label %161, label %176

161:                                              ; preds = %158
  %162 = load %union.necp_sockaddr_union*, %union.necp_sockaddr_union** %23, align 8
  %163 = bitcast %union.necp_sockaddr_union* %162 to %struct.TYPE_2__*
  %164 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = icmp sgt i64 %165, 0
  br i1 %166, label %167, label %176

167:                                              ; preds = %161
  %168 = load %struct.necp_socket_info*, %struct.necp_socket_info** %26, align 8
  %169 = getelementptr inbounds %struct.necp_socket_info, %struct.necp_socket_info* %168, i32 0, i32 3
  %170 = load %union.necp_sockaddr_union*, %union.necp_sockaddr_union** %23, align 8
  %171 = load %union.necp_sockaddr_union*, %union.necp_sockaddr_union** %23, align 8
  %172 = bitcast %union.necp_sockaddr_union* %171 to %struct.TYPE_2__*
  %173 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = call i32 @memcpy(i32* %169, %union.necp_sockaddr_union* %170, i64 %174)
  br label %176

176:                                              ; preds = %167, %161, %158
  %177 = load %union.necp_sockaddr_union*, %union.necp_sockaddr_union** %24, align 8
  %178 = icmp ne %union.necp_sockaddr_union* %177, null
  br i1 %178, label %179, label %194

179:                                              ; preds = %176
  %180 = load %union.necp_sockaddr_union*, %union.necp_sockaddr_union** %24, align 8
  %181 = bitcast %union.necp_sockaddr_union* %180 to %struct.TYPE_2__*
  %182 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = icmp sgt i64 %183, 0
  br i1 %184, label %185, label %194

185:                                              ; preds = %179
  %186 = load %struct.necp_socket_info*, %struct.necp_socket_info** %26, align 8
  %187 = getelementptr inbounds %struct.necp_socket_info, %struct.necp_socket_info* %186, i32 0, i32 2
  %188 = load %union.necp_sockaddr_union*, %union.necp_sockaddr_union** %24, align 8
  %189 = load %union.necp_sockaddr_union*, %union.necp_sockaddr_union** %24, align 8
  %190 = bitcast %union.necp_sockaddr_union* %189 to %struct.TYPE_2__*
  %191 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %190, i32 0, i32 0
  %192 = load i64, i64* %191, align 8
  %193 = call i32 @memcpy(i32* %187, %union.necp_sockaddr_union* %188, i64 %192)
  br label %194

194:                                              ; preds = %185, %179, %176
  br label %195

195:                                              ; preds = %194, %153
  ret void
}

declare dso_local i32 @memset(%struct.necp_socket_info*, i32, i32) #1

declare dso_local i64 @priv_check_cred(i32, i32, i32) #1

declare dso_local i32 @proc_ucred(i32*) #1

declare dso_local i32 @necp_get_parent_cred_result(i32*, %struct.necp_socket_info*) #1

declare dso_local i32 @uuid_is_null(i32) #1

declare dso_local %struct.necp_uuid_id_mapping* @necp_uuid_lookup_app_id_locked(i32) #1

declare dso_local i64 @uuid_compare(i32, i32) #1

declare dso_local %struct.necp_string_id_mapping* @necp_lookup_string_to_id_locked(i32*, i8*) #1

declare dso_local i32 @memcpy(i32*, %union.necp_sockaddr_union*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
