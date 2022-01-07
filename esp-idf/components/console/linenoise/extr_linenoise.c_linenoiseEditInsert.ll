; ModuleID = '/home/carl/AnghaBench/esp-idf/components/console/linenoise/extr_linenoise.c_linenoiseEditInsert.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/console/linenoise/extr_linenoise.c_linenoiseEditInsert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.linenoiseState = type { i64, i64, i64, i8*, i64, i64 }

@mlmode = common dso_local global i32 0, align 4
@hintsCallback = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @linenoiseEditInsert(%struct.linenoiseState* %0, i8 signext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.linenoiseState*, align 8
  %5 = alloca i8, align 1
  store %struct.linenoiseState* %0, %struct.linenoiseState** %4, align 8
  store i8 %1, i8* %5, align 1
  %6 = load %struct.linenoiseState*, %struct.linenoiseState** %4, align 8
  %7 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.linenoiseState*, %struct.linenoiseState** %4, align 8
  %10 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp ult i64 %8, %11
  br i1 %12, label %13, label %122

13:                                               ; preds = %2
  %14 = load %struct.linenoiseState*, %struct.linenoiseState** %4, align 8
  %15 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.linenoiseState*, %struct.linenoiseState** %4, align 8
  %18 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %16, %19
  br i1 %20, label %21, label %72

21:                                               ; preds = %13
  %22 = load i8, i8* %5, align 1
  %23 = load %struct.linenoiseState*, %struct.linenoiseState** %4, align 8
  %24 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %23, i32 0, i32 3
  %25 = load i8*, i8** %24, align 8
  %26 = load %struct.linenoiseState*, %struct.linenoiseState** %4, align 8
  %27 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds i8, i8* %25, i64 %28
  store i8 %22, i8* %29, align 1
  %30 = load %struct.linenoiseState*, %struct.linenoiseState** %4, align 8
  %31 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = add i64 %32, 1
  store i64 %33, i64* %31, align 8
  %34 = load %struct.linenoiseState*, %struct.linenoiseState** %4, align 8
  %35 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = add i64 %36, 1
  store i64 %37, i64* %35, align 8
  %38 = load %struct.linenoiseState*, %struct.linenoiseState** %4, align 8
  %39 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %38, i32 0, i32 3
  %40 = load i8*, i8** %39, align 8
  %41 = load %struct.linenoiseState*, %struct.linenoiseState** %4, align 8
  %42 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds i8, i8* %40, i64 %43
  store i8 0, i8* %44, align 1
  %45 = load i32, i32* @mlmode, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %68, label %47

47:                                               ; preds = %21
  %48 = load %struct.linenoiseState*, %struct.linenoiseState** %4, align 8
  %49 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %48, i32 0, i32 4
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.linenoiseState*, %struct.linenoiseState** %4, align 8
  %52 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = add i64 %50, %53
  %55 = load %struct.linenoiseState*, %struct.linenoiseState** %4, align 8
  %56 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %55, i32 0, i32 5
  %57 = load i64, i64* %56, align 8
  %58 = icmp ult i64 %54, %57
  br i1 %58, label %59, label %68

59:                                               ; preds = %47
  %60 = load i32, i32* @hintsCallback, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %68, label %62

62:                                               ; preds = %59
  %63 = load i32, i32* @stdout, align 4
  %64 = call i32 @fwrite(i8* %5, i32 1, i32 1, i32 %63)
  %65 = icmp eq i32 %64, -1
  br i1 %65, label %66, label %67

66:                                               ; preds = %62
  store i32 -1, i32* %3, align 4
  br label %123

67:                                               ; preds = %62
  br label %71

68:                                               ; preds = %59, %47, %21
  %69 = load %struct.linenoiseState*, %struct.linenoiseState** %4, align 8
  %70 = call i32 @refreshLine(%struct.linenoiseState* %69)
  br label %71

71:                                               ; preds = %68, %67
  br label %121

72:                                               ; preds = %13
  %73 = load %struct.linenoiseState*, %struct.linenoiseState** %4, align 8
  %74 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %73, i32 0, i32 3
  %75 = load i8*, i8** %74, align 8
  %76 = load %struct.linenoiseState*, %struct.linenoiseState** %4, align 8
  %77 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = getelementptr inbounds i8, i8* %75, i64 %78
  %80 = getelementptr inbounds i8, i8* %79, i64 1
  %81 = load %struct.linenoiseState*, %struct.linenoiseState** %4, align 8
  %82 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %81, i32 0, i32 3
  %83 = load i8*, i8** %82, align 8
  %84 = load %struct.linenoiseState*, %struct.linenoiseState** %4, align 8
  %85 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = getelementptr inbounds i8, i8* %83, i64 %86
  %88 = load %struct.linenoiseState*, %struct.linenoiseState** %4, align 8
  %89 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.linenoiseState*, %struct.linenoiseState** %4, align 8
  %92 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = sub i64 %90, %93
  %95 = call i32 @memmove(i8* %80, i8* %87, i64 %94)
  %96 = load i8, i8* %5, align 1
  %97 = load %struct.linenoiseState*, %struct.linenoiseState** %4, align 8
  %98 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %97, i32 0, i32 3
  %99 = load i8*, i8** %98, align 8
  %100 = load %struct.linenoiseState*, %struct.linenoiseState** %4, align 8
  %101 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %100, i32 0, i32 2
  %102 = load i64, i64* %101, align 8
  %103 = getelementptr inbounds i8, i8* %99, i64 %102
  store i8 %96, i8* %103, align 1
  %104 = load %struct.linenoiseState*, %struct.linenoiseState** %4, align 8
  %105 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = add i64 %106, 1
  store i64 %107, i64* %105, align 8
  %108 = load %struct.linenoiseState*, %struct.linenoiseState** %4, align 8
  %109 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %108, i32 0, i32 2
  %110 = load i64, i64* %109, align 8
  %111 = add i64 %110, 1
  store i64 %111, i64* %109, align 8
  %112 = load %struct.linenoiseState*, %struct.linenoiseState** %4, align 8
  %113 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %112, i32 0, i32 3
  %114 = load i8*, i8** %113, align 8
  %115 = load %struct.linenoiseState*, %struct.linenoiseState** %4, align 8
  %116 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = getelementptr inbounds i8, i8* %114, i64 %117
  store i8 0, i8* %118, align 1
  %119 = load %struct.linenoiseState*, %struct.linenoiseState** %4, align 8
  %120 = call i32 @refreshLine(%struct.linenoiseState* %119)
  br label %121

121:                                              ; preds = %72, %71
  br label %122

122:                                              ; preds = %121, %2
  store i32 0, i32* %3, align 4
  br label %123

123:                                              ; preds = %122, %66
  %124 = load i32, i32* %3, align 4
  ret i32 %124
}

declare dso_local i32 @fwrite(i8*, i32, i32, i32) #1

declare dso_local i32 @refreshLine(%struct.linenoiseState*) #1

declare dso_local i32 @memmove(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
