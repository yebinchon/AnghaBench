; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/core/extr_containers_uri.c_from_hex.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/core/extr_containers_uri.c_from_hex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @from_hex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @from_hex(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %56, %2
  %8 = load i32, i32* %4, align 4
  %9 = add nsw i32 %8, -1
  store i32 %9, i32* %4, align 4
  %10 = icmp ne i32 %8, 0
  br i1 %10, label %11, label %62

11:                                               ; preds = %7
  %12 = load i8*, i8** %3, align 8
  %13 = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %13, i8** %3, align 8
  %14 = load i8, i8* %12, align 1
  store i8 %14, i8* %6, align 1
  %15 = load i8, i8* %6, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp sge i32 %16, 48
  br i1 %17, label %18, label %27

18:                                               ; preds = %11
  %19 = load i8, i8* %6, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp sle i32 %20, 57
  br i1 %21, label %22, label %27

22:                                               ; preds = %18
  %23 = load i8, i8* %6, align 1
  %24 = sext i8 %23 to i32
  %25 = sub nsw i32 %24, 48
  %26 = trunc i32 %25 to i8
  store i8 %26, i8* %6, align 1
  br label %56

27:                                               ; preds = %18, %11
  %28 = load i8, i8* %6, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp sge i32 %29, 65
  br i1 %30, label %31, label %40

31:                                               ; preds = %27
  %32 = load i8, i8* %6, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp sle i32 %33, 70
  br i1 %34, label %35, label %40

35:                                               ; preds = %31
  %36 = load i8, i8* %6, align 1
  %37 = sext i8 %36 to i32
  %38 = sub nsw i32 %37, 55
  %39 = trunc i32 %38 to i8
  store i8 %39, i8* %6, align 1
  br label %55

40:                                               ; preds = %31, %27
  %41 = load i8, i8* %6, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp sge i32 %42, 97
  br i1 %43, label %44, label %53

44:                                               ; preds = %40
  %45 = load i8, i8* %6, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp sle i32 %46, 102
  br i1 %47, label %48, label %53

48:                                               ; preds = %44
  %49 = load i8, i8* %6, align 1
  %50 = sext i8 %49 to i32
  %51 = sub nsw i32 %50, 87
  %52 = trunc i32 %51 to i8
  store i8 %52, i8* %6, align 1
  br label %54

53:                                               ; preds = %44, %40
  store i8 0, i8* %6, align 1
  br label %54

54:                                               ; preds = %53, %48
  br label %55

55:                                               ; preds = %54, %35
  br label %56

56:                                               ; preds = %55, %22
  %57 = load i32, i32* %5, align 4
  %58 = shl i32 %57, 4
  %59 = load i8, i8* %6, align 1
  %60 = sext i8 %59 to i32
  %61 = add nsw i32 %58, %60
  store i32 %61, i32* %5, align 4
  br label %7

62:                                               ; preds = %7
  %63 = load i32, i32* %5, align 4
  ret i32 %63
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
