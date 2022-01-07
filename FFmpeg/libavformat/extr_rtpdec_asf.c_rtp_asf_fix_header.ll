; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_rtpdec_asf.c_rtp_asf_fix_header.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_rtpdec_asf.c_rtp_asf_fix_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ff_asf_header = common dso_local global i32 0, align 4
@ff_asf_file_header = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @rtp_asf_fix_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtp_asf_fix_header(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i32*, i32** %4, align 8
  store i32* %10, i32** %6, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = load i32, i32* %5, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i32, i32* %11, i64 %13
  store i32* %14, i32** %7, align 8
  %15 = load i32, i32* %5, align 4
  %16 = sext i32 %15 to i64
  %17 = icmp ult i64 %16, 30
  br i1 %17, label %23, label %18

18:                                               ; preds = %2
  %19 = load i32*, i32** %6, align 8
  %20 = load i32, i32* @ff_asf_header, align 4
  %21 = call i64 @memcmp(i32* %19, i32 %20, i32 4)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18, %2
  store i32 -1, i32* %3, align 4
  br label %87

24:                                               ; preds = %18
  %25 = load i32*, i32** %6, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 18
  store i32* %26, i32** %6, align 8
  br label %27

27:                                               ; preds = %78, %24
  %28 = load i32*, i32** %6, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 4
  %30 = call i32 @AV_RL64(i32* %29)
  store i32 %30, i32* %8, align 4
  store i32 68, i32* %9, align 4
  %31 = load i32*, i32** %6, align 8
  %32 = load i32, i32* @ff_asf_file_header, align 4
  %33 = call i64 @memcmp(i32* %31, i32 %32, i32 4)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %51

35:                                               ; preds = %27
  %36 = load i32, i32* %8, align 4
  %37 = sext i32 %36 to i64
  %38 = load i32*, i32** %7, align 8
  %39 = load i32*, i32** %6, align 8
  %40 = ptrtoint i32* %38 to i64
  %41 = ptrtoint i32* %39 to i64
  %42 = sub i64 %40, %41
  %43 = sdiv exact i64 %42, 4
  %44 = icmp sgt i64 %37, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %35
  store i32 -1, i32* %3, align 4
  br label %87

46:                                               ; preds = %35
  %47 = load i32, i32* %8, align 4
  %48 = load i32*, i32** %6, align 8
  %49 = sext i32 %47 to i64
  %50 = getelementptr inbounds i32, i32* %48, i64 %49
  store i32* %50, i32** %6, align 8
  br label %78

51:                                               ; preds = %27
  %52 = load i32*, i32** %7, align 8
  %53 = load i32*, i32** %6, align 8
  %54 = ptrtoint i32* %52 to i64
  %55 = ptrtoint i32* %53 to i64
  %56 = sub i64 %54, %55
  %57 = sdiv exact i64 %56, 4
  %58 = load i32, i32* %9, align 4
  %59 = add nsw i32 8, %58
  %60 = sext i32 %59 to i64
  %61 = icmp slt i64 %57, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %51
  br label %86

63:                                               ; preds = %51
  %64 = load i32, i32* %9, align 4
  %65 = load i32*, i32** %6, align 8
  %66 = sext i32 %64 to i64
  %67 = getelementptr inbounds i32, i32* %65, i64 %66
  store i32* %67, i32** %6, align 8
  %68 = load i32*, i32** %6, align 8
  %69 = call i64 @AV_RL32(i32* %68)
  %70 = load i32*, i32** %6, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 4
  %72 = call i64 @AV_RL32(i32* %71)
  %73 = icmp eq i64 %69, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %63
  %75 = load i32*, i32** %6, align 8
  %76 = call i32 @AV_WL32(i32* %75, i32 0)
  store i32 0, i32* %3, align 4
  br label %87

77:                                               ; preds = %63
  br label %86

78:                                               ; preds = %46
  %79 = load i32*, i32** %7, align 8
  %80 = load i32*, i32** %6, align 8
  %81 = ptrtoint i32* %79 to i64
  %82 = ptrtoint i32* %80 to i64
  %83 = sub i64 %81, %82
  %84 = sdiv exact i64 %83, 4
  %85 = icmp uge i64 %84, 12
  br i1 %85, label %27, label %86

86:                                               ; preds = %78, %77, %62
  store i32 -1, i32* %3, align 4
  br label %87

87:                                               ; preds = %86, %74, %45, %23
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local i64 @memcmp(i32*, i32, i32) #1

declare dso_local i32 @AV_RL64(i32*) #1

declare dso_local i64 @AV_RL32(i32*) #1

declare dso_local i32 @AV_WL32(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
