; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/lwip/extr_network.c_do_write.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/lwip/extr_network.c_do_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.apimsg_msg = type { %struct.TYPE_12__*, %struct.TYPE_10__ }
%struct.TYPE_12__ = type { i32, i32, i32 (%struct.TYPE_12__*, i32, i32)*, %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32, i32 }

@ERR_VAL = common dso_local global i32 0, align 4
@ERR_OK = common dso_local global i32 0, align 4
@TF_NODELAY = common dso_local global i32 0, align 4
@API_MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"api_msg: TCP write: tcp_output.\0A\00", align 1
@TCP_SNDLOWAT = common dso_local global i32 0, align 4
@NETCONN_EVTSENDMINUS = common dso_local global i32 0, align 4
@MQ_MSG_BLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.apimsg_msg*)* @do_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_write(%struct.apimsg_msg* %0) #0 {
  %2 = alloca %struct.apimsg_msg*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.apimsg_msg* %0, %struct.apimsg_msg** %2, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.apimsg_msg*, %struct.apimsg_msg** %2, align 8
  %6 = getelementptr inbounds %struct.apimsg_msg, %struct.apimsg_msg* %5, i32 0, i32 0
  %7 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 3
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %11 = icmp ne %struct.TYPE_11__* %10, null
  br i1 %11, label %12, label %139

12:                                               ; preds = %1
  %13 = load %struct.apimsg_msg*, %struct.apimsg_msg** %2, align 8
  %14 = getelementptr inbounds %struct.apimsg_msg, %struct.apimsg_msg* %13, i32 0, i32 0
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  switch i32 %17, label %137 [
    i32 132, label %18
    i32 129, label %18
    i32 128, label %18
    i32 130, label %18
    i32 131, label %24
  ]

18:                                               ; preds = %12, %12, %12, %12
  %19 = load i32, i32* @ERR_VAL, align 4
  %20 = load %struct.apimsg_msg*, %struct.apimsg_msg** %2, align 8
  %21 = getelementptr inbounds %struct.apimsg_msg, %struct.apimsg_msg* %20, i32 0, i32 0
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 4
  store i32 %19, i32* %23, align 8
  br label %138

24:                                               ; preds = %12
  %25 = load %struct.apimsg_msg*, %struct.apimsg_msg** %2, align 8
  %26 = getelementptr inbounds %struct.apimsg_msg, %struct.apimsg_msg* %25, i32 0, i32 0
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 3
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %29, align 8
  %31 = load %struct.apimsg_msg*, %struct.apimsg_msg** %2, align 8
  %32 = getelementptr inbounds %struct.apimsg_msg, %struct.apimsg_msg* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.apimsg_msg*, %struct.apimsg_msg** %2, align 8
  %37 = getelementptr inbounds %struct.apimsg_msg, %struct.apimsg_msg* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.apimsg_msg*, %struct.apimsg_msg** %2, align 8
  %42 = getelementptr inbounds %struct.apimsg_msg, %struct.apimsg_msg* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @tcp_write(%struct.TYPE_11__* %30, i32 %35, i32 %40, i32 %45)
  store i32 %46, i32* %3, align 4
  %47 = load i32, i32* %3, align 4
  %48 = load i32, i32* @ERR_OK, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %92

50:                                               ; preds = %24
  %51 = load %struct.apimsg_msg*, %struct.apimsg_msg** %2, align 8
  %52 = getelementptr inbounds %struct.apimsg_msg, %struct.apimsg_msg* %51, i32 0, i32 0
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 3
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %82

60:                                               ; preds = %50
  %61 = load %struct.apimsg_msg*, %struct.apimsg_msg** %2, align 8
  %62 = getelementptr inbounds %struct.apimsg_msg, %struct.apimsg_msg* %61, i32 0, i32 0
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 3
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @TF_NODELAY, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %82, label %72

72:                                               ; preds = %60
  %73 = load %struct.apimsg_msg*, %struct.apimsg_msg** %2, align 8
  %74 = getelementptr inbounds %struct.apimsg_msg, %struct.apimsg_msg* %73, i32 0, i32 0
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 3
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = icmp sgt i32 %80, 1
  br i1 %81, label %82, label %92

