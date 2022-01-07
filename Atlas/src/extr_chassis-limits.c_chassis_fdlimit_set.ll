; ModuleID = '/home/carl/AnghaBench/Atlas/src/extr_chassis-limits.c_chassis_fdlimit_set.c'
source_filename = "/home/carl/AnghaBench/Atlas/src/extr_chassis-limits.c_chassis_fdlimit_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rlimit = type { i32, i32 }

@RLIMIT_NOFILE = common dso_local global i32 0, align 4
@G_STRLOC = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @chassis_fdlimit_set(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.rlimit, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* @RLIMIT_NOFILE, align 4
  %8 = call i32 @getrlimit(i32 %7, %struct.rlimit* %4)
  %9 = icmp eq i32 -1, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %30

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %4, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %5, align 4
  %14 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %4, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %3, align 4
  %17 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %4, i32 0, i32 0
  store i32 %16, i32* %17, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* %3, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %11
  %22 = load i32, i32* %3, align 4
  %23 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %4, i32 0, i32 1
  store i32 %22, i32* %23, align 4
  br label %24

24:                                               ; preds = %21, %11
  %25 = load i32, i32* @RLIMIT_NOFILE, align 4
  %26 = call i32 @setrlimit(i32 %25, %struct.rlimit* %4)
  %27 = icmp eq i32 -1, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  store i32 -1, i32* %2, align 4
  br label %30

29:                                               ; preds = %24
  store i32 0, i32* %2, align 4
  br label %30

30:                                               ; preds = %29, %28, %10
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local i32 @getrlimit(i32, %struct.rlimit*) #1

declare dso_local i32 @setrlimit(i32, %struct.rlimit*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
