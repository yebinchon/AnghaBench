; ModuleID = '/home/carl/AnghaBench/esp-idf/components/fatfs/src/extr_ff.c_get_fileinfo.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/fatfs/src/extr_ff.c_get_fileinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i32, i64*, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64, i64*, i32 }
%struct.TYPE_9__ = type { i8*, i8*, i32, i8*, i8*, i32 }

@RDDEM = common dso_local global i64 0, align 8
@DDEM = common dso_local global i8* null, align 8
@DIR_Attr = common dso_local global i64 0, align 8
@DIR_FileSize = common dso_local global i32 0, align 4
@DIR_ModTime = common dso_local global i32 0, align 4
@CODEPAGE = common dso_local global i32 0, align 4
@DIR_NTres = common dso_local global i64 0, align 8
@FF_LFN_BUF = common dso_local global i64 0, align 8
@FF_SFN_BUF = common dso_local global i64 0, align 8
@FS_EXFAT = common dso_local global i64 0, align 8
@NS_BODY = common dso_local global i32 0, align 4
@NS_EXT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, %struct.TYPE_9__*)* @get_fileinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_fileinfo(%struct.TYPE_10__* %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8, align 1
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %4, align 8
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  %10 = load i8*, i8** %9, align 8
  %11 = getelementptr inbounds i8, i8* %10, i64 0
  store i8 0, i8* %11, align 1
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  br label %107

17:                                               ; preds = %2
  store i64 0, i64* %6, align 8
  store i64 0, i64* %5, align 8
  br label %18

18:                                               ; preds = %52, %33, %17
  %19 = load i64, i64* %5, align 8
  %20 = icmp ult i64 %19, 11
  br i1 %20, label %21, label %60

21:                                               ; preds = %18
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 2
  %24 = load i64*, i64** %23, align 8
  %25 = load i64, i64* %5, align 8
  %26 = add i64 %25, 1
  store i64 %26, i64* %5, align 8
  %27 = getelementptr inbounds i64, i64* %24, i64 %25
  %28 = load i64, i64* %27, align 8
  %29 = trunc i64 %28 to i8
  store i8 %29, i8* %7, align 1
  %30 = load i8, i8* %7, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 %31, 32
  br i1 %32, label %33, label %34

33:                                               ; preds = %21
  br label %18

34:                                               ; preds = %21
  %35 = load i8, i8* %7, align 1
  %36 = sext i8 %35 to i64
  %37 = load i64, i64* @RDDEM, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = load i8*, i8** @DDEM, align 8
  %41 = ptrtoint i8* %40 to i8
  store i8 %41, i8* %7, align 1
  br label %42

42:                                               ; preds = %39, %34
  %43 = load i64, i64* %5, align 8
  %44 = icmp eq i64 %43, 9
  br i1 %44, label %45, label %52

45:                                               ; preds = %42
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = load i64, i64* %6, align 8
  %50 = add i64 %49, 1
  store i64 %50, i64* %6, align 8
  %51 = getelementptr inbounds i8, i8* %48, i64 %49
  store i8 46, i8* %51, align 1
  br label %52

52:                                               ; preds = %45, %42
  %53 = load i8, i8* %7, align 1
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  %57 = load i64, i64* %6, align 8
  %58 = add i64 %57, 1
  store i64 %58, i64* %6, align 8
  %59 = getelementptr inbounds i8, i8* %56, i64 %57
  store i8 %53, i8* %59, align 1
  br label %18

60:                                               ; preds = %18
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  %64 = load i64, i64* %6, align 8
  %65 = getelementptr inbounds i8, i8* %63, i64 %64
  store i8 0, i8* %65, align 1
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 2
  %68 = load i64*, i64** %67, align 8
  %69 = load i64, i64* @DIR_Attr, align 8
  %70 = getelementptr inbounds i64, i64* %68, i64 %69
  %71 = load i64, i64* %70, align 8
  %72 = trunc i64 %71 to i32
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 2
  store i32 %72, i32* %74, align 8
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 2
  %77 = load i64*, i64** %76, align 8
  %78 = load i32, i32* @DIR_FileSize, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i64, i64* %77, i64 %79
  %81 = bitcast i64* %80 to i32*
  %82 = call i32 @ld_dword(i32* %81)
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 5
  store i32 %82, i32* %84, align 8
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 2
  %87 = load i64*, i64** %86, align 8
  %88 = load i32, i32* @DIR_ModTime, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i64, i64* %87, i64 %89
  %91 = getelementptr inbounds i64, i64* %90, i64 0
  %92 = bitcast i64* %91 to i32*
  %93 = call i8* @ld_word(i32* %92)
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 4
  store i8* %93, i8** %95, align 8
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 2
  %98 = load i64*, i64** %97, align 8
  %99 = load i32, i32* @DIR_ModTime, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i64, i64* %98, i64 %100
  %102 = getelementptr inbounds i64, i64* %101, i64 2
  %103 = bitcast i64* %102 to i32*
  %104 = call i8* @ld_word(i32* %103)
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 3
  store i8* %104, i8** %106, align 8
  br label %107

107:                                              ; preds = %60, %16
  ret void
}

declare dso_local i32 @ld_dword(i32*) #1

declare dso_local i8* @ld_word(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
