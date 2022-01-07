; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/renderer/extr_tr_image.c_R_FindImageFile.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/renderer/extr_tr_image.c_R_FindImageFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8*, i32, i32, i32, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32 (i32*)*, i32 (i32, i8*, i8*)* }

@hashTable = common dso_local global %struct.TYPE_6__** null, align 8
@.str = private unnamed_addr constant [7 x i8] c"*white\00", align 1
@ri = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@PRINT_DEVELOPER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"WARNING: reused image %s with mixed mipmap parm\0A\00", align 1
@.str.2 = private unnamed_addr constant [54 x i8] c"WARNING: reused image %s with mixed allowPicmip parm\0A\00", align 1
@PRINT_ALL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [58 x i8] c"WARNING: reused image %s with mixed glWrapClampMode parm\0A\00", align 1
@MAX_QPATH = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [14 x i8] c"trying %s...\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_6__* @R_FindImageFile(i8* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %19 = load i8*, i8** %6, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %4
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %5, align 8
  br label %152

22:                                               ; preds = %4
  %23 = load i8*, i8** %6, align 8
  %24 = call i64 @generateHashValue(i8* %23)
  store i64 %24, i64* %14, align 8
  %25 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @hashTable, align 8
  %26 = load i64, i64* %14, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %25, i64 %26
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  store %struct.TYPE_6__* %28, %struct.TYPE_6__** %10, align 8
  br label %29

29:                                               ; preds = %80, %22
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %31 = icmp ne %struct.TYPE_6__* %30, null
  br i1 %31, label %32, label %84

32:                                               ; preds = %29
  %33 = load i8*, i8** %6, align 8
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = call i64 @strcmp(i8* %33, i8* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %79, label %39

39:                                               ; preds = %32
  %40 = load i8*, i8** %6, align 8
  %41 = call i64 @strcmp(i8* %40, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %77

43:                                               ; preds = %39
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* %7, align 4
  %48 = icmp ne i32 %46, %47
  br i1 %48, label %49, label %54

49:                                               ; preds = %43
  %50 = load i32 (i32, i8*, i8*)*, i32 (i32, i8*, i8*)** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ri, i32 0, i32 1), align 8
  %51 = load i32, i32* @PRINT_DEVELOPER, align 4
  %52 = load i8*, i8** %6, align 8
  %53 = call i32 %50(i32 %51, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i8* %52)
  br label %54

54:                                               ; preds = %49, %43
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %8, align 4
  %59 = icmp ne i32 %57, %58
  br i1 %59, label %60, label %65

60:                                               ; preds = %54
  %61 = load i32 (i32, i8*, i8*)*, i32 (i32, i8*, i8*)** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ri, i32 0, i32 1), align 8
  %62 = load i32, i32* @PRINT_DEVELOPER, align 4
  %63 = load i8*, i8** %6, align 8
  %64 = call i32 %61(i32 %62, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), i8* %63)
  br label %65

65:                                               ; preds = %60, %54
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* %9, align 4
  %70 = icmp ne i32 %68, %69
  br i1 %70, label %71, label %76

71:                                               ; preds = %65
  %72 = load i32 (i32, i8*, i8*)*, i32 (i32, i8*, i8*)** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ri, i32 0, i32 1), align 8
  %73 = load i32, i32* @PRINT_ALL, align 4
  %74 = load i8*, i8** %6, align 8
  %75 = call i32 %72(i32 %73, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.3, i64 0, i64 0), i8* %74)
  br label %76

76:                                               ; preds = %71, %65
  br label %77

77:                                               ; preds = %76, %39
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  store %struct.TYPE_6__* %78, %struct.TYPE_6__** %5, align 8
  br label %152

79:                                               ; preds = %32
  br label %80

80:                                               ; preds = %79
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 4
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %82, align 8
  store %struct.TYPE_6__* %83, %struct.TYPE_6__** %10, align 8
  br label %29

84:                                               ; preds = %29
  %85 = load i8*, i8** %6, align 8
  %86 = call i32 @R_LoadImage(i8* %85, i32** %13, i32* %11, i32* %12)
  %87 = load i32*, i32** %13, align 8
  %88 = icmp eq i32* %87, null
  br i1 %88, label %89, label %139

