; ModuleID = '/home/carl/AnghaBench/RetroArch/ps2/libcdvd/iop/extr_cdvd_iop.c__splitpath.c'
source_filename = "/home/carl/AnghaBench/RetroArch/ps2/libcdvd/iop/extr_cdvd_iop.c__splitpath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_splitpath.pathcopy = internal global [1025 x i8] zeroinitializer, align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_splitpath(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = call i32 @strncpy(i8* getelementptr inbounds ([1025 x i8], [1025 x i8]* @_splitpath.pathcopy, i64 0, i64 0), i8* %8, i32 1024)
  %10 = call i8* @strrchr(i8* getelementptr inbounds ([1025 x i8], [1025 x i8]* @_splitpath.pathcopy, i64 0, i64 0), i32 47)
  store i8* %10, i8** %7, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %3
  %14 = call i8* @strrchr(i8* getelementptr inbounds ([1025 x i8], [1025 x i8]* @_splitpath.pathcopy, i64 0, i64 0), i32 92)
  store i8* %14, i8** %7, align 8
  br label %15

15:                                               ; preds = %13, %3
  %16 = load i8*, i8** %7, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %31

18:                                               ; preds = %15
  %19 = load i8*, i8** %7, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 0
  store i8 0, i8* %20, align 1
  %21 = load i8*, i8** %5, align 8
  %22 = call i32 @strncpy(i8* %21, i8* getelementptr inbounds ([1025 x i8], [1025 x i8]* @_splitpath.pathcopy, i64 0, i64 0), i32 1024)
  %23 = load i8*, i8** %5, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 255
  store i8 0, i8* %24, align 1
  %25 = load i8*, i8** %6, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 1
  %28 = call i32 @strncpy(i8* %25, i8* %27, i32 128)
  %29 = load i8*, i8** %6, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 128
  store i8 0, i8* %30, align 1
  br label %38

31:                                               ; preds = %15
  %32 = load i8*, i8** %5, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 0
  store i8 0, i8* %33, align 1
  %34 = load i8*, i8** %6, align 8
  %35 = call i32 @strncpy(i8* %34, i8* getelementptr inbounds ([1025 x i8], [1025 x i8]* @_splitpath.pathcopy, i64 0, i64 0), i32 128)
  %36 = load i8*, i8** %6, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 128
  store i8 0, i8* %37, align 1
  br label %38

38:                                               ; preds = %31, %18
  ret void
}

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i8* @strrchr(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
