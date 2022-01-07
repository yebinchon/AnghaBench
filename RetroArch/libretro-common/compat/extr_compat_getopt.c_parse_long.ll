; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-common/compat/extr_compat_getopt.c_parse_long.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-common/compat/extr_compat_getopt.c_parse_long.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.option = type { i32*, i32, i64, i64 }

@optarg = common dso_local global i8* null, align 8
@optind = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.option*, i8**)* @parse_long to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_long(%struct.option* %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.option*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.option*, align 8
  store %struct.option* %0, %struct.option** %4, align 8
  store i8** %1, i8*** %5, align 8
  store %struct.option* null, %struct.option** %7, align 8
  store i64 0, i64* %6, align 8
  br label %8

8:                                                ; preds = %32, %2
  %9 = load %struct.option*, %struct.option** %4, align 8
  %10 = load i64, i64* %6, align 8
  %11 = getelementptr inbounds %struct.option, %struct.option* %9, i64 %10
  %12 = getelementptr inbounds %struct.option, %struct.option* %11, i32 0, i32 3
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %35

15:                                               ; preds = %8
  %16 = load %struct.option*, %struct.option** %4, align 8
  %17 = load i64, i64* %6, align 8
  %18 = getelementptr inbounds %struct.option, %struct.option* %16, i64 %17
  %19 = getelementptr inbounds %struct.option, %struct.option* %18, i32 0, i32 3
  %20 = load i64, i64* %19, align 8
  %21 = load i8**, i8*** %5, align 8
  %22 = getelementptr inbounds i8*, i8** %21, i64 0
  %23 = load i8*, i8** %22, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 2
  %25 = call i32 @strcmp(i64 %20, i8* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %15
  %28 = load %struct.option*, %struct.option** %4, align 8
  %29 = load i64, i64* %6, align 8
  %30 = getelementptr inbounds %struct.option, %struct.option* %28, i64 %29
  store %struct.option* %30, %struct.option** %7, align 8
  br label %35

31:                                               ; preds = %15
  br label %32

32:                                               ; preds = %31
  %33 = load i64, i64* %6, align 8
  %34 = add i64 %33, 1
  store i64 %34, i64* %6, align 8
  br label %8

35:                                               ; preds = %27, %8
  %36 = load %struct.option*, %struct.option** %7, align 8
  %37 = icmp ne %struct.option* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %35
  store i32 63, i32* %3, align 4
  br label %80

39:                                               ; preds = %35
  %40 = load %struct.option*, %struct.option** %7, align 8
  %41 = getelementptr inbounds %struct.option, %struct.option* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %39
  %45 = load i8**, i8*** %5, align 8
  %46 = getelementptr inbounds i8*, i8** %45, i64 1
  %47 = load i8*, i8** %46, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %44
  store i32 63, i32* %3, align 4
  br label %80

50:                                               ; preds = %44, %39
  %51 = load %struct.option*, %struct.option** %7, align 8
  %52 = getelementptr inbounds %struct.option, %struct.option* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %50
  %56 = load i8**, i8*** %5, align 8
  %57 = getelementptr inbounds i8*, i8** %56, i64 1
  %58 = load i8*, i8** %57, align 8
  store i8* %58, i8** @optarg, align 8
  %59 = load i64, i64* @optind, align 8
  %60 = add nsw i64 %59, 2
  store i64 %60, i64* @optind, align 8
  br label %64

61:                                               ; preds = %50
  %62 = load i64, i64* @optind, align 8
  %63 = add nsw i64 %62, 1
  store i64 %63, i64* @optind, align 8
  br label %64

64:                                               ; preds = %61, %55
  %65 = load %struct.option*, %struct.option** %7, align 8
  %66 = getelementptr inbounds %struct.option, %struct.option* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = icmp ne i32* %67, null
  br i1 %68, label %69, label %76

69:                                               ; preds = %64
  %70 = load %struct.option*, %struct.option** %7, align 8
  %71 = getelementptr inbounds %struct.option, %struct.option* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.option*, %struct.option** %7, align 8
  %74 = getelementptr inbounds %struct.option, %struct.option* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  store i32 %72, i32* %75, align 4
  store i32 0, i32* %3, align 4
  br label %80

76:                                               ; preds = %64
  %77 = load %struct.option*, %struct.option** %7, align 8
  %78 = getelementptr inbounds %struct.option, %struct.option* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  store i32 %79, i32* %3, align 4
  br label %80

80:                                               ; preds = %76, %69, %49, %38
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local i32 @strcmp(i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
