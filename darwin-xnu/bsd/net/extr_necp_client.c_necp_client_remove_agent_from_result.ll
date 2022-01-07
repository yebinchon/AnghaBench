; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_necp_client.c_necp_client_remove_agent_from_result.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_necp_client.c_necp_client_remove_agent_from_result.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.necp_client = type { i64, i64* }
%struct.necp_client_result_netagent = type { i32 }

@NECP_CLIENT_RESULT_NETAGENT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.necp_client*, i32)* @necp_client_remove_agent_from_result to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @necp_client_remove_agent_from_result(%struct.necp_client* %0, i32 %1) #0 {
  %3 = alloca %struct.necp_client*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.necp_client_result_netagent*, align 8
  store %struct.necp_client* %0, %struct.necp_client** %3, align 8
  store i32 %1, i32* %4, align 4
  store i64 0, i64* %5, align 8
  %11 = load %struct.necp_client*, %struct.necp_client** %3, align 8
  %12 = getelementptr inbounds %struct.necp_client, %struct.necp_client* %11, i32 0, i32 1
  %13 = load i64*, i64** %12, align 8
  store i64* %13, i64** %6, align 8
  br label %14

14:                                               ; preds = %92, %58, %2
  %15 = load i64, i64* %5, align 8
  %16 = add i64 %15, 4
  %17 = load %struct.necp_client*, %struct.necp_client** %3, align 8
  %18 = getelementptr inbounds %struct.necp_client, %struct.necp_client* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ule i64 %16, %19
  br i1 %20, label %21, label %96

21:                                               ; preds = %14
  %22 = load i64*, i64** %6, align 8
  %23 = load i64, i64* %5, align 8
  %24 = call i64 @necp_buffer_get_tlv_type(i64* %22, i64 %23)
  store i64 %24, i64* %7, align 8
  %25 = load i64*, i64** %6, align 8
  %26 = load i64, i64* %5, align 8
  %27 = call i32 @necp_buffer_get_tlv_length(i64* %25, i64 %26)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = sext i32 %28 to i64
  %30 = add i64 4, %29
  store i64 %30, i64* %9, align 8
  %31 = load i64, i64* %7, align 8
  %32 = load i64, i64* @NECP_CLIENT_RESULT_NETAGENT, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %92

34:                                               ; preds = %21
  %35 = load i32, i32* %8, align 4
  %36 = sext i32 %35 to i64
  %37 = icmp eq i64 %36, 4
  br i1 %37, label %38, label %92

38:                                               ; preds = %34
  %39 = load i64, i64* %5, align 8
  %40 = load i64, i64* %9, align 8
  %41 = add i64 %39, %40
  %42 = load %struct.necp_client*, %struct.necp_client** %3, align 8
  %43 = getelementptr inbounds %struct.necp_client, %struct.necp_client* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ule i64 %41, %44
  br i1 %45, label %46, label %92

46:                                               ; preds = %38
  %47 = load i64*, i64** %6, align 8
  %48 = load i64, i64* %5, align 8
  %49 = call i64 @necp_buffer_get_tlv_value(i64* %47, i64 %48, i32* null)
  %50 = inttoptr i64 %49 to i8*
  %51 = bitcast i8* %50 to %struct.necp_client_result_netagent*
  store %struct.necp_client_result_netagent* %51, %struct.necp_client_result_netagent** %10, align 8
  %52 = load %struct.necp_client_result_netagent*, %struct.necp_client_result_netagent** %10, align 8
  %53 = getelementptr inbounds %struct.necp_client_result_netagent, %struct.necp_client_result_netagent* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %4, align 4
  %56 = call i64 @uuid_compare(i32 %54, i32 %55)
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %91

58:                                               ; preds = %46
  %59 = load i64*, i64** %6, align 8
  %60 = load i64, i64* %5, align 8
  %61 = getelementptr inbounds i64, i64* %59, i64 %60
  %62 = load i64*, i64** %6, align 8
  %63 = load i64, i64* %5, align 8
  %64 = getelementptr inbounds i64, i64* %62, i64 %63
  %65 = load i64, i64* %9, align 8
  %66 = getelementptr inbounds i64, i64* %64, i64 %65
  %67 = load %struct.necp_client*, %struct.necp_client** %3, align 8
  %68 = getelementptr inbounds %struct.necp_client, %struct.necp_client* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* %5, align 8
  %71 = load i64, i64* %9, align 8
  %72 = add i64 %70, %71
  %73 = sub i64 %69, %72
  %74 = call i32 @memmove(i64* %61, i64* %66, i64 %73)
  %75 = load i64, i64* %9, align 8
  %76 = load %struct.necp_client*, %struct.necp_client** %3, align 8
  %77 = getelementptr inbounds %struct.necp_client, %struct.necp_client* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = sub i64 %78, %75
  store i64 %79, i64* %77, align 8
  %80 = load i64*, i64** %6, align 8
  %81 = load %struct.necp_client*, %struct.necp_client** %3, align 8
  %82 = getelementptr inbounds %struct.necp_client, %struct.necp_client* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = getelementptr inbounds i64, i64* %80, i64 %83
  %85 = load %struct.necp_client*, %struct.necp_client** %3, align 8
  %86 = getelementptr inbounds %struct.necp_client, %struct.necp_client* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = sub i64 8, %87
  %89 = trunc i64 %88 to i32
  %90 = call i32 @memset(i64* %84, i32 0, i32 %89)
  br label %14

91:                                               ; preds = %46
  br label %92

92:                                               ; preds = %91, %38, %34, %21
  %93 = load i64, i64* %9, align 8
  %94 = load i64, i64* %5, align 8
  %95 = add i64 %94, %93
  store i64 %95, i64* %5, align 8
  br label %14

96:                                               ; preds = %14
  ret void
}

declare dso_local i64 @necp_buffer_get_tlv_type(i64*, i64) #1

declare dso_local i32 @necp_buffer_get_tlv_length(i64*, i64) #1

declare dso_local i64 @necp_buffer_get_tlv_value(i64*, i64, i32*) #1

declare dso_local i64 @uuid_compare(i32, i32) #1

declare dso_local i32 @memmove(i64*, i64*, i64) #1

declare dso_local i32 @memset(i64*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
