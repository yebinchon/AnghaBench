; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_system.c_SYS_GetFontTexture.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_system.c_SYS_GetFontTexture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i64, i32, i32, i32, i32 }

@sys_fontwidthtab = common dso_local global i64* null, align 8
@sys_fontimage = common dso_local global i8* null, align 8
@sys_fontdata = common dso_local global %struct.TYPE_2__* null, align 8
@sys_fontcharsinsheet = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SYS_GetFontTexture(i64 %0, i8** %1, i64* %2, i64* %3, i64* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i64 %0, i64* %6, align 8
  store i8** %1, i8*** %7, align 8
  store i64* %2, i64** %8, align 8
  store i64* %3, i64** %9, align 8
  store i64* %4, i64** %10, align 8
  %13 = load i64*, i64** %8, align 8
  store i64 0, i64* %13, align 8
  %14 = load i64*, i64** %9, align 8
  store i64 0, i64* %14, align 8
  %15 = load i8**, i8*** %7, align 8
  store i8* null, i8** %15, align 8
  %16 = load i64*, i64** @sys_fontwidthtab, align 8
  %17 = icmp ne i64* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %5
  %19 = load i8*, i8** @sys_fontimage, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %18, %5
  br label %89

22:                                               ; preds = %18
  %23 = load i64, i64* %6, align 8
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sys_fontdata, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ult i64 %23, %26
  br i1 %27, label %34, label %28

28:                                               ; preds = %22
  %29 = load i64, i64* %6, align 8
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sys_fontdata, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ugt i64 %29, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %28, %22
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sys_fontdata, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %6, align 8
  br label %44

38:                                               ; preds = %28
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sys_fontdata, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* %6, align 8
  %43 = sub i64 %42, %41
  store i64 %43, i64* %6, align 8
  br label %44

44:                                               ; preds = %38, %34
  %45 = load i64, i64* %6, align 8
  %46 = load i64, i64* @sys_fontcharsinsheet, align 8
  %47 = udiv i64 %45, %46
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %11, align 4
  %49 = load i64, i64* %6, align 8
  %50 = load i64, i64* @sys_fontcharsinsheet, align 8
  %51 = urem i64 %49, %50
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %12, align 4
  %53 = load i8*, i8** @sys_fontimage, align 8
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sys_fontdata, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* %11, align 4
  %58 = mul nsw i32 %56, %57
  %59 = sext i32 %58 to i64
  %60 = getelementptr i8, i8* %53, i64 %59
  %61 = load i8**, i8*** %7, align 8
  store i8* %60, i8** %61, align 8
  %62 = load i32, i32* %12, align 4
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sys_fontdata, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 4
  %66 = srem i32 %62, %65
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sys_fontdata, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 5
  %69 = load i32, i32* %68, align 8
  %70 = mul nsw i32 %66, %69
  %71 = sext i32 %70 to i64
  %72 = load i64*, i64** %8, align 8
  store i64 %71, i64* %72, align 8
  %73 = load i32, i32* %12, align 4
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sys_fontdata, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 4
  %76 = load i32, i32* %75, align 4
  %77 = sdiv i32 %73, %76
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sys_fontdata, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 6
  %80 = load i32, i32* %79, align 4
  %81 = mul nsw i32 %77, %80
  %82 = sext i32 %81 to i64
  %83 = load i64*, i64** %9, align 8
  store i64 %82, i64* %83, align 8
  %84 = load i64*, i64** @sys_fontwidthtab, align 8
  %85 = load i64, i64* %6, align 8
  %86 = getelementptr inbounds i64, i64* %84, i64 %85
  %87 = load i64, i64* %86, align 8
  %88 = load i64*, i64** %10, align 8
  store i64 %87, i64* %88, align 8
  br label %89

89:                                               ; preds = %44, %21
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
