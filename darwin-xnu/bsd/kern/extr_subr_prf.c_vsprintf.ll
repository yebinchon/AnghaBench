; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_subr_prf.c_vsprintf.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_subr_prf.c_vsprintf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snprintf_arg = type { i8*, i32 }

@snprintf_func = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vsprintf(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.snprintf_arg, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i8*, i8** %4, align 8
  %10 = getelementptr inbounds %struct.snprintf_arg, %struct.snprintf_arg* %8, i32 0, i32 0
  store i8* %9, i8** %10, align 8
  %11 = getelementptr inbounds %struct.snprintf_arg, %struct.snprintf_arg* %8, i32 0, i32 1
  store i32 999999, i32* %11, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @snprintf_func, align 4
  %15 = load i32, i32* @FALSE, align 4
  %16 = call i32 @__doprnt(i8* %12, i32 %13, i32 %14, %struct.snprintf_arg* %8, i32 10, i32 %15)
  store i32 %16, i32* %7, align 4
  %17 = getelementptr inbounds %struct.snprintf_arg, %struct.snprintf_arg* %8, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = icmp sge i32 %18, 1
  br i1 %19, label %20, label %24

20:                                               ; preds = %3
  %21 = getelementptr inbounds %struct.snprintf_arg, %struct.snprintf_arg* %8, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %23, i8** %21, align 8
  store i8 0, i8* %22, align 1
  br label %24

24:                                               ; preds = %20, %3
  ret i32 0
}

declare dso_local i32 @__doprnt(i8*, i32, i32, %struct.snprintf_arg*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
