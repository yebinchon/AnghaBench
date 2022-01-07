; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/lwip/extr_network.c_do_delconn.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/lwip/extr_network.c_do_delconn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.apimsg_msg = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i64, i32 (%struct.TYPE_13__*, i32, i32)*, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_16__*, %struct.TYPE_15__*, i32 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i32* }

@LISTEN = common dso_local global i32 0, align 4
@ERR_OK = common dso_local global i32 0, align 4
@NETCONN_EVTRCVPLUS = common dso_local global i32 0, align 4
@NETCONN_EVTSENDPLUS = common dso_local global i32 0, align 4
@SYS_MBOX_NULL = common dso_local global i64 0, align 8
@MQ_MSG_BLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.apimsg_msg*)* @do_delconn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_delconn(%struct.apimsg_msg* %0) #0 {
  %2 = alloca %struct.apimsg_msg*, align 8
  %3 = alloca i32, align 4
  store %struct.apimsg_msg* %0, %struct.apimsg_msg** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.apimsg_msg*, %struct.apimsg_msg** %2, align 8
  %5 = getelementptr inbounds %struct.apimsg_msg, %struct.apimsg_msg* %4, i32 0, i32 0
  %6 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 3
  %8 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %10 = icmp ne %struct.TYPE_16__* %9, null
  br i1 %10, label %11, label %130

11:                                               ; preds = %1
  %12 = load %struct.apimsg_msg*, %struct.apimsg_msg** %2, align 8
  %13 = getelementptr inbounds %struct.apimsg_msg, %struct.apimsg_msg* %12, i32 0, i32 0
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  switch i32 %16, label %128 [
    i32 132, label %17
    i32 129, label %25
    i32 128, label %25
    i32 130, label %25
    i32 131, label %40
  ]

17:                                               ; preds = %11
  %18 = load %struct.apimsg_msg*, %struct.apimsg_msg** %2, align 8
  %19 = getelementptr inbounds %struct.apimsg_msg, %struct.apimsg_msg* %18, i32 0, i32 0
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 3
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @raw_remove(i32 %23)
  br label %129

25:                                               ; preds = %11, %11, %11
  %26 = load %struct.apimsg_msg*, %struct.apimsg_msg** %2, align 8
  %27 = getelementptr inbounds %struct.apimsg_msg, %struct.apimsg_msg* %26, i32 0, i32 0
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 0
  store i32* null, i32** %32, align 8
  %33 = load %struct.apimsg_msg*, %struct.apimsg_msg** %2, align 8
  %34 = getelementptr inbounds %struct.apimsg_msg, %struct.apimsg_msg* %33, i32 0, i32 0
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 3
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %37, align 8
  %39 = call i32 @udp_remove(%struct.TYPE_15__* %38)
  br label %129

40:                                               ; preds = %11
  %41 = load %struct.apimsg_msg*, %struct.apimsg_msg** %2, align 8
  %42 = getelementptr inbounds %struct.apimsg_msg, %struct.apimsg_msg* %41, i32 0, i32 0
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 3
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @LISTEN, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %73

51:                                               ; preds = %40
  %52 = load %struct.apimsg_msg*, %struct.apimsg_msg** %2, align 8
  %53 = getelementptr inbounds %struct.apimsg_msg, %struct.apimsg_msg* %52, i32 0, i32 0
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 3
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_16__*, %struct.TYPE_16__** %56, align 8
  %58 = call i32 @tcp_arg(%struct.TYPE_16__* %57, i32* null)
  %59 = load %struct.apimsg_msg*, %struct.apimsg_msg** %2, align 8
  %60 = getelementptr inbounds %struct.apimsg_msg, %struct.apimsg_msg* %59, i32 0, i32 0
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 3
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_16__*, %struct.TYPE_16__** %63, align 8
  %65 = call i32 @tcp_accept(%struct.TYPE_16__* %64, i32* null)
  %66 = load %struct.apimsg_msg*, %struct.apimsg_msg** %2, align 8
  %67 = getelementptr inbounds %struct.apimsg_msg, %struct.apimsg_msg* %66, i32 0, i32 0
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 3
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** %70, align 8
  %72 = call i32 @tcp_close(%struct.TYPE_16__* %71)
  br label %127

