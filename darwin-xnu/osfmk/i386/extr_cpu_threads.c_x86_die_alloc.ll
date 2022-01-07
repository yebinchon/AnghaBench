; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_cpu_threads.c_x86_die_alloc.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_cpu_threads.c_x86_die_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, %struct.TYPE_8__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }

@x86_topo_lock = common dso_local global i32 0, align 4
@free_dies = common dso_local global %struct.TYPE_8__* null, align 8
@.str = private unnamed_addr constant [45 x i8] c"x86_die_alloc() kalloc of x86_die_t failed!\0A\00", align 1
@topoParms = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@num_dies = common dso_local global i32 0, align 4
@X86DIE_FL_PRESENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_8__* (i32)* @x86_die_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_8__* @x86_die_alloc(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call %struct.TYPE_9__* @cpu_datap(i32 %5)
  store %struct.TYPE_9__* %6, %struct.TYPE_9__** %4, align 8
  %7 = call i32 @mp_safe_spin_lock(i32* @x86_topo_lock)
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** @free_dies, align 8
  %9 = icmp ne %struct.TYPE_8__* %8, null
  br i1 %9, label %10, label %18

10:                                               ; preds = %1
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** @free_dies, align 8
  store %struct.TYPE_8__* %11, %struct.TYPE_8__** %3, align 8
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 3
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  store %struct.TYPE_8__* %14, %struct.TYPE_8__** @free_dies, align 8
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 3
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %16, align 8
  %17 = call i32 @simple_unlock(i32* @x86_topo_lock)
  br label %26

18:                                               ; preds = %1
  %19 = call i32 @simple_unlock(i32* @x86_topo_lock)
  %20 = call %struct.TYPE_8__* @kalloc(i32 24)
  store %struct.TYPE_8__* %20, %struct.TYPE_8__** %3, align 8
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %22 = icmp eq %struct.TYPE_8__* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = call i32 @panic(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  br label %25

25:                                               ; preds = %23, %18
  br label %26

26:                                               ; preds = %25, %10
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %28 = bitcast %struct.TYPE_8__* %27 to i8*
  %29 = call i32 @bzero(i8* %28, i32 24)
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @topoParms, i32 0, i32 0), align 4
  %34 = sdiv i32 %32, %33
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = load i32, i32* @num_dies, align 4
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 8
  %40 = call i32 @atomic_incl(i64* bitcast (i32* @num_dies to i64*), i32 1)
  %41 = load i32, i32* @X86DIE_FL_PRESENT, align 4
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  ret %struct.TYPE_8__* %44
}

declare dso_local %struct.TYPE_9__* @cpu_datap(i32) #1

declare dso_local i32 @mp_safe_spin_lock(i32*) #1

declare dso_local i32 @simple_unlock(i32*) #1

declare dso_local %struct.TYPE_8__* @kalloc(i32) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @bzero(i8*, i32) #1

declare dso_local i32 @atomic_incl(i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
