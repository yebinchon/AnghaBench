; ModuleID = '/home/carl/AnghaBench/esp-idf/components/console/linenoise/extr_linenoise.c_linenoiseEditDelete.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/console/linenoise/extr_linenoise.c_linenoiseEditDelete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.linenoiseState = type { i64, i64, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @linenoiseEditDelete(%struct.linenoiseState* %0) #0 {
  %2 = alloca %struct.linenoiseState*, align 8
  store %struct.linenoiseState* %0, %struct.linenoiseState** %2, align 8
  %3 = load %struct.linenoiseState*, %struct.linenoiseState** %2, align 8
  %4 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = icmp sgt i64 %5, 0
  br i1 %6, label %7, label %54

7:                                                ; preds = %1
  %8 = load %struct.linenoiseState*, %struct.linenoiseState** %2, align 8
  %9 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.linenoiseState*, %struct.linenoiseState** %2, align 8
  %12 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp slt i64 %10, %13
  br i1 %14, label %15, label %54

15:                                               ; preds = %7
  %16 = load %struct.linenoiseState*, %struct.linenoiseState** %2, align 8
  %17 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %16, i32 0, i32 2
  %18 = load i8*, i8** %17, align 8
  %19 = load %struct.linenoiseState*, %struct.linenoiseState** %2, align 8
  %20 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds i8, i8* %18, i64 %21
  %23 = load %struct.linenoiseState*, %struct.linenoiseState** %2, align 8
  %24 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %23, i32 0, i32 2
  %25 = load i8*, i8** %24, align 8
  %26 = load %struct.linenoiseState*, %struct.linenoiseState** %2, align 8
  %27 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds i8, i8* %25, i64 %28
  %30 = getelementptr inbounds i8, i8* %29, i64 1
  %31 = load %struct.linenoiseState*, %struct.linenoiseState** %2, align 8
  %32 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.linenoiseState*, %struct.linenoiseState** %2, align 8
  %35 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = sub nsw i64 %33, %36
  %38 = sub nsw i64 %37, 1
  %39 = trunc i64 %38 to i32
  %40 = call i32 @memmove(i8* %22, i8* %30, i32 %39)
  %41 = load %struct.linenoiseState*, %struct.linenoiseState** %2, align 8
  %42 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = add nsw i64 %43, -1
  store i64 %44, i64* %42, align 8
  %45 = load %struct.linenoiseState*, %struct.linenoiseState** %2, align 8
  %46 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %45, i32 0, i32 2
  %47 = load i8*, i8** %46, align 8
  %48 = load %struct.linenoiseState*, %struct.linenoiseState** %2, align 8
  %49 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = getelementptr inbounds i8, i8* %47, i64 %50
  store i8 0, i8* %51, align 1
  %52 = load %struct.linenoiseState*, %struct.linenoiseState** %2, align 8
  %53 = call i32 @refreshLine(%struct.linenoiseState* %52)
  br label %54

54:                                               ; preds = %15, %7, %1
  ret void
}

declare dso_local i32 @memmove(i8*, i8*, i32) #1

declare dso_local i32 @refreshLine(%struct.linenoiseState*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
