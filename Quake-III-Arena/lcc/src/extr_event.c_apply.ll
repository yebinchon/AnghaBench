; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/lcc/src/extr_event.c_apply.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/lcc/src/extr_event.c_apply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.TYPE_3__*, %struct.entry* }
%struct.entry = type { i32, i32 (i32, i8*, i8*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @apply(%struct.TYPE_3__* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca %struct.entry*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %10 = icmp ne %struct.TYPE_3__* %9, null
  br i1 %10, label %11, label %34

11:                                               ; preds = %3
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  store %struct.TYPE_3__* %12, %struct.TYPE_3__** %7, align 8
  br label %13

13:                                               ; preds = %29, %11
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 1
  %16 = load %struct.entry*, %struct.entry** %15, align 8
  store %struct.entry* %16, %struct.entry** %8, align 8
  %17 = load %struct.entry*, %struct.entry** %8, align 8
  %18 = getelementptr inbounds %struct.entry, %struct.entry* %17, i32 0, i32 1
  %19 = load i32 (i32, i8*, i8*)*, i32 (i32, i8*, i8*)** %18, align 8
  %20 = load %struct.entry*, %struct.entry** %8, align 8
  %21 = getelementptr inbounds %struct.entry, %struct.entry* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i8*, i8** %5, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = call i32 %19(i32 %22, i8* %23, i8* %24)
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  store %struct.TYPE_3__* %28, %struct.TYPE_3__** %7, align 8
  br label %29

29:                                               ; preds = %13
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %32 = icmp ne %struct.TYPE_3__* %30, %31
  br i1 %32, label %13, label %33

33:                                               ; preds = %29
  br label %34

34:                                               ; preds = %33, %3
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
