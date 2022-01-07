; ModuleID = '/home/carl/AnghaBench/How-to-Make-a-Computer-Operating-System/src/sdk/src/libc/src/stdlib/extr_qsort.c_quicksort.c'
source_filename = "/home/carl/AnghaBench/How-to-Make-a-Computer-Operating-System/src/sdk/src/libc/src/stdlib/extr_qsort.c_quicksort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64, i32, i32, i32 (i8*, i8*)*)* @quicksort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @quicksort(i8* %0, i64 %1, i32 %2, i32 %3, i32 (i8*, i8*)* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32 (i8*, i8*)*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 (i8*, i8*)* %4, i32 (i8*, i8*)** %10, align 8
  %17 = load i32, i32* %8, align 4
  %18 = sub nsw i32 %17, 1
  store i32 %18, i32* %11, align 4
  %19 = load i32, i32* %9, align 4
  store i32 %19, i32* %12, align 4
  %20 = load i32, i32* %8, align 4
  %21 = sub nsw i32 %20, 1
  store i32 %21, i32* %13, align 4
  %22 = load i32, i32* %9, align 4
  store i32 %22, i32* %14, align 4
  %23 = load i8*, i8** %6, align 8
  %24 = load i32, i32* %9, align 4
  %25 = sext i32 %24 to i64
  %26 = load i64, i64* %7, align 8
  %27 = mul i64 %25, %26
  %28 = getelementptr inbounds i8, i8* %23, i64 %27
  store i8* %28, i8** %16, align 8
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp sle i32 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %5
  br label %175

33:                                               ; preds = %5
  br label %34

34:                                               ; preds = %119, %33
  br label %35

35:                                               ; preds = %53, %34
  %36 = load i32, i32* %11, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* %9, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %51

40:                                               ; preds = %35
  %41 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %10, align 8
  %42 = load i8*, i8** %6, align 8
  %43 = load i32, i32* %11, align 4
  %44 = sext i32 %43 to i64
  %45 = load i64, i64* %7, align 8
  %46 = mul i64 %44, %45
  %47 = getelementptr inbounds i8, i8* %42, i64 %46
  %48 = load i8*, i8** %16, align 8
  %49 = call i32 %41(i8* %47, i8* %48)
  %50 = icmp slt i32 %49, 0
  br label %51

51:                                               ; preds = %40, %35
  %52 = phi i1 [ false, %35 ], [ %50, %40 ]
  br i1 %52, label %53, label %54

53:                                               ; preds = %51
  br label %35

54:                                               ; preds = %51
  br label %55

55:                                               ; preds = %72, %54
  %56 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %10, align 8
  %57 = load i8*, i8** %16, align 8
  %58 = load i8*, i8** %6, align 8
  %59 = load i32, i32* %12, align 4
  %60 = add nsw i32 %59, -1
  store i32 %60, i32* %12, align 4
  %61 = sext i32 %60 to i64
  %62 = load i64, i64* %7, align 8
  %63 = mul i64 %61, %62
  %64 = getelementptr inbounds i8, i8* %58, i64 %63
  %65 = call i32 %56(i8* %57, i8* %64)
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %55
  %68 = load i32, i32* %12, align 4
  %69 = load i32, i32* %8, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %67
  br label %73

72:                                               ; preds = %67
  br label %55

73:                                               ; preds = %71, %55
  %74 = load i32, i32* %11, align 4
  %75 = load i32, i32* %12, align 4
  %76 = icmp sge i32 %74, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %73
  br label %120

78:                                               ; preds = %73
  %79 = load i8*, i8** %6, align 8
  %80 = load i64, i64* %7, align 8
  %81 = load i32, i32* %11, align 4
  %82 = load i32, i32* %12, align 4
  %83 = call i32 @exch(i8* %79, i64 %80, i32 %81, i32 %82)
  %84 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %10, align 8
  %85 = load i8*, i8** %6, align 8
  %86 = load i32, i32* %11, align 4
  %87 = sext i32 %86 to i64
  %88 = load i64, i64* %7, align 8
  %89 = mul i64 %87, %88
  %90 = getelementptr inbounds i8, i8* %85, i64 %89
  %91 = load i8*, i8** %16, align 8
  %92 = call i32 %84(i8* %90, i8* %91)
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %101

