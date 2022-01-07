; ModuleID = '/home/carl/AnghaBench/bitwise/ion/extr_resolve.c_resolve_package_syms.c'
source_filename = "/home/carl/AnghaBench/bitwise/ion/extr_resolve.c_resolve_package_syms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_9__** }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @resolve_package_syms(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %5 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %6 = call %struct.TYPE_8__* @enter_package(%struct.TYPE_8__* %5)
  store %struct.TYPE_8__* %6, %struct.TYPE_8__** %3, align 8
  store i64 0, i64* %4, align 8
  br label %7

7:                                                ; preds = %34, %1
  %8 = load i64, i64* %4, align 8
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %10, align 8
  %12 = call i64 @buf_len(%struct.TYPE_9__** %11)
  %13 = icmp ult i64 %8, %12
  br i1 %13, label %14, label %37

14:                                               ; preds = %7
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %16, align 8
  %18 = load i64, i64* %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %17, i64 %18
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %24 = icmp eq %struct.TYPE_8__* %22, %23
  br i1 %24, label %25, label %33

25:                                               ; preds = %14
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %27, align 8
  %29 = load i64, i64* %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %28, i64 %29
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %30, align 8
  %32 = call i32 @resolve_sym(%struct.TYPE_9__* %31)
  br label %33

33:                                               ; preds = %25, %14
  br label %34

34:                                               ; preds = %33
  %35 = load i64, i64* %4, align 8
  %36 = add i64 %35, 1
  store i64 %36, i64* %4, align 8
  br label %7

37:                                               ; preds = %7
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %39 = call i32 @leave_package(%struct.TYPE_8__* %38)
  ret void
}

declare dso_local %struct.TYPE_8__* @enter_package(%struct.TYPE_8__*) #1

declare dso_local i64 @buf_len(%struct.TYPE_9__**) #1

declare dso_local i32 @resolve_sym(%struct.TYPE_9__*) #1

declare dso_local i32 @leave_package(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
