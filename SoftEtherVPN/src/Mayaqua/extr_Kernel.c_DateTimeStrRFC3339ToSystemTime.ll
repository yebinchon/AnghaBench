; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Kernel.c_DateTimeStrRFC3339ToSystemTime.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Kernel.c_DateTimeStrRFC3339ToSystemTime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@MAX_PATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"+\00", align 1
@INFINITE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"0\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @DateTimeStrRFC3339ToSystemTime(%struct.TYPE_5__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca [16 x i8], align 16
  %12 = alloca [16 x i8], align 16
  %13 = alloca [16 x i8], align 16
  %14 = alloca [16 x i8], align 16
  %15 = alloca [16 x i8], align 16
  %16 = alloca [16 x i8], align 16
  %17 = alloca [16 x i8], align 16
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %6, align 4
  %18 = load i32, i32* @MAX_PATH, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %8, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %9, align 8
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %23 = call i32 @Zero(%struct.TYPE_5__* %22, i32 56)
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %25 = icmp eq %struct.TYPE_5__* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %2
  %27 = load i8*, i8** %5, align 8
  %28 = icmp eq i8* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %26, %2
  store i32 0, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %153

30:                                               ; preds = %26
  %31 = trunc i64 %19 to i32
  %32 = load i8*, i8** %5, align 8
  %33 = call i32 @StrCpy(i8* %21, i32 %31, i8* %32)
  %34 = call i64 @SearchStrEx(i8* %21, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 0, i32 0)
  store i64 %34, i64* %7, align 8
  %35 = load i64, i64* %7, align 8
  %36 = load i64, i64* @INFINITE, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %30
  %39 = load i64, i64* %7, align 8
  %40 = getelementptr inbounds i8, i8* %21, i64 %39
  store i8 0, i8* %40, align 1
  br label %41

41:                                               ; preds = %38, %30
  %42 = call i32 @StrLen(i8* %21)
  %43 = icmp sge i32 %42, 19
  br i1 %43, label %44, label %151

44:                                               ; preds = %41
  %45 = getelementptr inbounds i8, i8* %21, i64 4
  %46 = load i8, i8* %45, align 4
  %47 = sext i8 %46 to i32
  %48 = icmp eq i32 %47, 45
  br i1 %48, label %49, label %150

49:                                               ; preds = %44
  %50 = getelementptr inbounds i8, i8* %21, i64 7
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp eq i32 %52, 45
  br i1 %53, label %54, label %150

54:                                               ; preds = %49
  %55 = getelementptr inbounds i8, i8* %21, i64 10
  %56 = load i8, i8* %55, align 2
  %57 = sext i8 %56 to i32
  %58 = icmp eq i32 %57, 84
  br i1 %58, label %59, label %150

59:                                               ; preds = %54
  %60 = getelementptr inbounds i8, i8* %21, i64 13
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp eq i32 %62, 58
  br i1 %63, label %64, label %150

64:                                               ; preds = %59
  %65 = getelementptr inbounds i8, i8* %21, i64 16
  %66 = load i8, i8* %65, align 16
  %67 = sext i8 %66 to i32
  %68 = icmp eq i32 %67, 58
  br i1 %68, label %69, label %150

69:                                               ; preds = %64
  %70 = getelementptr inbounds [16 x i8], [16 x i8]* %11, i64 0, i64 0
  %71 = getelementptr inbounds i8, i8* %21, i64 0
  %72 = call i32 @StrCpy(i8* %70, i32 16, i8* %71)
  %73 = getelementptr inbounds [16 x i8], [16 x i8]* %11, i64 0, i64 4
  store i8 0, i8* %73, align 4
  %74 = getelementptr inbounds [16 x i8], [16 x i8]* %12, i64 0, i64 0
  %75 = getelementptr inbounds i8, i8* %21, i64 5
  %76 = call i32 @StrCpy(i8* %74, i32 16, i8* %75)
  %77 = getelementptr inbounds [16 x i8], [16 x i8]* %12, i64 0, i64 2
  store i8 0, i8* %77, align 2
  %78 = getelementptr inbounds [16 x i8], [16 x i8]* %13, i64 0, i64 0
  %79 = getelementptr inbounds i8, i8* %21, i64 8
  %80 = call i32 @StrCpy(i8* %78, i32 16, i8* %79)
  %81 = getelementptr inbounds [16 x i8], [16 x i8]* %13, i64 0, i64 2
  store i8 0, i8* %81, align 2
  %82 = getelementptr inbounds [16 x i8], [16 x i8]* %14, i64 0, i64 0
  %83 = getelementptr inbounds i8, i8* %21, i64 11
  %84 = call i32 @StrCpy(i8* %82, i32 16, i8* %83)
  %85 = getelementptr inbounds [16 x i8], [16 x i8]* %14, i64 0, i64 2
  store i8 0, i8* %85, align 2
  %86 = getelementptr inbounds [16 x i8], [16 x i8]* %15, i64 0, i64 0
  %87 = getelementptr inbounds i8, i8* %21, i64 14
  %88 = call i32 @StrCpy(i8* %86, i32 16, i8* %87)
  %89 = getelementptr inbounds [16 x i8], [16 x i8]* %15, i64 0, i64 2
  store i8 0, i8* %89, align 2
  %90 = getelementptr inbounds [16 x i8], [16 x i8]* %16, i64 0, i64 0
  %91 = getelementptr inbounds i8, i8* %21, i64 17
  %92 = call i32 @StrCpy(i8* %90, i32 16, i8* %91)
  %93 = getelementptr inbounds [16 x i8], [16 x i8]* %16, i64 0, i64 2
  store i8 0, i8* %93, align 2
  %94 = getelementptr inbounds [16 x i8], [16 x i8]* %17, i64 0, i64 0
  store i8 0, i8* %94, align 16
  %95 = call i32 @StrLen(i8* %21)
  %96 = icmp sge i32 %95, 21
  br i1 %96, label %97, label %119

