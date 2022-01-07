; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_fpu.c_fpu_store_registers.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_fpu.c_fpu_store_registers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x86_fx_thread_state = type { i32 }

@FXSAVE64 = common dso_local global i32 0, align 4
@FXSAVE32 = common dso_local global i32 0, align 4
@xstate_xmask = common dso_local global i32* null, align 8
@XSAVE64 = common dso_local global i32 0, align 4
@XSAVE32 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"fpu_store_registers() bad xstate: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @fpu_store_registers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fpu_store_registers(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.x86_fx_thread_state*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.x86_fx_thread_state*
  store %struct.x86_fx_thread_state* %8, %struct.x86_fx_thread_state** %5, align 8
  %9 = load %struct.x86_fx_thread_state*, %struct.x86_fx_thread_state** %5, align 8
  %10 = call i32 @ALIGNED(%struct.x86_fx_thread_state* %9, i32 64)
  %11 = call i32 @assert(i32 %10)
  %12 = call i32 (...) @current_xstate()
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  switch i32 %13, label %56 [
    i32 128, label %14
    i32 130, label %30
    i32 129, label %30
  ]

14:                                               ; preds = %2
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %14
  %18 = load i8*, i8** %3, align 8
  %19 = call i32 @fxsave64(i8* %18)
  %20 = load i32, i32* @FXSAVE64, align 4
  %21 = load %struct.x86_fx_thread_state*, %struct.x86_fx_thread_state** %5, align 8
  %22 = getelementptr inbounds %struct.x86_fx_thread_state, %struct.x86_fx_thread_state* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  br label %29

23:                                               ; preds = %14
  %24 = load i8*, i8** %3, align 8
  %25 = call i32 @fxsave(i8* %24)
  %26 = load i32, i32* @FXSAVE32, align 4
  %27 = load %struct.x86_fx_thread_state*, %struct.x86_fx_thread_state** %5, align 8
  %28 = getelementptr inbounds %struct.x86_fx_thread_state, %struct.x86_fx_thread_state* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  br label %29

29:                                               ; preds = %23, %17
  br label %59

30:                                               ; preds = %2, %2
  %31 = load i32, i32* %4, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %44

33:                                               ; preds = %30
  %34 = load %struct.x86_fx_thread_state*, %struct.x86_fx_thread_state** %5, align 8
  %35 = load i32*, i32** @xstate_xmask, align 8
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @xsave64(%struct.x86_fx_thread_state* %34, i32 %39)
  %41 = load i32, i32* @XSAVE64, align 4
  %42 = load %struct.x86_fx_thread_state*, %struct.x86_fx_thread_state** %5, align 8
  %43 = getelementptr inbounds %struct.x86_fx_thread_state, %struct.x86_fx_thread_state* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  br label %55

44:                                               ; preds = %30
  %45 = load %struct.x86_fx_thread_state*, %struct.x86_fx_thread_state** %5, align 8
  %46 = load i32*, i32** @xstate_xmask, align 8
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @xsave(%struct.x86_fx_thread_state* %45, i32 %50)
  %52 = load i32, i32* @XSAVE32, align 4
  %53 = load %struct.x86_fx_thread_state*, %struct.x86_fx_thread_state** %5, align 8
  %54 = getelementptr inbounds %struct.x86_fx_thread_state, %struct.x86_fx_thread_state* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 4
  br label %55

55:                                               ; preds = %44, %33
  br label %59

56:                                               ; preds = %2
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @panic(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %57)
  br label %59

59:                                               ; preds = %56, %55, %29
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ALIGNED(%struct.x86_fx_thread_state*, i32) #1

declare dso_local i32 @current_xstate(...) #1

declare dso_local i32 @fxsave64(i8*) #1

declare dso_local i32 @fxsave(i8*) #1

declare dso_local i32 @xsave64(%struct.x86_fx_thread_state*, i32) #1

declare dso_local i32 @xsave(%struct.x86_fx_thread_state*, i32) #1

declare dso_local i32 @panic(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
