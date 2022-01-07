; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_sbgdec.c_lex_space.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_sbgdec.c_lex_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbg_parser = type { i8*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sbg_parser*)* @lex_space to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lex_space(%struct.sbg_parser* %0) #0 {
  %2 = alloca %struct.sbg_parser*, align 8
  %3 = alloca i8*, align 8
  store %struct.sbg_parser* %0, %struct.sbg_parser** %2, align 8
  %4 = load %struct.sbg_parser*, %struct.sbg_parser** %2, align 8
  %5 = getelementptr inbounds %struct.sbg_parser, %struct.sbg_parser* %4, i32 0, i32 0
  %6 = load i8*, i8** %5, align 8
  store i8* %6, i8** %3, align 8
  br label %7

7:                                                ; preds = %24, %1
  %8 = load %struct.sbg_parser*, %struct.sbg_parser** %2, align 8
  %9 = getelementptr inbounds %struct.sbg_parser, %struct.sbg_parser* %8, i32 0, i32 0
  %10 = load i8*, i8** %9, align 8
  %11 = load %struct.sbg_parser*, %struct.sbg_parser** %2, align 8
  %12 = getelementptr inbounds %struct.sbg_parser, %struct.sbg_parser* %11, i32 0, i32 1
  %13 = load i8*, i8** %12, align 8
  %14 = icmp ult i8* %10, %13
  br i1 %14, label %15, label %22

15:                                               ; preds = %7
  %16 = load %struct.sbg_parser*, %struct.sbg_parser** %2, align 8
  %17 = getelementptr inbounds %struct.sbg_parser, %struct.sbg_parser* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = load i8, i8* %18, align 1
  %20 = call i64 @is_space(i8 signext %19)
  %21 = icmp ne i64 %20, 0
  br label %22

22:                                               ; preds = %15, %7
  %23 = phi i1 [ false, %7 ], [ %21, %15 ]
  br i1 %23, label %24, label %29

24:                                               ; preds = %22
  %25 = load %struct.sbg_parser*, %struct.sbg_parser** %2, align 8
  %26 = getelementptr inbounds %struct.sbg_parser, %struct.sbg_parser* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %28, i8** %26, align 8
  br label %7

29:                                               ; preds = %22
  %30 = load %struct.sbg_parser*, %struct.sbg_parser** %2, align 8
  %31 = getelementptr inbounds %struct.sbg_parser, %struct.sbg_parser* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = load i8*, i8** %3, align 8
  %34 = icmp ugt i8* %32, %33
  %35 = zext i1 %34 to i32
  ret i32 %35
}

declare dso_local i64 @is_space(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