94:                                               ; preds = %78
  %95 = load i8*, i8** %6, align 8
  %96 = load i64, i64* %7, align 8
  %97 = load i32, i32* %13, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %13, align 4
  %99 = load i32, i32* %11, align 4
  %100 = call i32 @exch(i8* %95, i64 %96, i32 %98, i32 %99)
  br label %101

101:                                              ; preds = %94, %78
  %102 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %10, align 8
  %103 = load i8*, i8** %16, align 8
  %104 = load i8*, i8** %6, align 8
  %105 = load i32, i32* %12, align 4
  %106 = sext i32 %105 to i64
  %107 = load i64, i64* %7, align 8
  %108 = mul i64 %106, %107
  %109 = getelementptr inbounds i8, i8* %104, i64 %108
  %110 = call i32 %102(i8* %103, i8* %109)
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %119

112:                                              ; preds = %101
  %113 = load i8*, i8** %6, align 8
  %114 = load i64, i64* %7, align 8
  %115 = load i32, i32* %12, align 4
  %116 = load i32, i32* %14, align 4
  %117 = add nsw i32 %116, -1
  store i32 %117, i32* %14, align 4
  %118 = call i32 @exch(i8* %113, i64 %114, i32 %115, i32 %117)
  br label %119

119:                                              ; preds = %112, %101
  br label %34

120:                                              ; preds = %77
  %121 = load i8*, i8** %6, align 8
  %122 = load i64, i64* %7, align 8
  %123 = load i32, i32* %11, align 4
  %124 = load i32, i32* %9, align 4
  %125 = call i32 @exch(i8* %121, i64 %122, i32 %123, i32 %124)
  %126 = load i32, i32* %11, align 4
  %127 = sub nsw i32 %126, 1
  store i32 %127, i32* %12, align 4
  %128 = load i32, i32* %11, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %11, align 4
  %130 = load i32, i32* %8, align 4
  store i32 %130, i32* %15, align 4
  br label %131

131:                                              ; preds = %141, %120
  %132 = load i32, i32* %15, align 4
  %133 = load i32, i32* %13, align 4
  %134 = icmp slt i32 %132, %133
  br i1 %134, label %135, label %146

135:                                              ; preds = %131
  %136 = load i8*, i8** %6, align 8
  %137 = load i64, i64* %7, align 8
  %138 = load i32, i32* %15, align 4
  %139 = load i32, i32* %12, align 4
  %140 = call i32 @exch(i8* %136, i64 %137, i32 %138, i32 %139)
  br label %141

141:                                              ; preds = %135
  %142 = load i32, i32* %15, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %15, align 4
  %144 = load i32, i32* %12, align 4
  %145 = add nsw i32 %144, -1
  store i32 %145, i32* %12, align 4
  br label %131

146:                                              ; preds = %131
  %147 = load i32, i32* %9, align 4
  %148 = sub nsw i32 %147, 1
  store i32 %148, i32* %15, align 4
  br label %149

149:                                              ; preds = %159, %146
  %150 = load i32, i32* %15, align 4
  %151 = load i32, i32* %14, align 4
  %152 = icmp sgt i32 %150, %151
  br i1 %152, label %153, label %164

153:                                              ; preds = %149
  %154 = load i8*, i8** %6, align 8
  %155 = load i64, i64* %7, align 8
  %156 = load i32, i32* %11, align 4
  %157 = load i32, i32* %15, align 4
  %158 = call i32 @exch(i8* %154, i64 %155, i32 %156, i32 %157)
  br label %159

159:                                              ; preds = %153
  %160 = load i32, i32* %15, align 4
  %161 = add nsw i32 %160, -1
  store i32 %161, i32* %15, align 4
  %162 = load i32, i32* %11, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %11, align 4
  br label %149

164:                                              ; preds = %149
  %165 = load i8*, i8** %6, align 8
  %166 = load i64, i64* %7, align 8
  %167 = load i32, i32* %8, align 4
  %168 = load i32, i32* %12, align 4
  %169 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %10, align 8
  call void @quicksort(i8* %165, i64 %166, i32 %167, i32 %168, i32 (i8*, i8*)* %169)
  %170 = load i8*, i8** %6, align 8
  %171 = load i64, i64* %7, align 8
  %172 = load i32, i32* %11, align 4
  %173 = load i32, i32* %9, align 4
  %174 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %10, align 8
  call void @quicksort(i8* %170, i64 %171, i32 %172, i32 %173, i32 (i8*, i8*)* %174)
  br label %175

175:                                              ; preds = %164, %32
  ret void
}

declare dso_local i32 @exch(i8*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
