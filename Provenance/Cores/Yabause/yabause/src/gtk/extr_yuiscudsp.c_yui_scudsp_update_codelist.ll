; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/gtk/extr_yuiscudsp.c_yui_scudsp_update_codelist.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/gtk/extr_yuiscudsp.c_yui_scudsp_update_codelist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@yui_scudsp_update_codelist.tagPC = internal global [24 x i8] c"<span foreground=\22red\22>\00", align 16
@yui_scudsp_update_codelist.tagEnd = internal global [9 x i8] c"</span>\0A\00", align 1
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32)* @yui_scudsp_update_codelist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @yui_scudsp_update_codelist(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [2440 x i8], align 16
  %7 = alloca i8*, align 8
  %8 = alloca [100 x i8], align 16
  %9 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = getelementptr inbounds [2440 x i8], [2440 x i8]* %6, i64 0, i64 0
  store i8* %10, i8** %7, align 8
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = sub nsw i32 %11, %14
  %16 = icmp sge i32 %15, 20
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* %4, align 4
  %19 = sub nsw i32 %18, 8
  store i32 %19, i32* %9, align 4
  br label %24

20:                                               ; preds = %2
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %9, align 4
  br label %24

24:                                               ; preds = %20, %17
  %25 = load i32, i32* %9, align 4
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  store i32 0, i32* %5, align 4
  br label %28

28:                                               ; preds = %76, %24
  %29 = load i32, i32* %5, align 4
  %30 = icmp slt i32 %29, 24
  br i1 %30, label %31, label %79

31:                                               ; preds = %28
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* %5, align 4
  %34 = add nsw i32 %32, %33
  %35 = load i32, i32* %4, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %44

37:                                               ; preds = %31
  %38 = load i8*, i8** %7, align 8
  %39 = call i32 @strcpy(i8* %38, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @yui_scudsp_update_codelist.tagPC, i64 0, i64 0))
  %40 = call i32 @strlen(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @yui_scudsp_update_codelist.tagPC, i64 0, i64 0))
  %41 = load i8*, i8** %7, align 8
  %42 = sext i32 %40 to i64
  %43 = getelementptr inbounds i8, i8* %41, i64 %42
  store i8* %43, i8** %7, align 8
  br label %44

44:                                               ; preds = %37, %31
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* %5, align 4
  %47 = add nsw i32 %45, %46
  %48 = getelementptr inbounds [100 x i8], [100 x i8]* %8, i64 0, i64 0
  %49 = call i32 @ScuDspDisasm(i32 %47, i8* %48)
  %50 = load i8*, i8** %7, align 8
  %51 = getelementptr inbounds [100 x i8], [100 x i8]* %8, i64 0, i64 0
  %52 = call i32 @strcpy(i8* %50, i8* %51)
  %53 = getelementptr inbounds [100 x i8], [100 x i8]* %8, i64 0, i64 0
  %54 = call i32 @strlen(i8* %53)
  %55 = load i8*, i8** %7, align 8
  %56 = sext i32 %54 to i64
  %57 = getelementptr inbounds i8, i8* %55, i64 %56
  store i8* %57, i8** %7, align 8
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* %5, align 4
  %60 = add nsw i32 %58, %59
  %61 = load i32, i32* %4, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %70

63:                                               ; preds = %44
  %64 = load i8*, i8** %7, align 8
  %65 = call i32 @strcpy(i8* %64, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @yui_scudsp_update_codelist.tagEnd, i64 0, i64 0))
  %66 = call i32 @strlen(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @yui_scudsp_update_codelist.tagEnd, i64 0, i64 0))
  %67 = load i8*, i8** %7, align 8
  %68 = sext i32 %66 to i64
  %69 = getelementptr inbounds i8, i8* %67, i64 %68
  store i8* %69, i8** %7, align 8
  br label %75

70:                                               ; preds = %44
  %71 = load i8*, i8** %7, align 8
  %72 = call i32 @strcpy(i8* %71, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %73 = load i8*, i8** %7, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 1
  store i8* %74, i8** %7, align 8
  br label %75

75:                                               ; preds = %70, %63
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %5, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %5, align 4
  br label %28

79:                                               ; preds = %28
  %80 = load i8*, i8** %7, align 8
  store i8 0, i8* %80, align 1
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @GTK_LABEL(i32 %83)
  %85 = getelementptr inbounds [2440 x i8], [2440 x i8]* %6, i64 0, i64 0
  %86 = call i32 @gtk_label_set_markup(i32 %84, i8* %85)
  ret void
}

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @ScuDspDisasm(i32, i8*) #1

declare dso_local i32 @gtk_label_set_markup(i32, i8*) #1

declare dso_local i32 @GTK_LABEL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
