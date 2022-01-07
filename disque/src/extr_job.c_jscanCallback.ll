; ModuleID = '/home/carl/AnghaBench/disque/src/extr_job.c_jscanCallback.c'
source_filename = "/home/carl/AnghaBench/disque/src/extr_job.c_jscanCallback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jscanFilter = type { i32*, i64, i64 }
%struct.TYPE_4__ = type { i64, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @jscanCallback(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.jscanFilter*, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = bitcast i8* %9 to i8**
  store i8** %10, i8*** %5, align 8
  %11 = load i8**, i8*** %5, align 8
  %12 = getelementptr inbounds i8*, i8** %11, i64 0
  %13 = load i8*, i8** %12, align 8
  %14 = bitcast i8* %13 to i32*
  store i32* %14, i32** %6, align 8
  %15 = load i8**, i8*** %5, align 8
  %16 = getelementptr inbounds i8*, i8** %15, i64 1
  %17 = load i8*, i8** %16, align 8
  %18 = bitcast i8* %17 to %struct.jscanFilter*
  store %struct.jscanFilter* %18, %struct.jscanFilter** %7, align 8
  %19 = load i32*, i32** %4, align 8
  %20 = call %struct.TYPE_4__* @dictGetKey(i32* %19)
  store %struct.TYPE_4__* %20, %struct.TYPE_4__** %8, align 8
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @dictSize(i32 %23)
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %2
  br label %62

27:                                               ; preds = %2
  %28 = load %struct.jscanFilter*, %struct.jscanFilter** %7, align 8
  %29 = getelementptr inbounds %struct.jscanFilter, %struct.jscanFilter* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %27
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.jscanFilter*, %struct.jscanFilter** %7, align 8
  %37 = getelementptr inbounds %struct.jscanFilter, %struct.jscanFilter* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @equalStringObjects(i32 %35, i64 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %32
  br label %62

42:                                               ; preds = %32, %27
  %43 = load %struct.jscanFilter*, %struct.jscanFilter** %7, align 8
  %44 = getelementptr inbounds %struct.jscanFilter, %struct.jscanFilter* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %58

47:                                               ; preds = %42
  %48 = load %struct.jscanFilter*, %struct.jscanFilter** %7, align 8
  %49 = getelementptr inbounds %struct.jscanFilter, %struct.jscanFilter* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = getelementptr inbounds i32, i32* %50, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %47
  br label %62

58:                                               ; preds = %47, %42
  %59 = load i32*, i32** %6, align 8
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %61 = call i32 @listAddNodeTail(i32* %59, %struct.TYPE_4__* %60)
  br label %62

62:                                               ; preds = %58, %57, %41, %26
  ret void
}

declare dso_local %struct.TYPE_4__* @dictGetKey(i32*) #1

declare dso_local i64 @dictSize(i32) #1

declare dso_local i32 @equalStringObjects(i32, i64) #1

declare dso_local i32 @listAddNodeTail(i32*, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
