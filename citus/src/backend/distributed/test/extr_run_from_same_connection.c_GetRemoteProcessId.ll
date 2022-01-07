; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/test/extr_run_from_same_connection.c_GetRemoteProcessId.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/test/extr_run_from_same_connection.c_GetRemoteProcessId.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@GET_PROCESS_ID = common dso_local global i32 0, align 4
@singleConnection = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @GetRemoteProcessId to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @GetRemoteProcessId() #0 {
  %1 = alloca %struct.TYPE_4__*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = call %struct.TYPE_4__* (...) @makeStringInfo()
  store %struct.TYPE_4__* %5, %struct.TYPE_4__** %1, align 8
  store i32* null, i32** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %7 = load i32, i32* @GET_PROCESS_ID, align 4
  %8 = call i32 @appendStringInfo(%struct.TYPE_4__* %6, i32 %7)
  %9 = load i32, i32* @singleConnection, align 4
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @ExecuteOptionalRemoteCommand(i32 %9, i32 %12, i32** %2)
  %14 = load i32*, i32** %2, align 8
  %15 = call i32 @PQntuples(i32* %14)
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* %3, align 4
  %17 = icmp ne i32 %16, 1
  br i1 %17, label %18, label %20

18:                                               ; preds = %0
  %19 = call i32 (...) @PG_RETURN_VOID()
  br label %20

20:                                               ; preds = %18, %0
  %21 = load i32*, i32** %2, align 8
  %22 = call i32 @ParseIntField(i32* %21, i32 0, i32 0)
  store i32 %22, i32* %4, align 4
  %23 = load i32*, i32** %2, align 8
  %24 = call i32 @PQclear(i32* %23)
  %25 = load i32, i32* @singleConnection, align 4
  %26 = call i32 @ClearResults(i32 %25, i32 0)
  %27 = load i32, i32* %4, align 4
  ret i32 %27
}

declare dso_local %struct.TYPE_4__* @makeStringInfo(...) #1

declare dso_local i32 @appendStringInfo(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @ExecuteOptionalRemoteCommand(i32, i32, i32**) #1

declare dso_local i32 @PQntuples(i32*) #1

declare dso_local i32 @PG_RETURN_VOID(...) #1

declare dso_local i32 @ParseIntField(i32*, i32, i32) #1

declare dso_local i32 @PQclear(i32*) #1

declare dso_local i32 @ClearResults(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
