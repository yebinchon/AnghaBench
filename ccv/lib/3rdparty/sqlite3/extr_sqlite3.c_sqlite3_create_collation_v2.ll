; ModuleID = '/home/carl/AnghaBench/ccv/lib/3rdparty/sqlite3/extr_sqlite3.c_sqlite3_create_collation_v2.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/3rdparty/sqlite3/extr_sqlite3.c_sqlite3_create_collation_v2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }

@SQLITE_MISUSE_BKPT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sqlite3_create_collation_v2(%struct.TYPE_6__* %0, i8* %1, i32 %2, i8* %3, i32 (i8*, i32, i8*, i32, i8*)* %4, void (i8*)* %5) #0 {
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32 (i8*, i32, i8*, i32, i8*)*, align 8
  %12 = alloca void (i8*)*, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32 (i8*, i32, i8*, i32, i8*)* %4, i32 (i8*, i32, i8*, i32, i8*)** %11, align 8
  store void (i8*)* %5, void (i8*)** %12, align 8
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @sqlite3_mutex_enter(i32 %16)
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = call i32 @assert(i32 %23)
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %26 = load i8*, i8** %8, align 8
  %27 = load i32, i32* %9, align 4
  %28 = load i8*, i8** %10, align 8
  %29 = load i32 (i8*, i32, i8*, i32, i8*)*, i32 (i8*, i32, i8*, i32, i8*)** %11, align 8
  %30 = load void (i8*)*, void (i8*)** %12, align 8
  %31 = call i32 @createCollation(%struct.TYPE_6__* %25, i8* %26, i32 %27, i8* %28, i32 (i8*, i32, i8*, i32, i8*)* %29, void (i8*)* %30)
  store i32 %31, i32* %13, align 4
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %33 = load i32, i32* %13, align 4
  %34 = call i32 @sqlite3ApiExit(%struct.TYPE_6__* %32, i32 %33)
  store i32 %34, i32* %13, align 4
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @sqlite3_mutex_leave(i32 %37)
  %39 = load i32, i32* %13, align 4
  ret i32 %39
}

declare dso_local i32 @sqlite3_mutex_enter(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @createCollation(%struct.TYPE_6__*, i8*, i32, i8*, i32 (i8*, i32, i8*, i32, i8*)*, void (i8*)*) #1

declare dso_local i32 @sqlite3ApiExit(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @sqlite3_mutex_leave(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
