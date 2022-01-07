; ModuleID = '/home/carl/AnghaBench/darwin-xnu/tools/tests/perf_index/extr_perf_index.c_parse_args.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/tools/tests/perf_index/extr_perf_index.c_parse_args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i8*, i32*, i64, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @parse_args(i32 %0, i8** %1, %struct.TYPE_3__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  store i32 %0, i32* %5, align 4
  store i8** %1, i8*** %6, align 8
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %7, align 8
  %8 = load i32, i32* %5, align 4
  %9 = icmp ne i32 %8, 4
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %38

11:                                               ; preds = %3
  %12 = load i8**, i8*** %6, align 8
  %13 = getelementptr inbounds i8*, i8** %12, i64 0
  %14 = load i8*, i8** %13, align 8
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  store i8* %14, i8** %16, align 8
  %17 = load i8**, i8*** %6, align 8
  %18 = getelementptr inbounds i8*, i8** %17, i64 1
  %19 = load i8*, i8** %18, align 8
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  store i8* %19, i8** %21, align 8
  %22 = load i8**, i8*** %6, align 8
  %23 = getelementptr inbounds i8*, i8** %22, i64 2
  %24 = load i8*, i8** %23, align 8
  %25 = call i32 @atoi(i8* %24)
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 5
  store i32 %25, i32* %27, align 4
  %28 = load i8**, i8*** %6, align 8
  %29 = getelementptr inbounds i8*, i8** %28, i64 3
  %30 = load i8*, i8** %29, align 8
  %31 = call i32 @strtoll(i8* %30, i32* null, i32 10)
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 4
  store i32 %31, i32* %33, align 8
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 3
  store i64 0, i64* %35, align 8
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 2
  store i32* null, i32** %37, align 8
  store i32 0, i32* %4, align 4
  br label %38

38:                                               ; preds = %11, %10
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @strtoll(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
