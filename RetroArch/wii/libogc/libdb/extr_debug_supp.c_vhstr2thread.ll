; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libdb/extr_debug_supp.c_vhstr2thread.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libdb/extr_debug_supp.c_vhstr2thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @vhstr2thread(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %6, align 4
  br label %11

11:                                               ; preds = %21, %2
  %12 = load i32, i32* %6, align 4
  %13 = icmp slt i32 %12, 16
  br i1 %13, label %14, label %26

14:                                               ; preds = %11
  %15 = load i8*, i8** %4, align 8
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp ne i32 %17, 48
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  br label %26

20:                                               ; preds = %14
  store i32 1, i32* %9, align 4
  br label %21

21:                                               ; preds = %20
  %22 = load i32, i32* %6, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %6, align 4
  %24 = load i8*, i8** %4, align 8
  %25 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %25, i8** %4, align 8
  br label %11

26:                                               ; preds = %19, %11
  store i32 0, i32* %7, align 4
  %27 = load i32, i32* %6, align 4
  %28 = sub nsw i32 16, %27
  store i32 %28, i32* %10, align 4
  store i32 0, i32* %6, align 4
  br label %29

29:                                               ; preds = %53, %26
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* %10, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %58

33:                                               ; preds = %29
  %34 = load i8*, i8** %4, align 8
  %35 = call i64 @hstr2nibble(i8* %34, i32* %8)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %48, label %37

37:                                               ; preds = %33
  %38 = load i32, i32* %6, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %37
  %41 = load i32, i32* %9, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  store i8* null, i8** %3, align 8
  br label %67

44:                                               ; preds = %40, %37
  %45 = load i32, i32* %7, align 4
  %46 = load i32*, i32** %5, align 8
  store i32 %45, i32* %46, align 4
  %47 = load i8*, i8** %4, align 8
  store i8* %47, i8** %3, align 8
  br label %67

48:                                               ; preds = %33
  %49 = load i32, i32* %7, align 4
  %50 = shl i32 %49, 4
  %51 = load i32, i32* %8, align 4
  %52 = or i32 %50, %51
  store i32 %52, i32* %7, align 4
  br label %53

53:                                               ; preds = %48
  %54 = load i32, i32* %6, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %6, align 4
  %56 = load i8*, i8** %4, align 8
  %57 = getelementptr inbounds i8, i8* %56, i32 1
  store i8* %57, i8** %4, align 8
  br label %29

58:                                               ; preds = %29
  %59 = load i8*, i8** %4, align 8
  %60 = call i64 @hstr2nibble(i8* %59, i32* %8)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %58
  store i8* null, i8** %3, align 8
  br label %67

63:                                               ; preds = %58
  %64 = load i32, i32* %7, align 4
  %65 = load i32*, i32** %5, align 8
  store i32 %64, i32* %65, align 4
  %66 = load i8*, i8** %4, align 8
  store i8* %66, i8** %3, align 8
  br label %67

67:                                               ; preds = %63, %62, %44, %43
  %68 = load i8*, i8** %3, align 8
  ret i8* %68
}

declare dso_local i64 @hstr2nibble(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