73:                                               ; preds = %40
  %74 = load %struct.apimsg_msg*, %struct.apimsg_msg** %2, align 8
  %75 = getelementptr inbounds %struct.apimsg_msg, %struct.apimsg_msg* %74, i32 0, i32 0
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 3
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_16__*, %struct.TYPE_16__** %78, align 8
  %80 = call i32 @tcp_arg(%struct.TYPE_16__* %79, i32* null)
  %81 = load %struct.apimsg_msg*, %struct.apimsg_msg** %2, align 8
  %82 = getelementptr inbounds %struct.apimsg_msg, %struct.apimsg_msg* %81, i32 0, i32 0
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %83, i32 0, i32 3
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_16__*, %struct.TYPE_16__** %85, align 8
  %87 = call i32 @tcp_sent(%struct.TYPE_16__* %86, i32* null)
  %88 = load %struct.apimsg_msg*, %struct.apimsg_msg** %2, align 8
  %89 = getelementptr inbounds %struct.apimsg_msg, %struct.apimsg_msg* %88, i32 0, i32 0
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i32 0, i32 3
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i32 0, i32 0
  %93 = load %struct.TYPE_16__*, %struct.TYPE_16__** %92, align 8
  %94 = call i32 @tcp_recv(%struct.TYPE_16__* %93, i32* null)
  %95 = load %struct.apimsg_msg*, %struct.apimsg_msg** %2, align 8
  %96 = getelementptr inbounds %struct.apimsg_msg, %struct.apimsg_msg* %95, i32 0, i32 0
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %97, i32 0, i32 3
  %99 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %98, i32 0, i32 0
  %100 = load %struct.TYPE_16__*, %struct.TYPE_16__** %99, align 8
  %101 = call i32 @tcp_poll(%struct.TYPE_16__* %100, i32* null, i32 0)
  %102 = load %struct.apimsg_msg*, %struct.apimsg_msg** %2, align 8
  %103 = getelementptr inbounds %struct.apimsg_msg, %struct.apimsg_msg* %102, i32 0, i32 0
  %104 = load %struct.TYPE_13__*, %struct.TYPE_13__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %104, i32 0, i32 3
  %106 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %105, i32 0, i32 0
  %107 = load %struct.TYPE_16__*, %struct.TYPE_16__** %106, align 8
  %108 = call i32 @tcp_err(%struct.TYPE_16__* %107, i32* null)
  %109 = load %struct.apimsg_msg*, %struct.apimsg_msg** %2, align 8
  %110 = getelementptr inbounds %struct.apimsg_msg, %struct.apimsg_msg* %109, i32 0, i32 0
  %111 = load %struct.TYPE_13__*, %struct.TYPE_13__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %111, i32 0, i32 3
  %113 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %112, i32 0, i32 0
  %114 = load %struct.TYPE_16__*, %struct.TYPE_16__** %113, align 8
  %115 = call i32 @tcp_close(%struct.TYPE_16__* %114)
  %116 = load i32, i32* @ERR_OK, align 4
  %117 = icmp ne i32 %115, %116
  br i1 %117, label %118, label %126

118:                                              ; preds = %73
  %119 = load %struct.apimsg_msg*, %struct.apimsg_msg** %2, align 8
  %120 = getelementptr inbounds %struct.apimsg_msg, %struct.apimsg_msg* %119, i32 0, i32 0
  %121 = load %struct.TYPE_13__*, %struct.TYPE_13__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %121, i32 0, i32 3
  %123 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %122, i32 0, i32 0
  %124 = load %struct.TYPE_16__*, %struct.TYPE_16__** %123, align 8
  %125 = call i32 @tcp_abort(%struct.TYPE_16__* %124)
  br label %126

126:                                              ; preds = %118, %73
  br label %127

127:                                              ; preds = %126, %51
  br label %129

128:                                              ; preds = %11
  br label %129

129:                                              ; preds = %128, %127, %25, %17
  br label %130

130:                                              ; preds = %129, %1
  %131 = load %struct.apimsg_msg*, %struct.apimsg_msg** %2, align 8
  %132 = getelementptr inbounds %struct.apimsg_msg, %struct.apimsg_msg* %131, i32 0, i32 0
  %133 = load %struct.TYPE_13__*, %struct.TYPE_13__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %133, i32 0, i32 2
  %135 = load i32 (%struct.TYPE_13__*, i32, i32)*, i32 (%struct.TYPE_13__*, i32, i32)** %134, align 8
  %136 = icmp ne i32 (%struct.TYPE_13__*, i32, i32)* %135, null
  br i1 %136, label %137, label %158

