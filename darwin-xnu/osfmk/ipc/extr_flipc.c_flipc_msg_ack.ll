; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_flipc.c_flipc_msg_ack.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_flipc.c_flipc_msg_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_32__ = type { %struct.TYPE_33__ }
%struct.TYPE_33__ = type { %struct.TYPE_35__* }
%struct.TYPE_35__ = type { %struct.TYPE_32__*, %struct.TYPE_27__ }
%struct.TYPE_27__ = type { i32 }
%struct.TYPE_30__ = type { %struct.TYPE_32__*, %struct.TYPE_28__, i64 }
%struct.TYPE_28__ = type { i8* }
%struct.TYPE_34__ = type { %struct.TYPE_31__* }
%struct.TYPE_31__ = type { i32, i32, i8*, i8*, %struct.TYPE_32__*, i32 }
%struct.TYPE_26__ = type { i32, %struct.TYPE_29__, i8* }
%struct.TYPE_29__ = type { i32, i64, i32, i8*, i64, i64, i32, i32 }

@MNL_NAME_NULL = common dso_local global i32 0, align 4
@HOST_LOCAL_NODE = common dso_local global i8* null, align 8
@IP_NULL = common dso_local global %struct.TYPE_32__* null, align 8
@MAX_TRAILER_SIZE = common dso_local global i64 0, align 8
@MACH_PORT_NULL = common dso_local global i8* null, align 8
@FLIPC_CMD_ID = common dso_local global i32 0, align 4
@MACH_NODE_SUB_FLIPC = common dso_local global i32 0, align 4
@FLIPC_CMD_ACKMESSAGE = common dso_local global i32 0, align 4
@FLIPC_CMD_NAKMESSAGE = common dso_local global i32 0, align 4
@MACH_SEND_KERNEL_DEFAULT = common dso_local global i32 0, align 4
@MACH_MSG_TIMEOUT_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @flipc_msg_ack(%struct.TYPE_30__* %0, %struct.TYPE_33__* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_30__*, align 8
  %5 = alloca %struct.TYPE_33__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_35__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_32__*, align 8
  %11 = alloca %struct.TYPE_34__*, align 8
  %12 = alloca %struct.TYPE_31__*, align 8
  %13 = alloca %struct.TYPE_26__*, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_30__* %0, %struct.TYPE_30__** %4, align 8
  store %struct.TYPE_33__* %1, %struct.TYPE_33__** %5, align 8
  store i64 %2, i64* %6, align 8
  %15 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_35__*, %struct.TYPE_35__** %16, align 8
  store %struct.TYPE_35__* %17, %struct.TYPE_35__** %7, align 8
  %18 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %19 = call i32 @FPORT_VALID(%struct.TYPE_35__* %18)
  %20 = call i32 @assert(i32 %19)
  %21 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %22 = call i32 @MACH_NODE_VALID(%struct.TYPE_30__* %21)
  %23 = call i32 @assert(i32 %22)
  %24 = load i32, i32* @MNL_NAME_NULL, align 4
  store i32 %24, i32* %8, align 4
  %25 = load i8*, i8** @HOST_LOCAL_NODE, align 8
  store i8* %25, i8** %9, align 8
  %26 = load %struct.TYPE_32__*, %struct.TYPE_32__** @IP_NULL, align 8
  store %struct.TYPE_32__* %26, %struct.TYPE_32__** %10, align 8
  %27 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_32__*, %struct.TYPE_32__** %28, align 8
  %30 = call i32 @ip_lock(%struct.TYPE_32__* %29)
  %31 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %8, align 4
  %35 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_32__*, %struct.TYPE_32__** %36, align 8
  %38 = call i32 @ip_unlock(%struct.TYPE_32__* %37)
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @MNL_NAME_VALID(i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %3
  br label %145

43:                                               ; preds = %3
  %44 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %45 = call i32 @MACH_NODE_LOCK(%struct.TYPE_30__* %44)
  %46 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %43
  %51 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %52, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  store i8* %54, i8** %9, align 8
  %55 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_32__*, %struct.TYPE_32__** %56, align 8
  store %struct.TYPE_32__* %57, %struct.TYPE_32__** %10, align 8
  br label %58

58:                                               ; preds = %50, %43
  %59 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %60 = call i32 @MACH_NODE_UNLOCK(%struct.TYPE_30__* %59)
  %61 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %62 = call i32 @IP_VALID(%struct.TYPE_32__* %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %58
  %65 = load i8*, i8** %9, align 8
  %66 = call i32 @MACH_NODE_ID_VALID(i8* %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %64, %58
  br label %145

69:                                               ; preds = %64
  %70 = load i64, i64* @MAX_TRAILER_SIZE, align 8
  %71 = add i64 4, %70
  %72 = call %struct.TYPE_34__* @ipc_kmsg_alloc(i64 %71)
  store %struct.TYPE_34__* %72, %struct.TYPE_34__** %11, align 8
  %73 = load %struct.TYPE_34__*, %struct.TYPE_34__** %11, align 8
  %74 = ptrtoint %struct.TYPE_34__* %73 to i64
  %75 = icmp uge i64 %74, 4
  %76 = zext i1 %75 to i32
  %77 = call i32 @assert(i32 %76)
  %78 = load %struct.TYPE_34__*, %struct.TYPE_34__** %11, align 8
  %79 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_31__*, %struct.TYPE_31__** %79, align 8
  store %struct.TYPE_31__* %80, %struct.TYPE_31__** %12, align 8
  %81 = call i32 @MACH_MSGH_BITS_SET(i32 0, i32 0, i32 0, i32 0)
  %82 = load %struct.TYPE_31__*, %struct.TYPE_31__** %12, align 8
  %83 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %82, i32 0, i32 5
  store i32 %81, i32* %83, align 8
  %84 = load %struct.TYPE_31__*, %struct.TYPE_31__** %12, align 8
  %85 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %84, i32 0, i32 0
  store i32 8, i32* %85, align 8
  %86 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %87 = load %struct.TYPE_31__*, %struct.TYPE_31__** %12, align 8
  %88 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %87, i32 0, i32 4
  store %struct.TYPE_32__* %86, %struct.TYPE_32__** %88, align 8
  %89 = load i8*, i8** @MACH_PORT_NULL, align 8
  %90 = load %struct.TYPE_31__*, %struct.TYPE_31__** %12, align 8
  %91 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %90, i32 0, i32 3
  store i8* %89, i8** %91, align 8
  %92 = load i8*, i8** @MACH_PORT_NULL, align 8
  %93 = load %struct.TYPE_31__*, %struct.TYPE_31__** %12, align 8
  %94 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %93, i32 0, i32 2
  store i8* %92, i8** %94, align 8
  %95 = load i32, i32* @FLIPC_CMD_ID, align 4
  %96 = load %struct.TYPE_31__*, %struct.TYPE_31__** %12, align 8
  %97 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %96, i32 0, i32 1
  store i32 %95, i32* %97, align 4
  %98 = load %struct.TYPE_31__*, %struct.TYPE_31__** %12, align 8
  %99 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %98, i64 1
  %100 = bitcast %struct.TYPE_31__* %99 to %struct.TYPE_26__*
  store %struct.TYPE_26__* %100, %struct.TYPE_26__** %13, align 8
  %101 = load i8*, i8** @HOST_LOCAL_NODE, align 8
  %102 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %103 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %102, i32 0, i32 2
  store i8* %101, i8** %103, align 8
  %104 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %105 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %104, i32 0, i32 0
  store i32 1, i32* %105, align 8
  %106 = load i32, i32* @MACH_NODE_SUB_FLIPC, align 4
  %107 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %108 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %108, i32 0, i32 7
  store i32 %106, i32* %109, align 4
  %110 = load i64, i64* %6, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %69
  %113 = load i32, i32* @FLIPC_CMD_ACKMESSAGE, align 4
  br label %116

114:                                              ; preds = %69
  %115 = load i32, i32* @FLIPC_CMD_NAKMESSAGE, align 4
  br label %116

116:                                              ; preds = %114, %112
  %117 = phi i32 [ %113, %112 ], [ %115, %114 ]
  %118 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %119 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %119, i32 0, i32 6
  store i32 %117, i32* %120, align 8
  %121 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %122 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %122, i32 0, i32 5
  store i64 0, i64* %123, align 8
  %124 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %125 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %125, i32 0, i32 4
  store i64 0, i64* %126, align 8
  %127 = load i8*, i8** %9, align 8
  %128 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %129 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %129, i32 0, i32 3
  store i8* %127, i8** %130, align 8
  %131 = load i32, i32* %8, align 4
  %132 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %133 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %133, i32 0, i32 2
  store i32 %131, i32* %134, align 8
  %135 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %136 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %136, i32 0, i32 1
  store i64 0, i64* %137, align 8
  %138 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %139 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %139, i32 0, i32 0
  store i32 0, i32* %140, align 8
  %141 = load %struct.TYPE_34__*, %struct.TYPE_34__** %11, align 8
  %142 = load i32, i32* @MACH_SEND_KERNEL_DEFAULT, align 4
  %143 = load i32, i32* @MACH_MSG_TIMEOUT_NONE, align 4
  %144 = call i32 @ipc_kmsg_send(%struct.TYPE_34__* %141, i32 %142, i32 %143)
  store i32 %144, i32* %14, align 4
  br label %145

145:                                              ; preds = %116, %68, %42
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @FPORT_VALID(%struct.TYPE_35__*) #1

declare dso_local i32 @MACH_NODE_VALID(%struct.TYPE_30__*) #1

declare dso_local i32 @ip_lock(%struct.TYPE_32__*) #1

declare dso_local i32 @ip_unlock(%struct.TYPE_32__*) #1

declare dso_local i32 @MNL_NAME_VALID(i32) #1

declare dso_local i32 @MACH_NODE_LOCK(%struct.TYPE_30__*) #1

declare dso_local i32 @MACH_NODE_UNLOCK(%struct.TYPE_30__*) #1

declare dso_local i32 @IP_VALID(%struct.TYPE_32__*) #1

declare dso_local i32 @MACH_NODE_ID_VALID(i8*) #1

declare dso_local %struct.TYPE_34__* @ipc_kmsg_alloc(i64) #1

declare dso_local i32 @MACH_MSGH_BITS_SET(i32, i32, i32, i32) #1

declare dso_local i32 @ipc_kmsg_send(%struct.TYPE_34__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
