; ModuleID = '/home/carl/AnghaBench/Atlas/src/extr_network-mysqld-packet.c_network_mysqld_resultset_row_free.c'
source_filename = "/home/carl/AnghaBench/Atlas/src/extr_network-mysqld-packet.c_network_mysqld_resultset_row_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }

@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @network_mysqld_resultset_row_free(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %5 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %6 = icmp eq %struct.TYPE_5__* null, %5
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %28

8:                                                ; preds = %1
  store i64 0, i64* %3, align 8
  br label %9

9:                                                ; preds = %21, %8
  %10 = load i64, i64* %3, align 8
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp slt i64 %10, %13
  br i1 %14, label %15, label %24

15:                                               ; preds = %9
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %17 = load i64, i64* %3, align 8
  %18 = call i32* @g_ptr_array_index(%struct.TYPE_5__* %16, i64 %17)
  store i32* %18, i32** %4, align 8
  %19 = load i32*, i32** %4, align 8
  %20 = call i32 @network_mysqld_type_free(i32* %19)
  br label %21

21:                                               ; preds = %15
  %22 = load i64, i64* %3, align 8
  %23 = add nsw i64 %22, 1
  store i64 %23, i64* %3, align 8
  br label %9

24:                                               ; preds = %9
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %26 = load i32, i32* @TRUE, align 4
  %27 = call i32 @g_ptr_array_free(%struct.TYPE_5__* %25, i32 %26)
  br label %28

28:                                               ; preds = %24, %7
  ret void
}

declare dso_local i32* @g_ptr_array_index(%struct.TYPE_5__*, i64) #1

declare dso_local i32 @network_mysqld_type_free(i32*) #1

declare dso_local i32 @g_ptr_array_free(%struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
