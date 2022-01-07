; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_dashdec.c_get_Fragment.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_dashdec.c_get_Fragment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fragment = type { i32, i8* }

@.str = private unnamed_addr constant [2 x i8] c"-\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.fragment* (i8*)* @get_Fragment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.fragment* @get_Fragment(i8* %0) #0 {
  %2 = alloca %struct.fragment*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.fragment*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %7 = call %struct.fragment* @av_mallocz(i32 16)
  store %struct.fragment* %7, %struct.fragment** %4, align 8
  %8 = load %struct.fragment*, %struct.fragment** %4, align 8
  %9 = icmp ne %struct.fragment* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store %struct.fragment* null, %struct.fragment** %2, align 8
  br label %36

11:                                               ; preds = %1
  %12 = load %struct.fragment*, %struct.fragment** %4, align 8
  %13 = getelementptr inbounds %struct.fragment, %struct.fragment* %12, i32 0, i32 0
  store i32 -1, i32* %13, align 8
  %14 = load i8*, i8** %3, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %34

16:                                               ; preds = %11
  %17 = load i8*, i8** %3, align 8
  %18 = call i8* @av_strtok(i8* %17, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %5)
  store i8* %18, i8** %6, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = call i8* @strtoll(i8* %19, i32* null, i32 10)
  %21 = load %struct.fragment*, %struct.fragment** %4, align 8
  %22 = getelementptr inbounds %struct.fragment, %struct.fragment* %21, i32 0, i32 1
  store i8* %20, i8** %22, align 8
  %23 = load i8*, i8** %5, align 8
  %24 = call i8* @strtoll(i8* %23, i32* null, i32 10)
  %25 = load %struct.fragment*, %struct.fragment** %4, align 8
  %26 = getelementptr inbounds %struct.fragment, %struct.fragment* %25, i32 0, i32 1
  %27 = load i8*, i8** %26, align 8
  %28 = ptrtoint i8* %24 to i64
  %29 = ptrtoint i8* %27 to i64
  %30 = sub i64 %28, %29
  %31 = trunc i64 %30 to i32
  %32 = load %struct.fragment*, %struct.fragment** %4, align 8
  %33 = getelementptr inbounds %struct.fragment, %struct.fragment* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  br label %34

34:                                               ; preds = %16, %11
  %35 = load %struct.fragment*, %struct.fragment** %4, align 8
  store %struct.fragment* %35, %struct.fragment** %2, align 8
  br label %36

36:                                               ; preds = %34, %10
  %37 = load %struct.fragment*, %struct.fragment** %2, align 8
  ret %struct.fragment* %37
}

declare dso_local %struct.fragment* @av_mallocz(i32) #1

declare dso_local i8* @av_strtok(i8*, i8*, i8**) #1

declare dso_local i8* @strtoll(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
