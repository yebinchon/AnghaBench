; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_atari_ps2.c_Atari_ReadDir.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_atari_ps2.c_Atari_ReadDir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_4__, i64, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }

@dir_i = common dso_local global i64 0, align 8
@dir_n = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@mcDir = common dso_local global %struct.TYPE_5__* null, align 8
@dir_path = common dso_local global i32 0, align 4
@MC_ATTR_SUBDIR = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@MC_ATTR_WRITEABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"%2d-%02d-%02d %2d:%02d%c\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Atari_ReadDir(i8* %0, i8* %1, i32* %2, i32* %3, i32* %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.TYPE_5__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8, align 1
  store i8* %0, i8** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i8* %5, i8** %13, align 8
  %17 = load i64, i64* @dir_i, align 8
  %18 = load i64, i64* @dir_n, align 8
  %19 = icmp sge i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %6
  %21 = load i32, i32* @FALSE, align 4
  store i32 %21, i32* %7, align 4
  br label %130

22:                                               ; preds = %6
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** @mcDir, align 8
  %24 = load i64, i64* @dir_i, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i64 %24
  store %struct.TYPE_5__* %25, %struct.TYPE_5__** %14, align 8
  %26 = load i8*, i8** %8, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %35

28:                                               ; preds = %22
  %29 = load i8*, i8** %8, align 8
  %30 = load i32, i32* @dir_path, align 4
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @Util_catpath(i8* %29, i32 %30, i32 %33)
  br label %35

35:                                               ; preds = %28, %22
  %36 = load i8*, i8** %9, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %44

38:                                               ; preds = %35
  %39 = load i8*, i8** %9, align 8
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @strcpy(i8* %39, i32 %42)
  br label %44

44:                                               ; preds = %38, %35
  %45 = load i32*, i32** %10, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %47, label %61

47:                                               ; preds = %44
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @MC_ATTR_SUBDIR, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %47
  %55 = load i32, i32* @TRUE, align 4
  br label %58

56:                                               ; preds = %47
  %57 = load i32, i32* @FALSE, align 4
  br label %58

58:                                               ; preds = %56, %54
  %59 = phi i32 [ %55, %54 ], [ %57, %56 ]
  %60 = load i32*, i32** %10, align 8
  store i32 %59, i32* %60, align 4
  br label %61

61:                                               ; preds = %58, %44
  %62 = load i32*, i32** %11, align 8
  %63 = icmp ne i32* %62, null
  br i1 %63, label %64, label %78

64:                                               ; preds = %61
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @MC_ATTR_WRITEABLE, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %64
  %72 = load i32, i32* @FALSE, align 4
  br label %75

73:                                               ; preds = %64
  %74 = load i32, i32* @TRUE, align 4
  br label %75

75:                                               ; preds = %73, %71
  %76 = phi i32 [ %72, %71 ], [ %74, %73 ]
  %77 = load i32*, i32** %11, align 8
  store i32 %76, i32* %77, align 4
  br label %78

78:                                               ; preds = %75, %61
  %79 = load i32*, i32** %12, align 8
  %80 = icmp ne i32* %79, null
  br i1 %80, label %81, label %87

81:                                               ; preds = %78
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = trunc i64 %84 to i32
  %86 = load i32*, i32** %12, align 8
  store i32 %85, i32* %86, align 4
  br label %87

87:                                               ; preds = %81, %78
  %88 = load i8*, i8** %13, align 8
  %89 = icmp ne i8* %88, null
  br i1 %89, label %90, label %126

90:                                               ; preds = %87
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  store i32 %94, i32* %15, align 4
  store i8 97, i8* %16, align 1
  %95 = load i32, i32* %15, align 4
  %96 = icmp sge i32 %95, 12
  br i1 %96, label %97, label %100

97:                                               ; preds = %90
  %98 = load i32, i32* %15, align 4
  %99 = sub nsw i32 %98, 12
  store i32 %99, i32* %15, align 4
  store i8 112, i8* %16, align 1
  br label %100

100:                                              ; preds = %97, %90
  %101 = load i32, i32* %15, align 4
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %100
  store i32 12, i32* %15, align 4
  br label %104

104:                                              ; preds = %103, %100
  %105 = load i8*, i8** %13, align 8
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 4
  %118 = srem i32 %117, 100
  %119 = load i32, i32* %15, align 4
  %120 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 4
  %123 = load i32, i32* %122, align 4
  %124 = load i8, i8* %16, align 1
  %125 = call i32 @sprintf(i8* %105, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %109, i32 %113, i32 %118, i32 %119, i32 %123, i8 signext %124)
  br label %126

126:                                              ; preds = %104, %87
  %127 = load i64, i64* @dir_i, align 8
  %128 = add nsw i64 %127, 1
  store i64 %128, i64* @dir_i, align 8
  %129 = load i32, i32* @TRUE, align 4
  store i32 %129, i32* %7, align 4
  br label %130

130:                                              ; preds = %126, %20
  %131 = load i32, i32* %7, align 4
  ret i32 %131
}

declare dso_local i32 @Util_catpath(i8*, i32, i32) #1

declare dso_local i32 @strcpy(i8*, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32, i32, i32, i32, i32, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
