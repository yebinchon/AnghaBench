; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/gtk/extr_yuimem.c_yui_mem_content_changed.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/gtk/extr_yuimem.c_yui_mem_content_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i64*, i64*, %struct.TYPE_3__*)* @yui_mem_content_changed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @yui_mem_content_changed(i32* %0, i64* %1, i64* %2, %struct.TYPE_3__* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64*, align 8
  %14 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64* %2, i64** %7, align 8
  store %struct.TYPE_3__* %3, %struct.TYPE_3__** %8, align 8
  %15 = load i64*, i64** %6, align 8
  %16 = call i32 @atoi(i64* %15)
  store i32 %16, i32* %10, align 4
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 3
  %19 = load i64, i64* %18, align 8
  %20 = load i32, i32* %10, align 4
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = mul nsw i32 %20, %23
  %25 = sext i32 %24 to i64
  %26 = add nsw i64 %19, %25
  store i64 %26, i64* %14, align 8
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @GTK_TREE_MODEL(i32 %29)
  %31 = load i64*, i64** %6, align 8
  %32 = call i32 @gtk_tree_model_get_iter_from_string(i32 %30, i32* %9, i64* %31)
  %33 = load i64*, i64** %7, align 8
  store i64* %33, i64** %13, align 8
  store i32 0, i32* %11, align 4
  br label %34

34:                                               ; preds = %47, %4
  %35 = load i64*, i64** %13, align 8
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %50

38:                                               ; preds = %34
  %39 = load i64*, i64** %13, align 8
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @hexaDigitToInt(i64 %40)
  %42 = icmp ne i32 %41, -1
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = load i32, i32* %11, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %11, align 4
  br label %46

46:                                               ; preds = %43, %38
  br label %47

47:                                               ; preds = %46
  %48 = load i64*, i64** %13, align 8
  %49 = getelementptr inbounds i64, i64* %48, i32 1
  store i64* %49, i64** %13, align 8
  br label %34

50:                                               ; preds = %34
  %51 = load i32, i32* %11, align 4
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = mul nsw i32 %54, 2
  %56 = icmp ne i32 %51, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %50
  br label %97

58:                                               ; preds = %50
  %59 = load i64*, i64** %7, align 8
  store i64* %59, i64** %13, align 8
  store i32 -1, i32* %12, align 4
  br label %60

60:                                               ; preds = %89, %58
  %61 = load i64*, i64** %13, align 8
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %92

64:                                               ; preds = %60
  %65 = load i64*, i64** %13, align 8
  %66 = load i64, i64* %65, align 8
  %67 = call i32 @hexaDigitToInt(i64 %66)
  %68 = icmp ne i32 %67, -1
  br i1 %68, label %69, label %88

69:                                               ; preds = %64
  %70 = load i32, i32* %12, align 4
  %71 = icmp eq i32 %70, -1
  br i1 %71, label %72, label %76

72:                                               ; preds = %69
  %73 = load i64*, i64** %13, align 8
  %74 = load i64, i64* %73, align 8
  %75 = call i32 @hexaDigitToInt(i64 %74)
  store i32 %75, i32* %12, align 4
  br label %87

76:                                               ; preds = %69
  %77 = load i64, i64* %14, align 8
  %78 = add nsw i64 %77, 1
  store i64 %78, i64* %14, align 8
  %79 = trunc i64 %77 to i32
  %80 = load i32, i32* %12, align 4
  %81 = mul nsw i32 16, %80
  %82 = load i64*, i64** %13, align 8
  %83 = load i64, i64* %82, align 8
  %84 = call i32 @hexaDigitToInt(i64 %83)
  %85 = add nsw i32 %81, %84
  %86 = call i32 @MappedMemoryWriteByte(i32 %79, i32 %85)
  store i32 -1, i32* %12, align 4
  br label %87

87:                                               ; preds = %76, %72
  br label %88

88:                                               ; preds = %87, %64
  br label %89

89:                                               ; preds = %88
  %90 = load i64*, i64** %13, align 8
  %91 = getelementptr inbounds i64, i64* %90, i32 1
  store i64* %91, i64** %13, align 8
  br label %60

92:                                               ; preds = %60
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @yui_window_invalidate(i32 %95)
  br label %97

97:                                               ; preds = %92, %57
  ret void
}

declare dso_local i32 @atoi(i64*) #1

declare dso_local i32 @gtk_tree_model_get_iter_from_string(i32, i32*, i64*) #1

declare dso_local i32 @GTK_TREE_MODEL(i32) #1

declare dso_local i32 @hexaDigitToInt(i64) #1

declare dso_local i32 @MappedMemoryWriteByte(i32, i32) #1

declare dso_local i32 @yui_window_invalidate(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
