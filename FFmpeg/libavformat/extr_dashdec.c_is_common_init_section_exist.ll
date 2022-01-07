; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_dashdec.c_is_common_init_section_exist.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_dashdec.c_is_common_init_section_exist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.representation = type { %struct.fragment* }
%struct.fragment = type { i8*, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.representation**, i32)* @is_common_init_section_exist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_common_init_section_exist(%struct.representation** %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.representation**, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.fragment*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.representation** %0, %struct.representation*** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.representation**, %struct.representation*** %4, align 8
  %12 = getelementptr inbounds %struct.representation*, %struct.representation** %11, i64 0
  %13 = load %struct.representation*, %struct.representation** %12, align 8
  %14 = getelementptr inbounds %struct.representation, %struct.representation* %13, i32 0, i32 0
  %15 = load %struct.fragment*, %struct.fragment** %14, align 8
  store %struct.fragment* %15, %struct.fragment** %6, align 8
  store i8* null, i8** %7, align 8
  store i64 -1, i64* %8, align 8
  store i64 -1, i64* %9, align 8
  store i32 0, i32* %10, align 4
  %16 = load %struct.fragment*, %struct.fragment** %6, align 8
  %17 = icmp eq %struct.fragment* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* %5, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %18, %2
  store i32 0, i32* %3, align 4
  br label %83

22:                                               ; preds = %18
  %23 = load %struct.fragment*, %struct.fragment** %6, align 8
  %24 = getelementptr inbounds %struct.fragment, %struct.fragment* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  store i8* %25, i8** %7, align 8
  %26 = load %struct.fragment*, %struct.fragment** %6, align 8
  %27 = getelementptr inbounds %struct.fragment, %struct.fragment* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %8, align 8
  %29 = load %struct.representation**, %struct.representation*** %4, align 8
  %30 = getelementptr inbounds %struct.representation*, %struct.representation** %29, i64 0
  %31 = load %struct.representation*, %struct.representation** %30, align 8
  %32 = getelementptr inbounds %struct.representation, %struct.representation* %31, i32 0, i32 0
  %33 = load %struct.fragment*, %struct.fragment** %32, align 8
  %34 = getelementptr inbounds %struct.fragment, %struct.fragment* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %9, align 8
  store i32 0, i32* %10, align 4
  br label %36

36:                                               ; preds = %79, %22
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* %5, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %82

40:                                               ; preds = %36
  %41 = load %struct.representation**, %struct.representation*** %4, align 8
  %42 = load i32, i32* %10, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.representation*, %struct.representation** %41, i64 %43
  %45 = load %struct.representation*, %struct.representation** %44, align 8
  %46 = getelementptr inbounds %struct.representation, %struct.representation* %45, i32 0, i32 0
  %47 = load %struct.fragment*, %struct.fragment** %46, align 8
  %48 = getelementptr inbounds %struct.fragment, %struct.fragment* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = load i8*, i8** %7, align 8
  %51 = call i64 @av_strcasecmp(i8* %49, i8* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %77, label %53

53:                                               ; preds = %40
  %54 = load %struct.representation**, %struct.representation*** %4, align 8
  %55 = load i32, i32* %10, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.representation*, %struct.representation** %54, i64 %56
  %58 = load %struct.representation*, %struct.representation** %57, align 8
  %59 = getelementptr inbounds %struct.representation, %struct.representation* %58, i32 0, i32 0
  %60 = load %struct.fragment*, %struct.fragment** %59, align 8
  %61 = getelementptr inbounds %struct.fragment, %struct.fragment* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* %8, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %77, label %65

65:                                               ; preds = %53
  %66 = load %struct.representation**, %struct.representation*** %4, align 8
  %67 = load i32, i32* %10, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.representation*, %struct.representation** %66, i64 %68
  %70 = load %struct.representation*, %struct.representation** %69, align 8
  %71 = getelementptr inbounds %struct.representation, %struct.representation* %70, i32 0, i32 0
  %72 = load %struct.fragment*, %struct.fragment** %71, align 8
  %73 = getelementptr inbounds %struct.fragment, %struct.fragment* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* %9, align 8
  %76 = icmp ne i64 %74, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %65, %53, %40
  store i32 0, i32* %3, align 4
  br label %83

78:                                               ; preds = %65
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %10, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %10, align 4
  br label %36

82:                                               ; preds = %36
  store i32 1, i32* %3, align 4
  br label %83

83:                                               ; preds = %82, %77, %21
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local i64 @av_strcasecmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
