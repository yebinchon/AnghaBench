; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_ipc_port.c_ipc_port_spnotify.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_ipc_port.c_ipc_port_spnotify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_14__ = type { i64, i64, %struct.TYPE_15__* }

@IPR_NULL = common dso_local global %struct.TYPE_15__* null, align 8
@IP_NULL = common dso_local global i32 0, align 4
@IPID_OPTION_NORMAL = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ipc_port_spnotify(%struct.TYPE_14__* %0) #0 {
  %2 = alloca %struct.TYPE_14__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %2, align 8
  store i64 0, i64* %3, align 8
  store i64 0, i64* %4, align 8
  %10 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %96

15:                                               ; preds = %1
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %17 = call i32 @ip_lock(%struct.TYPE_14__* %16)
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %15
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %24 = call i32 @ip_unlock(%struct.TYPE_14__* %23)
  br label %96

25:                                               ; preds = %15
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 0
  store i64 0, i64* %27, align 8
  br label %28

28:                                               ; preds = %80, %25
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %30 = call i64 @ip_active(%struct.TYPE_14__* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %93

32:                                               ; preds = %28
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 2
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %34, align 8
  store %struct.TYPE_15__* %35, %struct.TYPE_15__** %5, align 8
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** @IPR_NULL, align 8
  %38 = icmp ne %struct.TYPE_15__* %36, %37
  %39 = zext i1 %38 to i32
  %40 = call i32 @assert(i32 %39)
  %41 = load i64, i64* %4, align 8
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %32
  %44 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %44, i32 0, i32 2
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  store i64 %48, i64* %4, align 8
  br label %49

49:                                               ; preds = %43, %32
  br label %50

50:                                               ; preds = %91, %49
  %51 = load i64, i64* %3, align 8
  %52 = add i64 %51, 1
  store i64 %52, i64* %3, align 8
  %53 = load i64, i64* %4, align 8
  %54 = icmp ult i64 %52, %53
  br i1 %54, label %55, label %92

55:                                               ; preds = %50
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %57 = load i64, i64* %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %56, i64 %57
  store %struct.TYPE_15__* %58, %struct.TYPE_15__** %6, align 8
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %7, align 4
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call %struct.TYPE_14__* @IPR_SOR_PORT(i32 %64)
  store %struct.TYPE_14__* %65, %struct.TYPE_14__** %8, align 8
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i64 @IPR_SOR_SPARMED(i32 %68)
  store i64 %69, i64* %9, align 8
  %70 = load i32, i32* %7, align 4
  %71 = call i64 @MACH_PORT_VALID(i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %91

73:                                               ; preds = %55
  %74 = load i64, i64* %9, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %91

76:                                               ; preds = %73
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %78 = call i64 @IP_VALID(%struct.TYPE_14__* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %91

80:                                               ; preds = %76
  %81 = load i32, i32* @IP_NULL, align 4
  %82 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 8
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %85 = call i32 @ip_unlock(%struct.TYPE_14__* %84)
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %87 = load i32, i32* %7, align 4
  %88 = call i32 @ipc_notify_send_possible(%struct.TYPE_14__* %86, i32 %87)
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %90 = call i32 @ip_lock(%struct.TYPE_14__* %89)
  br label %28

91:                                               ; preds = %76, %73, %55
  br label %50

92:                                               ; preds = %50
  br label %93

93:                                               ; preds = %92, %28
  %94 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %95 = call i32 @ip_unlock(%struct.TYPE_14__* %94)
  br label %96

96:                                               ; preds = %93, %22, %14
  ret void
}

declare dso_local i32 @ip_lock(%struct.TYPE_14__*) #1

declare dso_local i32 @ip_unlock(%struct.TYPE_14__*) #1

declare dso_local i64 @ip_active(%struct.TYPE_14__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.TYPE_14__* @IPR_SOR_PORT(i32) #1

declare dso_local i64 @IPR_SOR_SPARMED(i32) #1

declare dso_local i64 @MACH_PORT_VALID(i32) #1

declare dso_local i64 @IP_VALID(%struct.TYPE_14__*) #1

declare dso_local i32 @ipc_notify_send_possible(%struct.TYPE_14__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
