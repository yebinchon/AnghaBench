; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_proc_info.c_proc_info_internal.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_proc_info.c_proc_info_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @proc_info_internal(i32 %0, i32 %1, i32 %2, i64 %3, i32 %4, i32 %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  store i32 %0, i32* %9, align 4
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i64 %3, i64* %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32* %6, i32** %15, align 8
  %16 = load i32, i32* %9, align 4
  switch i32 %16, label %115 [
    i32 137, label %17
    i32 133, label %24
    i32 135, label %32
    i32 139, label %41
    i32 130, label %46
    i32 134, label %54
    i32 129, label %63
    i32 140, label %67
    i32 131, label %73
    i32 132, label %79
    i32 138, label %86
    i32 141, label %93
    i32 136, label %99
    i32 128, label %108
  ]

17:                                               ; preds = %7
  %18 = load i32, i32* %10, align 4
  %19 = load i32, i32* %11, align 4
  %20 = load i32, i32* %13, align 4
  %21 = load i32, i32* %14, align 4
  %22 = load i32*, i32** %15, align 8
  %23 = call i32 @proc_listpids(i32 %18, i32 %19, i32 %20, i32 %21, i32* %22)
  store i32 %23, i32* %8, align 4
  br label %117

24:                                               ; preds = %7
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* %11, align 4
  %27 = load i64, i64* %12, align 8
  %28 = load i32, i32* %13, align 4
  %29 = load i32, i32* %14, align 4
  %30 = load i32*, i32** %15, align 8
  %31 = call i32 @proc_pidinfo(i32 %25, i32 %26, i64 %27, i32 %28, i32 %29, i32* %30)
  store i32 %31, i32* %8, align 4
  br label %117

32:                                               ; preds = %7
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* %11, align 4
  %35 = load i64, i64* %12, align 8
  %36 = trunc i64 %35 to i32
  %37 = load i32, i32* %13, align 4
  %38 = load i32, i32* %14, align 4
  %39 = load i32*, i32** %15, align 8
  %40 = call i32 @proc_pidfdinfo(i32 %33, i32 %34, i32 %36, i32 %37, i32 %38, i32* %39)
  store i32 %40, i32* %8, align 4
  br label %117

41:                                               ; preds = %7
  %42 = load i32, i32* %13, align 4
  %43 = load i32, i32* %14, align 4
  %44 = load i32*, i32** %15, align 8
  %45 = call i32 @proc_kernmsgbuf(i32 %42, i32 %43, i32* %44)
  store i32 %45, i32* %8, align 4
  br label %117

46:                                               ; preds = %7
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* %11, align 4
  %49 = load i64, i64* %12, align 8
  %50 = load i32, i32* %13, align 4
  %51 = load i32, i32* %14, align 4
  %52 = load i32*, i32** %15, align 8
  %53 = call i32 @proc_setcontrol(i32 %47, i32 %48, i64 %49, i32 %50, i32 %51, i32* %52)
  store i32 %53, i32* %8, align 4
  br label %117

54:                                               ; preds = %7
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* %11, align 4
  %57 = load i64, i64* %12, align 8
  %58 = trunc i64 %57 to i32
  %59 = load i32, i32* %13, align 4
  %60 = load i32, i32* %14, align 4
  %61 = load i32*, i32** %15, align 8
  %62 = call i32 @proc_pidfileportinfo(i32 %55, i32 %56, i32 %58, i32 %59, i32 %60, i32* %61)
  store i32 %62, i32* %8, align 4
  br label %117

63:                                               ; preds = %7
  %64 = load i32, i32* %10, align 4
  %65 = load i32*, i32** %15, align 8
  %66 = call i32 @proc_terminate(i32 %64, i32* %65)
  store i32 %66, i32* %8, align 4
  br label %117

67:                                               ; preds = %7
  %68 = load i32, i32* %10, align 4
  %69 = load i32, i32* %11, align 4
  %70 = load i64, i64* %12, align 8
  %71 = load i32*, i32** %15, align 8
  %72 = call i32 @proc_dirtycontrol(i32 %68, i32 %69, i64 %70, i32* %71)
  store i32 %72, i32* %8, align 4
  br label %117

73:                                               ; preds = %7
  %74 = load i32, i32* %10, align 4
  %75 = load i32, i32* %11, align 4
  %76 = load i32, i32* %13, align 4
  %77 = load i32*, i32** %15, align 8
  %78 = call i32 @proc_pid_rusage(i32 %74, i32 %75, i32 %76, i32* %77)
  store i32 %78, i32* %8, align 4
  br label %117

79:                                               ; preds = %7
  %80 = load i32, i32* %10, align 4
  %81 = load i32, i32* %11, align 4
  %82 = load i32, i32* %13, align 4
  %83 = load i32, i32* %14, align 4
  %84 = load i32*, i32** %15, align 8
  %85 = call i32 @proc_pidoriginatorinfo(i32 %80, i32 %81, i32 %82, i32 %83, i32* %84)
  store i32 %85, i32* %8, align 4
  br label %117

86:                                               ; preds = %7
  %87 = load i32, i32* %10, align 4
  %88 = load i32, i32* %11, align 4
  %89 = load i32, i32* %13, align 4
  %90 = load i32, i32* %14, align 4
  %91 = load i32*, i32** %15, align 8
  %92 = call i32 @proc_listcoalitions(i32 %87, i32 %88, i32 %89, i32 %90, i32* %91)
  store i32 %92, i32* %8, align 4
  br label %117

93:                                               ; preds = %7
  %94 = load i32, i32* %10, align 4
  %95 = load i32, i32* %13, align 4
  %96 = load i32, i32* %14, align 4
  %97 = load i32*, i32** %15, align 8
  %98 = call i32 @proc_can_use_foreground_hw(i32 %94, i32 %95, i32 %96, i32* %97)
  store i32 %98, i32* %8, align 4
  br label %117

99:                                               ; preds = %7
  %100 = load i32, i32* %10, align 4
  %101 = load i32, i32* %11, align 4
  %102 = load i64, i64* %12, align 8
  %103 = trunc i64 %102 to i32
  %104 = load i32, i32* %13, align 4
  %105 = load i32, i32* %14, align 4
  %106 = load i32*, i32** %15, align 8
  %107 = call i32 @proc_piddynkqueueinfo(i32 %100, i32 %101, i32 %103, i32 %104, i32 %105, i32* %106)
  store i32 %107, i32* %8, align 4
  br label %117

108:                                              ; preds = %7
  %109 = load i32, i32* %10, align 4
  %110 = load i32, i32* %11, align 4
  %111 = load i32, i32* %13, align 4
  %112 = load i32, i32* %14, align 4
  %113 = load i32*, i32** %15, align 8
  %114 = call i32 @proc_udata_info(i32 %109, i32 %110, i32 %111, i32 %112, i32* %113)
  store i32 %114, i32* %8, align 4
  br label %117

115:                                              ; preds = %7
  %116 = load i32, i32* @EINVAL, align 4
  store i32 %116, i32* %8, align 4
  br label %117

117:                                              ; preds = %115, %108, %99, %93, %86, %79, %73, %67, %63, %54, %46, %41, %32, %24, %17
  %118 = load i32, i32* %8, align 4
  ret i32 %118
}

declare dso_local i32 @proc_listpids(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @proc_pidinfo(i32, i32, i64, i32, i32, i32*) #1

declare dso_local i32 @proc_pidfdinfo(i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @proc_kernmsgbuf(i32, i32, i32*) #1

declare dso_local i32 @proc_setcontrol(i32, i32, i64, i32, i32, i32*) #1

declare dso_local i32 @proc_pidfileportinfo(i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @proc_terminate(i32, i32*) #1

declare dso_local i32 @proc_dirtycontrol(i32, i32, i64, i32*) #1

declare dso_local i32 @proc_pid_rusage(i32, i32, i32, i32*) #1

declare dso_local i32 @proc_pidoriginatorinfo(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @proc_listcoalitions(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @proc_can_use_foreground_hw(i32, i32, i32, i32*) #1

declare dso_local i32 @proc_piddynkqueueinfo(i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @proc_udata_info(i32, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
