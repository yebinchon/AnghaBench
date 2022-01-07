; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/bspc/extr_l_bsp_q2.c_Q2_UnparseEntities.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/bspc/extr_l_bsp_q2.c_Q2_UnparseEntities.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32, %struct.TYPE_3__* }

@dentdata = common dso_local global i8* null, align 8
@num_entities = common dso_local global i32 0, align 4
@entities = common dso_local global %struct.TYPE_4__* null, align 8
@.str = private unnamed_addr constant [3 x i8] c"{\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"\22%s\22 \22%s\22\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"}\0A\00", align 1
@MAX_MAP_ENTSTRING = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"Entity text too long\00", align 1
@entdatasize = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Q2_UnparseEntities() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca [2048 x i8], align 16
  %5 = alloca i32, align 4
  %6 = alloca [1024 x i8], align 16
  %7 = alloca [1024 x i8], align 16
  %8 = load i8*, i8** @dentdata, align 8
  store i8* %8, i8** %1, align 8
  %9 = load i8*, i8** %1, align 8
  store i8* %9, i8** %2, align 8
  %10 = load i8*, i8** %2, align 8
  store i8 0, i8* %10, align 1
  store i32 0, i32* %5, align 4
  br label %11

11:                                               ; preds = %84, %0
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @num_entities, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %87

15:                                               ; preds = %11
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** @entities, align 8
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  store %struct.TYPE_3__* %21, %struct.TYPE_3__** %3, align 8
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %23 = icmp ne %struct.TYPE_3__* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %15
  br label %84

25:                                               ; preds = %15
  %26 = load i8*, i8** %2, align 8
  %27 = call i32 @strcat(i8* %26, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %28 = load i8*, i8** %2, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 2
  store i8* %29, i8** %2, align 8
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** @entities, align 8
  %31 = load i32, i32* %5, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  store %struct.TYPE_3__* %35, %struct.TYPE_3__** %3, align 8
  br label %36

36:                                               ; preds = %66, %25
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %38 = icmp ne %struct.TYPE_3__* %37, null
  br i1 %38, label %39, label %70

39:                                               ; preds = %36
  %40 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @strcpy(i8* %40, i32 %43)
  %45 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %46 = call i32 @StripTrailing(i8* %45)
  %47 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @strcpy(i8* %47, i32 %50)
  %52 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0
  %53 = call i32 @StripTrailing(i8* %52)
  %54 = getelementptr inbounds [2048 x i8], [2048 x i8]* %4, i64 0, i64 0
  %55 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %56 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0
  %57 = call i32 @sprintf(i8* %54, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* %55, i8* %56)
  %58 = load i8*, i8** %2, align 8
  %59 = getelementptr inbounds [2048 x i8], [2048 x i8]* %4, i64 0, i64 0
  %60 = call i32 @strcat(i8* %58, i8* %59)
  %61 = getelementptr inbounds [2048 x i8], [2048 x i8]* %4, i64 0, i64 0
  %62 = call i32 @strlen(i8* %61)
  %63 = load i8*, i8** %2, align 8
  %64 = sext i32 %62 to i64
  %65 = getelementptr inbounds i8, i8* %63, i64 %64
  store i8* %65, i8** %2, align 8
  br label %66

66:                                               ; preds = %39
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 2
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %68, align 8
  store %struct.TYPE_3__* %69, %struct.TYPE_3__** %3, align 8
  br label %36

70:                                               ; preds = %36
  %71 = load i8*, i8** %2, align 8
  %72 = call i32 @strcat(i8* %71, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %73 = load i8*, i8** %2, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 2
  store i8* %74, i8** %2, align 8
  %75 = load i8*, i8** %2, align 8
  %76 = load i8*, i8** %1, align 8
  %77 = load i32, i32* @MAX_MAP_ENTSTRING, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i8, i8* %76, i64 %78
  %80 = icmp ugt i8* %75, %79
  br i1 %80, label %81, label %83

81:                                               ; preds = %70
  %82 = call i32 @Error(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  br label %83

83:                                               ; preds = %81, %70
  br label %84

84:                                               ; preds = %83, %24
  %85 = load i32, i32* %5, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %5, align 4
  br label %11

87:                                               ; preds = %11
  %88 = load i8*, i8** %2, align 8
  %89 = load i8*, i8** %1, align 8
  %90 = ptrtoint i8* %88 to i64
  %91 = ptrtoint i8* %89 to i64
  %92 = sub i64 %90, %91
  %93 = add nsw i64 %92, 1
  %94 = trunc i64 %93 to i32
  store i32 %94, i32* @entdatasize, align 4
  ret void
}

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i32 @strcpy(i8*, i32) #1

declare dso_local i32 @StripTrailing(i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @Error(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
