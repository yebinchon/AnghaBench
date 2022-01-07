; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_xpr.c_xpr.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_xpr.c_xpr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xprbuf = type { i8*, i64, i64, i64, i64, i64, i32, i32 }

@xprenable = common dso_local global i32 0, align 4
@xprptr = common dso_local global %struct.xprbuf* null, align 8
@xprlock = common dso_local global i32 0, align 4
@xprlast = common dso_local global %struct.xprbuf* null, align 8
@xprbase = common dso_local global %struct.xprbuf* null, align 8
@XPR_TIMESTAMP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xpr(i8* %0, i64 %1, i64 %2, i64 %3, i64 %4, i64 %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.xprbuf*, align 8
  store i8* %0, i8** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store i64 %5, i64* %12, align 8
  %15 = load i32, i32* @xprenable, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %6
  %18 = load %struct.xprbuf*, %struct.xprbuf** @xprptr, align 8
  %19 = icmp eq %struct.xprbuf* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %17, %6
  br label %64

21:                                               ; preds = %17
  %22 = call i32 (...) @splhigh()
  store i32 %22, i32* %13, align 4
  %23 = call i32 @simple_lock(i32* @xprlock)
  %24 = load %struct.xprbuf*, %struct.xprbuf** @xprptr, align 8
  %25 = getelementptr inbounds %struct.xprbuf, %struct.xprbuf* %24, i32 1
  store %struct.xprbuf* %25, %struct.xprbuf** @xprptr, align 8
  store %struct.xprbuf* %24, %struct.xprbuf** %14, align 8
  %26 = load %struct.xprbuf*, %struct.xprbuf** @xprptr, align 8
  %27 = load %struct.xprbuf*, %struct.xprbuf** @xprlast, align 8
  %28 = icmp uge %struct.xprbuf* %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %21
  %30 = load %struct.xprbuf*, %struct.xprbuf** @xprbase, align 8
  store %struct.xprbuf* %30, %struct.xprbuf** @xprptr, align 8
  br label %31

31:                                               ; preds = %29, %21
  %32 = load %struct.xprbuf*, %struct.xprbuf** @xprptr, align 8
  %33 = load %struct.xprbuf*, %struct.xprbuf** @xprlast, align 8
  %34 = bitcast %struct.xprbuf* %33 to %struct.xprbuf**
  store %struct.xprbuf* %32, %struct.xprbuf** %34, align 8
  %35 = call i32 @simple_unlock(i32* @xprlock)
  %36 = load i32, i32* @XPR_TIMESTAMP, align 4
  %37 = load %struct.xprbuf*, %struct.xprbuf** %14, align 8
  %38 = getelementptr inbounds %struct.xprbuf, %struct.xprbuf* %37, i32 0, i32 7
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* %13, align 4
  %40 = call i32 @splx(i32 %39)
  %41 = load i8*, i8** %7, align 8
  %42 = load %struct.xprbuf*, %struct.xprbuf** %14, align 8
  %43 = getelementptr inbounds %struct.xprbuf, %struct.xprbuf* %42, i32 0, i32 0
  store i8* %41, i8** %43, align 8
  %44 = load i64, i64* %8, align 8
  %45 = load %struct.xprbuf*, %struct.xprbuf** %14, align 8
  %46 = getelementptr inbounds %struct.xprbuf, %struct.xprbuf* %45, i32 0, i32 1
  store i64 %44, i64* %46, align 8
  %47 = load i64, i64* %9, align 8
  %48 = load %struct.xprbuf*, %struct.xprbuf** %14, align 8
  %49 = getelementptr inbounds %struct.xprbuf, %struct.xprbuf* %48, i32 0, i32 2
  store i64 %47, i64* %49, align 8
  %50 = load i64, i64* %10, align 8
  %51 = load %struct.xprbuf*, %struct.xprbuf** %14, align 8
  %52 = getelementptr inbounds %struct.xprbuf, %struct.xprbuf* %51, i32 0, i32 3
  store i64 %50, i64* %52, align 8
  %53 = load i64, i64* %11, align 8
  %54 = load %struct.xprbuf*, %struct.xprbuf** %14, align 8
  %55 = getelementptr inbounds %struct.xprbuf, %struct.xprbuf* %54, i32 0, i32 4
  store i64 %53, i64* %55, align 8
  %56 = load i64, i64* %12, align 8
  %57 = load %struct.xprbuf*, %struct.xprbuf** %14, align 8
  %58 = getelementptr inbounds %struct.xprbuf, %struct.xprbuf* %57, i32 0, i32 5
  store i64 %56, i64* %58, align 8
  %59 = call i32 (...) @mp_disable_preemption()
  %60 = call i32 (...) @cpu_number()
  %61 = load %struct.xprbuf*, %struct.xprbuf** %14, align 8
  %62 = getelementptr inbounds %struct.xprbuf, %struct.xprbuf* %61, i32 0, i32 6
  store i32 %60, i32* %62, align 8
  %63 = call i32 (...) @mp_enable_preemption()
  br label %64

64:                                               ; preds = %31, %20
  ret void
}

declare dso_local i32 @splhigh(...) #1

declare dso_local i32 @simple_lock(i32*) #1

declare dso_local i32 @simple_unlock(i32*) #1

declare dso_local i32 @splx(i32) #1

declare dso_local i32 @mp_disable_preemption(...) #1

declare dso_local i32 @cpu_number(...) #1

declare dso_local i32 @mp_enable_preemption(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