137:                                              ; preds = %130
  %138 = load %struct.apimsg_msg*, %struct.apimsg_msg** %2, align 8
  %139 = getelementptr inbounds %struct.apimsg_msg, %struct.apimsg_msg* %138, i32 0, i32 0
  %140 = load %struct.TYPE_13__*, %struct.TYPE_13__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %140, i32 0, i32 2
  %142 = load i32 (%struct.TYPE_13__*, i32, i32)*, i32 (%struct.TYPE_13__*, i32, i32)** %141, align 8
  %143 = load %struct.apimsg_msg*, %struct.apimsg_msg** %2, align 8
  %144 = getelementptr inbounds %struct.apimsg_msg, %struct.apimsg_msg* %143, i32 0, i32 0
  %145 = load %struct.TYPE_13__*, %struct.TYPE_13__** %144, align 8
  %146 = load i32, i32* @NETCONN_EVTRCVPLUS, align 4
  %147 = call i32 %142(%struct.TYPE_13__* %145, i32 %146, i32 0)
  %148 = load %struct.apimsg_msg*, %struct.apimsg_msg** %2, align 8
  %149 = getelementptr inbounds %struct.apimsg_msg, %struct.apimsg_msg* %148, i32 0, i32 0
  %150 = load %struct.TYPE_13__*, %struct.TYPE_13__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %150, i32 0, i32 2
  %152 = load i32 (%struct.TYPE_13__*, i32, i32)*, i32 (%struct.TYPE_13__*, i32, i32)** %151, align 8
  %153 = load %struct.apimsg_msg*, %struct.apimsg_msg** %2, align 8
  %154 = getelementptr inbounds %struct.apimsg_msg, %struct.apimsg_msg* %153, i32 0, i32 0
  %155 = load %struct.TYPE_13__*, %struct.TYPE_13__** %154, align 8
  %156 = load i32, i32* @NETCONN_EVTSENDPLUS, align 4
  %157 = call i32 %152(%struct.TYPE_13__* %155, i32 %156, i32 0)
  br label %158

158:                                              ; preds = %137, %130
  %159 = load %struct.apimsg_msg*, %struct.apimsg_msg** %2, align 8
  %160 = getelementptr inbounds %struct.apimsg_msg, %struct.apimsg_msg* %159, i32 0, i32 0
  %161 = load %struct.TYPE_13__*, %struct.TYPE_13__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %161, i32 0, i32 1
  %163 = load i64, i64* %162, align 8
  %164 = load i64, i64* @SYS_MBOX_NULL, align 8
  %165 = icmp ne i64 %163, %164
  br i1 %165, label %166, label %174

166:                                              ; preds = %158
  %167 = load %struct.apimsg_msg*, %struct.apimsg_msg** %2, align 8
  %168 = getelementptr inbounds %struct.apimsg_msg, %struct.apimsg_msg* %167, i32 0, i32 0
  %169 = load %struct.TYPE_13__*, %struct.TYPE_13__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %169, i32 0, i32 1
  %171 = load i64, i64* %170, align 8
  %172 = load i32, i32* @MQ_MSG_BLOCK, align 4
  %173 = call i32 @MQ_Send(i64 %171, i32* %3, i32 %172)
  br label %174

174:                                              ; preds = %166, %158
  ret void
}

declare dso_local i32 @raw_remove(i32) #1

declare dso_local i32 @udp_remove(%struct.TYPE_15__*) #1

declare dso_local i32 @tcp_arg(%struct.TYPE_16__*, i32*) #1

declare dso_local i32 @tcp_accept(%struct.TYPE_16__*, i32*) #1

declare dso_local i32 @tcp_close(%struct.TYPE_16__*) #1

declare dso_local i32 @tcp_sent(%struct.TYPE_16__*, i32*) #1

declare dso_local i32 @tcp_recv(%struct.TYPE_16__*, i32*) #1

declare dso_local i32 @tcp_poll(%struct.TYPE_16__*, i32*, i32) #1

declare dso_local i32 @tcp_err(%struct.TYPE_16__*, i32*) #1

declare dso_local i32 @tcp_abort(%struct.TYPE_16__*) #1

declare dso_local i32 @MQ_Send(i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
