; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/helpers/dtoverlay/extr_dtoverlay.c_dtoverlay_create_node.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/helpers/dtoverlay/extr_dtoverlay.c_dtoverlay_create_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@FDT_ERR_BADPATH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dtoverlay_create_node(%struct.TYPE_3__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %10, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = load i8*, i8** %6, align 8
  %17 = call i32 @strlen(i8* %16)
  store i32 %17, i32* %7, align 4
  br label %18

18:                                               ; preds = %15, %3
  %19 = load i8*, i8** %6, align 8
  store i8* %19, i8** %8, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = load i32, i32* %7, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i8, i8* %20, i64 %22
  store i8* %23, i8** %9, align 8
  %24 = load i32, i32* %7, align 4
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %38

26:                                               ; preds = %18
  %27 = load i8*, i8** %8, align 8
  %28 = load i32, i32* %7, align 4
  %29 = sub nsw i32 %28, 1
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8, i8* %27, i64 %30
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %33, 47
  br i1 %34, label %35, label %38

35:                                               ; preds = %26
  %36 = load i8*, i8** %9, align 8
  %37 = getelementptr inbounds i8, i8* %36, i32 -1
  store i8* %37, i8** %9, align 8
  br label %38

38:                                               ; preds = %35, %26, %18
  br label %39

39:                                               ; preds = %104, %38
  %40 = load i8*, i8** %8, align 8
  %41 = load i8*, i8** %9, align 8
  %42 = icmp ult i8* %40, %41
  br i1 %42, label %43, label %106

43:                                               ; preds = %39
  %44 = load i8*, i8** %8, align 8
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp ne i32 %46, 47
  br i1 %47, label %48, label %51

48:                                               ; preds = %43
  %49 = load i32, i32* @FDT_ERR_BADPATH, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %4, align 4
  br label %118

51:                                               ; preds = %43
  %52 = load i8*, i8** %8, align 8
  %53 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %53, i8** %8, align 8
  %54 = load i8*, i8** %8, align 8
  store i8* %54, i8** %11, align 8
  br label %55

55:                                               ; preds = %67, %51
  %56 = load i8*, i8** %11, align 8
  %57 = load i8*, i8** %9, align 8
  %58 = icmp ne i8* %56, %57
  br i1 %58, label %59, label %64

59:                                               ; preds = %55
  %60 = load i8*, i8** %11, align 8
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp ne i32 %62, 47
  br label %64

64:                                               ; preds = %59, %55
  %65 = phi i1 [ false, %55 ], [ %63, %59 ]
  br i1 %65, label %66, label %70

66:                                               ; preds = %64
  br label %67

67:                                               ; preds = %66
  %68 = load i8*, i8** %11, align 8
  %69 = getelementptr inbounds i8, i8* %68, i32 1
  store i8* %69, i8** %11, align 8
  br label %55

70:                                               ; preds = %64
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %10, align 4
  %75 = load i8*, i8** %8, align 8
  %76 = load i8*, i8** %11, align 8
  %77 = load i8*, i8** %8, align 8
  %78 = ptrtoint i8* %76 to i64
  %79 = ptrtoint i8* %77 to i64
  %80 = sub i64 %78, %79
  %81 = trunc i64 %80 to i32
  %82 = call i32 @fdt_subnode_offset_namelen(i32 %73, i32 %74, i8* %75, i32 %81)
  store i32 %82, i32* %12, align 4
  %83 = load i32, i32* %12, align 4
  %84 = icmp sge i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %70
  %86 = load i32, i32* %12, align 4
  store i32 %86, i32* %10, align 4
  br label %100

87:                                               ; preds = %70
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* %10, align 4
  %92 = load i8*, i8** %8, align 8
  %93 = load i8*, i8** %11, align 8
  %94 = load i8*, i8** %8, align 8
  %95 = ptrtoint i8* %93 to i64
  %96 = ptrtoint i8* %94 to i64
  %97 = sub i64 %95, %96
  %98 = trunc i64 %97 to i32
  %99 = call i32 @fdt_add_subnode_namelen(i32 %90, i32 %91, i8* %92, i32 %98)
  store i32 %99, i32* %10, align 4
  br label %100

100:                                              ; preds = %87, %85
  %101 = load i32, i32* %10, align 4
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %100
  br label %106

104:                                              ; preds = %100
  %105 = load i8*, i8** %11, align 8
  store i8* %105, i8** %8, align 8
  br label %39

106:                                              ; preds = %103, %39
  %107 = load i32, i32* %10, align 4
  %108 = icmp sge i32 %107, 0
  br i1 %108, label %109, label %116

109:                                              ; preds = %106
  %110 = load i8*, i8** %8, align 8
  %111 = load i8*, i8** %9, align 8
  %112 = icmp ne i8* %110, %111
  br i1 %112, label %113, label %116

113:                                              ; preds = %109
  %114 = load i32, i32* @FDT_ERR_BADPATH, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %4, align 4
  br label %118

116:                                              ; preds = %109, %106
  %117 = load i32, i32* %10, align 4
  store i32 %117, i32* %4, align 4
  br label %118

118:                                              ; preds = %116, %113, %48
  %119 = load i32, i32* %4, align 4
  ret i32 %119
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @fdt_subnode_offset_namelen(i32, i32, i8*, i32) #1

declare dso_local i32 @fdt_add_subnode_namelen(i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
