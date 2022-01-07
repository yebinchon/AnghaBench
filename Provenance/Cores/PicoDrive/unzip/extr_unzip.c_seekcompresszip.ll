; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/unzip/extr_unzip.c_seekcompresszip.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/unzip/extr_unzip.c_seekcompresszip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.zipent = type { i64 }

@ZIPNAME = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Seeking to header\00", align 1
@ERROR_CORRUPT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"Reading header\00", align 1
@ZIPFNLN = common dso_local global i32 0, align 4
@ZIPXTRALN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"Seeking to compressed data\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @seekcompresszip(%struct.TYPE_4__* %0, %struct.zipent* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca %struct.zipent*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store %struct.zipent* %1, %struct.zipent** %5, align 8
  %12 = load i32, i32* @ZIPNAME, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %6, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %7, align 8
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %2
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %22 = call i32 @revivezip(%struct.TYPE_4__* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %90

25:                                               ; preds = %20
  br label %26

26:                                               ; preds = %25, %2
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.zipent*, %struct.zipent** %5, align 8
  %31 = getelementptr inbounds %struct.zipent, %struct.zipent* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i32, i32* @SEEK_SET, align 4
  %34 = call i64 @fseek(i32 %29, i64 %32, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %26
  %37 = load i32, i32* @ERROR_CORRUPT, align 4
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @errormsg(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %37, i32 %40)
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %90

42:                                               ; preds = %26
  %43 = load i32, i32* @ZIPNAME, align 4
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @fread(i8* %15, i32 %43, i32 1, i32 %46)
  %48 = icmp ne i32 %47, 1
  br i1 %48, label %49, label %55

49:                                               ; preds = %42
  %50 = load i32, i32* @ERROR_CORRUPT, align 4
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @errormsg(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %50, i32 %53)
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %90

55:                                               ; preds = %42
  %56 = load i32, i32* @ZIPFNLN, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8, i8* %15, i64 %57
  %59 = call i32 @read_word(i8* %58)
  store i32 %59, i32* %10, align 4
  %60 = load i32, i32* @ZIPXTRALN, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8, i8* %15, i64 %61
  %63 = call i32 @read_word(i8* %62)
  store i32 %63, i32* %11, align 4
  %64 = load %struct.zipent*, %struct.zipent** %5, align 8
  %65 = getelementptr inbounds %struct.zipent, %struct.zipent* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i32, i32* @ZIPNAME, align 4
  %68 = sext i32 %67 to i64
  %69 = add nsw i64 %66, %68
  %70 = load i32, i32* %10, align 4
  %71 = sext i32 %70 to i64
  %72 = add nsw i64 %69, %71
  %73 = load i32, i32* %11, align 4
  %74 = sext i32 %73 to i64
  %75 = add nsw i64 %72, %74
  store i64 %75, i64* %8, align 8
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load i64, i64* %8, align 8
  %80 = load i32, i32* @SEEK_SET, align 4
  %81 = call i64 @fseek(i32 %78, i64 %79, i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %55
  %84 = load i32, i32* @ERROR_CORRUPT, align 4
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @errormsg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %84, i32 %87)
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %90

89:                                               ; preds = %55
  store i32 0, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %90

90:                                               ; preds = %89, %83, %49, %36, %24
  %91 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %91)
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @revivezip(%struct.TYPE_4__*) #2

declare dso_local i64 @fseek(i32, i64, i32) #2

declare dso_local i32 @errormsg(i8*, i32, i32) #2

declare dso_local i32 @fread(i8*, i32, i32, i32) #2

declare dso_local i32 @read_word(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
