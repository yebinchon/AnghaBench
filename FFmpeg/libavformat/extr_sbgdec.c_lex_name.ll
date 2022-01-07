; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_sbgdec.c_lex_name.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_sbgdec.c_lex_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbg_parser = type { i8*, i8* }
%struct.sbg_string = type { i8*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sbg_parser*, %struct.sbg_string*)* @lex_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lex_name(%struct.sbg_parser* %0, %struct.sbg_string* %1) #0 {
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
  br label %12

12:                                               ; preds = %62, %2
  %13 = load i8*, i8** %7, align 8
  %14 = load %struct.sbg_parser*, %struct.sbg_parser** %4, align 8
  %15 = getelementptr inbounds %struct.sbg_parser, %struct.sbg_parser* %14, i32 0, i32 1
  %16 = load i8*, i8** %15, align 8
  %17 = icmp ult i8* %13, %16
  br i1 %17, label %18, label %60

18:                                               ; preds = %12
  %19 = load i8*, i8** %7, align 8
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp sge i32 %21, 97
  br i1 %22, label %23, label %28

23:                                               ; preds = %18
  %24 = load i8*, i8** %7, align 8
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp sle i32 %26, 122
  br i1 %27, label %58, label %28

28:                                               ; preds = %23, %18
  %29 = load i8*, i8** %7, align 8
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp sge i32 %31, 65
  br i1 %32, label %33, label %38

33:                                               ; preds = %28
  %34 = load i8*, i8** %7, align 8
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp sle i32 %36, 90
  br i1 %37, label %58, label %38

38:                                               ; preds = %33, %28
  %39 = load i8*, i8** %7, align 8
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp sge i32 %41, 48
  br i1 %42, label %43, label %48

43:                                               ; preds = %38
  %44 = load i8*, i8** %7, align 8
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp sle i32 %46, 57
  br i1 %47, label %58, label %48

48:                                               ; preds = %43, %38
  %49 = load i8*, i8** %7, align 8
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp eq i32 %51, 95
  br i1 %52, label %58, label %53

53:                                               ; preds = %48
  %54 = load i8*, i8** %7, align 8
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp eq i32 %56, 45
  br label %58

58:                                               ; preds = %53, %48, %43, %33, %23
  %59 = phi i1 [ true, %48 ], [ true, %43 ], [ true, %33 ], [ true, %23 ], [ %57, %53 ]
  br label %60

60:                                               ; preds = %58, %12
  %61 = phi i1 [ false, %12 ], [ %59, %58 ]
  br i1 %61, label %62, label %65

62:                                               ; preds = %60
  %63 = load i8*, i8** %7, align 8
  %64 = getelementptr inbounds i8, i8* %63, i32 1
  store i8* %64, i8** %7, align 8
  br label %12

65:                                               ; preds = %60
  %66 = load i8*, i8** %7, align 8
  %67 = load i8*, i8** %6, align 8
  %68 = icmp eq i8* %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %65
  store i32 0, i32* %3, align 4
  br label %79

70:                                               ; preds = %65
  %71 = load i8*, i8** %6, align 8
  %72 = load %struct.sbg_string*, %struct.sbg_string** %5, align 8
  %73 = getelementptr inbounds %struct.sbg_string, %struct.sbg_string* %72, i32 0, i32 0
  store i8* %71, i8** %73, align 8
  %74 = load i8*, i8** %7, align 8
  %75 = load %struct.sbg_parser*, %struct.sbg_parser** %4, align 8
  %76 = getelementptr inbounds %struct.sbg_parser, %struct.sbg_parser* %75, i32 0, i32 0
  store i8* %74, i8** %76, align 8
  %77 = load %struct.sbg_string*, %struct.sbg_string** %5, align 8
  %78 = getelementptr inbounds %struct.sbg_string, %struct.sbg_string* %77, i32 0, i32 1
  store i8* %74, i8** %78, align 8
  store i32 1, i32* %3, align 4
  br label %79

79:                                               ; preds = %70, %69
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
