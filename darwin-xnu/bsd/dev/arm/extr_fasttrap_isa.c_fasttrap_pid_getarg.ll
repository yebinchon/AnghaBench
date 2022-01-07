; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/dev/arm/extr_fasttrap_isa.c_fasttrap_pid_getarg.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/dev/arm/extr_fasttrap_isa.c_fasttrap_pid_getarg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32* }

@CPU_DTRACE_NOFAULT = common dso_local global i32 0, align 4
@CPU_DTRACE_BADADDR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fasttrap_pid_getarg(i8* %0, i32 %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_3__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = call i32 (...) @current_thread()
  %16 = call %struct.TYPE_3__* @find_user_regs(i32 %15)
  store %struct.TYPE_3__* %16, %struct.TYPE_3__** %12, align 8
  %17 = load i32, i32* %10, align 4
  %18 = icmp slt i32 %17, 4
  br i1 %18, label %19, label %27

19:                                               ; preds = %5
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* %10, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %6, align 4
  br label %46

27:                                               ; preds = %5
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = inttoptr i64 %30 to i32*
  store i32* %31, i32** %14, align 8
  %32 = load i32, i32* @CPU_DTRACE_NOFAULT, align 4
  %33 = call i32 @DTRACE_CPUFLAG_SET(i32 %32)
  %34 = load i32*, i32** %14, align 8
  %35 = load i32, i32* %10, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = getelementptr inbounds i32, i32* %37, i64 -4
  %39 = ptrtoint i32* %38 to i32
  %40 = call i32 @dtrace_fuword32(i32 %39)
  store i32 %40, i32* %13, align 4
  %41 = load i32, i32* @CPU_DTRACE_NOFAULT, align 4
  %42 = load i32, i32* @CPU_DTRACE_BADADDR, align 4
  %43 = or i32 %41, %42
  %44 = call i32 @DTRACE_CPUFLAG_CLEAR(i32 %43)
  %45 = load i32, i32* %13, align 4
  store i32 %45, i32* %6, align 4
  br label %46

46:                                               ; preds = %27, %19
  %47 = load i32, i32* %6, align 4
  ret i32 %47
}

declare dso_local %struct.TYPE_3__* @find_user_regs(i32) #1

declare dso_local i32 @current_thread(...) #1

declare dso_local i32 @DTRACE_CPUFLAG_SET(i32) #1

declare dso_local i32 @dtrace_fuword32(i32) #1

declare dso_local i32 @DTRACE_CPUFLAG_CLEAR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
