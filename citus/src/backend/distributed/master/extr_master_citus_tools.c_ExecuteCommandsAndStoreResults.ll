; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/master/extr_master_citus_tools.c_ExecuteCommandsAndStoreResults.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/master/extr_master_citus_tools.c_ExecuteCommandsAndStoreResults.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__**, i32*, %struct.TYPE_6__**, i32*, %struct.TYPE_6__**, i32)* @ExecuteCommandsAndStoreResults to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ExecuteCommandsAndStoreResults(%struct.TYPE_6__** %0, i32* %1, %struct.TYPE_6__** %2, i32* %3, %struct.TYPE_6__** %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_6__**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_6__**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_6__**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_6__** %0, %struct.TYPE_6__*** %7, align 8
  store i32* %1, i32** %8, align 8
  store %struct.TYPE_6__** %2, %struct.TYPE_6__*** %9, align 8
  store i32* %3, i32** %10, align 8
  store %struct.TYPE_6__** %4, %struct.TYPE_6__*** %11, align 8
  store i32 %5, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %13, align 4
  br label %19

19:                                               ; preds = %59, %6
  %20 = load i32, i32* %13, align 4
  %21 = load i32, i32* %12, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %62

23:                                               ; preds = %19
  %24 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %7, align 8
  %25 = load i32, i32* %13, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %24, i64 %26
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  store i8* %30, i8** %14, align 8
  %31 = load i32*, i32** %8, align 8
  %32 = load i32, i32* %13, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %36 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %9, align 8
  %37 = load i32, i32* %13, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %36, i64 %38
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  store i8* %42, i8** %17, align 8
  %43 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %11, align 8
  %44 = load i32, i32* %13, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %43, i64 %45
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  store %struct.TYPE_6__* %47, %struct.TYPE_6__** %18, align 8
  %48 = load i8*, i8** %14, align 8
  %49 = load i32, i32* %15, align 4
  %50 = load i8*, i8** %17, align 8
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %52 = call i32 @ExecuteRemoteQueryOrCommand(i8* %48, i32 %49, i8* %50, %struct.TYPE_6__* %51)
  store i32 %52, i32* %16, align 4
  %53 = load i32, i32* %16, align 4
  %54 = load i32*, i32** %10, align 8
  %55 = load i32, i32* %13, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  store i32 %53, i32* %57, align 4
  %58 = call i32 (...) @CHECK_FOR_INTERRUPTS()
  br label %59

59:                                               ; preds = %23
  %60 = load i32, i32* %13, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %13, align 4
  br label %19

62:                                               ; preds = %19
  ret void
}

declare dso_local i32 @ExecuteRemoteQueryOrCommand(i8*, i32, i8*, %struct.TYPE_6__*) #1

declare dso_local i32 @CHECK_FOR_INTERRUPTS(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
