; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_stb_image_write.h_stbiw__write_pixels.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_stb_image_write.h_stbiw__write_pixels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 (i32, i32*, i32)* }

@stbi__flip_vertically_on_write = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i32, i32, i32, i32, i32, i8*, i32, i32, i32)* @stbiw__write_pixels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stbiw__write_pixels(%struct.TYPE_4__* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i8* %6, i32 %7, i32 %8, i32 %9) #0 {
  %11 = alloca %struct.TYPE_4__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i8*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %11, align 8
  store i32 %1, i32* %12, align 4
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i8* %6, i8** %17, align 8
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  store i32 %9, i32* %20, align 4
  store i32 0, i32* %21, align 4
  %26 = load i32, i32* %15, align 4
  %27 = icmp sle i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %10
  br label %87

29:                                               ; preds = %10
  %30 = load i64, i64* @stbi__flip_vertically_on_write, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = load i32, i32* %13, align 4
  %34 = mul nsw i32 %33, -1
  store i32 %34, i32* %13, align 4
  br label %35

35:                                               ; preds = %32, %29
  %36 = load i32, i32* %13, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %35
  store i32 -1, i32* %24, align 4
  %39 = load i32, i32* %15, align 4
  %40 = sub nsw i32 %39, 1
  store i32 %40, i32* %23, align 4
  br label %43

41:                                               ; preds = %35
  %42 = load i32, i32* %15, align 4
  store i32 %42, i32* %24, align 4
  store i32 0, i32* %23, align 4
  br label %43

43:                                               ; preds = %41, %38
  br label %44

44:                                               ; preds = %83, %43
  %45 = load i32, i32* %23, align 4
  %46 = load i32, i32* %24, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %48, label %87

48:                                               ; preds = %44
  store i32 0, i32* %22, align 4
  br label %49

49:                                               ; preds = %71, %48
  %50 = load i32, i32* %22, align 4
  %51 = load i32, i32* %14, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %74

53:                                               ; preds = %49
  %54 = load i8*, i8** %17, align 8
  %55 = load i32, i32* %23, align 4
  %56 = load i32, i32* %14, align 4
  %57 = mul nsw i32 %55, %56
  %58 = load i32, i32* %22, align 4
  %59 = add nsw i32 %57, %58
  %60 = load i32, i32* %16, align 4
  %61 = mul nsw i32 %59, %60
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8, i8* %54, i64 %62
  store i8* %63, i8** %25, align 8
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %65 = load i32, i32* %12, align 4
  %66 = load i32, i32* %16, align 4
  %67 = load i32, i32* %18, align 4
  %68 = load i32, i32* %20, align 4
  %69 = load i8*, i8** %25, align 8
  %70 = call i32 @stbiw__write_pixel(%struct.TYPE_4__* %64, i32 %65, i32 %66, i32 %67, i32 %68, i8* %69)
  br label %71

71:                                               ; preds = %53
  %72 = load i32, i32* %22, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %22, align 4
  br label %49

74:                                               ; preds = %49
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 1
  %77 = load i32 (i32, i32*, i32)*, i32 (i32, i32*, i32)** %76, align 8
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* %19, align 4
  %82 = call i32 %77(i32 %80, i32* %21, i32 %81)
  br label %83

83:                                               ; preds = %74
  %84 = load i32, i32* %13, align 4
  %85 = load i32, i32* %23, align 4
  %86 = add nsw i32 %85, %84
  store i32 %86, i32* %23, align 4
  br label %44

87:                                               ; preds = %28, %44
  ret void
}

declare dso_local i32 @stbiw__write_pixel(%struct.TYPE_4__*, i32, i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
