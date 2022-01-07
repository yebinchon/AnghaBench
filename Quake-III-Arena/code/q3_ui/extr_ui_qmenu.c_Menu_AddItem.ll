; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/q3_ui/extr_ui_qmenu.c_Menu_AddItem.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/q3_ui/extr_ui_qmenu.c_Menu_AddItem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i8** }
%struct.TYPE_5__ = type { i64, i32, i32, %struct.TYPE_4__* }

@MAX_MENUITEMS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"Menu_AddItem: excessive items\00", align 1
@QMF_HASMOUSEFOCUS = common dso_local global i32 0, align 4
@QMF_NODEFAULTINIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Menu_Init: unknown type %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Menu_AddItem(%struct.TYPE_4__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @MAX_MENUITEMS, align 8
  %10 = icmp uge i64 %8, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = call i32 @trap_Error(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %13

13:                                               ; preds = %11, %2
  %14 = load i8*, i8** %4, align 8
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %17 = load i8**, i8*** %16, align 8
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds i8*, i8** %17, i64 %20
  store i8* %14, i8** %21, align 8
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = load i8**, i8*** %24, align 8
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds i8*, i8** %25, i64 %28
  %30 = load i8*, i8** %29, align 8
  %31 = bitcast i8* %30 to %struct.TYPE_5__*
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 3
  store %struct.TYPE_4__* %22, %struct.TYPE_4__** %32, align 8
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = load i8**, i8*** %37, align 8
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds i8*, i8** %38, i64 %41
  %43 = load i8*, i8** %42, align 8
  %44 = bitcast i8* %43 to %struct.TYPE_5__*
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  store i64 %35, i64* %45, align 8
  %46 = load i32, i32* @QMF_HASMOUSEFOCUS, align 4
  %47 = xor i32 %46, -1
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  %50 = load i8**, i8*** %49, align 8
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = getelementptr inbounds i8*, i8** %50, i64 %53
  %55 = load i8*, i8** %54, align 8
  %56 = bitcast i8* %55 to %struct.TYPE_5__*
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = and i32 %58, %47
  store i32 %59, i32* %57, align 8
  %60 = load i8*, i8** %4, align 8
  %61 = bitcast i8* %60 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %61, %struct.TYPE_5__** %5, align 8
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @QMF_NODEFAULTINIT, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %119, label %68

68:                                               ; preds = %13
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  switch i32 %71, label %112 [
    i32 137, label %72
    i32 134, label %76
    i32 129, label %80
    i32 132, label %84
    i32 130, label %88
    i32 136, label %92
    i32 128, label %96
    i32 131, label %100
    i32 133, label %104
    i32 135, label %108
  ]

72:                                               ; preds = %68
  %73 = load i8*, i8** %4, align 8
  %74 = bitcast i8* %73 to i32*
  %75 = call i32 @Action_Init(i32* %74)
  br label %118

76:                                               ; preds = %68
  %77 = load i8*, i8** %4, align 8
  %78 = bitcast i8* %77 to i32*
  %79 = call i32 @MenuField_Init(i32* %78)
  br label %118

80:                                               ; preds = %68
  %81 = load i8*, i8** %4, align 8
  %82 = bitcast i8* %81 to i32*
  %83 = call i32 @SpinControl_Init(i32* %82)
  br label %118

84:                                               ; preds = %68
  %85 = load i8*, i8** %4, align 8
  %86 = bitcast i8* %85 to i32*
  %87 = call i32 @RadioButton_Init(i32* %86)
  br label %118

88:                                               ; preds = %68
  %89 = load i8*, i8** %4, align 8
  %90 = bitcast i8* %89 to i32*
  %91 = call i32 @Slider_Init(i32* %90)
  br label %118

92:                                               ; preds = %68
  %93 = load i8*, i8** %4, align 8
  %94 = bitcast i8* %93 to i32*
  %95 = call i32 @Bitmap_Init(i32* %94)
  br label %118

96:                                               ; preds = %68
  %97 = load i8*, i8** %4, align 8
  %98 = bitcast i8* %97 to i32*
  %99 = call i32 @Text_Init(i32* %98)
  br label %118

100:                                              ; preds = %68
  %101 = load i8*, i8** %4, align 8
  %102 = bitcast i8* %101 to i32*
  %103 = call i32 @ScrollList_Init(i32* %102)
  br label %118

104:                                              ; preds = %68
  %105 = load i8*, i8** %4, align 8
  %106 = bitcast i8* %105 to i32*
  %107 = call i32 @PText_Init(i32* %106)
  br label %118

108:                                              ; preds = %68
  %109 = load i8*, i8** %4, align 8
  %110 = bitcast i8* %109 to i32*
  %111 = call i32 @BText_Init(i32* %110)
  br label %118

112:                                              ; preds = %68
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 4
  %116 = call i8* @va(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %115)
  %117 = call i32 @trap_Error(i8* %116)
  br label %118

118:                                              ; preds = %112, %108, %104, %100, %96, %92, %88, %84, %80, %76, %72
  br label %119

119:                                              ; preds = %118, %13
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = add i64 %122, 1
  store i64 %123, i64* %121, align 8
  ret void
}

declare dso_local i32 @trap_Error(i8*) #1

declare dso_local i32 @Action_Init(i32*) #1

declare dso_local i32 @MenuField_Init(i32*) #1

declare dso_local i32 @SpinControl_Init(i32*) #1

declare dso_local i32 @RadioButton_Init(i32*) #1

declare dso_local i32 @Slider_Init(i32*) #1

declare dso_local i32 @Bitmap_Init(i32*) #1

declare dso_local i32 @Text_Init(i32*) #1

declare dso_local i32 @ScrollList_Init(i32*) #1

declare dso_local i32 @PText_Init(i32*) #1

declare dso_local i32 @BText_Init(i32*) #1

declare dso_local i8* @va(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
