; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_necp_client.c_necp_client_copy_parameters_locked.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_necp_client.c_necp_client_copy_parameters_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.necp_client = type { i32, i32, i32, i64, i32 }
%struct.necp_client_nexus_parameters = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.necp_client_parsed_parameters = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@NECP_PARSED_PARAMETERS_FIELD_EFFECTIVE_PID = common dso_local global i32 0, align 4
@NECP_CLIENT_PARAMETER_FLAG_LISTENER = common dso_local global i32 0, align 4
@NECP_CLIENT_RESULT_FLAG_ALLOW_QOS_MARKING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.necp_client*, %struct.necp_client_nexus_parameters*)* @necp_client_copy_parameters_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @necp_client_copy_parameters_locked(%struct.necp_client* %0, %struct.necp_client_nexus_parameters* %1) #0 {
  %3 = alloca %struct.necp_client*, align 8
  %4 = alloca %struct.necp_client_nexus_parameters*, align 8
  %5 = alloca %struct.necp_client_parsed_parameters, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store %struct.necp_client* %0, %struct.necp_client** %3, align 8
  store %struct.necp_client_nexus_parameters* %1, %struct.necp_client_nexus_parameters** %4, align 8
  %10 = load %struct.necp_client_nexus_parameters*, %struct.necp_client_nexus_parameters** %4, align 8
  %11 = icmp ne %struct.necp_client_nexus_parameters* %10, null
  %12 = zext i1 %11 to i32
  %13 = call i32 @VERIFY(i32 %12)
  %14 = bitcast %struct.necp_client_parsed_parameters* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %14, i8 0, i64 32, i1 false)
  %15 = load %struct.necp_client*, %struct.necp_client** %3, align 8
  %16 = getelementptr inbounds %struct.necp_client, %struct.necp_client* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.necp_client*, %struct.necp_client** %3, align 8
  %19 = getelementptr inbounds %struct.necp_client, %struct.necp_client* %18, i32 0, i32 3
  %20 = load i64, i64* %19, align 8
  %21 = trunc i64 %20 to i32
  %22 = call i32 @necp_client_parse_parameters(i32 %17, i32 %21, %struct.necp_client_parsed_parameters* %5)
  store i32 %22, i32* %6, align 4
  %23 = load %struct.necp_client*, %struct.necp_client** %3, align 8
  %24 = getelementptr inbounds %struct.necp_client, %struct.necp_client* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.necp_client_nexus_parameters*, %struct.necp_client_nexus_parameters** %4, align 8
  %27 = getelementptr inbounds %struct.necp_client_nexus_parameters, %struct.necp_client_nexus_parameters* %26, i32 0, i32 8
  store i32 %25, i32* %27, align 4
  %28 = getelementptr inbounds %struct.necp_client_parsed_parameters, %struct.necp_client_parsed_parameters* %5, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @NECP_PARSED_PARAMETERS_FIELD_EFFECTIVE_PID, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %2
  %34 = getelementptr inbounds %struct.necp_client_parsed_parameters, %struct.necp_client_parsed_parameters* %5, i32 0, i32 7
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.necp_client_nexus_parameters*, %struct.necp_client_nexus_parameters** %4, align 8
  %37 = getelementptr inbounds %struct.necp_client_nexus_parameters, %struct.necp_client_nexus_parameters* %36, i32 0, i32 9
  store i32 %35, i32* %37, align 4
  br label %44

38:                                               ; preds = %2
  %39 = load %struct.necp_client_nexus_parameters*, %struct.necp_client_nexus_parameters** %4, align 8
  %40 = getelementptr inbounds %struct.necp_client_nexus_parameters, %struct.necp_client_nexus_parameters* %39, i32 0, i32 8
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.necp_client_nexus_parameters*, %struct.necp_client_nexus_parameters** %4, align 8
  %43 = getelementptr inbounds %struct.necp_client_nexus_parameters, %struct.necp_client_nexus_parameters* %42, i32 0, i32 9
  store i32 %41, i32* %43, align 4
  br label %44

