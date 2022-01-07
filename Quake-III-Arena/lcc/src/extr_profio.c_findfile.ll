; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/lcc/src/extr_profio.c_findfile.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/lcc/src/extr_profio.c_findfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i8*, %struct.file* }

@filelist = common dso_local global %struct.file* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.file* (i8*)* @findfile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.file* @findfile(i8* %0) #0 {
  %2 = alloca %struct.file*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.file*, align 8
  store i8* %0, i8** %3, align 8
  %5 = load %struct.file*, %struct.file** @filelist, align 8
  store %struct.file* %5, %struct.file** %4, align 8
  br label %6

6:                                                ; preds = %18, %1
  %7 = load %struct.file*, %struct.file** %4, align 8
  %8 = icmp ne %struct.file* %7, null
  br i1 %8, label %9, label %22

9:                                                ; preds = %6
  %10 = load %struct.file*, %struct.file** %4, align 8
  %11 = getelementptr inbounds %struct.file, %struct.file* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  %13 = load i8*, i8** %3, align 8
  %14 = icmp eq i8* %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %9
  %16 = load %struct.file*, %struct.file** %4, align 8
  store %struct.file* %16, %struct.file** %2, align 8
  br label %23

17:                                               ; preds = %9
  br label %18

18:                                               ; preds = %17
  %19 = load %struct.file*, %struct.file** %4, align 8
  %20 = getelementptr inbounds %struct.file, %struct.file* %19, i32 0, i32 1
  %21 = load %struct.file*, %struct.file** %20, align 8
  store %struct.file* %21, %struct.file** %4, align 8
  br label %6

22:                                               ; preds = %6
  store %struct.file* null, %struct.file** %2, align 8
  br label %23

23:                                               ; preds = %22, %15
  %24 = load %struct.file*, %struct.file** %2, align 8
  ret %struct.file* %24
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
