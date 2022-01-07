; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/x86_64/extr_loose_ends.c_ovbcopy.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/x86_64/extr_loose_ends.c_ovbcopy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ovbcopy(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i8*, i8** %4, align 8
  %8 = load i32, i32* %6, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds i8, i8* %7, i64 %9
  %11 = load i8*, i8** %5, align 8
  %12 = icmp ule i8* %10, %11
  br i1 %12, label %24, label %13

13:                                               ; preds = %3
  %14 = load i8*, i8** %5, align 8
  %15 = load i32, i32* %6, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i8, i8* %14, i64 %16
  %18 = load i8*, i8** %4, align 8
  %19 = icmp ule i8* %17, %18
  br i1 %19, label %24, label %20

20:                                               ; preds = %13
  %21 = load i8*, i8** %5, align 8
  %22 = load i8*, i8** %4, align 8
  %23 = icmp eq i8* %21, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %20, %13, %3
  %25 = load i8*, i8** %4, align 8
  %26 = load i8*, i8** %5, align 8
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @bcopy_no_overwrite(i8* %25, i8* %26, i32 %27)
  br label %61

29:                                               ; preds = %20
  %30 = load i8*, i8** %4, align 8
  %31 = load i8*, i8** %5, align 8
  %32 = icmp ugt i8* %30, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %29
  %34 = load i8*, i8** %4, align 8
  %35 = load i8*, i8** %5, align 8
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @bcopy_no_overwrite(i8* %34, i8* %35, i32 %36)
  br label %60

38:                                               ; preds = %29
  %39 = load i32, i32* %6, align 4
  %40 = sub nsw i32 %39, 1
  %41 = load i8*, i8** %4, align 8
  %42 = sext i32 %40 to i64
  %43 = getelementptr inbounds i8, i8* %41, i64 %42
  store i8* %43, i8** %4, align 8
  %44 = load i32, i32* %6, align 4
  %45 = sub nsw i32 %44, 1
  %46 = load i8*, i8** %5, align 8
  %47 = sext i32 %45 to i64
  %48 = getelementptr inbounds i8, i8* %46, i64 %47
  store i8* %48, i8** %5, align 8
  br label %49

49:                                               ; preds = %53, %38
  %50 = load i32, i32* %6, align 4
  %51 = add nsw i32 %50, -1
  store i32 %51, i32* %6, align 4
  %52 = icmp sgt i32 %50, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %49
  %54 = load i8*, i8** %4, align 8
  %55 = getelementptr inbounds i8, i8* %54, i32 -1
  store i8* %55, i8** %4, align 8
  %56 = load i8, i8* %54, align 1
  %57 = load i8*, i8** %5, align 8
  %58 = getelementptr inbounds i8, i8* %57, i32 -1
  store i8* %58, i8** %5, align 8
  store i8 %56, i8* %57, align 1
  br label %49

59:                                               ; preds = %49
  br label %60

60:                                               ; preds = %59, %33
  br label %61

61:                                               ; preds = %60, %24
  ret void
}

declare dso_local i32 @bcopy_no_overwrite(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
