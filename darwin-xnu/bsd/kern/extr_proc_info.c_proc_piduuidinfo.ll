; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_proc_info.c_proc_piduuidinfo.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_proc_info.c_proc_piduuidinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc = type { i32 }

@PROC_NULL = common dso_local global %struct.proc* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@ESRCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64, i32)* @proc_piduuidinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @proc_piduuidinfo(i32 %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.proc*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.proc*, %struct.proc** @PROC_NULL, align 8
  store %struct.proc* %10, %struct.proc** %8, align 8
  store i32 0, i32* %9, align 4
  %11 = load i32, i32* %7, align 4
  %12 = sext i32 %11 to i64
  %13 = icmp ult i64 %12, 8
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i32, i32* @EINVAL, align 4
  store i32 %15, i32* %4, align 4
  br label %45

16:                                               ; preds = %3
  %17 = load i32, i32* %5, align 4
  %18 = call %struct.proc* @proc_find(i32 %17)
  store %struct.proc* %18, %struct.proc** %8, align 8
  %19 = load %struct.proc*, %struct.proc** @PROC_NULL, align 8
  %20 = icmp eq %struct.proc* %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = load i32, i32* %5, align 4
  %23 = call %struct.proc* @proc_find_zombref(i32 %22)
  store %struct.proc* %23, %struct.proc** %8, align 8
  store i32 1, i32* %9, align 4
  br label %24

24:                                               ; preds = %21, %16
  %25 = load %struct.proc*, %struct.proc** %8, align 8
  %26 = load %struct.proc*, %struct.proc** @PROC_NULL, align 8
  %27 = icmp eq %struct.proc* %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = load i32, i32* @ESRCH, align 4
  store i32 %29, i32* %4, align 4
  br label %45

30:                                               ; preds = %24
  %31 = load %struct.proc*, %struct.proc** %8, align 8
  %32 = load i64, i64* %6, align 8
  %33 = inttoptr i64 %32 to i8*
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @proc_getexecutableuuid(%struct.proc* %31, i8* %33, i32 %34)
  %36 = load i32, i32* %9, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %30
  %39 = load %struct.proc*, %struct.proc** %8, align 8
  %40 = call i32 @proc_drop_zombref(%struct.proc* %39)
  br label %44

41:                                               ; preds = %30
  %42 = load %struct.proc*, %struct.proc** %8, align 8
  %43 = call i32 @proc_rele(%struct.proc* %42)
  br label %44

44:                                               ; preds = %41, %38
  store i32 0, i32* %4, align 4
  br label %45

45:                                               ; preds = %44, %28, %14
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local %struct.proc* @proc_find(i32) #1

declare dso_local %struct.proc* @proc_find_zombref(i32) #1

declare dso_local i32 @proc_getexecutableuuid(%struct.proc*, i8*, i32) #1

declare dso_local i32 @proc_drop_zombref(%struct.proc*) #1

declare dso_local i32 @proc_rele(%struct.proc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
