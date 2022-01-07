; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_sbgdec.c_lex_line_end.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_sbgdec.c_lex_line_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbg_parser = type { i8*, i8*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sbg_parser*)* @lex_line_end to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lex_line_end(%struct.sbg_parser* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sbg_parser*, align 8
  store %struct.sbg_parser* %0, %struct.sbg_parser** %3, align 8
  %4 = load %struct.sbg_parser*, %struct.sbg_parser** %3, align 8
  %5 = getelementptr inbounds %struct.sbg_parser, %struct.sbg_parser* %4, i32 0, i32 0
  %6 = load i8*, i8** %5, align 8
  %7 = load %struct.sbg_parser*, %struct.sbg_parser** %3, align 8
  %8 = getelementptr inbounds %struct.sbg_parser, %struct.sbg_parser* %7, i32 0, i32 1
  %9 = load i8*, i8** %8, align 8
  %10 = icmp ult i8* %6, %9
  br i1 %10, label %11, label %46

11:                                               ; preds = %1
  %12 = load %struct.sbg_parser*, %struct.sbg_parser** %3, align 8
  %13 = getelementptr inbounds %struct.sbg_parser, %struct.sbg_parser* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp eq i32 %16, 35
  br i1 %17, label %18, label %46

18:                                               ; preds = %11
  %19 = load %struct.sbg_parser*, %struct.sbg_parser** %3, align 8
  %20 = getelementptr inbounds %struct.sbg_parser, %struct.sbg_parser* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %22, i8** %20, align 8
  br label %23

23:                                               ; preds = %40, %18
  %24 = load %struct.sbg_parser*, %struct.sbg_parser** %3, align 8
  %25 = getelementptr inbounds %struct.sbg_parser, %struct.sbg_parser* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = load %struct.sbg_parser*, %struct.sbg_parser** %3, align 8
  %28 = getelementptr inbounds %struct.sbg_parser, %struct.sbg_parser* %27, i32 0, i32 1
  %29 = load i8*, i8** %28, align 8
  %30 = icmp ult i8* %26, %29
  br i1 %30, label %31, label %38

31:                                               ; preds = %23
  %32 = load %struct.sbg_parser*, %struct.sbg_parser** %3, align 8
  %33 = getelementptr inbounds %struct.sbg_parser, %struct.sbg_parser* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp ne i32 %36, 10
  br label %38

38:                                               ; preds = %31, %23
  %39 = phi i1 [ false, %23 ], [ %37, %31 ]
  br i1 %39, label %40, label %45

40:                                               ; preds = %38
  %41 = load %struct.sbg_parser*, %struct.sbg_parser** %3, align 8
  %42 = getelementptr inbounds %struct.sbg_parser, %struct.sbg_parser* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %44, i8** %42, align 8
  br label %23

45:                                               ; preds = %38
  br label %46

46:                                               ; preds = %45, %11, %1
  %47 = load %struct.sbg_parser*, %struct.sbg_parser** %3, align 8
  %48 = getelementptr inbounds %struct.sbg_parser, %struct.sbg_parser* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = load %struct.sbg_parser*, %struct.sbg_parser** %3, align 8
  %51 = getelementptr inbounds %struct.sbg_parser, %struct.sbg_parser* %50, i32 0, i32 1
  %52 = load i8*, i8** %51, align 8
  %53 = icmp eq i8* %49, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %46
  store i32 1, i32* %2, align 4
  br label %74

55:                                               ; preds = %46
  %56 = load %struct.sbg_parser*, %struct.sbg_parser** %3, align 8
  %57 = getelementptr inbounds %struct.sbg_parser, %struct.sbg_parser* %56, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp ne i32 %60, 10
  br i1 %61, label %62, label %63

62:                                               ; preds = %55
  store i32 0, i32* %2, align 4
  br label %74

63:                                               ; preds = %55
  %64 = load %struct.sbg_parser*, %struct.sbg_parser** %3, align 8
  %65 = getelementptr inbounds %struct.sbg_parser, %struct.sbg_parser* %64, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  %67 = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %67, i8** %65, align 8
  %68 = load %struct.sbg_parser*, %struct.sbg_parser** %3, align 8
  %69 = getelementptr inbounds %struct.sbg_parser, %struct.sbg_parser* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %69, align 8
  %72 = load %struct.sbg_parser*, %struct.sbg_parser** %3, align 8
  %73 = call i32 @lex_space(%struct.sbg_parser* %72)
  store i32 1, i32* %2, align 4
  br label %74

74:                                               ; preds = %63, %62, %54
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local i32 @lex_space(%struct.sbg_parser*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
