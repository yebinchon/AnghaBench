; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kdp/extr_kdp.c_kdp_connect.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kdp/extr_kdp.c_kdp_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, i64, i64, i64, i64 }
%struct.TYPE_10__ = type { %struct.TYPE_12__, %struct.TYPE_11__ }
%struct.TYPE_12__ = type { %struct.TYPE_9__, i8* }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_11__ = type { i64, i64, %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i64, i64 }

@FALSE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"kdp_connect seq %x greeting %s\0A\00", align 1
@kdp = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@KDPERR_NO_ERROR = common dso_local global i8* null, align 8
@KDPERR_ALREADY_CONNECTED = common dso_local global i8* null, align 8
@TRUE = common dso_local global i64 0, align 8
@current_debugger = common dso_local global i64 0, align 8
@KDP_CUR_DB = common dso_local global i64 0, align 8
@active_debugger = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_10__*, i32*, i16*)* @kdp_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @kdp_connect(%struct.TYPE_10__* %0, i32* %1, i16* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i16*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i16* %2, i16** %7, align 8
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 1
  store %struct.TYPE_11__* %16, %struct.TYPE_11__** %8, align 8
  %17 = load i32*, i32** %6, align 8
  %18 = load i32, i32* %17, align 4
  %19 = sext i32 %18 to i64
  store i64 %19, i64* %9, align 8
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  store %struct.TYPE_12__* %21, %struct.TYPE_12__** %10, align 8
  %22 = load i64, i64* %9, align 8
  %23 = icmp ult i64 %22, 40
  br i1 %23, label %24, label %26

24:                                               ; preds = %3
  %25 = load i64, i64* @FALSE, align 8
  store i64 %25, i64* %4, align 8
  br label %108

26:                                               ; preds = %3
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = sext i32 %33 to i64
  %35 = inttoptr i64 %34 to i8*
  %36 = call i32 @dprintf(i8* %35)
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %11, align 8
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  store i64 %42, i64* %12, align 8
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  store i64 %46, i64* %13, align 8
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  store i64 %50, i64* %14, align 8
  %51 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @kdp, i32 0, i32 4), align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %78

53:                                               ; preds = %26
  %54 = load i64, i64* %14, align 8
  %55 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @kdp, i32 0, i32 0), align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %73

57:                                               ; preds = %53
  %58 = load i64, i64* %11, align 8
  %59 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @kdp, i32 0, i32 1), align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %73

61:                                               ; preds = %57
  %62 = load i64, i64* %12, align 8
  %63 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @kdp, i32 0, i32 2), align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %73

65:                                               ; preds = %61
  %66 = load i64, i64* %13, align 8
  %67 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @kdp, i32 0, i32 3), align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %73

69:                                               ; preds = %65
  %70 = load i8*, i8** @KDPERR_NO_ERROR, align 8
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 1
  store i8* %70, i8** %72, align 8
  br label %77

73:                                               ; preds = %65, %61, %57, %53
  %74 = load i8*, i8** @KDPERR_ALREADY_CONNECTED, align 8
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 1
  store i8* %74, i8** %76, align 8
  br label %77

77:                                               ; preds = %73, %69
  br label %87

78:                                               ; preds = %26
  %79 = load i64, i64* %11, align 8
  store i64 %79, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @kdp, i32 0, i32 1), align 8
  %80 = load i64, i64* %12, align 8
  store i64 %80, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @kdp, i32 0, i32 2), align 8
  %81 = load i64, i64* @TRUE, align 8
  store i64 %81, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @kdp, i32 0, i32 4), align 8
  %82 = load i64, i64* %14, align 8
  store i64 %82, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @kdp, i32 0, i32 0), align 8
  %83 = load i64, i64* %13, align 8
  store i64 %83, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @kdp, i32 0, i32 3), align 8
  %84 = load i8*, i8** @KDPERR_NO_ERROR, align 8
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 1
  store i8* %84, i8** %86, align 8
  br label %87

87:                                               ; preds = %78, %77
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 0
  store i32 1, i32* %90, align 8
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 1
  store i32 16, i32* %93, align 4
  %94 = load i64, i64* %11, align 8
  %95 = trunc i64 %94 to i16
  %96 = load i16*, i16** %7, align 8
  store i16 %95, i16* %96, align 2
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load i32*, i32** %6, align 8
  store i32 %100, i32* %101, align 4
  %102 = load i64, i64* @current_debugger, align 8
  %103 = load i64, i64* @KDP_CUR_DB, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %105, label %106

105:                                              ; preds = %87
  store i32 1, i32* @active_debugger, align 4
  br label %106

106:                                              ; preds = %105, %87
  %107 = load i64, i64* @TRUE, align 8
  store i64 %107, i64* %4, align 8
  br label %108

108:                                              ; preds = %106, %24
  %109 = load i64, i64* %4, align 8
  ret i64 %109
}

declare dso_local i32 @dprintf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
