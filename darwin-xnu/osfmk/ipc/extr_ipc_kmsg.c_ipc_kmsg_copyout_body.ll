; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_ipc_kmsg.c_ipc_kmsg_copyout_body.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_ipc_kmsg.c_ipc_kmsg_copyout_body.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_27__ = type { i64 }
%struct.TYPE_26__ = type { %struct.TYPE_23__ }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_28__ = type { %struct.TYPE_25__* }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_24__ = type { i64 }

@MACH_MSG_SUCCESS = common dso_local global i32 0, align 4
@VM_MAX_ADDRESS = common dso_local global i64 0, align 8
@MACH_MSG_BODY_NULL = common dso_local global %struct.TYPE_27__* null, align 8
@.str = private unnamed_addr constant [23 x i8] c"Scatter lists disabled\00", align 1
@MACH_MSG_DESCRIPTOR_NULL = common dso_local global %struct.TYPE_26__* null, align 8
@.str.1 = private unnamed_addr constant [53 x i8] c"untyped IPC copyout body: invalid message descriptor\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipc_kmsg_copyout_body(%struct.TYPE_28__* %0, i32 %1, %struct.TYPE_24__* %2, %struct.TYPE_27__* %3) #0 {
  %5 = alloca %struct.TYPE_28__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_24__*, align 8
  %8 = alloca %struct.TYPE_27__*, align 8
  %9 = alloca %struct.TYPE_27__*, align 8
  %10 = alloca %struct.TYPE_26__*, align 8
  %11 = alloca %struct.TYPE_26__*, align 8
  %12 = alloca %struct.TYPE_26__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  store %struct.TYPE_28__* %0, %struct.TYPE_28__** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_24__* %2, %struct.TYPE_24__** %7, align 8
  store %struct.TYPE_27__* %3, %struct.TYPE_27__** %8, align 8
  %19 = load i32, i32* @MACH_MSG_SUCCESS, align 4
  store i32 %19, i32* %16, align 4
  %20 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @VM_MAX_ADDRESS, align 8
  %24 = icmp sgt i64 %22, %23
  %25 = zext i1 %24 to i32
  store i32 %25, i32* %17, align 4
  %26 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_25__*, %struct.TYPE_25__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %28, i64 1
  %30 = bitcast %struct.TYPE_25__* %29 to %struct.TYPE_27__*
  store %struct.TYPE_27__* %30, %struct.TYPE_27__** %9, align 8
  %31 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %13, align 8
  %34 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %34, i64 1
  %36 = bitcast %struct.TYPE_27__* %35 to %struct.TYPE_26__*
  store %struct.TYPE_26__* %36, %struct.TYPE_26__** %10, align 8
  %37 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %38 = load i64, i64* %13, align 8
  %39 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %37, i64 %38
  store %struct.TYPE_26__* %39, %struct.TYPE_26__** %11, align 8
  %40 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %41 = load %struct.TYPE_27__*, %struct.TYPE_27__** @MACH_MSG_BODY_NULL, align 8
  %42 = icmp ne %struct.TYPE_27__* %40, %41
  br i1 %42, label %43, label %51

