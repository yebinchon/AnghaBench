; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/ui/extr_ui_shared.c_Menu_PaintAll.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/ui/extr_ui_shared.c_Menu_PaintAll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32 (i32, i32, double, i64, i64, i32, i32, i32, i32)* }

@captureData = common dso_local global i32 0, align 4
@Menus = common dso_local global i32* null, align 8
@qfalse = common dso_local global i32 0, align 4
@debugMode = common dso_local global i64 0, align 8
@__const.Menu_PaintAll.v = private unnamed_addr constant %struct.TYPE_4__ { i32 1, i32 1, i32 1, i32 1 }, align 4
@DC = common dso_local global %struct.TYPE_5__* null, align 8
@.str = private unnamed_addr constant [8 x i8] c"fps: %f\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Menu_PaintAll() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_4__, align 4
  br i1 true, label %3, label %6

3:                                                ; preds = %0
  %4 = load i32, i32* @captureData, align 4
  %5 = call i32 @captureFunc(i32 %4)
  br label %6

6:                                                ; preds = %3, %0
  store i32 0, i32* %1, align 4
  br label %7

7:                                                ; preds = %18, %6
  %8 = load i32, i32* %1, align 4
  %9 = call i32 (...) @Menu_Count()
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %21

11:                                               ; preds = %7
  %12 = load i32*, i32** @Menus, align 8
  %13 = load i32, i32* %1, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32, i32* %12, i64 %14
  %16 = load i32, i32* @qfalse, align 4
  %17 = call i32 @Menu_Paint(i32* %15, i32 %16)
  br label %18

18:                                               ; preds = %11
  %19 = load i32, i32* %1, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %1, align 4
  br label %7

21:                                               ; preds = %7
  %22 = load i64, i64* @debugMode, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %39

24:                                               ; preds = %21
  %25 = bitcast %struct.TYPE_4__* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %25, i8* align 4 bitcast (%struct.TYPE_4__* @__const.Menu_PaintAll.v to i8*), i64 16, i1 false)
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** @DC, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 1
  %28 = load i32 (i32, i32, double, i64, i64, i32, i32, i32, i32)*, i32 (i32, i32, double, i64, i64, i32, i32, i32, i32)** %27, align 8
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** @DC, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @va(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = bitcast %struct.TYPE_4__* %2 to { i64, i64 }*
  %34 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 4
  %36 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %33, i32 0, i32 1
  %37 = load i64, i64* %36, align 4
  %38 = call i32 %28(i32 5, i32 25, double 5.000000e-01, i64 %35, i64 %37, i32 %32, i32 0, i32 0, i32 0)
  br label %39

39:                                               ; preds = %24, %21
  ret void
}

declare dso_local i32 @captureFunc(i32) #1

declare dso_local i32 @Menu_Count(...) #1

declare dso_local i32 @Menu_Paint(i32*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @va(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
