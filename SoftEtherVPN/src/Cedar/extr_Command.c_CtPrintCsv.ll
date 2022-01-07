; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_CtPrintCsv.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_CtPrintCsv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32 (%struct.TYPE_12__*, i8*)* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32* }

@MAX_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i32] [i32 44, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CtPrintCsv(%struct.TYPE_11__* %0, %struct.TYPE_12__* %1) #0 {
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_10__*, align 8
  %12 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %4, align 8
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @LIST_NUM(i32 %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* @MAX_SIZE, align 4
  %18 = mul nsw i32 %17, 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %8, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %9, align 8
  %22 = load i32, i32* @MAX_SIZE, align 4
  %23 = mul nsw i32 %22, 4
  %24 = zext i32 %23 to i64
  %25 = alloca i8, i64 %24, align 16
  store i64 %24, i64* %10, align 8
  %26 = getelementptr inbounds i8, i8* %21, i64 0
  store i8 0, i8* %26, align 16
  store i32 0, i32* %5, align 4
  br label %27

27:                                               ; preds = %53, %2
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %56

31:                                               ; preds = %27
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %5, align 4
  %36 = call i8* @LIST_DATA(i32 %34, i32 %35)
  %37 = bitcast i8* %36 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %37, %struct.TYPE_10__** %11, align 8
  %38 = trunc i64 %24 to i32
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @CtEscapeCsv(i8* %25, i32 %38, i32 %41)
  %43 = trunc i64 %19 to i32
  %44 = call i32 @UniStrCat(i8* %21, i32 %43, i8* %25)
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* %7, align 4
  %47 = sub nsw i32 %46, 1
  %48 = icmp ne i32 %45, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %31
  %50 = trunc i64 %19 to i32
  %51 = call i32 @UniStrCat(i8* %21, i32 %50, i8* bitcast ([2 x i32]* @.str to i8*))
  br label %52

52:                                               ; preds = %49, %31
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %5, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %5, align 4
  br label %27

56:                                               ; preds = %27
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 0
  %59 = load i32 (%struct.TYPE_12__*, i8*)*, i32 (%struct.TYPE_12__*, i8*)** %58, align 8
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %61 = call i32 %59(%struct.TYPE_12__* %60, i8* %21)
  store i32 0, i32* %6, align 4
  br label %62

62:                                               ; preds = %110, %56
  %63 = load i32, i32* %6, align 4
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @LIST_NUM(i32 %66)
  %68 = icmp slt i32 %63, %67
  br i1 %68, label %69, label %113

69:                                               ; preds = %62
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %6, align 4
  %74 = call i8* @LIST_DATA(i32 %72, i32 %73)
  %75 = bitcast i8* %74 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %75, %struct.TYPE_9__** %12, align 8
  %76 = getelementptr inbounds i8, i8* %21, i64 0
  store i8 0, i8* %76, align 16
  store i32 0, i32* %5, align 4
  br label %77

77:                                               ; preds = %101, %69
  %78 = load i32, i32* %5, align 4
  %79 = load i32, i32* %7, align 4
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %81, label %104

81:                                               ; preds = %77
  %82 = trunc i64 %24 to i32
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = load i32, i32* %5, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @CtEscapeCsv(i8* %25, i32 %82, i32 %89)
  %91 = trunc i64 %19 to i32
  %92 = call i32 @UniStrCat(i8* %21, i32 %91, i8* %25)
  %93 = load i32, i32* %5, align 4
  %94 = load i32, i32* %7, align 4
  %95 = sub nsw i32 %94, 1
  %96 = icmp ne i32 %93, %95
  br i1 %96, label %97, label %100

97:                                               ; preds = %81
  %98 = trunc i64 %19 to i32
  %99 = call i32 @UniStrCat(i8* %21, i32 %98, i8* bitcast ([2 x i32]* @.str to i8*))
  br label %100

100:                                              ; preds = %97, %81
  br label %101

101:                                              ; preds = %100
  %102 = load i32, i32* %5, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %5, align 4
  br label %77

104:                                              ; preds = %77
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i32 0, i32 0
  %107 = load i32 (%struct.TYPE_12__*, i8*)*, i32 (%struct.TYPE_12__*, i8*)** %106, align 8
  %108 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %109 = call i32 %107(%struct.TYPE_12__* %108, i8* %21)
  br label %110

110:                                              ; preds = %104
  %111 = load i32, i32* %6, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %6, align 4
  br label %62

113:                                              ; preds = %62
  %114 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %114)
  ret void
}

declare dso_local i32 @LIST_NUM(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i8* @LIST_DATA(i32, i32) #1

declare dso_local i32 @CtEscapeCsv(i8*, i32, i32) #1

declare dso_local i32 @UniStrCat(i8*, i32, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
