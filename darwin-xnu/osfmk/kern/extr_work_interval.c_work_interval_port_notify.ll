; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_work_interval.c_work_interval_port_notify.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_work_interval.c_work_interval_port_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i64, i64, i64 }
%struct.work_interval = type { i32 }

@.str = private unnamed_addr constant [42 x i8] c"work_interval_port_notify(): invalid port\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"work_interval_port_notify(): inactive port %p\00", align 1
@IKOT_WORK_INTERVAL = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [60 x i8] c"work_interval_port_notify(): not the right kobject: %p, %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [68 x i8] c"work_interval_port_notify(): unexpected make-send count: %p, %d, %d\00", align 1
@.str.4 = private unnamed_addr constant [65 x i8] c"work_interval_port_notify(): unexpected send right count: %p, %d\00", align 1
@.str.5 = private unnamed_addr constant [49 x i8] c"work_interval_port_notify(): missing kobject: %p\00", align 1
@IKO_NULL = common dso_local global i32 0, align 4
@IKOT_NONE = common dso_local global i32 0, align 4
@MACH_PORT_NULL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @work_interval_port_notify(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.work_interval*, align 8
  store i32* %0, i32** %2, align 8
  %6 = load i32*, i32** %2, align 8
  %7 = bitcast i32* %6 to i8*
  %8 = bitcast i8* %7 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %8, %struct.TYPE_12__** %3, align 8
  %9 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  store %struct.TYPE_13__* %12, %struct.TYPE_13__** %4, align 8
  store %struct.work_interval* null, %struct.work_interval** %5, align 8
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %14 = call i32 @IP_VALID(%struct.TYPE_13__* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %1
  %17 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %18

18:                                               ; preds = %16, %1
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %20 = call i32 @ip_lock(%struct.TYPE_13__* %19)
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %22 = call i32 @ip_active(%struct.TYPE_13__* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %18
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %26 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_13__* %25)
  br label %27

27:                                               ; preds = %24, %18
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %29 = call i64 @ip_kotype(%struct.TYPE_13__* %28)
  %30 = load i64, i64* @IKOT_WORK_INTERVAL, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %37

32:                                               ; preds = %27
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %35 = call i64 @ip_kotype(%struct.TYPE_13__* %34)
  %36 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_13__* %33, i64 %35)
  br label %37

37:                                               ; preds = %32, %27
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %40, %43
  br i1 %44, label %45, label %54

45:                                               ; preds = %37
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.3, i64 0, i64 0), %struct.TYPE_13__* %46, i64 %49, i64 %52)
  br label %54

54:                                               ; preds = %45, %37
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %54
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.4, i64 0, i64 0), %struct.TYPE_13__* %60, i64 %63)
  br label %65

65:                                               ; preds = %59, %54
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = inttoptr i64 %68 to %struct.work_interval*
  store %struct.work_interval* %69, %struct.work_interval** %5, align 8
  %70 = load %struct.work_interval*, %struct.work_interval** %5, align 8
  %71 = icmp eq %struct.work_interval* %70, null
  br i1 %71, label %72, label %75

72:                                               ; preds = %65
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %74 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.5, i64 0, i64 0), %struct.TYPE_13__* %73)
  br label %75

75:                                               ; preds = %72, %65
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %77 = load i32, i32* @IKO_NULL, align 4
  %78 = load i32, i32* @IKOT_NONE, align 4
  %79 = call i32 @ipc_kobject_set_atomically(%struct.TYPE_13__* %76, i32 %77, i32 %78)
  %80 = load i32, i32* @MACH_PORT_NULL, align 4
  %81 = load %struct.work_interval*, %struct.work_interval** %5, align 8
  %82 = getelementptr inbounds %struct.work_interval, %struct.work_interval* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 4
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %84 = call i32 @ip_unlock(%struct.TYPE_13__* %83)
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %86 = call i32 @ipc_port_dealloc_kernel(%struct.TYPE_13__* %85)
  %87 = load %struct.work_interval*, %struct.work_interval** %5, align 8
  %88 = call i32 @wi_release(%struct.work_interval* %87)
  ret void
}

declare dso_local i32 @IP_VALID(%struct.TYPE_13__*) #1

declare dso_local i32 @panic(i8*, ...) #1

declare dso_local i32 @ip_lock(%struct.TYPE_13__*) #1

declare dso_local i32 @ip_active(%struct.TYPE_13__*) #1

declare dso_local i64 @ip_kotype(%struct.TYPE_13__*) #1

declare dso_local i32 @ipc_kobject_set_atomically(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @ip_unlock(%struct.TYPE_13__*) #1

declare dso_local i32 @ipc_port_dealloc_kernel(%struct.TYPE_13__*) #1

declare dso_local i32 @wi_release(%struct.work_interval*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
