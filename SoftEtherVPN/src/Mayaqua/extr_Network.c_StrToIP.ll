; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Network.c_StrToIP.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Network.c_StrToIP.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64* }
%struct.TYPE_8__ = type { i32, i8** }

@.str = private unnamed_addr constant [2 x i8] c".\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @StrToIP(%struct.TYPE_9__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %11 = icmp eq %struct.TYPE_9__* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i8*, i8** %5, align 8
  %14 = icmp eq i8* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %12, %2
  store i32 0, i32* %3, align 4
  br label %102

16:                                               ; preds = %12
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = call i64 @StrToIP6(%struct.TYPE_9__* %17, i8* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  store i32 1, i32* %3, align 4
  br label %102

22:                                               ; preds = %16
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %24 = call i32 @Zero(%struct.TYPE_9__* %23, i32 8)
  %25 = load i8*, i8** %5, align 8
  %26 = call i8* @CopyStr(i8* %25)
  store i8* %26, i8** %7, align 8
  %27 = load i8*, i8** %7, align 8
  %28 = call i32 @Trim(i8* %27)
  %29 = load i8*, i8** %7, align 8
  %30 = call %struct.TYPE_8__* @ParseToken(i8* %29, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_8__* %30, %struct.TYPE_8__** %6, align 8
  %31 = load i8*, i8** %7, align 8
  %32 = call i32 @Free(i8* %31)
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 4
  br i1 %36, label %37, label %40

37:                                               ; preds = %22
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %39 = call i32 @FreeToken(%struct.TYPE_8__* %38)
  store i32 0, i32* %3, align 4
  br label %102

40:                                               ; preds = %22
  store i32 0, i32* %8, align 4
  br label %41

41:                                               ; preds = %71, %40
  %42 = load i32, i32* %8, align 4
  %43 = icmp slt i32 %42, 4
  br i1 %43, label %44, label %74

44:                                               ; preds = %41
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 1
  %47 = load i8**, i8*** %46, align 8
  %48 = load i32, i32* %8, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8*, i8** %47, i64 %49
  %51 = load i8*, i8** %50, align 8
  store i8* %51, i8** %9, align 8
  %52 = load i8*, i8** %9, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 0
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp slt i32 %55, 48
  br i1 %56, label %67, label %57

57:                                               ; preds = %44
  %58 = load i8*, i8** %9, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 0
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp sgt i32 %61, 57
  br i1 %62, label %67, label %63

63:                                               ; preds = %57
  %64 = load i8*, i8** %9, align 8
  %65 = call i32 @ToInt(i8* %64)
  %66 = icmp sge i32 %65, 256
  br i1 %66, label %67, label %70

67:                                               ; preds = %63, %57, %44
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %69 = call i32 @FreeToken(%struct.TYPE_8__* %68)
  store i32 0, i32* %3, align 4
  br label %102

70:                                               ; preds = %63
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %8, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %8, align 4
  br label %41

74:                                               ; preds = %41
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %76 = call i32 @Zero(%struct.TYPE_9__* %75, i32 8)
  store i32 0, i32* %8, align 4
  br label %77

77:                                               ; preds = %96, %74
  %78 = load i32, i32* %8, align 4
  %79 = icmp slt i32 %78, 4
  br i1 %79, label %80, label %99

80:                                               ; preds = %77
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 1
  %83 = load i8**, i8*** %82, align 8
  %84 = load i32, i32* %8, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i8*, i8** %83, i64 %85
  %87 = load i8*, i8** %86, align 8
  %88 = call i32 @ToInt(i8* %87)
  %89 = sext i32 %88 to i64
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 0
  %92 = load i64*, i64** %91, align 8
  %93 = load i32, i32* %8, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i64, i64* %92, i64 %94
  store i64 %89, i64* %95, align 8
  br label %96

96:                                               ; preds = %80
  %97 = load i32, i32* %8, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %8, align 4
  br label %77

99:                                               ; preds = %77
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %101 = call i32 @FreeToken(%struct.TYPE_8__* %100)
  store i32 1, i32* %3, align 4
  br label %102

102:                                              ; preds = %99, %67, %37, %21, %15
  %103 = load i32, i32* %3, align 4
  ret i32 %103
}

declare dso_local i64 @StrToIP6(%struct.TYPE_9__*, i8*) #1

declare dso_local i32 @Zero(%struct.TYPE_9__*, i32) #1

declare dso_local i8* @CopyStr(i8*) #1

declare dso_local i32 @Trim(i8*) #1

declare dso_local %struct.TYPE_8__* @ParseToken(i8*, i8*) #1

declare dso_local i32 @Free(i8*) #1

declare dso_local i32 @FreeToken(%struct.TYPE_8__*) #1

declare dso_local i32 @ToInt(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
