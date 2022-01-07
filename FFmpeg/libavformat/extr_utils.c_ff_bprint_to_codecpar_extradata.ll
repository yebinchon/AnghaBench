; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_utils.c_ff_bprint_to_codecpar_extradata.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_utils.c_ff_bprint_to_codecpar_extradata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32 }
%struct.AVBPrint = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_bprint_to_codecpar_extradata(%struct.TYPE_3__* %0, %struct.AVBPrint* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca %struct.AVBPrint*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store %struct.AVBPrint* %1, %struct.AVBPrint** %5, align 8
  %8 = load %struct.AVBPrint*, %struct.AVBPrint** %5, align 8
  %9 = call i32 @av_bprint_finalize(%struct.AVBPrint* %8, i8** %7)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* %6, align 4
  store i32 %13, i32* %3, align 4
  br label %32

14:                                               ; preds = %2
  %15 = load %struct.AVBPrint*, %struct.AVBPrint** %5, align 8
  %16 = call i32 @av_bprint_is_complete(%struct.AVBPrint* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %14
  %19 = load i8*, i8** %7, align 8
  %20 = call i32 @av_free(i8* %19)
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = call i32 @AVERROR(i32 %21)
  store i32 %22, i32* %3, align 4
  br label %32

23:                                               ; preds = %14
  %24 = load i8*, i8** %7, align 8
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  store i8* %24, i8** %26, align 8
  %27 = load %struct.AVBPrint*, %struct.AVBPrint** %5, align 8
  %28 = getelementptr inbounds %struct.AVBPrint, %struct.AVBPrint* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 8
  store i32 0, i32* %3, align 4
  br label %32

32:                                               ; preds = %23, %18, %12
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i32 @av_bprint_finalize(%struct.AVBPrint*, i8**) #1

declare dso_local i32 @av_bprint_is_complete(%struct.AVBPrint*) #1

declare dso_local i32 @av_free(i8*) #1

declare dso_local i32 @AVERROR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
