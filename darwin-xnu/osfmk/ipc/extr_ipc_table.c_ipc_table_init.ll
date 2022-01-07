; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_ipc_table.c_ipc_table_init.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_ipc_table.c_ipc_table_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }

@ipc_table_entries_size = common dso_local global i32 0, align 4
@ipc_table_entries = common dso_local global %struct.TYPE_6__* null, align 8
@ITS_NULL = common dso_local global %struct.TYPE_6__* null, align 8
@ipc_table_requests_size = common dso_local global i32 0, align 4
@ipc_table_requests = common dso_local global %struct.TYPE_6__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ipc_table_init() #0 {
  %1 = load i32, i32* @ipc_table_entries_size, align 4
  %2 = sext i32 %1 to i64
  %3 = mul i64 4, %2
  %4 = trunc i64 %3 to i32
  %5 = call i64 @kalloc(i32 %4)
  %6 = inttoptr i64 %5 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %6, %struct.TYPE_6__** @ipc_table_entries, align 8
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ipc_table_entries, align 8
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ITS_NULL, align 8
  %9 = icmp ne %struct.TYPE_6__* %7, %8
  %10 = zext i1 %9 to i32
  %11 = call i32 @assert(i32 %10)
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ipc_table_entries, align 8
  %13 = load i32, i32* @ipc_table_entries_size, align 4
  %14 = sub nsw i32 %13, 1
  %15 = call i32 @ipc_table_fill(%struct.TYPE_6__* %12, i32 %14, i32 16, i32 4)
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ipc_table_entries, align 8
  %17 = load i32, i32* @ipc_table_entries_size, align 4
  %18 = sub nsw i32 %17, 2
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ipc_table_entries, align 8
  %24 = load i32, i32* @ipc_table_entries_size, align 4
  %25 = sub nsw i32 %24, 1
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  store i64 %22, i64* %28, align 8
  %29 = load i32, i32* @ipc_table_requests_size, align 4
  %30 = sext i32 %29 to i64
  %31 = mul i64 4, %30
  %32 = trunc i64 %31 to i32
  %33 = call i64 @kalloc(i32 %32)
  %34 = inttoptr i64 %33 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %34, %struct.TYPE_6__** @ipc_table_requests, align 8
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ipc_table_requests, align 8
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ITS_NULL, align 8
  %37 = icmp ne %struct.TYPE_6__* %35, %36
  %38 = zext i1 %37 to i32
  %39 = call i32 @assert(i32 %38)
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ipc_table_requests, align 8
  %41 = load i32, i32* @ipc_table_requests_size, align 4
  %42 = sub nsw i32 %41, 1
  %43 = call i32 @ipc_table_fill(%struct.TYPE_6__* %40, i32 %42, i32 2, i32 4)
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ipc_table_requests, align 8
  %45 = load i32, i32* @ipc_table_requests_size, align 4
  %46 = sub nsw i32 %45, 1
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  store i64 0, i64* %49, align 8
  ret void
}

declare dso_local i64 @kalloc(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ipc_table_fill(%struct.TYPE_6__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
