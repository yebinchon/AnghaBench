; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_pcb.c_act_thread_catt.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_pcb.c_act_thread_catt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x86_act_context64 = type { i32, i32 }
%struct.x86_act_context32 = type { i32, i32 }

@x86_SAVED_STATE64 = common dso_local global i32 0, align 4
@x86_SAVED_STATE64_COUNT = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i64 0, align 8
@x86_FLOAT_STATE64 = common dso_local global i32 0, align 4
@x86_FLOAT_STATE64_COUNT = common dso_local global i32 0, align 4
@x86_SAVED_STATE32 = common dso_local global i32 0, align 4
@x86_SAVED_STATE32_COUNT = common dso_local global i32 0, align 4
@x86_FLOAT_STATE32 = common dso_local global i32 0, align 4
@x86_FLOAT_STATE32_COUNT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @act_thread_catt(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.x86_act_context64*, align 8
  %6 = alloca %struct.x86_act_context32*, align 8
  store i8* %0, i8** %2, align 8
  %7 = call i32 (...) @current_thread()
  store i32 %7, i32* %3, align 4
  %8 = load i8*, i8** %2, align 8
  %9 = icmp eq i8* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %64

11:                                               ; preds = %1
  %12 = load i32, i32* %3, align 4
  %13 = call i64 @thread_is_64bit_addr(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %39

15:                                               ; preds = %11
  %16 = load i8*, i8** %2, align 8
  %17 = bitcast i8* %16 to %struct.x86_act_context64*
  store %struct.x86_act_context64* %17, %struct.x86_act_context64** %5, align 8
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* @x86_SAVED_STATE64, align 4
  %20 = load %struct.x86_act_context64*, %struct.x86_act_context64** %5, align 8
  %21 = getelementptr inbounds %struct.x86_act_context64, %struct.x86_act_context64* %20, i32 0, i32 1
  %22 = ptrtoint i32* %21 to i32
  %23 = load i32, i32* @x86_SAVED_STATE64_COUNT, align 4
  %24 = call i64 @machine_thread_set_state(i32 %18, i32 %19, i32 %22, i32 %23)
  store i64 %24, i64* %4, align 8
  %25 = load i64, i64* %4, align 8
  %26 = load i64, i64* @KERN_SUCCESS, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %36

28:                                               ; preds = %15
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* @x86_FLOAT_STATE64, align 4
  %31 = load %struct.x86_act_context64*, %struct.x86_act_context64** %5, align 8
  %32 = getelementptr inbounds %struct.x86_act_context64, %struct.x86_act_context64* %31, i32 0, i32 0
  %33 = ptrtoint i32* %32 to i32
  %34 = load i32, i32* @x86_FLOAT_STATE64_COUNT, align 4
  %35 = call i64 @machine_thread_set_state(i32 %29, i32 %30, i32 %33, i32 %34)
  br label %36

36:                                               ; preds = %28, %15
  %37 = load %struct.x86_act_context64*, %struct.x86_act_context64** %5, align 8
  %38 = call i32 @kfree(%struct.x86_act_context64* %37, i32 8)
  br label %64

39:                                               ; preds = %11
  %40 = load i8*, i8** %2, align 8
  %41 = bitcast i8* %40 to %struct.x86_act_context32*
  store %struct.x86_act_context32* %41, %struct.x86_act_context32** %6, align 8
  %42 = load i32, i32* %3, align 4
  %43 = load i32, i32* @x86_SAVED_STATE32, align 4
  %44 = load %struct.x86_act_context32*, %struct.x86_act_context32** %6, align 8
  %45 = getelementptr inbounds %struct.x86_act_context32, %struct.x86_act_context32* %44, i32 0, i32 1
  %46 = ptrtoint i32* %45 to i32
  %47 = load i32, i32* @x86_SAVED_STATE32_COUNT, align 4
  %48 = call i64 @machine_thread_set_state(i32 %42, i32 %43, i32 %46, i32 %47)
  store i64 %48, i64* %4, align 8
  %49 = load i64, i64* %4, align 8
  %50 = load i64, i64* @KERN_SUCCESS, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %60

52:                                               ; preds = %39
  %53 = load i32, i32* %3, align 4
  %54 = load i32, i32* @x86_FLOAT_STATE32, align 4
  %55 = load %struct.x86_act_context32*, %struct.x86_act_context32** %6, align 8
  %56 = getelementptr inbounds %struct.x86_act_context32, %struct.x86_act_context32* %55, i32 0, i32 0
  %57 = ptrtoint i32* %56 to i32
  %58 = load i32, i32* @x86_FLOAT_STATE32_COUNT, align 4
  %59 = call i64 @machine_thread_set_state(i32 %53, i32 %54, i32 %57, i32 %58)
  br label %60

60:                                               ; preds = %52, %39
  %61 = load %struct.x86_act_context32*, %struct.x86_act_context32** %6, align 8
  %62 = bitcast %struct.x86_act_context32* %61 to %struct.x86_act_context64*
  %63 = call i32 @kfree(%struct.x86_act_context64* %62, i32 8)
  br label %64

64:                                               ; preds = %10, %60, %36
  ret void
}

declare dso_local i32 @current_thread(...) #1

declare dso_local i64 @thread_is_64bit_addr(i32) #1

declare dso_local i64 @machine_thread_set_state(i32, i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.x86_act_context64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
