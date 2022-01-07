; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/ui/extr_ui_shared.c_String_Alloc.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/ui/extr_ui_shared.c_String_Alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, %struct.TYPE_4__* }

@String_Alloc.staticNULL = internal global i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0), align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@strHandle = common dso_local global %struct.TYPE_4__** null, align 8
@strPoolIndex = common dso_local global i32 0, align 4
@STRING_POOL_SIZE = common dso_local global i32 0, align 4
@strPool = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @String_Alloc(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = icmp eq i8* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %112

12:                                               ; preds = %1
  %13 = load i8*, i8** %3, align 8
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = load i8*, i8** @String_Alloc.staticNULL, align 8
  store i8* %18, i8** %2, align 8
  br label %112

19:                                               ; preds = %12
  %20 = load i8*, i8** %3, align 8
  %21 = call i64 @hashForString(i8* %20)
  store i64 %21, i64* %5, align 8
  %22 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @strHandle, align 8
  %23 = load i64, i64* %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %22, i64 %23
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  store %struct.TYPE_4__* %25, %struct.TYPE_4__** %6, align 8
  br label %26

26:                                               ; preds = %40, %19
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %28 = icmp ne %struct.TYPE_4__* %27, null
  br i1 %28, label %29, label %44

29:                                               ; preds = %26
  %30 = load i8*, i8** %3, align 8
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = call i64 @strcmp(i8* %30, i8* %33)
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %29
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  store i8* %39, i8** %2, align 8
  br label %112

40:                                               ; preds = %29
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  store %struct.TYPE_4__* %43, %struct.TYPE_4__** %6, align 8
  br label %26

44:                                               ; preds = %26
  %45 = load i8*, i8** %3, align 8
  %46 = call i32 @strlen(i8* %45)
  store i32 %46, i32* %4, align 4
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* @strPoolIndex, align 4
  %49 = add nsw i32 %47, %48
  %50 = add nsw i32 %49, 1
  %51 = load i32, i32* @STRING_POOL_SIZE, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %111

53:                                               ; preds = %44
  %54 = load i32, i32* @strPoolIndex, align 4
  store i32 %54, i32* %8, align 4
  %55 = load i8*, i8** @strPool, align 8
  %56 = load i32, i32* @strPoolIndex, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8, i8* %55, i64 %57
  %59 = load i8*, i8** %3, align 8
  %60 = call i32 @strcpy(i8* %58, i8* %59)
  %61 = load i32, i32* %4, align 4
  %62 = add nsw i32 %61, 1
  %63 = load i32, i32* @strPoolIndex, align 4
  %64 = add nsw i32 %63, %62
  store i32 %64, i32* @strPoolIndex, align 4
  %65 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @strHandle, align 8
  %66 = load i64, i64* %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %65, i64 %66
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  store %struct.TYPE_4__* %68, %struct.TYPE_4__** %6, align 8
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  store %struct.TYPE_4__* %69, %struct.TYPE_4__** %7, align 8
  br label %70

70:                                               ; preds = %80, %53
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %72 = icmp ne %struct.TYPE_4__* %71, null
  br i1 %72, label %73, label %78

73:                                               ; preds = %70
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 1
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %75, align 8
  %77 = icmp ne %struct.TYPE_4__* %76, null
  br label %78

78:                                               ; preds = %73, %70
  %79 = phi i1 [ false, %70 ], [ %77, %73 ]
  br i1 %79, label %80, label %85

80:                                               ; preds = %78
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  store %struct.TYPE_4__* %81, %struct.TYPE_4__** %7, align 8
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 1
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %83, align 8
  store %struct.TYPE_4__* %84, %struct.TYPE_4__** %6, align 8
  br label %70

85:                                               ; preds = %78
  %86 = call %struct.TYPE_4__* @UI_Alloc(i32 16)
  store %struct.TYPE_4__* %86, %struct.TYPE_4__** %6, align 8
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 1
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %88, align 8
  %89 = load i8*, i8** @strPool, align 8
  %90 = load i32, i32* %8, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i8, i8* %89, i64 %91
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  store i8* %92, i8** %94, align 8
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %96 = icmp ne %struct.TYPE_4__* %95, null
  br i1 %96, label %97, label %101

97:                                               ; preds = %85
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 1
  store %struct.TYPE_4__* %98, %struct.TYPE_4__** %100, align 8
  br label %106

101:                                              ; preds = %85
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %103 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @strHandle, align 8
  %104 = load i64, i64* %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %103, i64 %104
  store %struct.TYPE_4__* %102, %struct.TYPE_4__** %105, align 8
  br label %106

106:                                              ; preds = %101, %97
  %107 = load i8*, i8** @strPool, align 8
  %108 = load i32, i32* %8, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i8, i8* %107, i64 %109
  store i8* %110, i8** %2, align 8
  br label %112

111:                                              ; preds = %44
  store i8* null, i8** %2, align 8
  br label %112

112:                                              ; preds = %111, %106, %36, %17, %11
  %113 = load i8*, i8** %2, align 8
  ret i8* %113
}

declare dso_local i64 @hashForString(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local %struct.TYPE_4__* @UI_Alloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
