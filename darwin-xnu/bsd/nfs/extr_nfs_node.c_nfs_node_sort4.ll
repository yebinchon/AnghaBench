; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs_node.c_nfs_node_sort4.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs_node.c_nfs_node_sort4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64, i64, i64, i64*, i32*)* @nfs_node_sort4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfs_node_sort4(i64 %0, i64 %1, i64 %2, i64 %3, i64* %4, i32* %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca [2 x i64], align 16
  %14 = alloca [2 x i64], align 16
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i64 %0, i64* %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64* %4, i64** %11, align 8
  store i32* %5, i32** %12, align 8
  %19 = load i64, i64* %7, align 8
  %20 = load i64, i64* %8, align 8
  %21 = icmp sgt i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %6
  %23 = load i64, i64* %7, align 8
  br label %26

24:                                               ; preds = %6
  %25 = load i64, i64* %8, align 8
  br label %26

26:                                               ; preds = %24, %22
  %27 = phi i64 [ %23, %22 ], [ %25, %24 ]
  %28 = getelementptr inbounds [2 x i64], [2 x i64]* %13, i64 0, i64 0
  store i64 %27, i64* %28, align 16
  %29 = load i64, i64* %7, align 8
  %30 = load i64, i64* %8, align 8
  %31 = icmp sgt i64 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = load i64, i64* %8, align 8
  br label %36

34:                                               ; preds = %26
  %35 = load i64, i64* %7, align 8
  br label %36

36:                                               ; preds = %34, %32
  %37 = phi i64 [ %33, %32 ], [ %35, %34 ]
  %38 = getelementptr inbounds [2 x i64], [2 x i64]* %13, i64 0, i64 1
  store i64 %37, i64* %38, align 8
  %39 = load i64, i64* %9, align 8
  %40 = load i64, i64* %10, align 8
  %41 = icmp sgt i64 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %36
  %43 = load i64, i64* %9, align 8
  br label %46

44:                                               ; preds = %36
  %45 = load i64, i64* %10, align 8
  br label %46

46:                                               ; preds = %44, %42
  %47 = phi i64 [ %43, %42 ], [ %45, %44 ]
  %48 = getelementptr inbounds [2 x i64], [2 x i64]* %14, i64 0, i64 0
  store i64 %47, i64* %48, align 16
  %49 = load i64, i64* %9, align 8
  %50 = load i64, i64* %10, align 8
  %51 = icmp sgt i64 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %46
  %53 = load i64, i64* %10, align 8
  br label %56

54:                                               ; preds = %46
  %55 = load i64, i64* %9, align 8
  br label %56

56:                                               ; preds = %54, %52
  %57 = phi i64 [ %53, %52 ], [ %55, %54 ]
  %58 = getelementptr inbounds [2 x i64], [2 x i64]* %14, i64 0, i64 1
  store i64 %57, i64* %58, align 8
  store i32 0, i32* %18, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %15, align 4
  br label %59

59:                                               ; preds = %129, %56
  %60 = load i32, i32* %17, align 4
  %61 = icmp slt i32 %60, 4
  br i1 %61, label %62, label %132

62:                                               ; preds = %59
  %63 = load i32, i32* %15, align 4
  %64 = icmp sge i32 %63, 2
  br i1 %64, label %65, label %75

65:                                               ; preds = %62
  %66 = load i32, i32* %16, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %16, align 4
  %68 = sext i32 %66 to i64
  %69 = getelementptr inbounds [2 x i64], [2 x i64]* %14, i64 0, i64 %68
  %70 = load i64, i64* %69, align 8
  %71 = load i64*, i64** %11, align 8
  %72 = load i32, i32* %18, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i64, i64* %71, i64 %73
  store i64 %70, i64* %74, align 8
  br label %109

75:                                               ; preds = %62
  %76 = load i32, i32* %16, align 4
  %77 = icmp sge i32 %76, 2
  br i1 %77, label %88, label %78

78:                                               ; preds = %75
  %79 = load i32, i32* %15, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [2 x i64], [2 x i64]* %13, i64 0, i64 %80
  %82 = load i64, i64* %81, align 8
  %83 = load i32, i32* %16, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds [2 x i64], [2 x i64]* %14, i64 0, i64 %84
  %86 = load i64, i64* %85, align 8
  %87 = icmp sge i64 %82, %86
  br i1 %87, label %88, label %98

88:                                               ; preds = %78, %75
  %89 = load i32, i32* %15, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %15, align 4
  %91 = sext i32 %89 to i64
  %92 = getelementptr inbounds [2 x i64], [2 x i64]* %13, i64 0, i64 %91
  %93 = load i64, i64* %92, align 8
  %94 = load i64*, i64** %11, align 8
  %95 = load i32, i32* %18, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i64, i64* %94, i64 %96
  store i64 %93, i64* %97, align 8
  br label %108

98:                                               ; preds = %78
  %99 = load i32, i32* %16, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %16, align 4
  %101 = sext i32 %99 to i64
  %102 = getelementptr inbounds [2 x i64], [2 x i64]* %14, i64 0, i64 %101
  %103 = load i64, i64* %102, align 8
  %104 = load i64*, i64** %11, align 8
  %105 = load i32, i32* %18, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i64, i64* %104, i64 %106
  store i64 %103, i64* %107, align 8
  br label %108

108:                                              ; preds = %98, %88
  br label %109

109:                                              ; preds = %108, %65
  %110 = load i32, i32* %18, align 4
  %111 = icmp sle i32 %110, 0
  br i1 %111, label %125, label %112

112:                                              ; preds = %109
  %113 = load i64*, i64** %11, align 8
  %114 = load i32, i32* %18, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i64, i64* %113, i64 %115
  %117 = load i64, i64* %116, align 8
  %118 = load i64*, i64** %11, align 8
  %119 = load i32, i32* %18, align 4
  %120 = sub nsw i32 %119, 1
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i64, i64* %118, i64 %121
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %117, %123
  br i1 %124, label %125, label %128

125:                                              ; preds = %112, %109
  %126 = load i32, i32* %18, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %18, align 4
  br label %128

128:                                              ; preds = %125, %112
  br label %129

129:                                              ; preds = %128
  %130 = load i32, i32* %17, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %17, align 4
  br label %59

132:                                              ; preds = %59
  %133 = load i64*, i64** %11, align 8
  %134 = load i32, i32* %18, align 4
  %135 = sub nsw i32 %134, 1
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i64, i64* %133, i64 %136
  %138 = load i64, i64* %137, align 8
  %139 = inttoptr i64 %138 to i8*
  %140 = icmp eq i8* %139, null
  br i1 %140, label %141, label %144

141:                                              ; preds = %132
  %142 = load i32, i32* %18, align 4
  %143 = add nsw i32 %142, -1
  store i32 %143, i32* %18, align 4
  br label %144

144:                                              ; preds = %141, %132
  %145 = load i32, i32* %18, align 4
  %146 = load i32*, i32** %12, align 8
  store i32 %145, i32* %146, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
