; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_necp_client.c_necp_client_lookup_bb_radio_manager.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_necp_client.c_necp_client_lookup_bb_radio_manager.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.necp_client = type { i64, i32, i32 }
%struct.necp_aggregate_result = type { i32* }

@NETAGENT_DOMAINSIZE = common dso_local global i32 0, align 4
@NETAGENT_TYPESIZE = common dso_local global i32 0, align 4
@PROC_NULL = common dso_local global i64 0, align 8
@ESRCH = common dso_local global i32 0, align 4
@NECP_MAX_NETAGENTS = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@NETAGENT_DOMAIN_RADIO_MANAGER = common dso_local global i32 0, align 4
@NETAGENT_TYPE_RADIO_MANAGER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.necp_client*, i32)* @necp_client_lookup_bb_radio_manager to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @necp_client_lookup_bb_radio_manager(%struct.necp_client* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.necp_client*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.necp_aggregate_result, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.necp_client* %0, %struct.necp_client** %4, align 8
  store i32 %1, i32* %5, align 4
  %14 = load i32, i32* @NETAGENT_DOMAINSIZE, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %6, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %7, align 8
  %18 = load i32, i32* @NETAGENT_TYPESIZE, align 4
  %19 = zext i32 %18 to i64
  %20 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %8, align 8
  %21 = load %struct.necp_client*, %struct.necp_client** %4, align 8
  %22 = getelementptr inbounds %struct.necp_client, %struct.necp_client* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @proc_find(i32 %23)
  store i64 %24, i64* %10, align 8
  %25 = load i64, i64* %10, align 8
  %26 = load i64, i64* @PROC_NULL, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %2
  %29 = load i32, i32* @ESRCH, align 4
  store i32 %29, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %104

30:                                               ; preds = %2
  %31 = load i64, i64* %10, align 8
  %32 = load %struct.necp_client*, %struct.necp_client** %4, align 8
  %33 = getelementptr inbounds %struct.necp_client, %struct.necp_client* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.necp_client*, %struct.necp_client** %4, align 8
  %36 = getelementptr inbounds %struct.necp_client, %struct.necp_client* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = trunc i64 %37 to i32
  %39 = call i32 @necp_application_find_policy_match_internal(i64 %31, i32 %34, i32 %38, %struct.necp_aggregate_result* %9, i32* null, i32 0, i32* null, i32* null, i32* null, i32 1)
  store i32 %39, i32* %11, align 4
  %40 = load i64, i64* %10, align 8
  %41 = call i32 @proc_rele(i64 %40)
  %42 = load i64, i64* @PROC_NULL, align 8
  store i64 %42, i64* %10, align 8
  %43 = load i32, i32* %11, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %30
  %46 = load i32, i32* %11, align 4
  store i32 %46, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %104

47:                                               ; preds = %30
  store i32 0, i32* %13, align 4
  br label %48

48:                                               ; preds = %100, %47
  %49 = load i32, i32* %13, align 4
  %50 = load i32, i32* @NECP_MAX_NETAGENTS, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %103

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.necp_aggregate_result, %struct.necp_aggregate_result* %9, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* %13, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = call i64 @uuid_is_null(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %52
  br label %103

62:                                               ; preds = %52
  %63 = bitcast i8* %17 to i8**
  %64 = load i32, i32* @NETAGENT_DOMAINSIZE, align 4
  %65 = call i32 @memset(i8** %63, i32 0, i32 %64)
  %66 = bitcast i8* %20 to i8**
  %67 = load i32, i32* @NETAGENT_TYPESIZE, align 4
  %68 = call i32 @memset(i8** %66, i32 0, i32 %67)
  %69 = getelementptr inbounds %struct.necp_aggregate_result, %struct.necp_aggregate_result* %9, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %13, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = call i64 @netagent_get_agent_domain_and_type(i32 %74, i8* %17, i8* %20)
  %76 = load i64, i64* @FALSE, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %62
  br label %100

79:                                               ; preds = %62
  %80 = load i32, i32* @NETAGENT_DOMAIN_RADIO_MANAGER, align 4
  %81 = load i32, i32* @NETAGENT_DOMAINSIZE, align 4
  %82 = call i64 @strncmp(i8* %17, i32 %80, i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %79
  br label %100

85:                                               ; preds = %79
  %86 = load i32, i32* @NETAGENT_TYPE_RADIO_MANAGER, align 4
  %87 = load i32, i32* @NETAGENT_TYPESIZE, align 4
  %88 = call i64 @strncmp(i8* %20, i32 %86, i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %85
  br label %100

91:                                               ; preds = %85
  %92 = load i32, i32* %5, align 4
  %93 = getelementptr inbounds %struct.necp_aggregate_result, %struct.necp_aggregate_result* %9, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = load i32, i32* %13, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @uuid_copy(i32 %92, i32 %98)
  br label %103

100:                                              ; preds = %90, %84, %78
  %101 = load i32, i32* %13, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %13, align 4
  br label %48

103:                                              ; preds = %91, %61, %48
  store i32 0, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %104

104:                                              ; preds = %103, %45, %28
  %105 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %105)
  %106 = load i32, i32* %3, align 4
  ret i32 %106
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @proc_find(i32) #2

declare dso_local i32 @necp_application_find_policy_match_internal(i64, i32, i32, %struct.necp_aggregate_result*, i32*, i32, i32*, i32*, i32*, i32) #2

declare dso_local i32 @proc_rele(i64) #2

declare dso_local i64 @uuid_is_null(i32) #2

declare dso_local i32 @memset(i8**, i32, i32) #2

declare dso_local i64 @netagent_get_agent_domain_and_type(i32, i8*, i8*) #2

declare dso_local i64 @strncmp(i8*, i32, i32) #2

declare dso_local i32 @uuid_copy(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
