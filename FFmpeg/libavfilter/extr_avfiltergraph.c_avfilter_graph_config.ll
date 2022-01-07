; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_avfiltergraph.c_avfilter_graph_config.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_avfiltergraph.c_avfilter_graph_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @avfilter_graph_config(i32* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = call i32 @graph_check_validity(i32* %7, i8* %8)
  store i32 %9, i32* %6, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* %6, align 4
  store i32 %12, i32* %3, align 4
  br label %49

13:                                               ; preds = %2
  %14 = load i32*, i32** %4, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = call i32 @graph_insert_fifos(i32* %14, i8* %15)
  store i32 %16, i32* %6, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %13
  %19 = load i32, i32* %6, align 4
  store i32 %19, i32* %3, align 4
  br label %49

20:                                               ; preds = %13
  %21 = load i32*, i32** %4, align 8
  %22 = load i8*, i8** %5, align 8
  %23 = call i32 @graph_config_formats(i32* %21, i8* %22)
  store i32 %23, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = load i32, i32* %6, align 4
  store i32 %26, i32* %3, align 4
  br label %49

27:                                               ; preds = %20
  %28 = load i32*, i32** %4, align 8
  %29 = load i8*, i8** %5, align 8
  %30 = call i32 @graph_config_links(i32* %28, i8* %29)
  store i32 %30, i32* %6, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = load i32, i32* %6, align 4
  store i32 %33, i32* %3, align 4
  br label %49

34:                                               ; preds = %27
  %35 = load i32*, i32** %4, align 8
  %36 = load i8*, i8** %5, align 8
  %37 = call i32 @graph_check_links(i32* %35, i8* %36)
  store i32 %37, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = load i32, i32* %6, align 4
  store i32 %40, i32* %3, align 4
  br label %49

41:                                               ; preds = %34
  %42 = load i32*, i32** %4, align 8
  %43 = load i8*, i8** %5, align 8
  %44 = call i32 @graph_config_pointers(i32* %42, i8* %43)
  store i32 %44, i32* %6, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %41
  %47 = load i32, i32* %6, align 4
  store i32 %47, i32* %3, align 4
  br label %49

48:                                               ; preds = %41
  store i32 0, i32* %3, align 4
  br label %49

49:                                               ; preds = %48, %46, %39, %32, %25, %18, %11
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @graph_check_validity(i32*, i8*) #1

declare dso_local i32 @graph_insert_fifos(i32*, i8*) #1

declare dso_local i32 @graph_config_formats(i32*, i8*) #1

declare dso_local i32 @graph_config_links(i32*, i8*) #1

declare dso_local i32 @graph_check_links(i32*, i8*) #1

declare dso_local i32 @graph_config_pointers(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
