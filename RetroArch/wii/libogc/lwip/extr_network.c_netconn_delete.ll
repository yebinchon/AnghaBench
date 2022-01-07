; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/lwip/extr_network.c_netconn_delete.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/lwip/extr_network.c_netconn_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netconn = type { i64, i64, i64, i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.netconn* }
%struct.api_msg = type { i64, i64, i64, i64, i32, %struct.TYPE_2__ }
%struct.pbuf = type { i32 }
%struct.netbuf = type { i32 }

@API_LIB_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"netconn_delete(%p)\0A\00", align 1
@ERR_OK = common dso_local global i32 0, align 4
@MEMP_API_MSG = common dso_local global i32 0, align 4
@ERR_MEM = common dso_local global i32 0, align 4
@APIMSG_DELCONN = common dso_local global i64 0, align 8
@MQ_MSG_BLOCK = common dso_local global i32 0, align 4
@SYS_MBOX_NULL = common dso_local global i64 0, align 8
@MQ_MSG_NOBLOCK = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@NETCONN_TCP = common dso_local global i64 0, align 8
@SYS_SEM_NULL = common dso_local global i32 0, align 4
@MEMP_NETCONN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.netconn*)* @netconn_delete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netconn_delete(%struct.netconn* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.netconn*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.api_msg*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store %struct.netconn* %0, %struct.netconn** %3, align 8
  store i64 0, i64* %4, align 8
  %8 = load i32, i32* @API_LIB_DEBUG, align 4
  %9 = load %struct.netconn*, %struct.netconn** %3, align 8
  %10 = bitcast %struct.netconn* %9 to i8*
  %11 = call i32 @LWIP_DEBUGF(i32 %8, i8* %10)
  %12 = load %struct.netconn*, %struct.netconn** %3, align 8
  %13 = icmp ne %struct.netconn* %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ERR_OK, align 4
  store i32 %15, i32* %2, align 4
  br label %132

16:                                               ; preds = %1
  %17 = load i32, i32* @MEMP_API_MSG, align 4
  %18 = call %struct.netconn* @memp_malloc(i32 %17)
  %19 = bitcast %struct.netconn* %18 to %struct.api_msg*
  store %struct.api_msg* %19, %struct.api_msg** %5, align 8
  %20 = load %struct.api_msg*, %struct.api_msg** %5, align 8
  %21 = icmp ne %struct.api_msg* %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %16
  %23 = load i32, i32* @ERR_MEM, align 4
  store i32 %23, i32* %2, align 4
  br label %132

24:                                               ; preds = %16
  %25 = load i64, i64* @APIMSG_DELCONN, align 8
  %26 = load %struct.api_msg*, %struct.api_msg** %5, align 8
  %27 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %26, i32 0, i32 0
  store i64 %25, i64* %27, align 8
  %28 = load %struct.netconn*, %struct.netconn** %3, align 8
  %29 = load %struct.api_msg*, %struct.api_msg** %5, align 8
  %30 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %29, i32 0, i32 5
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  store %struct.netconn* %28, %struct.netconn** %31, align 8
  %32 = load %struct.api_msg*, %struct.api_msg** %5, align 8
  %33 = bitcast %struct.api_msg* %32 to %struct.netconn*
  %34 = call i32 @apimsg_post(%struct.netconn* %33)
  %35 = load %struct.netconn*, %struct.netconn** %3, align 8
  %36 = getelementptr inbounds %struct.netconn, %struct.netconn* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = ptrtoint i64* %4 to i32
  %39 = load i32, i32* @MQ_MSG_BLOCK, align 4
  %40 = call i64 @MQ_Receive(i64 %37, i32 %38, i32 %39)
  %41 = load i32, i32* @MEMP_API_MSG, align 4
  %42 = load %struct.api_msg*, %struct.api_msg** %5, align 8
  %43 = bitcast %struct.api_msg* %42 to %struct.netconn*
  %44 = call i32 @memp_free(i32 %41, %struct.netconn* %43)
  %45 = load %struct.netconn*, %struct.netconn** %3, align 8
  %46 = getelementptr inbounds %struct.netconn, %struct.netconn* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  store i64 %47, i64* %6, align 8
  %48 = load i64, i64* @SYS_MBOX_NULL, align 8
  %49 = load %struct.netconn*, %struct.netconn** %3, align 8
  %50 = getelementptr inbounds %struct.netconn, %struct.netconn* %49, i32 0, i32 2
  store i64 %48, i64* %50, align 8
  %51 = load i64, i64* %6, align 8
  %52 = load i64, i64* @SYS_MBOX_NULL, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %84

54:                                               ; preds = %24
  br label %55

55:                                               ; preds = %80, %54
  %56 = load i64, i64* %6, align 8
  %57 = ptrtoint i8** %7 to i32
  %58 = load i32, i32* @MQ_MSG_NOBLOCK, align 4
  %59 = call i64 @MQ_Receive(i64 %56, i32 %57, i32 %58)
  %60 = load i64, i64* @TRUE, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %81

62:                                               ; preds = %55
  %63 = load i8*, i8** %7, align 8
  %64 = icmp ne i8* %63, null
  br i1 %64, label %65, label %80

65:                                               ; preds = %62
  %66 = load %struct.netconn*, %struct.netconn** %3, align 8
  %67 = getelementptr inbounds %struct.netconn, %struct.netconn* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @NETCONN_TCP, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %75

71:                                               ; preds = %65
  %72 = load i8*, i8** %7, align 8
  %73 = bitcast i8* %72 to %struct.pbuf*
  %74 = call i32 @pbuf_free(%struct.pbuf* %73)
  br label %79

75:                                               ; preds = %65
  %76 = load i8*, i8** %7, align 8
  %77 = bitcast i8* %76 to %struct.netbuf*
  %78 = call i32 @netbuf_delete(%struct.netbuf* %77)
  br label %79

79:                                               ; preds = %75, %71
  br label %80

80:                                               ; preds = %79, %62
  br label %55

81:                                               ; preds = %55
  %82 = load i64, i64* %6, align 8
  %83 = call i32 @MQ_Close(i64 %82)
  br label %84

84:                                               ; preds = %81, %24
  %85 = load %struct.netconn*, %struct.netconn** %3, align 8
  %86 = getelementptr inbounds %struct.netconn, %struct.netconn* %85, i32 0, i32 3
  %87 = load i64, i64* %86, align 8
  store i64 %87, i64* %6, align 8
  %88 = load i64, i64* @SYS_MBOX_NULL, align 8
  %89 = load %struct.netconn*, %struct.netconn** %3, align 8
  %90 = getelementptr inbounds %struct.netconn, %struct.netconn* %89, i32 0, i32 3
  store i64 %88, i64* %90, align 8
  %91 = load i64, i64* %6, align 8
  %92 = load i64, i64* @SYS_MBOX_NULL, align 8
  %93 = icmp ne i64 %91, %92
  br i1 %93, label %94, label %113

94:                                               ; preds = %84
  br label %95

95:                                               ; preds = %109, %94
  %96 = load i64, i64* %6, align 8
  %97 = ptrtoint i8** %7 to i32
  %98 = load i32, i32* @MQ_MSG_NOBLOCK, align 4
  %99 = call i64 @MQ_Receive(i64 %96, i32 %97, i32 %98)
  %100 = load i64, i64* @TRUE, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %110

102:                                              ; preds = %95
  %103 = load i8*, i8** %7, align 8
  %104 = icmp ne i8* %103, null
  br i1 %104, label %105, label %109

105:                                              ; preds = %102
  %106 = load i8*, i8** %7, align 8
  %107 = bitcast i8* %106 to %struct.netconn*
  %108 = call i32 @netconn_delete(%struct.netconn* %107)
  br label %109

109:                                              ; preds = %105, %102
  br label %95

110:                                              ; preds = %95
  %111 = load i64, i64* %6, align 8
  %112 = call i32 @MQ_Close(i64 %111)
  br label %113

113:                                              ; preds = %110, %84
  %114 = load %struct.netconn*, %struct.netconn** %3, align 8
  %115 = getelementptr inbounds %struct.netconn, %struct.netconn* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = call i32 @MQ_Close(i64 %116)
  %118 = load i64, i64* @SYS_MBOX_NULL, align 8
  %119 = load %struct.netconn*, %struct.netconn** %3, align 8
  %120 = getelementptr inbounds %struct.netconn, %struct.netconn* %119, i32 0, i32 1
  store i64 %118, i64* %120, align 8
  %121 = load %struct.netconn*, %struct.netconn** %3, align 8
  %122 = getelementptr inbounds %struct.netconn, %struct.netconn* %121, i32 0, i32 4
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @LWP_SemDestroy(i32 %123)
  %125 = load i32, i32* @SYS_SEM_NULL, align 4
  %126 = load %struct.netconn*, %struct.netconn** %3, align 8
  %127 = getelementptr inbounds %struct.netconn, %struct.netconn* %126, i32 0, i32 4
  store i32 %125, i32* %127, align 8
  %128 = load i32, i32* @MEMP_NETCONN, align 4
  %129 = load %struct.netconn*, %struct.netconn** %3, align 8
  %130 = call i32 @memp_free(i32 %128, %struct.netconn* %129)
  %131 = load i32, i32* @ERR_OK, align 4
  store i32 %131, i32* %2, align 4
  br label %132

132:                                              ; preds = %113, %22, %14
  %133 = load i32, i32* %2, align 4
  ret i32 %133
}

declare dso_local i32 @LWIP_DEBUGF(i32, i8*) #1

declare dso_local %struct.netconn* @memp_malloc(i32) #1

declare dso_local i32 @apimsg_post(%struct.netconn*) #1

declare dso_local i64 @MQ_Receive(i64, i32, i32) #1

declare dso_local i32 @memp_free(i32, %struct.netconn*) #1

declare dso_local i32 @pbuf_free(%struct.pbuf*) #1

declare dso_local i32 @netbuf_delete(%struct.netbuf*) #1

declare dso_local i32 @MQ_Close(i64) #1

declare dso_local i32 @LWP_SemDestroy(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
