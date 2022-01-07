; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_cpu_threads.c_x86_core_find.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_cpu_threads.c_x86_core_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_9__ = type { i32, %struct.TYPE_9__* }
%struct.TYPE_8__ = type { %struct.TYPE_9__* }
%struct.TYPE_10__ = type { i32 }

@topoParms = common dso_local global %struct.TYPE_11__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_9__* (i32)* @x86_core_find to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_9__* @x86_core_find(i32 %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call %struct.TYPE_10__* @cpu_datap(i32 %8)
  store %struct.TYPE_10__* %9, %struct.TYPE_10__** %6, align 8
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @topoParms, i32 0, i32 0), align 4
  %14 = sdiv i32 %12, %13
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %3, align 4
  %16 = call %struct.TYPE_8__* @x86_die_find(i32 %15)
  store %struct.TYPE_8__* %16, %struct.TYPE_8__** %5, align 8
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %18 = icmp eq %struct.TYPE_8__* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %2, align 8
  br label %40

20:                                               ; preds = %1
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %22, align 8
  store %struct.TYPE_9__* %23, %struct.TYPE_9__** %4, align 8
  br label %24

24:                                               ; preds = %34, %20
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %26 = icmp ne %struct.TYPE_9__* %25, null
  br i1 %26, label %27, label %38

27:                                               ; preds = %24
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* %7, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  br label %38

34:                                               ; preds = %27
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %36, align 8
  store %struct.TYPE_9__* %37, %struct.TYPE_9__** %4, align 8
  br label %24

38:                                               ; preds = %33, %24
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  store %struct.TYPE_9__* %39, %struct.TYPE_9__** %2, align 8
  br label %40

40:                                               ; preds = %38, %19
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  ret %struct.TYPE_9__* %41
}

declare dso_local %struct.TYPE_10__* @cpu_datap(i32) #1

declare dso_local %struct.TYPE_8__* @x86_die_find(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
