; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_flipc.c_mnl_msg_from_kmsg.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_flipc.c_mnl_msg_from_kmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i64, i32, i64, i32, i32, i32 }
%struct.TYPE_17__ = type { %struct.TYPE_24__* }
%struct.TYPE_24__ = type { i32, %struct.TYPE_23__* }
%struct.TYPE_23__ = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_26__ = type { i64, i8*, i8* }

@MACH_MSGH_BITS_COMPLEX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"mnl_msg_from_kmsg(): Complex messages not supported.\00", align 1
@KERN_FAILURE = common dso_local global i32 0, align 4
@MNL_MSG_NULL = common dso_local global %struct.TYPE_25__* null, align 8
@KERN_RESOURCE_SHORTAGE = common dso_local global i32 0, align 4
@MACH_NODE_SUB_FLIPC = common dso_local global i32 0, align 4
@FLIPC_CMD_IPCMESSAGE = common dso_local global i32 0, align 4
@localnode_id = common dso_local global i32 0, align 4
@MNL_NAME_NULL = common dso_local global i64 0, align 8
@KERN_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*, %struct.TYPE_25__**)* @mnl_msg_from_kmsg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mnl_msg_from_kmsg(%struct.TYPE_17__* %0, %struct.TYPE_25__** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca %struct.TYPE_25__**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_25__*, align 8
  %8 = alloca %struct.TYPE_26__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %4, align 8
  store %struct.TYPE_25__** %1, %struct.TYPE_25__*** %5, align 8
  %9 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @MACH_MSGH_BITS_COMPLEX, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = call i32 @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @KERN_FAILURE, align 4
  store i32 %19, i32* %3, align 4
  br label %91

20:                                               ; preds = %2
  %21 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %22 = call i32 @flipc_msg_size_from_kmsg(%struct.TYPE_17__* %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = call %struct.TYPE_25__* @mnl_msg_alloc(i32 %23, i32 0)
  store %struct.TYPE_25__* %24, %struct.TYPE_25__** %7, align 8
  %25 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %26 = load %struct.TYPE_25__*, %struct.TYPE_25__** @MNL_MSG_NULL, align 8
  %27 = icmp eq %struct.TYPE_25__* %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %20
  %29 = load i32, i32* @KERN_RESOURCE_SHORTAGE, align 4
  store i32 %29, i32* %3, align 4
  br label %91

30:                                               ; preds = %20
  %31 = load i32, i32* @MACH_NODE_SUB_FLIPC, align 4
  %32 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %32, i32 0, i32 5
  store i32 %31, i32* %33, align 8
  %34 = load i32, i32* @FLIPC_CMD_IPCMESSAGE, align 4
  %35 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %35, i32 0, i32 4
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* @localnode_id, align 4
  %38 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %38, i32 0, i32 3
  store i32 %37, i32* %39, align 8
  %40 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %40, i32 0, i32 2
  store i64 0, i64* %41, align 8
  %42 = load i32, i32* %6, align 4
  %43 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 8
  %45 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_24__*, %struct.TYPE_24__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_23__*, %struct.TYPE_23__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_19__*, %struct.TYPE_19__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %58, i32 0, i32 0
  store i64 %57, i64* %59, align 8
  %60 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_24__*, %struct.TYPE_24__** %61, align 8
  %63 = bitcast %struct.TYPE_24__* %62 to i8*
  %64 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %65 = call i64 @MNL_MSG_PAYLOAD(%struct.TYPE_25__* %64)
  %66 = inttoptr i64 %65 to i8*
  %67 = load i32, i32* %6, align 4
  %68 = call i32 @bcopy(i8* %63, i8* %66, i32 %67)
  %69 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %70 = call i64 @MNL_MSG_PAYLOAD(%struct.TYPE_25__* %69)
  %71 = inttoptr i64 %70 to %struct.TYPE_26__*
  store %struct.TYPE_26__* %71, %struct.TYPE_26__** %8, align 8
  %72 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = inttoptr i64 %74 to i8*
  %76 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %76, i32 0, i32 2
  store i8* %75, i8** %77, align 8
  %78 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %78, i32 0, i32 1
  %80 = load i8*, i8** %79, align 8
  %81 = call i64 @mnl_name_from_port(i8* %80)
  %82 = inttoptr i64 %81 to i8*
  %83 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %83, i32 0, i32 1
  store i8* %82, i8** %84, align 8
  %85 = load i64, i64* @MNL_NAME_NULL, align 8
  %86 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %86, i32 0, i32 0
  store i64 %85, i64* %87, align 8
  %88 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %89 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %5, align 8
  store %struct.TYPE_25__* %88, %struct.TYPE_25__** %89, align 8
  %90 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %90, i32* %3, align 4
  br label %91

91:                                               ; preds = %30, %28, %17
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @flipc_msg_size_from_kmsg(%struct.TYPE_17__*) #1

declare dso_local %struct.TYPE_25__* @mnl_msg_alloc(i32, i32) #1

declare dso_local i32 @bcopy(i8*, i8*, i32) #1

declare dso_local i64 @MNL_MSG_PAYLOAD(%struct.TYPE_25__*) #1

declare dso_local i64 @mnl_name_from_port(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
