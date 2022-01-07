; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/dev/arm64/extr_fasttrap_isa.c_fasttrap_pid_getarg.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/dev/arm64/extr_fasttrap_isa.c_fasttrap_pid_getarg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32* }
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
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %17 = call i32 (...) @current_thread()
  %18 = call i32* @find_user_regs(i32 %17)
  store i32* %18, i32** %12, align 8
  %19 = load i32*, i32** %12, align 8
  %20 = call i64 @is_saved_state32(i32* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %54

22:                                               ; preds = %5
  %23 = load i32, i32* %10, align 4
  %24 = icmp slt i32 %23, 4
  br i1 %24, label %25, label %34

25:                                               ; preds = %22
  %26 = load i32*, i32** %12, align 8
  %27 = call %struct.TYPE_4__* @saved_state32(i32* %26)
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* %10, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %6, align 4
  br label %86

34:                                               ; preds = %22
  %35 = load i32*, i32** %12, align 8
  %36 = call %struct.TYPE_4__* @saved_state32(i32* %35)
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = inttoptr i64 %38 to i32*
  store i32* %39, i32** %14, align 8
  %40 = load i32, i32* @CPU_DTRACE_NOFAULT, align 4
  %41 = call i32 @DTRACE_CPUFLAG_SET(i32 %40)
  %42 = load i32*, i32** %14, align 8
  %43 = load i32, i32* %10, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = getelementptr inbounds i32, i32* %45, i64 -4
  %47 = ptrtoint i32* %46 to i32
  %48 = call i32 @dtrace_fuword32(i32 %47)
  store i32 %48, i32* %13, align 4
  %49 = load i32, i32* @CPU_DTRACE_NOFAULT, align 4
  %50 = load i32, i32* @CPU_DTRACE_BADADDR, align 4
  %51 = or i32 %49, %50
  %52 = call i32 @DTRACE_CPUFLAG_CLEAR(i32 %51)
  %53 = load i32, i32* %13, align 4
  store i32 %53, i32* %6, align 4
  br label %86

54:                                               ; preds = %5
  %55 = load i32, i32* %10, align 4
  %56 = icmp slt i32 %55, 8
  br i1 %56, label %57, label %66

57:                                               ; preds = %54
  %58 = load i32*, i32** %12, align 8
  %59 = call %struct.TYPE_3__* @saved_state64(i32* %58)
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %10, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %6, align 4
  br label %86

66:                                               ; preds = %54
  %67 = load i32*, i32** %12, align 8
  %68 = call %struct.TYPE_3__* @saved_state64(i32* %67)
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = inttoptr i64 %70 to i32*
  store i32* %71, i32** %16, align 8
  %72 = load i32, i32* @CPU_DTRACE_NOFAULT, align 4
  %73 = call i32 @DTRACE_CPUFLAG_SET(i32 %72)
  %74 = load i32*, i32** %16, align 8
  %75 = load i32, i32* %10, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = getelementptr inbounds i32, i32* %77, i64 -8
  %79 = ptrtoint i32* %78 to i32
  %80 = call i32 @dtrace_fuword64(i32 %79)
  store i32 %80, i32* %15, align 4
  %81 = load i32, i32* @CPU_DTRACE_NOFAULT, align 4
  %82 = load i32, i32* @CPU_DTRACE_BADADDR, align 4
  %83 = or i32 %81, %82
  %84 = call i32 @DTRACE_CPUFLAG_CLEAR(i32 %83)
  %85 = load i32, i32* %15, align 4
  store i32 %85, i32* %6, align 4
  br label %86

86:                                               ; preds = %66, %57, %34, %25
  %87 = load i32, i32* %6, align 4
  ret i32 %87
}

declare dso_local i32* @find_user_regs(i32) #1

declare dso_local i32 @current_thread(...) #1

declare dso_local i64 @is_saved_state32(i32*) #1

declare dso_local %struct.TYPE_4__* @saved_state32(i32*) #1

declare dso_local i32 @DTRACE_CPUFLAG_SET(i32) #1

declare dso_local i32 @dtrace_fuword32(i32) #1

declare dso_local i32 @DTRACE_CPUFLAG_CLEAR(i32) #1

declare dso_local %struct.TYPE_3__* @saved_state64(i32*) #1

declare dso_local i32 @dtrace_fuword64(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
