; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/gtk/extr_yuim68k.c_yui_m68k_update_reglist.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/gtk/extr_yuim68k.c_yui_m68k_update_reglist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i64, i64, i64*, i64* }

@yui_m68k = common dso_local global %struct.TYPE_5__* null, align 8
@.str = private unnamed_addr constant [4 x i8] c"D%d\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%08x\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"A%d\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"SR\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"PC\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_4__*)* @yui_m68k_update_reglist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @yui_m68k_update_reglist(i32* %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [32 x i8], align 16
  %7 = alloca [32 x i8], align 16
  %8 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %4, align 8
  store i32 0, i32* %8, align 4
  br label %9

9:                                                ; preds = %48, %2
  %10 = load i32, i32* %8, align 4
  %11 = icmp slt i32 %10, 8
  br i1 %11, label %12, label %51

12:                                               ; preds = %9
  %13 = load i32, i32* %8, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %12
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** @yui_m68k, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @GTK_TREE_MODEL(i32 %18)
  %20 = call i32 @gtk_tree_model_get_iter_first(i32 %19, i32* %5)
  br label %27

21:                                               ; preds = %12
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** @yui_m68k, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @GTK_TREE_MODEL(i32 %24)
  %26 = call i32 @gtk_tree_model_iter_next(i32 %25, i32* %5)
  br label %27

27:                                               ; preds = %21, %15
  %28 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @sprintf(i8* %28, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 3
  %34 = load i64*, i64** %33, align 8
  %35 = load i32, i32* %8, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i64, i64* %34, i64 %36
  %38 = load i64, i64* %37, align 8
  %39 = trunc i64 %38 to i32
  %40 = call i32 @sprintf(i8* %31, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** @yui_m68k, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @GTK_LIST_STORE(i32 %43)
  %45 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %46 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %47 = call i32 @gtk_list_store_set(i32 %44, i32* %5, i32 0, i8* %45, i32 1, i8* %46, i32 -1)
  br label %48

48:                                               ; preds = %27
  %49 = load i32, i32* %8, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %8, align 4
  br label %9

51:                                               ; preds = %9
  store i32 0, i32* %8, align 4
  br label %52

52:                                               ; preds = %81, %51
  %53 = load i32, i32* %8, align 4
  %54 = icmp slt i32 %53, 8
  br i1 %54, label %55, label %84

55:                                               ; preds = %52
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** @yui_m68k, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @GTK_TREE_MODEL(i32 %58)
  %60 = call i32 @gtk_tree_model_iter_next(i32 %59, i32* %5)
  %61 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %62 = load i32, i32* %8, align 4
  %63 = call i32 @sprintf(i8* %61, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %62)
  %64 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 2
  %67 = load i64*, i64** %66, align 8
  %68 = load i32, i32* %8, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i64, i64* %67, i64 %69
  %71 = load i64, i64* %70, align 8
  %72 = trunc i64 %71 to i32
  %73 = call i32 @sprintf(i8* %64, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %72)
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** @yui_m68k, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @GTK_LIST_STORE(i32 %76)
  %78 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %79 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %80 = call i32 @gtk_list_store_set(i32 %77, i32* %5, i32 0, i8* %78, i32 1, i8* %79, i32 -1)
  br label %81

81:                                               ; preds = %55
  %82 = load i32, i32* %8, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %8, align 4
  br label %52

84:                                               ; preds = %52
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** @yui_m68k, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @GTK_TREE_MODEL(i32 %87)
  %89 = call i32 @gtk_tree_model_iter_next(i32 %88, i32* %5)
  %90 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = trunc i64 %93 to i32
  %95 = call i32 @sprintf(i8* %90, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %94)
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** @yui_m68k, align 8
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @GTK_LIST_STORE(i32 %98)
  %100 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %101 = call i32 @gtk_list_store_set(i32 %99, i32* %5, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 1, i8* %100, i32 -1)
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** @yui_m68k, align 8
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @GTK_TREE_MODEL(i32 %104)
  %106 = call i32 @gtk_tree_model_iter_next(i32 %105, i32* %5)
  %107 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = trunc i64 %110 to i32
  %112 = call i32 @sprintf(i8* %107, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %111)
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** @yui_m68k, align 8
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @GTK_LIST_STORE(i32 %115)
  %117 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %118 = call i32 @gtk_list_store_set(i32 %116, i32* %5, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 1, i8* %117, i32 -1)
  ret void
}

declare dso_local i32 @gtk_tree_model_get_iter_first(i32, i32*) #1

declare dso_local i32 @GTK_TREE_MODEL(i32) #1

declare dso_local i32 @gtk_tree_model_iter_next(i32, i32*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @gtk_list_store_set(i32, i32*, i32, i8*, i32, i8*, i32) #1

declare dso_local i32 @GTK_LIST_STORE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
