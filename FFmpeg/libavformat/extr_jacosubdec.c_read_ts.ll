; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_jacosubdec.c_read_ts.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_jacosubdec.c_read_ts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [27 x i8] c"%u:%u:%u.%u %u:%u:%u.%u %n\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"@%u @%u %n\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_3__*, i8*, i32*, i32*)* @read_ts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @read_ts(%struct.TYPE_3__* %0, i8* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = call i32 (i8*, i8*, ...) @sscanf(i8* %23, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32* %11, i32* %12, i32* %13, i32* %14, i32* %15, i32* %16, i32* %17, i32* %18, i32* %10)
  %25 = icmp eq i32 %24, 8
  br i1 %25, label %26, label %53

26:                                               ; preds = %4
  %27 = load i32, i32* %11, align 4
  %28 = mul i32 %27, 3600
  %29 = load i32, i32* %12, align 4
  %30 = mul i32 %29, 60
  %31 = add i32 %28, %30
  %32 = load i32, i32* %13, align 4
  %33 = add i32 %31, %32
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = mul i32 %33, %36
  %38 = load i32, i32* %14, align 4
  %39 = add i32 %37, %38
  store i32 %39, i32* %19, align 4
  %40 = load i32, i32* %15, align 4
  %41 = mul i32 %40, 3600
  %42 = load i32, i32* %16, align 4
  %43 = mul i32 %42, 60
  %44 = add i32 %41, %43
  %45 = load i32, i32* %17, align 4
  %46 = add i32 %44, %45
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = mul i32 %46, %49
  %51 = load i32, i32* %18, align 4
  %52 = add i32 %50, %51
  store i32 %52, i32* %20, align 4
  br label %59

53:                                               ; preds = %4
  %54 = load i8*, i8** %7, align 8
  %55 = call i32 (i8*, i8*, ...) @sscanf(i8* %54, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32* %19, i32* %20, i32* %10)
  %56 = icmp eq i32 %55, 2
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  br label %59

58:                                               ; preds = %53
  store i8* null, i8** %5, align 8
  br label %96

59:                                               ; preds = %57, %26
  %60 = load i32, i32* %19, align 4
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = add nsw i32 %60, %63
  %65 = sext i32 %64 to i64
  %66 = mul nsw i64 %65, 100
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = zext i32 %69 to i64
  %71 = sdiv i64 %66, %70
  %72 = trunc i64 %71 to i32
  store i32 %72, i32* %21, align 4
  %73 = load i32, i32* %20, align 4
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = add nsw i32 %73, %76
  %78 = sext i32 %77 to i64
  %79 = mul nsw i64 %78, 100
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = zext i32 %82 to i64
  %84 = sdiv i64 %79, %83
  %85 = trunc i64 %84 to i32
  store i32 %85, i32* %22, align 4
  %86 = load i32, i32* %21, align 4
  %87 = load i32*, i32** %8, align 8
  store i32 %86, i32* %87, align 4
  %88 = load i32, i32* %22, align 4
  %89 = load i32, i32* %21, align 4
  %90 = sub nsw i32 %88, %89
  %91 = load i32*, i32** %9, align 8
  store i32 %90, i32* %91, align 4
  %92 = load i8*, i8** %7, align 8
  %93 = load i32, i32* %10, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i8, i8* %92, i64 %94
  store i8* %95, i8** %5, align 8
  br label %96

96:                                               ; preds = %59, %58
  %97 = load i8*, i8** %5, align 8
  ret i8* %97
}

declare dso_local i32 @sscanf(i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
