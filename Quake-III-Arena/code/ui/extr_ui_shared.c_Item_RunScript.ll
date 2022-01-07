; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/ui/extr_ui_shared.c_Item_RunScript.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/ui/extr_ui_shared.c_Item_RunScript.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 (i32*, i8**)*, i32 }
%struct.TYPE_4__ = type { i32 (i8**)* }

@qfalse = common dso_local global i32 0, align 4
@scriptCommandCount = common dso_local global i32 0, align 4
@commandList = common dso_local global %struct.TYPE_3__* null, align 8
@qtrue = common dso_local global i32 0, align 4
@DC = common dso_local global %struct.TYPE_4__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Item_RunScript(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca [1024 x i8], align 16
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %11 = call i32 @memset(i8* %10, i32 0, i32 1024)
  %12 = load i32*, i32** %3, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %84

14:                                               ; preds = %2
  %15 = load i8*, i8** %4, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %84

17:                                               ; preds = %14
  %18 = load i8*, i8** %4, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 0
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %84

23:                                               ; preds = %17
  %24 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %25 = load i8*, i8** %4, align 8
  %26 = call i32 @Q_strcat(i8* %24, i32 1024, i8* %25)
  %27 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  store i8* %27, i8** %6, align 8
  br label %28

28:                                               ; preds = %23, %44, %83
  %29 = call i32 @String_Parse(i8** %6, i8** %9)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %28
  br label %84

32:                                               ; preds = %28
  %33 = load i8*, i8** %9, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 0
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 59
  br i1 %37, label %38, label %45

38:                                               ; preds = %32
  %39 = load i8*, i8** %9, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 1
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  br label %28

45:                                               ; preds = %38, %32
  %46 = load i32, i32* @qfalse, align 4
  store i32 %46, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %47

47:                                               ; preds = %72, %45
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* @scriptCommandCount, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %75

51:                                               ; preds = %47
  %52 = load i8*, i8** %9, align 8
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** @commandList, align 8
  %54 = load i32, i32* %7, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = call i64 @Q_stricmp(i8* %52, i32 %58)
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %71

61:                                               ; preds = %51
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** @commandList, align 8
  %63 = load i32, i32* %7, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = load i32 (i32*, i8**)*, i32 (i32*, i8**)** %66, align 8
  %68 = load i32*, i32** %3, align 8
  %69 = call i32 %67(i32* %68, i8** %6)
  %70 = load i32, i32* @qtrue, align 4
  store i32 %70, i32* %8, align 4
  br label %75

71:                                               ; preds = %51
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %7, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %7, align 4
  br label %47

75:                                               ; preds = %61, %47
  %76 = load i32, i32* %8, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %83, label %78

78:                                               ; preds = %75
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** @DC, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load i32 (i8**)*, i32 (i8**)** %80, align 8
  %82 = call i32 %81(i8** %6)
  br label %83

83:                                               ; preds = %78, %75
  br label %28

84:                                               ; preds = %31, %17, %14, %2
  ret void
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @Q_strcat(i8*, i32, i8*) #1

declare dso_local i32 @String_Parse(i8**, i8**) #1

declare dso_local i64 @Q_stricmp(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
