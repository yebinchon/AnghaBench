; ModuleID = '/home/carl/AnghaBench/darwin-xnu/tools/tests/personas/extr_persona_test.h__dump_kpersona.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/tools/tests/personas/extr_persona_test.h__dump_kpersona.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kpersona_info = type { i32, i32, i64, i32*, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"\09 kpersona_info (v%d) {\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"\09\09     %cid:  %d\00", align 1
@PA_HAS_ID = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"\09\09     %ctype:  %d\00", align 1
@PA_HAS_TYPE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [17 x i8] c"\09\09    %cgid:  %d\00", align 1
@PA_HAS_GID = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [17 x i8] c"\09\09  ngroups:  %d\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c" {\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c" }\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"\09\09  %cgmuid: %d (0x%x)\00", align 1
@PA_HAS_GROUPS = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [18 x i8] c"\09\09  %clogin: \22%s\22\00", align 1
@PA_HAS_LOGIN = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [4 x i8] c"\09 }\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, %struct.kpersona_info*)* @_dump_kpersona to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_dump_kpersona(i8* %0, i32 %1, %struct.kpersona_info* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.kpersona_info*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.kpersona_info* %2, %struct.kpersona_info** %6, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %3
  %11 = load i8*, i8** %4, align 8
  %12 = call i32 (i8*, ...) @info(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %11)
  br label %13

13:                                               ; preds = %10, %3
  %14 = load %struct.kpersona_info*, %struct.kpersona_info** %6, align 8
  %15 = getelementptr inbounds %struct.kpersona_info, %struct.kpersona_info* %14, i32 0, i32 7
  %16 = load i32, i32* %15, align 4
  %17 = call i32 (i8*, ...) @info(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %16)
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @PA_HAS_ID, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  %22 = zext i1 %21 to i64
  %23 = select i1 %21, i32 43, i32 45
  %24 = load %struct.kpersona_info*, %struct.kpersona_info** %6, align 8
  %25 = getelementptr inbounds %struct.kpersona_info, %struct.kpersona_info* %24, i32 0, i32 6
  %26 = load i32, i32* %25, align 8
  %27 = call i32 (i8*, ...) @info(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %23, i32 %26)
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @PA_HAS_TYPE, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  %32 = zext i1 %31 to i64
  %33 = select i1 %31, i32 43, i32 45
  %34 = load %struct.kpersona_info*, %struct.kpersona_info** %6, align 8
  %35 = getelementptr inbounds %struct.kpersona_info, %struct.kpersona_info* %34, i32 0, i32 5
  %36 = load i32, i32* %35, align 4
  %37 = call i32 (i8*, ...) @info(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %33, i32 %36)
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @PA_HAS_GID, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  %42 = zext i1 %41 to i64
  %43 = select i1 %41, i32 43, i32 45
  %44 = load %struct.kpersona_info*, %struct.kpersona_info** %6, align 8
  %45 = getelementptr inbounds %struct.kpersona_info, %struct.kpersona_info* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 8
  %47 = call i32 (i8*, ...) @info(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 %43, i32 %46)
  %48 = load %struct.kpersona_info*, %struct.kpersona_info** %6, align 8
  %49 = getelementptr inbounds %struct.kpersona_info, %struct.kpersona_info* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @info_start(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i32 %50)
  store i32 0, i32* %7, align 4
  br label %52

52:                                               ; preds = %72, %13
  %53 = load i32, i32* %7, align 4
  %54 = load %struct.kpersona_info*, %struct.kpersona_info** %6, align 8
  %55 = getelementptr inbounds %struct.kpersona_info, %struct.kpersona_info* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp slt i32 %53, %56
  br i1 %57, label %58, label %75

58:                                               ; preds = %52
  %59 = load i32, i32* %7, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %58
  %62 = call i32 (i8*, ...) @info_cont(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  br label %63

63:                                               ; preds = %61, %58
  %64 = load %struct.kpersona_info*, %struct.kpersona_info** %6, align 8
  %65 = getelementptr inbounds %struct.kpersona_info, %struct.kpersona_info* %64, i32 0, i32 3
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* %7, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = call i32 (i8*, ...) @info_cont(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i32 %70)
  br label %72

72:                                               ; preds = %63
  %73 = load i32, i32* %7, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %7, align 4
  br label %52

75:                                               ; preds = %52
  %76 = load %struct.kpersona_info*, %struct.kpersona_info** %6, align 8
  %77 = getelementptr inbounds %struct.kpersona_info, %struct.kpersona_info* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = icmp sgt i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %75
  %81 = call i32 (i8*, ...) @info_cont(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0))
  br label %82

82:                                               ; preds = %80, %75
  %83 = call i32 (...) @info_end()
  %84 = load i32, i32* %5, align 4
  %85 = load i32, i32* @PA_HAS_GROUPS, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  %88 = zext i1 %87 to i64
  %89 = select i1 %87, i32 43, i32 45
  %90 = load %struct.kpersona_info*, %struct.kpersona_info** %6, align 8
  %91 = getelementptr inbounds %struct.kpersona_info, %struct.kpersona_info* %90, i32 0, i32 2
  %92 = load i64, i64* %91, align 8
  %93 = trunc i64 %92 to i32
  %94 = load %struct.kpersona_info*, %struct.kpersona_info** %6, align 8
  %95 = getelementptr inbounds %struct.kpersona_info, %struct.kpersona_info* %94, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  %97 = call i32 (i8*, ...) @info(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0), i32 %89, i32 %93, i64 %96)
  %98 = load i32, i32* %5, align 4
  %99 = load i32, i32* @PA_HAS_LOGIN, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  %102 = zext i1 %101 to i64
  %103 = select i1 %101, i32 43, i32 45
  %104 = load %struct.kpersona_info*, %struct.kpersona_info** %6, align 8
  %105 = getelementptr inbounds %struct.kpersona_info, %struct.kpersona_info* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = call i32 (i8*, ...) @info(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0), i32 %103, i32 %106)
  %108 = call i32 (i8*, ...) @info(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0))
  ret void
}

declare dso_local i32 @info(i8*, ...) #1

declare dso_local i32 @info_start(i8*, i32) #1

declare dso_local i32 @info_cont(i8*, ...) #1

declare dso_local i32 @info_end(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
