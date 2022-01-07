; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_subr_prf.c_vsnprintf.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_subr_prf.c_vsnprintf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snprintf_arg = type { i8*, i64 }

@snprintf_func = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vsnprintf(i8* %0, i64 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.snprintf_arg, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load i8*, i8** %5, align 8
  %12 = getelementptr inbounds %struct.snprintf_arg, %struct.snprintf_arg* %9, i32 0, i32 0
  store i8* %11, i8** %12, align 8
  %13 = load i64, i64* %6, align 8
  %14 = getelementptr inbounds %struct.snprintf_arg, %struct.snprintf_arg* %9, i32 0, i32 1
  store i64 %13, i64* %14, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* @snprintf_func, align 4
  %18 = load i32, i32* @FALSE, align 4
  %19 = call i32 @__doprnt(i8* %15, i32 %16, i32 %17, %struct.snprintf_arg* %9, i32 10, i32 %18)
  store i32 %19, i32* %10, align 4
  %20 = getelementptr inbounds %struct.snprintf_arg, %struct.snprintf_arg* %9, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp uge i64 %21, 1
  br i1 %22, label %23, label %27

23:                                               ; preds = %4
  %24 = getelementptr inbounds %struct.snprintf_arg, %struct.snprintf_arg* %9, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %26, i8** %24, align 8
  store i8 0, i8* %25, align 1
  br label %27

27:                                               ; preds = %23, %4
  %28 = load i32, i32* %10, align 4
  ret i32 %28
}

declare dso_local i32 @__doprnt(i8*, i32, i32, %struct.snprintf_arg*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
