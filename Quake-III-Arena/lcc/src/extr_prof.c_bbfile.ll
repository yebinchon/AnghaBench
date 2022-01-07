; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/lcc/src/extr_prof.c_bbfile.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/lcc/src/extr_prof.c_bbfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, %struct.TYPE_13__* }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i8* }

@filelist = common dso_local global %struct.TYPE_13__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @bbfile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bbfile(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = icmp ne i8* %6, null
  br i1 %7, label %8, label %43

8:                                                ; preds = %1
  store i32 1, i32* %5, align 4
  %9 = load %struct.TYPE_13__*, %struct.TYPE_13__** @filelist, align 8
  store %struct.TYPE_13__* %9, %struct.TYPE_13__** %4, align 8
  %10 = icmp ne %struct.TYPE_13__* %9, null
  br i1 %10, label %11, label %37

11:                                               ; preds = %8
  br label %12

12:                                               ; preds = %32, %11
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  store %struct.TYPE_13__* %15, %struct.TYPE_13__** %4, align 8
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.TYPE_12__*
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = load i8*, i8** %3, align 8
  %26 = icmp eq i8* %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %12
  %28 = load i32, i32* %5, align 4
  store i32 %28, i32* %2, align 4
  br label %44

29:                                               ; preds = %12
  %30 = load i32, i32* %5, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %5, align 4
  br label %32

32:                                               ; preds = %29
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** @filelist, align 8
  %35 = icmp ne %struct.TYPE_13__* %33, %34
  br i1 %35, label %12, label %36

36:                                               ; preds = %32
  br label %37

37:                                               ; preds = %36, %8
  %38 = load i8*, i8** %3, align 8
  %39 = call i32 @mkstr(i8* %38)
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** @filelist, align 8
  %41 = call %struct.TYPE_13__* @append(i32 %39, %struct.TYPE_13__* %40)
  store %struct.TYPE_13__* %41, %struct.TYPE_13__** @filelist, align 8
  %42 = load i32, i32* %5, align 4
  store i32 %42, i32* %2, align 4
  br label %44

43:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %44

44:                                               ; preds = %43, %37, %27
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local %struct.TYPE_13__* @append(i32, %struct.TYPE_13__*) #1

declare dso_local i32 @mkstr(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
