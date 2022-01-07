; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_PPP.c_NewPPPSession.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_PPP.c_NewPPPSession.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_9__*, %struct.TYPE_9__*, i8*, i32, i8*, i32, i32, i8*, %struct.TYPE_11__*, i32 }

@.str = private unnamed_addr constant [4 x i8] c"PPP\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"PPP VPN Client\00", align 1
@PPP_PROTOCOL_PAP = common dso_local global i32 0, align 4
@PPPThread = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @NewPPPSession(%struct.TYPE_11__* %0, i32* %1, i8* %2, i32* %3, i8* %4, %struct.TYPE_9__* %5, %struct.TYPE_9__* %6, i8* %7, i8* %8, i8* %9, i8* %10, i8* %11) #0 {
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_11__*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca %struct.TYPE_9__*, align 8
  %20 = alloca %struct.TYPE_9__*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca %struct.TYPE_10__*, align 8
  %27 = alloca i32*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %14, align 8
  store i32* %1, i32** %15, align 8
  store i8* %2, i8** %16, align 8
  store i32* %3, i32** %17, align 8
  store i8* %4, i8** %18, align 8
  store %struct.TYPE_9__* %5, %struct.TYPE_9__** %19, align 8
  store %struct.TYPE_9__* %6, %struct.TYPE_9__** %20, align 8
  store i8* %7, i8** %21, align 8
  store i8* %8, i8** %22, align 8
  store i8* %9, i8** %23, align 8
  store i8* %10, i8** %24, align 8
  store i8* %11, i8** %25, align 8
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %29 = icmp eq %struct.TYPE_11__* %28, null
  br i1 %29, label %42, label %30

30:                                               ; preds = %12
  %31 = load i32*, i32** %15, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %42, label %33

33:                                               ; preds = %30
  %34 = load i32*, i32** %17, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %42, label %36

36:                                               ; preds = %33
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %38 = icmp eq %struct.TYPE_9__* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %36
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %41 = icmp eq %struct.TYPE_9__* %40, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %39, %36, %33, %30, %12
  store i32* null, i32** %13, align 8
  br label %147

43:                                               ; preds = %39
  %44 = load i8*, i8** %21, align 8
  %45 = call i64 @IsEmptyStr(i8* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %21, align 8
  br label %48

48:                                               ; preds = %47, %43
  %49 = load i8*, i8** %24, align 8
  %50 = call i64 @IsEmptyStr(i8* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8** %24, align 8
  br label %53

53:                                               ; preds = %52, %48
  %54 = load i8*, i8** %22, align 8
  %55 = call i64 @IsEmptyStr(i8* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8** %22, align 8
  br label %58

58:                                               ; preds = %57, %53
  %59 = call %struct.TYPE_10__* @ZeroMalloc(i32 96)
  store %struct.TYPE_10__* %59, %struct.TYPE_10__** %26, align 8
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %26, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 0
  store i32 1, i32* %61, align 8
  %62 = load i32, i32* @PPP_PROTOCOL_PAP, align 4
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %26, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 15
  store i32 %62, i32* %64, align 8
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %26, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 1
  store i32 691, i32* %66, align 4
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %26, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 14
  store %struct.TYPE_11__* %67, %struct.TYPE_11__** %69, align 8
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @AddRef(i32 %72)
  %74 = load i8*, i8** %25, align 8
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %26, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 13
  store i8* %74, i8** %76, align 8
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %26, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 12
  %79 = load i32, i32* %78, align 4
  %80 = load i8*, i8** %24, align 8
  %81 = call i32 @StrCpy(i32 %79, i32 4, i8* %80)
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %26, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 11
  %84 = load i32*, i32** %15, align 8
  %85 = call i32 @Copy(i32* %83, i32* %84, i32 4)
  %86 = load i8*, i8** %16, align 8
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %26, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 10
  store i8* %86, i8** %88, align 8
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %26, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 9
  %91 = load i32*, i32** %17, align 8
  %92 = call i32 @Copy(i32* %90, i32* %91, i32 4)
  %93 = load i8*, i8** %18, align 8
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %26, align 8
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 8
  store i8* %93, i8** %95, align 8
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %26, align 8
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 7
  store %struct.TYPE_9__* %96, %struct.TYPE_9__** %98, align 8
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %26, align 8
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 6
  store %struct.TYPE_9__* %99, %struct.TYPE_9__** %101, align 8
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %26, align 8
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 7
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @AddRef(i32 %106)
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %26, align 8
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 6
  %110 = load %struct.TYPE_9__*, %struct.TYPE_9__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @AddRef(i32 %112)
  %114 = load %struct.TYPE_10__*, %struct.TYPE_10__** %26, align 8
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 5
  %116 = load i32, i32* %115, align 4
  %117 = load i8*, i8** %21, align 8
  %118 = call i32 @StrCpy(i32 %116, i32 4, i8* %117)
  %119 = load %struct.TYPE_10__*, %struct.TYPE_10__** %26, align 8
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i32 0, i32 4
  %121 = load i32, i32* %120, align 8
  %122 = load i8*, i8** %22, align 8
  %123 = call i32 @StrCpy(i32 %121, i32 4, i8* %122)
  %124 = load i8*, i8** %23, align 8
  %125 = call i64 @IsEmptyStr(i8* %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %133

127:                                              ; preds = %58
  %128 = load %struct.TYPE_10__*, %struct.TYPE_10__** %26, align 8
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 4
  %131 = load i32*, i32** %15, align 8
  %132 = call i32 @IPToStr(i32 %130, i32 4, i32* %131)
  br label %139

133:                                              ; preds = %58
  %134 = load %struct.TYPE_10__*, %struct.TYPE_10__** %26, align 8
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i32 0, i32 3
  %136 = load i32, i32* %135, align 4
  %137 = load i8*, i8** %23, align 8
  %138 = call i32 @StrCpy(i32 %136, i32 4, i8* %137)
  br label %139

139:                                              ; preds = %133, %127
  %140 = call i32 (...) @NewTubeFlushList()
  %141 = load %struct.TYPE_10__*, %struct.TYPE_10__** %26, align 8
  %142 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %141, i32 0, i32 2
  store i32 %140, i32* %142, align 8
  %143 = load i32, i32* @PPPThread, align 4
  %144 = load %struct.TYPE_10__*, %struct.TYPE_10__** %26, align 8
  %145 = call i32* @NewThread(i32 %143, %struct.TYPE_10__* %144)
  store i32* %145, i32** %27, align 8
  %146 = load i32*, i32** %27, align 8
  store i32* %146, i32** %13, align 8
  br label %147

147:                                              ; preds = %139, %42
  %148 = load i32*, i32** %13, align 8
  ret i32* %148
}

declare dso_local i64 @IsEmptyStr(i8*) #1

declare dso_local %struct.TYPE_10__* @ZeroMalloc(i32) #1

declare dso_local i32 @AddRef(i32) #1

declare dso_local i32 @StrCpy(i32, i32, i8*) #1

declare dso_local i32 @Copy(i32*, i32*, i32) #1

declare dso_local i32 @IPToStr(i32, i32, i32*) #1

declare dso_local i32 @NewTubeFlushList(...) #1

declare dso_local i32* @NewThread(i32, %struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
