; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_StrToDateTime64.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_StrToDateTime64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32* }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32 }

@INFINITE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c":/,. \22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @StrToDateTime64(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_8__, align 4
  store i8* %0, i8** %3, align 8
  store i32 0, i32* %4, align 4
  %13 = load i8*, i8** %3, align 8
  %14 = icmp eq i8* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* @INFINITE, align 4
  store i32 %16, i32* %2, align 4
  br label %120

17:                                               ; preds = %1
  %18 = load i8*, i8** %3, align 8
  %19 = call i64 @IsEmptyStr(i8* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %17
  %22 = load i8*, i8** %3, align 8
  %23 = call i64 @StrCmpi(i8* %22, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %21, %17
  store i32 0, i32* %2, align 4
  br label %120

26:                                               ; preds = %21
  %27 = load i8*, i8** %3, align 8
  %28 = call %struct.TYPE_7__* @ParseToken(i8* %27, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  store %struct.TYPE_7__* %28, %struct.TYPE_7__** %5, align 8
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 6
  br i1 %32, label %33, label %37

33:                                               ; preds = %26
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %35 = call i32 @FreeToken(%struct.TYPE_7__* %34)
  %36 = load i32, i32* @INFINITE, align 4
  store i32 %36, i32* %2, align 4
  br label %120

37:                                               ; preds = %26
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @ToInt(i32 %42)
  store i32 %43, i32* %6, align 4
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @ToInt(i32 %48)
  store i32 %49, i32* %7, align 4
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 2
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @ToInt(i32 %54)
  store i32 %55, i32* %8, align 4
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 3
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @ToInt(i32 %60)
  store i32 %61, i32* %9, align 4
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 4
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @ToInt(i32 %66)
  store i32 %67, i32* %10, align 4
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 5
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @ToInt(i32 %72)
  store i32 %73, i32* %11, align 4
  %74 = load i32, i32* @INFINITE, align 4
  store i32 %74, i32* %4, align 4
  %75 = load i32, i32* %6, align 4
  %76 = icmp sge i32 %75, 1000
  br i1 %76, label %77, label %116

77:                                               ; preds = %37
  %78 = load i32, i32* %6, align 4
  %79 = icmp sle i32 %78, 9999
  br i1 %79, label %80, label %116

80:                                               ; preds = %77
  %81 = load i32, i32* %7, align 4
  %82 = icmp sge i32 %81, 1
  br i1 %82, label %83, label %116

83:                                               ; preds = %80
  %84 = load i32, i32* %7, align 4
  %85 = icmp sle i32 %84, 12
  br i1 %85, label %86, label %116

86:                                               ; preds = %83
  %87 = load i32, i32* %8, align 4
  %88 = icmp sge i32 %87, 1
  br i1 %88, label %89, label %116

89:                                               ; preds = %86
  %90 = load i32, i32* %8, align 4
  %91 = icmp sle i32 %90, 31
  br i1 %91, label %92, label %116

92:                                               ; preds = %89
  %93 = load i32, i32* %9, align 4
  %94 = icmp sle i32 %93, 23
  br i1 %94, label %95, label %116

95:                                               ; preds = %92
  %96 = load i32, i32* %10, align 4
  %97 = icmp sle i32 %96, 59
  br i1 %97, label %98, label %116

98:                                               ; preds = %95
  %99 = load i32, i32* %11, align 4
  %100 = icmp sle i32 %99, 59
  br i1 %100, label %101, label %116

101:                                              ; preds = %98
  %102 = call i32 @Zero(%struct.TYPE_8__* %12, i32 24)
  %103 = load i32, i32* %6, align 4
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  store i32 %103, i32* %104, align 4
  %105 = load i32, i32* %7, align 4
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 1
  store i32 %105, i32* %106, align 4
  %107 = load i32, i32* %8, align 4
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 2
  store i32 %107, i32* %108, align 4
  %109 = load i32, i32* %9, align 4
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 3
  store i32 %109, i32* %110, align 4
  %111 = load i32, i32* %10, align 4
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 4
  store i32 %111, i32* %112, align 4
  %113 = load i32, i32* %11, align 4
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 5
  store i32 %113, i32* %114, align 4
  %115 = call i32 @SystemToUINT64(%struct.TYPE_8__* %12)
  store i32 %115, i32* %4, align 4
  br label %116

116:                                              ; preds = %101, %98, %95, %92, %89, %86, %83, %80, %77, %37
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %118 = call i32 @FreeToken(%struct.TYPE_7__* %117)
  %119 = load i32, i32* %4, align 4
  store i32 %119, i32* %2, align 4
  br label %120

120:                                              ; preds = %116, %33, %25, %15
  %121 = load i32, i32* %2, align 4
  ret i32 %121
}

declare dso_local i64 @IsEmptyStr(i8*) #1

declare dso_local i64 @StrCmpi(i8*, i8*) #1

declare dso_local %struct.TYPE_7__* @ParseToken(i8*, i8*) #1

declare dso_local i32 @FreeToken(%struct.TYPE_7__*) #1

declare dso_local i32 @ToInt(i32) #1

declare dso_local i32 @Zero(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @SystemToUINT64(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
