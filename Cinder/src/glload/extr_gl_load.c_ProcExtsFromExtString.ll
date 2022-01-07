; ModuleID = '/home/carl/AnghaBench/Cinder/src/glload/extr_gl_load.c_ProcExtsFromExtString.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/glload/extr_gl_load.c_ProcExtsFromExtString.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @ProcExtsFromExtString to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ProcExtsFromExtString(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca [256 x i8], align 16
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %10 = load i8*, i8** %2, align 8
  %11 = call i64 @strlen(i8* %10)
  store i64 %11, i64* %3, align 8
  %12 = load i8*, i8** %2, align 8
  %13 = load i64, i64* %3, align 8
  %14 = getelementptr inbounds i8, i8* %12, i64 %13
  store i8* %14, i8** %4, align 8
  %15 = load i8*, i8** %2, align 8
  store i8* %15, i8** %5, align 8
  br label %16

16:                                               ; preds = %52, %1
  %17 = load i8*, i8** %5, align 8
  %18 = load i8, i8* %17, align 1
  %19 = icmp ne i8 %18, 0
  br i1 %19, label %20, label %53

20:                                               ; preds = %16
  store i32 0, i32* %7, align 4
  %21 = load i8*, i8** %5, align 8
  %22 = call i8* @strchr(i8* %21, i8 signext 32)
  store i8* %22, i8** %8, align 8
  store i32 0, i32* %9, align 4
  %23 = load i8*, i8** %8, align 8
  %24 = icmp eq i8* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = load i8*, i8** %4, align 8
  store i8* %26, i8** %8, align 8
  store i32 1, i32* %9, align 4
  br label %27

27:                                               ; preds = %25, %20
  %28 = load i8*, i8** %8, align 8
  %29 = ptrtoint i8* %28 to i64
  %30 = load i8*, i8** %5, align 8
  %31 = ptrtoint i8* %30 to i64
  %32 = sub nsw i64 %29, %31
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp sgt i32 %34, 255
  br i1 %35, label %36, label %37

36:                                               ; preds = %27
  br label %53

37:                                               ; preds = %27
  %38 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %39 = load i8*, i8** %5, align 8
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @strncpy(i8* %38, i8* %39, i32 %40)
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 %43
  store i8 0, i8* %44, align 1
  %45 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %46 = call i32 @LoadExtByName(i8* %45)
  %47 = load i8*, i8** %8, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 1
  store i8* %48, i8** %5, align 8
  %49 = load i32, i32* %9, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %37
  br label %53

52:                                               ; preds = %37
  br label %16

53:                                               ; preds = %36, %51, %16
  ret void
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i32 @LoadExtByName(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
