; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/tools/extr_amalgamate.c_strip_cr.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/tools/extr_amalgamate.c_strip_cr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @strip_cr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @strip_cr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = call i32 @strlen(i8* %5)
  store i32 %6, i32* %3, align 4
  %7 = load i8*, i8** %2, align 8
  store i8* %7, i8** %4, align 8
  br label %8

8:                                                ; preds = %12, %1
  %9 = load i8*, i8** %4, align 8
  %10 = call i8* @strchr(i8* %9, i8 signext 13)
  store i8* %10, i8** %4, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %27

12:                                               ; preds = %8
  %13 = load i8*, i8** %4, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 1
  %16 = load i32, i32* %3, align 4
  %17 = sext i32 %16 to i64
  %18 = load i8*, i8** %4, align 8
  %19 = load i8*, i8** %2, align 8
  %20 = ptrtoint i8* %18 to i64
  %21 = ptrtoint i8* %19 to i64
  %22 = sub i64 %20, %21
  %23 = sub nsw i64 %17, %22
  %24 = add nsw i64 %23, 1
  %25 = trunc i64 %24 to i32
  %26 = call i32 @memmove(i8* %13, i8* %15, i32 %25)
  br label %8

27:                                               ; preds = %8
  %28 = load i8*, i8** %2, align 8
  %29 = call i32 @strlen(i8* %28)
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %54

31:                                               ; preds = %27
  %32 = load i8*, i8** %2, align 8
  %33 = load i8*, i8** %2, align 8
  %34 = call i32 @strlen(i8* %33)
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8, i8* %32, i64 %35
  %37 = getelementptr inbounds i8, i8* %36, i64 -1
  store i8* %37, i8** %4, align 8
  br label %38

38:                                               ; preds = %49, %31
  %39 = load i8*, i8** %4, align 8
  %40 = load i8*, i8** %2, align 8
  %41 = icmp uge i8* %39, %40
  br i1 %41, label %42, label %47

42:                                               ; preds = %38
  %43 = load i8*, i8** %4, align 8
  %44 = load i8, i8* %43, align 1
  %45 = call i64 @isspace(i8 signext %44)
  %46 = icmp ne i64 %45, 0
  br label %47

47:                                               ; preds = %42, %38
  %48 = phi i1 [ false, %38 ], [ %46, %42 ]
  br i1 %48, label %49, label %53

49:                                               ; preds = %47
  %50 = load i8*, i8** %4, align 8
  store i8 0, i8* %50, align 1
  %51 = load i8*, i8** %4, align 8
  %52 = getelementptr inbounds i8, i8* %51, i32 -1
  store i8* %52, i8** %4, align 8
  br label %38

53:                                               ; preds = %47
  br label %54

54:                                               ; preds = %53, %27
  %55 = load i8*, i8** %2, align 8
  %56 = call i32 @strcat(i8* %55, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @memmove(i8*, i8*, i32) #1

declare dso_local i64 @isspace(i8 signext) #1

declare dso_local i32 @strcat(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
