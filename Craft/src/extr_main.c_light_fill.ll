; ModuleID = '/home/carl/AnghaBench/Craft/src/extr_main.c_light_fill.c'
source_filename = "/home/carl/AnghaBench/Craft/src/extr_main.c_light_fill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@XZ_LO = common dso_local global i32 0, align 4
@XZ_HI = common dso_local global i32 0, align 4
@Y_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @light_fill(i8* %0, i8* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %15 = load i32, i32* %10, align 4
  %16 = load i32, i32* %13, align 4
  %17 = add nsw i32 %15, %16
  %18 = load i32, i32* @XZ_LO, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %26, label %20

20:                                               ; preds = %7
  %21 = load i32, i32* %12, align 4
  %22 = load i32, i32* %13, align 4
  %23 = add nsw i32 %21, %22
  %24 = load i32, i32* @XZ_LO, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %20, %7
  br label %126

27:                                               ; preds = %20
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* %13, align 4
  %30 = sub nsw i32 %28, %29
  %31 = load i32, i32* @XZ_HI, align 4
  %32 = icmp sgt i32 %30, %31
  br i1 %32, label %39, label %33

33:                                               ; preds = %27
  %34 = load i32, i32* %12, align 4
  %35 = load i32, i32* %13, align 4
  %36 = sub nsw i32 %34, %35
  %37 = load i32, i32* @XZ_HI, align 4
  %38 = icmp sgt i32 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %33, %27
  br label %126

40:                                               ; preds = %33
  %41 = load i32, i32* %11, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %40
  %44 = load i32, i32* %11, align 4
  %45 = load i32, i32* @Y_SIZE, align 4
  %46 = icmp sge i32 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %43, %40
  br label %126

48:                                               ; preds = %43
  %49 = load i8*, i8** %9, align 8
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* %12, align 4
  %53 = call i64 @XYZ(i32 %50, i32 %51, i32 %52)
  %54 = getelementptr inbounds i8, i8* %49, i64 %53
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = load i32, i32* %13, align 4
  %58 = icmp sge i32 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %48
  br label %126

60:                                               ; preds = %48
  %61 = load i32, i32* %14, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %74, label %63

63:                                               ; preds = %60
  %64 = load i8*, i8** %8, align 8
  %65 = load i32, i32* %10, align 4
  %66 = load i32, i32* %11, align 4
  %67 = load i32, i32* %12, align 4
  %68 = call i64 @XYZ(i32 %65, i32 %66, i32 %67)
  %69 = getelementptr inbounds i8, i8* %64, i64 %68
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %63
  br label %126

74:                                               ; preds = %63, %60
  %75 = load i32, i32* %13, align 4
  %76 = add nsw i32 %75, -1
  store i32 %76, i32* %13, align 4
  %77 = trunc i32 %75 to i8
  %78 = load i8*, i8** %9, align 8
  %79 = load i32, i32* %10, align 4
  %80 = load i32, i32* %11, align 4
  %81 = load i32, i32* %12, align 4
  %82 = call i64 @XYZ(i32 %79, i32 %80, i32 %81)
  %83 = getelementptr inbounds i8, i8* %78, i64 %82
  store i8 %77, i8* %83, align 1
  %84 = load i8*, i8** %8, align 8
  %85 = load i8*, i8** %9, align 8
  %86 = load i32, i32* %10, align 4
  %87 = sub nsw i32 %86, 1
  %88 = load i32, i32* %11, align 4
  %89 = load i32, i32* %12, align 4
  %90 = load i32, i32* %13, align 4
  call void @light_fill(i8* %84, i8* %85, i32 %87, i32 %88, i32 %89, i32 %90, i32 0)
  %91 = load i8*, i8** %8, align 8
  %92 = load i8*, i8** %9, align 8
  %93 = load i32, i32* %10, align 4
  %94 = add nsw i32 %93, 1
  %95 = load i32, i32* %11, align 4
  %96 = load i32, i32* %12, align 4
  %97 = load i32, i32* %13, align 4
  call void @light_fill(i8* %91, i8* %92, i32 %94, i32 %95, i32 %96, i32 %97, i32 0)
  %98 = load i8*, i8** %8, align 8
  %99 = load i8*, i8** %9, align 8
  %100 = load i32, i32* %10, align 4
  %101 = load i32, i32* %11, align 4
  %102 = sub nsw i32 %101, 1
  %103 = load i32, i32* %12, align 4
  %104 = load i32, i32* %13, align 4
  call void @light_fill(i8* %98, i8* %99, i32 %100, i32 %102, i32 %103, i32 %104, i32 0)
  %105 = load i8*, i8** %8, align 8
  %106 = load i8*, i8** %9, align 8
  %107 = load i32, i32* %10, align 4
  %108 = load i32, i32* %11, align 4
  %109 = add nsw i32 %108, 1
  %110 = load i32, i32* %12, align 4
  %111 = load i32, i32* %13, align 4
  call void @light_fill(i8* %105, i8* %106, i32 %107, i32 %109, i32 %110, i32 %111, i32 0)
  %112 = load i8*, i8** %8, align 8
  %113 = load i8*, i8** %9, align 8
  %114 = load i32, i32* %10, align 4
  %115 = load i32, i32* %11, align 4
  %116 = load i32, i32* %12, align 4
  %117 = sub nsw i32 %116, 1
  %118 = load i32, i32* %13, align 4
  call void @light_fill(i8* %112, i8* %113, i32 %114, i32 %115, i32 %117, i32 %118, i32 0)
  %119 = load i8*, i8** %8, align 8
  %120 = load i8*, i8** %9, align 8
  %121 = load i32, i32* %10, align 4
  %122 = load i32, i32* %11, align 4
  %123 = load i32, i32* %12, align 4
  %124 = add nsw i32 %123, 1
  %125 = load i32, i32* %13, align 4
  call void @light_fill(i8* %119, i8* %120, i32 %121, i32 %122, i32 %124, i32 %125, i32 0)
  br label %126

126:                                              ; preds = %74, %73, %59, %47, %39, %26
  ret void
}

declare dso_local i64 @XYZ(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
