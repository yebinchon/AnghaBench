; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_wi_stuff.c_WI_drawOnLnode.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_wi_stuff.c_WI_drawOnLnode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }

@lnodes = common dso_local global %struct.TYPE_8__** null, align 8
@wbs = common dso_local global %struct.TYPE_7__* null, align 8
@SCREENWIDTH = common dso_local global i32 0, align 4
@SCREENHEIGHT = common dso_local global i32 0, align 4
@FB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Could not place patch on level %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @WI_drawOnLnode(i32 %0, %struct.TYPE_6__** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_6__** %1, %struct.TYPE_6__*** %4, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %5, align 4
  br label %11

11:                                               ; preds = %96, %2
  %12 = load %struct.TYPE_8__**, %struct.TYPE_8__*** @lnodes, align 8
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** @wbs, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %12, i64 %15
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %18 = load i32, i32* %3, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %4, align 8
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %23, i64 %25
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @SHORT(i32 %29)
  %31 = sub nsw i32 %22, %30
  store i32 %31, i32* %6, align 4
  %32 = load %struct.TYPE_8__**, %struct.TYPE_8__*** @lnodes, align 8
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** @wbs, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %32, i64 %35
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %36, align 8
  %38 = load i32, i32* %3, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %4, align 8
  %44 = load i32, i32* %5, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %43, i64 %45
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @SHORT(i32 %49)
  %51 = sub nsw i32 %42, %50
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* %6, align 4
  %53 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %4, align 8
  %54 = load i32, i32* %5, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %53, i64 %55
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @SHORT(i32 %59)
  %61 = add nsw i32 %52, %60
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* %7, align 4
  %63 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %4, align 8
  %64 = load i32, i32* %5, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %63, i64 %65
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @SHORT(i32 %69)
  %71 = add nsw i32 %62, %70
  store i32 %71, i32* %9, align 4
  %72 = load i32, i32* %6, align 4
  %73 = icmp sge i32 %72, 0
  br i1 %73, label %74, label %86

74:                                               ; preds = %11
  %75 = load i32, i32* %8, align 4
  %76 = load i32, i32* @SCREENWIDTH, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %86

78:                                               ; preds = %74
  %79 = load i32, i32* %7, align 4
  %80 = icmp sge i32 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %78
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* @SCREENHEIGHT, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %81
  store i32 1, i32* %10, align 4
  br label %89

86:                                               ; preds = %81, %78, %74, %11
  %87 = load i32, i32* %5, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %5, align 4
  br label %89

89:                                               ; preds = %86, %85
  br label %90

90:                                               ; preds = %89
  %91 = load i32, i32* %10, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %96, label %93

93:                                               ; preds = %90
  %94 = load i32, i32* %5, align 4
  %95 = icmp ne i32 %94, 2
  br label %96

96:                                               ; preds = %93, %90
  %97 = phi i1 [ false, %90 ], [ %95, %93 ]
  br i1 %97, label %11, label %98

98:                                               ; preds = %96
  %99 = load i32, i32* %10, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %134

101:                                              ; preds = %98
  %102 = load i32, i32* %5, align 4
  %103 = icmp slt i32 %102, 2
  br i1 %103, label %104, label %134

104:                                              ; preds = %101
  %105 = load %struct.TYPE_8__**, %struct.TYPE_8__*** @lnodes, align 8
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** @wbs, align 8
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %105, i64 %108
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %109, align 8
  %111 = load i32, i32* %3, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.TYPE_8__**, %struct.TYPE_8__*** @lnodes, align 8
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** @wbs, align 8
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %116, i64 %119
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %120, align 8
  %122 = load i32, i32* %3, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* @FB, align 4
  %128 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %4, align 8
  %129 = load i32, i32* %5, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %128, i64 %130
  %132 = load %struct.TYPE_6__*, %struct.TYPE_6__** %131, align 8
  %133 = call i32 @V_DrawPatch(i32 %115, i32 %126, i32 %127, %struct.TYPE_6__* %132)
  br label %138

134:                                              ; preds = %101, %98
  %135 = load i32, i32* %3, align 4
  %136 = add nsw i32 %135, 1
  %137 = call i32 @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %136)
  br label %138

138:                                              ; preds = %134, %104
  ret void
}

declare dso_local i32 @SHORT(i32) #1

declare dso_local i32 @V_DrawPatch(i32, i32, i32, %struct.TYPE_6__*) #1

declare dso_local i32 @printf(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
