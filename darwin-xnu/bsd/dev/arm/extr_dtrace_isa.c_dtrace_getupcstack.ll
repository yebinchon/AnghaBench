; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/dev/arm/extr_dtrace_isa.c_dtrace_getupcstack.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/dev/arm/extr_dtrace_isa.c_dtrace_getupcstack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_4__ = type { i32*, i64, i64, i64 }

@cpu_core = common dso_local global %struct.TYPE_5__* null, align 8
@CPU = common dso_local global %struct.TYPE_6__* null, align 8
@CPU_DTRACE_FAULT = common dso_local global i32 0, align 4
@CPU_DTRACE_ENTRY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dtrace_getupcstack(i8** %0, i32 %1) #0 {
  %3 = alloca i8**, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store i8** %0, i8*** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = call i32* (...) @current_thread()
  store i32* %11, i32** %5, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cpu_core, align 8
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** @CPU, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  store i32* %17, i32** %9, align 8
  %18 = load i32*, i32** %9, align 8
  %19 = load volatile i32, i32* %18, align 4
  %20 = load volatile i32, i32* @CPU_DTRACE_FAULT, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  br label %107

24:                                               ; preds = %2
  %25 = load i32, i32* %4, align 4
  %26 = icmp sle i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  br label %107

28:                                               ; preds = %24
  %29 = load i32*, i32** %5, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  br label %99

32:                                               ; preds = %28
  %33 = load i32*, i32** %5, align 8
  %34 = call i64 @find_user_regs(i32* %33)
  %35 = inttoptr i64 %34 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %35, %struct.TYPE_4__** %6, align 8
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %37 = icmp eq %struct.TYPE_4__* %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  br label %99

39:                                               ; preds = %32
  %40 = call i64 (...) @dtrace_proc_selfpid()
  %41 = inttoptr i64 %40 to i8*
  %42 = load i8**, i8*** %3, align 8
  %43 = getelementptr inbounds i8*, i8** %42, i32 1
  store i8** %43, i8*** %3, align 8
  store i8* %41, i8** %42, align 8
  %44 = load i32, i32* %4, align 4
  %45 = add nsw i32 %44, -1
  store i32 %45, i32* %4, align 4
  %46 = load i32, i32* %4, align 4
  %47 = icmp sle i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %39
  br label %107

49:                                               ; preds = %39
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 3
  %52 = load i64, i64* %51, align 8
  store i64 %52, i64* %7, align 8
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  store i64 %55, i64* %8, align 8
  %56 = load i32, i32* @CPU_DTRACE_ENTRY, align 4
  %57 = call i64 @DTRACE_CPUFLAG_ISSET(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %73

59:                                               ; preds = %49
  %60 = load i64, i64* %7, align 8
  %61 = inttoptr i64 %60 to i8*
  %62 = load i8**, i8*** %3, align 8
  %63 = getelementptr inbounds i8*, i8** %62, i32 1
  store i8** %63, i8*** %3, align 8
  store i8* %61, i8** %62, align 8
  %64 = load i32, i32* %4, align 4
  %65 = add nsw i32 %64, -1
  store i32 %65, i32* %4, align 4
  %66 = load i32, i32* %4, align 4
  %67 = icmp sle i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %59
  br label %107

69:                                               ; preds = %59
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  store i64 %72, i64* %7, align 8
  br label %73

73:                                               ; preds = %69, %49
  %74 = load i8**, i8*** %3, align 8
  %75 = load i32, i32* %4, align 4
  %76 = load i64, i64* %7, align 8
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 7
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @dtrace_getustack_common(i8** %74, i32 %75, i64 %76, i32 %81)
  store i32 %82, i32* %10, align 4
  %83 = load i32, i32* %10, align 4
  %84 = icmp sge i32 %83, 0
  %85 = zext i1 %84 to i32
  %86 = call i32 @ASSERT(i32 %85)
  %87 = load i32, i32* %10, align 4
  %88 = load i32, i32* %4, align 4
  %89 = icmp sle i32 %87, %88
  %90 = zext i1 %89 to i32
  %91 = call i32 @ASSERT(i32 %90)
  %92 = load i32, i32* %10, align 4
  %93 = load i8**, i8*** %3, align 8
  %94 = sext i32 %92 to i64
  %95 = getelementptr inbounds i8*, i8** %93, i64 %94
  store i8** %95, i8*** %3, align 8
  %96 = load i32, i32* %10, align 4
  %97 = load i32, i32* %4, align 4
  %98 = sub nsw i32 %97, %96
  store i32 %98, i32* %4, align 4
  br label %99

99:                                               ; preds = %73, %38, %31
  br label %100

100:                                              ; preds = %104, %99
  %101 = load i32, i32* %4, align 4
  %102 = add nsw i32 %101, -1
  store i32 %102, i32* %4, align 4
  %103 = icmp sgt i32 %101, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %100
  %105 = load i8**, i8*** %3, align 8
  %106 = getelementptr inbounds i8*, i8** %105, i32 1
  store i8** %106, i8*** %3, align 8
  store i8* null, i8** %105, align 8
  br label %100

107:                                              ; preds = %23, %27, %48, %68, %100
  ret void
}

declare dso_local i32* @current_thread(...) #1

declare dso_local i64 @find_user_regs(i32*) #1

declare dso_local i64 @dtrace_proc_selfpid(...) #1

declare dso_local i64 @DTRACE_CPUFLAG_ISSET(i32) #1

declare dso_local i32 @dtrace_getustack_common(i8**, i32, i64, i32) #1

declare dso_local i32 @ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
