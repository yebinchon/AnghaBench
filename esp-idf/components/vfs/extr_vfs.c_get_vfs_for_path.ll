; ModuleID = '/home/carl/AnghaBench/esp-idf/components/vfs/extr_vfs.c_get_vfs_for_path.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/vfs/extr_vfs.c_get_vfs_for_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32 }

@s_vfs_count = common dso_local global i64 0, align 8
@s_vfs = common dso_local global %struct.TYPE_4__** null, align 8
@LEN_PATH_PREFIX_IGNORED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_4__* (i8*)* @get_vfs_for_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_4__* @get_vfs_for_path(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  store i8* %0, i8** %2, align 8
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %3, align 8
  store i64 -1, i64* %4, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = call i64 @strlen(i8* %8)
  store i64 %9, i64* %5, align 8
  store i64 0, i64* %6, align 8
  br label %10

10:                                               ; preds = %83, %1
  %11 = load i64, i64* %6, align 8
  %12 = load i64, i64* @s_vfs_count, align 8
  %13 = icmp ult i64 %11, %12
  br i1 %13, label %14, label %86

14:                                               ; preds = %10
  %15 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @s_vfs, align 8
  %16 = load i64, i64* %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %15, i64 %16
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  store %struct.TYPE_4__* %18, %struct.TYPE_4__** %7, align 8
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %20 = icmp ne %struct.TYPE_4__* %19, null
  br i1 %20, label %21, label %27

21:                                               ; preds = %14
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @LEN_PATH_PREFIX_IGNORED, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %21, %14
  br label %83

28:                                               ; preds = %21
  %29 = load i64, i64* %5, align 8
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ult i64 %29, %32
  br i1 %33, label %44, label %34

34:                                               ; preds = %28
  %35 = load i8*, i8** %2, align 8
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = call i64 @memcmp(i8* %35, i32 %38, i64 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %34, %28
  br label %83

45:                                               ; preds = %34
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %45
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %52 = icmp ne %struct.TYPE_4__* %51, null
  br i1 %52, label %55, label %53

53:                                               ; preds = %50
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  store %struct.TYPE_4__* %54, %struct.TYPE_4__** %3, align 8
  br label %83

55:                                               ; preds = %50, %45
  %56 = load i64, i64* %5, align 8
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp ugt i64 %56, %59
  br i1 %60, label %61, label %71

61:                                               ; preds = %55
  %62 = load i8*, i8** %2, align 8
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = getelementptr inbounds i8, i8* %62, i64 %65
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp ne i32 %68, 47
  br i1 %69, label %70, label %71

70:                                               ; preds = %61
  br label %83

71:                                               ; preds = %61, %55
  %72 = load i64, i64* %4, align 8
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp slt i64 %72, %75
  br i1 %76, label %77, label %82

77:                                               ; preds = %71
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  store i64 %80, i64* %4, align 8
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  store %struct.TYPE_4__* %81, %struct.TYPE_4__** %3, align 8
  br label %82

82:                                               ; preds = %77, %71
  br label %83

83:                                               ; preds = %82, %70, %53, %44, %27
  %84 = load i64, i64* %6, align 8
  %85 = add i64 %84, 1
  store i64 %85, i64* %6, align 8
  br label %10

86:                                               ; preds = %10
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  ret %struct.TYPE_4__* %87
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @memcmp(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