82:                                               ; preds = %72, %60, %50
  %83 = load i32, i32* @API_MSG_DEBUG, align 4
  %84 = call i32 @LWIP_DEBUGF(i32 %83, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %85 = load %struct.apimsg_msg*, %struct.apimsg_msg** %2, align 8
  %86 = getelementptr inbounds %struct.apimsg_msg, %struct.apimsg_msg* %85, i32 0, i32 0
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 3
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %89, align 8
  %91 = call i32 @tcp_output(%struct.TYPE_11__* %90)
  br label %92

92:                                               ; preds = %82, %72, %24
  %93 = load i32, i32* %3, align 4
  %94 = load %struct.apimsg_msg*, %struct.apimsg_msg** %2, align 8
  %95 = getelementptr inbounds %struct.apimsg_msg, %struct.apimsg_msg* %94, i32 0, i32 0
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %96, i32 0, i32 4
  store i32 %93, i32* %97, align 8
  %98 = load %struct.apimsg_msg*, %struct.apimsg_msg** %2, align 8
  %99 = getelementptr inbounds %struct.apimsg_msg, %struct.apimsg_msg* %98, i32 0, i32 0
  %100 = load %struct.TYPE_12__*, %struct.TYPE_12__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %100, i32 0, i32 2
  %102 = load i32 (%struct.TYPE_12__*, i32, i32)*, i32 (%struct.TYPE_12__*, i32, i32)** %101, align 8
  %103 = icmp ne i32 (%struct.TYPE_12__*, i32, i32)* %102, null
  br i1 %103, label %104, label %136

104:                                              ; preds = %92
  %105 = load i32, i32* %3, align 4
  %106 = load i32, i32* @ERR_OK, align 4
  %107 = icmp eq i32 %105, %106
  br i1 %107, label %108, label %135

108:                                              ; preds = %104
  %109 = load %struct.apimsg_msg*, %struct.apimsg_msg** %2, align 8
  %110 = getelementptr inbounds %struct.apimsg_msg, %struct.apimsg_msg* %109, i32 0, i32 0
  %111 = load %struct.TYPE_12__*, %struct.TYPE_12__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i32 0, i32 3
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 0
  %114 = load %struct.TYPE_11__*, %struct.TYPE_11__** %113, align 8
  %115 = call i32 @tcp_sndbuf(%struct.TYPE_11__* %114)
  %116 = load i32, i32* @TCP_SNDLOWAT, align 4
  %117 = icmp sle i32 %115, %116
  br i1 %117, label %118, label %134

118:                                              ; preds = %108
  %119 = load %struct.apimsg_msg*, %struct.apimsg_msg** %2, align 8
  %120 = getelementptr inbounds %struct.apimsg_msg, %struct.apimsg_msg* %119, i32 0, i32 0
  %121 = load %struct.TYPE_12__*, %struct.TYPE_12__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i32 0, i32 2
  %123 = load i32 (%struct.TYPE_12__*, i32, i32)*, i32 (%struct.TYPE_12__*, i32, i32)** %122, align 8
  %124 = load %struct.apimsg_msg*, %struct.apimsg_msg** %2, align 8
  %125 = getelementptr inbounds %struct.apimsg_msg, %struct.apimsg_msg* %124, i32 0, i32 0
  %126 = load %struct.TYPE_12__*, %struct.TYPE_12__** %125, align 8
  %127 = load i32, i32* @NETCONN_EVTSENDMINUS, align 4
  %128 = load %struct.apimsg_msg*, %struct.apimsg_msg** %2, align 8
  %129 = getelementptr inbounds %struct.apimsg_msg, %struct.apimsg_msg* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = call i32 %123(%struct.TYPE_12__* %126, i32 %127, i32 %132)
  br label %134

134:                                              ; preds = %118, %108
  br label %135

135:                                              ; preds = %134, %104
  br label %136

136:                                              ; preds = %135, %92
  br label %138

137:                                              ; preds = %12
  br label %138

138:                                              ; preds = %137, %136, %18
  br label %139

139:                                              ; preds = %138, %1
  %140 = load %struct.apimsg_msg*, %struct.apimsg_msg** %2, align 8
  %141 = getelementptr inbounds %struct.apimsg_msg, %struct.apimsg_msg* %140, i32 0, i32 0
  %142 = load %struct.TYPE_12__*, %struct.TYPE_12__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* @MQ_MSG_BLOCK, align 4
  %146 = call i32 @MQ_Send(i32 %144, i32* %4, i32 %145)
  ret void
}

declare dso_local i32 @tcp_write(%struct.TYPE_11__*, i32, i32, i32) #1

declare dso_local i32 @LWIP_DEBUGF(i32, i8*) #1

declare dso_local i32 @tcp_output(%struct.TYPE_11__*) #1

declare dso_local i32 @tcp_sndbuf(%struct.TYPE_11__*) #1

declare dso_local i32 @MQ_Send(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
