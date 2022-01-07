; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_content_filter.c_cfil_sock_udp_shutdown.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_content_filter.c_cfil_sock_udp_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32, i32, i32, i32* }

@SOF_CONTENT_FILTER = common dso_local global i32 0, align 4
@LOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"so %llx how %d\00", align 1
@SHUT_WR = common dso_local global i32 0, align 4
@SS_CANTRCVMORE = common dso_local global i32 0, align 4
@ENOTCONN = common dso_local global i32 0, align 4
@SHUT_RD = common dso_local global i32 0, align 4
@SS_CANTSENDMORE = common dso_local global i32 0, align 4
@CFIF_DROP = common dso_local global i32 0, align 4
@CFIF_SHUT_RD = common dso_local global i32 0, align 4
@CFIF_SHUT_WR = common dso_local global i32 0, align 4
@EJUSTRETURN = common dso_local global i32 0, align 4
@SHUT_RDWR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cfil_sock_udp_shutdown(%struct.socket* %0, i32* %1) #0 {
  %3 = alloca %struct.socket*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.socket*, %struct.socket** %3, align 8
  %7 = getelementptr inbounds %struct.socket, %struct.socket* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @SOF_CONTENT_FILTER, align 4
  %10 = and i32 %8, %9
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %2
  %13 = load %struct.socket*, %struct.socket** %3, align 8
  %14 = getelementptr inbounds %struct.socket, %struct.socket* %13, i32 0, i32 3
  %15 = load i32*, i32** %14, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %12, %2
  br label %108

18:                                               ; preds = %12
  %19 = load %struct.socket*, %struct.socket** %3, align 8
  %20 = call i32 @socket_lock_assert_owned(%struct.socket* %19)
  %21 = load i32, i32* @LOG_INFO, align 4
  %22 = load %struct.socket*, %struct.socket** %3, align 8
  %23 = call i64 @VM_KERNEL_ADDRPERM(%struct.socket* %22)
  %24 = trunc i64 %23 to i32
  %25 = load i32*, i32** %4, align 8
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @CFIL_LOG(i32 %21, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %26)
  %28 = load i32*, i32** %4, align 8
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @SHUT_WR, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %41

32:                                               ; preds = %18
  %33 = load %struct.socket*, %struct.socket** %3, align 8
  %34 = getelementptr inbounds %struct.socket, %struct.socket* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @SS_CANTRCVMORE, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %32
  %40 = load i32, i32* @ENOTCONN, align 4
  store i32 %40, i32* %5, align 4
  br label %108

41:                                               ; preds = %32, %18
  %42 = load i32*, i32** %4, align 8
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @SHUT_RD, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %46, label %55

46:                                               ; preds = %41
  %47 = load %struct.socket*, %struct.socket** %3, align 8
  %48 = getelementptr inbounds %struct.socket, %struct.socket* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @SS_CANTSENDMORE, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %46
  %54 = load i32, i32* @ENOTCONN, align 4
  store i32 %54, i32* %5, align 4
  br label %108

55:                                               ; preds = %46, %41
  %56 = load i32*, i32** %4, align 8
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @SHUT_WR, align 4
  %59 = icmp ne i32 %57, %58
  br i1 %59, label %60, label %70

60:                                               ; preds = %55
  %61 = load %struct.socket*, %struct.socket** %3, align 8
  %62 = load i32, i32* @SHUT_RD, align 4
  %63 = load i32, i32* @CFIF_DROP, align 4
  %64 = load i32, i32* @CFIF_SHUT_RD, align 4
  %65 = call i32 @cfil_sock_udp_notify_shutdown(%struct.socket* %61, i32 %62, i32 %63, i32 %64)
  store i32 %65, i32* %5, align 4
  %66 = load i32, i32* %5, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %60
  br label %108

69:                                               ; preds = %60
  br label %70

70:                                               ; preds = %69, %55
  %71 = load i32*, i32** %4, align 8
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @SHUT_RD, align 4
  %74 = icmp ne i32 %72, %73
  br i1 %74, label %75, label %107

75:                                               ; preds = %70
  %76 = load %struct.socket*, %struct.socket** %3, align 8
  %77 = load i32, i32* @SHUT_WR, align 4
  %78 = load i32, i32* @CFIF_DROP, align 4
  %79 = load i32, i32* @CFIF_SHUT_WR, align 4
  %80 = call i32 @cfil_sock_udp_notify_shutdown(%struct.socket* %76, i32 %77, i32 %78, i32 %79)
  store i32 %80, i32* %5, align 4
  %81 = load i32, i32* %5, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %75
  br label %108

84:                                               ; preds = %75
  %85 = load %struct.socket*, %struct.socket** %3, align 8
  %86 = getelementptr inbounds %struct.socket, %struct.socket* %85, i32 0, i32 2
  %87 = call i64 @cfil_sock_data_pending(i32* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %106

89:                                               ; preds = %84
  %90 = load i32*, i32** %4, align 8
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @SHUT_WR, align 4
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %94, label %96

94:                                               ; preds = %89
  %95 = load i32, i32* @EJUSTRETURN, align 4
  store i32 %95, i32* %5, align 4
  br label %105

96:                                               ; preds = %89
  %97 = load i32*, i32** %4, align 8
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @SHUT_RDWR, align 4
  %100 = icmp eq i32 %98, %99
  br i1 %100, label %101, label %104

101:                                              ; preds = %96
  %102 = load i32, i32* @SHUT_RD, align 4
  %103 = load i32*, i32** %4, align 8
  store i32 %102, i32* %103, align 4
  br label %104

104:                                              ; preds = %101, %96
  br label %105

105:                                              ; preds = %104, %94
  br label %106

106:                                              ; preds = %105, %84
  br label %107

107:                                              ; preds = %106, %70
  br label %108

108:                                              ; preds = %107, %83, %68, %53, %39, %17
  %109 = load i32, i32* %5, align 4
  ret i32 %109
}

declare dso_local i32 @socket_lock_assert_owned(%struct.socket*) #1

declare dso_local i32 @CFIL_LOG(i32, i8*, i32, i32) #1

declare dso_local i64 @VM_KERNEL_ADDRPERM(%struct.socket*) #1

declare dso_local i32 @cfil_sock_udp_notify_shutdown(%struct.socket*, i32, i32, i32) #1

declare dso_local i64 @cfil_sock_data_pending(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
