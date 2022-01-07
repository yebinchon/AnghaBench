; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_necp.c_necp_policy_unapply.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_necp.c_necp_policy_unapply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.necp_session_policy = type { i64, i64*, i64*, i32, i32*, i32, i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@necp_kernel_policy_lock = common dso_local global i32 0, align 4
@LCK_RW_ASSERT_EXCLUSIVE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@necp_uuid_app_id_mappings_dirty = common dso_local global i32 0, align 4
@necp_num_uuid_app_id_mappings = common dso_local global i32 0, align 4
@necp_account_id_list = common dso_local global i32 0, align 4
@M_NECP = common dso_local global i32 0, align 4
@necp_route_rules = common dso_local global i32 0, align 4
@MAX_KERNEL_SOCKET_POLICIES = common dso_local global i32 0, align 4
@MAX_KERNEL_IP_OUTPUT_POLICIES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.necp_session_policy*)* @necp_policy_unapply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @necp_policy_unapply(%struct.necp_session_policy* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.necp_session_policy*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.necp_session_policy* %0, %struct.necp_session_policy** %3, align 8
  store i32 0, i32* %4, align 4
  %6 = load %struct.necp_session_policy*, %struct.necp_session_policy** %3, align 8
  %7 = icmp eq %struct.necp_session_policy* %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = load i32, i32* @FALSE, align 4
  store i32 %9, i32* %2, align 4
  br label %169

10:                                               ; preds = %1
  %11 = load i32, i32* @LCK_RW_ASSERT_EXCLUSIVE, align 4
  %12 = call i32 @LCK_RW_ASSERT(i32* @necp_kernel_policy_lock, i32 %11)
  %13 = load %struct.necp_session_policy*, %struct.necp_session_policy** %3, align 8
  %14 = getelementptr inbounds %struct.necp_session_policy, %struct.necp_session_policy* %13, i32 0, i32 7
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @uuid_is_null(i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %38, label %18

18:                                               ; preds = %10
  %19 = load i32, i32* @FALSE, align 4
  store i32 %19, i32* %5, align 4
  %20 = load %struct.necp_session_policy*, %struct.necp_session_policy** %3, align 8
  %21 = getelementptr inbounds %struct.necp_session_policy, %struct.necp_session_policy* %20, i32 0, i32 7
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @TRUE, align 4
  %24 = call i64 @necp_remove_uuid_app_id_mapping(i32 %22, i32* %5, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %18
  %27 = load i32, i32* %5, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %26
  %30 = load i32, i32* @TRUE, align 4
  store i32 %30, i32* @necp_uuid_app_id_mappings_dirty, align 4
  %31 = load i32, i32* @necp_num_uuid_app_id_mappings, align 4
  %32 = add nsw i32 %31, -1
  store i32 %32, i32* @necp_num_uuid_app_id_mappings, align 4
  br label %33

33:                                               ; preds = %29, %26, %18
  %34 = load %struct.necp_session_policy*, %struct.necp_session_policy** %3, align 8
  %35 = getelementptr inbounds %struct.necp_session_policy, %struct.necp_session_policy* %34, i32 0, i32 7
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @uuid_clear(i32 %36)
  br label %38

38:                                               ; preds = %33, %10
  %39 = load %struct.necp_session_policy*, %struct.necp_session_policy** %3, align 8
  %40 = getelementptr inbounds %struct.necp_session_policy, %struct.necp_session_policy* %39, i32 0, i32 6
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @uuid_is_null(i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %54, label %44

44:                                               ; preds = %38
  %45 = load %struct.necp_session_policy*, %struct.necp_session_policy** %3, align 8
  %46 = getelementptr inbounds %struct.necp_session_policy, %struct.necp_session_policy* %45, i32 0, i32 6
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @FALSE, align 4
  %49 = call i64 @necp_remove_uuid_app_id_mapping(i32 %47, i32* null, i32 %48)
  %50 = load %struct.necp_session_policy*, %struct.necp_session_policy** %3, align 8
  %51 = getelementptr inbounds %struct.necp_session_policy, %struct.necp_session_policy* %50, i32 0, i32 6
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @uuid_clear(i32 %52)
  br label %54

54:                                               ; preds = %44, %38
  %55 = load %struct.necp_session_policy*, %struct.necp_session_policy** %3, align 8
  %56 = getelementptr inbounds %struct.necp_session_policy, %struct.necp_session_policy* %55, i32 0, i32 5
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @uuid_is_null(i32 %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %69, label %60

60:                                               ; preds = %54
  %61 = load %struct.necp_session_policy*, %struct.necp_session_policy** %3, align 8
  %62 = getelementptr inbounds %struct.necp_session_policy, %struct.necp_session_policy* %61, i32 0, i32 5
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @necp_remove_uuid_service_id_mapping(i32 %63)
  %65 = load %struct.necp_session_policy*, %struct.necp_session_policy** %3, align 8
  %66 = getelementptr inbounds %struct.necp_session_policy, %struct.necp_session_policy* %65, i32 0, i32 5
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @uuid_clear(i32 %67)
  br label %69

69:                                               ; preds = %60, %54
  %70 = load %struct.necp_session_policy*, %struct.necp_session_policy** %3, align 8
  %71 = getelementptr inbounds %struct.necp_session_policy, %struct.necp_session_policy* %70, i32 0, i32 4
  %72 = load i32*, i32** %71, align 8
  %73 = icmp ne i32* %72, null
  br i1 %73, label %74, label %86

74:                                               ; preds = %69
  %75 = load %struct.necp_session_policy*, %struct.necp_session_policy** %3, align 8
  %76 = getelementptr inbounds %struct.necp_session_policy, %struct.necp_session_policy* %75, i32 0, i32 4
  %77 = load i32*, i32** %76, align 8
  %78 = call i32 @necp_remove_string_to_id_mapping(i32* @necp_account_id_list, i32* %77)
  %79 = load %struct.necp_session_policy*, %struct.necp_session_policy** %3, align 8
  %80 = getelementptr inbounds %struct.necp_session_policy, %struct.necp_session_policy* %79, i32 0, i32 4
  %81 = load i32*, i32** %80, align 8
  %82 = load i32, i32* @M_NECP, align 4
  %83 = call i32 @FREE(i32* %81, i32 %82)
  %84 = load %struct.necp_session_policy*, %struct.necp_session_policy** %3, align 8
  %85 = getelementptr inbounds %struct.necp_session_policy, %struct.necp_session_policy* %84, i32 0, i32 4
  store i32* null, i32** %85, align 8
  br label %86

86:                                               ; preds = %74, %69
  %87 = load %struct.necp_session_policy*, %struct.necp_session_policy** %3, align 8
  %88 = getelementptr inbounds %struct.necp_session_policy, %struct.necp_session_policy* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %98

91:                                               ; preds = %86
  %92 = load %struct.necp_session_policy*, %struct.necp_session_policy** %3, align 8
  %93 = getelementptr inbounds %struct.necp_session_policy, %struct.necp_session_policy* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = call i32 @necp_remove_route_rule(i32* @necp_route_rules, i64 %94)
  %96 = load %struct.necp_session_policy*, %struct.necp_session_policy** %3, align 8
  %97 = getelementptr inbounds %struct.necp_session_policy, %struct.necp_session_policy* %96, i32 0, i32 0
  store i64 0, i64* %97, align 8
  br label %98

98:                                               ; preds = %91, %86
  store i32 0, i32* %4, align 4
  br label %99

99:                                               ; preds = %128, %98
  %100 = load i32, i32* %4, align 4
  %101 = load i32, i32* @MAX_KERNEL_SOCKET_POLICIES, align 4
  %102 = icmp slt i32 %100, %101
  br i1 %102, label %103, label %131

103:                                              ; preds = %99
  %104 = load %struct.necp_session_policy*, %struct.necp_session_policy** %3, align 8
  %105 = getelementptr inbounds %struct.necp_session_policy, %struct.necp_session_policy* %104, i32 0, i32 1
  %106 = load i64*, i64** %105, align 8
  %107 = load i32, i32* %4, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i64, i64* %106, i64 %108
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %127

112:                                              ; preds = %103
  %113 = load %struct.necp_session_policy*, %struct.necp_session_policy** %3, align 8
  %114 = getelementptr inbounds %struct.necp_session_policy, %struct.necp_session_policy* %113, i32 0, i32 1
  %115 = load i64*, i64** %114, align 8
  %116 = load i32, i32* %4, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i64, i64* %115, i64 %117
  %119 = load i64, i64* %118, align 8
  %120 = call i32 @necp_kernel_socket_policy_delete(i64 %119)
  %121 = load %struct.necp_session_policy*, %struct.necp_session_policy** %3, align 8
  %122 = getelementptr inbounds %struct.necp_session_policy, %struct.necp_session_policy* %121, i32 0, i32 1
  %123 = load i64*, i64** %122, align 8
  %124 = load i32, i32* %4, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i64, i64* %123, i64 %125
  store i64 0, i64* %126, align 8
  br label %127

127:                                              ; preds = %112, %103
  br label %128

128:                                              ; preds = %127
  %129 = load i32, i32* %4, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %4, align 4
  br label %99

131:                                              ; preds = %99
  store i32 0, i32* %4, align 4
  br label %132

132:                                              ; preds = %161, %131
  %133 = load i32, i32* %4, align 4
  %134 = load i32, i32* @MAX_KERNEL_IP_OUTPUT_POLICIES, align 4
  %135 = icmp slt i32 %133, %134
  br i1 %135, label %136, label %164

136:                                              ; preds = %132
  %137 = load %struct.necp_session_policy*, %struct.necp_session_policy** %3, align 8
  %138 = getelementptr inbounds %struct.necp_session_policy, %struct.necp_session_policy* %137, i32 0, i32 2
  %139 = load i64*, i64** %138, align 8
  %140 = load i32, i32* %4, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i64, i64* %139, i64 %141
  %143 = load i64, i64* %142, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %160

145:                                              ; preds = %136
  %146 = load %struct.necp_session_policy*, %struct.necp_session_policy** %3, align 8
  %147 = getelementptr inbounds %struct.necp_session_policy, %struct.necp_session_policy* %146, i32 0, i32 2
  %148 = load i64*, i64** %147, align 8
  %149 = load i32, i32* %4, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i64, i64* %148, i64 %150
  %152 = load i64, i64* %151, align 8
  %153 = call i32 @necp_kernel_ip_output_policy_delete(i64 %152)
  %154 = load %struct.necp_session_policy*, %struct.necp_session_policy** %3, align 8
  %155 = getelementptr inbounds %struct.necp_session_policy, %struct.necp_session_policy* %154, i32 0, i32 2
  %156 = load i64*, i64** %155, align 8
  %157 = load i32, i32* %4, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i64, i64* %156, i64 %158
  store i64 0, i64* %159, align 8
  br label %160

160:                                              ; preds = %145, %136
  br label %161

161:                                              ; preds = %160
  %162 = load i32, i32* %4, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %4, align 4
  br label %132

164:                                              ; preds = %132
  %165 = load i32, i32* @FALSE, align 4
  %166 = load %struct.necp_session_policy*, %struct.necp_session_policy** %3, align 8
  %167 = getelementptr inbounds %struct.necp_session_policy, %struct.necp_session_policy* %166, i32 0, i32 3
  store i32 %165, i32* %167, align 8
  %168 = load i32, i32* @TRUE, align 4
  store i32 %168, i32* %2, align 4
  br label %169

169:                                              ; preds = %164, %8
  %170 = load i32, i32* %2, align 4
  ret i32 %170
}

declare dso_local i32 @LCK_RW_ASSERT(i32*, i32) #1

declare dso_local i32 @uuid_is_null(i32) #1

declare dso_local i64 @necp_remove_uuid_app_id_mapping(i32, i32*, i32) #1

declare dso_local i32 @uuid_clear(i32) #1

declare dso_local i32 @necp_remove_uuid_service_id_mapping(i32) #1

declare dso_local i32 @necp_remove_string_to_id_mapping(i32*, i32*) #1

declare dso_local i32 @FREE(i32*, i32) #1

declare dso_local i32 @necp_remove_route_rule(i32*, i64) #1

declare dso_local i32 @necp_kernel_socket_policy_delete(i64) #1

declare dso_local i32 @necp_kernel_ip_output_policy_delete(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
