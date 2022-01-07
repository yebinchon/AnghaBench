; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_sbgdec.c_lex_double.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_sbgdec.c_lex_double.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbg_parser = type { i8*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sbg_parser*, double*)* @lex_double to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lex_double(%struct.sbg_parser* %0, double* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sbg_parser*, align 8
  %5 = alloca double*, align 8
  %6 = alloca double, align 8
  %7 = alloca i8*, align 8
  store %struct.sbg_parser* %0, %struct.sbg_parser** %4, align 8
  store double* %1, double** %5, align 8
  %8 = load %struct.sbg_parser*, %struct.sbg_parser** %4, align 8
  %9 = getelementptr inbounds %struct.sbg_parser, %struct.sbg_parser* %8, i32 0, i32 0
  %10 = load i8*, i8** %9, align 8
  %11 = load %struct.sbg_parser*, %struct.sbg_parser** %4, align 8
  %12 = getelementptr inbounds %struct.sbg_parser, %struct.sbg_parser* %11, i32 0, i32 1
  %13 = load i8*, i8** %12, align 8
  %14 = icmp eq i8* %10, %13
  br i1 %14, label %29, label %15

15:                                               ; preds = %2
  %16 = load %struct.sbg_parser*, %struct.sbg_parser** %4, align 8
  %17 = getelementptr inbounds %struct.sbg_parser, %struct.sbg_parser* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = load i8, i8* %18, align 1
  %20 = call i64 @is_space(i8 signext %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %29, label %22

22:                                               ; preds = %15
  %23 = load %struct.sbg_parser*, %struct.sbg_parser** %4, align 8
  %24 = getelementptr inbounds %struct.sbg_parser, %struct.sbg_parser* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 10
  br i1 %28, label %29, label %30

29:                                               ; preds = %22, %15, %2
  store i32 0, i32* %3, align 4
  br label %47

30:                                               ; preds = %22
  %31 = load %struct.sbg_parser*, %struct.sbg_parser** %4, align 8
  %32 = getelementptr inbounds %struct.sbg_parser, %struct.sbg_parser* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = call double @strtod(i8* %33, i8** %7)
  store double %34, double* %6, align 8
  %35 = load i8*, i8** %7, align 8
  %36 = load %struct.sbg_parser*, %struct.sbg_parser** %4, align 8
  %37 = getelementptr inbounds %struct.sbg_parser, %struct.sbg_parser* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = icmp ugt i8* %35, %38
  br i1 %39, label %40, label %46

40:                                               ; preds = %30
  %41 = load double, double* %6, align 8
  %42 = load double*, double** %5, align 8
  store double %41, double* %42, align 8
  %43 = load i8*, i8** %7, align 8
  %44 = load %struct.sbg_parser*, %struct.sbg_parser** %4, align 8
  %45 = getelementptr inbounds %struct.sbg_parser, %struct.sbg_parser* %44, i32 0, i32 0
  store i8* %43, i8** %45, align 8
  store i32 1, i32* %3, align 4
  br label %47

46:                                               ; preds = %30
  store i32 0, i32* %3, align 4
  br label %47

47:                                               ; preds = %46, %40, %29
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i64 @is_space(i8 signext) #1

declare dso_local double @strtod(i8*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
