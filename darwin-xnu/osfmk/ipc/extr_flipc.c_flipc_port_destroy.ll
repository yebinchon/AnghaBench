; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_flipc.c_flipc_port_destroy.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_flipc.c_flipc_port_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i32 }
%struct.TYPE_25__ = type { i64, i32, %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_22__ = type { %struct.TYPE_23__ }
%struct.TYPE_23__ = type { %struct.TYPE_21__, i32, i32 }
%struct.TYPE_21__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i32, %struct.TYPE_25__* }

@IKM_NULL = common dso_local global %struct.TYPE_24__* null, align 8
@FPORT_STATE_PRINCIPAL = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@FPORT_NULL = common dso_local global %struct.TYPE_25__* null, align 8
@IP_NULL = common dso_local global i32 0, align 4
@flipc_port_zone = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_22__*)* @flipc_port_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @flipc_port_destroy(%struct.TYPE_22__* %0) #0 {
  %2 = alloca %struct.TYPE_22__*, align 8
  %3 = alloca %struct.TYPE_23__*, align 8
  %4 = alloca %struct.TYPE_25__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_24__*, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %2, align 8
  %7 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %8 = call i32 @IP_VALID(%struct.TYPE_22__* %7)
  %9 = call i32 @assert(i32 %8)
  %10 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %10, i32 0, i32 0
  store %struct.TYPE_23__* %11, %struct.TYPE_23__** %3, align 8
  %12 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  store %struct.TYPE_25__* %16, %struct.TYPE_25__** %4, align 8
  %17 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %18 = call i32 @FPORT_VALID(%struct.TYPE_25__* %17)
  %19 = call i32 @assert(i32 %18)
  %20 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @MNL_NAME_VALID(i32 %23)
  %25 = call i32 @assert(i32 %24)
  %26 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %71

33:                                               ; preds = %1
  br label %34

34:                                               ; preds = %63, %33
  %35 = load i32, i32* %5, align 4
  %36 = add nsw i32 %35, -1
  store i32 %36, i32* %5, align 4
  %37 = icmp ne i32 %35, 0
  br i1 %37, label %38, label %70

38:                                               ; preds = %34
  %39 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %39, i32 0, i32 2
  %41 = call %struct.TYPE_24__* @ipc_kmsg_queue_first(i32* %40)
  store %struct.TYPE_24__* %41, %struct.TYPE_24__** %6, align 8
  %42 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %43 = load %struct.TYPE_24__*, %struct.TYPE_24__** @IKM_NULL, align 8
  %44 = icmp ne %struct.TYPE_24__* %42, %43
  %45 = zext i1 %44 to i32
  %46 = call i32 @assert(i32 %45)
  %47 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %47, i32 0, i32 2
  %49 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %50 = call i32 @ipc_kmsg_rmqueue(i32* %48, %struct.TYPE_24__* %49)
  %51 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @FPORT_STATE_PRINCIPAL, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %63

56:                                               ; preds = %38
  %57 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %61 = load i32, i32* @FALSE, align 4
  %62 = call i32 @flipc_msg_ack(i32 %59, %struct.TYPE_23__* %60, i32 %61)
  br label %63

63:                                               ; preds = %56, %38
  %64 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %65 = call i32 @ipc_mqueue_release_msgcount(%struct.TYPE_23__* %64, i32* null)
  %66 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %67, align 8
  br label %34

70:                                               ; preds = %34
  br label %71

71:                                               ; preds = %70, %1
  %72 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @mnl_obj_remove(i32 %75)
  %77 = load %struct.TYPE_25__*, %struct.TYPE_25__** @FPORT_NULL, align 8
  %78 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %79 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %81, i32 0, i32 1
  store %struct.TYPE_25__* %77, %struct.TYPE_25__** %82, align 8
  %83 = load i32, i32* @IP_NULL, align 4
  %84 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %84, i32 0, i32 1
  store i32 %83, i32* %85, align 8
  %86 = load i32, i32* @flipc_port_zone, align 4
  %87 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %88 = call i32 @zfree(i32 %86, %struct.TYPE_25__* %87)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @IP_VALID(%struct.TYPE_22__*) #1

declare dso_local i32 @FPORT_VALID(%struct.TYPE_25__*) #1

declare dso_local i32 @MNL_NAME_VALID(i32) #1

declare dso_local %struct.TYPE_24__* @ipc_kmsg_queue_first(i32*) #1

declare dso_local i32 @ipc_kmsg_rmqueue(i32*, %struct.TYPE_24__*) #1

declare dso_local i32 @flipc_msg_ack(i32, %struct.TYPE_23__*, i32) #1

declare dso_local i32 @ipc_mqueue_release_msgcount(%struct.TYPE_23__*, i32*) #1

declare dso_local i32 @mnl_obj_remove(i32) #1

declare dso_local i32 @zfree(i32, %struct.TYPE_25__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
