; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_cycle_map.c_cpu_cycle_map.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_cycle_map.c_cpu_cycle_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CYCLE_MAP_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*, i32*)* @cpu_cycle_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cpu_cycle_map(i8* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8, align 1
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %13 = load i32, i32* @CYCLE_MAP_SIZE, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %8, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %9, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %7, align 4
  br label %17

17:                                               ; preds = %29, %3
  %18 = load i32, i32* %7, align 4
  %19 = icmp sle i32 %18, 113
  br i1 %19, label %20, label %32

20:                                               ; preds = %17
  %21 = load i8*, i8** %4, align 8
  %22 = load i32, i32* %7, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8, i8* %21, i64 %23
  %25 = load i8, i8* %24, align 1
  %26 = load i32, i32* %7, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8, i8* %16, i64 %27
  store i8 %25, i8* %28, align 1
  br label %29

29:                                               ; preds = %20
  %30 = load i32, i32* %7, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %7, align 4
  br label %17

32:                                               ; preds = %17
  store i32 114, i32* %7, align 4
  br label %33

33:                                               ; preds = %41, %32
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @CYCLE_MAP_SIZE, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %44

37:                                               ; preds = %33
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8, i8* %16, i64 %39
  store i8 46, i8* %40, align 1
  br label %41

41:                                               ; preds = %37
  %42 = load i32, i32* %7, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %7, align 4
  br label %33

44:                                               ; preds = %33
  store i32 0, i32* %7, align 4
  br label %45

45:                                               ; preds = %54, %44
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @CYCLE_MAP_SIZE, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %57

49:                                               ; preds = %45
  %50 = load i32*, i32** %5, align 8
  %51 = load i32, i32* %7, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  store i32 -1, i32* %53, align 4
  br label %54

54:                                               ; preds = %49
  %55 = load i32, i32* %7, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %7, align 4
  br label %45

57:                                               ; preds = %45
  store i32 0, i32* %10, align 4
  br label %58

58:                                               ; preds = %96, %57
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* @CYCLE_MAP_SIZE, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %99

62:                                               ; preds = %58
  %63 = load i32, i32* %10, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8, i8* %16, i64 %64
  %66 = load i8, i8* %65, align 1
  store i8 %66, i8* %12, align 1
  %67 = load i32, i32* %11, align 4
  %68 = load i32*, i32** %6, align 8
  %69 = load i32, i32* %10, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  store i32 %67, i32* %71, align 4
  %72 = load i8, i8* %12, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp ne i32 %73, 82
  br i1 %74, label %75, label %95

75:                                               ; preds = %62
  %76 = load i8, i8* %12, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp ne i32 %77, 83
  br i1 %78, label %79, label %95

79:                                               ; preds = %75
  %80 = load i8, i8* %12, align 1
  %81 = sext i8 %80 to i32
  %82 = icmp ne i32 %81, 70
  br i1 %82, label %83, label %95

83:                                               ; preds = %79
  %84 = load i8, i8* %12, align 1
  %85 = sext i8 %84 to i32
  %86 = icmp ne i32 %85, 73
  br i1 %86, label %87, label %95

87:                                               ; preds = %83
  %88 = load i32, i32* %10, align 4
  %89 = load i32*, i32** %5, align 8
  %90 = load i32, i32* %11, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  store i32 %88, i32* %92, align 4
  %93 = load i32, i32* %11, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %11, align 4
  br label %95

95:                                               ; preds = %87, %83, %79, %75, %62
  br label %96

96:                                               ; preds = %95
  %97 = load i32, i32* %10, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %10, align 4
  br label %58

99:                                               ; preds = %58
  %100 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %100)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
