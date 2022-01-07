; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/miniupnpc/extr_igd_desc_parse.c_IGDdata.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/miniupnpc/extr_igd_desc_parse.c_IGDdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.IGDdatas = type { i8*, i8*, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i8*, i8*, i8*, i8* }

@.str = private unnamed_addr constant [8 x i8] c"URLBase\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"presentationURL\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"serviceType\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"controlURL\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"eventSubURL\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"SCPDURL\00", align 1
@MINIUPNPC_URL_MAXSIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @IGDdata(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.IGDdatas*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.IGDdatas*
  store %struct.IGDdatas* %10, %struct.IGDdatas** %7, align 8
  store i8* null, i8** %8, align 8
  %11 = load %struct.IGDdatas*, %struct.IGDdatas** %7, align 8
  %12 = getelementptr inbounds %struct.IGDdatas, %struct.IGDdatas* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @strcmp(i32 %13, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %3
  %17 = load %struct.IGDdatas*, %struct.IGDdatas** %7, align 8
  %18 = getelementptr inbounds %struct.IGDdatas, %struct.IGDdatas* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** %8, align 8
  br label %79

20:                                               ; preds = %3
  %21 = load %struct.IGDdatas*, %struct.IGDdatas** %7, align 8
  %22 = getelementptr inbounds %struct.IGDdatas, %struct.IGDdatas* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @strcmp(i32 %23, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %20
  %27 = load %struct.IGDdatas*, %struct.IGDdatas** %7, align 8
  %28 = getelementptr inbounds %struct.IGDdatas, %struct.IGDdatas* %27, i32 0, i32 1
  %29 = load i8*, i8** %28, align 8
  store i8* %29, i8** %8, align 8
  br label %78

30:                                               ; preds = %20
  %31 = load %struct.IGDdatas*, %struct.IGDdatas** %7, align 8
  %32 = getelementptr inbounds %struct.IGDdatas, %struct.IGDdatas* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @strcmp(i32 %33, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %30
  %37 = load %struct.IGDdatas*, %struct.IGDdatas** %7, align 8
  %38 = getelementptr inbounds %struct.IGDdatas, %struct.IGDdatas* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  store i8* %40, i8** %8, align 8
  br label %77

41:                                               ; preds = %30
  %42 = load %struct.IGDdatas*, %struct.IGDdatas** %7, align 8
  %43 = getelementptr inbounds %struct.IGDdatas, %struct.IGDdatas* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @strcmp(i32 %44, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %52, label %47

47:                                               ; preds = %41
  %48 = load %struct.IGDdatas*, %struct.IGDdatas** %7, align 8
  %49 = getelementptr inbounds %struct.IGDdatas, %struct.IGDdatas* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = load i8*, i8** %50, align 8
  store i8* %51, i8** %8, align 8
  br label %76

52:                                               ; preds = %41
  %53 = load %struct.IGDdatas*, %struct.IGDdatas** %7, align 8
  %54 = getelementptr inbounds %struct.IGDdatas, %struct.IGDdatas* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @strcmp(i32 %55, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %63, label %58

58:                                               ; preds = %52
  %59 = load %struct.IGDdatas*, %struct.IGDdatas** %7, align 8
  %60 = getelementptr inbounds %struct.IGDdatas, %struct.IGDdatas* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 2
  %62 = load i8*, i8** %61, align 8
  store i8* %62, i8** %8, align 8
  br label %75

63:                                               ; preds = %52
  %64 = load %struct.IGDdatas*, %struct.IGDdatas** %7, align 8
  %65 = getelementptr inbounds %struct.IGDdatas, %struct.IGDdatas* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @strcmp(i32 %66, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %74, label %69

69:                                               ; preds = %63
  %70 = load %struct.IGDdatas*, %struct.IGDdatas** %7, align 8
  %71 = getelementptr inbounds %struct.IGDdatas, %struct.IGDdatas* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 3
  %73 = load i8*, i8** %72, align 8
  store i8* %73, i8** %8, align 8
  br label %74

74:                                               ; preds = %69, %63
  br label %75

75:                                               ; preds = %74, %58
  br label %76

76:                                               ; preds = %75, %47
  br label %77

77:                                               ; preds = %76, %36
  br label %78

78:                                               ; preds = %77, %26
  br label %79

79:                                               ; preds = %78, %16
  %80 = load i8*, i8** %8, align 8
  %81 = icmp ne i8* %80, null
  br i1 %81, label %82, label %98

82:                                               ; preds = %79
  %83 = load i32, i32* %6, align 4
  %84 = load i32, i32* @MINIUPNPC_URL_MAXSIZE, align 4
  %85 = icmp sge i32 %83, %84
  br i1 %85, label %86, label %89

86:                                               ; preds = %82
  %87 = load i32, i32* @MINIUPNPC_URL_MAXSIZE, align 4
  %88 = sub nsw i32 %87, 1
  store i32 %88, i32* %6, align 4
  br label %89

89:                                               ; preds = %86, %82
  %90 = load i8*, i8** %8, align 8
  %91 = load i8*, i8** %5, align 8
  %92 = load i32, i32* %6, align 4
  %93 = call i32 @memcpy(i8* %90, i8* %91, i32 %92)
  %94 = load i8*, i8** %8, align 8
  %95 = load i32, i32* %6, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i8, i8* %94, i64 %96
  store i8 0, i8* %97, align 1
  br label %98

98:                                               ; preds = %89, %79
  ret void
}

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