44:                                               ; preds = %38, %33
  %45 = load %struct.necp_client_nexus_parameters*, %struct.necp_client_nexus_parameters** %4, align 8
  %46 = getelementptr inbounds %struct.necp_client_nexus_parameters, %struct.necp_client_nexus_parameters* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.necp_client_parsed_parameters, %struct.necp_client_parsed_parameters* %5, i32 0, i32 6
  %48 = call i32 @memcpy(i32* %46, i32* %47, i32 4)
  %49 = load %struct.necp_client_nexus_parameters*, %struct.necp_client_nexus_parameters** %4, align 8
  %50 = getelementptr inbounds %struct.necp_client_nexus_parameters, %struct.necp_client_nexus_parameters* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.necp_client_parsed_parameters, %struct.necp_client_parsed_parameters* %5, i32 0, i32 5
  %52 = call i32 @memcpy(i32* %50, i32* %51, i32 4)
  %53 = getelementptr inbounds %struct.necp_client_parsed_parameters, %struct.necp_client_parsed_parameters* %5, i32 0, i32 4
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.necp_client_nexus_parameters*, %struct.necp_client_nexus_parameters** %4, align 8
  %56 = getelementptr inbounds %struct.necp_client_nexus_parameters, %struct.necp_client_nexus_parameters* %55, i32 0, i32 7
  store i32 %54, i32* %56, align 4
  %57 = getelementptr inbounds %struct.necp_client_parsed_parameters, %struct.necp_client_parsed_parameters* %5, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.necp_client_nexus_parameters*, %struct.necp_client_nexus_parameters** %4, align 8
  %60 = getelementptr inbounds %struct.necp_client_nexus_parameters, %struct.necp_client_nexus_parameters* %59, i32 0, i32 6
  store i32 %58, i32* %60, align 4
  %61 = load %struct.necp_client_nexus_parameters*, %struct.necp_client_nexus_parameters** %4, align 8
  %62 = getelementptr inbounds %struct.necp_client_nexus_parameters, %struct.necp_client_nexus_parameters* %61, i32 0, i32 5
  %63 = load i32, i32* %62, align 4
  %64 = getelementptr inbounds %struct.necp_client_parsed_parameters, %struct.necp_client_parsed_parameters* %5, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @uuid_copy(i32 %63, i32 %65)
  %67 = getelementptr inbounds %struct.necp_client_parsed_parameters, %struct.necp_client_parsed_parameters* %5, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @NECP_CLIENT_PARAMETER_FLAG_LISTENER, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  %72 = zext i1 %71 to i64
  %73 = select i1 %71, i32 1, i32 0
  %74 = load %struct.necp_client_nexus_parameters*, %struct.necp_client_nexus_parameters** %4, align 8
  %75 = getelementptr inbounds %struct.necp_client_nexus_parameters, %struct.necp_client_nexus_parameters* %74, i32 0, i32 2
  store i32 %73, i32* %75, align 4
  %76 = load %struct.necp_client*, %struct.necp_client** %3, align 8
  %77 = getelementptr inbounds %struct.necp_client, %struct.necp_client* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.necp_client_nexus_parameters*, %struct.necp_client_nexus_parameters** %4, align 8
  %80 = getelementptr inbounds %struct.necp_client_nexus_parameters, %struct.necp_client_nexus_parameters* %79, i32 0, i32 4
  store i32 %78, i32* %80, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32* null, i32** %9, align 8
  %81 = load %struct.necp_client*, %struct.necp_client** %3, align 8
  %82 = getelementptr inbounds %struct.necp_client, %struct.necp_client* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = call i32* @necp_buffer_get_tlv_value(i32 %83, i32 0, i32* %8)
  store i32* %84, i32** %9, align 8
  %85 = load i32*, i32** %9, align 8
  %86 = icmp ne i32* %85, null
  br i1 %86, label %87, label %95

87:                                               ; preds = %44
  %88 = load i32, i32* %8, align 4
  %89 = sext i32 %88 to i64
  %90 = icmp eq i64 %89, 4
  br i1 %90, label %91, label %95

91:                                               ; preds = %87
  %92 = load i32*, i32** %9, align 8
  %93 = load i32, i32* %8, align 4
  %94 = call i32 @memcpy(i32* %7, i32* %92, i32 %93)
  br label %95

95:                                               ; preds = %91, %87, %44
  %96 = load i32, i32* %7, align 4
  %97 = load i32, i32* @NECP_CLIENT_RESULT_FLAG_ALLOW_QOS_MARKING, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  %100 = zext i1 %99 to i64
  %101 = select i1 %99, i32 1, i32 0
  %102 = load %struct.necp_client_nexus_parameters*, %struct.necp_client_nexus_parameters** %4, align 8
  %103 = getelementptr inbounds %struct.necp_client_nexus_parameters, %struct.necp_client_nexus_parameters* %102, i32 0, i32 3
  store i32 %101, i32* %103, align 4
  %104 = load i32, i32* %6, align 4
  ret i32 %104
}

declare dso_local i32 @VERIFY(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @necp_client_parse_parameters(i32, i32, %struct.necp_client_parsed_parameters*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @uuid_copy(i32, i32) #1

declare dso_local i32* @necp_buffer_get_tlv_value(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
