; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_sbgdec.c_lex_wsword.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_sbgdec.c_lex_wsword.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbg_parser = type { i8*, i8* }
%struct.sbg_string = type { i8*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sbg_parser*, %struct.sbg_string*)* @lex_wsword to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lex_wsword(%struct.sbg_parser* %0, %struct.sbg_string* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sbg_parser*, align 8
  %5 = alloca %struct.sbg_string*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store %struct.sbg_parser* %0, %struct.sbg_parser** %4, align 8
  store %struct.sbg_string* %1, %struct.sbg_string** %5, align 8
  %8 = load %struct.sbg_parser*, %struct.sbg_parser** %4, align 8
  %9 = getelementptr inbounds %struct.sbg_parser, %struct.sbg_parser* %8, i32 0, i32 0
  %10 = load i8*, i8** %9, align 8
  store i8* %10, i8** %6, align 8
  %11 = load i8*, i8** %6, align 8
  store i8* %11, i8** %7, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = load %struct.sbg_parser*, %struct.sbg_parser** %4, align 8
  %14 = getelementptr inbounds %struct.sbg_parser, %struct.sbg_parser* %13, i32 0, i32 1
  %15 = load i8*, i8** %14, align 8
  %16 = icmp eq i8* %12, %15
  br i1 %16, label %22, label %17

17:                                               ; preds = %2
  %18 = load i8*, i8** %6, align 8
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp eq i32 %20, 10
  br i1 %21, label %22, label %23

22:                                               ; preds = %17, %2
  store i32 0, i32* %3, align 4
  br label %57

23:                                               ; preds = %17
  br label %24

24:                                               ; preds = %43, %23
  %25 = load i8*, i8** %7, align 8
  %26 = load %struct.sbg_parser*, %struct.sbg_parser** %4, align 8
  %27 = getelementptr inbounds %struct.sbg_parser, %struct.sbg_parser* %26, i32 0, i32 1
  %28 = load i8*, i8** %27, align 8
  %29 = icmp ult i8* %25, %28
  br i1 %29, label %30, label %41

30:                                               ; preds = %24
  %31 = load i8*, i8** %7, align 8
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp ne i32 %33, 10
  br i1 %34, label %35, label %41

35:                                               ; preds = %30
  %36 = load i8*, i8** %7, align 8
  %37 = load i8, i8* %36, align 1
  %38 = call i32 @is_space(i8 signext %37)
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  br label %41

41:                                               ; preds = %35, %30, %24
  %42 = phi i1 [ false, %30 ], [ false, %24 ], [ %40, %35 ]
  br i1 %42, label %43, label %46

43:                                               ; preds = %41
  %44 = load i8*, i8** %7, align 8
  %45 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %45, i8** %7, align 8
  br label %24

46:                                               ; preds = %41
  %47 = load i8*, i8** %6, align 8
  %48 = load %struct.sbg_string*, %struct.sbg_string** %5, align 8
  %49 = getelementptr inbounds %struct.sbg_string, %struct.sbg_string* %48, i32 0, i32 0
  store i8* %47, i8** %49, align 8
  %50 = load i8*, i8** %7, align 8
  %51 = load %struct.sbg_parser*, %struct.sbg_parser** %4, align 8
  %52 = getelementptr inbounds %struct.sbg_parser, %struct.sbg_parser* %51, i32 0, i32 0
  store i8* %50, i8** %52, align 8
  %53 = load %struct.sbg_string*, %struct.sbg_string** %5, align 8
  %54 = getelementptr inbounds %struct.sbg_string, %struct.sbg_string* %53, i32 0, i32 1
  store i8* %50, i8** %54, align 8
  %55 = load %struct.sbg_parser*, %struct.sbg_parser** %4, align 8
  %56 = call i32 @lex_space(%struct.sbg_parser* %55)
  store i32 1, i32* %3, align 4
  br label %57

57:                                               ; preds = %46, %22
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32 @is_space(i8 signext) #1

declare dso_local i32 @lex_space(%struct.sbg_parser*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
