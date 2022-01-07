; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_flipc.c_flipc_port_create.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_flipc.c_flipc_port_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_14__*, i32, i64, %struct.TYPE_12__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_15__* }
%struct.TYPE_12__ = type { i32 }

@flipc_port_zone = common dso_local global i32 0, align 4
@KERN_RESOURCE_SHORTAGE = common dso_local global i64 0, align 8
@localnode = common dso_local global i64 0, align 8
@FPORT_STATE_PRINCIPAL = common dso_local global i32 0, align 4
@FPORT_STATE_PROXY = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i64 0, align 8
@FPORT_NULL = common dso_local global %struct.TYPE_15__* null, align 8
@IP_NULL = common dso_local global %struct.TYPE_14__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_14__*, i64, i32)* @flipc_port_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @flipc_port_create(%struct.TYPE_14__* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %11 = call i32 @IP_VALID(%struct.TYPE_14__* %10)
  %12 = call i32 @assert(i32 %11)
  %13 = load i64, i64* %6, align 8
  %14 = call i32 @MACH_NODE_VALID(i64 %13)
  %15 = call i32 @assert(i32 %14)
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @MNL_NAME_VALID(i32 %16)
  %18 = call i32 @assert(i32 %17)
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %23 = call i32 @FPORT_VALID(%struct.TYPE_15__* %22)
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = call i32 @assert(i32 %26)
  %28 = load i32, i32* @flipc_port_zone, align 4
  %29 = call i32 @zalloc(i32 %28)
  %30 = sext i32 %29 to i64
  %31 = inttoptr i64 %30 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %31, %struct.TYPE_15__** %8, align 8
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %33 = call i32 @FPORT_VALID(%struct.TYPE_15__* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %3
  %36 = load i64, i64* @KERN_RESOURCE_SHORTAGE, align 8
  store i64 %36, i64* %4, align 8
  br label %85

37:                                               ; preds = %3
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %39 = call i32 @bzero(%struct.TYPE_15__* %38, i32 4)
  %40 = load i32, i32* %7, align 4
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %41, i32 0, i32 3
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 0
  store i32 %40, i32* %43, align 8
  %44 = load i64, i64* %6, align 8
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 2
  store i64 %44, i64* %46, align 8
  %47 = load i64, i64* %6, align 8
  %48 = load i64, i64* @localnode, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %37
  %51 = load i32, i32* @FPORT_STATE_PRINCIPAL, align 4
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 8
  br label %58

54:                                               ; preds = %37
  %55 = load i32, i32* @FPORT_STATE_PROXY, align 4
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 8
  br label %58

58:                                               ; preds = %54, %50
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %60, i32 0, i32 0
  store %struct.TYPE_14__* %59, %struct.TYPE_14__** %61, align 8
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 0
  store %struct.TYPE_15__* %62, %struct.TYPE_15__** %65, align 8
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %67 = ptrtoint %struct.TYPE_15__* %66 to i32
  %68 = call i64 @mnl_obj_insert(i32 %67)
  store i64 %68, i64* %9, align 8
  %69 = load i64, i64* %9, align 8
  %70 = load i64, i64* @KERN_SUCCESS, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %83

72:                                               ; preds = %58
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** @FPORT_NULL, align 8
  %74 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 0
  store %struct.TYPE_15__* %73, %struct.TYPE_15__** %76, align 8
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** @IP_NULL, align 8
  %78 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %78, i32 0, i32 0
  store %struct.TYPE_14__* %77, %struct.TYPE_14__** %79, align 8
  %80 = load i32, i32* @flipc_port_zone, align 4
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %82 = call i32 @zfree(i32 %80, %struct.TYPE_15__* %81)
  br label %83

83:                                               ; preds = %72, %58
  %84 = load i64, i64* %9, align 8
  store i64 %84, i64* %4, align 8
  br label %85

85:                                               ; preds = %83, %35
  %86 = load i64, i64* %4, align 8
  ret i64 %86
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @IP_VALID(%struct.TYPE_14__*) #1

declare dso_local i32 @MACH_NODE_VALID(i64) #1

declare dso_local i32 @MNL_NAME_VALID(i32) #1

declare dso_local i32 @FPORT_VALID(%struct.TYPE_15__*) #1

declare dso_local i32 @zalloc(i32) #1

declare dso_local i32 @bzero(%struct.TYPE_15__*, i32) #1

declare dso_local i64 @mnl_obj_insert(i32) #1

declare dso_local i32 @zfree(i32, %struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
