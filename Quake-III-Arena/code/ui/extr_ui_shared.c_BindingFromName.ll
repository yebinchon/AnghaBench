; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/ui/extr_ui_shared.c_BindingFromName.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/ui/extr_ui_shared.c_BindingFromName.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i32 (i32, i8*, i32)* }

@g_bindCount = common dso_local global i32 0, align 4
@g_bindings = common dso_local global %struct.TYPE_3__* null, align 8
@DC = common dso_local global %struct.TYPE_4__* null, align 8
@g_nameBind1 = common dso_local global i8* null, align 8
@g_nameBind2 = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [5 x i8] c" or \00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"???\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @BindingFromName(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %63, %1
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @g_bindCount, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %66

10:                                               ; preds = %6
  %11 = load i8*, i8** %2, align 8
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** @g_bindings, align 8
  %13 = load i32, i32* %3, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @Q_stricmp(i8* %11, i32 %17)
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %62

20:                                               ; preds = %10
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** @g_bindings, align 8
  %22 = load i32, i32* %3, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %4, align 4
  %28 = icmp eq i32 %27, -1
  br i1 %28, label %29, label %30

29:                                               ; preds = %20
  br label %66

30:                                               ; preds = %20
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** @DC, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32 (i32, i8*, i32)*, i32 (i32, i8*, i32)** %32, align 8
  %34 = load i32, i32* %4, align 4
  %35 = load i8*, i8** @g_nameBind1, align 8
  %36 = call i32 %33(i32 %34, i8* %35, i32 32)
  %37 = load i8*, i8** @g_nameBind1, align 8
  %38 = call i32 @Q_strupr(i8* %37)
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** @g_bindings, align 8
  %40 = load i32, i32* %3, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* %5, align 4
  %46 = icmp ne i32 %45, -1
  br i1 %46, label %47, label %61

47:                                               ; preds = %30
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** @DC, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32 (i32, i8*, i32)*, i32 (i32, i8*, i32)** %49, align 8
  %51 = load i32, i32* %5, align 4
  %52 = load i8*, i8** @g_nameBind2, align 8
  %53 = call i32 %50(i32 %51, i8* %52, i32 32)
  %54 = load i8*, i8** @g_nameBind2, align 8
  %55 = call i32 @Q_strupr(i8* %54)
  %56 = load i8*, i8** @g_nameBind1, align 8
  %57 = call i32 @strcat(i8* %56, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %58 = load i8*, i8** @g_nameBind1, align 8
  %59 = load i8*, i8** @g_nameBind2, align 8
  %60 = call i32 @strcat(i8* %58, i8* %59)
  br label %61

61:                                               ; preds = %47, %30
  br label %69

62:                                               ; preds = %10
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %3, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %3, align 4
  br label %6

66:                                               ; preds = %29, %6
  %67 = load i8*, i8** @g_nameBind1, align 8
  %68 = call i32 @strcpy(i8* %67, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  br label %69

69:                                               ; preds = %66, %61
  ret void
}

declare dso_local i64 @Q_stricmp(i8*, i32) #1

declare dso_local i32 @Q_strupr(i8*) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
