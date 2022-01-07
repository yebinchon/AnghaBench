; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/gtk/extr_yuish.c_SH2UpdateMemoryBreakpointList.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/gtk/extr_yuish.c_SH2UpdateMemoryBreakpointList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }

@MAX_BREAKPOINTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%08X\00", align 1
@BREAK_BYTEREAD = common dso_local global i32 0, align 4
@BREAK_WORDREAD = common dso_local global i32 0, align 4
@BREAK_LONGREAD = common dso_local global i32 0, align 4
@BREAK_BYTEWRITE = common dso_local global i32 0, align 4
@BREAK_WORDWRITE = common dso_local global i32 0, align 4
@BREAK_LONGWRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SH2UpdateMemoryBreakpointList(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [30 x i64], align 16
  %6 = alloca [30 x i64], align 16
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @gtk_list_store_clear(i32 %12)
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.TYPE_5__* @SH2GetMemoryBreakpointList(i32 %16)
  store %struct.TYPE_5__* %17, %struct.TYPE_5__** %3, align 8
  store i32 0, i32* %4, align 4
  br label %18

18:                                               ; preds = %113, %1
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @MAX_BREAKPOINTS, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %116

22:                                               ; preds = %18
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, -1
  br i1 %29, label %30, label %112

30:                                               ; preds = %22
  %31 = getelementptr inbounds [30 x i64], [30 x i64]* %6, i64 0, i64 0
  store i64* %31, i64** %7, align 8
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %33 = load i32, i32* %4, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %8, align 4
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @GTK_LIST_STORE(i32 %40)
  %42 = call i32 @gtk_list_store_append(i32 %41, i32* %9)
  %43 = getelementptr inbounds [30 x i64], [30 x i64]* %5, i64 0, i64 0
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %45 = load i32, i32* %4, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @sprintf(i64* %43, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %49)
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* @BREAK_BYTEREAD, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %30
  %56 = load i64*, i64** %7, align 8
  %57 = getelementptr inbounds i64, i64* %56, i32 1
  store i64* %57, i64** %7, align 8
  store i64 98, i64* %56, align 8
  br label %58

58:                                               ; preds = %55, %30
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* @BREAK_WORDREAD, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %58
  %64 = load i64*, i64** %7, align 8
  %65 = getelementptr inbounds i64, i64* %64, i32 1
  store i64* %65, i64** %7, align 8
  store i64 119, i64* %64, align 8
  br label %66

66:                                               ; preds = %63, %58
  %67 = load i32, i32* %8, align 4
  %68 = load i32, i32* @BREAK_LONGREAD, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %66
  %72 = load i64*, i64** %7, align 8
  %73 = getelementptr inbounds i64, i64* %72, i32 1
  store i64* %73, i64** %7, align 8
  store i64 108, i64* %72, align 8
  br label %74

74:                                               ; preds = %71, %66
  %75 = load i32, i32* %8, align 4
  %76 = load i32, i32* @BREAK_BYTEWRITE, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %74
  %80 = load i64*, i64** %7, align 8
  %81 = getelementptr inbounds i64, i64* %80, i32 1
  store i64* %81, i64** %7, align 8
  store i64 66, i64* %80, align 8
  br label %82

82:                                               ; preds = %79, %74
  %83 = load i32, i32* %8, align 4
  %84 = load i32, i32* @BREAK_WORDWRITE, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %82
  %88 = load i64*, i64** %7, align 8
  %89 = getelementptr inbounds i64, i64* %88, i32 1
  store i64* %89, i64** %7, align 8
  store i64 87, i64* %88, align 8
  br label %90

90:                                               ; preds = %87, %82
  %91 = load i32, i32* %8, align 4
  %92 = load i32, i32* @BREAK_LONGWRITE, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %90
  %96 = load i64*, i64** %7, align 8
  %97 = getelementptr inbounds i64, i64* %96, i32 1
  store i64* %97, i64** %7, align 8
  store i64 76, i64* %96, align 8
  br label %98

98:                                               ; preds = %95, %90
  %99 = load i64*, i64** %7, align 8
  store i64 0, i64* %99, align 8
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @GTK_LIST_STORE(i32 %102)
  %104 = getelementptr inbounds [30 x i64], [30 x i64]* %5, i64 0, i64 0
  %105 = call i32 @gtk_list_store_set(i32 %103, i32* %9, i32 0, i64* %104, i32 -1)
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @GTK_LIST_STORE(i32 %108)
  %110 = getelementptr inbounds [30 x i64], [30 x i64]* %6, i64 0, i64 0
  %111 = call i32 @gtk_list_store_set(i32 %109, i32* %9, i32 1, i64* %110, i32 -1)
  br label %112

112:                                              ; preds = %98, %22
  br label %113

113:                                              ; preds = %112
  %114 = load i32, i32* %4, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %4, align 4
  br label %18

116:                                              ; preds = %18
  ret void
}

declare dso_local i32 @gtk_list_store_clear(i32) #1

declare dso_local %struct.TYPE_5__* @SH2GetMemoryBreakpointList(i32) #1

declare dso_local i32 @gtk_list_store_append(i32, i32*) #1

declare dso_local i32 @GTK_LIST_STORE(i32) #1

declare dso_local i32 @sprintf(i64*, i8*, i32) #1

declare dso_local i32 @gtk_list_store_set(i32, i32*, i32, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
