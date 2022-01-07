; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/gtk/extr_yuish.c_SH2UpdateCodeList.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/gtk/extr_yuish.c_SH2UpdateCodeList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"0x%8X: %[^\0A]\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"0x%08X\00", align 1
@GTK_STOCK_GO_FORWARD = common dso_local global i8* null, align 8
@MAX_BREAKPOINTS = common dso_local global i32 0, align 4
@GTK_STOCK_STOP = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i32)* @SH2UpdateCodeList to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SH2UpdateCodeList(%struct.TYPE_6__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [64 x i8], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [20 x i8], align 16
  %12 = alloca [64 x i8], align 16
  %13 = alloca %struct.TYPE_5__*, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i32 %1, i32* %4, align 4
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @gtk_list_store_clear(i32 %17)
  %19 = load i32, i32* %4, align 4
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = sub nsw i32 %19, %22
  %24 = icmp sge i32 %23, 40
  br i1 %24, label %25, label %28

25:                                               ; preds = %2
  %26 = load i32, i32* %4, align 4
  %27 = sub nsw i32 %26, 16
  store i32 %27, i32* %8, align 4
  br label %32

28:                                               ; preds = %2
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %8, align 4
  br label %32

32:                                               ; preds = %28, %25
  %33 = load i32, i32* %8, align 4
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = call %struct.TYPE_5__* @SH2GetBreakpointList(i32 %38)
  store %struct.TYPE_5__* %39, %struct.TYPE_5__** %13, align 8
  store i32 0, i32* %5, align 4
  br label %40

40:                                               ; preds = %118, %32
  %41 = load i32, i32* %5, align 4
  %42 = icmp slt i32 %41, 24
  br i1 %42, label %43, label %121

43:                                               ; preds = %40
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @SH2GetRegisters(i32 %46, i32* %14)
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* %5, align 4
  %50 = mul nsw i32 2, %49
  %51 = add nsw i32 %48, %50
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* %5, align 4
  %54 = mul nsw i32 2, %53
  %55 = add nsw i32 %52, %54
  %56 = call i32 @MappedMemoryReadWord(i32 %55)
  %57 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %58 = call i32 @SH2Disasm(i32 %51, i32 %56, i32 0, i32* %14, i8* %57)
  %59 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %60 = getelementptr inbounds [64 x i8], [64 x i8]* %12, i64 0, i64 0
  %61 = call i32 @sscanf(i8* %59, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32* %10, i8* %60)
  %62 = getelementptr inbounds [20 x i8], [20 x i8]* %11, i64 0, i64 0
  %63 = load i32, i32* %10, align 4
  %64 = call i32 @sprintf(i8* %62, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %63)
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @gtk_list_store_append(i32 %67, i32* %9)
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* %5, align 4
  %71 = mul nsw i32 2, %70
  %72 = add nsw i32 %69, %71
  %73 = load i32, i32* %4, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %81

75:                                               ; preds = %43
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load i8*, i8** @GTK_STOCK_GO_FORWARD, align 8
  %80 = call i32 @gtk_list_store_set(i32 %78, i32* %9, i32 0, i8* %79, i32 -1)
  br label %107

81:                                               ; preds = %43
  store i32 0, i32* %6, align 4
  br label %82

82:                                               ; preds = %103, %81
  %83 = load i32, i32* %6, align 4
  %84 = load i32, i32* @MAX_BREAKPOINTS, align 4
  %85 = sub nsw i32 %84, 1
  %86 = icmp slt i32 %83, %85
  br i1 %86, label %87, label %106

87:                                               ; preds = %82
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %89 = load i32, i32* %6, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* %10, align 4
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %96, label %102

96:                                               ; preds = %87
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load i8*, i8** @GTK_STOCK_STOP, align 8
  %101 = call i32 @gtk_list_store_set(i32 %99, i32* %9, i32 0, i8* %100, i32 -1)
  br label %102

102:                                              ; preds = %96, %87
  br label %103

103:                                              ; preds = %102
  %104 = load i32, i32* %6, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %6, align 4
  br label %82

106:                                              ; preds = %82
  br label %107

107:                                              ; preds = %106, %75
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = getelementptr inbounds [20 x i8], [20 x i8]* %11, i64 0, i64 0
  %112 = call i32 @gtk_list_store_set(i32 %110, i32* %9, i32 1, i8* %111, i32 -1)
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = getelementptr inbounds [64 x i8], [64 x i8]* %12, i64 0, i64 0
  %117 = call i32 @gtk_list_store_set(i32 %115, i32* %9, i32 2, i8* %116, i32 -1)
  br label %118

118:                                              ; preds = %107
  %119 = load i32, i32* %5, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %5, align 4
  br label %40

121:                                              ; preds = %40
  ret void
}

declare dso_local i32 @gtk_list_store_clear(i32) #1

declare dso_local %struct.TYPE_5__* @SH2GetBreakpointList(i32) #1

declare dso_local i32 @SH2GetRegisters(i32, i32*) #1

declare dso_local i32 @SH2Disasm(i32, i32, i32, i32*, i8*) #1

declare dso_local i32 @MappedMemoryReadWord(i32) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*, i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @gtk_list_store_append(i32, i32*) #1

declare dso_local i32 @gtk_list_store_set(i32, i32*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
