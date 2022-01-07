; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/connection/extr_connection_management.c_InvalidateConnParamsHashEntries.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/connection/extr_connection_management.c_InvalidateConnParamsHashEntries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@ConnParamsHash = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @InvalidateConnParamsHashEntries() #0 {
  %1 = alloca %struct.TYPE_2__*, align 8
  %2 = alloca i32, align 4
  %3 = load i32*, i32** @ConnParamsHash, align 8
  %4 = icmp ne i32* %3, null
  br i1 %4, label %5, label %16

5:                                                ; preds = %0
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %1, align 8
  %6 = load i32*, i32** @ConnParamsHash, align 8
  %7 = call i32 @hash_seq_init(i32* %2, i32* %6)
  br label %8

8:                                                ; preds = %12, %5
  %9 = call i64 @hash_seq_search(i32* %2)
  %10 = inttoptr i64 %9 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %10, %struct.TYPE_2__** %1, align 8
  %11 = icmp ne %struct.TYPE_2__* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %8
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %1, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store i32 0, i32* %14, align 4
  br label %8

15:                                               ; preds = %8
  br label %16

16:                                               ; preds = %15, %0
  ret void
}

declare dso_local i32 @hash_seq_init(i32*, i32*) #1

declare dso_local i64 @hash_seq_search(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
