; ModuleID = '/home/carl/AnghaBench/esp-idf/components/spiffs/extr_esp_spiffs.c_vfs_spiffs_readdir_r.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/spiffs/extr_esp_spiffs.c_vfs_spiffs_readdir_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dirent = type { i32, i32, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.spiffs_dirent = type { i8*, i32 }

@errno = common dso_local global i32 0, align 4
@SPIFFS_OBJ_NAME_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, %struct.dirent*, %struct.dirent**)* @vfs_spiffs_readdir_r to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vfs_spiffs_readdir_r(i8* %0, i32* %1, %struct.dirent* %2, %struct.dirent** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.dirent*, align 8
  %9 = alloca %struct.dirent**, align 8
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca %struct.TYPE_3__*, align 8
  %12 = alloca %struct.spiffs_dirent, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.dirent* %2, %struct.dirent** %8, align 8
  store %struct.dirent** %3, %struct.dirent*** %9, align 8
  %15 = load i32*, i32** %7, align 8
  %16 = call i32 @assert(i32* %15)
  %17 = load i8*, i8** %6, align 8
  %18 = bitcast i8* %17 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %18, %struct.TYPE_4__** %10, align 8
  %19 = load i32*, i32** %7, align 8
  %20 = bitcast i32* %19 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %20, %struct.TYPE_3__** %11, align 8
  br label %21

21:                                               ; preds = %80, %4
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 2
  %24 = call i64 @SPIFFS_readdir(i32* %23, %struct.spiffs_dirent* %12)
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %42

26:                                               ; preds = %21
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @SPIFFS_errno(i32 %29)
  %31 = call i32 @spiffs_res_to_errno(i32 %30)
  store i32 %31, i32* @errno, align 4
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @SPIFFS_clearerr(i32 %34)
  %36 = load i32, i32* @errno, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %26
  %39 = load %struct.dirent**, %struct.dirent*** %9, align 8
  store %struct.dirent* null, %struct.dirent** %39, align 8
  br label %40

40:                                               ; preds = %38, %26
  %41 = load i32, i32* @errno, align 4
  store i32 %41, i32* %5, align 4
  br label %119

42:                                               ; preds = %21
  %43 = getelementptr inbounds %struct.spiffs_dirent, %struct.spiffs_dirent* %12, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  store i8* %44, i8** %14, align 8
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @strlen(i32 %47)
  store i64 %48, i64* %13, align 8
  br label %49

49:                                               ; preds = %42
  %50 = load i64, i64* %13, align 8
  %51 = icmp ugt i64 %50, 1
  br i1 %51, label %52, label %80

52:                                               ; preds = %49
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = getelementptr inbounds %struct.spiffs_dirent, %struct.spiffs_dirent* %12, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  %58 = load i64, i64* %13, align 8
  %59 = call i64 @strncasecmp(i32 %55, i8* %57, i64 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %78, label %61

61:                                               ; preds = %52
  %62 = getelementptr inbounds %struct.spiffs_dirent, %struct.spiffs_dirent* %12, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  %64 = load i64, i64* %13, align 8
  %65 = getelementptr inbounds i8, i8* %63, i64 %64
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp ne i32 %67, 47
  br i1 %68, label %78, label %69

69:                                               ; preds = %61
  %70 = getelementptr inbounds %struct.spiffs_dirent, %struct.spiffs_dirent* %12, i32 0, i32 0
  %71 = load i8*, i8** %70, align 8
  %72 = load i64, i64* %13, align 8
  %73 = add i64 %72, 1
  %74 = getelementptr inbounds i8, i8* %71, i64 %73
  %75 = load i8, i8* %74, align 1
  %76 = icmp ne i8 %75, 0
  %77 = xor i1 %76, true
  br label %78

78:                                               ; preds = %69, %61, %52
  %79 = phi i1 [ true, %61 ], [ true, %52 ], [ %77, %69 ]
  br label %80

80:                                               ; preds = %78, %49
  %81 = phi i1 [ false, %49 ], [ %79, %78 ]
  br i1 %81, label %21, label %82

82:                                               ; preds = %80
  %83 = load i64, i64* %13, align 8
  %84 = icmp ugt i64 %83, 1
  br i1 %84, label %85, label %90

85:                                               ; preds = %82
  %86 = load i64, i64* %13, align 8
  %87 = add i64 %86, 1
  %88 = load i8*, i8** %14, align 8
  %89 = getelementptr inbounds i8, i8* %88, i64 %87
  store i8* %89, i8** %14, align 8
  br label %100

90:                                               ; preds = %82
  %91 = load i8*, i8** %14, align 8
  %92 = getelementptr inbounds i8, i8* %91, i64 0
  %93 = load i8, i8* %92, align 1
  %94 = sext i8 %93 to i32
  %95 = icmp eq i32 %94, 47
  br i1 %95, label %96, label %99

96:                                               ; preds = %90
  %97 = load i8*, i8** %14, align 8
  %98 = getelementptr inbounds i8, i8* %97, i32 1
  store i8* %98, i8** %14, align 8
  br label %99

99:                                               ; preds = %96, %90
  br label %100

100:                                              ; preds = %99, %85
  %101 = load %struct.dirent*, %struct.dirent** %8, align 8
  %102 = getelementptr inbounds %struct.dirent, %struct.dirent* %101, i32 0, i32 2
  store i64 0, i64* %102, align 8
  %103 = getelementptr inbounds %struct.spiffs_dirent, %struct.spiffs_dirent* %12, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.dirent*, %struct.dirent** %8, align 8
  %106 = getelementptr inbounds %struct.dirent, %struct.dirent* %105, i32 0, i32 1
  store i32 %104, i32* %106, align 4
  %107 = load %struct.dirent*, %struct.dirent** %8, align 8
  %108 = getelementptr inbounds %struct.dirent, %struct.dirent* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* @SPIFFS_OBJ_NAME_LEN, align 4
  %111 = load i8*, i8** %14, align 8
  %112 = call i32 @snprintf(i32 %109, i32 %110, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %111)
  %113 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %114, align 4
  %117 = load %struct.dirent*, %struct.dirent** %8, align 8
  %118 = load %struct.dirent**, %struct.dirent*** %9, align 8
  store %struct.dirent* %117, %struct.dirent** %118, align 8
  store i32 0, i32* %5, align 4
  br label %119

119:                                              ; preds = %100, %40
  %120 = load i32, i32* %5, align 4
  ret i32 %120
}

declare dso_local i32 @assert(i32*) #1

declare dso_local i64 @SPIFFS_readdir(i32*, %struct.spiffs_dirent*) #1

declare dso_local i32 @spiffs_res_to_errno(i32) #1

declare dso_local i32 @SPIFFS_errno(i32) #1

declare dso_local i32 @SPIFFS_clearerr(i32) #1

declare dso_local i64 @strlen(i32) #1

declare dso_local i64 @strncasecmp(i32, i8*, i64) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
