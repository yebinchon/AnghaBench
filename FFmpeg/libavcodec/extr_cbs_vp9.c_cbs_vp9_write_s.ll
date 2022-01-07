; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_cbs_vp9.c_cbs_vp9_write_s.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_cbs_vp9.c_cbs_vp9_write_s.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }

@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32*, i32, i8*, i32*, i32)* @cbs_vp9_write_s to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cbs_vp9_write_s(%struct.TYPE_4__* %0, i32* %1, i32 %2, i8* %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca [33 x i8], align 16
  %17 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  %18 = load i32*, i32** %9, align 8
  %19 = call i32 @put_bits_left(i32* %18)
  %20 = load i32, i32* %10, align 4
  %21 = add nsw i32 %20, 1
  %22 = icmp slt i32 %19, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %6
  %24 = load i32, i32* @ENOSPC, align 4
  %25 = call i32 @AVERROR(i32 %24)
  store i32 %25, i32* %7, align 4
  br label %95

26:                                               ; preds = %6
  %27 = load i32, i32* %13, align 4
  %28 = icmp slt i32 %27, 0
  %29 = zext i1 %28 to i32
  store i32 %29, i32* %15, align 4
  %30 = load i32, i32* %15, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %26
  %33 = load i32, i32* %13, align 4
  %34 = sub nsw i32 0, %33
  br label %37

35:                                               ; preds = %26
  %36 = load i32, i32* %13, align 4
  br label %37

37:                                               ; preds = %35, %32
  %38 = phi i32 [ %34, %32 ], [ %36, %35 ]
  store i32 %38, i32* %14, align 4
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %87

43:                                               ; preds = %37
  store i32 0, i32* %17, align 4
  br label %44

44:                                               ; preds = %63, %43
  %45 = load i32, i32* %17, align 4
  %46 = load i32, i32* %10, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %66

48:                                               ; preds = %44
  %49 = load i32, i32* %14, align 4
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* %17, align 4
  %52 = sub nsw i32 %50, %51
  %53 = sub nsw i32 %52, 1
  %54 = ashr i32 %49, %53
  %55 = and i32 %54, 1
  %56 = icmp ne i32 %55, 0
  %57 = zext i1 %56 to i64
  %58 = select i1 %56, i32 49, i32 48
  %59 = trunc i32 %58 to i8
  %60 = load i32, i32* %17, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [33 x i8], [33 x i8]* %16, i64 0, i64 %61
  store i8 %59, i8* %62, align 1
  br label %63

63:                                               ; preds = %48
  %64 = load i32, i32* %17, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %17, align 4
  br label %44

66:                                               ; preds = %44
  %67 = load i32, i32* %15, align 4
  %68 = icmp ne i32 %67, 0
  %69 = zext i1 %68 to i64
  %70 = select i1 %68, i32 49, i32 48
  %71 = trunc i32 %70 to i8
  %72 = load i32, i32* %17, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [33 x i8], [33 x i8]* %16, i64 0, i64 %73
  store i8 %71, i8* %74, align 1
  %75 = load i32, i32* %17, align 4
  %76 = add nsw i32 %75, 1
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [33 x i8], [33 x i8]* %16, i64 0, i64 %77
  store i8 0, i8* %78, align 1
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %80 = load i32*, i32** %9, align 8
  %81 = call i32 @put_bits_count(i32* %80)
  %82 = load i8*, i8** %11, align 8
  %83 = load i32*, i32** %12, align 8
  %84 = getelementptr inbounds [33 x i8], [33 x i8]* %16, i64 0, i64 0
  %85 = load i32, i32* %13, align 4
  %86 = call i32 @ff_cbs_trace_syntax_element(%struct.TYPE_4__* %79, i32 %81, i8* %82, i32* %83, i8* %84, i32 %85)
  br label %87

87:                                               ; preds = %66, %37
  %88 = load i32*, i32** %9, align 8
  %89 = load i32, i32* %10, align 4
  %90 = load i32, i32* %14, align 4
  %91 = call i32 @put_bits(i32* %88, i32 %89, i32 %90)
  %92 = load i32*, i32** %9, align 8
  %93 = load i32, i32* %15, align 4
  %94 = call i32 @put_bits(i32* %92, i32 1, i32 %93)
  store i32 0, i32* %7, align 4
  br label %95

95:                                               ; preds = %87, %23
  %96 = load i32, i32* %7, align 4
  ret i32 %96
}

declare dso_local i32 @put_bits_left(i32*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @ff_cbs_trace_syntax_element(%struct.TYPE_4__*, i32, i8*, i32*, i8*, i32) #1

declare dso_local i32 @put_bits_count(i32*) #1

declare dso_local i32 @put_bits(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
