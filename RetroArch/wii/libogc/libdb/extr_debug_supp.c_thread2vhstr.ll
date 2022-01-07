; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libdb/extr_debug_supp.c_thread2vhstr.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libdb/extr_debug_supp.c_thread2vhstr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@hexchars = common dso_local global i8** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @thread2vhstr(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 28, i32* %8, align 4
  br label %9

9:                                                ; preds = %21, %2
  %10 = load i32, i32* %6, align 4
  %11 = icmp slt i32 %10, 8
  br i1 %11, label %12, label %26

12:                                               ; preds = %9
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* %8, align 4
  %15 = ashr i32 %13, %14
  %16 = and i32 %15, 15
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %12
  br label %26

20:                                               ; preds = %12
  br label %21

21:                                               ; preds = %20
  %22 = load i32, i32* %6, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %8, align 4
  %25 = sub nsw i32 %24, 4
  store i32 %25, i32* %8, align 4
  br label %9

26:                                               ; preds = %19, %9
  %27 = load i32, i32* %6, align 4
  %28 = icmp eq i32 %27, 8
  br i1 %28, label %29, label %33

29:                                               ; preds = %26
  %30 = load i8*, i8** %4, align 8
  %31 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %31, i8** %4, align 8
  store i8 48, i8* %30, align 1
  %32 = load i8*, i8** %4, align 8
  store i8* %32, i8** %3, align 8
  br label %70

33:                                               ; preds = %26
  %34 = load i8**, i8*** @hexchars, align 8
  %35 = load i32, i32* %7, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8*, i8** %34, i64 %36
  %38 = load i8*, i8** %37, align 8
  %39 = ptrtoint i8* %38 to i8
  %40 = load i8*, i8** %4, align 8
  %41 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %41, i8** %4, align 8
  store i8 %39, i8* %40, align 1
  %42 = load i32, i32* %6, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %8, align 4
  %45 = sub nsw i32 %44, 4
  store i32 %45, i32* %8, align 4
  br label %46

46:                                               ; preds = %61, %33
  %47 = load i32, i32* %6, align 4
  %48 = icmp slt i32 %47, 8
  br i1 %48, label %49, label %68

49:                                               ; preds = %46
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* %8, align 4
  %52 = ashr i32 %50, %51
  %53 = and i32 %52, 15
  store i32 %53, i32* %7, align 4
  %54 = load i8**, i8*** @hexchars, align 8
  %55 = load i32, i32* %7, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8*, i8** %54, i64 %56
  %58 = load i8*, i8** %57, align 8
  %59 = ptrtoint i8* %58 to i8
  %60 = load i8*, i8** %4, align 8
  store i8 %59, i8* %60, align 1
  br label %61

61:                                               ; preds = %49
  %62 = load i32, i32* %6, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %6, align 4
  %64 = load i32, i32* %8, align 4
  %65 = sub nsw i32 %64, 4
  store i32 %65, i32* %8, align 4
  %66 = load i8*, i8** %4, align 8
  %67 = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %67, i8** %4, align 8
  br label %46

68:                                               ; preds = %46
  %69 = load i8*, i8** %4, align 8
  store i8* %69, i8** %3, align 8
  br label %70

70:                                               ; preds = %68, %29
  %71 = load i8*, i8** %3, align 8
  ret i8* %71
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
