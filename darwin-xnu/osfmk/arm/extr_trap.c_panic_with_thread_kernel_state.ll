; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/arm/extr_trap.c_panic_with_thread_kernel_state.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/arm/extr_trap.c_panic_with_thread_kernel_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arm_saved_state = type { i32, i32, i32, i32, i32, i32, i32* }

@.str = private unnamed_addr constant [254 x i8] c"%s (saved state:%p)\0Ar0:   0x%08x  r1: 0x%08x  r2: 0x%08x  r3: 0x%08x\0Ar4:   0x%08x  r5: 0x%08x  r6: 0x%08x  r7: 0x%08x\0Ar8:   0x%08x  r9: 0x%08x r10: 0x%08x r11: 0x%08x\0Ar12:  0x%08x  sp: 0x%08x  lr: 0x%08x  pc: 0x%08x\0Acpsr: 0x%08x fsr: 0x%08x far: 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.arm_saved_state*)* @panic_with_thread_kernel_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @panic_with_thread_kernel_state(i8* %0, %struct.arm_saved_state* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.arm_saved_state*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.arm_saved_state* %1, %struct.arm_saved_state** %4, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = load %struct.arm_saved_state*, %struct.arm_saved_state** %4, align 8
  %7 = load %struct.arm_saved_state*, %struct.arm_saved_state** %4, align 8
  %8 = getelementptr inbounds %struct.arm_saved_state, %struct.arm_saved_state* %7, i32 0, i32 6
  %9 = load i32*, i32** %8, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.arm_saved_state*, %struct.arm_saved_state** %4, align 8
  %13 = getelementptr inbounds %struct.arm_saved_state, %struct.arm_saved_state* %12, i32 0, i32 6
  %14 = load i32*, i32** %13, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.arm_saved_state*, %struct.arm_saved_state** %4, align 8
  %18 = getelementptr inbounds %struct.arm_saved_state, %struct.arm_saved_state* %17, i32 0, i32 6
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 2
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.arm_saved_state*, %struct.arm_saved_state** %4, align 8
  %23 = getelementptr inbounds %struct.arm_saved_state, %struct.arm_saved_state* %22, i32 0, i32 6
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 3
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.arm_saved_state*, %struct.arm_saved_state** %4, align 8
  %28 = getelementptr inbounds %struct.arm_saved_state, %struct.arm_saved_state* %27, i32 0, i32 6
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 4
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.arm_saved_state*, %struct.arm_saved_state** %4, align 8
  %33 = getelementptr inbounds %struct.arm_saved_state, %struct.arm_saved_state* %32, i32 0, i32 6
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 5
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.arm_saved_state*, %struct.arm_saved_state** %4, align 8
  %38 = getelementptr inbounds %struct.arm_saved_state, %struct.arm_saved_state* %37, i32 0, i32 6
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 6
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.arm_saved_state*, %struct.arm_saved_state** %4, align 8
  %43 = getelementptr inbounds %struct.arm_saved_state, %struct.arm_saved_state* %42, i32 0, i32 6
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 7
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.arm_saved_state*, %struct.arm_saved_state** %4, align 8
  %48 = getelementptr inbounds %struct.arm_saved_state, %struct.arm_saved_state* %47, i32 0, i32 6
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 8
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.arm_saved_state*, %struct.arm_saved_state** %4, align 8
  %53 = getelementptr inbounds %struct.arm_saved_state, %struct.arm_saved_state* %52, i32 0, i32 6
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 9
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.arm_saved_state*, %struct.arm_saved_state** %4, align 8
  %58 = getelementptr inbounds %struct.arm_saved_state, %struct.arm_saved_state* %57, i32 0, i32 6
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 10
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.arm_saved_state*, %struct.arm_saved_state** %4, align 8
  %63 = getelementptr inbounds %struct.arm_saved_state, %struct.arm_saved_state* %62, i32 0, i32 6
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 11
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.arm_saved_state*, %struct.arm_saved_state** %4, align 8
  %68 = getelementptr inbounds %struct.arm_saved_state, %struct.arm_saved_state* %67, i32 0, i32 6
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 12
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.arm_saved_state*, %struct.arm_saved_state** %4, align 8
  %73 = getelementptr inbounds %struct.arm_saved_state, %struct.arm_saved_state* %72, i32 0, i32 5
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.arm_saved_state*, %struct.arm_saved_state** %4, align 8
  %76 = getelementptr inbounds %struct.arm_saved_state, %struct.arm_saved_state* %75, i32 0, i32 4
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.arm_saved_state*, %struct.arm_saved_state** %4, align 8
  %79 = getelementptr inbounds %struct.arm_saved_state, %struct.arm_saved_state* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.arm_saved_state*, %struct.arm_saved_state** %4, align 8
  %82 = getelementptr inbounds %struct.arm_saved_state, %struct.arm_saved_state* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.arm_saved_state*, %struct.arm_saved_state** %4, align 8
  %85 = getelementptr inbounds %struct.arm_saved_state, %struct.arm_saved_state* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.arm_saved_state*, %struct.arm_saved_state** %4, align 8
  %88 = getelementptr inbounds %struct.arm_saved_state, %struct.arm_saved_state* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @panic_plain(i8* getelementptr inbounds ([254 x i8], [254 x i8]* @.str, i64 0, i64 0), i8* %5, %struct.arm_saved_state* %6, i32 %11, i32 %16, i32 %21, i32 %26, i32 %31, i32 %36, i32 %41, i32 %46, i32 %51, i32 %56, i32 %61, i32 %66, i32 %71, i32 %74, i32 %77, i32 %80, i32 %83, i32 %86, i32 %89)
  ret void
}

declare dso_local i32 @panic_plain(i8*, i8*, %struct.arm_saved_state*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
