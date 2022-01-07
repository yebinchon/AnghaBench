; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/gtk/extr_yuim68k.c_yui_m68k_update_codelist.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/gtk/extr_yuim68k.c_yui_m68k_update_codelist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@yui_m68k_update_codelist.tagPC = internal global [24 x i8] c"<span foreground=\22red\22>\00", align 16
@yui_m68k_update_codelist.tagEnd = internal global [9 x i8] c"</span>\0A\00", align 1
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32)* @yui_m68k_update_codelist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @yui_m68k_update_codelist(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [1576 x i8], align 16
  %7 = alloca i8*, align 8
  %8 = alloca [64 x i8], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = getelementptr inbounds [1576 x i8], [1576 x i8]* %6, i64 0, i64 0
  store i8* %11, i8** %7, align 8
  store i32 0, i32* %9, align 4
  %12 = load i32, i32* %4, align 4
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = sub nsw i32 %12, %15
  %17 = icmp sge i32 %16, 22
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* %4, align 4
  store i32 %19, i32* %10, align 4
  br label %24

20:                                               ; preds = %2
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %10, align 4
  br label %24

24:                                               ; preds = %20, %18
  %25 = load i32, i32* %10, align 4
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  store i32 0, i32* %5, align 4
  br label %28

28:                                               ; preds = %69, %24
  %29 = load i32, i32* %5, align 4
  %30 = icmp slt i32 %29, 24
  br i1 %30, label %31, label %72

31:                                               ; preds = %28
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* %4, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %42

35:                                               ; preds = %31
  store i32 1, i32* %9, align 4
  %36 = load i8*, i8** %7, align 8
  %37 = call i32 @strcpy(i8* %36, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @yui_m68k_update_codelist.tagPC, i64 0, i64 0))
  %38 = call i32 @strlen(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @yui_m68k_update_codelist.tagPC, i64 0, i64 0))
  %39 = load i8*, i8** %7, align 8
  %40 = sext i32 %38 to i64
  %41 = getelementptr inbounds i8, i8* %39, i64 %40
  store i8* %41, i8** %7, align 8
  br label %42

42:                                               ; preds = %35, %31
  %43 = load i32, i32* %10, align 4
  %44 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %45 = call i32 @M68KDisasm(i32 %43, i8* %44)
  store i32 %45, i32* %10, align 4
  %46 = load i8*, i8** %7, align 8
  %47 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %48 = call i32 @strcpy(i8* %46, i8* %47)
  %49 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %50 = call i32 @strlen(i8* %49)
  %51 = load i8*, i8** %7, align 8
  %52 = sext i32 %50 to i64
  %53 = getelementptr inbounds i8, i8* %51, i64 %52
  store i8* %53, i8** %7, align 8
  %54 = load i32, i32* %9, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %42
  store i32 0, i32* %9, align 4
  %57 = load i8*, i8** %7, align 8
  %58 = call i32 @strcpy(i8* %57, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @yui_m68k_update_codelist.tagEnd, i64 0, i64 0))
  %59 = call i32 @strlen(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @yui_m68k_update_codelist.tagEnd, i64 0, i64 0))
  %60 = load i8*, i8** %7, align 8
  %61 = sext i32 %59 to i64
  %62 = getelementptr inbounds i8, i8* %60, i64 %61
  store i8* %62, i8** %7, align 8
  br label %68

63:                                               ; preds = %42
  %64 = load i8*, i8** %7, align 8
  %65 = call i32 @strcpy(i8* %64, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %66 = load i8*, i8** %7, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 1
  store i8* %67, i8** %7, align 8
  br label %68

68:                                               ; preds = %63, %56
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %5, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %5, align 4
  br label %28

72:                                               ; preds = %28
  %73 = load i8*, i8** %7, align 8
  store i8 0, i8* %73, align 1
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @GTK_LABEL(i32 %76)
  %78 = getelementptr inbounds [1576 x i8], [1576 x i8]* %6, i64 0, i64 0
  %79 = call i32 @gtk_label_set_markup(i32 %77, i8* %78)
  ret void
}

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @M68KDisasm(i32, i8*) #1

declare dso_local i32 @gtk_label_set_markup(i32, i8*) #1

declare dso_local i32 @GTK_LABEL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
