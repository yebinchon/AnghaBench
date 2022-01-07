; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_clock_oldops.c_clock_sleep_trap.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_clock_oldops.c_clock_sleep_trap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clock_sleep_trap_args = type { i64, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@MACH_PORT_NULL = common dso_local global i64 0, align 8
@clock_list = common dso_local global i32* null, align 8
@SYSTEM_CLOCK = common dso_local global i64 0, align 8
@KERN_INVALID_ARGUMENT = common dso_local global i64 0, align 8
@KERN_FAILURE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @clock_sleep_trap(%struct.clock_sleep_trap_args* %0) #0 {
  %2 = alloca %struct.clock_sleep_trap_args*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_3__, align 4
  %10 = alloca i64, align 8
  store %struct.clock_sleep_trap_args* %0, %struct.clock_sleep_trap_args** %2, align 8
  %11 = load %struct.clock_sleep_trap_args*, %struct.clock_sleep_trap_args** %2, align 8
  %12 = getelementptr inbounds %struct.clock_sleep_trap_args, %struct.clock_sleep_trap_args* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %3, align 8
  %14 = load %struct.clock_sleep_trap_args*, %struct.clock_sleep_trap_args** %2, align 8
  %15 = getelementptr inbounds %struct.clock_sleep_trap_args, %struct.clock_sleep_trap_args* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %4, align 4
  %17 = load %struct.clock_sleep_trap_args*, %struct.clock_sleep_trap_args** %2, align 8
  %18 = getelementptr inbounds %struct.clock_sleep_trap_args, %struct.clock_sleep_trap_args* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %5, align 4
  %20 = load %struct.clock_sleep_trap_args*, %struct.clock_sleep_trap_args** %2, align 8
  %21 = getelementptr inbounds %struct.clock_sleep_trap_args, %struct.clock_sleep_trap_args* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %6, align 4
  %23 = load %struct.clock_sleep_trap_args*, %struct.clock_sleep_trap_args** %2, align 8
  %24 = getelementptr inbounds %struct.clock_sleep_trap_args, %struct.clock_sleep_trap_args* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %7, align 4
  %26 = bitcast %struct.TYPE_3__* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %26, i8 0, i64 8, i1 false)
  %27 = load i64, i64* %3, align 8
  %28 = load i64, i64* @MACH_PORT_NULL, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %1
  %31 = load i32*, i32** @clock_list, align 8
  %32 = load i64, i64* @SYSTEM_CLOCK, align 8
  %33 = getelementptr inbounds i32, i32* %31, i64 %32
  store i32* %33, i32** %8, align 8
  br label %37

34:                                               ; preds = %1
  %35 = load i64, i64* %3, align 8
  %36 = call i32* @port_name_to_clock(i64 %35)
  store i32* %36, i32** %8, align 8
  br label %37

37:                                               ; preds = %34, %30
  %38 = load i32, i32* %5, align 4
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  store i32 %38, i32* %39, align 4
  %40 = load i32, i32* %6, align 4
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 1
  store i32 %40, i32* %41, align 4
  %42 = load i32*, i32** %8, align 8
  %43 = load i32, i32* %4, align 4
  %44 = call i64 @clock_sleep_internal(i32* %42, i32 %43, %struct.TYPE_3__* %9)
  store i64 %44, i64* %10, align 8
  %45 = load i64, i64* %10, align 8
  %46 = load i64, i64* @KERN_INVALID_ARGUMENT, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %56

48:                                               ; preds = %37
  %49 = load i64, i64* %10, align 8
  %50 = load i64, i64* @KERN_FAILURE, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %48
  %53 = bitcast %struct.TYPE_3__* %9 to i8*
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @copyout(i8* %53, i32 %54, i32 8)
  br label %56

56:                                               ; preds = %52, %48, %37
  %57 = load i64, i64* %10, align 8
  ret i64 %57
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32* @port_name_to_clock(i64) #2

declare dso_local i64 @clock_sleep_internal(i32*, i32, %struct.TYPE_3__*) #2

declare dso_local i32 @copyout(i8*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
