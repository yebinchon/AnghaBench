; ModuleID = '/home/carl/AnghaBench/disque/deps/linenoise/extr_linenoise.c_linenoiseEditDeletePrevWord.c'
source_filename = "/home/carl/AnghaBench/disque/deps/linenoise/extr_linenoise.c_linenoiseEditDeletePrevWord.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.linenoiseState = type { i64, i8*, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @linenoiseEditDeletePrevWord(%struct.linenoiseState* %0) #0 {
  %2 = alloca %struct.linenoiseState*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %struct.linenoiseState* %0, %struct.linenoiseState** %2, align 8
  %5 = load %struct.linenoiseState*, %struct.linenoiseState** %2, align 8
  %6 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  store i64 %7, i64* %3, align 8
  br label %8

8:                                                ; preds = %27, %1
  %9 = load %struct.linenoiseState*, %struct.linenoiseState** %2, align 8
  %10 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ugt i64 %11, 0
  br i1 %12, label %13, label %25

13:                                               ; preds = %8
  %14 = load %struct.linenoiseState*, %struct.linenoiseState** %2, align 8
  %15 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %14, i32 0, i32 1
  %16 = load i8*, i8** %15, align 8
  %17 = load %struct.linenoiseState*, %struct.linenoiseState** %2, align 8
  %18 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = sub i64 %19, 1
  %21 = getelementptr inbounds i8, i8* %16, i64 %20
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp eq i32 %23, 32
  br label %25

25:                                               ; preds = %13, %8
  %26 = phi i1 [ false, %8 ], [ %24, %13 ]
  br i1 %26, label %27, label %32

27:                                               ; preds = %25
  %28 = load %struct.linenoiseState*, %struct.linenoiseState** %2, align 8
  %29 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = add i64 %30, -1
  store i64 %31, i64* %29, align 8
  br label %8

32:                                               ; preds = %25
  br label %33

33:                                               ; preds = %52, %32
  %34 = load %struct.linenoiseState*, %struct.linenoiseState** %2, align 8
  %35 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ugt i64 %36, 0
  br i1 %37, label %38, label %50

38:                                               ; preds = %33
  %39 = load %struct.linenoiseState*, %struct.linenoiseState** %2, align 8
  %40 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %39, i32 0, i32 1
  %41 = load i8*, i8** %40, align 8
  %42 = load %struct.linenoiseState*, %struct.linenoiseState** %2, align 8
  %43 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = sub i64 %44, 1
  %46 = getelementptr inbounds i8, i8* %41, i64 %45
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp ne i32 %48, 32
  br label %50

50:                                               ; preds = %38, %33
  %51 = phi i1 [ false, %33 ], [ %49, %38 ]
  br i1 %51, label %52, label %57

52:                                               ; preds = %50
  %53 = load %struct.linenoiseState*, %struct.linenoiseState** %2, align 8
  %54 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = add i64 %55, -1
  store i64 %56, i64* %54, align 8
  br label %33

57:                                               ; preds = %50
  %58 = load i64, i64* %3, align 8
  %59 = load %struct.linenoiseState*, %struct.linenoiseState** %2, align 8
  %60 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = sub i64 %58, %61
  store i64 %62, i64* %4, align 8
  %63 = load %struct.linenoiseState*, %struct.linenoiseState** %2, align 8
  %64 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %63, i32 0, i32 1
  %65 = load i8*, i8** %64, align 8
  %66 = load %struct.linenoiseState*, %struct.linenoiseState** %2, align 8
  %67 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = getelementptr inbounds i8, i8* %65, i64 %68
  %70 = load %struct.linenoiseState*, %struct.linenoiseState** %2, align 8
  %71 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %70, i32 0, i32 1
  %72 = load i8*, i8** %71, align 8
  %73 = load i64, i64* %3, align 8
  %74 = getelementptr inbounds i8, i8* %72, i64 %73
  %75 = load %struct.linenoiseState*, %struct.linenoiseState** %2, align 8
  %76 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* %3, align 8
  %79 = sub i64 %77, %78
  %80 = add i64 %79, 1
  %81 = call i32 @memmove(i8* %69, i8* %74, i64 %80)
  %82 = load i64, i64* %4, align 8
  %83 = load %struct.linenoiseState*, %struct.linenoiseState** %2, align 8
  %84 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = sub i64 %85, %82
  store i64 %86, i64* %84, align 8
  %87 = load %struct.linenoiseState*, %struct.linenoiseState** %2, align 8
  %88 = call i32 @refreshLine(%struct.linenoiseState* %87)
  ret void
}

declare dso_local i32 @memmove(i8*, i8*, i64) #1

declare dso_local i32 @refreshLine(%struct.linenoiseState*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
