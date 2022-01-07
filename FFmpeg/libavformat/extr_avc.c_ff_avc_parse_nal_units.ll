; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_avc.c_ff_avc_parse_nal_units.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_avc.c_ff_avc_parse_nal_units.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_avc_parse_nal_units(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load i32*, i32** %5, align 8
  store i32* %11, i32** %7, align 8
  %12 = load i32*, i32** %7, align 8
  %13 = load i32, i32* %6, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32, i32* %12, i64 %14
  store i32* %15, i32** %8, align 8
  store i32 0, i32* %6, align 4
  %16 = load i32*, i32** %7, align 8
  %17 = load i32*, i32** %8, align 8
  %18 = call i32* @ff_avc_find_startcode(i32* %16, i32* %17)
  store i32* %18, i32** %9, align 8
  br label %19

19:                                               ; preds = %38, %3
  br label %20

20:                                               ; preds = %32, %19
  %21 = load i32*, i32** %9, align 8
  %22 = load i32*, i32** %8, align 8
  %23 = icmp ult i32* %21, %22
  br i1 %23, label %24, label %30

24:                                               ; preds = %20
  %25 = load i32*, i32** %9, align 8
  %26 = getelementptr inbounds i32, i32* %25, i32 1
  store i32* %26, i32** %9, align 8
  %27 = load i32, i32* %25, align 4
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  br label %30

30:                                               ; preds = %24, %20
  %31 = phi i1 [ false, %20 ], [ %29, %24 ]
  br i1 %31, label %32, label %33

32:                                               ; preds = %30
  br label %20

33:                                               ; preds = %30
  %34 = load i32*, i32** %9, align 8
  %35 = load i32*, i32** %8, align 8
  %36 = icmp eq i32* %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  br label %73

38:                                               ; preds = %33
  %39 = load i32*, i32** %9, align 8
  %40 = load i32*, i32** %8, align 8
  %41 = call i32* @ff_avc_find_startcode(i32* %39, i32* %40)
  store i32* %41, i32** %10, align 8
  %42 = load i32*, i32** %4, align 8
  %43 = load i32*, i32** %10, align 8
  %44 = load i32*, i32** %9, align 8
  %45 = ptrtoint i32* %43 to i64
  %46 = ptrtoint i32* %44 to i64
  %47 = sub i64 %45, %46
  %48 = sdiv exact i64 %47, 4
  %49 = trunc i64 %48 to i32
  %50 = call i32 @avio_wb32(i32* %42, i32 %49)
  %51 = load i32*, i32** %4, align 8
  %52 = load i32*, i32** %9, align 8
  %53 = load i32*, i32** %10, align 8
  %54 = load i32*, i32** %9, align 8
  %55 = ptrtoint i32* %53 to i64
  %56 = ptrtoint i32* %54 to i64
  %57 = sub i64 %55, %56
  %58 = sdiv exact i64 %57, 4
  %59 = trunc i64 %58 to i32
  %60 = call i32 @avio_write(i32* %51, i32* %52, i32 %59)
  %61 = load i32*, i32** %10, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 4
  %63 = load i32*, i32** %9, align 8
  %64 = ptrtoint i32* %62 to i64
  %65 = ptrtoint i32* %63 to i64
  %66 = sub i64 %64, %65
  %67 = sdiv exact i64 %66, 4
  %68 = load i32, i32* %6, align 4
  %69 = sext i32 %68 to i64
  %70 = add nsw i64 %69, %67
  %71 = trunc i64 %70 to i32
  store i32 %71, i32* %6, align 4
  %72 = load i32*, i32** %10, align 8
  store i32* %72, i32** %9, align 8
  br label %19

73:                                               ; preds = %37
  %74 = load i32, i32* %6, align 4
  ret i32 %74
}

declare dso_local i32* @ff_avc_find_startcode(i32*, i32*) #1

declare dso_local i32 @avio_wb32(i32*, i32) #1

declare dso_local i32 @avio_write(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
