; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Protocol.c_UpdateClientThreadProcessResults.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Protocol.c_UpdateClientThreadProcessResults.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i64, i32, i32, i32 (%struct.TYPE_9__*, i64, i64, i32, i32, i32*, i32)*, %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_10__ = type { i32, i32* }

@.str = private unnamed_addr constant [2 x i8] c"#\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c" \09\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @UpdateClientThreadProcessResults(%struct.TYPE_9__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %5, align 4
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %11 = icmp eq %struct.TYPE_9__* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32*, i32** %4, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %12, %2
  br label %134

16:                                               ; preds = %12
  %17 = load i32*, i32** %4, align 8
  %18 = call i32 @SeekBufToBegin(i32* %17)
  br label %19

19:                                               ; preds = %16, %133
  %20 = load i32*, i32** %4, align 8
  %21 = call i8* @CfgReadNextLine(i32* %20)
  store i8* %21, i8** %6, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = icmp eq i8* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  br label %134

25:                                               ; preds = %19
  %26 = load i8*, i8** %6, align 8
  %27 = call i32 @Trim(i8* %26)
  %28 = load i8*, i8** %6, align 8
  %29 = call i32 @StartWith(i8* %28, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %127

31:                                               ; preds = %25
  %32 = load i8*, i8** %6, align 8
  %33 = call i32 @IsEmptyStr(i8* %32)
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %127

35:                                               ; preds = %31
  %36 = load i8*, i8** %6, align 8
  %37 = call %struct.TYPE_10__* @ParseTokenWithNullStr(i8* %36, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store %struct.TYPE_10__* %37, %struct.TYPE_10__** %7, align 8
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %39 = icmp ne %struct.TYPE_10__* %38, null
  br i1 %39, label %40, label %126

40:                                               ; preds = %35
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp sge i32 %43, 5
  br i1 %44, label %45, label %123

45:                                               ; preds = %40
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 6
  %53 = load i32, i32* %52, align 8
  %54 = call i64 @StrCmpi(i32 %50, i32 %53)
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %122

56:                                               ; preds = %45
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 1
  %61 = load i32, i32* %60, align 4
  %62 = call i64 @ShortStrToDate64(i32 %61)
  store i64 %62, i64* %8, align 8
  %63 = load i64, i64* %8, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %121

65:                                               ; preds = %56
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 2
  %70 = load i32, i32* %69, align 4
  %71 = call i64 @ToInt(i32 %70)
  store i64 %71, i64* %9, align 8
  %72 = load i64, i64* %9, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %120

74:                                               ; preds = %65
  %75 = load i64, i64* %9, align 8
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp sgt i64 %75, %78
  br i1 %79, label %80, label %119

80:                                               ; preds = %74
  %81 = load i64, i64* %9, align 8
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = icmp sgt i64 %81, %84
  br i1 %85, label %86, label %119

86:                                               ; preds = %80
  %87 = load i64, i64* %9, align 8
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 5
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = icmp sgt i64 %87, %91
  br i1 %92, label %93, label %119

93:                                               ; preds = %86
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 4
  %96 = load i32 (%struct.TYPE_9__*, i64, i64, i32, i32, i32*, i32)*, i32 (%struct.TYPE_9__*, i64, i64, i32, i32, i32*, i32)** %95, align 8
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %98 = load i64, i64* %9, align 8
  %99 = load i64, i64* %8, align 8
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 1
  %102 = load i32*, i32** %101, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 3
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 1
  %107 = load i32*, i32** %106, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 4
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 3
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = call i32 %96(%struct.TYPE_9__* %97, i64 %98, i64 %99, i32 %104, i32 %109, i32* %111, i32 %114)
  %116 = load i64, i64* %9, align 8
  %117 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 1
  store i64 %116, i64* %118, align 8
  store i32 1, i32* %5, align 4
  br label %119

119:                                              ; preds = %93, %86, %80, %74
  br label %120

120:                                              ; preds = %119, %65
  br label %121

121:                                              ; preds = %120, %56
  br label %122

122:                                              ; preds = %121, %45
  br label %123

123:                                              ; preds = %122, %40
  %124 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %125 = call i32 @FreeToken(%struct.TYPE_10__* %124)
  br label %126

126:                                              ; preds = %123, %35
  br label %127

127:                                              ; preds = %126, %31, %25
  %128 = load i8*, i8** %6, align 8
  %129 = call i32 @Free(i8* %128)
  %130 = load i32, i32* %5, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %127
  br label %134

133:                                              ; preds = %127
  br label %19

134:                                              ; preds = %15, %132, %24
  ret void
}

declare dso_local i32 @SeekBufToBegin(i32*) #1

declare dso_local i8* @CfgReadNextLine(i32*) #1

declare dso_local i32 @Trim(i8*) #1

declare dso_local i32 @StartWith(i8*, i8*) #1

declare dso_local i32 @IsEmptyStr(i8*) #1

declare dso_local %struct.TYPE_10__* @ParseTokenWithNullStr(i8*, i8*) #1

declare dso_local i64 @StrCmpi(i32, i32) #1

declare dso_local i64 @ShortStrToDate64(i32) #1

declare dso_local i64 @ToInt(i32) #1

declare dso_local i32 @FreeToken(%struct.TYPE_10__*) #1

declare dso_local i32 @Free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
