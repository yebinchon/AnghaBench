; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_proc_info.c_bsd_copythreadname.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_proc_info.c_bsd_copythreadname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uthread = type { i8* }

@MAXTHREADNAMESIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bsd_copythreadname(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.uthread*, align 8
  %6 = alloca %struct.uthread*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.uthread*
  store %struct.uthread* %8, %struct.uthread** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.uthread*
  store %struct.uthread* %10, %struct.uthread** %6, align 8
  %11 = load %struct.uthread*, %struct.uthread** %6, align 8
  %12 = getelementptr inbounds %struct.uthread, %struct.uthread* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  %14 = icmp eq i8* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %42

16:                                               ; preds = %2
  %17 = load %struct.uthread*, %struct.uthread** %5, align 8
  %18 = getelementptr inbounds %struct.uthread, %struct.uthread* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = icmp eq i8* %19, null
  br i1 %20, label %21, label %33

21:                                               ; preds = %16
  %22 = load i32, i32* @MAXTHREADNAMESIZE, align 4
  %23 = call i64 @kalloc(i32 %22)
  %24 = inttoptr i64 %23 to i8*
  %25 = load %struct.uthread*, %struct.uthread** %5, align 8
  %26 = getelementptr inbounds %struct.uthread, %struct.uthread* %25, i32 0, i32 0
  store i8* %24, i8** %26, align 8
  %27 = load %struct.uthread*, %struct.uthread** %5, align 8
  %28 = getelementptr inbounds %struct.uthread, %struct.uthread* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = icmp eq i8* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %21
  br label %42

32:                                               ; preds = %21
  br label %33

33:                                               ; preds = %32, %16
  %34 = load %struct.uthread*, %struct.uthread** %6, align 8
  %35 = getelementptr inbounds %struct.uthread, %struct.uthread* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = load %struct.uthread*, %struct.uthread** %5, align 8
  %38 = getelementptr inbounds %struct.uthread, %struct.uthread* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = load i32, i32* @MAXTHREADNAMESIZE, align 4
  %41 = call i32 @bcopy(i8* %36, i8* %39, i32 %40)
  br label %42

42:                                               ; preds = %33, %31, %15
  ret void
}

declare dso_local i64 @kalloc(i32) #1

declare dso_local i32 @bcopy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
