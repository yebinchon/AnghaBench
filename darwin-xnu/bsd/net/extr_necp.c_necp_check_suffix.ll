; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_necp.c_necp_check_suffix.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_necp.c_necp_check_suffix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.substring = type { i64, i64 }

@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, i64, i64, i32)* @necp_check_suffix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @necp_check_suffix(i64 %0, i64 %1, i64 %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.substring, align 8
  %8 = alloca %struct.substring, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = bitcast %struct.substring* %7 to { i64, i64 }*
  %12 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %11, i32 0, i32 0
  store i64 %0, i64* %12, align 8
  %13 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %11, i32 0, i32 1
  store i64 %1, i64* %13, align 8
  %14 = bitcast %struct.substring* %8 to { i64, i64 }*
  %15 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %14, i32 0, i32 0
  store i64 %2, i64* %15, align 8
  %16 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %14, i32 0, i32 1
  store i64 %3, i64* %16, align 8
  store i32 %4, i32* %9, align 4
  %17 = getelementptr inbounds %struct.substring, %struct.substring* %7, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds %struct.substring, %struct.substring* %8, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ule i64 %18, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %5
  %23 = load i32, i32* @FALSE, align 4
  store i32 %23, i32* %6, align 4
  br label %58

24:                                               ; preds = %5
  %25 = getelementptr inbounds %struct.substring, %struct.substring* %7, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds %struct.substring, %struct.substring* %8, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = sub i64 %26, %28
  store i64 %29, i64* %10, align 8
  %30 = load i32, i32* %9, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %46

32:                                               ; preds = %24
  %33 = getelementptr inbounds %struct.substring, %struct.substring* %7, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* %10, align 8
  %36 = add i64 %34, %35
  %37 = sub i64 %36, 1
  %38 = inttoptr i64 %37 to i8*
  %39 = getelementptr inbounds i8, i8* %38, i64 0
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp ne i32 %41, 46
  br i1 %42, label %43, label %45

43:                                               ; preds = %32
  %44 = load i32, i32* @FALSE, align 4
  store i32 %44, i32* %6, align 4
  br label %58

45:                                               ; preds = %32
  br label %46

46:                                               ; preds = %45, %24
  %47 = getelementptr inbounds %struct.substring, %struct.substring* %7, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* %10, align 8
  %50 = add i64 %48, %49
  %51 = getelementptr inbounds %struct.substring, %struct.substring* %8, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr inbounds %struct.substring, %struct.substring* %8, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = call i64 @strncasecmp(i64 %50, i64 %52, i64 %54)
  %56 = icmp eq i64 %55, 0
  %57 = zext i1 %56 to i32
  store i32 %57, i32* %6, align 4
  br label %58

58:                                               ; preds = %46, %43, %22
  %59 = load i32, i32* %6, align 4
  ret i32 %59
}

declare dso_local i64 @strncasecmp(i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
