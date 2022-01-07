; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/ibxm/extr_ibxm.c_pattern_get_note.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/ibxm/extr_ibxm.c_pattern_get_note.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pattern = type { i32, i32, i32* }
%struct.note = type { i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pattern*, i32, i32, %struct.note*)* @pattern_get_note to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pattern_get_note(%struct.pattern* %0, i32 %1, i32 %2, %struct.note* %3) #0 {
  %5 = alloca %struct.pattern*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.note*, align 8
  %9 = alloca i32, align 4
  store %struct.pattern* %0, %struct.pattern** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.note* %3, %struct.note** %8, align 8
  %10 = load i32, i32* %6, align 4
  %11 = load %struct.pattern*, %struct.pattern** %5, align 8
  %12 = getelementptr inbounds %struct.pattern, %struct.pattern* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = mul nsw i32 %10, %13
  %15 = load i32, i32* %7, align 4
  %16 = add nsw i32 %14, %15
  %17 = mul nsw i32 %16, 5
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = icmp sge i32 %18, 0
  br i1 %19, label %20, label %82

20:                                               ; preds = %4
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.pattern*, %struct.pattern** %5, align 8
  %23 = getelementptr inbounds %struct.pattern, %struct.pattern* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp slt i32 %21, %24
  br i1 %25, label %26, label %82

26:                                               ; preds = %20
  %27 = load i32, i32* %7, align 4
  %28 = load %struct.pattern*, %struct.pattern** %5, align 8
  %29 = getelementptr inbounds %struct.pattern, %struct.pattern* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp slt i32 %27, %30
  br i1 %31, label %32, label %82

32:                                               ; preds = %26
  %33 = load %struct.pattern*, %struct.pattern** %5, align 8
  %34 = getelementptr inbounds %struct.pattern, %struct.pattern* %33, i32 0, i32 2
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %9, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.note*, %struct.note** %8, align 8
  %41 = getelementptr inbounds %struct.note, %struct.note* %40, i32 0, i32 4
  store i32 %39, i32* %41, align 4
  %42 = load %struct.pattern*, %struct.pattern** %5, align 8
  %43 = getelementptr inbounds %struct.pattern, %struct.pattern* %42, i32 0, i32 2
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %9, align 4
  %46 = add nsw i32 %45, 1
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %44, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.note*, %struct.note** %8, align 8
  %51 = getelementptr inbounds %struct.note, %struct.note* %50, i32 0, i32 3
  store i32 %49, i32* %51, align 4
  %52 = load %struct.pattern*, %struct.pattern** %5, align 8
  %53 = getelementptr inbounds %struct.pattern, %struct.pattern* %52, i32 0, i32 2
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* %9, align 4
  %56 = add nsw i32 %55, 2
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %54, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.note*, %struct.note** %8, align 8
  %61 = getelementptr inbounds %struct.note, %struct.note* %60, i32 0, i32 2
  store i32 %59, i32* %61, align 4
  %62 = load %struct.pattern*, %struct.pattern** %5, align 8
  %63 = getelementptr inbounds %struct.pattern, %struct.pattern* %62, i32 0, i32 2
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %9, align 4
  %66 = add nsw i32 %65, 3
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %64, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.note*, %struct.note** %8, align 8
  %71 = getelementptr inbounds %struct.note, %struct.note* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 4
  %72 = load %struct.pattern*, %struct.pattern** %5, align 8
  %73 = getelementptr inbounds %struct.pattern, %struct.pattern* %72, i32 0, i32 2
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %9, align 4
  %76 = add nsw i32 %75, 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %74, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.note*, %struct.note** %8, align 8
  %81 = getelementptr inbounds %struct.note, %struct.note* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 4
  br label %85

82:                                               ; preds = %26, %20, %4
  %83 = load %struct.note*, %struct.note** %8, align 8
  %84 = call i32 @memset(%struct.note* %83, i32 0, i32 20)
  br label %85

85:                                               ; preds = %82, %32
  ret void
}

declare dso_local i32 @memset(%struct.note*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
