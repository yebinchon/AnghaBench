; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_necp.c_necp_ip_output_find_policy_match_locked.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_necp.c_necp_ip_output_find_policy_match_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.necp_kernel_ip_output_policy = type { i64, i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%union.necp_sockaddr_union = type { i32 }

@necp_kernel_ip_output_policies_map = common dso_local global %struct.necp_kernel_ip_output_policy*** null, align 8
@necp_drop_all_order = common dso_local global i64 0, align 8
@NECP_KERNEL_POLICY_RESULT_SKIP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.necp_kernel_ip_output_policy* (i32, i32, i64, i64, i32, %union.necp_sockaddr_union*, %union.necp_sockaddr_union*)* @necp_ip_output_find_policy_match_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.necp_kernel_ip_output_policy* @necp_ip_output_find_policy_match_locked(i32 %0, i32 %1, i64 %2, i64 %3, i32 %4, %union.necp_sockaddr_union* %5, %union.necp_sockaddr_union* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %union.necp_sockaddr_union*, align 8
  %14 = alloca %union.necp_sockaddr_union*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.necp_kernel_ip_output_policy*, align 8
  %19 = alloca %struct.necp_kernel_ip_output_policy**, align 8
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i32 %4, i32* %12, align 4
  store %union.necp_sockaddr_union* %5, %union.necp_sockaddr_union** %13, align 8
  store %union.necp_sockaddr_union* %6, %union.necp_sockaddr_union** %14, align 8
  store i64 0, i64* %15, align 8
  store i64 0, i64* %16, align 8
  store %struct.necp_kernel_ip_output_policy* null, %struct.necp_kernel_ip_output_policy** %18, align 8
  %20 = load %struct.necp_kernel_ip_output_policy***, %struct.necp_kernel_ip_output_policy**** @necp_kernel_ip_output_policies_map, align 8
  %21 = load i32, i32* %8, align 4
  %22 = call i64 @NECP_IP_OUTPUT_MAP_ID_TO_BUCKET(i32 %21)
  %23 = getelementptr inbounds %struct.necp_kernel_ip_output_policy**, %struct.necp_kernel_ip_output_policy*** %20, i64 %22
  %24 = load %struct.necp_kernel_ip_output_policy**, %struct.necp_kernel_ip_output_policy*** %23, align 8
  store %struct.necp_kernel_ip_output_policy** %24, %struct.necp_kernel_ip_output_policy*** %19, align 8
  %25 = load %struct.necp_kernel_ip_output_policy**, %struct.necp_kernel_ip_output_policy*** %19, align 8
  %26 = icmp ne %struct.necp_kernel_ip_output_policy** %25, null
  br i1 %26, label %27, label %137

27:                                               ; preds = %7
  store i32 0, i32* %17, align 4
  br label %28

28:                                               ; preds = %133, %27
  %29 = load %struct.necp_kernel_ip_output_policy**, %struct.necp_kernel_ip_output_policy*** %19, align 8
  %30 = load i32, i32* %17, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.necp_kernel_ip_output_policy*, %struct.necp_kernel_ip_output_policy** %29, i64 %31
  %33 = load %struct.necp_kernel_ip_output_policy*, %struct.necp_kernel_ip_output_policy** %32, align 8
  %34 = icmp ne %struct.necp_kernel_ip_output_policy* %33, null
  br i1 %34, label %35, label %136

35:                                               ; preds = %28
  %36 = load i64, i64* @necp_drop_all_order, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %49

38:                                               ; preds = %35
  %39 = load %struct.necp_kernel_ip_output_policy**, %struct.necp_kernel_ip_output_policy*** %19, align 8
  %40 = load i32, i32* %17, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.necp_kernel_ip_output_policy*, %struct.necp_kernel_ip_output_policy** %39, i64 %41
  %43 = load %struct.necp_kernel_ip_output_policy*, %struct.necp_kernel_ip_output_policy** %42, align 8
  %44 = getelementptr inbounds %struct.necp_kernel_ip_output_policy, %struct.necp_kernel_ip_output_policy* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @necp_drop_all_order, align 8
  %47 = icmp sge i64 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %38
  br label %136

49:                                               ; preds = %38, %35
  %50 = load i64, i64* %16, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %63

52:                                               ; preds = %49
  %53 = load %struct.necp_kernel_ip_output_policy**, %struct.necp_kernel_ip_output_policy*** %19, align 8
  %54 = load i32, i32* %17, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.necp_kernel_ip_output_policy*, %struct.necp_kernel_ip_output_policy** %53, i64 %55
  %57 = load %struct.necp_kernel_ip_output_policy*, %struct.necp_kernel_ip_output_policy** %56, align 8
  %58 = getelementptr inbounds %struct.necp_kernel_ip_output_policy, %struct.necp_kernel_ip_output_policy* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* %16, align 8
  %61 = icmp sge i64 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %52
  store i64 0, i64* %15, align 8
  store i64 0, i64* %16, align 8
  br label %63

63:                                               ; preds = %62, %52, %49
  %64 = load i64, i64* %15, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %79

66:                                               ; preds = %63
  %67 = load %struct.necp_kernel_ip_output_policy**, %struct.necp_kernel_ip_output_policy*** %19, align 8
  %68 = load i32, i32* %17, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.necp_kernel_ip_output_policy*, %struct.necp_kernel_ip_output_policy** %67, i64 %69
  %71 = load %struct.necp_kernel_ip_output_policy*, %struct.necp_kernel_ip_output_policy** %70, align 8
  %72 = getelementptr inbounds %struct.necp_kernel_ip_output_policy, %struct.necp_kernel_ip_output_policy* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* %15, align 8
  %75 = icmp slt i64 %73, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %66
  br label %133

77:                                               ; preds = %66
  store i64 0, i64* %15, align 8
  store i64 0, i64* %16, align 8
  br label %78

78:                                               ; preds = %77
  br label %84

79:                                               ; preds = %63
  %80 = load i64, i64* %16, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %79
  br label %133

83:                                               ; preds = %79
  br label %84

84:                                               ; preds = %83, %78
  %85 = load %struct.necp_kernel_ip_output_policy**, %struct.necp_kernel_ip_output_policy*** %19, align 8
  %86 = load i32, i32* %17, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.necp_kernel_ip_output_policy*, %struct.necp_kernel_ip_output_policy** %85, i64 %87
  %89 = load %struct.necp_kernel_ip_output_policy*, %struct.necp_kernel_ip_output_policy** %88, align 8
  %90 = load i32, i32* %8, align 4
  %91 = load i32, i32* %9, align 4
  %92 = load i64, i64* %10, align 8
  %93 = load i64, i64* %11, align 8
  %94 = load i32, i32* %12, align 4
  %95 = load %union.necp_sockaddr_union*, %union.necp_sockaddr_union** %13, align 8
  %96 = load %union.necp_sockaddr_union*, %union.necp_sockaddr_union** %14, align 8
  %97 = call i64 @necp_ip_output_check_policy(%struct.necp_kernel_ip_output_policy* %89, i32 %90, i32 %91, i64 %92, i64 %93, i32 %94, %union.necp_sockaddr_union* %95, %union.necp_sockaddr_union* %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %132

99:                                               ; preds = %84
  %100 = load %struct.necp_kernel_ip_output_policy**, %struct.necp_kernel_ip_output_policy*** %19, align 8
  %101 = load i32, i32* %17, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.necp_kernel_ip_output_policy*, %struct.necp_kernel_ip_output_policy** %100, i64 %102
  %104 = load %struct.necp_kernel_ip_output_policy*, %struct.necp_kernel_ip_output_policy** %103, align 8
  store %struct.necp_kernel_ip_output_policy* %104, %struct.necp_kernel_ip_output_policy** %18, align 8
  %105 = load %struct.necp_kernel_ip_output_policy**, %struct.necp_kernel_ip_output_policy*** %19, align 8
  %106 = load i32, i32* %17, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.necp_kernel_ip_output_policy*, %struct.necp_kernel_ip_output_policy** %105, i64 %107
  %109 = load %struct.necp_kernel_ip_output_policy*, %struct.necp_kernel_ip_output_policy** %108, align 8
  %110 = getelementptr inbounds %struct.necp_kernel_ip_output_policy, %struct.necp_kernel_ip_output_policy* %109, i32 0, i32 2
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @NECP_KERNEL_POLICY_RESULT_SKIP, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %114, label %131

114:                                              ; preds = %99
  %115 = load %struct.necp_kernel_ip_output_policy**, %struct.necp_kernel_ip_output_policy*** %19, align 8
  %116 = load i32, i32* %17, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.necp_kernel_ip_output_policy*, %struct.necp_kernel_ip_output_policy** %115, i64 %117
  %119 = load %struct.necp_kernel_ip_output_policy*, %struct.necp_kernel_ip_output_policy** %118, align 8
  %120 = getelementptr inbounds %struct.necp_kernel_ip_output_policy, %struct.necp_kernel_ip_output_policy* %119, i32 0, i32 3
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  store i64 %122, i64* %15, align 8
  %123 = load %struct.necp_kernel_ip_output_policy**, %struct.necp_kernel_ip_output_policy*** %19, align 8
  %124 = load i32, i32* %17, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.necp_kernel_ip_output_policy*, %struct.necp_kernel_ip_output_policy** %123, i64 %125
  %127 = load %struct.necp_kernel_ip_output_policy*, %struct.necp_kernel_ip_output_policy** %126, align 8
  %128 = getelementptr inbounds %struct.necp_kernel_ip_output_policy, %struct.necp_kernel_ip_output_policy* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = add nsw i64 %129, 1
  store i64 %130, i64* %16, align 8
  br label %133

131:                                              ; preds = %99
  br label %136

132:                                              ; preds = %84
  br label %133

133:                                              ; preds = %132, %114, %82, %76
  %134 = load i32, i32* %17, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %17, align 4
  br label %28

136:                                              ; preds = %131, %48, %28
  br label %137

137:                                              ; preds = %136, %7
  %138 = load %struct.necp_kernel_ip_output_policy*, %struct.necp_kernel_ip_output_policy** %18, align 8
  ret %struct.necp_kernel_ip_output_policy* %138
}

declare dso_local i64 @NECP_IP_OUTPUT_MAP_ID_TO_BUCKET(i32) #1

declare dso_local i64 @necp_ip_output_check_policy(%struct.necp_kernel_ip_output_policy*, i32, i32, i64, i64, i32, %union.necp_sockaddr_union*, %union.necp_sockaddr_union*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
