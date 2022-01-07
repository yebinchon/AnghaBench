; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/FCEU/FCEU/~attic/sexyal/extr_smallc.c_sal_uinttos.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/FCEU/FCEU/~attic/sexyal/extr_smallc.c_sal_uinttos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sal_uinttos.buf = internal global [64 x i8] zeroinitializer, align 16
@sal_uinttos.buf2 = internal global [64 x i8] zeroinitializer, align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @sal_uinttos(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %4, align 4
  store i8* getelementptr inbounds ([64 x i8], [64 x i8]* @sal_uinttos.buf, i64 0, i64 0), i8** %3, align 8
  br label %5

5:                                                ; preds = %8, %1
  %6 = load i32, i32* %2, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %20

8:                                                ; preds = %5
  %9 = load i32, i32* %2, align 4
  %10 = srem i32 %9, 10
  %11 = add nsw i32 48, %10
  %12 = trunc i32 %11 to i8
  %13 = load i8*, i8** %3, align 8
  store i8 %12, i8* %13, align 1
  %14 = load i32, i32* %4, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %4, align 4
  %16 = load i8*, i8** %3, align 8
  %17 = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %17, i8** %3, align 8
  %18 = load i32, i32* %2, align 4
  %19 = sdiv i32 %18, 10
  store i32 %19, i32* %2, align 4
  br label %5

20:                                               ; preds = %5
  store i8* getelementptr inbounds ([64 x i8], [64 x i8]* @sal_uinttos.buf2, i64 0, i64 0), i8** %3, align 8
  br label %21

21:                                               ; preds = %25, %20
  %22 = load i32, i32* %4, align 4
  %23 = add nsw i32 %22, -1
  store i32 %23, i32* %4, align 4
  %24 = icmp sge i32 %22, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %21
  %26 = load i32, i32* %4, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [64 x i8], [64 x i8]* @sal_uinttos.buf, i64 0, i64 %27
  %29 = load i8, i8* %28, align 1
  %30 = load i8*, i8** %3, align 8
  store i8 %29, i8* %30, align 1
  %31 = load i8*, i8** %3, align 8
  %32 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %32, i8** %3, align 8
  br label %21

33:                                               ; preds = %21
  %34 = load i8*, i8** %3, align 8
  store i8 0, i8* %34, align 1
  ret i8* getelementptr inbounds ([64 x i8], [64 x i8]* @sal_uinttos.buf2, i64 0, i64 0)
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
