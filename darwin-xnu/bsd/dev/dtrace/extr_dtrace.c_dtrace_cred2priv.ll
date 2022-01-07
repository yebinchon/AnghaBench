; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/dev/dtrace/extr_dtrace.c_dtrace_cred2priv.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/dev/dtrace/extr_dtrace.c_dtrace_cred2priv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PRIV_ALL = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4
@DTRACE_PRIV_USER = common dso_local global i32 0, align 4
@DTRACE_PRIV_PROC = common dso_local global i32 0, align 4
@DTRACE_PRIV_OWNER = common dso_local global i32 0, align 4
@DTRACE_PRIV_ALL = common dso_local global i32 0, align 4
@PRIV_DTRACE_KERNEL = common dso_local global i32 0, align 4
@DTRACE_PRIV_KERNEL = common dso_local global i32 0, align 4
@PRIV_DTRACE_USER = common dso_local global i32 0, align 4
@PRIV_DTRACE_PROC = common dso_local global i32 0, align 4
@PRIV_PROC_OWNER = common dso_local global i32 0, align 4
@PRIV_PROC_ZONE = common dso_local global i32 0, align 4
@DTRACE_PRIV_ZONEOWNER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i64*, i64*)* @dtrace_cred2priv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dtrace_cred2priv(i32* %0, i32* %1, i64* %2, i64* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64* %2, i64** %7, align 8
  store i64* %3, i64** %8, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %18, label %12

12:                                               ; preds = %4
  %13 = load i32*, i32** %5, align 8
  %14 = load i32, i32* @PRIV_ALL, align 4
  %15 = load i32, i32* @B_FALSE, align 4
  %16 = call i64 @PRIV_POLICY_ONLY(i32* %13, i32 %14, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %35

18:                                               ; preds = %12, %4
  %19 = call i64 (...) @dtrace_is_restricted()
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %18
  %22 = call i32 (...) @dtrace_are_restrictions_relaxed()
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %21
  %25 = load i32, i32* @DTRACE_PRIV_USER, align 4
  %26 = load i32, i32* @DTRACE_PRIV_PROC, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @DTRACE_PRIV_OWNER, align 4
  %29 = or i32 %27, %28
  store i32 %29, i32* %9, align 4
  br label %32

30:                                               ; preds = %21, %18
  %31 = load i32, i32* @DTRACE_PRIV_ALL, align 4
  store i32 %31, i32* %9, align 4
  br label %32

32:                                               ; preds = %30, %24
  %33 = load i64*, i64** %7, align 8
  store i64 0, i64* %33, align 8
  %34 = load i64*, i64** %8, align 8
  store i64 0, i64* %34, align 8
  br label %95

35:                                               ; preds = %12
  %36 = load i32*, i32** %5, align 8
  %37 = call i64 @crgetuid(i32* %36)
  %38 = load i64*, i64** %7, align 8
  store i64 %37, i64* %38, align 8
  %39 = load i32*, i32** %5, align 8
  %40 = call i64 @crgetzoneid(i32* %39)
  %41 = load i64*, i64** %8, align 8
  store i64 %40, i64* %41, align 8
  store i32 0, i32* %9, align 4
  %42 = load i32*, i32** %5, align 8
  %43 = load i32, i32* @PRIV_DTRACE_KERNEL, align 4
  %44 = load i32, i32* @B_FALSE, align 4
  %45 = call i64 @PRIV_POLICY_ONLY(i32* %42, i32 %43, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %35
  %48 = load i32, i32* @DTRACE_PRIV_KERNEL, align 4
  %49 = load i32, i32* @DTRACE_PRIV_USER, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* %9, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %9, align 4
  br label %64

53:                                               ; preds = %35
  %54 = load i32*, i32** %5, align 8
  %55 = load i32, i32* @PRIV_DTRACE_USER, align 4
  %56 = load i32, i32* @B_FALSE, align 4
  %57 = call i64 @PRIV_POLICY_ONLY(i32* %54, i32 %55, i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %53
  %60 = load i32, i32* @DTRACE_PRIV_USER, align 4
  %61 = load i32, i32* %9, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %9, align 4
  br label %63

63:                                               ; preds = %59, %53
  br label %64

64:                                               ; preds = %63, %47
  %65 = load i32*, i32** %5, align 8
  %66 = load i32, i32* @PRIV_DTRACE_PROC, align 4
  %67 = load i32, i32* @B_FALSE, align 4
  %68 = call i64 @PRIV_POLICY_ONLY(i32* %65, i32 %66, i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %64
  %71 = load i32, i32* @DTRACE_PRIV_PROC, align 4
  %72 = load i32, i32* %9, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %9, align 4
  br label %74

74:                                               ; preds = %70, %64
  %75 = load i32*, i32** %5, align 8
  %76 = load i32, i32* @PRIV_PROC_OWNER, align 4
  %77 = load i32, i32* @B_FALSE, align 4
  %78 = call i64 @PRIV_POLICY_ONLY(i32* %75, i32 %76, i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %74
  %81 = load i32, i32* @DTRACE_PRIV_OWNER, align 4
  %82 = load i32, i32* %9, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %9, align 4
  br label %84

84:                                               ; preds = %80, %74
  %85 = load i32*, i32** %5, align 8
  %86 = load i32, i32* @PRIV_PROC_ZONE, align 4
  %87 = load i32, i32* @B_FALSE, align 4
  %88 = call i64 @PRIV_POLICY_ONLY(i32* %85, i32 %86, i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %84
  %91 = load i32, i32* @DTRACE_PRIV_ZONEOWNER, align 4
  %92 = load i32, i32* %9, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %9, align 4
  br label %94

94:                                               ; preds = %90, %84
  br label %95

95:                                               ; preds = %94, %32
  %96 = load i32, i32* %9, align 4
  %97 = load i32*, i32** %6, align 8
  store i32 %96, i32* %97, align 4
  ret void
}

declare dso_local i64 @PRIV_POLICY_ONLY(i32*, i32, i32) #1

declare dso_local i64 @dtrace_is_restricted(...) #1

declare dso_local i32 @dtrace_are_restrictions_relaxed(...) #1

declare dso_local i64 @crgetuid(i32*) #1

declare dso_local i64 @crgetzoneid(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