89:                                               ; preds = %84
  %90 = load i32, i32* @MAX_QPATH, align 4
  %91 = zext i32 %90 to i64
  %92 = call i8* @llvm.stacksave()
  store i8* %92, i8** %15, align 8
  %93 = alloca i8, i64 %91, align 16
  store i64 %91, i64* %16, align 8
  %94 = load i8*, i8** %6, align 8
  %95 = call i32 @strcpy(i8* %93, i8* %94)
  %96 = call i32 @strlen(i8* %93)
  store i32 %96, i32* %17, align 4
  %97 = load i32, i32* %17, align 4
  %98 = sub nsw i32 %97, 3
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i8, i8* %93, i64 %99
  %101 = load i8, i8* %100, align 1
  %102 = call signext i8 @toupper(i8 signext %101)
  %103 = load i32, i32* %17, align 4
  %104 = sub nsw i32 %103, 3
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i8, i8* %93, i64 %105
  store i8 %102, i8* %106, align 1
  %107 = load i32, i32* %17, align 4
  %108 = sub nsw i32 %107, 2
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i8, i8* %93, i64 %109
  %111 = load i8, i8* %110, align 1
  %112 = call signext i8 @toupper(i8 signext %111)
  %113 = load i32, i32* %17, align 4
  %114 = sub nsw i32 %113, 2
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i8, i8* %93, i64 %115
  store i8 %112, i8* %116, align 1
  %117 = load i32, i32* %17, align 4
  %118 = sub nsw i32 %117, 1
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i8, i8* %93, i64 %119
  %121 = load i8, i8* %120, align 1
  %122 = call signext i8 @toupper(i8 signext %121)
  %123 = load i32, i32* %17, align 4
  %124 = sub nsw i32 %123, 1
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i8, i8* %93, i64 %125
  store i8 %122, i8* %126, align 1
  %127 = load i32 (i32, i8*, i8*)*, i32 (i32, i8*, i8*)** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ri, i32 0, i32 1), align 8
  %128 = load i32, i32* @PRINT_ALL, align 4
  %129 = call i32 %127(i32 %128, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i8* %93)
  %130 = call i32 @R_LoadImage(i8* %93, i32** %13, i32* %11, i32* %12)
  %131 = load i32*, i32** %13, align 8
  %132 = icmp eq i32* %131, null
  br i1 %132, label %133, label %134

133:                                              ; preds = %89
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %5, align 8
  store i32 1, i32* %18, align 4
  br label %135

134:                                              ; preds = %89
  store i32 0, i32* %18, align 4
  br label %135

135:                                              ; preds = %134, %133
  %136 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %136)
  %137 = load i32, i32* %18, align 4
  switch i32 %137, label %154 [
    i32 0, label %138
    i32 1, label %152
  ]

138:                                              ; preds = %135
  br label %139

139:                                              ; preds = %138, %84
  %140 = load i8*, i8** %6, align 8
  %141 = load i32*, i32** %13, align 8
  %142 = load i32, i32* %11, align 4
  %143 = load i32, i32* %12, align 4
  %144 = load i32, i32* %7, align 4
  %145 = load i32, i32* %8, align 4
  %146 = load i32, i32* %9, align 4
  %147 = call %struct.TYPE_6__* @R_CreateImage(i8* %140, i32* %141, i32 %142, i32 %143, i32 %144, i32 %145, i32 %146)
  store %struct.TYPE_6__* %147, %struct.TYPE_6__** %10, align 8
  %148 = load i32 (i32*)*, i32 (i32*)** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ri, i32 0, i32 0), align 8
  %149 = load i32*, i32** %13, align 8
  %150 = call i32 %148(i32* %149)
  %151 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  store %struct.TYPE_6__* %151, %struct.TYPE_6__** %5, align 8
  br label %152

152:                                              ; preds = %139, %135, %77, %21
  %153 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  ret %struct.TYPE_6__* %153

154:                                              ; preds = %135
  unreachable
}

declare dso_local i64 @generateHashValue(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @R_LoadImage(i8*, i32**, i32*, i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local signext i8 @toupper(i8 signext) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local %struct.TYPE_6__* @R_CreateImage(i8*, i32*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
