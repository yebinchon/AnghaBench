; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_socket2.c_sb_empty_assert.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_socket2.c_sb_empty_assert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockbuf = type { i64, i64, i32*, i32*, i32*, i32 }

@.str = private unnamed_addr constant [62 x i8] c"%s: sb %p so %p cc %d mbcnt %d mb %p mbtail %p lastrecord %p\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sb_empty_assert(%struct.sockbuf* %0, i8* %1) #0 {
  %3 = alloca %struct.sockbuf*, align 8
  %4 = alloca i8*, align 8
  store %struct.sockbuf* %0, %struct.sockbuf** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct.sockbuf*, %struct.sockbuf** %3, align 8
  %6 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %29

9:                                                ; preds = %2
  %10 = load %struct.sockbuf*, %struct.sockbuf** %3, align 8
  %11 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %10, i32 0, i32 4
  %12 = load i32*, i32** %11, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %29

14:                                               ; preds = %9
  %15 = load %struct.sockbuf*, %struct.sockbuf** %3, align 8
  %16 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %29

19:                                               ; preds = %14
  %20 = load %struct.sockbuf*, %struct.sockbuf** %3, align 8
  %21 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %20, i32 0, i32 3
  %22 = load i32*, i32** %21, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %29

24:                                               ; preds = %19
  %25 = load %struct.sockbuf*, %struct.sockbuf** %3, align 8
  %26 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %25, i32 0, i32 2
  %27 = load i32*, i32** %26, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %51, label %29

29:                                               ; preds = %24, %19, %14, %9, %2
  %30 = load i8*, i8** %4, align 8
  %31 = load %struct.sockbuf*, %struct.sockbuf** %3, align 8
  %32 = load %struct.sockbuf*, %struct.sockbuf** %3, align 8
  %33 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %32, i32 0, i32 5
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.sockbuf*, %struct.sockbuf** %3, align 8
  %36 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.sockbuf*, %struct.sockbuf** %3, align 8
  %39 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.sockbuf*, %struct.sockbuf** %3, align 8
  %42 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %41, i32 0, i32 4
  %43 = load i32*, i32** %42, align 8
  %44 = load %struct.sockbuf*, %struct.sockbuf** %3, align 8
  %45 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %44, i32 0, i32 3
  %46 = load i32*, i32** %45, align 8
  %47 = load %struct.sockbuf*, %struct.sockbuf** %3, align 8
  %48 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %47, i32 0, i32 2
  %49 = load i32*, i32** %48, align 8
  %50 = call i32 @panic(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i8* %30, %struct.sockbuf* %31, i32 %34, i64 %37, i64 %40, i32* %43, i32* %46, i32* %49)
  br label %51

51:                                               ; preds = %29, %24
  ret void
}

declare dso_local i32 @panic(i8*, i8*, %struct.sockbuf*, i32, i64, i64, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
