; ModuleID = '/home/carl/AnghaBench/darwin-xnu/tools/tests/personas/extr_persona_mgr.c_persona_op_lookup.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/tools/tests/personas/extr_persona_mgr.c_persona_op_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kpersona_info = type { i64*, i8* }

@.str = private unnamed_addr constant [46 x i8] c"Looking up persona (login:%s, pid:%d, uid:%d)\00", align 1
@PERSONA_INFO_V1 = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"pidinfo failed!\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"Persona-for-pid:\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"kpersona_find returned %d (errno:%d)\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [20 x i8] c"Found %zu persona%c\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"\09persona[%d]=%d...\00", align 1
@.str.6 = private unnamed_addr constant [48 x i8] c"kpersona_info failed (errno:%d) for persona[%d]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kpersona_info*, i64, i8)* @persona_op_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @persona_op_lookup(%struct.kpersona_info* %0, i64 %1, i8 signext %2) #0 {
  %4 = alloca %struct.kpersona_info*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [128 x i8], align 16
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  store %struct.kpersona_info* %0, %struct.kpersona_info** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8 %2, i8* %6, align 1
  %12 = load %struct.kpersona_info*, %struct.kpersona_info** %4, align 8
  %13 = getelementptr inbounds %struct.kpersona_info, %struct.kpersona_info* %12, i32 0, i32 0
  %14 = load i64*, i64** %13, align 8
  %15 = load i64, i64* %5, align 8
  %16 = load i8, i8* %6, align 1
  %17 = sext i8 %16 to i32
  %18 = call i32 (i8*, ...) @info(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i64* %14, i64 %15, i32 %17)
  %19 = load i64, i64* %5, align 8
  %20 = icmp sgt i64 %19, 0
  br i1 %20, label %21, label %36

21:                                               ; preds = %3
  %22 = load i8*, i8** @PERSONA_INFO_V1, align 8
  %23 = load %struct.kpersona_info*, %struct.kpersona_info** %4, align 8
  %24 = getelementptr inbounds %struct.kpersona_info, %struct.kpersona_info* %23, i32 0, i32 1
  store i8* %22, i8** %24, align 8
  %25 = load i64, i64* %5, align 8
  %26 = load %struct.kpersona_info*, %struct.kpersona_info** %4, align 8
  %27 = call i32 @kpersona_pidinfo(i64 %25, %struct.kpersona_info* %26)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %21
  %31 = call i32 @err_print(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  br label %35

32:                                               ; preds = %21
  %33 = load %struct.kpersona_info*, %struct.kpersona_info** %4, align 8
  %34 = call i32 @dump_kpersona(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), %struct.kpersona_info* %33)
  br label %35

35:                                               ; preds = %32, %30
  br label %105

36:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  %37 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i64 0, i64 0
  %38 = call i64 @ARRAY_SZ(i8* %37)
  store i64 %38, i64* %10, align 8
  store i8* null, i8** %11, align 8
  %39 = load %struct.kpersona_info*, %struct.kpersona_info** %4, align 8
  %40 = getelementptr inbounds %struct.kpersona_info, %struct.kpersona_info* %39, i32 0, i32 0
  %41 = load i64*, i64** %40, align 8
  %42 = getelementptr inbounds i64, i64* %41, i64 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %36
  %46 = load %struct.kpersona_info*, %struct.kpersona_info** %4, align 8
  %47 = getelementptr inbounds %struct.kpersona_info, %struct.kpersona_info* %46, i32 0, i32 0
  %48 = load i64*, i64** %47, align 8
  %49 = bitcast i64* %48 to i8*
  store i8* %49, i8** %11, align 8
  br label %50

50:                                               ; preds = %45, %36
  %51 = load i8*, i8** %11, align 8
  %52 = load i8, i8* %6, align 1
  %53 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i64 0, i64 0
  %54 = call i32 @kpersona_find(i8* %51, i8 signext %52, i8* %53, i64* %10)
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %8, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %50
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* @errno, align 4
  %60 = trunc i32 %59 to i8
  %61 = call i32 @err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %58, i8 signext %60)
  br label %62

62:                                               ; preds = %57, %50
  %63 = load i64, i64* %10, align 8
  %64 = load i64, i64* %10, align 8
  %65 = icmp ne i64 %64, 1
  %66 = zext i1 %65 to i64
  %67 = select i1 %65, i32 115, i32 32
  %68 = call i32 (i8*, ...) @info(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i64 %63, i32 %67)
  %69 = load i64, i64* %10, align 8
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* %8, align 4
  br label %71

71:                                               ; preds = %101, %62
  %72 = load i32, i32* %8, align 4
  %73 = add nsw i32 %72, -1
  store i32 %73, i32* %8, align 4
  %74 = icmp ne i32 %72, 0
  br i1 %74, label %75, label %104

75:                                               ; preds = %71
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* %8, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i64 0, i64 %78
  %80 = load i8, i8* %79, align 1
  %81 = sext i8 %80 to i32
  %82 = call i32 (i8*, ...) @info(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i32 %76, i32 %81)
  %83 = load i8*, i8** @PERSONA_INFO_V1, align 8
  %84 = load %struct.kpersona_info*, %struct.kpersona_info** %4, align 8
  %85 = getelementptr inbounds %struct.kpersona_info, %struct.kpersona_info* %84, i32 0, i32 1
  store i8* %83, i8** %85, align 8
  %86 = load i32, i32* %8, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i64 0, i64 %87
  %89 = load i8, i8* %88, align 1
  %90 = load %struct.kpersona_info*, %struct.kpersona_info** %4, align 8
  %91 = call i32 @kpersona_info(i8 signext %89, %struct.kpersona_info* %90)
  store i32 %91, i32* %7, align 4
  %92 = load i32, i32* %7, align 4
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %101

94:                                               ; preds = %75
  %95 = load i32, i32* @errno, align 4
  %96 = load i32, i32* %8, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i64 0, i64 %97
  %99 = load i8, i8* %98, align 1
  %100 = call i32 @err(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.6, i64 0, i64 0), i32 %95, i8 signext %99)
  br label %101

101:                                              ; preds = %94, %75
  %102 = load %struct.kpersona_info*, %struct.kpersona_info** %4, align 8
  %103 = call i32 @dump_kpersona(i8* null, %struct.kpersona_info* %102)
  br label %71

104:                                              ; preds = %71
  br label %105

105:                                              ; preds = %104, %35
  %106 = load i32, i32* %7, align 4
  ret i32 %106
}

declare dso_local i32 @info(i8*, ...) #1

declare dso_local i32 @kpersona_pidinfo(i64, %struct.kpersona_info*) #1

declare dso_local i32 @err_print(i8*) #1

declare dso_local i32 @dump_kpersona(i8*, %struct.kpersona_info*) #1

declare dso_local i64 @ARRAY_SZ(i8*) #1

declare dso_local i32 @kpersona_find(i8*, i8 signext, i8*, i64*) #1

declare dso_local i32 @err(i8*, i32, i8 signext) #1

declare dso_local i32 @kpersona_info(i8 signext, %struct.kpersona_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
