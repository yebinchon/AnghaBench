; ModuleID = '/home/carl/AnghaBench/ZipArchive/SSZipArchive/minizip/extr_mz_compat.c_zipOpenNewFileInZip5.c'
source_filename = "/home/carl/AnghaBench/ZipArchive/SSZipArchive/minizip/extr_mz_compat.c_zipOpenNewFileInZip5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32, i32, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i8*, i8*, i32, i32, i32, i8*, i8*, i8*, i8*, i32, i32, i32 }

@ZIP_PARAMERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"-\00", align 1
@MZ_ZIP64_FORCE = common dso_local global i32 0, align 4
@MZ_ZIP64_DISABLE = common dso_local global i32 0, align 4
@MZ_AES_VERSION = common dso_local global i32 0, align 4
@MZ_ZIP_FLAG_ENCRYPTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zipOpenNewFileInZip5(i64 %0, i8* %1, %struct.TYPE_7__* %2, i8* %3, i8* %4, i8* %5, i8* %6, i8* %7, i8* %8, i32 %9, i32 %10, i32 %11, i32 %12, i32 %13, i8* %14, i8 signext %15, i8* %16, i8* %17, i32 %18) #0 {
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca i8*, align 8
  %23 = alloca %struct.TYPE_7__*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i8*, align 8
  %28 = alloca i8*, align 8
  %29 = alloca i8*, align 8
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i8*, align 8
  %36 = alloca i8, align 1
  %37 = alloca i8*, align 8
  %38 = alloca i8*, align 8
  %39 = alloca i32, align 4
  %40 = alloca %struct.TYPE_9__*, align 8
  %41 = alloca %struct.TYPE_8__, align 8
  %42 = alloca i64, align 8
  store i64 %0, i64* %21, align 8
  store i8* %1, i8** %22, align 8
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %23, align 8
  store i8* %3, i8** %24, align 8
  store i8* %4, i8** %25, align 8
  store i8* %5, i8** %26, align 8
  store i8* %6, i8** %27, align 8
  store i8* %7, i8** %28, align 8
  store i8* %8, i8** %29, align 8
  store i32 %9, i32* %30, align 4
  store i32 %10, i32* %31, align 4
  store i32 %11, i32* %32, align 4
  store i32 %12, i32* %33, align 4
  store i32 %13, i32* %34, align 4
  store i8* %14, i8** %35, align 8
  store i8 %15, i8* %36, align 1
  store i8* %16, i8** %37, align 8
  store i8* %17, i8** %38, align 8
  store i32 %18, i32* %39, align 4
  %43 = load i64, i64* %21, align 8
  %44 = inttoptr i64 %43 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %44, %struct.TYPE_9__** %40, align 8
  store i64 0, i64* %42, align 8
  %45 = load i32, i32* %34, align 4
  %46 = sext i32 %45 to i64
  %47 = inttoptr i64 %46 to i8*
  %48 = call i32 @MZ_UNUSED(i8* %47)
  %49 = load i32, i32* %33, align 4
  %50 = sext i32 %49 to i64
  %51 = inttoptr i64 %50 to i8*
  %52 = call i32 @MZ_UNUSED(i8* %51)
  %53 = load i32, i32* %32, align 4
  %54 = sext i32 %53 to i64
  %55 = inttoptr i64 %54 to i8*
  %56 = call i32 @MZ_UNUSED(i8* %55)
  %57 = load i8*, i8** %25, align 8
  %58 = call i32 @MZ_UNUSED(i8* %57)
  %59 = load i8*, i8** %24, align 8
  %60 = call i32 @MZ_UNUSED(i8* %59)
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %40, align 8
  %62 = icmp eq %struct.TYPE_9__* %61, null
  br i1 %62, label %63, label %65

63:                                               ; preds = %19
  %64 = load i32, i32* @ZIP_PARAMERROR, align 4
  store i32 %64, i32* %20, align 4
  br label %130

65:                                               ; preds = %19
  %66 = call i32 @memset(%struct.TYPE_8__* %41, i32 0, i32 80)
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %23, align 8
  %68 = icmp ne %struct.TYPE_7__* %67, null
  br i1 %68, label %69, label %94

69:                                               ; preds = %65
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %23, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %69
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %23, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  store i64 %77, i64* %42, align 8
  br label %82

78:                                               ; preds = %69
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %23, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 3
  %81 = call i64 @mz_zip_tm_to_dosdate(i32* %80)
  store i64 %81, i64* %42, align 8
  br label %82

82:                                               ; preds = %78, %74
  %83 = load i64, i64* %42, align 8
  %84 = call i32 @mz_zip_dosdate_to_time_t(i64 %83)
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 11
  store i32 %84, i32* %85, align 8
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %23, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 10
  store i32 %88, i32* %89, align 4
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %23, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 9
  store i32 %92, i32* %93, align 8
  br label %94

94:                                               ; preds = %82, %65
  %95 = load i8*, i8** %22, align 8
  %96 = icmp eq i8* %95, null
  br i1 %96, label %97, label %98

97:                                               ; preds = %94
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %22, align 8
  br label %98

98:                                               ; preds = %97, %94
  %99 = load i8*, i8** %29, align 8
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 8
  store i8* %99, i8** %100, align 8
  %101 = load i8*, i8** %22, align 8
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  store i8* %101, i8** %102, align 8
  %103 = load i8*, i8** %26, align 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 7
  store i8* %103, i8** %104, align 8
  %105 = load i8*, i8** %27, align 8
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 6
  store i8* %105, i8** %106, align 8
  %107 = load i8*, i8** %37, align 8
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 5
  store i8* %107, i8** %108, align 8
  %109 = load i8*, i8** %28, align 8
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 1
  store i8* %109, i8** %110, align 8
  %111 = load i8*, i8** %38, align 8
  %112 = ptrtoint i8* %111 to i32
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 2
  store i32 %112, i32* %113, align 8
  %114 = load i32, i32* %39, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %98
  %117 = load i32, i32* @MZ_ZIP64_FORCE, align 4
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 4
  store i32 %117, i32* %118, align 8
  br label %122

119:                                              ; preds = %98
  %120 = load i32, i32* @MZ_ZIP64_DISABLE, align 4
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 4
  store i32 %120, i32* %121, align 8
  br label %122

122:                                              ; preds = %119, %116
  %123 = load %struct.TYPE_9__*, %struct.TYPE_9__** %40, align 8
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* %30, align 4
  %127 = load i32, i32* %31, align 4
  %128 = load i8*, i8** %35, align 8
  %129 = call i32 @mz_zip_entry_write_open(i32 %125, %struct.TYPE_8__* %41, i32 %126, i32 %127, i8* %128)
  store i32 %129, i32* %20, align 4
  br label %130

130:                                              ; preds = %122, %63
  %131 = load i32, i32* %20, align 4
  ret i32 %131
}

declare dso_local i32 @MZ_UNUSED(i8*) #1

declare dso_local i32 @memset(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i64 @mz_zip_tm_to_dosdate(i32*) #1

declare dso_local i32 @mz_zip_dosdate_to_time_t(i64) #1

declare dso_local i32 @mz_zip_entry_write_open(i32, %struct.TYPE_8__*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
