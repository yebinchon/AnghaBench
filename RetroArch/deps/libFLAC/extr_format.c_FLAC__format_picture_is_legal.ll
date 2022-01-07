; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/libFLAC/extr_format.c_FLAC__format_picture_is_legal.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/libFLAC/extr_format.c_FLAC__format_picture_is_legal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i64* }

@.str = private unnamed_addr constant [74 x i8] c"MIME type string must contain only printable ASCII characters (0x20-0x7e)\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"description string must be valid UTF-8\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @FLAC__format_picture_is_legal(%struct.TYPE_3__* %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i8** %1, i8*** %5, align 8
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  store i8* %11, i8** %6, align 8
  br label %12

12:                                               ; preds = %33, %2
  %13 = load i8*, i8** %6, align 8
  %14 = load i8, i8* %13, align 1
  %15 = icmp ne i8 %14, 0
  br i1 %15, label %16, label %36

16:                                               ; preds = %12
  %17 = load i8*, i8** %6, align 8
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp slt i32 %19, 32
  br i1 %20, label %26, label %21

21:                                               ; preds = %16
  %22 = load i8*, i8** %6, align 8
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp sgt i32 %24, 126
  br i1 %25, label %26, label %32

26:                                               ; preds = %21, %16
  %27 = load i8**, i8*** %5, align 8
  %28 = icmp ne i8** %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = load i8**, i8*** %5, align 8
  store i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i8** %30, align 8
  br label %31

31:                                               ; preds = %29, %26
  store i32 0, i32* %3, align 4
  br label %61

32:                                               ; preds = %21
  br label %33

33:                                               ; preds = %32
  %34 = load i8*, i8** %6, align 8
  %35 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %35, i8** %6, align 8
  br label %12

36:                                               ; preds = %12
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  %39 = load i64*, i64** %38, align 8
  store i64* %39, i64** %7, align 8
  br label %40

40:                                               ; preds = %55, %36
  %41 = load i64*, i64** %7, align 8
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %60

44:                                               ; preds = %40
  %45 = load i64*, i64** %7, align 8
  %46 = call i32 @utf8len_(i64* %45)
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %44
  %50 = load i8**, i8*** %5, align 8
  %51 = icmp ne i8** %50, null
  br i1 %51, label %52, label %54

52:                                               ; preds = %49
  %53 = load i8**, i8*** %5, align 8
  store i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i8** %53, align 8
  br label %54

54:                                               ; preds = %52, %49
  store i32 0, i32* %3, align 4
  br label %61

55:                                               ; preds = %44
  %56 = load i32, i32* %8, align 4
  %57 = load i64*, i64** %7, align 8
  %58 = zext i32 %56 to i64
  %59 = getelementptr inbounds i64, i64* %57, i64 %58
  store i64* %59, i64** %7, align 8
  br label %40

60:                                               ; preds = %40
  store i32 1, i32* %3, align 4
  br label %61

61:                                               ; preds = %60, %54, %31
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i32 @utf8len_(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
