; ModuleID = '/home/carl/AnghaBench/TDengine/src/client/src/extr_tscFunctionImpl.c_function_finalizer.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/client/src/extr_tscFunctionImpl.c_function_finalizer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.TYPE_7__ = type { i64 }

@DATA_SET_FLAG = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [43 x i8] c"no result generated, result is set to NULL\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*)* @function_finalizer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @function_finalizer(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %4 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %5 = call %struct.TYPE_7__* @GET_RES_INFO(%struct.TYPE_8__* %4)
  store %struct.TYPE_7__* %5, %struct.TYPE_7__** %3, align 8
  %6 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @DATA_SET_FLAG, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %23

11:                                               ; preds = %1
  %12 = call i32 @pTrace(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @setNull(i32 %15, i32 %18, i32 %21)
  br label %23

23:                                               ; preds = %11, %1
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %25 = call %struct.TYPE_7__* @GET_RES_INFO(%struct.TYPE_8__* %24)
  %26 = call i32 @resetResultInfo(%struct.TYPE_7__* %25)
  ret void
}

declare dso_local %struct.TYPE_7__* @GET_RES_INFO(%struct.TYPE_8__*) #1

declare dso_local i32 @pTrace(i8*) #1

declare dso_local i32 @setNull(i32, i32, i32) #1

declare dso_local i32 @resetResultInfo(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
