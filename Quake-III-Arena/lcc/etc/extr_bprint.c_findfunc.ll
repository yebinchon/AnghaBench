; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/lcc/etc/extr_bprint.c_findfunc.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/lcc/etc/extr_bprint.c_findfunc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i8*, %struct.func* }
%struct.func = type { i8*, %struct.TYPE_2__, %struct.func* }
%struct.TYPE_2__ = type { i32 }

@findfunc.cursor = internal global %struct.file* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @findfunc(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.func*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.file*, %struct.file** @findfunc.cursor, align 8
  %8 = icmp eq %struct.file* %7, null
  br i1 %8, label %15, label %9

9:                                                ; preds = %2
  %10 = load %struct.file*, %struct.file** @findfunc.cursor, align 8
  %11 = getelementptr inbounds %struct.file, %struct.file* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = icmp ne i8* %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %9, %2
  %16 = load i8*, i8** %5, align 8
  %17 = call %struct.file* @findfile(i8* %16)
  store %struct.file* %17, %struct.file** @findfunc.cursor, align 8
  br label %18

18:                                               ; preds = %15, %9
  %19 = load %struct.file*, %struct.file** @findfunc.cursor, align 8
  %20 = icmp ne %struct.file* %19, null
  br i1 %20, label %21, label %45

21:                                               ; preds = %18
  %22 = load %struct.file*, %struct.file** @findfunc.cursor, align 8
  %23 = getelementptr inbounds %struct.file, %struct.file* %22, i32 0, i32 1
  %24 = load %struct.func*, %struct.func** %23, align 8
  store %struct.func* %24, %struct.func** %6, align 8
  br label %25

25:                                               ; preds = %40, %21
  %26 = load %struct.func*, %struct.func** %6, align 8
  %27 = icmp ne %struct.func* %26, null
  br i1 %27, label %28, label %44

28:                                               ; preds = %25
  %29 = load %struct.func*, %struct.func** %6, align 8
  %30 = getelementptr inbounds %struct.func, %struct.func* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = load i8*, i8** %4, align 8
  %33 = icmp eq i8* %31, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %28
  %35 = load %struct.func*, %struct.func** %6, align 8
  %36 = getelementptr inbounds %struct.func, %struct.func* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  store i32 %38, i32* %3, align 4
  br label %46

39:                                               ; preds = %28
  br label %40

40:                                               ; preds = %39
  %41 = load %struct.func*, %struct.func** %6, align 8
  %42 = getelementptr inbounds %struct.func, %struct.func* %41, i32 0, i32 2
  %43 = load %struct.func*, %struct.func** %42, align 8
  store %struct.func* %43, %struct.func** %6, align 8
  br label %25

44:                                               ; preds = %25
  br label %45

45:                                               ; preds = %44, %18
  store i32 -1, i32* %3, align 4
  br label %46

46:                                               ; preds = %45, %34
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local %struct.file* @findfile(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
