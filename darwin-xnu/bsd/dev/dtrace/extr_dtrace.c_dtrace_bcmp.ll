; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/dev/dtrace/extr_dtrace.c_dtrace_bcmp.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/dev/dtrace/extr_dtrace.c_dtrace_bcmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i64 }

@cpu_core = common dso_local global %struct.TYPE_3__* null, align 8
@CPU = common dso_local global %struct.TYPE_4__* null, align 8
@CPU_DTRACE_FAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i64)* @dtrace_bcmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dtrace_bcmp(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cpu_core, align 8
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** @CPU, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  store i32* %16, i32** %8, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = icmp eq i8* %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %67

21:                                               ; preds = %3
  %22 = load i8*, i8** %5, align 8
  %23 = icmp eq i8* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %21
  %25 = load i8*, i8** %6, align 8
  %26 = icmp eq i8* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %24, %21
  store i32 1, i32* %4, align 4
  br label %67

28:                                               ; preds = %24
  %29 = load i8*, i8** %5, align 8
  %30 = load i8*, i8** %6, align 8
  %31 = icmp ne i8* %29, %30
  br i1 %31, label %32, label %66

32:                                               ; preds = %28
  %33 = load i64, i64* %7, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %66

35:                                               ; preds = %32
  %36 = load i8*, i8** %5, align 8
  %37 = bitcast i8* %36 to i32*
  store i32* %37, i32** %9, align 8
  %38 = load i8*, i8** %6, align 8
  %39 = bitcast i8* %38 to i32*
  store i32* %39, i32** %10, align 8
  br label %40

40:                                               ; preds = %63, %35
  %41 = load i32*, i32** %9, align 8
  %42 = getelementptr inbounds i32, i32* %41, i32 1
  store i32* %42, i32** %9, align 8
  %43 = ptrtoint i32* %41 to i64
  %44 = call i64 @dtrace_load8(i64 %43)
  %45 = load i32*, i32** %10, align 8
  %46 = getelementptr inbounds i32, i32* %45, i32 1
  store i32* %46, i32** %10, align 8
  %47 = load i32, i32* %45, align 4
  %48 = sext i32 %47 to i64
  %49 = icmp ne i64 %44, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %40
  store i32 1, i32* %4, align 4
  br label %67

51:                                               ; preds = %40
  br label %52

52:                                               ; preds = %51
  %53 = load i64, i64* %7, align 8
  %54 = add i64 %53, -1
  store i64 %54, i64* %7, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %52
  %57 = load i32*, i32** %8, align 8
  %58 = load volatile i32, i32* %57, align 4
  %59 = load volatile i32, i32* @CPU_DTRACE_FAULT, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  %62 = xor i1 %61, true
  br label %63

63:                                               ; preds = %56, %52
  %64 = phi i1 [ false, %52 ], [ %62, %56 ]
  br i1 %64, label %40, label %65

65:                                               ; preds = %63
  br label %66

66:                                               ; preds = %65, %32, %28
  store i32 0, i32* %4, align 4
  br label %67

67:                                               ; preds = %66, %50, %27, %20
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare dso_local i64 @dtrace_load8(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
