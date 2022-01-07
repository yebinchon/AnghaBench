; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/lcc/src/extr_trace.c_appendstr.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/lcc/src/extr_trace.c_appendstr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@fp = common dso_local global i8* null, align 8
@fmtend = common dso_local global i8* null, align 8
@fmt = common dso_local global i8* null, align 8
@FUNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @appendstr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @appendstr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  br label %4

4:                                                ; preds = %53, %1
  %5 = load i8*, i8** @fp, align 8
  %6 = load i8*, i8** @fmtend, align 8
  %7 = icmp eq i8* %5, %6
  br i1 %7, label %8, label %52

8:                                                ; preds = %4
  %9 = load i8*, i8** @fp, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %46

11:                                               ; preds = %8
  %12 = load i8*, i8** @fmtend, align 8
  %13 = load i8*, i8** @fmt, align 8
  %14 = ptrtoint i8* %12 to i64
  %15 = ptrtoint i8* %13 to i64
  %16 = sub i64 %14, %15
  %17 = mul nsw i64 2, %16
  %18 = trunc i64 %17 to i32
  %19 = load i32, i32* @FUNC, align 4
  %20 = call i8* @allocate(i32 %18, i32 %19)
  store i8* %20, i8** %3, align 8
  %21 = load i8*, i8** %3, align 8
  %22 = load i8*, i8** @fmt, align 8
  %23 = load i8*, i8** @fmtend, align 8
  %24 = load i8*, i8** @fmt, align 8
  %25 = ptrtoint i8* %23 to i64
  %26 = ptrtoint i8* %24 to i64
  %27 = sub i64 %25, %26
  %28 = trunc i64 %27 to i32
  %29 = call i32 @strncpy(i8* %21, i8* %22, i32 %28)
  %30 = load i8*, i8** %3, align 8
  %31 = load i8*, i8** @fmtend, align 8
  %32 = load i8*, i8** @fmt, align 8
  %33 = ptrtoint i8* %31 to i64
  %34 = ptrtoint i8* %32 to i64
  %35 = sub i64 %33, %34
  %36 = getelementptr inbounds i8, i8* %30, i64 %35
  store i8* %36, i8** @fp, align 8
  %37 = load i8*, i8** %3, align 8
  %38 = load i8*, i8** @fmtend, align 8
  %39 = load i8*, i8** @fmt, align 8
  %40 = ptrtoint i8* %38 to i64
  %41 = ptrtoint i8* %39 to i64
  %42 = sub i64 %40, %41
  %43 = mul nsw i64 2, %42
  %44 = getelementptr inbounds i8, i8* %37, i64 %43
  store i8* %44, i8** @fmtend, align 8
  %45 = load i8*, i8** %3, align 8
  store i8* %45, i8** @fmt, align 8
  br label %51

46:                                               ; preds = %8
  %47 = load i32, i32* @FUNC, align 4
  %48 = call i8* @allocate(i32 80, i32 %47)
  store i8* %48, i8** @fmt, align 8
  store i8* %48, i8** @fp, align 8
  %49 = load i8*, i8** @fmt, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 80
  store i8* %50, i8** @fmtend, align 8
  br label %51

51:                                               ; preds = %46, %11
  br label %52

52:                                               ; preds = %51, %4
  br label %53

53:                                               ; preds = %52
  %54 = load i8*, i8** %2, align 8
  %55 = getelementptr inbounds i8, i8* %54, i32 1
  store i8* %55, i8** %2, align 8
  %56 = load i8, i8* %54, align 1
  %57 = load i8*, i8** @fp, align 8
  %58 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %58, i8** @fp, align 8
  store i8 %56, i8* %57, align 1
  %59 = sext i8 %56 to i32
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %4, label %61

61:                                               ; preds = %53
  %62 = load i8*, i8** @fp, align 8
  %63 = getelementptr inbounds i8, i8* %62, i32 -1
  store i8* %63, i8** @fp, align 8
  ret void
}

declare dso_local i8* @allocate(i32, i32) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
