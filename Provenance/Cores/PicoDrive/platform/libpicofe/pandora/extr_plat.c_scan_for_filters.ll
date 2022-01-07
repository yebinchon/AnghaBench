; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/libpicofe/pandora/extr_plat.c_scan_for_filters.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/libpicofe/pandora/extr_plat.c_scan_for_filters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8** }
%struct.dirent = type { i64, i64 }

@.str = private unnamed_addr constant [26 x i8] c"/etc/pandora/conf/dss_fir\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"filter opendir\00", align 1
@errno = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"readdir\00", align 1
@DT_REG = common dso_local global i64 0, align 8
@DT_LNK = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [4 x i8] c"_v3\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"_v5\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"_up_h\00", align 1
@plat_target = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @scan_for_filters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scan_for_filters() #0 {
  %1 = alloca %struct.dirent*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca [64 x i8], align 16
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  store i32 0, i32* %3, align 4
  %8 = call i32* @opendir(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  store i32* %8, i32** %6, align 8
  %9 = load i32*, i32** %6, align 8
  %10 = icmp eq i32* %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %0
  %12 = call i32 @perror(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %150

13:                                               ; preds = %0
  br label %14

14:                                               ; preds = %13, %37, %38
  store i64 0, i64* @errno, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = call %struct.dirent* @readdir(i32* %15)
  store %struct.dirent* %16, %struct.dirent** %1, align 8
  %17 = load %struct.dirent*, %struct.dirent** %1, align 8
  %18 = icmp eq %struct.dirent* %17, null
  br i1 %18, label %19, label %25

19:                                               ; preds = %14
  %20 = load i64, i64* @errno, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = call i32 @perror(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  br label %24

24:                                               ; preds = %22, %19
  br label %41

25:                                               ; preds = %14
  %26 = load %struct.dirent*, %struct.dirent** %1, align 8
  %27 = getelementptr inbounds %struct.dirent, %struct.dirent* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @DT_REG, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %38

31:                                               ; preds = %25
  %32 = load %struct.dirent*, %struct.dirent** %1, align 8
  %33 = getelementptr inbounds %struct.dirent, %struct.dirent* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @DT_LNK, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  br label %14

38:                                               ; preds = %31, %25
  %39 = load i32, i32* %3, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %3, align 4
  br label %14

41:                                               ; preds = %24
  %42 = load i32, i32* %3, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  br label %150

45:                                               ; preds = %41
  %46 = load i32, i32* %3, align 4
  %47 = add nsw i32 %46, 1
  %48 = call i8** @calloc(i32 %47, i32 8)
  store i8** %48, i8*** %4, align 8
  %49 = load i8**, i8*** %4, align 8
  %50 = icmp eq i8** %49, null
  br i1 %50, label %51, label %52

51:                                               ; preds = %45
  br label %150

52:                                               ; preds = %45
  %53 = load i32*, i32** %6, align 8
  %54 = call i32 @rewinddir(i32* %53)
  store i32 0, i32* %2, align 4
  br label %55

55:                                               ; preds = %145, %120, %101, %88, %71, %52
  %56 = load i32*, i32** %6, align 8
  %57 = call %struct.dirent* @readdir(i32* %56)
  store %struct.dirent* %57, %struct.dirent** %1, align 8
  %58 = icmp ne %struct.dirent* %57, null
  br i1 %58, label %59, label %146

59:                                               ; preds = %55
  %60 = load %struct.dirent*, %struct.dirent** %1, align 8
  %61 = getelementptr inbounds %struct.dirent, %struct.dirent* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @DT_REG, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %65, label %72

65:                                               ; preds = %59
  %66 = load %struct.dirent*, %struct.dirent** %1, align 8
  %67 = getelementptr inbounds %struct.dirent, %struct.dirent* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @DT_LNK, align 8
  %70 = icmp ne i64 %68, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %65
  br label %55

72:                                               ; preds = %65, %59
  %73 = load %struct.dirent*, %struct.dirent** %1, align 8
  %74 = getelementptr inbounds %struct.dirent, %struct.dirent* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = call i64 @strlen(i64 %75)
  store i64 %76, i64* %7, align 8
  %77 = load i64, i64* %7, align 8
  %78 = icmp uge i64 %77, 3
  br i1 %78, label %79, label %89

79:                                               ; preds = %72
  %80 = load %struct.dirent*, %struct.dirent** %1, align 8
  %81 = getelementptr inbounds %struct.dirent, %struct.dirent* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* %7, align 8
  %84 = add i64 %82, %83
  %85 = sub i64 %84, 3
  %86 = call i64 @strcmp(i64 %85, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %79
  br label %55

89:                                               ; preds = %79, %72
  %90 = load i64, i64* %7, align 8
  %91 = icmp uge i64 %90, 3
  br i1 %91, label %92, label %102

92:                                               ; preds = %89
  %93 = load %struct.dirent*, %struct.dirent** %1, align 8
  %94 = getelementptr inbounds %struct.dirent, %struct.dirent* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* %7, align 8
  %97 = add i64 %95, %96
  %98 = sub i64 %97, 3
  %99 = call i64 @strcmp(i64 %98, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %100 = icmp eq i64 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %92
  br label %55

102:                                              ; preds = %92, %89
  %103 = load i64, i64* %7, align 8
  %104 = icmp ugt i64 %103, 5
  br i1 %104, label %105, label %117

105:                                              ; preds = %102
  %106 = load %struct.dirent*, %struct.dirent** %1, align 8
  %107 = getelementptr inbounds %struct.dirent, %struct.dirent* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* %7, align 8
  %110 = add i64 %108, %109
  %111 = sub i64 %110, 5
  %112 = call i64 @strcmp(i64 %111, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %113 = icmp eq i64 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %105
  %115 = load i64, i64* %7, align 8
  %116 = sub i64 %115, 5
  store i64 %116, i64* %7, align 8
  br label %117

117:                                              ; preds = %114, %105, %102
  %118 = load i64, i64* %7, align 8
  %119 = icmp ugt i64 %118, 63
  br i1 %119, label %120, label %121

120:                                              ; preds = %117
  br label %55

121:                                              ; preds = %117
  %122 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %123 = load %struct.dirent*, %struct.dirent** %1, align 8
  %124 = getelementptr inbounds %struct.dirent, %struct.dirent* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* %7, align 8
  %127 = call i32 @strncpy(i8* %122, i64 %125, i64 %126)
  %128 = load i64, i64* %7, align 8
  %129 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 %128
  store i8 0, i8* %129, align 1
  %130 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %131 = call i8* @strdup(i8* %130)
  %132 = load i8**, i8*** %4, align 8
  %133 = load i32, i32* %2, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i8*, i8** %132, i64 %134
  store i8* %131, i8** %135, align 8
  %136 = load i8**, i8*** %4, align 8
  %137 = load i32, i32* %2, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i8*, i8** %136, i64 %138
  %140 = load i8*, i8** %139, align 8
  %141 = icmp ne i8* %140, null
  br i1 %141, label %142, label %145

142:                                              ; preds = %121
  %143 = load i32, i32* %2, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %2, align 4
  br label %145

145:                                              ; preds = %142, %121
  br label %55

146:                                              ; preds = %55
  %147 = load i32*, i32** %6, align 8
  %148 = call i32 @closedir(i32* %147)
  %149 = load i8**, i8*** %4, align 8
  store i8** %149, i8*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @plat_target, i32 0, i32 0), align 8
  br label %150

150:                                              ; preds = %146, %51, %44, %11
  ret void
}

declare dso_local i32* @opendir(i8*) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local %struct.dirent* @readdir(i32*) #1

declare dso_local i8** @calloc(i32, i32) #1

declare dso_local i32 @rewinddir(i32*) #1

declare dso_local i64 @strlen(i64) #1

declare dso_local i64 @strcmp(i64, i8*) #1

declare dso_local i32 @strncpy(i8*, i64, i64) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @closedir(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
