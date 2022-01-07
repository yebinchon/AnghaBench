; ModuleID = '/home/carl/AnghaBench/darwin-xnu/tools/tests/personas/extr_persona_test.h_parse_groupspec.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/tools/tests/personas/extr_persona_test.h_parse_groupspec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kpersona_info = type { i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kpersona_info*, i8*)* @parse_groupspec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_groupspec(%struct.kpersona_info* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kpersona_info*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.kpersona_info* %0, %struct.kpersona_info** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %6, align 4
  %11 = load i8*, i8** %5, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %72

14:                                               ; preds = %2
  %15 = load i8*, i8** %5, align 8
  store i8* %15, i8** %9, align 8
  store i8* %15, i8** %8, align 8
  br label %16

16:                                               ; preds = %58, %14
  %17 = load i8*, i8** %8, align 8
  %18 = load i8, i8* %17, align 1
  %19 = icmp ne i8 %18, 0
  br i1 %19, label %20, label %68

20:                                               ; preds = %16
  store i32 0, i32* %10, align 4
  %21 = load i8*, i8** %8, align 8
  store i8* %21, i8** %9, align 8
  br label %22

22:                                               ; preds = %34, %20
  %23 = load i8*, i8** %9, align 8
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %22
  %28 = load i8*, i8** %9, align 8
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp ne i32 %30, 44
  br label %32

32:                                               ; preds = %27, %22
  %33 = phi i1 [ false, %22 ], [ %31, %27 ]
  br i1 %33, label %34, label %37

34:                                               ; preds = %32
  %35 = load i8*, i8** %9, align 8
  %36 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %36, i8** %9, align 8
  br label %22

37:                                               ; preds = %32
  %38 = load i8*, i8** %9, align 8
  %39 = load i8, i8* %38, align 1
  %40 = icmp ne i8 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  store i32 1, i32* %10, align 4
  br label %42

42:                                               ; preds = %41, %37
  %43 = load i8*, i8** %9, align 8
  store i8 0, i8* %43, align 1
  %44 = load i8*, i8** %8, align 8
  %45 = call i32 @atoi(i8* %44)
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %10, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %42
  %49 = load i8*, i8** %9, align 8
  store i8 44, i8* %49, align 1
  %50 = load i8*, i8** %9, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 1
  store i8* %51, i8** %8, align 8
  br label %54

52:                                               ; preds = %42
  %53 = load i8*, i8** %9, align 8
  store i8* %53, i8** %8, align 8
  br label %54

54:                                               ; preds = %52, %48
  %55 = load i32, i32* %7, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %54
  store i32 -1, i32* %3, align 4
  br label %72

58:                                               ; preds = %54
  %59 = load i32, i32* %7, align 4
  %60 = load %struct.kpersona_info*, %struct.kpersona_info** %4, align 8
  %61 = getelementptr inbounds %struct.kpersona_info, %struct.kpersona_info* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %6, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  store i32 %59, i32* %65, align 4
  %66 = load i32, i32* %6, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %6, align 4
  br label %16

68:                                               ; preds = %16
  %69 = load i32, i32* %6, align 4
  %70 = load %struct.kpersona_info*, %struct.kpersona_info** %4, align 8
  %71 = getelementptr inbounds %struct.kpersona_info, %struct.kpersona_info* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 8
  store i32 0, i32* %3, align 4
  br label %72

72:                                               ; preds = %68, %57, %13
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i32 @atoi(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
