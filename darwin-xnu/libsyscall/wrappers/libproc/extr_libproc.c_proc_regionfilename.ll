; ModuleID = '/home/carl/AnghaBench/darwin-xnu/libsyscall/wrappers/libproc/extr_libproc.c_proc_regionfilename.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/libsyscall/wrappers/libproc/extr_libproc.c_proc_regionfilename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc_regionwithpathinfo = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@MAXPATHLEN = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@PROC_PIDREGIONPATHINFO2 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @proc_regionfilename(i32 %0, i64 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.proc_regionwithpathinfo, align 4
  store i32 %0, i32* %6, align 4
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load i64, i64* %9, align 8
  %13 = load i64, i64* @MAXPATHLEN, align 8
  %14 = icmp slt i64 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %4
  %16 = load i32, i32* @ENOMEM, align 4
  store i32 %16, i32* @errno, align 4
  store i32 0, i32* %5, align 4
  br label %33

17:                                               ; preds = %4
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @PROC_PIDREGIONPATHINFO2, align 4
  %20 = load i64, i64* %7, align 8
  %21 = call i32 @proc_pidinfo(i32 %18, i32 %19, i64 %20, %struct.proc_regionwithpathinfo* %11, i32 4)
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %10, align 4
  %23 = icmp ne i32 %22, -1
  br i1 %23, label %24, label %32

24:                                               ; preds = %17
  %25 = load i8*, i8** %8, align 8
  %26 = getelementptr inbounds %struct.proc_regionwithpathinfo, %struct.proc_regionwithpathinfo* %11, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i64, i64* @MAXPATHLEN, align 8
  %30 = call i64 @strlcpy(i8* %25, i32 %28, i64 %29)
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %5, align 4
  br label %33

32:                                               ; preds = %17
  store i32 0, i32* %5, align 4
  br label %33

33:                                               ; preds = %32, %24, %15
  %34 = load i32, i32* %5, align 4
  ret i32 %34
}

declare dso_local i32 @proc_pidinfo(i32, i32, i64, %struct.proc_regionwithpathinfo*, i32) #1

declare dso_local i64 @strlcpy(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
