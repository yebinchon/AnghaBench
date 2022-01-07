; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_qdm2.c_process_synthesis_subpackets.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_qdm2.c_process_synthesis_subpackets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @process_synthesis_subpackets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_synthesis_subpackets(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca [4 x i32*], align 16
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load i32*, i32** %4, align 8
  %7 = call i32* @qdm2_search_subpacket_type_in_list(i32* %6, i32 9)
  %8 = getelementptr inbounds [4 x i32*], [4 x i32*]* %5, i64 0, i64 0
  store i32* %7, i32** %8, align 16
  %9 = getelementptr inbounds [4 x i32*], [4 x i32*]* %5, i64 0, i64 0
  %10 = load i32*, i32** %9, align 16
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %2
  %13 = load i32*, i32** %3, align 8
  %14 = getelementptr inbounds [4 x i32*], [4 x i32*]* %5, i64 0, i64 0
  %15 = load i32*, i32** %14, align 16
  %16 = call i32 @process_subpacket_9(i32* %13, i32* %15)
  br label %17

17:                                               ; preds = %12, %2
  %18 = load i32*, i32** %4, align 8
  %19 = call i32* @qdm2_search_subpacket_type_in_list(i32* %18, i32 10)
  %20 = getelementptr inbounds [4 x i32*], [4 x i32*]* %5, i64 0, i64 1
  store i32* %19, i32** %20, align 8
  %21 = getelementptr inbounds [4 x i32*], [4 x i32*]* %5, i64 0, i64 1
  %22 = load i32*, i32** %21, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %29

24:                                               ; preds = %17
  %25 = load i32*, i32** %3, align 8
  %26 = getelementptr inbounds [4 x i32*], [4 x i32*]* %5, i64 0, i64 1
  %27 = load i32*, i32** %26, align 8
  %28 = call i32 @process_subpacket_10(i32* %25, i32* %27)
  br label %32

29:                                               ; preds = %17
  %30 = load i32*, i32** %3, align 8
  %31 = call i32 @process_subpacket_10(i32* %30, i32* null)
  br label %32

32:                                               ; preds = %29, %24
  %33 = load i32*, i32** %4, align 8
  %34 = call i32* @qdm2_search_subpacket_type_in_list(i32* %33, i32 11)
  %35 = getelementptr inbounds [4 x i32*], [4 x i32*]* %5, i64 0, i64 2
  store i32* %34, i32** %35, align 16
  %36 = getelementptr inbounds [4 x i32*], [4 x i32*]* %5, i64 0, i64 0
  %37 = load i32*, i32** %36, align 16
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %52

39:                                               ; preds = %32
  %40 = getelementptr inbounds [4 x i32*], [4 x i32*]* %5, i64 0, i64 1
  %41 = load i32*, i32** %40, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %43, label %52

43:                                               ; preds = %39
  %44 = getelementptr inbounds [4 x i32*], [4 x i32*]* %5, i64 0, i64 2
  %45 = load i32*, i32** %44, align 16
  %46 = icmp ne i32* %45, null
  br i1 %46, label %47, label %52

47:                                               ; preds = %43
  %48 = load i32*, i32** %3, align 8
  %49 = getelementptr inbounds [4 x i32*], [4 x i32*]* %5, i64 0, i64 2
  %50 = load i32*, i32** %49, align 16
  %51 = call i32 @process_subpacket_11(i32* %48, i32* %50)
  br label %55

52:                                               ; preds = %43, %39, %32
  %53 = load i32*, i32** %3, align 8
  %54 = call i32 @process_subpacket_11(i32* %53, i32* null)
  br label %55

55:                                               ; preds = %52, %47
  %56 = load i32*, i32** %4, align 8
  %57 = call i32* @qdm2_search_subpacket_type_in_list(i32* %56, i32 12)
  %58 = getelementptr inbounds [4 x i32*], [4 x i32*]* %5, i64 0, i64 3
  store i32* %57, i32** %58, align 8
  %59 = getelementptr inbounds [4 x i32*], [4 x i32*]* %5, i64 0, i64 0
  %60 = load i32*, i32** %59, align 16
  %61 = icmp ne i32* %60, null
  br i1 %61, label %62, label %75

62:                                               ; preds = %55
  %63 = getelementptr inbounds [4 x i32*], [4 x i32*]* %5, i64 0, i64 1
  %64 = load i32*, i32** %63, align 8
  %65 = icmp ne i32* %64, null
  br i1 %65, label %66, label %75

66:                                               ; preds = %62
  %67 = getelementptr inbounds [4 x i32*], [4 x i32*]* %5, i64 0, i64 3
  %68 = load i32*, i32** %67, align 8
  %69 = icmp ne i32* %68, null
  br i1 %69, label %70, label %75

70:                                               ; preds = %66
  %71 = load i32*, i32** %3, align 8
  %72 = getelementptr inbounds [4 x i32*], [4 x i32*]* %5, i64 0, i64 3
  %73 = load i32*, i32** %72, align 8
  %74 = call i32 @process_subpacket_12(i32* %71, i32* %73)
  br label %78

75:                                               ; preds = %66, %62, %55
  %76 = load i32*, i32** %3, align 8
  %77 = call i32 @process_subpacket_12(i32* %76, i32* null)
  br label %78

78:                                               ; preds = %75, %70
  ret void
}

declare dso_local i32* @qdm2_search_subpacket_type_in_list(i32*, i32) #1

declare dso_local i32 @process_subpacket_9(i32*, i32*) #1

declare dso_local i32 @process_subpacket_10(i32*, i32*) #1

declare dso_local i32 @process_subpacket_11(i32*, i32*) #1

declare dso_local i32 @process_subpacket_12(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
