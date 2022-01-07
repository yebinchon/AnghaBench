; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/tools/extr_pngfix.c_skip_chunk_type.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/tools/extr_pngfix.c_skip_chunk_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.global = type { i32 }

@SKIP_ALL = common dso_local global i32 0, align 4
@SKIP_COLOR = common dso_local global i32 0, align 4
@SKIP_TRANSFORM = common dso_local global i32 0, align 4
@SKIP_UNUSED = common dso_local global i32 0, align 4
@SKIP_UNSAFE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.global*, i32)* @skip_chunk_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skip_chunk_type(%struct.global* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.global*, align 8
  %5 = alloca i32, align 4
  store %struct.global* %0, %struct.global** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = call i64 @CRITICAL(i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store i32 0, i32* %3, align 4
  br label %66

10:                                               ; preds = %2
  %11 = load i32, i32* %5, align 4
  switch i32 %11, label %45 [
    i32 129, label %12
    i32 136, label %12
    i32 146, label %13
    i32 133, label %13
    i32 148, label %21
    i32 141, label %21
    i32 149, label %29
    i32 147, label %37
    i32 145, label %37
    i32 144, label %37
    i32 143, label %37
    i32 142, label %37
    i32 140, label %37
    i32 139, label %37
    i32 138, label %37
    i32 137, label %37
    i32 135, label %37
    i32 134, label %37
    i32 132, label %37
    i32 131, label %37
    i32 130, label %37
    i32 128, label %37
  ]

12:                                               ; preds = %10, %10
  store i32 0, i32* %3, align 4
  br label %66

13:                                               ; preds = %10, %10
  %14 = load %struct.global*, %struct.global** %4, align 8
  %15 = getelementptr inbounds %struct.global, %struct.global* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @SKIP_ALL, align 4
  %18 = icmp sge i32 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  store i32 1, i32* %3, align 4
  br label %66

20:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %66

21:                                               ; preds = %10, %10
  %22 = load %struct.global*, %struct.global** %4, align 8
  %23 = getelementptr inbounds %struct.global, %struct.global* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @SKIP_COLOR, align 4
  %26 = icmp sge i32 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  store i32 1, i32* %3, align 4
  br label %66

28:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  br label %66

29:                                               ; preds = %10
  %30 = load %struct.global*, %struct.global** %4, align 8
  %31 = getelementptr inbounds %struct.global, %struct.global* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @SKIP_TRANSFORM, align 4
  %34 = icmp sge i32 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  store i32 1, i32* %3, align 4
  br label %66

36:                                               ; preds = %29
  store i32 0, i32* %3, align 4
  br label %66

37:                                               ; preds = %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10
  %38 = load %struct.global*, %struct.global** %4, align 8
  %39 = getelementptr inbounds %struct.global, %struct.global* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @SKIP_UNUSED, align 4
  %42 = icmp sge i32 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  store i32 1, i32* %3, align 4
  br label %66

44:                                               ; preds = %37
  store i32 0, i32* %3, align 4
  br label %66

45:                                               ; preds = %10
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @SAFE_TO_COPY(i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %57

49:                                               ; preds = %45
  %50 = load %struct.global*, %struct.global** %4, align 8
  %51 = getelementptr inbounds %struct.global, %struct.global* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @SKIP_UNUSED, align 4
  %54 = icmp sge i32 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %49
  store i32 1, i32* %3, align 4
  br label %66

56:                                               ; preds = %49
  br label %65

57:                                               ; preds = %45
  %58 = load %struct.global*, %struct.global** %4, align 8
  %59 = getelementptr inbounds %struct.global, %struct.global* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @SKIP_UNSAFE, align 4
  %62 = icmp sge i32 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %57
  store i32 1, i32* %3, align 4
  br label %66

64:                                               ; preds = %57
  br label %65

65:                                               ; preds = %64, %56
  store i32 0, i32* %3, align 4
  br label %66

66:                                               ; preds = %65, %63, %55, %44, %43, %36, %35, %28, %27, %20, %19, %12, %9
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i64 @CRITICAL(i32) #1

declare dso_local i32 @SAFE_TO_COPY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
