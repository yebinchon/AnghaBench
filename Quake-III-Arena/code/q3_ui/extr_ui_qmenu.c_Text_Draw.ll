; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/q3_ui/extr_ui_qmenu.c_Text_Draw.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/q3_ui/extr_ui_qmenu.c_Text_Draw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { float*, i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }

@QMF_GRAYED = common dso_local global i32 0, align 4
@text_color_disabled = common dso_local global float* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*)* @Text_Draw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Text_Draw(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [512 x i8], align 16
  %6 = alloca float*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 2
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %3, align 4
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %4, align 4
  %15 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i64 0, i64 0
  store i8 0, i8* %15, align 16
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %1
  %22 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i64 0, i64 0
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @strcpy(i8* %22, i32 %26)
  br label %28

28:                                               ; preds = %21, %1
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %28
  %34 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i64 0, i64 0
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @strcat(i8* %34, i32 %37)
  br label %39

39:                                               ; preds = %33, %28
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @QMF_GRAYED, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %39
  %48 = load float*, float** @text_color_disabled, align 8
  store float* %48, float** %6, align 8
  br label %53

49:                                               ; preds = %39
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load float*, float** %51, align 8
  store float* %52, float** %6, align 8
  br label %53

53:                                               ; preds = %49, %47
  %54 = load i32, i32* %3, align 4
  %55 = load i32, i32* %4, align 4
  %56 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i64 0, i64 0
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = load float*, float** %6, align 8
  %61 = call i32 @UI_DrawString(i32 %54, i32 %55, i8* %56, i32 %59, float* %60)
  ret void
}

declare dso_local i32 @strcpy(i8*, i32) #1

declare dso_local i32 @strcat(i8*, i32) #1

declare dso_local i32 @UI_DrawString(i32, i32, i8*, i32, float*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
