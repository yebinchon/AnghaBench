; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_st_lib.c_STlib_drawNum.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_st_lib.c_STlib_drawNum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32*, i32, i32, i64, %struct.TYPE_6__** }

@ST_Y = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"drawNum: n->y - ST_Y < 0\00", align 1
@BG = common dso_local global i32 0, align 4
@FG = common dso_local global i32 0, align 4
@sttminus = common dso_local global %struct.TYPE_6__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @STlib_drawNum(%struct.TYPE_5__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %5, align 4
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %6, align 4
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 5
  %20 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %20, i64 0
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @SHORT(i32 %24)
  store i32 %25, i32* %7, align 4
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 5
  %28 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %28, i64 0
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @SHORT(i32 %32)
  store i32 %33, i32* %8, align 4
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  store i32 %36, i32* %9, align 4
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 3
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp slt i32 %43, 0
  %45 = zext i1 %44 to i32
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %10, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %66

48:                                               ; preds = %2
  %49 = load i32, i32* %5, align 4
  %50 = icmp eq i32 %49, 2
  br i1 %50, label %51, label %55

51:                                               ; preds = %48
  %52 = load i32, i32* %6, align 4
  %53 = icmp slt i32 %52, -9
  br i1 %53, label %54, label %55

54:                                               ; preds = %51
  store i32 -9, i32* %6, align 4
  br label %63

55:                                               ; preds = %51, %48
  %56 = load i32, i32* %5, align 4
  %57 = icmp eq i32 %56, 3
  br i1 %57, label %58, label %62

58:                                               ; preds = %55
  %59 = load i32, i32* %6, align 4
  %60 = icmp slt i32 %59, -99
  br i1 %60, label %61, label %62

61:                                               ; preds = %58
  store i32 -99, i32* %6, align 4
  br label %62

62:                                               ; preds = %61, %58, %55
  br label %63

63:                                               ; preds = %62, %54
  %64 = load i32, i32* %6, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %6, align 4
  br label %66

66:                                               ; preds = %63, %2
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* %5, align 4
  %71 = load i32, i32* %7, align 4
  %72 = mul nsw i32 %70, %71
  %73 = sub nsw i32 %69, %72
  store i32 %73, i32* %9, align 4
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 4
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @ST_Y, align 8
  %78 = sub nsw i64 %76, %77
  %79 = icmp slt i64 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %66
  %81 = call i32 @I_Error(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %82

82:                                               ; preds = %80, %66
  %83 = load i32, i32* %9, align 4
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 4
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @ST_Y, align 8
  %88 = sub nsw i64 %86, %87
  %89 = load i32, i32* @BG, align 4
  %90 = load i32, i32* %7, align 4
  %91 = load i32, i32* %5, align 4
  %92 = mul nsw i32 %90, %91
  %93 = load i32, i32* %8, align 4
  %94 = load i32, i32* %9, align 4
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 4
  %97 = load i64, i64* %96, align 8
  %98 = load i32, i32* @FG, align 4
  %99 = call i32 @V_CopyRect(i32 %83, i64 %88, i32 %89, i32 %92, i32 %93, i32 %94, i64 %97, i32 %98)
  %100 = load i32, i32* %6, align 4
  %101 = icmp eq i32 %100, 1994
  br i1 %101, label %102, label %103

102:                                              ; preds = %82
  br label %165

103:                                              ; preds = %82
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  store i32 %106, i32* %9, align 4
  %107 = load i32, i32* %6, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %123, label %109

109:                                              ; preds = %103
  %110 = load i32, i32* %9, align 4
  %111 = load i32, i32* %7, align 4
  %112 = sub nsw i32 %110, %111
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 4
  %115 = load i64, i64* %114, align 8
  %116 = load i32, i32* @FG, align 4
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 5
  %119 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %119, i64 0
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %120, align 8
  %122 = call i32 @V_DrawPatch(i32 %112, i64 %115, i32 %116, %struct.TYPE_6__* %121)
  br label %123

123:                                              ; preds = %109, %103
  br label %124

124:                                              ; preds = %133, %123
  %125 = load i32, i32* %6, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %131

127:                                              ; preds = %124
  %128 = load i32, i32* %5, align 4
  %129 = add nsw i32 %128, -1
  store i32 %129, i32* %5, align 4
  %130 = icmp ne i32 %128, 0
  br label %131

131:                                              ; preds = %127, %124
  %132 = phi i1 [ false, %124 ], [ %130, %127 ]
  br i1 %132, label %133, label %153

133:                                              ; preds = %131
  %134 = load i32, i32* %7, align 4
  %135 = load i32, i32* %9, align 4
  %136 = sub nsw i32 %135, %134
  store i32 %136, i32* %9, align 4
  %137 = load i32, i32* %9, align 4
  %138 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i32 0, i32 4
  %140 = load i64, i64* %139, align 8
  %141 = load i32, i32* @FG, align 4
  %142 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i32 0, i32 5
  %144 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %143, align 8
  %145 = load i32, i32* %6, align 4
  %146 = srem i32 %145, 10
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %144, i64 %147
  %149 = load %struct.TYPE_6__*, %struct.TYPE_6__** %148, align 8
  %150 = call i32 @V_DrawPatch(i32 %137, i64 %140, i32 %141, %struct.TYPE_6__* %149)
  %151 = load i32, i32* %6, align 4
  %152 = sdiv i32 %151, 10
  store i32 %152, i32* %6, align 4
  br label %124

153:                                              ; preds = %131
  %154 = load i32, i32* %10, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %165

156:                                              ; preds = %153
  %157 = load i32, i32* %9, align 4
  %158 = sub nsw i32 %157, 8
  %159 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %160 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %159, i32 0, i32 4
  %161 = load i64, i64* %160, align 8
  %162 = load i32, i32* @FG, align 4
  %163 = load %struct.TYPE_6__*, %struct.TYPE_6__** @sttminus, align 8
  %164 = call i32 @V_DrawPatch(i32 %158, i64 %161, i32 %162, %struct.TYPE_6__* %163)
  br label %165

165:                                              ; preds = %102, %156, %153
  ret void
}

declare dso_local i32 @SHORT(i32) #1

declare dso_local i32 @I_Error(i8*) #1

declare dso_local i32 @V_CopyRect(i32, i64, i32, i32, i32, i32, i64, i32) #1

declare dso_local i32 @V_DrawPatch(i32, i64, i32, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