43:                                               ; preds = %4
  %44 = call i32 @panic(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %45 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %45, i64 1
  %47 = bitcast %struct.TYPE_27__* %46 to %struct.TYPE_26__*
  store %struct.TYPE_26__* %47, %struct.TYPE_26__** %12, align 8
  %48 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  store i64 %50, i64* %14, align 8
  br label %53

51:                                               ; preds = %4
  %52 = load %struct.TYPE_26__*, %struct.TYPE_26__** @MACH_MSG_DESCRIPTOR_NULL, align 8
  store %struct.TYPE_26__* %52, %struct.TYPE_26__** %12, align 8
  store i64 0, i64* %14, align 8
  br label %53

53:                                               ; preds = %51, %43
  %54 = load i64, i64* %13, align 8
  %55 = sub i64 %54, 1
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %15, align 4
  br label %57

57:                                               ; preds = %101, %53
  %58 = load i32, i32* %15, align 4
  %59 = icmp sge i32 %58, 0
  br i1 %59, label %60, label %104

60:                                               ; preds = %57
  %61 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %62 = load i32, i32* %15, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  switch i32 %67, label %98 [
    i32 128, label %68
    i32 129, label %76
    i32 131, label %76
    i32 130, label %86
  ]

68:                                               ; preds = %60
  %69 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %70 = load i32, i32* %15, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %69, i64 %71
  %73 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %74 = load i32, i32* %6, align 4
  %75 = call %struct.TYPE_26__* @ipc_kmsg_copyout_port_descriptor(%struct.TYPE_26__* %72, %struct.TYPE_26__* %73, i32 %74, i32* %16)
  store %struct.TYPE_26__* %75, %struct.TYPE_26__** %11, align 8
  br label %100

76:                                               ; preds = %60, %60
  %77 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %78 = load i32, i32* %15, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %77, i64 %79
  %81 = bitcast %struct.TYPE_26__* %80 to i32*
  %82 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %83 = load i32, i32* %17, align 4
  %84 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %85 = call %struct.TYPE_26__* @ipc_kmsg_copyout_ool_descriptor(i32* %81, %struct.TYPE_26__* %82, i32 %83, %struct.TYPE_24__* %84, i32* %16)
  store %struct.TYPE_26__* %85, %struct.TYPE_26__** %11, align 8
  br label %100

86:                                               ; preds = %60
  %87 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %88 = load i32, i32* %15, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %87, i64 %89
  %91 = bitcast %struct.TYPE_26__* %90 to i32*
  %92 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %93 = load i32, i32* %17, align 4
  %94 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %95 = load i32, i32* %6, align 4
  %96 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %97 = call %struct.TYPE_26__* @ipc_kmsg_copyout_ool_ports_descriptor(i32* %91, %struct.TYPE_26__* %92, i32 %93, %struct.TYPE_24__* %94, i32 %95, %struct.TYPE_28__* %96, i32* %16)
  store %struct.TYPE_26__* %97, %struct.TYPE_26__** %11, align 8
  br label %100

98:                                               ; preds = %60
  %99 = call i32 @panic(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0))
  br label %100

100:                                              ; preds = %98, %86, %76, %68
  br label %101

101:                                              ; preds = %100
  %102 = load i32, i32* %15, align 4
  %103 = add nsw i32 %102, -1
  store i32 %103, i32* %15, align 4
  br label %57

104:                                              ; preds = %57
  %105 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %106 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %107 = icmp ne %struct.TYPE_26__* %105, %106
  br i1 %107, label %108, label %143

108:                                              ; preds = %104
  %109 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %110 = ptrtoint %struct.TYPE_26__* %109 to i64
  %111 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %112 = ptrtoint %struct.TYPE_26__* %111 to i64
  %113 = sub nsw i64 %110, %112
  store i64 %113, i64* %18, align 8
  %114 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %114, i32 0, i32 0
  %116 = load %struct.TYPE_25__*, %struct.TYPE_25__** %115, align 8
  %117 = ptrtoint %struct.TYPE_25__* %116 to i64
  %118 = load i64, i64* %18, align 8
  %119 = add nsw i64 %117, %118
  %120 = inttoptr i64 %119 to i8*
  %121 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %121, i32 0, i32 0
  %123 = load %struct.TYPE_25__*, %struct.TYPE_25__** %122, align 8
  %124 = call i32 @memmove(i8* %120, %struct.TYPE_25__* %123, i32 4)
  %125 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %125, i32 0, i32 0
  %127 = load %struct.TYPE_25__*, %struct.TYPE_25__** %126, align 8
  %128 = ptrtoint %struct.TYPE_25__* %127 to i64
  %129 = load i64, i64* %18, align 8
  %130 = add nsw i64 %128, %129
  %131 = inttoptr i64 %130 to %struct.TYPE_25__*
  %132 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %132, i32 0, i32 0
  store %struct.TYPE_25__* %131, %struct.TYPE_25__** %133, align 8
  %134 = load i64, i64* %18, align 8
  %135 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %135, i32 0, i32 0
  %137 = load %struct.TYPE_25__*, %struct.TYPE_25__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = sext i32 %139 to i64
  %141 = sub nsw i64 %140, %134
  %142 = trunc i64 %141 to i32
  store i32 %142, i32* %138, align 4
  br label %143

143:                                              ; preds = %108, %104
  %144 = load i32, i32* %16, align 4
  ret i32 %144
}

declare dso_local i32 @panic(i8*) #1

declare dso_local %struct.TYPE_26__* @ipc_kmsg_copyout_port_descriptor(%struct.TYPE_26__*, %struct.TYPE_26__*, i32, i32*) #1

declare dso_local %struct.TYPE_26__* @ipc_kmsg_copyout_ool_descriptor(i32*, %struct.TYPE_26__*, i32, %struct.TYPE_24__*, i32*) #1

declare dso_local %struct.TYPE_26__* @ipc_kmsg_copyout_ool_ports_descriptor(i32*, %struct.TYPE_26__*, i32, %struct.TYPE_24__*, i32, %struct.TYPE_28__*, i32*) #1

declare dso_local i32 @memmove(i8*, %struct.TYPE_25__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
