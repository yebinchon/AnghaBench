; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/hello_pi/libs/vgfont/extr_vgft.c_vgft_get_text_extents.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/hello_pi/libs/vgfont/extr_vgft.c_vgft_get_text_extents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vgft_get_text_extents(%struct.TYPE_10__* %0, i8* %1, i32 %2, i64 %3, i64 %4, i64* %5, i64* %6) #0 {
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i64* %5, i64** %13, align 8
  store i64* %6, i64** %14, align 8
  store i32 0, i32* %15, align 4
  store i64 0, i64* %16, align 8
  store i64 0, i64* %17, align 8
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  br label %21

21:                                               ; preds = %84, %7
  %22 = load i32, i32* %19, align 4
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  br i1 %24, label %25, label %87

25:                                               ; preds = %21
  %26 = load i8*, i8** %9, align 8
  %27 = load i32, i32* %18, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8, i8* %26, i64 %28
  %30 = load i8, i8* %29, align 1
  %31 = icmp ne i8 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %25
  %33 = load i32, i32* %10, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %32
  %36 = load i32, i32* %18, align 4
  %37 = load i32, i32* %10, align 4
  %38 = icmp eq i32 %36, %37
  br label %39

39:                                               ; preds = %35, %32
  %40 = phi i1 [ false, %32 ], [ %38, %35 ]
  br label %41

41:                                               ; preds = %39, %25
  %42 = phi i1 [ true, %25 ], [ %40, %39 ]
  %43 = zext i1 %42 to i32
  store i32 %43, i32* %19, align 4
  %44 = load i8*, i8** %9, align 8
  %45 = load i32, i32* %18, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8, i8* %44, i64 %46
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp eq i32 %49, 10
  br i1 %50, label %54, label %51

51:                                               ; preds = %41
  %52 = load i32, i32* %19, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %83

54:                                               ; preds = %51, %41
  store i64 0, i64* %20, align 8
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %56 = load i8*, i8** %9, align 8
  %57 = load i32, i32* %15, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8, i8* %56, i64 %58
  %60 = load i32, i32* %18, align 4
  %61 = load i32, i32* %15, align 4
  %62 = sub nsw i32 %60, %61
  %63 = call i32 @line_extents(%struct.TYPE_10__* %55, i64* %20, i64* %17, i8* %59, i32 %62)
  %64 = load i32, i32* %18, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %15, align 4
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i64 @float_from_26_6(i32 %73)
  %75 = load i64, i64* %17, align 8
  %76 = sub nsw i64 %75, %74
  store i64 %76, i64* %17, align 8
  %77 = load i64, i64* %20, align 8
  %78 = load i64, i64* %16, align 8
  %79 = icmp sgt i64 %77, %78
  br i1 %79, label %80, label %82

80:                                               ; preds = %54
  %81 = load i64, i64* %20, align 8
  store i64 %81, i64* %16, align 8
  br label %82

82:                                               ; preds = %80, %54
  br label %83

83:                                               ; preds = %82, %51
  br label %84

84:                                               ; preds = %83
  %85 = load i32, i32* %18, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %18, align 4
  br label %21

87:                                               ; preds = %21
  %88 = load i64, i64* %16, align 8
  %89 = load i64*, i64** %13, align 8
  store i64 %88, i64* %89, align 8
  %90 = load i64, i64* %17, align 8
  %91 = sub nsw i64 0, %90
  %92 = load i64*, i64** %14, align 8
  store i64 %91, i64* %92, align 8
  ret void
}

declare dso_local i32 @line_extents(%struct.TYPE_10__*, i64*, i64*, i8*, i32) #1

declare dso_local i64 @float_from_26_6(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
