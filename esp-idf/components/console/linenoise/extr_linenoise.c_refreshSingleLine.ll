; ModuleID = '/home/carl/AnghaBench/esp-idf/components/console/linenoise/extr_linenoise.c_refreshSingleLine.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/console/linenoise/extr_linenoise.c_refreshSingleLine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.linenoiseState = type { i64, i8*, i64, i64, i64, i8* }
%struct.abuf = type { i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0D\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"\1B[0K\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"\0D\1B[%dC\00", align 1
@stdout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.linenoiseState*)* @refreshSingleLine to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @refreshSingleLine(%struct.linenoiseState* %0) #0 {
  %2 = alloca %struct.linenoiseState*, align 8
  %3 = alloca [64 x i8], align 16
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.abuf, align 4
  store %struct.linenoiseState* %0, %struct.linenoiseState** %2, align 8
  %9 = load %struct.linenoiseState*, %struct.linenoiseState** %2, align 8
  %10 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %4, align 8
  %12 = load %struct.linenoiseState*, %struct.linenoiseState** %2, align 8
  %13 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %12, i32 0, i32 1
  %14 = load i8*, i8** %13, align 8
  store i8* %14, i8** %5, align 8
  %15 = load %struct.linenoiseState*, %struct.linenoiseState** %2, align 8
  %16 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %6, align 8
  %18 = load %struct.linenoiseState*, %struct.linenoiseState** %2, align 8
  %19 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %18, i32 0, i32 3
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %7, align 8
  br label %21

21:                                               ; preds = %29, %1
  %22 = load i64, i64* %4, align 8
  %23 = load i64, i64* %7, align 8
  %24 = add i64 %22, %23
  %25 = load %struct.linenoiseState*, %struct.linenoiseState** %2, align 8
  %26 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %25, i32 0, i32 4
  %27 = load i64, i64* %26, align 8
  %28 = icmp uge i64 %24, %27
  br i1 %28, label %29, label %36

29:                                               ; preds = %21
  %30 = load i8*, i8** %5, align 8
  %31 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %31, i8** %5, align 8
  %32 = load i64, i64* %6, align 8
  %33 = add i64 %32, -1
  store i64 %33, i64* %6, align 8
  %34 = load i64, i64* %7, align 8
  %35 = add i64 %34, -1
  store i64 %35, i64* %7, align 8
  br label %21

36:                                               ; preds = %21
  br label %37

37:                                               ; preds = %45, %36
  %38 = load i64, i64* %4, align 8
  %39 = load i64, i64* %6, align 8
  %40 = add i64 %38, %39
  %41 = load %struct.linenoiseState*, %struct.linenoiseState** %2, align 8
  %42 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %41, i32 0, i32 4
  %43 = load i64, i64* %42, align 8
  %44 = icmp ugt i64 %40, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %37
  %46 = load i64, i64* %6, align 8
  %47 = add i64 %46, -1
  store i64 %47, i64* %6, align 8
  br label %37

48:                                               ; preds = %37
  %49 = call i32 @abInit(%struct.abuf* %8)
  %50 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %51 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %50, i32 64, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %52 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %53 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %54 = call i64 @strlen(i8* %53)
  %55 = call i32 @abAppend(%struct.abuf* %8, i8* %52, i64 %54)
  %56 = load %struct.linenoiseState*, %struct.linenoiseState** %2, align 8
  %57 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %56, i32 0, i32 5
  %58 = load i8*, i8** %57, align 8
  %59 = load %struct.linenoiseState*, %struct.linenoiseState** %2, align 8
  %60 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %59, i32 0, i32 5
  %61 = load i8*, i8** %60, align 8
  %62 = call i64 @strlen(i8* %61)
  %63 = call i32 @abAppend(%struct.abuf* %8, i8* %58, i64 %62)
  %64 = load i8*, i8** %5, align 8
  %65 = load i64, i64* %6, align 8
  %66 = call i32 @abAppend(%struct.abuf* %8, i8* %64, i64 %65)
  %67 = load %struct.linenoiseState*, %struct.linenoiseState** %2, align 8
  %68 = load i64, i64* %4, align 8
  %69 = call i32 @refreshShowHints(%struct.abuf* %8, %struct.linenoiseState* %67, i64 %68)
  %70 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %71 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %70, i32 64, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %72 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %73 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %74 = call i64 @strlen(i8* %73)
  %75 = call i32 @abAppend(%struct.abuf* %8, i8* %72, i64 %74)
  %76 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %77 = load i64, i64* %7, align 8
  %78 = load i64, i64* %4, align 8
  %79 = add i64 %77, %78
  %80 = trunc i64 %79 to i32
  %81 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %76, i32 64, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %80)
  %82 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %83 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %84 = call i64 @strlen(i8* %83)
  %85 = call i32 @abAppend(%struct.abuf* %8, i8* %82, i64 %84)
  %86 = getelementptr inbounds %struct.abuf, %struct.abuf* %8, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = getelementptr inbounds %struct.abuf, %struct.abuf* %8, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @stdout, align 4
  %91 = call i32 @fwrite(i32 %87, i32 %89, i32 1, i32 %90)
  %92 = icmp eq i32 %91, -1
  br i1 %92, label %93, label %94

93:                                               ; preds = %48
  br label %94

94:                                               ; preds = %93, %48
  %95 = call i32 @abFree(%struct.abuf* %8)
  ret void
}

declare dso_local i32 @abInit(%struct.abuf*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #1

declare dso_local i32 @abAppend(%struct.abuf*, i8*, i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @refreshShowHints(%struct.abuf*, %struct.linenoiseState*, i64) #1

declare dso_local i32 @fwrite(i32, i32, i32, i32) #1

declare dso_local i32 @abFree(%struct.abuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
