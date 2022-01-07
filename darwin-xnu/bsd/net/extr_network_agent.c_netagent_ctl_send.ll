; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_network_agent.c_netagent_ctl_send.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_network_agent.c_netagent_ctl_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netagent_session = type { i32 }
%struct.netagent_message_header = type { i32, i32, i32 }

@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Got a NULL session\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [53 x i8] c"Got a bad packet, length (%lu) < sizeof header (%lu)\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"mbuf_copydata failed for the header: %d\00", align 1
@ENOBUFS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [49 x i8] c"NETAGENT_MESSAGE_TYPE_ASSERT no longer supported\00", align 1
@.str.4 = private unnamed_addr constant [51 x i8] c"NETAGENT_MESSAGE_TYPE_UNASSERT no longer supported\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"Received unknown message type %d\00", align 1
@NETAGENT_MESSAGE_ERROR_UNKNOWN_TYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8*, i32, i32)* @netagent_ctl_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netagent_ctl_send(i32 %0, i32 %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.netagent_session*, align 8
  %12 = alloca %struct.netagent_message_header, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = load i8*, i8** %8, align 8
  %15 = bitcast i8* %14 to %struct.netagent_session*
  store %struct.netagent_session* %15, %struct.netagent_session** %11, align 8
  store i32 0, i32* %13, align 4
  %16 = load %struct.netagent_session*, %struct.netagent_session** %11, align 8
  %17 = icmp eq %struct.netagent_session* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %5
  %19 = load i32, i32* @LOG_ERR, align 4
  %20 = call i32 @NETAGENTLOG0(i32 %19, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @EINVAL, align 4
  store i32 %21, i32* %13, align 4
  br label %105

22:                                               ; preds = %5
  %23 = load i32, i32* %9, align 4
  %24 = call i32 @mbuf_pkthdr_len(i32 %23)
  %25 = sext i32 %24 to i64
  %26 = icmp ult i64 %25, 12
  br i1 %26, label %27, label %33

27:                                               ; preds = %22
  %28 = load i32, i32* @LOG_ERR, align 4
  %29 = load i32, i32* %9, align 4
  %30 = call i32 @mbuf_pkthdr_len(i32 %29)
  %31 = call i32 (i32, i8*, i32, ...) @NETAGENTLOG(i32 %28, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32 %30, i64 12)
  %32 = load i32, i32* @EINVAL, align 4
  store i32 %32, i32* %13, align 4
  br label %105

33:                                               ; preds = %22
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @mbuf_copydata(i32 %34, i32 0, i32 12, %struct.netagent_message_header* %12)
  store i32 %35, i32* %13, align 4
  %36 = load i32, i32* %13, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %33
  %39 = load i32, i32* @LOG_ERR, align 4
  %40 = load i32, i32* %13, align 4
  %41 = call i32 (i32, i8*, i32, ...) @NETAGENTLOG(i32 %39, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* @ENOBUFS, align 4
  store i32 %42, i32* %13, align 4
  br label %105

43:                                               ; preds = %33
  %44 = getelementptr inbounds %struct.netagent_message_header, %struct.netagent_message_header* %12, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  switch i32 %45, label %92 [
    i32 131, label %46
    i32 129, label %54
    i32 128, label %62
    i32 132, label %70
    i32 134, label %78
    i32 130, label %81
    i32 133, label %84
  ]

46:                                               ; preds = %43
  %47 = load %struct.netagent_session*, %struct.netagent_session** %11, align 8
  %48 = getelementptr inbounds %struct.netagent_message_header, %struct.netagent_message_header* %12, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = getelementptr inbounds %struct.netagent_message_header, %struct.netagent_message_header* %12, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %9, align 4
  %53 = call i32 @netagent_handle_register_message(%struct.netagent_session* %47, i32 %49, i32 %51, i32 %52, i32 12)
  br label %104

54:                                               ; preds = %43
  %55 = load %struct.netagent_session*, %struct.netagent_session** %11, align 8
  %56 = getelementptr inbounds %struct.netagent_message_header, %struct.netagent_message_header* %12, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = getelementptr inbounds %struct.netagent_message_header, %struct.netagent_message_header* %12, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %9, align 4
  %61 = call i32 @netagent_handle_unregister_message(%struct.netagent_session* %55, i32 %57, i32 %59, i32 %60, i32 12)
  br label %104

62:                                               ; preds = %43
  %63 = load %struct.netagent_session*, %struct.netagent_session** %11, align 8
  %64 = getelementptr inbounds %struct.netagent_message_header, %struct.netagent_message_header* %12, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = getelementptr inbounds %struct.netagent_message_header, %struct.netagent_message_header* %12, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %9, align 4
  %69 = call i32 @netagent_handle_update_message(%struct.netagent_session* %63, i32 %65, i32 %67, i32 %68, i32 12)
  br label %104

70:                                               ; preds = %43
  %71 = load %struct.netagent_session*, %struct.netagent_session** %11, align 8
  %72 = getelementptr inbounds %struct.netagent_message_header, %struct.netagent_message_header* %12, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = getelementptr inbounds %struct.netagent_message_header, %struct.netagent_message_header* %12, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %9, align 4
  %77 = call i32 @netagent_handle_get(%struct.netagent_session* %71, i32 %73, i32 %75, i32 %76, i32 12)
  br label %104

78:                                               ; preds = %43
  %79 = load i32, i32* @LOG_ERR, align 4
  %80 = call i32 @NETAGENTLOG0(i32 %79, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0))
  br label %104

81:                                               ; preds = %43
  %82 = load i32, i32* @LOG_ERR, align 4
  %83 = call i32 @NETAGENTLOG0(i32 %82, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4, i64 0, i64 0))
  br label %104

84:                                               ; preds = %43
  %85 = load %struct.netagent_session*, %struct.netagent_session** %11, align 8
  %86 = getelementptr inbounds %struct.netagent_message_header, %struct.netagent_message_header* %12, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = getelementptr inbounds %struct.netagent_message_header, %struct.netagent_message_header* %12, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %9, align 4
  %91 = call i32 @netagent_handle_assign_nexus_message(%struct.netagent_session* %85, i32 %87, i32 %89, i32 %90, i32 12)
  br label %104

92:                                               ; preds = %43
  %93 = load i32, i32* @LOG_ERR, align 4
  %94 = getelementptr inbounds %struct.netagent_message_header, %struct.netagent_message_header* %12, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 (i32, i8*, i32, ...) @NETAGENTLOG(i32 %93, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i32 %95)
  %97 = load %struct.netagent_session*, %struct.netagent_session** %11, align 8
  %98 = getelementptr inbounds %struct.netagent_message_header, %struct.netagent_message_header* %12, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = getelementptr inbounds %struct.netagent_message_header, %struct.netagent_message_header* %12, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @NETAGENT_MESSAGE_ERROR_UNKNOWN_TYPE, align 4
  %103 = call i32 @netagent_send_error_response(%struct.netagent_session* %97, i32 %99, i32 %101, i32 %102)
  br label %104

104:                                              ; preds = %92, %84, %81, %78, %70, %62, %54, %46
  br label %105

105:                                              ; preds = %104, %38, %27, %18
  %106 = load i32, i32* %9, align 4
  %107 = call i32 @mbuf_freem(i32 %106)
  %108 = load i32, i32* %13, align 4
  ret i32 %108
}

declare dso_local i32 @NETAGENTLOG0(i32, i8*) #1

declare dso_local i32 @mbuf_pkthdr_len(i32) #1

declare dso_local i32 @NETAGENTLOG(i32, i8*, i32, ...) #1

declare dso_local i32 @mbuf_copydata(i32, i32, i32, %struct.netagent_message_header*) #1

declare dso_local i32 @netagent_handle_register_message(%struct.netagent_session*, i32, i32, i32, i32) #1

declare dso_local i32 @netagent_handle_unregister_message(%struct.netagent_session*, i32, i32, i32, i32) #1

declare dso_local i32 @netagent_handle_update_message(%struct.netagent_session*, i32, i32, i32, i32) #1

declare dso_local i32 @netagent_handle_get(%struct.netagent_session*, i32, i32, i32, i32) #1

declare dso_local i32 @netagent_handle_assign_nexus_message(%struct.netagent_session*, i32, i32, i32, i32) #1

declare dso_local i32 @netagent_send_error_response(%struct.netagent_session*, i32, i32, i32) #1

declare dso_local i32 @mbuf_freem(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
