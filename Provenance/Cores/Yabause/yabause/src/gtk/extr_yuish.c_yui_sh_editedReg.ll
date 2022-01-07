; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/gtk/extr_yuish.c_yui_sh_editedReg.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/gtk/extr_yuish.c_yui_sh_editedReg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"%08X\00", align 1
@yui = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*, i8*, %struct.TYPE_4__*)* @yui_sh_editedReg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @yui_sh_editedReg(i32* %0, i8* %1, i8* %2, %struct.TYPE_4__* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca [10 x i8], align 1
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store %struct.TYPE_4__* %3, %struct.TYPE_4__** %8, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = call i32 @atoi(i8* %14)
  store i32 %15, i32* %12, align 4
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @GTK_TREE_MODEL(i32 %18)
  %20 = load i8*, i8** %6, align 8
  %21 = call i32 @gtk_tree_model_get_iter_from_string(i32 %19, i32* %9, i8* %20)
  %22 = load i8*, i8** %7, align 8
  %23 = call i64 @strtoul(i8* %22, i8** %11, i32 16)
  store i64 %23, i64* %13, align 8
  %24 = load i8*, i8** %11, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = ptrtoint i8* %24 to i64
  %27 = ptrtoint i8* %25 to i64
  %28 = sub i64 %26, %27
  %29 = load i8*, i8** %7, align 8
  %30 = call i32 @strlen(i8* %29)
  %31 = sext i32 %30 to i64
  %32 = icmp eq i64 %28, %31
  br i1 %32, label %33, label %48

33:                                               ; preds = %4
  %34 = getelementptr inbounds [10 x i8], [10 x i8]* %10, i64 0, i64 0
  %35 = load i64, i64* %13, align 8
  %36 = trunc i64 %35 to i32
  %37 = call i32 @sprintf(i8* %34, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %36)
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %39 = load i32, i32* %12, align 4
  %40 = load i64, i64* %13, align 8
  %41 = call i32 @sh2setRegister(%struct.TYPE_4__* %38, i32 %39, i64 %40)
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @GTK_LIST_STORE(i32 %44)
  %46 = getelementptr inbounds [10 x i8], [10 x i8]* %10, i64 0, i64 0
  %47 = call i32 @gtk_list_store_set(i32 %45, i32* %9, i32 1, i8* %46, i32 -1)
  br label %48

48:                                               ; preds = %33, %4
  %49 = load i32, i32* @yui, align 4
  %50 = call i32 @yui_window_invalidate(i32 %49)
  ret void
}

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @gtk_tree_model_get_iter_from_string(i32, i32*, i8*) #1

declare dso_local i32 @GTK_TREE_MODEL(i32) #1

declare dso_local i64 @strtoul(i8*, i8**, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @sh2setRegister(%struct.TYPE_4__*, i32, i64) #1

declare dso_local i32 @gtk_list_store_set(i32, i32*, i32, i8*, i32) #1

declare dso_local i32 @GTK_LIST_STORE(i32) #1

declare dso_local i32 @yui_window_invalidate(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
