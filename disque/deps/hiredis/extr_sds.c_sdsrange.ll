; ModuleID = '/home/carl/AnghaBench/disque/deps/hiredis/extr_sds.c_sdsrange.c'
source_filename = "/home/carl/AnghaBench/disque/deps/hiredis/extr_sds.c_sdsrange.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sdsrange(i64* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i64* %0, i64** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i64*, i64** %4, align 8
  %10 = call i64 @sdslen(i64* %9)
  store i64 %10, i64* %8, align 8
  %11 = load i64, i64* %8, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  br label %106

14:                                               ; preds = %3
  %15 = load i32, i32* %5, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %27

17:                                               ; preds = %14
  %18 = load i64, i64* %8, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = add i64 %18, %20
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %17
  store i32 0, i32* %5, align 4
  br label %26

26:                                               ; preds = %25, %17
  br label %27

27:                                               ; preds = %26, %14
  %28 = load i32, i32* %6, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %40

30:                                               ; preds = %27
  %31 = load i64, i64* %8, align 8
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = add i64 %31, %33
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %30
  store i32 0, i32* %6, align 4
  br label %39

39:                                               ; preds = %38, %30
  br label %40

40:                                               ; preds = %39, %27
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp sgt i32 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  br label %50

45:                                               ; preds = %40
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* %5, align 4
  %48 = sub nsw i32 %46, %47
  %49 = add nsw i32 %48, 1
  br label %50

50:                                               ; preds = %45, %44
  %51 = phi i32 [ 0, %44 ], [ %49, %45 ]
  %52 = sext i32 %51 to i64
  store i64 %52, i64* %7, align 8
  %53 = load i64, i64* %7, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %84

55:                                               ; preds = %50
  %56 = load i32, i32* %5, align 4
  %57 = load i64, i64* %8, align 8
  %58 = trunc i64 %57 to i32
  %59 = icmp sge i32 %56, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %55
  store i64 0, i64* %7, align 8
  br label %83

61:                                               ; preds = %55
  %62 = load i32, i32* %6, align 4
  %63 = load i64, i64* %8, align 8
  %64 = trunc i64 %63 to i32
  %65 = icmp sge i32 %62, %64
  br i1 %65, label %66, label %82

66:                                               ; preds = %61
  %67 = load i64, i64* %8, align 8
  %68 = sub i64 %67, 1
  %69 = trunc i64 %68 to i32
  store i32 %69, i32* %6, align 4
  %70 = load i32, i32* %5, align 4
  %71 = load i32, i32* %6, align 4
  %72 = icmp sgt i32 %70, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %66
  br label %79

74:                                               ; preds = %66
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* %5, align 4
  %77 = sub nsw i32 %75, %76
  %78 = add nsw i32 %77, 1
  br label %79

79:                                               ; preds = %74, %73
  %80 = phi i32 [ 0, %73 ], [ %78, %74 ]
  %81 = sext i32 %80 to i64
  store i64 %81, i64* %7, align 8
  br label %82

82:                                               ; preds = %79, %61
  br label %83

83:                                               ; preds = %82, %60
  br label %85

84:                                               ; preds = %50
  store i32 0, i32* %5, align 4
  br label %85

85:                                               ; preds = %84, %83
  %86 = load i32, i32* %5, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %99

88:                                               ; preds = %85
  %89 = load i64, i64* %7, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %99

91:                                               ; preds = %88
  %92 = load i64*, i64** %4, align 8
  %93 = load i64*, i64** %4, align 8
  %94 = load i32, i32* %5, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i64, i64* %93, i64 %95
  %97 = load i64, i64* %7, align 8
  %98 = call i32 @memmove(i64* %92, i64* %96, i64 %97)
  br label %99

99:                                               ; preds = %91, %88, %85
  %100 = load i64*, i64** %4, align 8
  %101 = load i64, i64* %7, align 8
  %102 = getelementptr inbounds i64, i64* %100, i64 %101
  store i64 0, i64* %102, align 8
  %103 = load i64*, i64** %4, align 8
  %104 = load i64, i64* %7, align 8
  %105 = call i32 @sdssetlen(i64* %103, i64 %104)
  br label %106

106:                                              ; preds = %99, %13
  ret void
}

declare dso_local i64 @sdslen(i64*) #1

declare dso_local i32 @memmove(i64*, i64*, i64) #1

declare dso_local i32 @sdssetlen(i64*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
