; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_necp.c_necp_ctl_send.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_necp.c_necp_ctl_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.necp_session = type { i32, i32, i64 }
%struct.necp_packet_header = type { i32, i32 }

@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Got a NULL session\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [53 x i8] c"Got a bad packet, length (%lu) < sizeof header (%lu)\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"mbuf_copydata failed for the header: %d\00", align 1
@ENOBUFS = common dso_local global i32 0, align 4
@NECP_ERROR_INVALID_PROCESS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"Received unknown message type %d\00", align 1
@NECP_ERROR_UNKNOWN_PACKET_TYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8*, i32, i32)* @necp_ctl_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @necp_ctl_send(i32 %0, i32 %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.necp_session*, align 8
  %12 = alloca %struct.necp_packet_header, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %15 = load i8*, i8** %8, align 8
  %16 = bitcast i8* %15 to %struct.necp_session*
  store %struct.necp_session* %16, %struct.necp_session** %11, align 8
  store i32 0, i32* %13, align 4
  %17 = load %struct.necp_session*, %struct.necp_session** %11, align 8
  %18 = icmp eq %struct.necp_session* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %5
  %20 = load i32, i32* @LOG_ERR, align 4
  %21 = call i32 @NECPLOG0(i32 %20, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @EINVAL, align 4
  store i32 %22, i32* %13, align 4
  br label %160

23:                                               ; preds = %5
  %24 = load i32, i32* %9, align 4
  %25 = call i32 @mbuf_pkthdr_len(i32 %24)
  %26 = sext i32 %25 to i64
  %27 = icmp ult i64 %26, 8
  br i1 %27, label %28, label %34

28:                                               ; preds = %23
  %29 = load i32, i32* @LOG_ERR, align 4
  %30 = load i32, i32* %9, align 4
  %31 = call i32 @mbuf_pkthdr_len(i32 %30)
  %32 = call i32 (i32, i8*, i32, ...) @NECPLOG(i32 %29, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32 %31, i64 8)
  %33 = load i32, i32* @EINVAL, align 4
  store i32 %33, i32* %13, align 4
  br label %160

34:                                               ; preds = %23
  %35 = load i32, i32* %9, align 4
  %36 = call i32 @mbuf_copydata(i32 %35, i32 0, i32 8, %struct.necp_packet_header* %12)
  store i32 %36, i32* %13, align 4
  %37 = load i32, i32* %13, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %34
  %40 = load i32, i32* @LOG_ERR, align 4
  %41 = load i32, i32* %13, align 4
  %42 = call i32 (i32, i8*, i32, ...) @NECPLOG(i32 %40, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %41)
  %43 = load i32, i32* @ENOBUFS, align 4
  store i32 %43, i32* %13, align 4
  br label %160

44:                                               ; preds = %34
  %45 = load %struct.necp_session*, %struct.necp_session** %11, align 8
  %46 = getelementptr inbounds %struct.necp_session, %struct.necp_session* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %68

49:                                               ; preds = %44
  %50 = call i32 (...) @current_proc()
  %51 = load i32, i32* %14, align 4
  %52 = call i32 @proc_getexecutableuuid(i32 %50, i32 %51, i32 4)
  %53 = load i32, i32* %14, align 4
  %54 = load %struct.necp_session*, %struct.necp_session** %11, align 8
  %55 = getelementptr inbounds %struct.necp_session, %struct.necp_session* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i64 @uuid_compare(i32 %53, i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %67

59:                                               ; preds = %49
  %60 = load %struct.necp_session*, %struct.necp_session** %11, align 8
  %61 = getelementptr inbounds %struct.necp_packet_header, %struct.necp_packet_header* %12, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = getelementptr inbounds %struct.necp_packet_header, %struct.necp_packet_header* %12, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @NECP_ERROR_INVALID_PROCESS, align 4
  %66 = call i32 @necp_send_error_response(%struct.necp_session* %60, i32 %62, i32 %64, i32 %65)
  br label %160

67:                                               ; preds = %49
  br label %78

68:                                               ; preds = %44
  %69 = call i32 (...) @current_proc()
  %70 = load %struct.necp_session*, %struct.necp_session** %11, align 8
  %71 = getelementptr inbounds %struct.necp_session, %struct.necp_session* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @proc_getexecutableuuid(i32 %69, i32 %72, i32 4)
  %74 = call i32 (...) @current_proc()
  %75 = call i32 @proc_pid(i32 %74)
  %76 = load %struct.necp_session*, %struct.necp_session** %11, align 8
  %77 = getelementptr inbounds %struct.necp_session, %struct.necp_session* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 8
  br label %78

78:                                               ; preds = %68, %67
  %79 = getelementptr inbounds %struct.necp_packet_header, %struct.necp_packet_header* %12, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  switch i32 %80, label %147 [
    i32 137, label %81
    i32 132, label %87
    i32 135, label %93
    i32 136, label %99
    i32 131, label %105
    i32 134, label %111
    i32 133, label %117
    i32 129, label %123
    i32 138, label %129
    i32 130, label %135
    i32 128, label %141
  ]

81:                                               ; preds = %78
  %82 = load %struct.necp_session*, %struct.necp_session** %11, align 8
  %83 = getelementptr inbounds %struct.necp_packet_header, %struct.necp_packet_header* %12, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %9, align 4
  %86 = call i32 @necp_handle_policy_add(%struct.necp_session* %82, i32 %84, i32 %85, i32* null, i32 0, i32 8, i32* null)
  br label %159

87:                                               ; preds = %78
  %88 = load %struct.necp_session*, %struct.necp_session** %11, align 8
  %89 = getelementptr inbounds %struct.necp_packet_header, %struct.necp_packet_header* %12, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* %9, align 4
  %92 = call i32 @necp_handle_policy_get(%struct.necp_session* %88, i32 %90, i32 %91, i32 8)
  br label %159

93:                                               ; preds = %78
  %94 = load %struct.necp_session*, %struct.necp_session** %11, align 8
  %95 = getelementptr inbounds %struct.necp_packet_header, %struct.necp_packet_header* %12, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* %9, align 4
  %98 = call i32 @necp_handle_policy_delete(%struct.necp_session* %94, i32 %96, i32 %97, i32 8)
  br label %159

99:                                               ; preds = %78
  %100 = load %struct.necp_session*, %struct.necp_session** %11, align 8
  %101 = getelementptr inbounds %struct.necp_packet_header, %struct.necp_packet_header* %12, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* %9, align 4
  %104 = call i32 @necp_handle_policy_apply_all(%struct.necp_session* %100, i32 %102, i32 %103, i32 8)
  br label %159

105:                                              ; preds = %78
  %106 = load %struct.necp_session*, %struct.necp_session** %11, align 8
  %107 = getelementptr inbounds %struct.necp_packet_header, %struct.necp_packet_header* %12, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* %9, align 4
  %110 = call i32 @necp_handle_policy_list_all(%struct.necp_session* %106, i32 %108, i32 %109, i32 8)
  br label %159

111:                                              ; preds = %78
  %112 = load %struct.necp_session*, %struct.necp_session** %11, align 8
  %113 = getelementptr inbounds %struct.necp_packet_header, %struct.necp_packet_header* %12, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* %9, align 4
  %116 = call i32 @necp_handle_policy_delete_all(%struct.necp_session* %112, i32 %114, i32 %115, i32 8)
  br label %159

117:                                              ; preds = %78
  %118 = load %struct.necp_session*, %struct.necp_session** %11, align 8
  %119 = getelementptr inbounds %struct.necp_packet_header, %struct.necp_packet_header* %12, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* %9, align 4
  %122 = call i32 @necp_handle_policy_dump_all(%struct.necp_session* %118, i32 %120, i32 %121, i32 0, i32 0, i32 8)
  br label %159

123:                                              ; preds = %78
  %124 = load %struct.necp_session*, %struct.necp_session** %11, align 8
  %125 = getelementptr inbounds %struct.necp_packet_header, %struct.necp_packet_header* %12, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* %9, align 4
  %128 = call i32 @necp_handle_set_session_priority(%struct.necp_session* %124, i32 %126, i32 %127, i32 8)
  br label %159

129:                                              ; preds = %78
  %130 = load %struct.necp_session*, %struct.necp_session** %11, align 8
  %131 = getelementptr inbounds %struct.necp_packet_header, %struct.necp_packet_header* %12, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* %9, align 4
  %134 = call i32 @necp_handle_lock_session_to_proc(%struct.necp_session* %130, i32 %132, i32 %133, i32 8)
  br label %159

135:                                              ; preds = %78
  %136 = load %struct.necp_session*, %struct.necp_session** %11, align 8
  %137 = getelementptr inbounds %struct.necp_packet_header, %struct.necp_packet_header* %12, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* %9, align 4
  %140 = call i32 @necp_handle_register_service(%struct.necp_session* %136, i32 %138, i32 %139, i32 8)
  br label %159

141:                                              ; preds = %78
  %142 = load %struct.necp_session*, %struct.necp_session** %11, align 8
  %143 = getelementptr inbounds %struct.necp_packet_header, %struct.necp_packet_header* %12, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* %9, align 4
  %146 = call i32 @necp_handle_unregister_service(%struct.necp_session* %142, i32 %144, i32 %145, i32 8)
  br label %159

147:                                              ; preds = %78
  %148 = load i32, i32* @LOG_ERR, align 4
  %149 = getelementptr inbounds %struct.necp_packet_header, %struct.necp_packet_header* %12, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = call i32 (i32, i8*, i32, ...) @NECPLOG(i32 %148, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %150)
  %152 = load %struct.necp_session*, %struct.necp_session** %11, align 8
  %153 = getelementptr inbounds %struct.necp_packet_header, %struct.necp_packet_header* %12, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = getelementptr inbounds %struct.necp_packet_header, %struct.necp_packet_header* %12, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* @NECP_ERROR_UNKNOWN_PACKET_TYPE, align 4
  %158 = call i32 @necp_send_error_response(%struct.necp_session* %152, i32 %154, i32 %156, i32 %157)
  br label %159

159:                                              ; preds = %147, %141, %135, %129, %123, %117, %111, %105, %99, %93, %87, %81
  br label %160

160:                                              ; preds = %159, %59, %39, %28, %19
  %161 = load i32, i32* %9, align 4
  %162 = call i32 @mbuf_freem(i32 %161)
  %163 = load i32, i32* %13, align 4
  ret i32 %163
}

declare dso_local i32 @NECPLOG0(i32, i8*) #1

declare dso_local i32 @mbuf_pkthdr_len(i32) #1

declare dso_local i32 @NECPLOG(i32, i8*, i32, ...) #1

declare dso_local i32 @mbuf_copydata(i32, i32, i32, %struct.necp_packet_header*) #1

declare dso_local i32 @proc_getexecutableuuid(i32, i32, i32) #1

declare dso_local i32 @current_proc(...) #1

declare dso_local i64 @uuid_compare(i32, i32) #1

declare dso_local i32 @necp_send_error_response(%struct.necp_session*, i32, i32, i32) #1

declare dso_local i32 @proc_pid(i32) #1

declare dso_local i32 @necp_handle_policy_add(%struct.necp_session*, i32, i32, i32*, i32, i32, i32*) #1

declare dso_local i32 @necp_handle_policy_get(%struct.necp_session*, i32, i32, i32) #1

declare dso_local i32 @necp_handle_policy_delete(%struct.necp_session*, i32, i32, i32) #1

declare dso_local i32 @necp_handle_policy_apply_all(%struct.necp_session*, i32, i32, i32) #1

declare dso_local i32 @necp_handle_policy_list_all(%struct.necp_session*, i32, i32, i32) #1

declare dso_local i32 @necp_handle_policy_delete_all(%struct.necp_session*, i32, i32, i32) #1

declare dso_local i32 @necp_handle_policy_dump_all(%struct.necp_session*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @necp_handle_set_session_priority(%struct.necp_session*, i32, i32, i32) #1

declare dso_local i32 @necp_handle_lock_session_to_proc(%struct.necp_session*, i32, i32, i32) #1

declare dso_local i32 @necp_handle_register_service(%struct.necp_session*, i32, i32, i32) #1

declare dso_local i32 @necp_handle_unregister_service(%struct.necp_session*, i32, i32, i32) #1

declare dso_local i32 @mbuf_freem(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
