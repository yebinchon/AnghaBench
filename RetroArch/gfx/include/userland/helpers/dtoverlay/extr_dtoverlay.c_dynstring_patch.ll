; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/helpers/dtoverlay/extr_dtoverlay.c_dynstring_patch.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/helpers/dtoverlay/extr_dtoverlay.c_dynstring_patch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dynstring = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dynstring*, i32, i32, i8*, i32)* @dynstring_patch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dynstring_patch(%struct.dynstring* %0, i32 %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.dynstring*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.dynstring* %0, %struct.dynstring** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %13 = load %struct.dynstring*, %struct.dynstring** %6, align 8
  %14 = getelementptr inbounds %struct.dynstring, %struct.dynstring* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* %10, align 4
  %17 = load i32, i32* %8, align 4
  %18 = sub nsw i32 %16, %17
  %19 = add nsw i32 %15, %18
  store i32 %19, i32* %11, align 4
  %20 = load %struct.dynstring*, %struct.dynstring** %6, align 8
  %21 = load i32, i32* %11, align 4
  %22 = add nsw i32 %21, 1
  %23 = call i32 @dynstring_set_size(%struct.dynstring* %20, i32 %22)
  store i32 %23, i32* %12, align 4
  %24 = load i32, i32* %12, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %71, label %26

26:                                               ; preds = %5
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* %10, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %61

30:                                               ; preds = %26
  %31 = load %struct.dynstring*, %struct.dynstring** %6, align 8
  %32 = getelementptr inbounds %struct.dynstring, %struct.dynstring* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i32, i32* %7, align 4
  %35 = sext i32 %34 to i64
  %36 = add nsw i64 %33, %35
  %37 = load i32, i32* %10, align 4
  %38 = sext i32 %37 to i64
  %39 = add nsw i64 %36, %38
  %40 = load %struct.dynstring*, %struct.dynstring** %6, align 8
  %41 = getelementptr inbounds %struct.dynstring, %struct.dynstring* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load i32, i32* %7, align 4
  %44 = sext i32 %43 to i64
  %45 = add nsw i64 %42, %44
  %46 = load i32, i32* %8, align 4
  %47 = sext i32 %46 to i64
  %48 = add nsw i64 %45, %47
  %49 = load %struct.dynstring*, %struct.dynstring** %6, align 8
  %50 = getelementptr inbounds %struct.dynstring, %struct.dynstring* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = add nsw i32 %51, 1
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* %8, align 4
  %55 = add nsw i32 %53, %54
  %56 = sub nsw i32 %52, %55
  %57 = call i32 @memmove(i64 %39, i64 %48, i32 %56)
  %58 = load i32, i32* %11, align 4
  %59 = load %struct.dynstring*, %struct.dynstring** %6, align 8
  %60 = getelementptr inbounds %struct.dynstring, %struct.dynstring* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 8
  br label %61

61:                                               ; preds = %30, %26
  %62 = load %struct.dynstring*, %struct.dynstring** %6, align 8
  %63 = getelementptr inbounds %struct.dynstring, %struct.dynstring* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load i32, i32* %7, align 4
  %66 = sext i32 %65 to i64
  %67 = add nsw i64 %64, %66
  %68 = load i8*, i8** %9, align 8
  %69 = load i32, i32* %10, align 4
  %70 = call i32 @memcpy(i64 %67, i8* %68, i32 %69)
  br label %71

71:                                               ; preds = %61, %5
  %72 = load i32, i32* %12, align 4
  ret i32 %72
}

declare dso_local i32 @dynstring_set_size(%struct.dynstring*, i32) #1

declare dso_local i32 @memmove(i64, i64, i32) #1

declare dso_local i32 @memcpy(i64, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