97:                                               ; preds = %69
  %98 = getelementptr inbounds i8, i8* %21, i64 19
  %99 = load i8, i8* %98, align 1
  %100 = sext i8 %99 to i32
  %101 = icmp eq i32 %100, 46
  br i1 %101, label %102, label %119

102:                                              ; preds = %97
  %103 = getelementptr inbounds [16 x i8], [16 x i8]* %17, i64 0, i64 0
  %104 = getelementptr inbounds i8, i8* %21, i64 20
  %105 = call i32 @StrCpy(i8* %103, i32 16, i8* %104)
  %106 = call i32 @StrLen(i8* %21)
  %107 = sub nsw i32 %106, 21
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds [16 x i8], [16 x i8]* %17, i64 0, i64 %108
  store i8 0, i8* %109, align 1
  br label %110

110:                                              ; preds = %114, %102
  %111 = getelementptr inbounds [16 x i8], [16 x i8]* %17, i64 0, i64 0
  %112 = call i32 @StrLen(i8* %111)
  %113 = icmp slt i32 %112, 3
  br i1 %113, label %114, label %117

114:                                              ; preds = %110
  %115 = getelementptr inbounds [16 x i8], [16 x i8]* %17, i64 0, i64 0
  %116 = call i32 @StrCat(i8* %115, i32 16, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %110

117:                                              ; preds = %110
  %118 = getelementptr inbounds [16 x i8], [16 x i8]* %17, i64 0, i64 3
  store i8 0, i8* %118, align 1
  br label %119

119:                                              ; preds = %117, %97, %69
  %120 = getelementptr inbounds [16 x i8], [16 x i8]* %11, i64 0, i64 0
  %121 = call i8* @ToInt(i8* %120)
  %122 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 6
  store i8* %121, i8** %123, align 8
  %124 = getelementptr inbounds [16 x i8], [16 x i8]* %12, i64 0, i64 0
  %125 = call i8* @ToInt(i8* %124)
  %126 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 5
  store i8* %125, i8** %127, align 8
  %128 = getelementptr inbounds [16 x i8], [16 x i8]* %13, i64 0, i64 0
  %129 = call i8* @ToInt(i8* %128)
  %130 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 4
  store i8* %129, i8** %131, align 8
  %132 = getelementptr inbounds [16 x i8], [16 x i8]* %14, i64 0, i64 0
  %133 = call i8* @ToInt(i8* %132)
  %134 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i32 0, i32 3
  store i8* %133, i8** %135, align 8
  %136 = getelementptr inbounds [16 x i8], [16 x i8]* %15, i64 0, i64 0
  %137 = call i8* @ToInt(i8* %136)
  %138 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i32 0, i32 2
  store i8* %137, i8** %139, align 8
  %140 = getelementptr inbounds [16 x i8], [16 x i8]* %16, i64 0, i64 0
  %141 = call i8* @ToInt(i8* %140)
  %142 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i32 0, i32 1
  store i8* %141, i8** %143, align 8
  %144 = getelementptr inbounds [16 x i8], [16 x i8]* %17, i64 0, i64 0
  %145 = call i8* @ToInt(i8* %144)
  %146 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %146, i32 0, i32 0
  store i8* %145, i8** %147, align 8
  %148 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %149 = call i32 @NormalizeSystem(%struct.TYPE_5__* %148)
  store i32 1, i32* %6, align 4
  br label %150

150:                                              ; preds = %119, %64, %59, %54, %49, %44
  br label %151

151:                                              ; preds = %150, %41
  %152 = load i32, i32* %6, align 4
  store i32 %152, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %153

153:                                              ; preds = %151, %29
  %154 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %154)
  %155 = load i32, i32* %3, align 4
  ret i32 %155
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @Zero(%struct.TYPE_5__*, i32) #2

declare dso_local i32 @StrCpy(i8*, i32, i8*) #2

declare dso_local i64 @SearchStrEx(i8*, i8*, i32, i32) #2

declare dso_local i32 @StrLen(i8*) #2

declare dso_local i32 @StrCat(i8*, i32, i8*) #2

declare dso_local i8* @ToInt(i8*) #2

declare dso_local i32 @NormalizeSystem(%struct.TYPE_5__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
