; ModuleID = '/home/carl/AnghaBench/disque/deps/linenoise/extr_linenoise.c_linenoiseEditHistoryNext.c'
source_filename = "/home/carl/AnghaBench/disque/deps/linenoise/extr_linenoise.c_linenoiseEditHistoryNext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.linenoiseState = type { i32, i8*, i32, i32, i32 }

@history_len = common dso_local global i32 0, align 4
@history = common dso_local global i32* null, align 8
@LINENOISE_HISTORY_PREV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @linenoiseEditHistoryNext(%struct.linenoiseState* %0, i32 %1) #0 {
  %3 = alloca %struct.linenoiseState*, align 8
  %4 = alloca i32, align 4
  store %struct.linenoiseState* %0, %struct.linenoiseState** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* @history_len, align 4
  %6 = icmp sgt i32 %5, 1
  br i1 %6, label %7, label %97

7:                                                ; preds = %2
  %8 = load i32*, i32** @history, align 8
  %9 = load i32, i32* @history_len, align 4
  %10 = sub nsw i32 %9, 1
  %11 = load %struct.linenoiseState*, %struct.linenoiseState** %3, align 8
  %12 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = sub nsw i32 %10, %13
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %8, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @free(i32 %17)
  %19 = load %struct.linenoiseState*, %struct.linenoiseState** %3, align 8
  %20 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %19, i32 0, i32 1
  %21 = load i8*, i8** %20, align 8
  %22 = call i32 @strdup(i8* %21)
  %23 = load i32*, i32** @history, align 8
  %24 = load i32, i32* @history_len, align 4
  %25 = sub nsw i32 %24, 1
  %26 = load %struct.linenoiseState*, %struct.linenoiseState** %3, align 8
  %27 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = sub nsw i32 %25, %28
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %23, i64 %30
  store i32 %22, i32* %31, align 4
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @LINENOISE_HISTORY_PREV, align 4
  %34 = icmp eq i32 %32, %33
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, i32 1, i32 -1
  %37 = load %struct.linenoiseState*, %struct.linenoiseState** %3, align 8
  %38 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = add nsw i32 %39, %36
  store i32 %40, i32* %38, align 8
  %41 = load %struct.linenoiseState*, %struct.linenoiseState** %3, align 8
  %42 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %7
  %46 = load %struct.linenoiseState*, %struct.linenoiseState** %3, align 8
  %47 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %46, i32 0, i32 0
  store i32 0, i32* %47, align 8
  br label %97

48:                                               ; preds = %7
  %49 = load %struct.linenoiseState*, %struct.linenoiseState** %3, align 8
  %50 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @history_len, align 4
  %53 = icmp sge i32 %51, %52
  br i1 %53, label %54, label %59

54:                                               ; preds = %48
  %55 = load i32, i32* @history_len, align 4
  %56 = sub nsw i32 %55, 1
  %57 = load %struct.linenoiseState*, %struct.linenoiseState** %3, align 8
  %58 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  br label %97

59:                                               ; preds = %48
  br label %60

60:                                               ; preds = %59
  %61 = load %struct.linenoiseState*, %struct.linenoiseState** %3, align 8
  %62 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %61, i32 0, i32 1
  %63 = load i8*, i8** %62, align 8
  %64 = load i32*, i32** @history, align 8
  %65 = load i32, i32* @history_len, align 4
  %66 = sub nsw i32 %65, 1
  %67 = load %struct.linenoiseState*, %struct.linenoiseState** %3, align 8
  %68 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = sub nsw i32 %66, %69
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %64, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.linenoiseState*, %struct.linenoiseState** %3, align 8
  %75 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @strncpy(i8* %63, i32 %73, i32 %76)
  %78 = load %struct.linenoiseState*, %struct.linenoiseState** %3, align 8
  %79 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %78, i32 0, i32 1
  %80 = load i8*, i8** %79, align 8
  %81 = load %struct.linenoiseState*, %struct.linenoiseState** %3, align 8
  %82 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = sub nsw i32 %83, 1
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i8, i8* %80, i64 %85
  store i8 0, i8* %86, align 1
  %87 = load %struct.linenoiseState*, %struct.linenoiseState** %3, align 8
  %88 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %87, i32 0, i32 1
  %89 = load i8*, i8** %88, align 8
  %90 = call i32 @strlen(i8* %89)
  %91 = load %struct.linenoiseState*, %struct.linenoiseState** %3, align 8
  %92 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %91, i32 0, i32 3
  store i32 %90, i32* %92, align 4
  %93 = load %struct.linenoiseState*, %struct.linenoiseState** %3, align 8
  %94 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %93, i32 0, i32 4
  store i32 %90, i32* %94, align 8
  %95 = load %struct.linenoiseState*, %struct.linenoiseState** %3, align 8
  %96 = call i32 @refreshLine(%struct.linenoiseState* %95)
  br label %97

97:                                               ; preds = %45, %54, %60, %2
  ret void
}

declare dso_local i32 @free(i32) #1

declare dso_local i32 @strdup(i8*) #1

declare dso_local i32 @strncpy(i8*, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @refreshLine(%struct.linenoiseState*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
