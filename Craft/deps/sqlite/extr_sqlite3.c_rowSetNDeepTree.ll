; ModuleID = '/home/carl/AnghaBench/Craft/deps/sqlite/extr_sqlite3.c_rowSetNDeepTree.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/sqlite/extr_sqlite3.c_rowSetNDeepTree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.RowSetEntry = type { %struct.RowSetEntry*, %struct.RowSetEntry* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.RowSetEntry* (%struct.RowSetEntry**, i32)* @rowSetNDeepTree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.RowSetEntry* @rowSetNDeepTree(%struct.RowSetEntry** %0, i32 %1) #0 {
  %3 = alloca %struct.RowSetEntry*, align 8
  %4 = alloca %struct.RowSetEntry**, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.RowSetEntry*, align 8
  %7 = alloca %struct.RowSetEntry*, align 8
  store %struct.RowSetEntry** %0, %struct.RowSetEntry*** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.RowSetEntry**, %struct.RowSetEntry*** %4, align 8
  %9 = load %struct.RowSetEntry*, %struct.RowSetEntry** %8, align 8
  %10 = icmp eq %struct.RowSetEntry* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store %struct.RowSetEntry* null, %struct.RowSetEntry** %3, align 8
  br label %53

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %15, label %27

15:                                               ; preds = %12
  %16 = load %struct.RowSetEntry**, %struct.RowSetEntry*** %4, align 8
  %17 = load %struct.RowSetEntry*, %struct.RowSetEntry** %16, align 8
  store %struct.RowSetEntry* %17, %struct.RowSetEntry** %6, align 8
  %18 = load %struct.RowSetEntry*, %struct.RowSetEntry** %6, align 8
  %19 = getelementptr inbounds %struct.RowSetEntry, %struct.RowSetEntry* %18, i32 0, i32 0
  %20 = load %struct.RowSetEntry*, %struct.RowSetEntry** %19, align 8
  %21 = load %struct.RowSetEntry**, %struct.RowSetEntry*** %4, align 8
  store %struct.RowSetEntry* %20, %struct.RowSetEntry** %21, align 8
  %22 = load %struct.RowSetEntry*, %struct.RowSetEntry** %6, align 8
  %23 = getelementptr inbounds %struct.RowSetEntry, %struct.RowSetEntry* %22, i32 0, i32 0
  store %struct.RowSetEntry* null, %struct.RowSetEntry** %23, align 8
  %24 = load %struct.RowSetEntry*, %struct.RowSetEntry** %6, align 8
  %25 = getelementptr inbounds %struct.RowSetEntry, %struct.RowSetEntry* %24, i32 0, i32 1
  store %struct.RowSetEntry* null, %struct.RowSetEntry** %25, align 8
  %26 = load %struct.RowSetEntry*, %struct.RowSetEntry** %6, align 8
  store %struct.RowSetEntry* %26, %struct.RowSetEntry** %3, align 8
  br label %53

27:                                               ; preds = %12
  %28 = load %struct.RowSetEntry**, %struct.RowSetEntry*** %4, align 8
  %29 = load i32, i32* %5, align 4
  %30 = sub nsw i32 %29, 1
  %31 = call %struct.RowSetEntry* @rowSetNDeepTree(%struct.RowSetEntry** %28, i32 %30)
  store %struct.RowSetEntry* %31, %struct.RowSetEntry** %7, align 8
  %32 = load %struct.RowSetEntry**, %struct.RowSetEntry*** %4, align 8
  %33 = load %struct.RowSetEntry*, %struct.RowSetEntry** %32, align 8
  store %struct.RowSetEntry* %33, %struct.RowSetEntry** %6, align 8
  %34 = load %struct.RowSetEntry*, %struct.RowSetEntry** %6, align 8
  %35 = icmp eq %struct.RowSetEntry* %34, null
  br i1 %35, label %36, label %38

36:                                               ; preds = %27
  %37 = load %struct.RowSetEntry*, %struct.RowSetEntry** %7, align 8
  store %struct.RowSetEntry* %37, %struct.RowSetEntry** %3, align 8
  br label %53

38:                                               ; preds = %27
  %39 = load %struct.RowSetEntry*, %struct.RowSetEntry** %7, align 8
  %40 = load %struct.RowSetEntry*, %struct.RowSetEntry** %6, align 8
  %41 = getelementptr inbounds %struct.RowSetEntry, %struct.RowSetEntry* %40, i32 0, i32 1
  store %struct.RowSetEntry* %39, %struct.RowSetEntry** %41, align 8
  %42 = load %struct.RowSetEntry*, %struct.RowSetEntry** %6, align 8
  %43 = getelementptr inbounds %struct.RowSetEntry, %struct.RowSetEntry* %42, i32 0, i32 0
  %44 = load %struct.RowSetEntry*, %struct.RowSetEntry** %43, align 8
  %45 = load %struct.RowSetEntry**, %struct.RowSetEntry*** %4, align 8
  store %struct.RowSetEntry* %44, %struct.RowSetEntry** %45, align 8
  %46 = load %struct.RowSetEntry**, %struct.RowSetEntry*** %4, align 8
  %47 = load i32, i32* %5, align 4
  %48 = sub nsw i32 %47, 1
  %49 = call %struct.RowSetEntry* @rowSetNDeepTree(%struct.RowSetEntry** %46, i32 %48)
  %50 = load %struct.RowSetEntry*, %struct.RowSetEntry** %6, align 8
  %51 = getelementptr inbounds %struct.RowSetEntry, %struct.RowSetEntry* %50, i32 0, i32 0
  store %struct.RowSetEntry* %49, %struct.RowSetEntry** %51, align 8
  %52 = load %struct.RowSetEntry*, %struct.RowSetEntry** %6, align 8
  store %struct.RowSetEntry* %52, %struct.RowSetEntry** %3, align 8
  br label %53

53:                                               ; preds = %38, %36, %15, %11
  %54 = load %struct.RowSetEntry*, %struct.RowSetEntry** %3, align 8
  ret %struct.RowSetEntry* %54
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
