; ModuleID = '/home/carl/AnghaBench/disque/deps/linenoise/extr_linenoise.c_linenoiseEditInsert.c'
source_filename = "/home/carl/AnghaBench/disque/deps/linenoise/extr_linenoise.c_linenoiseEditInsert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.linenoiseState = type { i64, i64, i64, i8*, i64, i64, i32 }

@mlmode = common dso_local global i32 0, align 4

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
  br i1 %12, label %13, label %121

13:                                               ; preds = %2
  %14 = load %struct.linenoiseState*, %struct.linenoiseState** %4, align 8
  %15 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.linenoiseState*, %struct.linenoiseState** %4, align 8
  %18 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %16, %19
  br i1 %20, label %21, label %71

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
  br i1 %46, label %67, label %47

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
  br i1 %58, label %59, label %67

59:                                               ; preds = %47
  %60 = load %struct.linenoiseState*, %struct.linenoiseState** %4, align 8
  %61 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %60, i32 0, i32 6
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @write(i32 %62, i8* %5, i32 1)
  %64 = icmp eq i32 %63, -1
  br i1 %64, label %65, label %66

65:                                               ; preds = %59
  store i32 -1, i32* %3, align 4
  br label %122

66:                                               ; preds = %59
  br label %70

67:                                               ; preds = %47, %21
  %68 = load %struct.linenoiseState*, %struct.linenoiseState** %4, align 8
  %69 = call i32 @refreshLine(%struct.linenoiseState* %68)
  br label %70

70:                                               ; preds = %67, %66
  br label %120

71:                                               ; preds = %13
  %72 = load %struct.linenoiseState*, %struct.linenoiseState** %4, align 8
  %73 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %72, i32 0, i32 3
  %74 = load i8*, i8** %73, align 8
  %75 = load %struct.linenoiseState*, %struct.linenoiseState** %4, align 8
  %76 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = getelementptr inbounds i8, i8* %74, i64 %77
  %79 = getelementptr inbounds i8, i8* %78, i64 1
  %80 = load %struct.linenoiseState*, %struct.linenoiseState** %4, align 8
  %81 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %80, i32 0, i32 3
  %82 = load i8*, i8** %81, align 8
  %83 = load %struct.linenoiseState*, %struct.linenoiseState** %4, align 8
  %84 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = getelementptr inbounds i8, i8* %82, i64 %85
  %87 = load %struct.linenoiseState*, %struct.linenoiseState** %4, align 8
  %88 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.linenoiseState*, %struct.linenoiseState** %4, align 8
  %91 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %90, i32 0, i32 2
  %92 = load i64, i64* %91, align 8
  %93 = sub i64 %89, %92
  %94 = call i32 @memmove(i8* %79, i8* %86, i64 %93)
  %95 = load i8, i8* %5, align 1
  %96 = load %struct.linenoiseState*, %struct.linenoiseState** %4, align 8
  %97 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %96, i32 0, i32 3
  %98 = load i8*, i8** %97, align 8
  %99 = load %struct.linenoiseState*, %struct.linenoiseState** %4, align 8
  %100 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %99, i32 0, i32 2
  %101 = load i64, i64* %100, align 8
  %102 = getelementptr inbounds i8, i8* %98, i64 %101
  store i8 %95, i8* %102, align 1
  %103 = load %struct.linenoiseState*, %struct.linenoiseState** %4, align 8
  %104 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = add i64 %105, 1
  store i64 %106, i64* %104, align 8
  %107 = load %struct.linenoiseState*, %struct.linenoiseState** %4, align 8
  %108 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %107, i32 0, i32 2
  %109 = load i64, i64* %108, align 8
  %110 = add i64 %109, 1
  store i64 %110, i64* %108, align 8
  %111 = load %struct.linenoiseState*, %struct.linenoiseState** %4, align 8
  %112 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %111, i32 0, i32 3
  %113 = load i8*, i8** %112, align 8
  %114 = load %struct.linenoiseState*, %struct.linenoiseState** %4, align 8
  %115 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = getelementptr inbounds i8, i8* %113, i64 %116
  store i8 0, i8* %117, align 1
  %118 = load %struct.linenoiseState*, %struct.linenoiseState** %4, align 8
  %119 = call i32 @refreshLine(%struct.linenoiseState* %118)
  br label %120

120:                                              ; preds = %71, %70
  br label %121

121:                                              ; preds = %120, %2
  store i32 0, i32* %3, align 4
  br label %122

122:                                              ; preds = %121, %65
  %123 = load i32, i32* %3, align 4
  ret i32 %123
}

declare dso_local i32 @write(i32, i8*, i32) #1

declare dso_local i32 @refreshLine(%struct.linenoiseState*) #1

declare dso_local i32 @memmove(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
